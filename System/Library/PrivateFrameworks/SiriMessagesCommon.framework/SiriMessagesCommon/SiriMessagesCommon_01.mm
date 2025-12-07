unint64_t sub_267B4E10C()
{
  result = qword_280218B10;
  if (!qword_280218B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B10);
  }

  return result;
}

unint64_t sub_267B4E164()
{
  result = qword_280218B18;
  if (!qword_280218B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B18);
  }

  return result;
}

unint64_t sub_267B4E1BC()
{
  result = qword_280218B20;
  if (!qword_280218B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_267B7E05C();
}

uint64_t TapbackPromptSnippetModel.carPlayHeader.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_267B3B938(v7, &v6);
}

uint64_t TapbackPromptSnippetModel.serviceName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void __swiftcall TapbackPromptSnippetModel.init(selectedTapback:carPlayHeader:serviceName:)(SiriMessagesCommon::TapbackPromptSnippetModel *__return_ptr retstr, SiriMessagesCommon::TapbackType_optional selectedTapback, SiriMessagesCommon::CarPlayHeader *carPlayHeader, Swift::String_optional serviceName)
{
  secondaryName = carPlayHeader->secondaryName;
  retstr->carPlayHeader.primaryName = carPlayHeader->primaryName;
  retstr->carPlayHeader.secondaryName = secondaryName;
  appBundleIdentifier = carPlayHeader->appBundleIdentifier;
  *&retstr->carPlayHeader.contactIdentifiers._rawValue = *&carPlayHeader->contactIdentifiers._rawValue;
  retstr->selectedTapback.value = *selectedTapback.value;
  retstr->carPlayHeader.appBundleIdentifier = appBundleIdentifier;
  retstr->serviceName = serviceName;
}

uint64_t sub_267B4E2D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4879616C50726163 && a2 == 0xED00007265646165;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_267B4E404(char a1)
{
  if (!a1)
  {
    return 0x64657463656C6573;
  }

  if (a1 == 1)
  {
    return 0x4879616C50726163;
  }

  return 0x4E65636976726573;
}

uint64_t sub_267B4E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4E2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4E4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B4E3FC();
  *a1 = result;
  return result;
}

uint64_t sub_267B4E4D4(uint64_t a1)
{
  v2 = sub_267B4E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4E510(uint64_t a1)
{
  v2 = sub_267B4E754();

  return MEMORY[0x2821FE720](a1, v2);
}

void TapbackPromptSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B28, &qword_267B80540);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = *(v0 + 24);
  v21 = *(v0 + 8);
  v22 = v11;
  v12 = *(v0 + 56);
  v23 = *(v0 + 40);
  v24 = v12;
  v13 = *(v0 + 10);
  v14[2] = *(v0 + 9);
  v14[1] = v13;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B4E754();
  sub_267B7E27C();
  LOBYTE(v17) = v10;
  v16[0] = 0;
  sub_267B4E7A8();
  sub_267B7E0EC();
  if (!v1)
  {
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v16[79] = 1;
    sub_267B3B938(&v21, v16);
    sub_267B39FF4();
    OUTLINED_FUNCTION_5_5();
    sub_267B7E12C();
    OUTLINED_FUNCTION_1_8();
    v15 = 2;
    sub_267B7E0CC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4E754()
{
  result = qword_280218B30;
  if (!qword_280218B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B30);
  }

  return result;
}

unint64_t sub_267B4E7A8()
{
  result = qword_280218B38;
  if (!qword_280218B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B38);
  }

  return result;
}

void TapbackPromptSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B48, &qword_267B80548);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-1] - v8;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B4E754();
  sub_267B7E25C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v10 = v4;
    LOBYTE(v17[0]) = 0;
    sub_267B4EAC4();
    OUTLINED_FUNCTION_8_3();
    sub_267B7E04C();
    v11 = v18;
    v23 = 1;
    sub_267B4EB18();
    OUTLINED_FUNCTION_8_3();
    sub_267B7E08C();
    HIDWORD(v16) = v11;
    *&v28[7] = v24;
    *&v28[23] = v25;
    *&v28[39] = v26;
    *&v28[55] = v27;
    v22 = 2;
    v12 = sub_267B7E01C();
    v13 = v9;
    v15 = v14;
    (*(v6 + 8))(v13, v29);
    LOBYTE(v11) = BYTE4(v16);
    LOBYTE(v17[0]) = BYTE4(v16);
    memcpy(v17 + 1, v28, 0x47uLL);
    v17[9] = v12;
    v17[10] = v15;
    memcpy(v10, v17, 0x58uLL);
    sub_267B4EB6C(v17, &v18);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v18 = v11;
    memcpy(v19, v28, sizeof(v19));
    v20 = v12;
    v21 = v15;
    sub_267B4EBA4(&v18);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4EAC4()
{
  result = qword_280218B50;
  if (!qword_280218B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B50);
  }

  return result;
}

unint64_t sub_267B4EB18()
{
  result = qword_280218B58;
  if (!qword_280218B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B58);
  }

  return result;
}

uint64_t TapbackType.description.getter()
{
  v1 = 0xE500000000000000;
  v2 = 0x7472616568;
  switch(*v0)
  {
    case 1:
      v1 = 0xE800000000000000;
      v2 = 0x705573626D756874;
      break;
    case 2:
      v1 = 0xEA00000000006E77;
      v2 = 0x6F4473626D756874;
      break;
    case 3:
      v1 = 0xE200000000000000;
      v2 = 24936;
      break;
    case 4:
      v1 = 0xEB000000006E6F69;
      v2 = 0x74616D616C637865;
      break;
    case 5:
      v1 = 0xEC0000006B72614DLL;
      v2 = 0x6E6F697473657571;
      break;
    default:
      break;
  }

  MEMORY[0x26D601760](v2, v1);

  return 46;
}

uint64_t TapbackType.rawValue.getter()
{
  result = 0x7472616568;
  switch(*v0)
  {
    case 1:
      result = 0x705573626D756874;
      break;
    case 2:
      result = 0x6F4473626D756874;
      break;
    case 3:
      result = 24936;
      break;
    case 4:
      result = 0x74616D616C637865;
      break;
    case 5:
      result = 0x6E6F697473657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TapbackType.index.getter()
{
  result = sub_267B4EDE8(*v0, &unk_2878BF740);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_267B4EDE8(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE500000000000000;
    v7 = 0x7472616568;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE800000000000000;
        v7 = 0x705573626D756874;
        break;
      case 2:
        v7 = 0x6F4473626D756874;
        v6 = 0xEA00000000006E77;
        break;
      case 3:
        v6 = 0xE200000000000000;
        v7 = 24936;
        break;
      case 4:
        v7 = 0x74616D616C637865;
        v6 = 0xEB000000006E6F69;
        break;
      case 5:
        v7 = 0x6E6F697473657571;
        v6 = 0xEC0000006B72614DLL;
        break;
      default:
        break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x7472616568;
    switch(a1)
    {
      case 1:
        v8 = 0xE800000000000000;
        v9 = 0x705573626D756874;
        break;
      case 2:
        v9 = 0x6F4473626D756874;
        v8 = 0xEA00000000006E77;
        break;
      case 3:
        v8 = 0xE200000000000000;
        v9 = 24936;
        break;
      case 4:
        v9 = 0x74616D616C637865;
        v8 = 0xEB000000006E6F69;
        break;
      case 5:
        v9 = 0x6E6F697473657571;
        v8 = 0xEC0000006B72614DLL;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_267B7E16C();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

SiriMessagesCommon::TapbackType_optional __swiftcall TapbackType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7DFEC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_267B4F09C@<X0>(uint64_t *a1@<X8>)
{
  result = TapbackType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMessagesCommon::UpdateTapbackButtonViewCommand __swiftcall UpdateTapbackButtonViewCommand.init(selectedTapback:enableDismissalTimer:)(SiriMessagesCommon::TapbackType_optional selectedTapback, Swift::Bool enableDismissalTimer)
{
  *v2 = *selectedTapback.value;
  v2[1] = enableDismissalTimer;
  result.selectedTapback = selectedTapback;
  return result;
}

uint64_t sub_267B4F1FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000267B87080 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267B4F2D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_267B4F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F1FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4F34C(uint64_t a1)
{
  v2 = sub_267B4F518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4F388(uint64_t a1)
{
  v2 = sub_267B4F518();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateTapbackButtonViewCommand.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B60, &qword_267B80550);
  OUTLINED_FUNCTION_8();
  v32 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = *v24;
  a10 = v24[1];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_267B4F518();
  sub_267B7E27C();
  a14 = v36;
  a13 = 0;
  sub_267B4E7A8();
  OUTLINED_FUNCTION_5_5();
  sub_267B7E0EC();
  if (!v25)
  {
    a12 = 1;
    OUTLINED_FUNCTION_5_5();
    sub_267B7E10C();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4F518()
{
  result = qword_280218B68;
  if (!qword_280218B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B68);
  }

  return result;
}

void UpdateTapbackButtonViewCommand.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B70, &qword_267B80558);
  OUTLINED_FUNCTION_8();
  v33 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_267B4F518();
  sub_267B7E25C();
  if (!v24)
  {
    a13 = 0;
    sub_267B4EAC4();
    sub_267B7E04C();
    v37 = a14;
    a12 = 1;
    v38 = sub_267B7E06C();
    (*(v33 + 8))(v36, v31);
    *v30 = v37;
    v30[1] = v38 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B4F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B50CE4();
  sub_267B50D38();
  return sub_267B7DB8C();
}

uint64_t sub_267B4F778(uint64_t a1, uint64_t a2)
{
  sub_267B50CE4();
  sub_267B50D38();
  return sub_267B7DB7C();
}

uint64_t sub_267B4F7CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000267B870A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B4F868(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B4F940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F7CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4F96C(uint64_t a1)
{
  v2 = sub_267B4FC6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4F9A8(uint64_t a1)
{
  v2 = sub_267B4FC6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B4F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F868(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4FA14(uint64_t a1)
{
  v2 = sub_267B4FCC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4FA50(uint64_t a1)
{
  v2 = sub_267B4FCC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void TapbackPromptSnippetAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_1();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B78, &qword_267B80560);
  OUTLINED_FUNCTION_8();
  v38 = v25;
  v39 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v29 = &v37 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B80, &qword_267B80568);
  OUTLINED_FUNCTION_8();
  v32 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = &v37 - v34;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_267B4FC6C();
  sub_267B7E27C();
  sub_267B4FCC0();
  sub_267B7E0BC();
  sub_267B4E7A8();
  v36 = v38;
  sub_267B7E12C();
  (*(v39 + 8))(v29, v36);
  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4FC6C()
{
  result = qword_280218B88;
  if (!qword_280218B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B88);
  }

  return result;
}

unint64_t sub_267B4FCC0()
{
  result = qword_280218B90;
  if (!qword_280218B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B90);
  }

  return result;
}

void TapbackPromptSnippetAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_13_1();
  v15 = v14;
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B98, &qword_267B80570);
  OUTLINED_FUNCTION_8();
  v49 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218BA0, &qword_267B80578);
  OUTLINED_FUNCTION_8();
  v48 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_267B4FC6C();
  sub_267B7E25C();
  if (v13)
  {
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  v45 = v17;
  v28 = v49;
  v27 = v50;
  sub_267B7E09C();
  sub_267B45CC4();
  v31 = v22;
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v39 = sub_267B7DFBC();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580);
    *v41 = &type metadata for TapbackPromptSnippetAction;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v26, v31);
    v15 = v47;
LABEL_8:
    v44 = v15;
    goto LABEL_9;
  }

  if (v29 < (v30 >> 1))
  {
    v32 = v22;
    sub_267B45CBC();
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      sub_267B4FCC0();
      v37 = v46;
      v38 = v32;
      sub_267B7DFFC();
      sub_267B4EAC4();
      v42 = v45;
      sub_267B7E08C();
      v43 = v48;
      swift_unknownObjectRelease();
      (*(v28 + 8))(v37, v42);
      (*(v43 + 8))(v26, v38);
      *v27 = a13;
      v44 = v47;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_14();
      return;
    }

    v31 = v22;
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_267B50150()
{
  result = qword_280218BA8;
  if (!qword_280218BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BA8);
  }

  return result;
}

unint64_t sub_267B501A8()
{
  result = qword_280218BB0;
  if (!qword_280218BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BB0);
  }

  return result;
}

unint64_t sub_267B50200()
{
  result = qword_280218BB8;
  if (!qword_280218BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BB8);
  }

  return result;
}

unint64_t sub_267B50258()
{
  result = qword_280218BC0;
  if (!qword_280218BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218BC8, &qword_267B806F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BC0);
  }

  return result;
}

uint64_t sub_267B502C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B50304(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for UpdateTapbackButtonViewCommand(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateTapbackButtonViewCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_267B504F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_267B505D8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateTapbackButtonViewCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapbackPromptSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapbackPromptSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B508C8()
{
  result = qword_280218BD0;
  if (!qword_280218BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BD0);
  }

  return result;
}

unint64_t sub_267B50920()
{
  result = qword_280218BD8;
  if (!qword_280218BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BD8);
  }

  return result;
}

unint64_t sub_267B50978()
{
  result = qword_280218BE0;
  if (!qword_280218BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BE0);
  }

  return result;
}

unint64_t sub_267B509D0()
{
  result = qword_280218BE8;
  if (!qword_280218BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BE8);
  }

  return result;
}

unint64_t sub_267B50A28()
{
  result = qword_280218BF0;
  if (!qword_280218BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BF0);
  }

  return result;
}

unint64_t sub_267B50A80()
{
  result = qword_280218BF8;
  if (!qword_280218BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BF8);
  }

  return result;
}

unint64_t sub_267B50AD8()
{
  result = qword_280218C00;
  if (!qword_280218C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C00);
  }

  return result;
}

unint64_t sub_267B50B30()
{
  result = qword_280218C08;
  if (!qword_280218C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C08);
  }

  return result;
}

unint64_t sub_267B50B88()
{
  result = qword_280218C10;
  if (!qword_280218C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C10);
  }

  return result;
}

unint64_t sub_267B50BE0()
{
  result = qword_280218C18;
  if (!qword_280218C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C18);
  }

  return result;
}

unint64_t sub_267B50C38()
{
  result = qword_280218C20;
  if (!qword_280218C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C20);
  }

  return result;
}

unint64_t sub_267B50C90()
{
  result = qword_280218C28;
  if (!qword_280218C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C28);
  }

  return result;
}

unint64_t sub_267B50CE4()
{
  result = qword_280218C30;
  if (!qword_280218C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C30);
  }

  return result;
}

unint64_t sub_267B50D38()
{
  result = qword_280218C38;
  if (!qword_280218C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C38);
  }

  return result;
}

unint64_t sub_267B50D8C()
{
  result = qword_280218C40;
  if (!qword_280218C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C40);
  }

  return result;
}

uint64_t PhotoAttachment.init(urls:isDraft:photoSharingInfo:photosSelection:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  type metadata accessor for SecurityScopedURL();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  if (!a3)
  {
    type metadata accessor for PhotoSharingInfo();
    swift_allocObject();
    a3 = PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(1, 0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000);
  }

  *a5 = v9;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  return result;
}

uint64_t sub_267B50F1C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotoAttachment.urls.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B50F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;

  PhotoAttachment.urls.setter(v2);
}

uint64_t PhotoAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;
  sub_267B465DC();
  swift_beginAccess();
  *(v3 + 16) = a1;
}

void (*PhotoAttachment.urls.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_267B46784(v2);
  return sub_267B41AA0;
}

uint64_t PhotoAttachment.photoSharingInfo.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_267B51124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74666172447369 && a2 == 0xE700000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_267B5123C(char a1)
{
  if (!a1)
  {
    return 1936487029;
  }

  if (a1 == 1)
  {
    return 0x74666172447369;
  }

  return 0xD000000000000010;
}

uint64_t sub_267B51298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B51124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B512C0(uint64_t a1)
{
  v2 = sub_267B517A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B512FC(uint64_t a1)
{
  v2 = sub_267B517A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoAttachment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218C48, &qword_267B80DA0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v18 = *(v1 + 8);
  v17 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_267B517A8();

  sub_267B7E27C();
  v20 = v9;
  v19 = 0;
  type metadata accessor for SecurityScopedURL();
  OUTLINED_FUNCTION_0_6();
  sub_267B517FC(v11, v12, &protocol conformance descriptor for SecurityScopedURL);
  OUTLINED_FUNCTION_3_5();

  if (!v10)
  {
    v13 = v17;
    LOBYTE(v20) = 1;
    sub_267B7E10C();
    v20 = v13;
    v19 = 2;
    type metadata accessor for PhotoSharingInfo();
    OUTLINED_FUNCTION_1_9();
    sub_267B517FC(v14, v15, &protocol conformance descriptor for PhotoSharingInfo);
    OUTLINED_FUNCTION_3_5();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PhotoAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218C60, &qword_267B80DA8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B517A8();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for SecurityScopedURL();
  OUTLINED_FUNCTION_0_6();
  v8 = sub_267B517FC(v6, v7, &protocol conformance descriptor for SecurityScopedURL);
  OUTLINED_FUNCTION_2_6(v8);
  v9 = v16;
  LOBYTE(v16) = 1;
  v17 = sub_267B7E06C() & 1;
  type metadata accessor for PhotoSharingInfo();
  OUTLINED_FUNCTION_1_9();
  v12 = sub_267B517FC(v10, v11, &protocol conformance descriptor for PhotoSharingInfo);
  OUTLINED_FUNCTION_2_6(v12);
  v13 = OUTLINED_FUNCTION_4();
  v14(v13);
  *a2 = v9;
  *(a2 + 8) = v17;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_267B517A8()
{
  result = qword_280218C50;
  if (!qword_280218C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C50);
  }

  return result;
}

uint64_t sub_267B517FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267B51844(uint64_t a1)
{
  *(a1 + 16) = sub_267B451E0();
  result = sub_267B44FB0();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotoAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B51964()
{
  result = qword_280218C70;
  if (!qword_280218C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C70);
  }

  return result;
}

unint64_t sub_267B519BC()
{
  result = qword_280218C78;
  if (!qword_280218C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C78);
  }

  return result;
}

unint64_t sub_267B51A14()
{
  result = qword_280218C80[0];
  if (!qword_280218C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280218C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_267B7E12C();
}

uint64_t sub_267B51B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7);
  v10 = type metadata accessor for Redacted(0, v4, v5, v6);
  return Redacted.wrappedValue.setter(v8, v10);
}

void (*Redacted.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_0_7();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  Redacted.wrappedValue.getter(a2, v10);
  return sub_267B51D2C;
}

void sub_267B51D2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    Redacted.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Redacted.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_267B51E40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B51EF4(uint64_t a1)
{
  sub_267B7E21C();
  sub_267B3C1E0();
  return sub_267B7E23C();
}

uint64_t sub_267B51F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B51E40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B51FAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B43E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267B51FE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_267B52038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Redacted.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v11 = a2[2];
  type metadata accessor for Redacted.CodingKeys(255, v11, v3, a2[4]);
  OUTLINED_FUNCTION_1_10();
  swift_getWitnessTable();
  v4 = sub_267B7E13C();
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7E27C();
  sub_267B7E12C();
  return (*(v6 + 8))(v9, v4);
}

uint64_t Redacted.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  OUTLINED_FUNCTION_0_7();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Redacted.CodingKeys(255, v12, v13, v14);
  OUTLINED_FUNCTION_1_10();
  swift_getWitnessTable();
  v40 = sub_267B7E0AC();
  OUTLINED_FUNCTION_0_7();
  v35 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v36 = a2;
  v38 = a3;
  v19 = type metadata accessor for Redacted(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_7();
  v33 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v41;
  sub_267B7E25C();
  if (!v24)
  {
    v32 = v23;
    v41 = v19;
    v26 = v35;
    v25 = v36;
    v27 = v37;
    v28 = v39;
    sub_267B7E08C();
    (*(v26 + 8))(v18, v40);
    v29 = v32;
    (*(v27 + 32))(v32, v28, v25);
    (*(v33 + 32))(v34, v29, v41);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B52538(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B525A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_267B526E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_267B528F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t UpdateSnippetAction.init(launchAppWithIntent:snippetMessage:sendButtonDisabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

id UpdateSnippetAction.launchAppWithIntent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_267B52A74@<X0>(void *a1@<X8>)
{
  result = UpdateSnippetAction.launchAppWithIntent.getter();
  *a1 = result;
  return result;
}

void sub_267B52AC0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UpdateSnippetAction.launchAppWithIntent.setter(v1);
}

void (*UpdateSnippetAction.launchAppWithIntent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

uint64_t UpdateSnippetAction.snippetMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UpdateSnippetAction.snippetMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B52BF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4D74657070696E73 && a2 == 0xEE00656761737365;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000267B870E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_267B52D1C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x4D74657070696E73;
  }

  return 0xD000000000000012;
}

uint64_t sub_267B52D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B52BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B52DBC(uint64_t a1)
{
  v2 = sub_267B53024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B52DF8(uint64_t a1)
{
  v2 = sub_267B53024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSnippetAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D88, &unk_267B81170);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v10;
  v14[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B53024();
  v12 = v11;
  sub_267B7E27C();
  v20 = v11;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
  sub_267B532EC(&qword_280218DA0, &protocol conformance descriptor for ModelCodable<A>);
  sub_267B7E12C();

  if (!v2)
  {
    v18 = 1;
    sub_267B7E0FC();
    v17 = 2;
    sub_267B7E10C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_267B53024()
{
  result = qword_280218D90;
  if (!qword_280218D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218D90);
  }

  return result;
}

void UpdateSnippetAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DA8, &qword_267B81180);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B53024();
  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    sub_267B532EC(&qword_280218DB0, &protocol conformance descriptor for ModelCodable<A>);
    sub_267B7E08C();
    v6 = sub_267B7E05C();
    v8 = v7;
    v13 = v6;
    v9 = sub_267B7E06C();
    v10 = OUTLINED_FUNCTION_0_8();
    v11(v10);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9 & 1;
    v12 = v14;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_267B532EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218D98, &qword_267B860E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_267B53380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B533C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateSnippetAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B534F4()
{
  result = qword_280218DB8;
  if (!qword_280218DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DB8);
  }

  return result;
}

unint64_t sub_267B5354C()
{
  result = qword_280218DC0;
  if (!qword_280218DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DC0);
  }

  return result;
}

unint64_t sub_267B535A4()
{
  result = qword_280218DC8;
  if (!qword_280218DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DC8);
  }

  return result;
}

void *INInteraction.serializedData()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_267B7DA9C();
  }

  else
  {
    v3 = v2;
    sub_267B7D9CC();

    swift_willThrow();
  }

  return v3;
}

id sub_267B536F4()
{
  type metadata accessor for AutoSendUtilities.Dummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280218DD0 = result;
  return result;
}

id static AutoSendUtilities.configUITone(isFirstPartyApp:mode:)(int a1, uint64_t a2)
{
  LODWORD(v5) = a1;
  sub_267B7DC1C();
  OUTLINED_FUNCTION_1_11();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (qword_280218548 != -1)
  {
    swift_once();
  }

  v14 = sub_267B7DCFC();
  __swift_project_value_buffer(v14, qword_2802286D0);
  v15 = *(v7 + 16);
  v35 = a2;
  v15(v13, a2, v2);
  v16 = sub_267B7DCDC();
  v17 = sub_267B7DE9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v5;
    v5 = v18;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v5 = 136315138;
    sub_267B53C88();
    v19 = sub_267B7E14C();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_2_7();
    v24 = v23;
    v3(v22, v23);
    v25 = sub_267B3E264(v19, v21, &v36);

    *(v5 + 4) = v25;
    _os_log_impl(&dword_267B38000, v16, v17, "#AutoSendUtilities playUITone responseMode: %s", v5, 0xCu);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D602240](v26, -1, -1);
    v27 = v5;
    LOBYTE(v5) = v34;
    MEMORY[0x26D602240](v27, -1, -1);

    v28 = v24;
  }

  else
  {

    v29 = OUTLINED_FUNCTION_2_7();
    v3(v29, v2);
    v28 = v2;
  }

  sub_267B7DBEC();
  v30 = sub_267B7DBFC();
  v3(v11, v28);
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    sub_267B7DC0C();
    v31 = sub_267B7DBFC();
    v3(v11, v28);
  }

  return static AutoSendUtilities.configUITone(isFirstPartyApp:isVoiceMode:)(v5 & 1, v31 & 1);
}

id static AutoSendUtilities.configUITone(isFirstPartyApp:isVoiceMode:)(char a1, char a2)
{
  sub_267B7DA6C();
  OUTLINED_FUNCTION_1_11();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 0x67734D746E6553;
  }

  else
  {
    v11 = 0x3367734D746E6553;
  }

  if (v10)
  {
    v12 = 0xE900000000000070;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (qword_280218540 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_280218540);
  }

  sub_267B4AFBC(v11, v12, 7758199, 0xE300000000000000, qword_280218DD0);
  if (!v13)
  {
    return 0;
  }

  sub_267B7D9EC();

  v14 = [objc_allocWithZone(MEMORY[0x277D71F58]) initWithType_];
  v15 = sub_267B7D9FC();
  [v14 setExternalToneFileURL_];

  [v14 setShouldIgnoreRingerSwitch_];
  v16 = [objc_opt_self() alertWithConfiguration_];

  (*(v6 + 8))(v9, v2);
  return v16;
}

uint64_t static AutoSendUtilities.soundFileURLString(isFirstPartyApp:)(char a1)
{
  if (qword_280218540 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_280218540);
  }

  if (a1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = 0x67734D746E6553;
  }

  else
  {
    v3 = 0x3367734D746E6553;
  }

  v4 = qword_280218DD0;

  return sub_267B4AFBC(v3, v2, 7758199, 0xE300000000000000, v4);
}

unint64_t sub_267B53C88()
{
  result = qword_280218DD8;
  if (!qword_280218DD8)
  {
    sub_267B7DC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoSendUtilities(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static SFSpeechAssetManagerProtocol.installedASRAssetFor(language:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (*(a4 + 8))(a3, a4);
    sub_267B53ED8(a1, a2, v6);
    v8 = v7;
  }

  else
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280218548);
    }

    v9 = sub_267B7DCFC();
    __swift_project_value_buffer(v9, qword_2802286D0);
    v10 = sub_267B7DCDC();
    v11 = sub_267B7DEAC();
    if (OUTLINED_FUNCTION_2_8(v11))
    {
      v12 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v12);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v13, v14, "#SFSpeechAssetManagerProtocol installedASRAssetFor language nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }

  return v8;
}

void sub_267B53ED8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v54 = sub_267B7DB3C();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_267B7DB5C();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v49 = (v6 + 8);
  v50 = (v8 + 8);

  v18 = 0;
  *&v19 = 136315138;
  v55 = v19;
  v57 = a3 + 56;
  v58 = v12;
  v47 = a1;
  v48 = a2;
  for (i = v17; v16; v18 = v20)
  {
    v20 = v18;
LABEL_8:
    v21 = (*(a3 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v16)))));
    v22 = v21[1];
    v60 = *v21;
    v61 = v22;
    v23 = qword_280218548;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_267B7DCFC();
    __swift_project_value_buffer(v24, qword_2802286D0);

    v25 = sub_267B7DCDC();
    v26 = sub_267B7DEBC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v62 = v28;
      *v27 = v55;
      *(v27 + 4) = sub_267B3E264(a1, a2, &v62);
      _os_log_impl(&dword_267B38000, v25, v26, "#SFSpeechAssetManagerProtocol hasLanguage %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v29 = v28;
      v12 = v58;
      MEMORY[0x26D602240](v29, -1, -1);
      MEMORY[0x26D602240](v27, -1, -1);
    }

    v30 = v51;
    sub_267B7DADC();
    v31 = v53;
    sub_267B7DB4C();
    (*v50)(v30, v52);
    sub_267B7DB2C();
    (*v49)(v31, v54);
    v32 = sub_267B7DB0C();
    if (__swift_getEnumTagSinglePayload(v12, 1, v32) == 1)
    {
      sub_267B556D8(v12);
      v59 = 0;
      v33 = 0;
    }

    else
    {
      v59 = sub_267B7DAFC();
      v33 = v34;
      (*(*(v32 - 8) + 8))(v12, v32);
    }

    v35 = sub_267B7DCDC();
    v36 = sub_267B7DEBC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62 = v38;
      *v37 = v55;
      if (v33)
      {
        v39 = v59;
      }

      else
      {
        v39 = 7104878;
      }

      v40 = a3;
      if (v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      v42 = sub_267B3E264(v39, v41, &v62);
      a3 = v40;
      v12 = v58;

      *(v37 + 4) = v42;
      a1 = v47;
      _os_log_impl(&dword_267B38000, v35, v36, "#SFSpeechAssetManagerProtocol baseLanguage %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v43 = v38;
      a2 = v48;
      MEMORY[0x26D602240](v43, -1, -1);
      MEMORY[0x26D602240](v37, -1, -1);
    }

    v17 = i;
    v13 = v57;
    if (v33)
    {
      if (v59 == a1 && v33 == a2)
      {

        return;
      }

      v45 = sub_267B7E16C();

      if (v45)
      {
        goto LABEL_40;
      }
    }

    v46 = v60 == a1 && v61 == a2;
    if (v46 || (sub_267B7E16C() & 1) != 0)
    {
      goto LABEL_40;
    }

    v16 &= v16 - 1;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
LABEL_40:

      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t static SFSpeechAssetManagerProtocol.supportedLanguages()()
{
  v0 = AFPreferencesSupportedLanguages();
  if (v0)
  {
    v1 = v0;
    v2 = sub_267B7DE1C();

    v15 = MEMORY[0x277D84FA0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;
      do
      {
        sub_267B3E924(v4, &v14);
        if (swift_dynamicCast())
        {
          sub_267B5558C(&v14, v12, v13);
        }

        v4 += 32;
        --v3;
      }

      while (v3);

      return v15;
    }

    else
    {

      return MEMORY[0x277D84FA0];
    }
  }

  else
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280218548);
    }

    v6 = sub_267B7DCFC();
    __swift_project_value_buffer(v6, qword_2802286D0);
    v7 = sub_267B7DCDC();
    v8 = sub_267B7DEBC();
    if (OUTLINED_FUNCTION_2_8(v8))
    {
      v9 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v9);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v10, v11, "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }
}

void static SFSpeechAssetManagerProtocol.availableAssetFor(language:possibleLanguages:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280218548);
    }

    v3 = sub_267B7DCFC();
    __swift_project_value_buffer(v3, qword_2802286D0);
    v4 = sub_267B7DCDC();
    v5 = sub_267B7DEBC();
    if (!OUTLINED_FUNCTION_2_8(v5))
    {
      goto LABEL_13;
    }

    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v6);
    v9 = "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil";
    goto LABEL_12;
  }

  if (a2)
  {
    sub_267B53ED8(a1, a2, a3);
    return;
  }

  if (qword_280218548 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280218548);
  }

  v10 = sub_267B7DCFC();
  __swift_project_value_buffer(v10, qword_2802286D0);
  v4 = sub_267B7DCDC();
  v11 = sub_267B7DEBC();
  if (OUTLINED_FUNCTION_2_8(v11))
  {
    v12 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v12);
    v9 = "#SFSpeechAssetManagerProtocol availableAssetFor langauage nil";
LABEL_12:
    OUTLINED_FUNCTION_1_12(&dword_267B38000, v7, v8, v9);
    OUTLINED_FUNCTION_3_6();
  }

LABEL_13:
}

uint64_t static SFSpeechAssetManagerProtocol.numberOfAssetsAvailableForLanguage(language:possibleLanguages:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v80 = a1;
  v76 = sub_267B7DB3C();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_4();
  v75 = v8;
  v74 = sub_267B7DB5C();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  v73 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = a3;
  if (!a3)
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280218548);
    }

    v58 = sub_267B7DCFC();
    __swift_project_value_buffer(v58, qword_2802286D0);
    v59 = sub_267B7DCDC();
    v60 = sub_267B7DEBC();
    if (OUTLINED_FUNCTION_2_8(v60))
    {
      v61 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v61);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v62, v63, "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }

  v68 = &v64 - v14;
  if (qword_280218548 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0(&qword_280218548);
  }

  v15 = sub_267B7DCFC();
  v16 = __swift_project_value_buffer(v15, qword_2802286D0);

  v79 = v16;
  v17 = sub_267B7DCDC();
  v18 = sub_267B7DEBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v81[0] = v20;
    *v19 = 136315138;
    v21 = sub_267B7DE7C();
    v23 = sub_267B3E264(v21, v22, v81);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_267B38000, v17, v18, "#SFSpeechAssetManagerProtocol possibleLanguages %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_4_5();
  }

  v24 = *(v78 + 56);
  v66 = v78 + 56;
  v25 = 1 << *(v78 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v65 = (v25 + 63) >> 6;
  v71 = (v6 + 8);
  v72 = (v10 + 8);

  v28 = 0;
  v29 = 0;
  *&v30 = 136315138;
  v70 = v30;
  v31 = v68;
  v67 = a2;
  while (2)
  {
    v64 = v28;
    while (1)
    {
      if (!v27)
      {
        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v32 >= v65)
          {
            goto LABEL_45;
          }

          v27 = *(v66 + 8 * v32);
          ++v29;
          if (v27)
          {
            v29 = v32;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_14:
      v33 = (*(v78 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
      v10 = *v33;
      v34 = v33[1];

      v35 = sub_267B7DCDC();
      v36 = sub_267B7DEBC();

      if (os_log_type_enabled(v35, v36))
      {
        v6 = v34;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v81[0] = v38;
        *v37 = v70;
        *(v37 + 4) = sub_267B3E264(v80, a2, v81);
        _os_log_impl(&dword_267B38000, v35, v36, "#SFSpeechAssetManagerProtocol hasLanguage %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        OUTLINED_FUNCTION_4_5();
        v34 = v6;
        OUTLINED_FUNCTION_4_5();
      }

      v39 = v73;
      v77 = v34;
      sub_267B7DADC();
      v40 = v75;
      sub_267B7DB4C();
      (*v72)(v39, v74);
      sub_267B7DB2C();
      (*v71)(v40, v76);
      v41 = sub_267B7DB0C();
      if (__swift_getEnumTagSinglePayload(v31, 1, v41) == 1)
      {
        sub_267B556D8(v31);
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v42 = sub_267B7DAFC();
        v43 = v44;
        (*(*(v41 - 8) + 8))(v31, v41);
      }

      v45 = sub_267B7DCDC();
      v46 = sub_267B7DEBC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v69 = v10;
        v6 = v47;
        v48 = swift_slowAlloc();
        v81[0] = v48;
        *v6 = v70;
        if (v43)
        {
          v49 = v42;
        }

        else
        {
          v49 = 7104878;
        }

        if (v43)
        {
          v50 = v43;
        }

        else
        {
          v50 = 0xE300000000000000;
        }

        v51 = sub_267B3E264(v49, v50, v81);
        v31 = v68;

        *(v6 + 4) = v51;
        _os_log_impl(&dword_267B38000, v45, v46, "#SFSpeechAssetManagerProtocol possible language %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        a2 = v67;
        OUTLINED_FUNCTION_4_5();
        v10 = v69;
        OUTLINED_FUNCTION_4_5();
      }

      v52 = v77;
      v27 &= v27 - 1;
      if (v43)
      {
        break;
      }

LABEL_33:
      if (v10 == v80 && v52 == a2)
      {
        goto LABEL_41;
      }

      v56 = sub_267B7E16C();

      if (v56)
      {
        goto LABEL_42;
      }
    }

    if (v42 != v80 || v43 != a2)
    {
      v54 = sub_267B7E16C();

      if (v54)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }

LABEL_41:

LABEL_42:
    v28 = v64 + 1;
    if (!__OFADD__(v64, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_45:

  return v64;
}

uint64_t sub_267B54E78()
{
  v0 = [swift_getObjCClassFromMetadata() installedLanguages];
  v1 = sub_267B7DE6C();

  return v1;
}

uint64_t sub_267B54ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_267B54EFC, 0, 0);
}

uint64_t sub_267B54EFC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_267B54FB0;
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_267B550B4(0, 0, v5, v6, v3, v4, v2);
}

uint64_t sub_267B54FB0()
{
  OUTLINED_FUNCTION_7_3();
  v8 = *v3;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v4 = v2;
    v5 = v0;
  }

  return v6(v4, v5);
}

uint64_t sub_267B550B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = sub_267B7DD4C();
  v7[20] = v11;
  if (a6)
  {
    v7[14] = a6;
    v7[15] = a7;
    v7[10] = MEMORY[0x277D85DD0];
    v7[11] = 1107296256;
    v7[12] = sub_267B55414;
    v7[13] = &block_descriptor_7;
    a6 = _Block_copy(v7 + 10);
  }

  v7[21] = a6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7[2] = v7;
  v7[7] = v7 + 18;
  v7[3] = sub_267B5527C;
  v13 = swift_continuation_init();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE8, &unk_267B81430);
  v7[10] = MEMORY[0x277D85DD0];
  v7[11] = 1107296256;
  v7[12] = sub_267B55468;
  v7[13] = &block_descriptor;
  v7[14] = v13;
  [ObjCClassFromMetadata fetchAssetWithConfig:a3 clientIdentifier:v11 progress:a6 completion:v7 + 10];

  return MEMORY[0x282200938](v7 + 2);
}

uint64_t sub_267B5527C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  if (*(v2 + 48))
  {
    swift_willThrow();
    _Block_release(v5);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 144);
    v10 = *(v3 + 152);
    _Block_release(*(v2 + 168));

    v11 = *(v4 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_267B55414(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_267B55468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_267B55500(v4, v5);
  }

  else
  {
    v8 = sub_267B7DD5C();

    return sub_267B5556C(v4, v8, v7);
  }
}

uint64_t sub_267B55500(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218578, &qword_267B7E990);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_267B5556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

BOOL sub_267B5558C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_267B7E21C();
  sub_267B7DD9C();
  v8 = sub_267B7E23C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_267B7E16C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_267B55C4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_267B556D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of static SFSpeechAssetManagerProtocol.fetchAsset(with:clientIdentifier:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_267B558C0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_267B558C0()
{
  OUTLINED_FUNCTION_7_3();
  v5 = *v2;

  v3 = *(v5 + 8);

  return v3(v1, v0);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267B559F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  result = sub_267B7DF6C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_267B55DB4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_267B7E21C();
    sub_267B7DD9C();
    result = sub_267B7E23C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_267B55C4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_267B559F0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_267B55F70(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_267B7E21C();
      sub_267B7DD9C();
      v16 = sub_267B7E23C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_267B7E16C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_267B55E18();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_267B7E1CC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_267B55DB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_267B813B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_267B55E18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  v2 = *v0;
  v3 = sub_267B7DF5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_267B55F70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  result = sub_267B7DF6C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_267B7E21C();

        sub_267B7DD9C();
        result = sub_267B7E23C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_2_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_3_6()
{

  JUMPOUT(0x26D602240);
}

void OUTLINED_FUNCTION_4_5()
{

  JUMPOUT(0x26D602240);
}

uint64_t ModelCodable.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, a2);
  (*(v9 + 16))(v12, a1, v7);
  v17 = type metadata accessor for ModelCodable(0, a2, a3, v16);
  ModelCodable.wrappedValue.setter(v12, v17);
  return (*(v9 + 8))(a1, v7);
}

uint64_t ModelCodable.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_267B7DEFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ModelCodable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B7DEFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t static AceObject.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_267B7DA7C();
  v10[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v10];

  if (v2)
  {
    v3 = v10[0];
    sub_267B7DF1C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF8, &qword_267B81450);
    if (swift_dynamicCast())
    {
      v4 = sub_267B7DD0C();
    }

    else
    {
      v4 = 0;
    }

    v6 = [objc_opt_self() aceObjectWithDictionary_];

    if (v6)
    {
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    v8 = OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_7_4(&type metadata for CodableError, v8);
    OUTLINED_FUNCTION_1_13(v9, 46);
  }

  else
  {
    v5 = v10[0];
    sub_267B7D9CC();
  }

  return swift_willThrow();
}

void *AceObject.encode()()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 dictionary];
  if (v2)
  {
    v3 = v2;
    v9[0] = 0;
    v4 = [objc_opt_self() dataWithPropertyList:v2 format:200 options:0 error:v9];
    v5 = v9[0];
    if (v4)
    {
      v1 = sub_267B7DA9C();
    }

    else
    {
      v1 = v5;
      sub_267B7D9CC();

      swift_willThrow();
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_7_4(&type metadata for CodableError, v6);
    *v7 = 0xD000000000000037;
    *(v7 + 8) = v0;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_267B56754@<X0>(uint64_t *a1@<X8>)
{
  result = static AceObject.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static INIntent.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_267B47F78(ObjCClassFromMetadata, &selRef_typeName);
  if (v1)
  {
    v2 = sub_267B7DD4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_267B7DA7C();
  v4 = INIntentCreate();

  if (v4)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  v6 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_7_4(&type metadata for CodableError, v6);
  OUTLINED_FUNCTION_1_13(v7, 36);
  return swift_willThrow();
}

uint64_t INIntent.encode()()
{
  result = sub_267B3A4A0([v0 backingStore]);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267B568D4@<X0>(uint64_t *a1@<X8>)
{
  result = static INIntent.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static INIntentResponse.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  sub_267B569E8();
  v0 = sub_267B7DD4C();

  v1 = sub_267B7DA7C();
  v2 = INIntentResponseCreate();

  if (v2)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  v4 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_7_4(&type metadata for CodableError, v4);
  OUTLINED_FUNCTION_1_13(v5, 45);
  return swift_willThrow();
}

uint64_t sub_267B569E8()
{
  swift_getObjCClassFromMetadata();
  v0 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
  v1 = v0;
  if (v0 && (v2 = v0, v3 = sub_267B57910(v2), v4))
  {
    v5 = v3;
  }

  else
  {

    return 0xD000000000000015;
  }

  return v5;
}

id INIntentResponse.encode()()
{
  result = [v0 backingStore];
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = sub_267B3A4A0(result);
  if (v2 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_267B56ACC@<X0>(uint64_t *a1@<X8>)
{
  result = static INIntentResponse.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id INSendMessageIntent.redacted.getter()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 outgoingMessageType];
  v2 = sub_267B7DE8C();
  v3 = sub_267B7DD4C();
  [v1 setValue:v2 forKey:v3];

  sub_267B47F78(v0, &selRef_content);
  v5 = v4;
  if (v4)
  {
    v6 = sub_267B7DD6C();
    v8 = v7;

    v11[0] = v6;
    v11[1] = v8;
    v5 = sub_267B7E15C();
    sub_267B5798C(v11);
  }

  v9 = sub_267B7DD4C();
  [v1 setValue:v5 forKey:v9];
  swift_unknownObjectRelease();

  return v1;
}

id sub_267B56C58@<X0>(void *a1@<X8>)
{
  result = INSendMessageIntent.redacted.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B56CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_267B7DEFC();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1);
  v12 = type metadata accessor for ModelCodable(0, v5, v6, v11);
  return ModelCodable.wrappedValue.setter(v9, v12);
}

void (*ModelCodable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_267B7DEFC();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  ModelCodable.wrappedValue.getter(v9);
  return sub_267B56E94;
}

void sub_267B56E94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    ModelCodable.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ModelCodable.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ModelCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v8 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8();
  v38 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v45 = type metadata accessor for ModelCodable(0, a2, a3, v13);
  OUTLINED_FUNCTION_8();
  v40 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, a2);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_267B7E24C();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
    return (*(v40 + 8))(v17, v45);
  }

  else
  {
    v35 = v12;
    v36 = v8;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    if (sub_267B7E18C())
    {
      (*(v38 + 8))(v17, v36);
      OUTLINED_FUNCTION_4_6();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, a2);
      v25 = v37;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v43, v44);
      sub_267B46E20();
      sub_267B7E17C();
      v30 = v38;
      v31 = v41;
      v32 = v42;
      v33 = v35;
      (*(a3 + 8))(v41, v42, a2, a3);
      v25 = v37;
      sub_267B3A524(v31, v32);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, a2);
      (*(v30 + 40))(v17, v33, v36);
    }

    __swift_destroy_boxed_opaque_existential_0(v43);
    v26 = v40;
    v27 = v25;
    v28 = v45;
    (*(v40 + 16))(v27, v17, v45);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return (*(v26 + 8))(v17, v28);
  }
}

uint64_t ModelCodable.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a2 + 16);
  v6 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  OUTLINED_FUNCTION_6_3();
  v24 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7E26C();
  (*(v8 + 16))(v11, v3, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v8 + 8))(v11, v6);
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    sub_267B7E1AC();
  }

  else
  {
    v17 = v24;
    (*(v24 + 32))(v16, v11, v5);
    v18 = v29;
    v19 = (*(*(v23 + 24) + 16))(v5);
    if (!v18)
    {
      v25 = v19;
      v26 = v20;
      __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      sub_267B473F0();
      sub_267B7E19C();
      sub_267B3A524(v25, v26);
    }

    (*(v17 + 8))(v16, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t ModelCodable.redacted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_6_3();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v32 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v32 - v21;
  (*(v13 + 16))(v32 - v21, v2, v11);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    (*(v13 + 8))(v22, v11);
LABEL_7:
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280218E10, &qword_267B81460);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (!*(&v35 + 1))
  {
LABEL_8:
    sub_267B57A30(&v34);
    goto LABEL_9;
  }

  v32[2] = a2;
  sub_267B57A98(&v34, v37);
  v32[0] = v37[4];
  v23 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v32[1] = v32;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  sub_267B7DB6C();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    v24 = v33;
    (*(v33 + 32))(v10, v20, v5);
    (*(v24 + 16))(v17, v10, v5);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v5);
    ModelCodable.init(wrappedValue:)(v17, v5, *(a1 + 24));
    (*(v24 + 8))(v10, v5);
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v5);
  (*(v13 + 8))(v20, v11);
  __swift_destroy_boxed_opaque_existential_0(v37);
LABEL_9:
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v5);
  return ModelCodable.init(wrappedValue:)(v17, v5, *(a1 + 24));
}

unint64_t sub_267B578BC()
{
  result = qword_280218E00;
  if (!qword_280218E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218E00);
  }

  return result;
}

uint64_t sub_267B57910(void *a1)
{
  v2 = [a1 type];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
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

uint64_t sub_267B57A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218E08, &qword_267B81458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B57A98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_267B57B20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B57B60(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_267B57BC0(uint64_t a1)
{
  result = sub_267B7DEFC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B57C30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_267B57DA8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_267B578BC();
}

uint64_t sub_267B58014()
{
  v0 = sub_267B7DCFC();
  __swift_allocate_value_buffer(v0, qword_2802286D0);
  __swift_project_value_buffer(v0, qword_2802286D0);
  return sub_267B7DCEC();
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

BOOL INSendMessageIntent.hasAttachment.getter()
{
  result = 0;
  if (sub_267B58800(v0, &selRef_attachments, &qword_280218EB8, 0x277CD4070))
  {
    v1 = sub_267B4B65C();

    if (v1)
    {
      return 1;
    }
  }

  return result;
}

BOOL INSendMessageIntent.hasContent.getter()
{
  v1 = sub_267B57980(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t INSendMessageIntent.isGroupMessage.getter()
{
  v1 = sub_267B58800(v0, &selRef_recipients, &qword_280218EB0, 0x277CD3E90);
  if (!v1 || (v2 = sub_267B4B638(v1), , v2 <= 1))
  {
    result = [v0 speakableGroupName];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

BOOL INSendMessageIntent.supportsCorrection.getter()
{
  v1 = sub_267B58800(v0, &selRef_recipients, &qword_280218EB0, 0x277CD3E90);
  if (v1)
  {
    v2 = sub_267B4B638(v1);

    if (v2 == 1)
    {
      v3 = [v0 speakableGroupName];
      if (!v3)
      {
        return !INSendMessageIntent.hasAttachment.getter();
      }
    }
  }

  return 0;
}

id INSendMessageIntent.shouldHideSiriAttribution.getter()
{
  v1 = [v0 shouldHideSiriAttribution];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void INSendMessageIntent.shouldHideSiriAttribution.setter(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v1 setShouldHideSiriAttribution_];
}

void (*INSendMessageIntent.shouldHideSiriAttribution.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = INSendMessageIntent.shouldHideSiriAttribution.getter() & 1;
  return sub_267B58448;
}

BOOL INSendMessageIntent.canHideSiriAttribution.getter()
{
  if ([v0 outgoingMessageType] != 1)
  {
    return 0;
  }

  return INSendMessageIntent.hasContent.getter();
}

SiriMessagesCommon::TextBalloon::ServiceType __swiftcall INSendMessageIntentResponse.serviceType(appBundleIdentifier:)(Swift::String_optional appBundleIdentifier)
{
  v3 = v1;
  if (appBundleIdentifier.value._object && (appBundleIdentifier.value._countAndFlagsBits == 0xD000000000000013 ? (v4 = 0x8000000267B86E60 == appBundleIdentifier.value._object) : (v4 = 0), v4 || (LOBYTE(appBundleIdentifier.value._countAndFlagsBits) = sub_267B7E16C(), (appBundleIdentifier.value._countAndFlagsBits & 1) != 0)))
  {
    v5 = sub_267B58800(v2, &selRef_sentMessages, &qword_280218EA8, 0x277CD3DE0);
    v6 = v5;
    if (v5)
    {
      appBundleIdentifier.value._countAndFlagsBits = sub_267B4B65C();
      if (appBundleIdentifier.value._countAndFlagsBits)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D601950](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return appBundleIdentifier.value._countAndFlagsBits;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        v5 = sub_267B58874(v8);
        v6 = v9;
      }

      else
      {

        v5 = 0;
        v6 = 0;
      }
    }

    static TextBalloon.ServiceType.serviceFor(_:)(v5, v6, v3);
  }

  else
  {
    *v3 = 2;
  }

  return appBundleIdentifier.value._countAndFlagsBits;
}

uint64_t INIntent.launchBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = sub_267B588E4(v0);
  v6 = v4;
  if (v5)
  {
    v9[2] = v4;
    v9[3] = v5;
    v9[0] = 0xD000000000000010;
    v9[1] = 0x8000000267B872E0;
    sub_267B58948();
    sub_267B5899C();
    if (sub_267B7DD3C())
    {
      sub_267B7DA5C();

      v7 = sub_267B7DA6C();
      if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
      {
        sub_267B46E74(v3);
        return 0;
      }

      else
      {
        v6 = sub_267B7DA4C();
        (*(*(v7 - 8) + 8))(v3, v7);
      }
    }
  }

  return v6;
}

uint64_t INIntent.clone()()
{
  swift_getObjectType();
  [v0 copy];
  sub_267B7DF1C();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

unint64_t sub_267B587DC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267B58800(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_267B40FF0(0, a3, a4);
  v8 = sub_267B7DE1C();

  return v8;
}

uint64_t sub_267B58874(void *a1)
{
  v2 = [a1 serviceName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t sub_267B588E4(void *a1)
{
  v1 = [a1 launchId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

unint64_t sub_267B58948()
{
  result = qword_280218E98;
  if (!qword_280218E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218E98);
  }

  return result;
}

unint64_t sub_267B5899C()
{
  result = qword_280218EA0;
  if (!qword_280218EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EA0);
  }

  return result;
}

uint64_t sub_267B589F0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x75416C65636E6163;
  }

  if (v2)
  {
    v4 = 0xEE00646E65536F74;
  }

  else
  {
    v4 = 0x8000000267B86CC0;
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x75416C65636E6163;
  }

  if (a2)
  {
    v6 = 0x8000000267B86CC0;
  }

  else
  {
    v6 = 0xEE00646E65536F74;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_267B7E16C();
  }

  return v8 & 1;
}

uint64_t sub_267B58AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_267B7E16C();
  }

  return v9 & 1;
}

uint64_t sub_267B58B70(unsigned __int8 a1, char a2)
{
  v2 = 0x7472616568;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7472616568;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x705573626D756874;
      break;
    case 2:
      v5 = 0x6F4473626D756874;
      v3 = 0xEA00000000006E77;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 24936;
      break;
    case 4:
      v5 = 0x74616D616C637865;
      v3 = 0xEB000000006E6F69;
      break;
    case 5:
      v5 = 0x6E6F697473657571;
      v3 = 0xEC0000006B72614DLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x705573626D756874;
      break;
    case 2:
      v2 = 0x6F4473626D756874;
      v6 = 0xEA00000000006E77;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v2 = 24936;
      break;
    case 4:
      v2 = 0x74616D616C637865;
      v6 = 0xEB000000006E6F69;
      break;
    case 5:
      v2 = 0x6E6F697473657571;
      v6 = 0xEC0000006B72614DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_267B7E16C();
  }

  return v8 & 1;
}

uint64_t sub_267B58D90(uint64_t a1)
{
  v1 = a1;
  sub_267B7E21C();
  sub_267B58EF4(v3, v1);
  return sub_267B7E23C();
}

uint64_t sub_267B58DE4(uint64_t a1, char a2)
{
  sub_267B7DD9C();
}

uint64_t sub_267B58E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_267B7DD9C();
}

uint64_t sub_267B58EF4(uint64_t a1, char a2)
{
  sub_267B7DD9C();
}

uint64_t sub_267B58FE0(uint64_t a1, char a2)
{
  sub_267B7E21C();
  sub_267B58EF4(v4, a2);
  return sub_267B7E23C();
}

uint64_t sub_267B59054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_267B7E21C();
  a3(v4);
  sub_267B7DD9C();

  return sub_267B7E23C();
}

uint64_t sub_267B590C0(uint64_t a1, char a2)
{
  sub_267B7E21C();
  sub_267B7DD9C();

  return sub_267B7E23C();
}

SiriMessagesCommon::AutoSendableButtonAction_optional __swiftcall AutoSendableButtonAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7DFEC();

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

uint64_t AutoSendableButtonAction.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x75416C65636E6163;
  }
}

unint64_t sub_267B59210()
{
  result = qword_280218EC0;
  if (!qword_280218EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EC0);
  }

  return result;
}

uint64_t sub_267B59288@<X0>(uint64_t *a1@<X8>)
{
  result = AutoSendableButtonAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoSendableButtonAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B594C8()
{
  result = qword_280218EC8;
  if (!qword_280218EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EC8);
  }

  return result;
}

uint64_t sub_267B59528(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75416C65636E6163 && a2 == 0xEE00646E65536F74)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B595D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B59528(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B595FC(uint64_t a1)
{
  v2 = sub_267B5979C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B59638(uint64_t a1)
{
  v2 = sub_267B5979C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CancelAutoSend.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218ED0, &qword_267B81800);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5979C();
  sub_267B7E27C();
  sub_267B7E10C();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_267B5979C()
{
  result = qword_280218ED8;
  if (!qword_280218ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218ED8);
  }

  return result;
}

uint64_t CancelAutoSend.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218EE0, &qword_267B81808);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5979C();
  sub_267B7E25C();
  if (!v2)
  {
    v11 = sub_267B7E06C();
    (*(v7 + 8))(v10, v3);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B59938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B59D50();
  sub_267B59DA4();
  return sub_267B7DB8C();
}

uint64_t sub_267B599A4(uint64_t a1, uint64_t a2)
{
  sub_267B59D50();
  sub_267B59DA4();
  return sub_267B7DB7C();
}

uint64_t getEnumTagSinglePayload for CancelAutoSend(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CancelAutoSend(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CancelAutoSend.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_267B59C4C()
{
  result = qword_280218EE8;
  if (!qword_280218EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EE8);
  }

  return result;
}

unint64_t sub_267B59CA4()
{
  result = qword_280218EF0;
  if (!qword_280218EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EF0);
  }

  return result;
}

unint64_t sub_267B59CFC()
{
  result = qword_280218EF8;
  if (!qword_280218EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EF8);
  }

  return result;
}

unint64_t sub_267B59D50()
{
  result = qword_280218F00;
  if (!qword_280218F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218F00);
  }

  return result;
}

unint64_t sub_267B59DA4()
{
  result = qword_280218F08;
  if (!qword_280218F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218F08);
  }

  return result;
}

uint64_t *sub_267B59DF8()
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_280218550);
  }

  return &qword_280218F10;
}

void __swiftcall SnippetLabels.init(send:undoSend:cancel:change:done:audioMessage:readingInProgress:unreadMessages:changeContact:placeholderAttachment:newMessage:toWithColon:toWho:payloadPrompt:openMessages:)(SiriMessagesCommon::SnippetLabels *__return_ptr retstr, Swift::String send, Swift::String undoSend, Swift::String cancel, Swift::String change, Swift::String done, Swift::String audioMessage, Swift::String readingInProgress, Swift::String unreadMessages, Swift::String changeContact, Swift::String placeholderAttachment, Swift::String newMessage, Swift::String toWithColon, Swift::String toWho, Swift::String payloadPrompt, Swift::String openMessages)
{
  retstr->send = send;
  retstr->undoSend = undoSend;
  retstr->cancel = cancel;
  retstr->change = change;
  retstr->done = done;
  retstr->audioMessage = audioMessage;
  retstr->readingInProgress = readingInProgress;
  retstr->unreadMessages = unreadMessages;
  retstr->changeContact = changeContact;
  retstr->placeholderAttachment = placeholderAttachment;
  retstr->newMessage = newMessage;
  retstr->toWithColon = toWithColon;
  retstr->toWho = toWho;
  retstr->payloadPrompt = payloadPrompt;
  retstr->openMessages = openMessages;
}

uint64_t sub_267B5A110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684956531 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F646E75 && a2 == 0xE800000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E616863 && a2 == 0xE600000000000000;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701736292 && a2 == 0xE400000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73654D6F69647561 && a2 == 0xEC00000065676173;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000267B87300 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x654D646165726E75 && a2 == 0xEE00736567617373;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F4365676E616863 && a2 == 0xED0000746361746ELL;
                  if (v13 || (sub_267B7E16C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x8000000267B87320 == a2;
                    if (v14 || (sub_267B7E16C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x617373654D77656ELL && a2 == 0xEA00000000006567;
                      if (v15 || (sub_267B7E16C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6F43687469576F74 && a2 == 0xEB000000006E6F6CLL;
                        if (v16 || (sub_267B7E16C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F68576F74 && a2 == 0xE500000000000000;
                          if (v17 || (sub_267B7E16C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x5064616F6C796170 && a2 == 0xED000074706D6F72;
                            if (v18 || (sub_267B7E16C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x7373654D6E65706FLL && a2 == 0xEC00000073656761)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_267B7E16C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B5A5BC(char a1)
{
  result = 1684956531;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F646E75;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x65676E616863;
      break;
    case 4:
      result = 1701736292;
      break;
    case 5:
      result = 0x73654D6F69647561;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x654D646165726E75;
      break;
    case 8:
      v3 = 0x65676E616863;
      goto LABEL_16;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x617373654D77656ELL;
      break;
    case 11:
      v3 = 0x687469576F74;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 12:
      result = 0x6F68576F74;
      break;
    case 13:
      result = 0x5064616F6C796170;
      break;
    case 14:
      result = 0x7373654D6E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B5A778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5A110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5A7A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B5A5B4();
  *a1 = result;
  return result;
}

uint64_t sub_267B5A7C8(uint64_t a1)
{
  v2 = sub_267B5AC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5A804(uint64_t a1)
{
  v2 = sub_267B5AC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnippetLabels.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219000, &qword_267B819E0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = v1[2];
  v55 = v1[3];
  v56 = v9;
  v10 = v1[4];
  v53 = v1[5];
  v54 = v10;
  v11 = v1[6];
  v51 = v1[7];
  v52 = v11;
  v12 = v1[8];
  v49 = v1[9];
  v50 = v12;
  v13 = v1[11];
  v47 = v1[10];
  v48 = v13;
  v14 = v1[13];
  v45 = v1[12];
  v46 = v14;
  v15 = v1[15];
  v43 = v1[14];
  v44 = v15;
  v16 = v1[17];
  v41 = v1[16];
  v42 = v16;
  v17 = v1[19];
  v39 = v1[18];
  v40 = v17;
  v18 = v1[21];
  v37 = v1[20];
  v38 = v18;
  v19 = v1[23];
  v35 = v1[22];
  v36 = v19;
  v20 = v1[25];
  v33 = v1[24];
  v34 = v20;
  v21 = v1[27];
  v31 = v1[26];
  v32 = v21;
  v22 = v1[29];
  v29 = v1[28];
  v30 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5AC20();
  sub_267B7E27C();
  v72 = 0;
  v23 = v57;
  sub_267B7E0FC();
  if (v23)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v24 = v54;
  v25 = v52;
  v26 = v50;
  v57 = v5;
  v71 = 1;
  OUTLINED_FUNCTION_10_2(v56);
  v70 = 2;
  OUTLINED_FUNCTION_10_2(v24);
  v69 = 3;
  OUTLINED_FUNCTION_10_2(v25);
  v68 = 4;
  OUTLINED_FUNCTION_10_2(v26);
  v67 = 5;
  OUTLINED_FUNCTION_10_2(v47);
  v66 = 6;
  OUTLINED_FUNCTION_10_2(v45);
  v65 = 7;
  OUTLINED_FUNCTION_10_2(v43);
  v64[0] = 8;
  OUTLINED_FUNCTION_10_2(v41);
  v63 = 9;
  OUTLINED_FUNCTION_10_2(v39);
  v62 = 10;
  sub_267B7E0FC();
  v61 = 11;
  OUTLINED_FUNCTION_9_2(v35);
  v60 = 12;
  OUTLINED_FUNCTION_9_2(v33);
  v59 = 13;
  OUTLINED_FUNCTION_9_2(v31);
  v58 = 14;
  OUTLINED_FUNCTION_9_2(v29);
  return (*(v57 + 8))(v8, v3);
}

unint64_t sub_267B5AC20()
{
  result = qword_280219008;
  if (!qword_280219008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219008);
  }

  return result;
}

uint64_t SnippetLabels.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219010, &qword_267B819E8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v6 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_267B5AC20();
  sub_267B7E25C();
  if (!v2)
  {
    v61 = a2;
    LOBYTE(v64[0]) = 0;
    v7 = sub_267B7E05C();
    v51 = v8;
    v9 = OUTLINED_FUNCTION_4_7(1);
    v50 = v10;
    v59 = OUTLINED_FUNCTION_4_7(2);
    v49 = v11;
    v57 = OUTLINED_FUNCTION_4_7(3);
    v48 = v12;
    v56 = OUTLINED_FUNCTION_4_7(4);
    v47 = v13;
    v54 = OUTLINED_FUNCTION_4_7(5);
    v46 = v14;
    v53 = OUTLINED_FUNCTION_4_7(6);
    v45 = v15;
    v38 = OUTLINED_FUNCTION_4_7(7);
    v43 = v16;
    v37 = OUTLINED_FUNCTION_4_7(8);
    v44 = v17;
    v18 = OUTLINED_FUNCTION_4_7(9);
    v42 = v19;
    v20 = v18;
    v36 = OUTLINED_FUNCTION_4_7(10);
    v41 = v21;
    v34 = OUTLINED_FUNCTION_4_7(11);
    v35 = v22;
    v65 = 1;
    v33 = OUTLINED_FUNCTION_4_7(12);
    v40 = v23;
    v32 = OUTLINED_FUNCTION_4_7(13);
    v39 = v24;
    v66 = 14;
    v25 = sub_267B7E05C();
    v31 = v26;
    v27 = v25;
    v28 = OUTLINED_FUNCTION_7_5();
    v29(v28);
    v63[0] = v7;
    v63[1] = v51;
    v63[2] = v9;
    v63[3] = v50;
    v63[4] = v59;
    v63[5] = v49;
    v63[6] = v57;
    v63[7] = v48;
    v63[8] = v56;
    v63[9] = v47;
    v63[10] = v54;
    v63[11] = v46;
    v63[12] = v53;
    v63[13] = v45;
    v63[14] = v38;
    v63[15] = v43;
    v63[16] = v37;
    v63[17] = v44;
    v63[18] = v20;
    v63[19] = v42;
    v63[20] = v36;
    v63[21] = v41;
    v63[22] = v34;
    v63[23] = v35;
    v63[24] = v33;
    v63[25] = v40;
    v63[26] = v32;
    v63[27] = v39;
    v63[28] = v27;
    v63[29] = v31;
    memcpy(v61, v63, 0xF0uLL);
    sub_267B42CAC(v63, v64);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v64[0] = v7;
    v64[1] = v51;
    v64[2] = v9;
    v64[3] = v50;
    v64[4] = v59;
    v64[5] = v49;
    v64[6] = v57;
    v64[7] = v48;
    v64[8] = v56;
    v64[9] = v47;
    v64[10] = v54;
    v64[11] = v46;
    v64[12] = v53;
    v64[13] = v45;
    v64[14] = v38;
    v64[15] = v43;
    v64[16] = v37;
    v64[17] = v44;
    v64[18] = v20;
    v64[19] = v42;
    v64[20] = v36;
    v64[21] = v41;
    v64[22] = v34;
    v64[23] = v35;
    v64[24] = v33;
    v64[25] = v40;
    v64[26] = v32;
    v64[27] = v39;
    v64[28] = v27;
    v64[29] = v31;
    return sub_267B3A348(v64);
  }

  OUTLINED_FUNCTION_3_7();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v65 = 0;
  if (v6)
  {

    if ((v52 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v52)
  {
LABEL_5:
    if (v55)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (v55)
  {
LABEL_6:

    if ((v58 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!v58)
  {
LABEL_7:
    if (!v60)
    {
      return result;
    }
  }

LABEL_12:

  if (v60)
  {
  }

  return result;
}

void sub_267B5B474()
{
  qword_280218F10 = 1684956499;
  qword_280218F18 = 0xE400000000000000;
  qword_280218F20 = 0x6E6553206F646E55;
  unk_280218F28 = 0xE900000000000064;
  qword_280218F30 = 0x6C65636E6143;
  qword_280218F38 = 0xE600000000000000;
  qword_280218F40 = 0x65676E616843;
  qword_280218F48 = 0xE600000000000000;
  qword_280218F50 = 1701736260;
  qword_280218F58 = 0xE400000000000000;
  strcpy(&qword_280218F60, "Audio Message");
  HIWORD(qword_280218F68) = -4864;
  qword_280218F70 = 0xE2676E6964616552;
  qword_280218F78 = 0xAA0000000000A680;
  qword_280218F80 = 0x4D20646165726E55;
  qword_280218F88 = 0xEF73656761737365;
  strcpy(&qword_280218F90, "Change Contact");
  HIBYTE(qword_280218F98) = -18;
  qword_280218FA0 = 0xD000000000000014;
  unk_280218FA8 = 0x8000000267B87340;
  qword_280218FB0 = 0x7373654D2077654ELL;
  unk_280218FB8 = 0xEB00000000656761;
  qword_280218FC0 = 3829588;
  qword_280218FC8 = 0xE300000000000000;
  qword_280218FD0 = 0x3F6F6877206F54;
  unk_280218FD8 = 0xE700000000000000;
  qword_280218FE0 = 0xD000000000000018;
  unk_280218FE8 = 0x8000000267B87360;
  strcpy(&qword_280218FF0, "Open Messages");
  unk_280218FFE = -4864;
}

uint64_t static LabelsProvider.current.getter()
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_280218550);
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_8_6();
  memcpy(v0, v1, 0xF0uLL);
  return sub_267B42CAC(__dst, v3);
}

uint64_t (*static LabelsProvider.current.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_280218550);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_267B5B710@<X0>(void *a1@<X8>)
{
  sub_267B59DF8();
  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  memcpy(a1, &qword_280218F10, 0xF0uLL);
  return sub_267B42CAC(__dst, v3);
}

uint64_t sub_267B5B78C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, v3);
  sub_267B59DF8();
  swift_beginAccess();
  memcpy(v3, &qword_280218F10, sizeof(v3));
  memcpy(&qword_280218F10, __dst, 0xF0uLL);
  return sub_267B3A348(v3);
}

uint64_t sub_267B5B81C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B5B85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LabelsProvider(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetLabels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetLabels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B5BAEC()
{
  result = qword_280219018;
  if (!qword_280219018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219018);
  }

  return result;
}

unint64_t sub_267B5BB44()
{
  result = qword_280219020;
  if (!qword_280219020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219020);
  }

  return result;
}

unint64_t sub_267B5BB9C()
{
  result = qword_280219028;
  if (!qword_280219028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219028);
  }

  return result;
}

void OUTLINED_FUNCTION_2_10()
{
  v0[48] = 0;
  v0[52] = 0;
  v0[54] = 0;
}

void OUTLINED_FUNCTION_3_7()
{
  v0[44] = 0;
  v0[48] = 0;
  v0[52] = 0;
  v0[54] = 0;
}

uint64_t OUTLINED_FUNCTION_4_7@<X0>(char a1@<W8>)
{
  *(v1 + 472) = a1;

  return sub_267B7E05C();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return sub_267B7E0FC();
}

void __swiftcall CarPlayHeader.init(primaryName:secondaryName:contactIdentifiers:shouldShowAnnounceButton:isAnnounceEnabled:appBundleIdentifier:)(SiriMessagesCommon::CarPlayHeader *__return_ptr retstr, Swift::String primaryName, Swift::String_optional secondaryName, Swift::OpaquePointer contactIdentifiers, Swift::Bool shouldShowAnnounceButton, Swift::Bool isAnnounceEnabled, Swift::String appBundleIdentifier)
{
  retstr->primaryName = primaryName;
  retstr->secondaryName = secondaryName;
  retstr->contactIdentifiers = contactIdentifiers;
  retstr->shouldShowAnnounceButton = shouldShowAnnounceButton;
  retstr->isAnnounceEnabled = isAnnounceEnabled;
  retstr->appBundleIdentifier = appBundleIdentifier;
}

uint64_t CarPlayHeader.primaryName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CarPlayHeader.primaryName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CarPlayHeader.secondaryName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CarPlayHeader.secondaryName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CarPlayHeader.contactIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t CarPlayHeader.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CarPlayHeader.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_267B5BF04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000267B87380 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x8000000267B873A0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B873C0 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x8000000267B873E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_267B7E16C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B5C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5BF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5C124(uint64_t a1)
{
  v2 = sub_267B3AA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5C160(uint64_t a1)
{
  v2 = sub_267B3AA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B5C19C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B5C208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B5C248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_267B5C2BC()
{
  result = qword_280219078;
  if (!qword_280219078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219078);
  }

  return result;
}

unint64_t sub_267B5C314()
{
  result = qword_280219080;
  if (!qword_280219080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219080);
  }

  return result;
}

unint64_t sub_267B5C36C()
{
  result = qword_280219088;
  if (!qword_280219088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219088);
  }

  return result;
}

SiriMessagesCommon::UnreadMessagesCompactCarPlayButton __swiftcall UnreadMessagesCompactCarPlayButton.init(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = v1;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_280218F88;
  v4[2] = qword_280218F80;
  v4[3] = v5;
  *v4 = countAndFlagsBits;
  v4[1] = object;

  result.unreadMessagesLabelText._object = v9;
  result.unreadMessagesLabelText._countAndFlagsBits = v8;
  result.text._object = v7;
  result.text._countAndFlagsBits = v6;
  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UnreadMessagesCompactCarPlayButton.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.unreadMessagesLabelText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UnreadMessagesCompactCarPlayButton.unreadMessagesLabelText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_267B5C558(uint64_t a1)
{
  v2 = sub_267B5C740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5C594(uint64_t a1)
{
  v2 = sub_267B5C740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnreadMessagesCompactCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219090, &qword_267B81E60);
  OUTLINED_FUNCTION_8();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5C740();
  sub_267B7E27C();
  v14 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v13 = 1;
    sub_267B7E0FC();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_267B5C740()
{
  result = qword_280219098;
  if (!qword_280219098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219098);
  }

  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190A0, &qword_267B81E68);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5C740();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v23 = 0;
    v11 = OUTLINED_FUNCTION_2_5();
    v13 = v12;
    v23 = 1;
    v14 = OUTLINED_FUNCTION_2_5();
    v16 = v15;
    v17 = *(v6 + 8);
    v21 = v14;
    v17(v9, v4);

    v19 = v21;
    v18 = v22;
    *v22 = v11;
    v18[1] = v13;
    v18[2] = v19;
    v18[3] = v16;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

_BYTE *storeEnumTagSinglePayload for UnreadMessagesCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B5CAF0()
{
  result = qword_2802190A8;
  if (!qword_2802190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190A8);
  }

  return result;
}

unint64_t sub_267B5CB48()
{
  result = qword_2802190B0;
  if (!qword_2802190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190B0);
  }

  return result;
}

unint64_t sub_267B5CBA0()
{
  result = qword_2802190B8;
  if (!qword_2802190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190B8);
  }

  return result;
}

uint64_t PhotoSharingInfo.__allocating_init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v13 = a1;
  OUTLINED_FUNCTION_7_2();
  v14 = swift_allocObject();
  PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(v13, v12, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_267B5CC74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000267B87670 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646E65536F747561 && a2 == 0xEC0000006F666E49;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6974636572726F63 && a2 == 0xEE006F666E496E6FLL;
                  if (v13 || (sub_267B7E16C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2;
                    if (v14 || (sub_267B7E16C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_267B7E16C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B5CFEC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E69;
      break;
    case 2:
      result = 0x6E65687475417369;
      break;
    case 3:
      result = 0x4E746361746E6F63;
      break;
    case 4:
      result = 0x64616F6C796170;
      break;
    case 5:
      result = 0x656D614E707061;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x646E65536F747561;
      break;
    case 8:
      result = 0x6974636572726F63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x736C6562616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B5D140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5CC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5D168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B5CFE4();
  *a1 = result;
  return result;
}

uint64_t sub_267B5D190(uint64_t a1)
{
  v2 = sub_267B60AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5D1CC(uint64_t a1)
{
  v2 = sub_267B60AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageDraftSnippetModel.id.getter()
{
  OUTLINED_FUNCTION_38();
  sub_267B7DACC();
  v0 = OUTLINED_FUNCTION_8_6();

  return v1(v0);
}

void *MessageDraftSnippetModel.intent.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDraftSnippetModel(0) + 20));
  v2 = v1;
  return v1;
}

void MessageDraftSnippetModel.intent.setter()
{
  v2 = *(OUTLINED_FUNCTION_29() + 20);

  *(v1 + v2) = v0;
}

void (*MessageDraftSnippetModel.intent.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel(0) + 20);
  *(a1 + 16) = v3;
  v4 = *(v1 + v3);
  *a1 = v4;
  v5 = v4;
  return sub_267B5D364;
}

void sub_267B5D364(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;

    *(v3 + v2) = v4;
  }

  else
  {

    *(v3 + v2) = v4;
  }
}

uint64_t MessageDraftSnippetModel.contactName.getter()
{
  type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  return v1;
}

uint64_t sub_267B5D434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MessageDraftSnippetModel.contactName.setter(v1, v2);
}

uint64_t MessageDraftSnippetModel.contactName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  return sub_267B7DBCC();
}

uint64_t (*MessageDraftSnippetModel.contactName.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  v2[4] = sub_267B7DBAC();
  return sub_267B41800;
}

uint64_t MessageDraftSnippetModel.isAuthenticated.setter(char a1)
{
  result = type metadata accessor for MessageDraftSnippetModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t MessageDraftSnippetModel.payload.getter()
{
  type metadata accessor for MessageDraftSnippetModel(0);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t MessageDraftSnippetModel.payload.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = (v1 + *(type metadata accessor for MessageDraftSnippetModel(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*MessageDraftSnippetModel.payload.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;

  return sub_267B5D708;
}

uint64_t sub_267B5D708(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  if (a2)
  {

    *v3 = v4;
    v3[1] = v2;
  }

  else
  {

    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t MessageDraftSnippetModel.appName.getter()
{
  type metadata accessor for MessageDraftSnippetModel(0);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t MessageDraftSnippetModel.appName.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = (v1 + *(type metadata accessor for MessageDraftSnippetModel(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MessageDraftSnippetModel.shouldUpdateWithASRText.setter(char a1)
{
  result = type metadata accessor for MessageDraftSnippetModel(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

double MessageDraftSnippetModel.autoSendInfo.getter()
{
  v2 = OUTLINED_FUNCTION_38();
  v3 = (v1 + *(type metadata accessor for MessageDraftSnippetModel(v2) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;

  return sub_267B60A64(v4, v5, v6, v7, v8);
}

__n128 MessageDraftSnippetModel.autoSendInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for MessageDraftSnippetModel(0) + 44));
  sub_267B60AAC(*v4, v4[1], v4[2]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

double MessageDraftSnippetModel.correctionInfo.getter()
{
  v2 = OUTLINED_FUNCTION_38();
  *v0 = *(v1 + *(type metadata accessor for MessageDraftSnippetModel(v2) + 48));

  return result;
}

uint64_t MessageDraftSnippetModel.correctionInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel(0) + 48);

  *(v1 + v3) = v2;
  return result;
}

uint64_t MessageDraftSnippetModel.photoSharingInfo.getter()
{
  type metadata accessor for MessageDraftSnippetModel(0);
}

uint64_t MessageDraftSnippetModel.photoSharingInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_29() + 52);

  *(v1 + v2) = v0;
  return result;
}

void *MessageDraftSnippetModel.labels.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for MessageDraftSnippetModel(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBBC();
}

uint64_t sub_267B5DB70(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, &v3);
  return MessageDraftSnippetModel.labels.setter(__src);
}

uint64_t MessageDraftSnippetModel.labels.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBCC();
}

uint64_t (*MessageDraftSnippetModel.labels.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  v2[4] = sub_267B7DBAC();
  return sub_267B43594;
}

uint64_t MessageDraftSnippetModel.init(intent:contactName:isAuthenticated:payload:appName:shouldUpdateWithASRText:autoSendInfo:correctionInfo:photoSharingInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 *a11, uint64_t *a12, uint64_t a13)
{
  v44 = a11[1];
  v45 = *a11;
  v43 = *(a11 + 4);
  v46 = *a12;
  v15 = type metadata accessor for MessageDraftSnippetModel(0);
  v16 = v15[5];
  *(a9 + v16) = 0;
  v17 = (a9 + v15[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v15[9];
  v19 = a9 + v15[11];
  OUTLINED_FUNCTION_42();
  v21 = *(v20 + 48);
  *(a9 + v21) = 0;
  v37 = *(v20 + 52);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v22 = (a9 + v18);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  memcpy(v23, v24, v25);
  OUTLINED_FUNCTION_37();
  memcpy(v26, v27, v28);
  sub_267B42CAC(v50, v47);
  sub_267B7DB9C();
  sub_267B7DABC();
  v29 = *(a9 + v16);
  v30 = a1;

  *(a9 + v16) = a1;
  v48 = a2;
  v49 = a3;
  sub_267B7DB9C();

  *(a9 + v15[7]) = a4 & 1;

  *v17 = a5;
  v17[1] = a6;
  *v22 = a7;
  v22[1] = a8;
  *(a9 + v15[10]) = a10 & 1;
  v31 = OUTLINED_FUNCTION_26();
  sub_267B60AAC(v31, v32, v33);
  *v19 = v45;
  *(v19 + 16) = v44;
  *(v19 + 32) = v43;

  *(a9 + v21) = v46;
  *(a9 + v37) = a13;
  return result;
}

void MessageDraftSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v80 = v0;
  v2 = v1;
  v71 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  OUTLINED_FUNCTION_8();
  v82 = v5;
  v83 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  OUTLINED_FUNCTION_8();
  v76 = v9;
  v77 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v73 = &v68 - v11;
  v92 = sub_267B7DACC();
  OUTLINED_FUNCTION_8();
  v78 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190C0, &unk_267B82050);
  OUTLINED_FUNCTION_8();
  v74 = v17;
  v75 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for MessageDraftSnippetModel(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v22[5];
  *&v24[v86] = 0;
  v25 = &v24[v22[8]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v85 = v25;
  v26 = &v24[v22[11]];
  OUTLINED_FUNCTION_42();
  v84 = *(v27 + 48);
  *&v24[v84] = 0;
  v28 = *(v27 + 56);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  memcpy(v29, v30, v31);
  OUTLINED_FUNCTION_37();
  memcpy(v32, v33, v34);
  sub_267B42CAC(&v91, v87);
  v81 = v28;
  sub_267B7DB9C();
  v35 = v2;
  v36 = v2[3];
  v79 = v35;
  OUTLINED_FUNCTION_41(v35, v36);
  sub_267B60AF4();
  v37 = v80;
  sub_267B7E25C();
  if (v37)
  {
    __swift_destroy_boxed_opaque_existential_0(v79);

    v39 = OUTLINED_FUNCTION_26();
    sub_267B60AAC(v39, v40, v41);

    (*(v82 + 8))(&v24[v81], v83);
  }

  else
  {
    v80 = v21;
    LOBYTE(v88) = 0;
    OUTLINED_FUNCTION_10_3();
    sub_267B61754(v38);
    sub_267B7E08C();
    (*(v78 + 32))(v24, v15, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    v70 = v20;
    v87[0] = 1;
    OUTLINED_FUNCTION_35();
    v43 = sub_267B42E70(v42);
    OUTLINED_FUNCTION_18_0(v43);
    v44 = v88;
    v45 = v86;

    *&v24[v45] = v44;
    LOBYTE(v88) = 3;
    OUTLINED_FUNCTION_1();
    sub_267B42EB4(v46);
    v47 = v73;
    v48 = v77;
    sub_267B7E08C();
    v49 = v80;
    (*(v76 + 32))(&v24[v80[6]], v47, v48);
    LOBYTE(v88) = 2;
    v24[v49[7]] = sub_267B7E02C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190D8, &qword_267B82060);
    v87[0] = 4;
    OUTLINED_FUNCTION_35();
    v51 = sub_267B42E70(v50);
    OUTLINED_FUNCTION_18_0(v51);
    v52 = v88;
    v53 = v85;

    *v53 = v52;
    LOBYTE(v88) = 5;
    v54 = sub_267B7E01C();
    v55 = v80;
    v56 = &v24[v80[9]];
    *v56 = v54;
    v56[1] = v57;
    LOBYTE(v88) = 6;
    v24[v55[10]] = sub_267B7E06C() & 1;
    v87[0] = 7;
    sub_267B60B48();
    OUTLINED_FUNCTION_32(&type metadata for AutoSendInfo);
    v73 = v90;
    v58 = OUTLINED_FUNCTION_26();
    v68 = v89;
    v69 = v88;
    sub_267B60AAC(v58, v59, v60);
    v61 = v68;
    *v26 = v69;
    *(v26 + 1) = v61;
    *(v26 + 4) = v73;
    v87[0] = 8;
    sub_267B60B9C();
    OUTLINED_FUNCTION_32(&type metadata for CorrectionInfo);
    v62 = v88;
    v63 = v84;

    *&v24[v63] = v62;
    type metadata accessor for PhotoSharingInfo();
    v87[0] = 9;
    OUTLINED_FUNCTION_9_3();
    sub_267B61754(v64);
    sub_267B7E04C();
    *&v24[v80[13]] = v88;
    LOBYTE(v88) = 10;
    OUTLINED_FUNCTION_1();
    sub_267B42F20(v65);
    sub_267B7E08C();
    v66 = OUTLINED_FUNCTION_27();
    v67(v66);
    (*(v82 + 40))(&v24[v81], v72, v83);
    sub_267B60C14(v24, v71);
    __swift_destroy_boxed_opaque_existential_0(v79);
    sub_267B60C78(v24);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t MessageDraftSnippetModel.description.getter()
{
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v1 = type metadata accessor for MessageDraftSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  MEMORY[0x26D601760]();

  OUTLINED_FUNCTION_16_0();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v22 = v2;
  if (*(v0 + v1[7]))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + v1[7]))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v3, v4);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD000000000000012, v22);

  if (*(v0 + v1[8] + 8))
  {
    v5 = 0x657463616465723CLL;
  }

  else
  {
    v5 = 7104878;
  }

  v6 = 0xE300000000000000;
  if (*(v0 + v1[8] + 8))
  {
    v7 = 0xEA00000000003E64;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v5, v7);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0x64616F6C79617020, 0xEA0000000000203ALL);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v23 = v8;
  if (*(v0 + v1[10]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + v1[10]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v9, v10);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD00000000000001ALL, v23);

  sub_267B7DF8C();

  v11 = 7104878;
  if (*(v0 + v1[11] + 16) != 1)
  {
    v11 = AutoSendInfo.description.getter();
    v6 = v12;
  }

  MEMORY[0x26D601760](v11, v6);

  MEMORY[0x26D601760](44, 0xE100000000000000);

  MEMORY[0x26D601760](0x6E65536F74756120, 0xEF203A6F666E4964);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v24 = v13;
  if (*(v0 + v1[12]))
  {
    v14 = CorrectionInfo.description.getter();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x26D601760](v14, v16);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD000000000000011, v24);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v25 = v17;
  if (*(v0 + v1[13]))
  {
    v18 = PhotoSharingInfo.description.getter();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x26D601760](v18, v20);

  MEMORY[0x26D601760](41, 0xE100000000000000);

  MEMORY[0x26D601760](0xD000000000000013, v25);

  return 0xD000000000000027;
}

uint64_t AutoSendInfo.description.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];

  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000021, 0x8000000267B874B0);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v5, v1);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B874E0);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v6, v7);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

unint64_t CorrectionInfo.description.getter()
{
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v0 = sub_267B7E14C();
  MEMORY[0x26D601760](v0);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t PhotoSharingInfo.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000001ELL, 0x8000000267B87530);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v1, v2);

  MEMORY[0x26D601760](0xD000000000000019, 0x8000000267B87550);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  if (*(v0 + 17))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v3, v4);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x26D6017E0](v5, MEMORY[0x277D837D0]);
  v9 = v8;

  MEMORY[0x26D601760](v7, v9);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();

  v11 = MEMORY[0x26D6017E0](v10, v6);
  v13 = v12;

  MEMORY[0x26D601760](v11, v13);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B875B0);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v14 = sub_267B7DA6C();

  v16 = MEMORY[0x26D6017E0](v15, v14);
  v18 = v17;

  MEMORY[0x26D601760](v16, v18);

  MEMORY[0x26D601760](0xD000000000000014, 0x8000000267B875D0);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v19 = *(v0 + 56);
  if (v19)
  {
    v20 = *(v0 + 48);
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = *(v0 + 56);
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  MEMORY[0x26D601760](v20, v21);

  return 0;
}

void MessageDraftSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190F8, &qword_267B82068);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_41(v4, v4[3]);
  sub_267B60AF4();
  OUTLINED_FUNCTION_40();
  sub_267B7E27C();
  sub_267B7DACC();
  OUTLINED_FUNCTION_10_3();
  sub_267B61754(v6);
  OUTLINED_FUNCTION_3_1();
  sub_267B7E12C();
  if (!v1)
  {
    v7 = type metadata accessor for MessageDraftSnippetModel(0);
    v18 = *(v2 + *(v7 + 20));
    v8 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v9);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_0_2();
    sub_267B42EB4(v10);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190D8, &qword_267B82060);
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v11);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v12 = (v2 + *(v7 + 44));
    v19 = *v12;
    v20 = v12[1];
    v21 = v12[2];
    sub_267B60A64(*v12, v20, v21, v12[3], v12[4]);
    sub_267B60CD4();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
    sub_267B60AAC(v19, v20, v21);
    v13 = sub_267B60D28();

    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();

    if (!v13)
    {
      type metadata accessor for PhotoSharingInfo();
      OUTLINED_FUNCTION_9_3();
      sub_267B61754(v14);
      OUTLINED_FUNCTION_3_1();
      sub_267B7E0EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      OUTLINED_FUNCTION_0_2();
      sub_267B42F20(v15);
      OUTLINED_FUNCTION_3_1();
      sub_267B7E12C();
    }
  }

  v16 = OUTLINED_FUNCTION_1_0();
  v17(v16);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B5F5F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000267B87690 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_267B5F71C(char a1)
{
  if (!a1)
  {
    return 0x646E65536F747561;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000011;
}

uint64_t sub_267B5F7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5F5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5F7EC(uint64_t a1)
{
  v2 = sub_267B60D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5F828(uint64_t a1)
{
  v2 = sub_267B60D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendInfo.delayedActionAceId.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t AutoSendInfo.speechSynthesisId.setter()
{
  OUTLINED_FUNCTION_31();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void __swiftcall AutoSendInfo.init(autoSendTimeout:delayedActionAceId:speechSynthesisId:)(SiriMessagesCommon::AutoSendInfo *__return_ptr retstr, Swift::Double autoSendTimeout, Swift::String_optional delayedActionAceId, Swift::String_optional speechSynthesisId)
{
  retstr->autoSendTimeout = autoSendTimeout;
  retstr->delayedActionAceId = delayedActionAceId;
  retstr->speechSynthesisId = speechSynthesisId;
}

uint64_t AutoSendInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219120, &qword_267B82070);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B60D7C();
  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v24 = 0;
    OUTLINED_FUNCTION_25();
    sub_267B7E07C();
    v12 = v11;
    v23 = 1;
    OUTLINED_FUNCTION_25();
    v14 = sub_267B7E01C();
    v16 = v15;
    v22 = 2;
    OUTLINED_FUNCTION_25();
    v17 = sub_267B7E01C();
    v19 = v18;
    v20 = *(v7 + 8);
    v21 = v17;
    v20(v10, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v21;
    a2[4] = v19;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t AutoSendInfo.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219130, &qword_267B82078);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B60D7C();
  sub_267B7E27C();
  OUTLINED_FUNCTION_6();
  sub_267B7E11C();
  if (!v1)
  {
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
  }

  v4 = OUTLINED_FUNCTION_1_0();
  return v5(v4);
}

uint64_t sub_267B5FD30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B5FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5FD30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B5FE30(uint64_t a1)
{
  v2 = sub_267B60DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5FE6C(uint64_t a1)
{
  v2 = sub_267B60DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CorrectionInfo.appBundleIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void CorrectionInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219138, &unk_267B82080);
  OUTLINED_FUNCTION_8();
  v29 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_41(v24, v24[3]);
  sub_267B60DD0();
  sub_267B7E25C();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_14_2(&qword_2802189C0);
    sub_267B7E08C();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_14();
}

void CorrectionInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219148, &qword_267B82090);
  OUTLINED_FUNCTION_8();
  v27 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  OUTLINED_FUNCTION_41(v24, v24[3]);
  sub_267B60DD0();

  sub_267B7E27C();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  OUTLINED_FUNCTION_13_2(&qword_2802189E8);
  sub_267B7E12C();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B601D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5465726168537369 && a2 == 0xEB00000000736968;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000267B87630 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B86F80 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000267B86FA0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B87650 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000267B86FC0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_267B7E16C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B603C0(char a1)
{
  result = 0x5465726168537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B604D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B601D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B604F8(uint64_t a1)
{
  v2 = sub_267B6126C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B60534(uint64_t a1)
{
  v2 = sub_267B6126C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoSharingInfo.isShareThis.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t PhotoSharingInfo.isShareThis.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_12_1(v2 + 16, a2);
  *(v2 + 16) = a1;
  return result;
}