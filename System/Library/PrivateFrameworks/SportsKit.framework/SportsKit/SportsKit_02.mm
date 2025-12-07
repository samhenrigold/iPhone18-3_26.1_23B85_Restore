void sub_26B6558EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *format, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_10_2();
  a28 = v29;
  a29 = v30;
  formata = v32;
  v58 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  a17 = *v41;
  v42 = sub_26B667644();
  v44 = v43;
  v45 = sub_26B6550E4();
  sub_26B65516C();
  v56 = v40;
  v46 = v40;
  v47 = v34;
  v48 = v58(v46, v38, v36, v34, &a17, v42, v44, v45);

  sub_26B655DA0(v42, v44);
  if (qword_280408DB8 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280408DB8);
  }

  v49 = sub_26B6E95C4();
  __swift_project_value_buffer(v49, qword_280421B10);

  v50 = sub_26B6E95A4();
  v51 = sub_26B6E9E64();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *&a17 = swift_slowAlloc();
    *v52 = 136315650;
    *(v52 + 4) = sub_26B6D22D8(v56, v38, &a17);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_26B6D22D8(v36, v47, &a17);
    *(v52 + 22) = 2080;
    if (v48)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (v48)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = sub_26B6D22D8(v53, v54, &a17);

    *(v52 + 24) = v55;
    _os_log_impl(&dword_26B630000, v50, v51, formata, v52, 0x20u);
    OUTLINED_FUNCTION_6_2();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_3_4();
  }

  OUTLINED_FUNCTION_9_2();
}

BOOL sub_26B655B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31, v32, v33, v34, v36, v38, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
  if ((v37 - 1) < 2)
  {
    return 0;
  }

  sub_26B655DF0(v35, v37, v39, v41);
  if (!v41)
  {
    return 0;
  }

  if (!*(v41 + 16))
  {
    goto LABEL_10;
  }

  v11 = sub_26B675324();
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(*(v41 + 56) + 8 * v11);

  if (!v13)
  {
    return 0;
  }

  sub_26B667770(a6, a7);
  if (!*(v13 + 16))
  {

LABEL_10:

    return 0;
  }

  v14 = sub_26B675324();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = *(v13 + 56) + 24 * v14;
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);

  if (v19)
  {
    MEMORY[0x28223BE20](v20);
    OUTLINED_FUNCTION_4_1();
    v22 = sub_26B6C35FC(sub_26B655E5C, v21, v19);

    if (v22)
    {
      goto LABEL_10;
    }
  }

  if (!v18)
  {
    return 1;
  }

  v24 = sub_26B6E99F4();

  [v24 doubleValue];
  v26 = v25;

  v27 = sub_26B6E99F4();
  [v27 doubleValue];
  v29 = v28;

  return v26 <= v29;
}

uint64_t SportsTierManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t SportsTierManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26B655DA0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_26B655DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_26B655E0C(a2);
  }
}

uint64_t sub_26B655E0C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_26B655E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_26B655E98(a2);
  }
}

uint64_t sub_26B655E98(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_4()
{

  sub_26B655DF0(v1, v2, v0, v3);
}

void OUTLINED_FUNCTION_2_4()
{

  JUMPOUT(0x26D67E950);
}

void OUTLINED_FUNCTION_3_4()
{

  JUMPOUT(0x26D67E950);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_11_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *v13 = a1;

  return sub_26B6D22D8(a11, v14, va);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v30 - 144) = *a5;

  return sub_26B654C7C(a1, a2, v30 - 144, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_26B656098()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      v12 = 549230306;
      goto LABEL_15;
    case 2:
      v15 = *v0;
      sub_26B6565C0(v2, v1, v4, v3, 2u);
      v9 = 0x646579616C654420;
      v1 = 0xE800000000000000;
      goto LABEL_17;
    case 3:
      v12 = 0x20534E4550;
      goto LABEL_15;
    case 4:
    case 5:
      v5 = objc_opt_self();
      v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v7 = [v5 localizedStringFromNumber:v6 numberStyle:6];

      v8 = sub_26B6E9A24();
      return v8;
    case 6:
      v15 = *v0;

      MEMORY[0x26D67D4D0](32, 0xE100000000000000);
      v9 = v4;
      v1 = v3;
      goto LABEL_17;
    case 7:
      v8 = 0x656E6F7074736F50;
      if (!(v4 | v1 | v2 | v3))
      {
        return v8;
      }

      v10 = v4 | v1 | v3;
      if (v2 == 1 && v10 == 0)
      {
        v14 = 1718378824;
        return v14 | 0x656D697400000000;
      }

      if (v2 == 2 && !v10)
      {
        return 0x6D6954206C6C7546;
      }

      if (v2 == 3 && !v10)
      {
        return 0x6C616E6946;
      }

      if (v2 == 4 && !v10)
      {
        return 6581829;
      }

      if (v2 == 5 && !v10)
      {
        v14 = 1919252047;
        return v14 | 0x656D697400000000;
      }

      if (v2 == 6 && !v10)
      {
        return 21583;
      }

      if (v2 == 7 && !v10)
      {
        return 21573;
      }

      if (v2 == 8 && !v10)
      {
        return 0x6569746C616E6550;
      }

      if (v2 == 9 && !v10)
      {
        return 1397638480;
      }

      if (v2 == 10 && !v10)
      {
        return 0x656C6C65636E6143;
      }

      if (v2 == 11 && !v10)
      {
        return 0x74696566726F46;
      }

      if (v2 != 12 || v10)
      {
        if (v2 == 13 && v10 == 0)
        {
          return 0x646579616C6544;
        }

        else
        {
          return 0x65646E6570737553;
        }
      }

      return v8;
    default:
      v12 = 548574946;
LABEL_15:
      v15 = v12;
      v9 = *v0;
LABEL_17:
      MEMORY[0x26D67D4D0](v9, v1);
      return v15;
  }
}

_BYTE *storeEnumTagSinglePayload for RunningClockDefaultLocalization(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_9SportsKit21RunningClockViewModelC15LocalizationKeyO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B65650C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 33))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 7)
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

uint64_t sub_26B65654C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B656594(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_26B6565C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 4u)
  {
    if (a5 != 6)
    {
      return result;
    }
  }
}

SportsKit::SportsActivityAttributes::Contender::LogoFilePaths __swiftcall SportsActivityAttributes.Contender.LogoFilePaths.init(smallSize:defaultSize:)(Swift::String smallSize, Swift::String defaultSize)
{
  *v2 = smallSize;
  v2[1] = defaultSize;
  result.defaultSize = defaultSize;
  result.smallSize = smallSize;
  return result;
}

uint64_t static SportsActivityAttributes.Contender.LogoFilePaths.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_129(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_26B6EA5D4(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_92_0();

      return sub_26B6EA5D4();
    }
  }

  return result;
}

uint64_t sub_26B65672C(uint64_t a1)
{
  v2 = sub_26B6568DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B656768(uint64_t a1)
{
  v2 = sub_26B6568DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityAttributes.Contender.LogoFilePaths.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095A8, &qword_26B6EDF20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_4_0(v24, v24[3]);
  sub_26B6568DC();
  OUTLINED_FUNCTION_70_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v22)
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
  }

  v26 = OUTLINED_FUNCTION_75_0();
  v27(v26);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B6568DC()
{
  result = qword_2804095B0;
  if (!qword_2804095B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804095B0);
  }

  return result;
}

uint64_t SportsActivityAttributes.Contender.LogoFilePaths.hash(into:)(uint64_t a1)
{
  sub_26B6E9AE4();
  OUTLINED_FUNCTION_110_0();

  return sub_26B6E9AE4();
}

uint64_t SportsActivityAttributes.Contender.LogoFilePaths.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_95_0(a1);
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  return sub_26B6EA744();
}

void SportsActivityAttributes.Contender.LogoFilePaths.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095B8, &qword_26B6EDF28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_4_0(v24, v24[3]);
  sub_26B6568DC();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    OUTLINED_FUNCTION_119();
    v28 = sub_26B6EA424();
    v30 = v29;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_119();
    v31 = sub_26B6EA424();
    v33 = v32;
    v36 = v31;
    v34 = OUTLINED_FUNCTION_2_2();
    v35(v34);
    *v26 = v28;
    v26[1] = v30;
    v26[2] = v36;
    v26[3] = v33;

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B656BC4(uint64_t a1)
{
  sub_26B6EA714();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  return sub_26B6EA744();
}

uint64_t SportsActivityAttributes.Contender.logoFilePaths.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v1[10];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void __swiftcall SportsActivityAttributes.Contender.init(canonicalId:colorHex:abbreviation:name:localLogoURL:logoFilePaths:isHome:ordinal:)(SportsKit::SportsActivityAttributes::Contender *__return_ptr retstr, Swift::String canonicalId, Swift::String colorHex, Swift::String abbreviation, Swift::String name, Swift::String localLogoURL, SportsKit::SportsActivityAttributes::Contender::LogoFilePaths logoFilePaths, Swift::Bool isHome, Swift::Int ordinal)
{
  v9 = *logoFilePaths.smallSize._countAndFlagsBits;
  v11 = *(logoFilePaths.smallSize._countAndFlagsBits + 16);
  v10 = *(logoFilePaths.smallSize._countAndFlagsBits + 24);
  retstr->canonicalId = canonicalId;
  retstr->colorHex = colorHex;
  retstr->abbreviation = abbreviation;
  retstr->name = name;
  retstr->localLogoURL = localLogoURL;
  retstr->logoFilePaths.smallSize = v9;
  retstr->logoFilePaths.defaultSize._countAndFlagsBits = v11;
  retstr->logoFilePaths.defaultSize._object = v10;
  retstr->isHome = logoFilePaths.smallSize._object;
  retstr->ordinal = logoFilePaths.defaultSize._countAndFlagsBits;
}

BOOL static SportsActivityAttributes.Contender.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_129(a1);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v40 = *(v5 + 56);
  v41 = *(v5 + 48);
  v39 = *(v5 + 64);
  v38 = *(v5 + 72);
  v34 = *(v5 + 88);
  v35 = *(v5 + 80);
  v30 = *(v5 + 104);
  v31 = *(v5 + 96);
  v27 = *(v5 + 112);
  v25 = *(v5 + 120);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v14 = *(v4 + 56);
  v36 = *(v4 + 72);
  v37 = *(v4 + 64);
  v32 = *(v4 + 88);
  v33 = *(v4 + 80);
  v28 = *(v4 + 104);
  v29 = *(v4 + 96);
  v15 = v2 == *v4 && v3 == *(v4 + 8);
  v26 = *(v4 + 112);
  v24 = *(v4 + 120);
  if (!v15 && (sub_26B6EA5D4() & 1) == 0)
  {
    return 0;
  }

  if (v1 != v9 || v6 != v10)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_92_0();
    if ((sub_26B6EA5D4() & 1) == 0)
    {
      return 0;
    }
  }

  v17 = v7 == v11 && v8 == v12;
  if (!v17 && (sub_26B6EA5D4() & 1) == 0)
  {
    return 0;
  }

  v18 = v41 == v13 && v40 == v14;
  if (!v18 && (sub_26B6EA5D4() & 1) == 0)
  {
    return 0;
  }

  v19 = v39 == v37 && v38 == v36;
  if (!v19 && (sub_26B6EA5D4() & 1) == 0)
  {
    return 0;
  }

  v20 = v35 == v33 && v34 == v32;
  if (!v20 && (sub_26B6EA5D4() & 1) == 0)
  {
    return 0;
  }

  if (v31 == v29 && v30 == v28)
  {
    if (v27 == v26)
    {
      return v25 == v24;
    }

    return 0;
  }

  v22 = sub_26B6EA5D4();
  result = 0;
  if ((v22 & 1) != 0 && ((v27 ^ v26) & 1) == 0)
  {
    return v25 == v24;
  }

  return result;
}

uint64_t sub_26B656F74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786548726F6C6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676F4C6C61636F6CLL && a2 == 0xEC0000004C52556FLL;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C69466F676F6CLL && a2 == 0xED00007368746150;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656D6F487369 && a2 == 0xE600000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_26B6EA5D4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26B657204(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x786548726F6C6F63;
      break;
    case 2:
      result = 0x6169766572626261;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x676F4C6C61636F6CLL;
      break;
    case 5:
      result = 0x656C69466F676F6CLL;
      break;
    case 6:
      result = 0x656D6F487369;
      break;
    case 7:
      result = 0x6C616E6964726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B657308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B656F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B657330@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B6571FC();
  *a1 = result;
  return result;
}

uint64_t sub_26B657358(uint64_t a1)
{
  v2 = sub_26B657648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B657394(uint64_t a1)
{
  v2 = sub_26B657648();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityAttributes.Contender.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095C0, &qword_26B6EDF30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_16_0();
  v40 = v23[3];
  v41 = v23[2];
  v38 = v23[5];
  v39 = v23[4];
  v36 = v23[7];
  v37 = v23[6];
  v34 = v23[9];
  v35 = v23[8];
  OUTLINED_FUNCTION_4_0(v26, v26[3]);
  sub_26B657648();
  OUTLINED_FUNCTION_70_0();
  sub_26B6EA7C4();
  sub_26B6EA4F4();
  if (!v24)
  {
    OUTLINED_FUNCTION_126(1);
    OUTLINED_FUNCTION_139(v41, v40, v28);
    OUTLINED_FUNCTION_126(2);
    OUTLINED_FUNCTION_139(v39, v38, v29);
    OUTLINED_FUNCTION_126(3);
    OUTLINED_FUNCTION_139(v37, v36, v30);
    OUTLINED_FUNCTION_126(4);
    OUTLINED_FUNCTION_139(v35, v34, v31);
    sub_26B65769C();

    sub_26B6EA534();

    OUTLINED_FUNCTION_72_0(6);
    sub_26B6EA504();
    OUTLINED_FUNCTION_72_0(7);
    sub_26B6EA524();
  }

  v32 = OUTLINED_FUNCTION_36_1();
  v33(v32);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B657648()
{
  result = qword_2804095C8;
  if (!qword_2804095C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804095C8);
  }

  return result;
}

unint64_t sub_26B65769C()
{
  result = qword_2804095D0;
  if (!qword_2804095D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804095D0);
  }

  return result;
}

uint64_t SportsActivityAttributes.Contender.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 120);
  sub_26B6E9AE4();
  OUTLINED_FUNCTION_110_0();
  sub_26B6E9AE4();
  OUTLINED_FUNCTION_122();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6EA734();
  return MEMORY[0x26D67E0E0](v3);
}

uint64_t SportsActivityAttributes.Contender.hashValue.getter()
{
  v2 = *(v0 + 120);
  sub_26B6EA714();
  sub_26B6E9AE4();
  OUTLINED_FUNCTION_122();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6E9AE4();
  sub_26B6EA734();
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

void SportsActivityAttributes.Contender.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v27 = v26;
  v29 = v28;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095D8, &qword_26B6EDF38);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_4_0(v27, v27[3]);
  sub_26B657648();
  sub_26B6EA784();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v51 = v29;
    LOBYTE(v59) = 0;
    OUTLINED_FUNCTION_69_0();
    v33 = sub_26B6EA424();
    v35 = v34;
    v50 = v33;
    v36 = v31;
    v37 = OUTLINED_FUNCTION_34_1(1);
    v56 = v38;
    v49 = OUTLINED_FUNCTION_34_1(2);
    v55 = v39;
    v47 = OUTLINED_FUNCTION_34_1(3);
    v54 = v40;
    v41 = OUTLINED_FUNCTION_34_1(4);
    v48 = v42;
    v46 = v41;
    LOBYTE(v58[0]) = 5;
    sub_26B657D84();
    OUTLINED_FUNCTION_69_0();
    sub_26B6EA464();
    v44 = v61;
    v45 = v59;
    v52 = v62;
    v53 = v60;
    LOBYTE(v59) = 6;
    OUTLINED_FUNCTION_69_0();
    v75 = sub_26B6EA434();
    OUTLINED_FUNCTION_69_0();
    v43 = sub_26B6EA454();
    (*(v36 + 8))(v25, v57);
    v58[0] = v50;
    v58[1] = v35;
    v58[2] = v37;
    v58[3] = v56;
    v58[4] = v49;
    v58[5] = v55;
    v58[6] = v47;
    v58[7] = v54;
    v58[8] = v46;
    v58[9] = v48;
    v58[10] = v45;
    v58[11] = v53;
    v58[12] = v44;
    v58[13] = v52;
    LOBYTE(v58[14]) = v75 & 1;
    v58[15] = v43;
    memcpy(v51, v58, 0x80uLL);
    sub_26B657DD8(v58, &v59);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v59 = v50;
    v60 = v35;
    v61 = v37;
    v62 = v56;
    v63 = v49;
    v64 = v55;
    v65 = v47;
    v66 = v54;
    v67 = v46;
    v68 = v48;
    v69 = v45;
    v70 = v53;
    v71 = v44;
    v72 = v52;
    v73 = v75 & 1;
    v74 = v43;
    sub_26B657E10(&v59);
  }

  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B657D48(uint64_t a1)
{
  sub_26B6EA714();
  SportsActivityAttributes.Contender.hash(into:)(v2);
  return sub_26B6EA744();
}

unint64_t sub_26B657D84()
{
  result = qword_2804095E0;
  if (!qword_2804095E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804095E0);
  }

  return result;
}

void static SportsActivityAttributes.EventInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095E8, &qword_26B6F94D0);
  OUTLINED_FUNCTION_46(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_108_0();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_137(v4);
  OUTLINED_FUNCTION_137(v2);
  OUTLINED_FUNCTION_127(v0, 1, v5);
  if (!v18)
  {
    sub_26B66196C(v0);
    OUTLINED_FUNCTION_127(v0 + v17, 1, v5);
    if (!v18)
    {
      (*(v7 + 32))(v11, v0 + v17, v5);
      OUTLINED_FUNCTION_3_5();
      sub_26B658400(v21);
      OUTLINED_FUNCTION_75_0();
      sub_26B6E99D4();
      v22 = *(v7 + 8);
      v23 = OUTLINED_FUNCTION_22_0();
      v22(v23);
      v24 = OUTLINED_FUNCTION_120();
      v22(v24);
      sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
      goto LABEL_10;
    }

    v19 = OUTLINED_FUNCTION_120();
    v20(v19);
LABEL_9:
    sub_26B650BBC(v0, &qword_2804095E8, &qword_26B6F94D0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_127(v0 + v17, 1, v5);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
LABEL_10:
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B658150(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6581F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B658150(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B65821C(uint64_t a1)
{
  v2 = sub_26B6583AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B658258(uint64_t a1)
{
  v2 = sub_26B6583AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsActivityAttributes.EventInfo.encode(to:)()
{
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095F8, &qword_26B6EDF40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  v1 = sub_26B6583AC();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityAttributes.EventInfo.CodingKeys, v2, v1);
  sub_26B6E9564();
  OUTLINED_FUNCTION_3_5();
  sub_26B658400(v3);
  OUTLINED_FUNCTION_79_0();
  sub_26B6EA4E4();
  v4 = OUTLINED_FUNCTION_78_0();
  return v5(v4);
}

unint64_t sub_26B6583AC()
{
  result = qword_280409600;
  if (!qword_280409600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409600);
  }

  return result;
}

unint64_t sub_26B658400(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SportsActivityAttributes.EventInfo.hash(into:)()
{
  OUTLINED_FUNCTION_67();
  v3 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_108_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_0();
  sub_26B66196C(v0);
  OUTLINED_FUNCTION_127(v2, 1, v3);
  if (v9)
  {
    return sub_26B6EA734();
  }

  (*(v5 + 32))(v1, v2, v3);
  sub_26B6EA734();
  OUTLINED_FUNCTION_3_5();
  sub_26B658400(v10);
  OUTLINED_FUNCTION_124();
  sub_26B6E9984();
  return (*(v5 + 8))(v1, v3);
}

void SportsActivityAttributes.EventInfo.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v15 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_85_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409610, &qword_26B6EDF48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_1();
  v10 = type metadata accessor for SportsActivityAttributes.EventInfo(0);
  v11 = OUTLINED_FUNCTION_46(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_4_0(v4, v4[3]);
  sub_26B6583AC();
  OUTLINED_FUNCTION_100_0();
  sub_26B6EA784();
  if (!v0)
  {
    sub_26B6E9564();
    OUTLINED_FUNCTION_3_5();
    sub_26B658400(v12);
    sub_26B6EA414();
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13, v8);
    sub_26B6619E4(v1);
    OUTLINED_FUNCTION_15_1();
    sub_26B661A5C(v2, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityAttributes.eventInfo.getter()
{
  v2 = OUTLINED_FUNCTION_83_0();
  v3 = type metadata accessor for SportsActivityAttributes(v2);
  return sub_26B659F80(v1 + *(v3 + 36), v0);
}

uint64_t SportsActivityAttributes.eventURL.getter()
{
  type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityAttributes.preGameTitle.getter()
{
  type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityAttributes.shortTitle.getter()
{
  type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityAttributes.bundleId.getter()
{
  type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityAttributes.languageTag.getter()
{
  type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityAttributes.init(canonicalId:sport:leagueId:leagueName:contenders:eventInfo:clockIsCountingDown:eventURL:preGameTitle:shortTitle:createdDate:bundleId:languageTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v23;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v24 = type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_15_1();
  sub_26B661A5C(a10, a9 + v25);
  *(a9 + v24[10]) = a11;
  v26 = (a9 + v24[11]);
  *v26 = a12;
  v26[1] = a13;
  v27 = (a9 + v24[12]);
  *v27 = a14;
  v27[1] = a15;
  v28 = (a9 + v24[13]);
  *v28 = a16;
  v28[1] = a17;
  v29 = v24[14];
  sub_26B6E9564();
  OUTLINED_FUNCTION_16();
  result = (*(v30 + 32))(a9 + v29, a18);
  v32 = (a9 + v24[15]);
  *v32 = a19;
  v32[1] = a20;
  v33 = (a9 + v24[16]);
  *v33 = a21;
  v33[1] = a22;
  return result;
}

uint64_t sub_26B658BDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644965756761656CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E65756761656CLL && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65646E65746E6F63 && a2 == 0xEA00000000007372;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x666E49746E657665 && a2 == 0xE90000000000006FLL;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x800000026B6FB900 == a2;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4C5255746E657665 && a2 == 0xE800000000000000;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x54656D6147657270 && a2 == 0xEC000000656C7469;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4464657461657263 && a2 == 0xEB00000000657461;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
                        if (v16 || (sub_26B6EA5D4() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x65676175676E616CLL && a2 == 0xEB00000000676154)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_26B6EA5D4();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_26B658FEC(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x74726F7073;
      break;
    case 2:
      v3 = 0x65756761656CLL;
      goto LABEL_8;
    case 3:
      result = 0x614E65756761656CLL;
      break;
    case 4:
      result = 0x65646E65746E6F63;
      break;
    case 5:
      result = 0x666E49746E657665;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x4C5255746E657665;
      break;
    case 8:
      result = 0x54656D6147657270;
      break;
    case 9:
      result = 0x74695474726F6873;
      break;
    case 10:
      result = 0x4464657461657263;
      break;
    case 11:
      v3 = 0x656C646E7562;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 12:
      result = 0x65676175676E616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B659184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B658BDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6591AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B658FE4();
  *a1 = result;
  return result;
}

uint64_t sub_26B6591D4(uint64_t a1)
{
  v2 = sub_26B6595B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B659210(uint64_t a1)
{
  v2 = sub_26B6595B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsActivityAttributes.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409618, &qword_26B6EDF50);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_20_0();
  v6 = sub_26B6595B0();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityAttributes.CodingKeys, v7, v6);
  OUTLINED_FUNCTION_39_1();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_87_0();
    sub_26B659604();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_11_3(2);
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_11_3(3);
    sub_26B6EA4F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409630, &qword_26B6EDF58);
    sub_26B659EBC(&unk_280409638);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
    v8 = type metadata accessor for SportsActivityAttributes(0);
    type metadata accessor for SportsActivityAttributes.EventInfo(0);
    OUTLINED_FUNCTION_42_0();
    sub_26B658400(v9);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_105(v8[11]);
    OUTLINED_FUNCTION_11_3(7);
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_105(v8[12]);
    OUTLINED_FUNCTION_11_3(8);
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_105(v8[13]);
    OUTLINED_FUNCTION_11_3(9);
    sub_26B6EA4F4();
    sub_26B6E9564();
    OUTLINED_FUNCTION_3_5();
    sub_26B658400(v10);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_105(v8[15]);
    OUTLINED_FUNCTION_11_3(11);
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_105(v8[16]);
    OUTLINED_FUNCTION_11_3(12);
    sub_26B6EA4F4();
  }

  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_26B6595B0()
{
  result = qword_280409620;
  if (!qword_280409620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409620);
  }

  return result;
}

unint64_t sub_26B659604()
{
  result = qword_280409628;
  if (!qword_280409628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409628);
  }

  return result;
}

unint64_t sub_26B659658()
{
  result = qword_280409640;
  if (!qword_280409640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409640);
  }

  return result;
}

void SportsActivityAttributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  v65 = v27;
  sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v66 = v29;
  v67 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v32 = v31 - v30;
  v33 = type metadata accessor for SportsActivityAttributes.EventInfo(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409650, &qword_26B6EDF60);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_16_0();
  v70 = type metadata accessor for SportsActivityAttributes(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  v69 = v38 - v37;
  v39 = v26[3];
  v68 = v26;
  OUTLINED_FUNCTION_4_0(v26, v39);
  sub_26B6595B0();
  OUTLINED_FUNCTION_70_0();
  sub_26B6EA784();
  if (v23)
  {
    OUTLINED_FUNCTION_56_0();
    __swift_destroy_boxed_opaque_existential_1(v26);
    if (v39)
    {

      if ((v33 & 1) == 0)
      {
LABEL_10:
        if (v24)
        {
LABEL_11:
          sub_26B659FD8();
          if ((v26 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v26)
        {
          goto LABEL_12;
        }

LABEL_7:
        OUTLINED_FUNCTION_141();
        goto LABEL_12;
      }
    }

    else if (!v33)
    {
      goto LABEL_10;
    }

    if (v24)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  LOBYTE(v71) = 0;
  *v69 = sub_26B6EA424();
  *(v69 + 8) = v40;
  OUTLINED_FUNCTION_87_0();
  sub_26B659E68();
  sub_26B6EA464();
  *(v69 + 16) = 0;
  OUTLINED_FUNCTION_27_1(2);
  *(v69 + 24) = sub_26B6EA3D4();
  *(v69 + 32) = v41;
  OUTLINED_FUNCTION_27_1(3);
  *(v69 + 40) = sub_26B6EA424();
  *(v69 + 48) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409630, &qword_26B6EDF58);
  sub_26B659EBC(&unk_280409660);
  sub_26B6EA464();
  *(v69 + 56) = v71;
  OUTLINED_FUNCTION_42_0();
  sub_26B658400(v43);
  sub_26B6EA464();
  OUTLINED_FUNCTION_15_1();
  sub_26B661A5C(v24, v69 + v44);
  OUTLINED_FUNCTION_27_1(6);
  v45 = sub_26B6EA434();
  OUTLINED_FUNCTION_105_0(v45, v70[10]);
  OUTLINED_FUNCTION_27_1(7);
  v46 = sub_26B6EA424();
  v47 = (v69 + v70[11]);
  *v47 = v46;
  v47[1] = v48;
  OUTLINED_FUNCTION_27_1(8);
  v49 = sub_26B6EA424();
  v50 = (v69 + v70[12]);
  *v50 = v49;
  v50[1] = v51;
  OUTLINED_FUNCTION_27_1(9);
  v52 = sub_26B6EA424();
  v53 = (v69 + v70[13]);
  *v53 = v52;
  v53[1] = v54;
  OUTLINED_FUNCTION_3_5();
  sub_26B658400(v55);
  sub_26B6EA464();
  (*(v66 + 32))(v69 + v70[14], v32, v67);
  v56 = OUTLINED_FUNCTION_135(11);
  v57 = (v69 + v70[15]);
  *v57 = v56;
  v57[1] = v58;
  v59 = OUTLINED_FUNCTION_135(12);
  v61 = v60;
  v62 = OUTLINED_FUNCTION_118();
  v63(v62);
  v64 = (v69 + v70[16]);
  *v64 = v59;
  v64[1] = v61;
  sub_26B659F80(v69, v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  sub_26B659FD8();
LABEL_12:
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B659E68()
{
  result = qword_280409658;
  if (!qword_280409658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409658);
  }

  return result;
}

unint64_t sub_26B659EBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409630, &qword_26B6EDF58);
    v4();
    OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26B659F2C()
{
  result = qword_280409668;
  if (!qword_280409668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409668);
  }

  return result;
}

uint64_t sub_26B659F80(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_67();
  v4(v3);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_22_0();
  v6(v5);
  return a2;
}

uint64_t sub_26B659FD8()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26B65A074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6147657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697472617473 && a2 == 0xEC0000006E6F6F53)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B65A140(char a1)
{
  if (a1)
  {
    return 0x676E697472617473;
  }

  else
  {
    return 0x656D6147657270;
  }
}

uint64_t sub_26B65A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65A074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B65A1B0(uint64_t a1)
{
  v2 = sub_26B65A560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65A1EC(uint64_t a1)
{
  v2 = sub_26B65A560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65A228(uint64_t a1)
{
  v2 = sub_26B65A608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65A264(uint64_t a1)
{
  v2 = sub_26B65A608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65A2A0(uint64_t a1)
{
  v2 = sub_26B65A5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65A2DC(uint64_t a1)
{
  v2 = sub_26B65A5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityContentState.EventInfoState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409678, &qword_26B6EDF68);
  OUTLINED_FUNCTION_4();
  v41 = v28;
  v42 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_71();
  v40 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409680, &qword_26B6EDF70);
  OUTLINED_FUNCTION_4();
  v38 = v32;
  v39 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409688, &qword_26B6EDF78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_84_0();
  v35 = *v23;
  OUTLINED_FUNCTION_4_0(v26, v26[3]);
  sub_26B65A560();
  sub_26B6EA7C4();
  if (v35)
  {
    OUTLINED_FUNCTION_87_0();
    sub_26B65A5B4();
    OUTLINED_FUNCTION_94_0();
    sub_26B6EA494();
    (*(v41 + 8))(v40, v42);
  }

  else
  {
    sub_26B65A608();
    OUTLINED_FUNCTION_94_0();
    sub_26B6EA494();
    (*(v38 + 8))(v24, v39);
  }

  v36 = OUTLINED_FUNCTION_103_0();
  v37(v36);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B65A560()
{
  result = qword_280409690;
  if (!qword_280409690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409690);
  }

  return result;
}

unint64_t sub_26B65A5B4()
{
  result = qword_280409698;
  if (!qword_280409698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409698);
  }

  return result;
}

unint64_t sub_26B65A608()
{
  result = qword_2804096A0;
  if (!qword_2804096A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804096A0);
  }

  return result;
}

uint64_t SportsActivityContentState.EventInfoState.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_95_0(a1);
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

void SportsActivityContentState.EventInfoState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v62 = v29;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096A8, &qword_26B6EDF80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_91_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096B0, &qword_26B6EDF88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096B8, &unk_26B6EDF90);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_4_0(v28, v28[3]);
  sub_26B65A560();
  sub_26B6EA784();
  if (v23)
  {
    goto LABEL_8;
  }

  v64 = v28;
  v35 = sub_26B6EA474();
  sub_26B65251C(v35, 0);
  if (v37 == v38 >> 1)
  {
LABEL_7:
    v51 = sub_26B6EA1A4();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409450, &qword_26B6ED0D8);
    *v53 = &type metadata for SportsActivityContentState.EventInfoState;
    v54 = sub_26B6EA3B4();
    OUTLINED_FUNCTION_133(v54);
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_101_0();
    v56(v55, v33);
    v28 = v64;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_37();
    return;
  }

  if (v37 < (v38 >> 1))
  {
    v39 = *(v36 + v37);
    sub_26B6542D8();
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      if (v39)
      {
        OUTLINED_FUNCTION_87_0();
        v44 = sub_26B65A5B4();
        OUTLINED_FUNCTION_112(&type metadata for SportsActivityContentState.EventInfoState.StartingSoonCodingKeys, &a13, v45, v46, v44);
        v47 = v62;
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_86_0();
        v50 = v63;
      }

      else
      {
        a12 = 0;
        v57 = sub_26B65A608();
        OUTLINED_FUNCTION_112(&type metadata for SportsActivityContentState.EventInfoState.PreGameCodingKeys, &a12, v58, v59, v57);
        v47 = v62;
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_54_0();
        v48 = v24;
        v50 = v31;
      }

      v49(v48, v50);
      v60 = OUTLINED_FUNCTION_78_0();
      v61(v60);
      *v47 = v39;
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t SportsActivityContentState.play.getter()
{
  v2 = OUTLINED_FUNCTION_83_0();
  v3 = v1 + *(type metadata accessor for SportsActivityContentState(v2) + 20);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v4;
}

uint64_t SportsActivityContentState.eventInfoState.getter()
{
  v2 = OUTLINED_FUNCTION_83_0();
  result = type metadata accessor for SportsActivityContentState(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t SportsActivityContentState.contenderA.getter()
{
  v0 = OUTLINED_FUNCTION_83_0();
  v1 = type metadata accessor for SportsActivityContentState(v0);
  OUTLINED_FUNCTION_82_0(*(v1 + 40));
}

uint64_t SportsActivityContentState.contenderB.getter()
{
  v0 = OUTLINED_FUNCTION_83_0();
  v1 = type metadata accessor for SportsActivityContentState(v0);
  OUTLINED_FUNCTION_82_0(*(v1 + 44));
}

uint64_t sub_26B65AD28@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 56);
  a2(0);
  OUTLINED_FUNCTION_16();
  v9 = *(v8 + 16);

  return v9(a3, v3 + v6, v7);
}

uint64_t SportsActivityContentState.init(clock:play:eventInfoState:isClockVisible:isEventInfoVisible:isScoreVisible:contenderA:contenderB:shouldDisplayPlayByPlay:shouldShowWatchAlertUI:subscriptionContainerURL:isWaitingForUserConsent:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, char a13)
{
  v16 = *(a2 + 2);
  v17 = *a3;
  v29 = *a2;
  v30 = *a7;
  v18 = *(a7 + 2);
  v19 = *(a7 + 24);
  v31 = *a8;
  v20 = *(a8 + 2);
  v21 = *(a8 + 24);
  sub_26B6619E4(a1);
  v22 = type metadata accessor for SportsActivityContentState(0);
  v23 = a9 + v22[5];
  *v23 = v29;
  *(v23 + 16) = v16;
  *(a9 + v22[6]) = v17;
  *(a9 + v22[7]) = a4;
  *(a9 + v22[8]) = a5;
  *(a9 + v22[9]) = a6;
  v24 = a9 + v22[10];
  *v24 = v30;
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  v25 = a9 + v22[11];
  *v25 = v31;
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  *(a9 + v22[12]) = a10;
  *(a9 + v22[13]) = a11;
  v26 = v22[14];
  sub_26B6E93B4();
  OUTLINED_FUNCTION_16();
  result = (*(v27 + 32))(a9 + v26, a12);
  *(a9 + v22[15]) = a13;
  return result;
}

void static SportsActivityContentState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_67();
  v7 = type metadata accessor for SportsActivityClock(v6);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_108_0();
  v9 = &qword_2804096C0;
  v10 = &qword_26B6EDFA0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C0, &qword_26B6EDFA0);
  OUTLINED_FUNCTION_46(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_85_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C8, &qword_26B6EDFA8);
  OUTLINED_FUNCTION_46(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_0();
  v16 = *(v15 + 56);
  v17 = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_137(v17);
  OUTLINED_FUNCTION_137(v5);
  OUTLINED_FUNCTION_127(v2, 1, v7);
  if (v18)
  {
    OUTLINED_FUNCTION_127(v16 + v2, 1, v7);
    if (v18)
    {
      sub_26B650BBC(v2, &qword_2804096C0, &qword_26B6EDFA0);
      goto LABEL_11;
    }

LABEL_9:
    sub_26B650BBC(v2, &qword_2804096C8, &qword_26B6EDFA8);
    goto LABEL_18;
  }

  sub_26B66196C(v2);
  OUTLINED_FUNCTION_127(v16 + v2, 1, v7);
  if (v18)
  {
    OUTLINED_FUNCTION_6_3();
    sub_26B659FD8();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_5();
  sub_26B661A5C(v16 + v2, v1);
  static SportsActivityClock.== infix(_:_:)();
  v20 = v19;
  v9 = type metadata accessor for SportsActivityClock;
  sub_26B659FD8();
  sub_26B659FD8();
  sub_26B650BBC(v2, &qword_2804096C0, &qword_26B6EDFA0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v21 = type metadata accessor for SportsActivityContentState(0);
  v22 = v21[5];
  v23 = (v0 + v22);
  v24 = *(v0 + v22 + 16);
  v25 = (v5 + v22);
  v26 = v25[2];
  if (!v24)
  {
    if (!v26)
    {

      goto LABEL_28;
    }

LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = *v23;
  if (((*v23 ^ *v25) & 1) != 0 || ((*v25 & 0x100) == 0) == ((v27 >> 8) & 1) || ((*v25 & 0x10000) == 0) == ((v27 >> 16) & 1))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_18;
  }

  v28 = v23[1] == v25[1] && v24 == v26;
  if (!v28 && (sub_26B6EA5D4() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_28:
  OUTLINED_FUNCTION_25_1();
  if (!v18)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_1();
  if (!v18)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_1();
  if (!v18)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_1();
  if (!v18)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_68_0(v21[10]);

  v29 = OUTLINED_FUNCTION_78_0();
  if ((sub_26B660E24(v29, v30) & 1) == 0)
  {
    goto LABEL_53;
  }

  if (&qword_26B6EDFA0 == v16 && v9 == v26)
  {

    if (v36 != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_115();

    if (v10 & 1) == 0 || ((v36 ^ v3))
    {
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_68_0(v21[11]);

  v32 = OUTLINED_FUNCTION_78_0();
  if ((sub_26B660E24(v32, v33) & 1) == 0)
  {
LABEL_53:

    goto LABEL_17;
  }

  if (v10 == v16 && v9 == v26)
  {

    if (v36 != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v35 = OUTLINED_FUNCTION_115();

    if (v35 & 1) == 0 || ((v36 ^ v3))
    {
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_25_1();
  if (v18)
  {
    OUTLINED_FUNCTION_25_1();
    if (v18)
    {
      if (sub_26B6E9364())
      {
        OUTLINED_FUNCTION_123();
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_8_0();
}

uint64_t static SportsActivityContender.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_26B660E24(*a1, *a2) & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (OUTLINED_FUNCTION_22_0(), OUTLINED_FUNCTION_92_0(), (sub_26B6EA5D4())))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B65B494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B636F6C63 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036427888 && a2 == 0xE400000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x666E49746E657665 && a2 == 0xEE0065746174536FLL;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x566B636F6C437369 && a2 == 0xEE00656C62697369;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000026B6FB920 == a2;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5665726F63537369 && a2 == 0xEE00656C62697369;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65646E65746E6F63 && a2 == 0xEA00000000004172;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65646E65746E6F63 && a2 == 0xEA00000000004272;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x800000026B6FB650 == a2;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x800000026B6FB940 == a2;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000018 && 0x800000026B6FB960 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000017 && 0x800000026B6FB980 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_26B6EA5D4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_26B65B848(char a1)
{
  result = 0x6B636F6C63;
  switch(a1)
  {
    case 1:
      result = 2036427888;
      break;
    case 2:
      result = 0x666E49746E657665;
      break;
    case 3:
      result = 0x566B636F6C437369;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x5665726F63537369;
      break;
    case 6:
      result = 0x65646E65746E6F63;
      break;
    case 7:
      result = 0x65646E65746E6F63;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B65B9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65B494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B65B9E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B65B840();
  *a1 = result;
  return result;
}

uint64_t sub_26B65BA10(uint64_t a1)
{
  v2 = sub_26B661AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65BA4C(uint64_t a1)
{
  v2 = sub_26B661AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityContentState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096D0, &qword_26B6EDFB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v26 = sub_26B661AB4();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityContentState.CodingKeys, v27, v26);
  type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_44_0();
  sub_26B658400(v28);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4E4();
  if (!v24)
  {
    v29 = type metadata accessor for SportsActivityContentState(0);
    OUTLINED_FUNCTION_87_0();
    v30 = sub_26B661B08();

    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4E4();
    if (v30)
    {
LABEL_3:

      goto LABEL_8;
    }

    sub_26B661B5C();
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_72_0(3);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_72_0(4);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_72_0(5);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    sub_26B661BB0();

    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();

    v33 = *(v23 + *(v29 + 44) + 16);

    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    if (v33)
    {

      goto LABEL_3;
    }

    OUTLINED_FUNCTION_72_0(8);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_72_0(9);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    sub_26B6E93B4();
    OUTLINED_FUNCTION_14_1();
    sub_26B658400(v34);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_72_0(11);
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
  }

LABEL_8:
  v31 = OUTLINED_FUNCTION_75_0();
  v32(v31);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityContentState.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_106_0();
  v3 = type metadata accessor for SportsActivityClock(v2);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C0, &qword_26B6EDFA0);
  OUTLINED_FUNCTION_46(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_26B66196C(v1);
  OUTLINED_FUNCTION_127(v8, 1, v3);
  if (v9)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    v10 = OUTLINED_FUNCTION_111();
    sub_26B661A5C(v10, v11);
    OUTLINED_FUNCTION_140();
    SportsActivityClock.hash(into:)();
    OUTLINED_FUNCTION_6_3();
    sub_26B659FD8();
  }

  v12 = type metadata accessor for SportsActivityContentState(0);
  if (*(v1 + v12[5] + 16))
  {
    OUTLINED_FUNCTION_140();
    sub_26B6EA734();
    sub_26B6EA734();
    sub_26B6EA734();
    sub_26B6E9AE4();
  }

  else
  {
    OUTLINED_FUNCTION_142();
  }

  MEMORY[0x26D67E0E0](*(v1 + v12[6]));
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6EA734();
  OUTLINED_FUNCTION_113(v12[10]);
  OUTLINED_FUNCTION_22_0();
  sub_26B6E9AE4();
  sub_26B6EA734();
  OUTLINED_FUNCTION_113(v12[11]);
  OUTLINED_FUNCTION_22_0();
  sub_26B6E9AE4();
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6E93B4();
  OUTLINED_FUNCTION_14_1();
  sub_26B658400(v13);
  sub_26B6E9984();
  return sub_26B6EA734();
}

void SportsActivityContentState.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v28 = v7;
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804096C0, &qword_26B6EDFA0);
  OUTLINED_FUNCTION_46(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409708, &qword_26B6EDFB8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_62_0();
  v31 = type metadata accessor for SportsActivityContentState(v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v30 = v17 - v16;
  OUTLINED_FUNCTION_4_0(v3, v3[3]);
  sub_26B661AB4();
  sub_26B6EA784();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    type metadata accessor for SportsActivityClock(0);
    v32.n128_u8[0] = 0;
    OUTLINED_FUNCTION_44_0();
    sub_26B658400(v18);
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA414();
    sub_26B6619E4(v0);
    OUTLINED_FUNCTION_87_0();
    sub_26B661C04();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA414();
    v19 = (v30 + v31[5]);
    *v19 = v32;
    v19[1].n128_u64[0] = v33;
    sub_26B661C58();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA464();
    *(v30 + v31[6]) = 0;
    v20 = OUTLINED_FUNCTION_22_1(3);
    OUTLINED_FUNCTION_105_0(v20, v31[7]);
    v21 = OUTLINED_FUNCTION_22_1(4);
    OUTLINED_FUNCTION_105_0(v21, v31[8]);
    v22 = OUTLINED_FUNCTION_22_1(5);
    OUTLINED_FUNCTION_105_0(v22, v31[9]);
    sub_26B661CAC();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA464();
    OUTLINED_FUNCTION_130(v33, v32);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA464();
    OUTLINED_FUNCTION_130(v33, v32);
    v23 = OUTLINED_FUNCTION_22_1(8);
    OUTLINED_FUNCTION_105_0(v23, v31[12]);
    *(v30 + v31[13]) = OUTLINED_FUNCTION_22_1(9) & 1;
    OUTLINED_FUNCTION_14_1();
    sub_26B658400(v24);
    OUTLINED_FUNCTION_40_1();
    sub_26B6EA464();
    (*(v28 + 32))(v30 + v31[14], v10, v29);
    OUTLINED_FUNCTION_40_1();
    v25 = sub_26B6EA434();
    v26 = OUTLINED_FUNCTION_76_0();
    v27(v26);
    *(v30 + v31[15]) = v25 & 1;
    sub_26B659F80(v30, v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_26B659FD8();
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityClock.debugDescription.getter()
{
  type metadata accessor for SportsActivitySoccerClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_108_0();
  type metadata accessor for SportsActivityBaseballClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v5 = type metadata accessor for SportsActivityGenericClock(0);
  v6 = OUTLINED_FUNCTION_46(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_4_2();
  sub_26B659F80(v0, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_18_1();
      v11 = OUTLINED_FUNCTION_103_0();
      sub_26B661A5C(v11, v12);
      OUTLINED_FUNCTION_93_0();
      sub_26B6EA134();
      MEMORY[0x26D67D4D0](0xD00000000000001ELL, 0x800000026B6FB8C0);
      sub_26B6EA244();
      OUTLINED_FUNCTION_7_2();
      goto LABEL_5;
    case 2u:
      OUTLINED_FUNCTION_17_1();
      sub_26B661A5C(v2, v1);
      OUTLINED_FUNCTION_93_0();
      sub_26B6EA134();
      MEMORY[0x26D67D4D0](0xD00000000000001CLL, 0x800000026B6FB8A0);
      sub_26B6EA244();
      OUTLINED_FUNCTION_8_3();
      goto LABEL_5;
    case 3u:
      return OUTLINED_FUNCTION_36_1();
    default:
      OUTLINED_FUNCTION_10_3();
      sub_26B661A5C(v2, v9);
      OUTLINED_FUNCTION_93_0();
      sub_26B6EA134();
      MEMORY[0x26D67D4D0](0xD00000000000001DLL, 0x800000026B6FB8E0);
      type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
      sub_26B6EA244();
      OUTLINED_FUNCTION_9_3();
LABEL_5:
      sub_26B659FD8();
      return OUTLINED_FUNCTION_36_1();
  }
}

void static SportsActivityClock.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SportsActivitySoccerClock(0);
  v6 = OUTLINED_FUNCTION_46(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v41 = v8 - v7;
  v9 = OUTLINED_FUNCTION_109_0();
  v40 = type metadata accessor for SportsActivityBaseballClock(v9);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v42 = v12 - v11;
  v13 = OUTLINED_FUNCTION_109_0();
  v14 = type metadata accessor for SportsActivityGenericClock(v13);
  v15 = OUTLINED_FUNCTION_46(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v18 = v17 - v16;
  type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_16();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v39 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409730, &qword_26B6EDFC0);
  OUTLINED_FUNCTION_46(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_91_0();
  v29 = *(v28 + 56);
  sub_26B659F80(v4, v0);
  sub_26B659F80(v2, v0 + v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_2();
      sub_26B659F80(v0, v25);
      if (OUTLINED_FUNCTION_138() != 1)
      {
        OUTLINED_FUNCTION_7_2();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_18_1();
      v32 = v42;
      sub_26B661A5C(v0 + v29, v42);
      static RunningClockComponentsFormatter.DataSource.== infix(_:_:)();
      if (v33 & 1) != 0 && (sub_26B636FB8(*&v25[v40[5]], *(v32 + v40[5])) & 1) != 0 && (sub_26B636FB8(*&v25[v40[6]], *(v32 + v40[6])))
      {
        v34 = v40[7];
        v35 = *&v25[v34];
        v36 = *&v25[v34 + 8];
        v37 = (v32 + v34);
        v38 = v35 == *v37 && v36 == v37[1];
        if (v38 || (sub_26B6EA5D4()) && v25[v40[8]] == *(v32 + v40[8]))
        {
          OUTLINED_FUNCTION_48_0();
          sub_26B659FD8();
          OUTLINED_FUNCTION_120();
          sub_26B659FD8();
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_48_0();
      sub_26B659FD8();
      OUTLINED_FUNCTION_120();
      sub_26B659FD8();
      OUTLINED_FUNCTION_6_3();
      sub_26B659FD8();
      break;
    case 2u:
      OUTLINED_FUNCTION_4_2();
      sub_26B659F80(v0, v22);
      if (OUTLINED_FUNCTION_138() == 2)
      {
        OUTLINED_FUNCTION_17_1();
        sub_26B661A5C(v0 + v29, v41);
        static SportsActivitySoccerClock.== infix(_:_:)(v22);
        sub_26B659FD8();
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_8_3();
      goto LABEL_21;
    case 3u:
      if (OUTLINED_FUNCTION_138() != 3)
      {
        goto LABEL_22;
      }

LABEL_7:
      OUTLINED_FUNCTION_6_3();
      sub_26B659FD8();
      break;
    default:
      OUTLINED_FUNCTION_4_2();
      v30 = OUTLINED_FUNCTION_110_0();
      sub_26B659F80(v30, v31);
      if (OUTLINED_FUNCTION_138())
      {
        OUTLINED_FUNCTION_9_3();
LABEL_21:
        sub_26B659FD8();
LABEL_22:
        sub_26B650BBC(v0, &qword_280409730, &qword_26B6EDFC0);
      }

      else
      {
        OUTLINED_FUNCTION_10_3();
        sub_26B661A5C(v0 + v29, v18);
        static RunningClockComponentsFormatter.DataSource.== infix(_:_:)();
        sub_26B659FD8();
LABEL_24:
        sub_26B659FD8();
        OUTLINED_FUNCTION_6_3();
        sub_26B659FD8();
      }

      break;
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t static SportsActivityBaseballClock.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_64_0();
  static RunningClockComponentsFormatter.DataSource.== infix(_:_:)();
  if (v3 & 1) != 0 && (v4 = type metadata accessor for SportsActivityBaseballClock(0), (sub_26B636FB8(*(v2 + v4[5]), *(v1 + v4[5]))) && (sub_26B636FB8(*(v2 + v4[6]), *(v1 + v4[6])) & 1) != 0 && ((v5 = v4[7], v6 = *(v2 + v5), v7 = *(v2 + v5 + 8), v8 = (v1 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_26B6EA5D4()))
  {
    OUTLINED_FUNCTION_123();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL static SportsActivitySoccerClock.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_64_0();
  static RunningClockComponentsFormatter.DataSource.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SportsActivitySoccerClock(0) + 20);
  v5 = *(v2 + v4);
  v6 = *(v1 + v4);
  if (v5)
  {
    if (v6)
    {
      swift_bridgeObjectRetain_n();

      sub_26B637028(v5, v6);
      v8 = v7;
      swift_bridgeObjectRelease_n();

      return (v8 & 1) != 0;
    }

LABEL_7:

    return 0;
  }

  if (v6)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_26B65D050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C616265736162 && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726563636F73 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26B6EA5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26B65D1B4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x636972656E6567;
      break;
    case 2:
      result = 0x6C6C616265736162;
      break;
    case 3:
      result = 0x726563636F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B65D230(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B636F6C63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B65D2A8(uint64_t a1)
{
  v2 = sub_26B661E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65D2E4(uint64_t a1)
{
  v2 = sub_26B661E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65D328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65D050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B65D350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B65D1AC();
  *a1 = result;
  return result;
}

uint64_t sub_26B65D378(uint64_t a1)
{
  v2 = sub_26B661D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65D3B4(uint64_t a1)
{
  v2 = sub_26B661D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65D3F0(uint64_t a1)
{
  v2 = sub_26B661E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65D42C(uint64_t a1)
{
  v2 = sub_26B661E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65D468(uint64_t a1)
{
  v2 = sub_26B661DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65D4A4(uint64_t a1)
{
  v2 = sub_26B661DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B65D4E0(uint64_t a1)
{
  v2 = sub_26B661EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65D51C(uint64_t a1)
{
  v2 = sub_26B661EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityClock.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v26;
  a24 = v27;
  v73 = v24;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409738, &qword_26B6EDFC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_71();
  v31 = OUTLINED_FUNCTION_109_0();
  type metadata accessor for SportsActivitySoccerClock(v31);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  v72 = v34 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409740, &qword_26B6EDFD0);
  OUTLINED_FUNCTION_4();
  v71 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_71();
  v37 = OUTLINED_FUNCTION_109_0();
  type metadata accessor for SportsActivityBaseballClock(v37);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v70 = v40 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409748, &qword_26B6EDFD8);
  OUTLINED_FUNCTION_4();
  v69 = v41;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_71();
  v43 = OUTLINED_FUNCTION_109_0();
  type metadata accessor for SportsActivityGenericClock(v43);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_81_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409750, &qword_26B6EDFE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_61_0();
  type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_0();
  v50 = v49 - v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409758, &qword_26B6EDFE8);
  OUTLINED_FUNCTION_4();
  v74 = v51;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_4_0(v29, v29[3]);
  sub_26B661D60();
  OUTLINED_FUNCTION_100_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_4_2();
  sub_26B659F80(v73, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26B661A5C(v50, v70);
      a13 = 2;
      sub_26B661E08();
      OUTLINED_FUNCTION_60_0(&type metadata for SportsActivityClock.BaseballCodingKeys, &a13);
      OUTLINED_FUNCTION_43_0();
      sub_26B658400(v66);
      sub_26B6EA534();
      v67 = OUTLINED_FUNCTION_101_0();
      v68(v67, v71);
      OUTLINED_FUNCTION_7_2();
      goto LABEL_6;
    case 2u:
      sub_26B661A5C(v50, v72);
      a14 = 3;
      sub_26B661DB4();
      sub_26B6EA494();
      OUTLINED_FUNCTION_45_0();
      sub_26B658400(v56);
      sub_26B6EA534();
      OUTLINED_FUNCTION_54_0();
      v57 = OUTLINED_FUNCTION_78_0();
      v58(v57);
      OUTLINED_FUNCTION_8_3();
      sub_26B659FD8();
      v59 = OUTLINED_FUNCTION_86_0();
      v61 = v74;
      goto LABEL_7;
    case 3u:
      a11 = 0;
      sub_26B661EB0();
      OUTLINED_FUNCTION_60_0(&type metadata for SportsActivityClock.UnknownCodingKeys, &a11);
      v62 = OUTLINED_FUNCTION_101_0();
      v63(v62, v45);
      v64 = OUTLINED_FUNCTION_86_0();
      v65(v64, v50);
      goto LABEL_8;
    default:
      sub_26B661A5C(v50, v25);
      a12 = 1;
      sub_26B661E5C();
      OUTLINED_FUNCTION_60_0(&type metadata for SportsActivityClock.GenericCodingKeys, &a12);
      OUTLINED_FUNCTION_46_0();
      sub_26B658400(v53);
      sub_26B6EA534();
      v54 = OUTLINED_FUNCTION_101_0();
      v55(v54, v69);
      OUTLINED_FUNCTION_9_3();
LABEL_6:
      sub_26B659FD8();
      v59 = OUTLINED_FUNCTION_86_0();
      v61 = v50;
LABEL_7:
      v60(v59, v61);
LABEL_8:
      OUTLINED_FUNCTION_37();
      return;
  }
}

void SportsActivityClock.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_106_0();
  v5 = type metadata accessor for SportsActivitySoccerClock(v4);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_108_0();
  type metadata accessor for SportsActivityBaseballClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v8 = type metadata accessor for SportsActivityGenericClock(0);
  v9 = OUTLINED_FUNCTION_46(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_4_2();
  sub_26B659F80(v1, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_18_1();
      v15 = OUTLINED_FUNCTION_103_0();
      sub_26B661A5C(v15, v16);
      MEMORY[0x26D67E0E0](2);
      RunningClockComponentsFormatter.DataSource.hash(into:)(v0);
      sub_26B63D88C(v0);
      sub_26B63D88C(v0);
      sub_26B6E9AE4();
      sub_26B6EA734();
      OUTLINED_FUNCTION_7_2();
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_17_1();
      sub_26B661A5C(v3, v2);
      MEMORY[0x26D67E0E0](3);
      RunningClockComponentsFormatter.DataSource.hash(into:)(v0);
      v14 = *(v2 + *(v5 + 20));
      if (v14)
      {
        OUTLINED_FUNCTION_140();

        sub_26B63C6E0(v0, v14);
      }

      else
      {
        OUTLINED_FUNCTION_142();
      }

      OUTLINED_FUNCTION_8_3();
      goto LABEL_9;
    case 3u:
      MEMORY[0x26D67E0E0](0);
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_10_3();
      sub_26B661A5C(v3, v12);
      MEMORY[0x26D67E0E0](1);
      RunningClockComponentsFormatter.DataSource.hash(into:)(v0);
      OUTLINED_FUNCTION_9_3();
LABEL_9:
      sub_26B659FD8();
LABEL_10:
      OUTLINED_FUNCTION_8_0();
      return;
  }
}

void SportsActivityClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v26;
  a24 = v27;
  v139 = v24;
  v29 = v28;
  v134 = v30;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097A0, &qword_26B6EDFF0);
  OUTLINED_FUNCTION_4();
  v133 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_71();
  v132 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097A8, &qword_26B6EDFF8);
  OUTLINED_FUNCTION_4();
  v126 = v35;
  v127 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_71();
  v131 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097B0, &qword_26B6EE000);
  OUTLINED_FUNCTION_4();
  v124 = v38;
  v125 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_71();
  v130 = v41;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097B8, &qword_26B6EE008);
  OUTLINED_FUNCTION_4();
  v123 = v42;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_71();
  v129 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097C0, &qword_26B6EE010);
  OUTLINED_FUNCTION_4();
  v135 = v46;
  v136 = v45;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_81_0();
  v48 = type metadata accessor for SportsActivityClock(0);
  OUTLINED_FUNCTION_16();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v119 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v119 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v119 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v119 - v59;
  v138 = v29;
  v61 = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_4_0(v61, v62);
  sub_26B661D60();
  v63 = v139;
  sub_26B6EA784();
  if (v63)
  {
    goto LABEL_8;
  }

  v120 = v58;
  v121 = v55;
  v122 = v52;
  v65 = v136;
  v64 = v137;
  v139 = v60;
  v66 = sub_26B6EA474();
  sub_26B652554(v66, 0);
  if (v68 == v69 >> 1)
  {
LABEL_7:
    v80 = sub_26B6EA1A4();
    swift_allocError();
    v82 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409450, &qword_26B6ED0D8);
    *v82 = v48;
    v83 = sub_26B6EA3B4();
    OUTLINED_FUNCTION_133(v83);
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_54_0();
    v84(v25, v65);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v138);
LABEL_9:
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_37();
    return;
  }

  v119 = 0;
  if (v68 < (v69 >> 1))
  {
    v70 = *(v67 + v68);
    sub_26B6542D8();
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    if (v72 == v74 >> 1)
    {
      v75 = v133;
      switch(v70)
      {
        case 1:
          a12 = 1;
          v94 = sub_26B661E5C();
          OUTLINED_FUNCTION_51_0(&type metadata for SportsActivityClock.GenericCodingKeys, &a12, v95, v96, v94);
          v137 = v48;
          type metadata accessor for SportsActivityGenericClock(0);
          OUTLINED_FUNCTION_46_0();
          sub_26B658400(v102);
          v103 = v120;
          v104 = v124;
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_40_1();
          sub_26B6EA464();
          v119 = 0;
          swift_unknownObjectRelease();
          v113 = OUTLINED_FUNCTION_76_0();
          v114(v113, v104);
          v115 = OUTLINED_FUNCTION_30_1();
          v116(v115);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_5();
          v109 = v103;
          goto LABEL_13;
        case 2:
          v137 = v48;
          a13 = 2;
          v85 = sub_26B661E08();
          OUTLINED_FUNCTION_51_0(&type metadata for SportsActivityClock.BaseballCodingKeys, &a13, v86, v87, v85);
          type metadata accessor for SportsActivityBaseballClock(0);
          OUTLINED_FUNCTION_43_0();
          sub_26B658400(v88);
          v89 = v121;
          sub_26B6EA464();
          v119 = 0;
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_117();
          v106(v105);
          v107 = OUTLINED_FUNCTION_47_0();
          v108(v107);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_5();
          v109 = v89;
LABEL_13:
          sub_26B661A5C(v109, v139);
          goto LABEL_14;
        case 3:
          v137 = v48;
          a14 = 3;
          v90 = sub_26B661DB4();
          v91 = v132;
          OUTLINED_FUNCTION_51_0(&type metadata for SportsActivityClock.SoccerCodingKeys, &a14, v92, v93, v90);
          type metadata accessor for SportsActivitySoccerClock(0);
          OUTLINED_FUNCTION_45_0();
          sub_26B658400(v97);
          v98 = v122;
          v99 = v128;
          sub_26B6EA464();
          v119 = 0;
          swift_unknownObjectRelease();
          (*(v75 + 8))(v91, v99);
          v110 = OUTLINED_FUNCTION_47_0();
          v111(v110);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_5();
          sub_26B661A5C(v98, v139);
          v112 = v138;
          goto LABEL_15;
        default:
          a11 = 0;
          v76 = sub_26B661EB0();
          v77 = v129;
          OUTLINED_FUNCTION_51_0(&type metadata for SportsActivityClock.UnknownCodingKeys, &a11, v78, v79, v76);
          v119 = 0;
          swift_unknownObjectRelease();
          (*(v123 + 8))(v77, v64);
          v100 = OUTLINED_FUNCTION_30_1();
          v101(v100);
          swift_storeEnumTagMultiPayload();
LABEL_14:
          v112 = v138;
LABEL_15:
          OUTLINED_FUNCTION_2_5();
          v117 = OUTLINED_FUNCTION_111();
          sub_26B661A5C(v117, v118);
          __swift_destroy_boxed_opaque_existential_1(v112);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B65E7BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000026B6FB9A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B65E83C(uint64_t a1)
{
  OUTLINED_FUNCTION_95_0(a1);
  MEMORY[0x26D67E0E0](0);
  return sub_26B6EA744();
}

uint64_t sub_26B65E898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65E7BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B65E8C4(uint64_t a1)
{
  v2 = sub_26B661F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65E900(uint64_t a1)
{
  v2 = sub_26B661F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsActivityGenericClock.encode(to:)()
{
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097E0, &qword_26B6EE018);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  v1 = sub_26B661F04();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityGenericClock.CodingKeys, v2, v1);
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_0_6();
  sub_26B658400(v3);
  OUTLINED_FUNCTION_79_0();
  sub_26B6EA534();
  v4 = OUTLINED_FUNCTION_78_0();
  return v5(v4);
}

void SportsActivityGenericClock.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v16 = v4;
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v17 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804097F8, &qword_26B6EE020);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_62_0();
  v11 = type metadata accessor for SportsActivityGenericClock(v10);
  v12 = OUTLINED_FUNCTION_46(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_4_0(v3, v3[3]);
  sub_26B661F04();
  sub_26B6EA784();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_6();
    sub_26B658400(v13);
    sub_26B6EA464();
    v14 = OUTLINED_FUNCTION_76_0();
    v15(v14, v8);
    OUTLINED_FUNCTION_1_5();
    sub_26B661A5C(v17, v1);
    OUTLINED_FUNCTION_10_3();
    sub_26B661A5C(v1, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivitySoccerClock.penaltyShootoutsViewModel.getter()
{
  v2 = OUTLINED_FUNCTION_83_0();
  *v0 = *(v1 + *(type metadata accessor for SportsActivitySoccerClock(v2) + 20));
}

uint64_t SportsActivitySoccerClock.init(runningClockDataSource:penaltyShootoutsViewModel:)@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  OUTLINED_FUNCTION_1_5();
  sub_26B661A5C(v5, v6);
  result = type metadata accessor for SportsActivitySoccerClock(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_26B65ED68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000026B6FB9A0 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026B6FB9C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B65EE3C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_95_0(a1);
  MEMORY[0x26D67E0E0](v1 & 1);
  return sub_26B6EA744();
}

unint64_t sub_26B65EE7C(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_26B65EEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65ED68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B65EEE4(uint64_t a1)
{
  v2 = sub_26B661F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65EF20(uint64_t a1)
{
  v2 = sub_26B661F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsActivitySoccerClock.encode(to:)()
{
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409808, &qword_26B6EE028);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v2 = sub_26B661F58();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivitySoccerClock.CodingKeys, v3, v2);
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_0_6();
  sub_26B658400(v4);
  OUTLINED_FUNCTION_37_1();
  sub_26B6EA534();
  if (!v0)
  {
    type metadata accessor for SportsActivitySoccerClock(0);
    sub_26B661FAC();

    OUTLINED_FUNCTION_58();
    sub_26B6EA4E4();
  }

  v5 = OUTLINED_FUNCTION_75_0();
  return v6(v5);
}

uint64_t SportsActivitySoccerClock.hash(into:)(uint64_t a1)
{
  RunningClockComponentsFormatter.DataSource.hash(into:)(a1);
  if (!*(v1 + *(type metadata accessor for SportsActivitySoccerClock(0) + 20)))
  {
    return OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_140();

  v2 = OUTLINED_FUNCTION_110_0();
  sub_26B63C6E0(v2, v3);
}

void SportsActivitySoccerClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v36 = v26;
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_0();
  v37 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409820, &qword_26B6EE030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_84_0();
  v31 = type metadata accessor for SportsActivitySoccerClock(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_4_0(v25, v25[3]);
  sub_26B661F58();
  sub_26B6EA784();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_0_6();
    sub_26B658400(v33);
    sub_26B6EA464();
    OUTLINED_FUNCTION_1_5();
    sub_26B661A5C(v37, v23);
    OUTLINED_FUNCTION_64();
    sub_26B662000();
    OUTLINED_FUNCTION_94_0();
    sub_26B6EA414();
    v34 = OUTLINED_FUNCTION_103_0();
    v35(v34);
    *(v23 + *(v31 + 20)) = v38;
    sub_26B659F80(v23, v36);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26B659FD8();
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityBaseballClock.basesActiveStates.getter()
{
  type metadata accessor for SportsActivityBaseballClock(0);
}

uint64_t SportsActivityBaseballClock.outsActiveStates.getter()
{
  type metadata accessor for SportsActivityBaseballClock(0);
}

uint64_t SportsActivityBaseballClock.ballsAndStrikes.getter()
{
  type metadata accessor for SportsActivityBaseballClock(0);
  OUTLINED_FUNCTION_25_0();
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportsActivityBaseballClock.init(basesActiveStates:outsActiveStates:ballsAndStrikes:isActiveBaseVisible:runningClockDataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SportsActivityBaseballClock(0);
  *(a7 + v14[5]) = a1;
  *(a7 + v14[6]) = a2;
  v15 = (a7 + v14[7]);
  *v15 = a3;
  v15[1] = a4;
  *(a7 + v14[8]) = a5;
  OUTLINED_FUNCTION_1_5();
  return sub_26B661A5C(a6, a7);
}

uint64_t sub_26B65F5A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000026B6FB9A0 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000026B6FB9E0 == a2;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000026B6FBA00 == a2;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646E41736C6C6162 && a2 == 0xEF73656B69727453;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000026B6FBA20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_26B65F760(char a1)
{
  result = 0x646E41736C6C6162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_26B65F82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B65F5A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B65F854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B65F758();
  *a1 = result;
  return result;
}

uint64_t sub_26B65F87C(uint64_t a1)
{
  v2 = sub_26B662054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B65F8B8(uint64_t a1)
{
  v2 = sub_26B662054();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityBaseballClock.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409830, &qword_26B6EE038);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v22 = sub_26B662054();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityBaseballClock.CodingKeys, v23, v22);
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_0_6();
  sub_26B658400(v24);
  OUTLINED_FUNCTION_37_1();
  sub_26B6EA534();
  if (!v20)
  {
    type metadata accessor for SportsActivityBaseballClock(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409840, &qword_26B6EE040);
    sub_26B6620A8(&unk_280409848);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_58();
    sub_26B6EA534();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_58();
    sub_26B6EA534();
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_58();
    sub_26B6EA504();
  }

  v25 = OUTLINED_FUNCTION_75_0();
  v26(v25);
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityBaseballClock.hash(into:)(uint64_t a1)
{
  RunningClockComponentsFormatter.DataSource.hash(into:)(a1);
  type metadata accessor for SportsActivityBaseballClock(0);
  sub_26B63D88C(a1);
  sub_26B63D88C(a1);
  sub_26B6E9AE4();
  return sub_26B6EA734();
}

uint64_t sub_26B65FBB8(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_95_0(a1);
  a1(v3);
  return sub_26B6EA744();
}

void SportsActivityBaseballClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  v23 = v22;
  v39 = v24;
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  v40 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409850, &qword_26B6EE048);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_62_0();
  v30 = type metadata accessor for SportsActivityBaseballClock(v29);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_4_0(v23, v23[3]);
  sub_26B662054();
  sub_26B6EA784();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_0_6();
    sub_26B658400(v32);
    sub_26B6EA464();
    OUTLINED_FUNCTION_1_5();
    sub_26B661A5C(v40, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409840, &qword_26B6EE040);
    sub_26B6620A8(&unk_280409858);
    OUTLINED_FUNCTION_77_0();
    sub_26B6EA464();
    *(v21 + v30[5]) = a10;
    OUTLINED_FUNCTION_77_0();
    sub_26B6EA464();
    *(v21 + v30[6]) = a10;
    OUTLINED_FUNCTION_107_0(3);
    v33 = sub_26B6EA424();
    v34 = (v21 + v30[7]);
    *v34 = v33;
    v34[1] = v35;
    OUTLINED_FUNCTION_107_0(4);
    v36 = sub_26B6EA434();
    v37 = OUTLINED_FUNCTION_28_1();
    v38(v37);
    *(v21 + v30[8]) = v36 & 1;
    sub_26B659F80(v21, v39);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_7_2();
    sub_26B659FD8();
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B65FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26B6EA714();
  a4(v6);
  return sub_26B6EA744();
}

SportsKit::SportsActivityPlay __swiftcall SportsActivityPlay.init(isLeftBarVisible:isRightBarVisible:isPlay:text:)(Swift::Bool isLeftBarVisible, Swift::Bool isRightBarVisible, Swift::Bool isPlay, Swift::String text)
{
  *v4 = isLeftBarVisible;
  *(v4 + 1) = isRightBarVisible;
  *(v4 + 2) = isPlay;
  *(v4 + 8) = text;
  LOBYTE(result.text._object) = isPlay;
  LOBYTE(result.text._countAndFlagsBits) = isRightBarVisible;
  result.isLeftBarVisible = isLeftBarVisible;
  return result;
}

void sub_26B6600C0()
{
  word_280409590 = 0;
  byte_280409592 = 0;
  qword_280409598 = 0;
  unk_2804095A0 = 0xE000000000000000;
}

uint64_t static SportsActivityPlay.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280408D50 != -1)
  {
    swift_once();
  }

  v2 = HIBYTE(word_280409590);
  v3 = byte_280409592;
  v5 = qword_280409598;
  v4 = unk_2804095A0;
  *a1 = word_280409590;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t static SportsActivityPlay.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    if (v4 == *(a2 + 1) && v5 == *(a2 + 2))
    {
      return 1;
    }

    else
    {
      return sub_26B6EA5D4();
    }
  }

  return result;
}

uint64_t sub_26B6601C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000026B6FBA40 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000026B6FBA60 == a2;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79616C507369 && a2 == 0xE600000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1954047348 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26B6EA5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_26B660324(char a1)
{
  result = 0x79616C507369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 1954047348;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_26B6603B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6601C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6603D8(uint64_t a1)
{
  v2 = sub_26B662110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B660414(uint64_t a1)
{
  v2 = sub_26B662110();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityPlay.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409860, &qword_26B6EE050);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_4_0(v26, v26[3]);
  v28 = sub_26B662110();
  OUTLINED_FUNCTION_49_0(&type metadata for SportsActivityPlay.CodingKeys, v29, v28);
  OUTLINED_FUNCTION_19_1();
  sub_26B6EA504();
  if (!v24)
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_19_1();
    sub_26B6EA504();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
  }

  v30 = OUTLINED_FUNCTION_75_0();
  v31(v30);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityPlay.hash(into:)(uint64_t a1)
{
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6EA734();
  OUTLINED_FUNCTION_122();

  return sub_26B6E9AE4();
}

uint64_t SportsActivityPlay.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_95_0(a1);
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6EA734();
  OUTLINED_FUNCTION_122();
  sub_26B6E9AE4();
  return sub_26B6EA744();
}

void SportsActivityPlay.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_38();
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409870, &qword_26B6EE058);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_4_0(v28, v28[3]);
  sub_26B662110();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v25)
  {
    OUTLINED_FUNCTION_58_0();
    v35 = sub_26B6EA434();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_58_0();
    v36 = sub_26B6EA434();
    OUTLINED_FUNCTION_58_0();
    v41 = sub_26B6EA434();
    OUTLINED_FUNCTION_58_0();
    v37 = sub_26B6EA424();
    v38 = v26;
    v40 = v39;
    (*(v33 + 8))(v38, v31);
    *v30 = v35 & 1;
    *(v30 + 1) = v36 & 1;
    *(v30 + 2) = v41 & 1;
    *(v30 + 8) = v37;
    *(v30 + 16) = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B660888(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7[72] = *v1;
  v7[73] = v2;
  v7[74] = v3;
  v8 = v4;
  v9 = v5;
  sub_26B6EA714();
  SportsActivityPlay.hash(into:)(v7);
  return sub_26B6EA744();
}

SportsKit::SportsActivityContender __swiftcall SportsActivityContender.init(canonicalId:scoreEntries:isWinnerIndicatorVisible:)(SportsKit::SportsActivityContender canonicalId, Swift::OpaquePointer scoreEntries, Swift::Bool isWinnerIndicatorVisible)
{
  *(v3 + 8) = *&canonicalId.scoreEntries._rawValue;
  *v3 = scoreEntries;
  *(v3 + 24) = isWinnerIndicatorVisible;
  canonicalId.canonicalId._object = scoreEntries._rawValue;
  canonicalId.isWinnerIndicatorVisible = isWinnerIndicatorVisible;
  return canonicalId;
}

void sub_26B660968(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132();
  if (v2 != v3 && (v4 = v3, v5 = v2, OUTLINED_FUNCTION_90_0(), v6))
  {
    v7 = 0;
    OUTLINED_FUNCTION_24_0();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v17 = v13 | (v7 << 6);
      v18 = *(*(v5 + 48) + 16 * v17 + 8);
      v19 = *(*(v5 + 56) + v17);

      if (!v18)
      {
        goto LABEL_19;
      }

      v20 = sub_26B675324();
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v23 = *(*(v4 + 56) + v20);
      if (v23 == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_19;
        }
      }

      else if (v19 == 2 || ((v23 ^ v19) & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      ++v14;
      if (*(v5 + 64 + 8 * v7))
      {
        OUTLINED_FUNCTION_89_0();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_131();
  }
}

void sub_26B660AA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132();
  if (v3 == v2 || (v4 = v2, OUTLINED_FUNCTION_90_0(), !v30))
  {
LABEL_40:
    OUTLINED_FUNCTION_131();
    return;
  }

  v6 = 0;
  v7 = v5 + 64;
  OUTLINED_FUNCTION_24_0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v35 = v8;
  if (v11)
  {
    do
    {
      v14 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_11:
      v18 = v14 | (v6 << 6);
      v19 = *(*(v8 + 48) + 16 * v18 + 8);
      v20 = (*(v8 + 56) + 24 * v18);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];

      if (!v19)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_2();
      v24 = sub_26B675324();
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        goto LABEL_39;
      }

      v27 = (*(v4 + 56) + 24 * v24);
      v28 = v27[1];
      v29 = v27[2];
      if (v28)
      {
        if (!v21)
        {
          goto LABEL_39;
        }

        v30 = *v27 == v22 && v28 == v21;
        if (!v30 && (sub_26B6EA5D4() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else if (v21)
      {
        goto LABEL_39;
      }

      if (v29)
      {
        if (!v23)
        {
          goto LABEL_39;
        }

        v31 = *(v29 + 16);
        if (v31 != *(v23 + 16))
        {
          goto LABEL_39;
        }

        if (v31 && v29 != v23)
        {
          v32 = (v29 + 40);
          v33 = (v23 + 40);
          while (1)
          {
            v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
            if (!v34 && (sub_26B6EA5D4() & 1) == 0)
            {
              break;
            }

            v32 += 2;
            v33 += 2;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      else if (v23)
      {
        goto LABEL_39;
      }

LABEL_36:

      v8 = v35;
      v11 = v36;
    }

    while (v36);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      goto LABEL_40;
    }

    ++v15;
    if (*(v7 + 8 * v6))
    {
      OUTLINED_FUNCTION_89_0();
      v36 = v17 & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
}

void sub_26B660CAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132();
  if (v2 != v3 && (v4 = v3, v5 = v2, OUTLINED_FUNCTION_90_0(), v6))
  {
    v7 = 0;
    OUTLINED_FUNCTION_24_0();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v17 = v13 | (v7 << 6);
      v18 = *(*(v5 + 48) + 16 * v17 + 8);
      v19 = *(*(v5 + 56) + 8 * v17);

      if (!v18)
      {
        goto LABEL_20;
      }

      v20 = sub_26B675324();
      v22 = v21;

      if ((v22 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v23 = *(*(v4 + 56) + 8 * v20);
      if (v23)
      {
        if (!v19)
        {
          goto LABEL_20;
        }

        sub_26B660AA0(v23, v19);
        v25 = v24;

        swift_bridgeObjectRelease_n();
        if ((v25 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_19;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_20;
      }

      ++v14;
      if (*(v5 + 64 + 8 * v7))
      {
        OUTLINED_FUNCTION_89_0();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B660E24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 9;
    if (v13 != 9)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = sub_26B675394(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B660F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E4565726F6373 && a2 == 0xEC00000073656972;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000026B6FBA80 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

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

uint64_t sub_26B661064(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_95_0(a1);
  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

uint64_t sub_26B6610A4(char a1)
{
  if (!a1)
  {
    return 0x746E4565726F6373;
  }

  if (a1 == 1)
  {
    return 0x6163696E6F6E6163;
  }

  return 0xD000000000000018;
}

uint64_t sub_26B661118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B660F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B661140(uint64_t a1)
{
  v2 = sub_26B662164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B66117C(uint64_t a1)
{
  v2 = sub_26B662164();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsActivityContender.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409878, &qword_26B6EE060);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_4_0(v22, v22[3]);
  sub_26B662164();

  OUTLINED_FUNCTION_70_0();
  sub_26B6EA7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409888, &qword_26B6EE068);
  sub_26B66220C(&unk_280409890);
  OUTLINED_FUNCTION_37_1();
  sub_26B6EA534();

  if (!v20)
  {
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_58();
    sub_26B6EA504();
  }

  v24 = OUTLINED_FUNCTION_75_0();
  v25(v24);
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t SportsActivityContender.hash(into:)(const void *a1)
{
  sub_26B661770(a1, *v1);
  OUTLINED_FUNCTION_110_0();
  sub_26B6E9AE4();
  return sub_26B6EA734();
}

uint64_t SportsActivityContender.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_95_0(a1);
  sub_26B661770(v4, v2);
  sub_26B6E9AE4();
  sub_26B6EA734();
  return sub_26B6EA744();
}

void SportsActivityContender.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804098A0, &qword_26B6EE070);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_4_0(v12, v12[3]);
  sub_26B662164();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409888, &qword_26B6EE068);
    sub_26B66220C(&unk_2804098A8);
    OUTLINED_FUNCTION_119();
    sub_26B6EA464();
    OUTLINED_FUNCTION_119();
    v16 = sub_26B6EA424();
    v21 = v17;
    v18 = sub_26B6EA434();
    v19 = OUTLINED_FUNCTION_55();
    v20(v19);
    *v14 = a10;
    *(v14 + 8) = v16;
    *(v14 + 16) = v21;
    *(v14 + 24) = v18 & 1;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6616C4(uint64_t a1)
{
  v2 = *v1;
  sub_26B6EA714();
  sub_26B661770(v4, v2);
  sub_26B6E9AE4();
  sub_26B6EA734();
  return sub_26B6EA744();
}

uint64_t sub_26B661770(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      if (*(*(a2 + 48) + v13) == 9)
      {
        break;
      }

      v7 &= v7 - 1;
      v14 = *(*(a2 + 56) + 8 * v13);
      memcpy(__dst, a1, sizeof(__dst));
      sub_26B6E9AE4();

      MEMORY[0x26D67E0E0](v14);
      result = sub_26B6EA744();
      v10 ^= result;
      if (!v7)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    return MEMORY[0x26D67E0E0](v10);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B66196C(uint64_t a1)
{
  OUTLINED_FUNCTION_64_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_22_0();
  v5(v4);
  return v1;
}

uint64_t sub_26B6619E4(uint64_t a1)
{
  OUTLINED_FUNCTION_64_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_22_0();
  v5(v4);
  return v1;
}

uint64_t sub_26B661A5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_67();
  v4(v3);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_22_0();
  v6(v5);
  return a2;
}

unint64_t sub_26B661AB4()
{
  result = qword_2804096D8;
  if (!qword_2804096D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804096D8);
  }

  return result;
}

unint64_t sub_26B661B08()
{
  result = qword_2804096E8;
  if (!qword_2804096E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804096E8);
  }

  return result;
}

unint64_t sub_26B661B5C()
{
  result = qword_2804096F0;
  if (!qword_2804096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804096F0);
  }

  return result;
}

unint64_t sub_26B661BB0()
{
  result = qword_2804096F8;
  if (!qword_2804096F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804096F8);
  }

  return result;
}

unint64_t sub_26B661C04()
{
  result = qword_280409718;
  if (!qword_280409718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409718);
  }

  return result;
}

unint64_t sub_26B661C58()
{
  result = qword_280409720;
  if (!qword_280409720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409720);
  }

  return result;
}

unint64_t sub_26B661CAC()
{
  result = qword_280409728;
  if (!qword_280409728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409728);
  }

  return result;
}

unint64_t sub_26B661D60()
{
  result = qword_280409760;
  if (!qword_280409760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409760);
  }

  return result;
}

unint64_t sub_26B661DB4()
{
  result = qword_280409768;
  if (!qword_280409768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409768);
  }

  return result;
}

unint64_t sub_26B661E08()
{
  result = qword_280409778;
  if (!qword_280409778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409778);
  }

  return result;
}

unint64_t sub_26B661E5C()
{
  result = qword_280409788;
  if (!qword_280409788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409788);
  }

  return result;
}

unint64_t sub_26B661EB0()
{
  result = qword_280409798;
  if (!qword_280409798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409798);
  }

  return result;
}

unint64_t sub_26B661F04()
{
  result = qword_2804097E8;
  if (!qword_2804097E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804097E8);
  }

  return result;
}

unint64_t sub_26B661F58()
{
  result = qword_280409810;
  if (!qword_280409810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409810);
  }

  return result;
}

unint64_t sub_26B661FAC()
{
  result = qword_280409818;
  if (!qword_280409818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409818);
  }

  return result;
}

unint64_t sub_26B662000()
{
  result = qword_280409828;
  if (!qword_280409828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409828);
  }

  return result;
}

unint64_t sub_26B662054()
{
  result = qword_280409838;
  if (!qword_280409838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409838);
  }

  return result;
}

unint64_t sub_26B6620A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409840, &qword_26B6EE040);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26B662110()
{
  result = qword_280409868;
  if (!qword_280409868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409868);
  }

  return result;
}

unint64_t sub_26B662164()
{
  result = qword_280409880;
  if (!qword_280409880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409880);
  }

  return result;
}

unint64_t sub_26B6621B8()
{
  result = qword_280409898;
  if (!qword_280409898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409898);
  }

  return result;
}

unint64_t sub_26B66220C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409888, &qword_26B6EE068);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26B66228C()
{
  result = qword_2804098B0;
  if (!qword_2804098B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804098B0);
  }

  return result;
}

unint64_t sub_26B6622E4()
{
  result = qword_2804098B8;
  if (!qword_2804098B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804098B8);
  }

  return result;
}

unint64_t sub_26B66233C()
{
  result = qword_2804098C0;
  if (!qword_2804098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804098C0);
  }

  return result;
}

unint64_t sub_26B662544()
{
  result = qword_2804098E8;
  if (!qword_2804098E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804098E8);
  }

  return result;
}

unint64_t sub_26B662704()
{
  result = qword_280409910;
  if (!qword_280409910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409910);
  }

  return result;
}

unint64_t sub_26B66275C()
{
  result = qword_280409918;
  if (!qword_280409918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409918);
  }

  return result;
}

void sub_26B6627D8(uint64_t a1)
{
  sub_26B663008(319, &qword_2810CDCF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26B663008(319, &qword_2810CDCE8, &type metadata for SportsActivityAttributes.Contender, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SportsActivityAttributes.EventInfo(319);
      if (v3 <= 0x3F)
      {
        sub_26B6E9564();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26B66290C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_26B66294C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B6629BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B6629FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26B662A74(uint64_t a1)
{
  sub_26B662C30(319, &qword_2810CEB18, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26B662B24(uint64_t a1)
{
  sub_26B662C30(319, &qword_2810CE9D8, type metadata accessor for SportsActivityClock);
  if (v1 <= 0x3F)
  {
    sub_26B663008(319, qword_2810CD630, &type metadata for SportsActivityPlay, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26B6E93B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B662C30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B6E9FF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B662C9C(uint64_t a1)
{
  sub_26B662D78(319, qword_2810CD428, type metadata accessor for SportsActivityGenericClock);
  if (v1 <= 0x3F)
  {
    sub_26B662D78(319, qword_2810CD390, type metadata accessor for SportsActivityBaseballClock);
    if (v2 <= 0x3F)
    {
      sub_26B662D78(319, qword_2810CD4B0, type metadata accessor for SportsActivitySoccerClock);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26B662D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B662DEC(uint64_t a1)
{
  result = type metadata accessor for RunningClockComponentsFormatter.DataSource(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26B662E80(uint64_t a1)
{
  type metadata accessor for RunningClockComponentsFormatter.DataSource(319);
  if (v1 <= 0x3F)
  {
    sub_26B663008(319, qword_2810CC630, &type metadata for PenaltyShootoutsViewModel, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B662F50(uint64_t a1)
{
  type metadata accessor for RunningClockComponentsFormatter.DataSource(319);
  if (v1 <= 0x3F)
  {
    sub_26B663008(319, &qword_2810CC2A0, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B663008(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B663058(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B663098(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26B6630FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B66313C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SportsActivityContender.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions.ShootoutStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsActivityBaseballClock.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TierType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26B663488(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          result = OUTLINED_FUNCTION_114(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsActivityContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsActivityContentState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsActivityAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsActivityAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B663898(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_217(a1);
}

_BYTE *sub_26B6638E4(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SportsActivityAttributes.Contender.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsActivityAttributes.Contender.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B663AF4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_114(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B663BD0()
{
  result = qword_280409920;
  if (!qword_280409920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409920);
  }

  return result;
}

unint64_t sub_26B663C28()
{
  result = qword_280409928;
  if (!qword_280409928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409928);
  }

  return result;
}

unint64_t sub_26B663C80()
{
  result = qword_280409930;
  if (!qword_280409930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409930);
  }

  return result;
}

unint64_t sub_26B663CD8()
{
  result = qword_280409938;
  if (!qword_280409938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409938);
  }

  return result;
}

unint64_t sub_26B663D30()
{
  result = qword_280409940;
  if (!qword_280409940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409940);
  }

  return result;
}

unint64_t sub_26B663D88()
{
  result = qword_280409948;
  if (!qword_280409948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409948);
  }

  return result;
}

unint64_t sub_26B663DE0()
{
  result = qword_280409950;
  if (!qword_280409950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409950);
  }

  return result;
}

unint64_t sub_26B663E38()
{
  result = qword_280409958;
  if (!qword_280409958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409958);
  }

  return result;
}

unint64_t sub_26B663E90()
{
  result = qword_280409960;
  if (!qword_280409960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409960);
  }

  return result;
}

unint64_t sub_26B663EE8()
{
  result = qword_280409968;
  if (!qword_280409968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409968);
  }

  return result;
}

unint64_t sub_26B663F40()
{
  result = qword_280409970;
  if (!qword_280409970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409970);
  }

  return result;
}

unint64_t sub_26B663F98()
{
  result = qword_280409978;
  if (!qword_280409978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409978);
  }

  return result;
}

unint64_t sub_26B663FF0()
{
  result = qword_280409980;
  if (!qword_280409980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409980);
  }

  return result;
}

unint64_t sub_26B664048()
{
  result = qword_280409988;
  if (!qword_280409988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409988);
  }

  return result;
}

unint64_t sub_26B6640A0()
{
  result = qword_280409990;
  if (!qword_280409990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409990);
  }

  return result;
}

unint64_t sub_26B6640F8()
{
  result = qword_280409998;
  if (!qword_280409998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409998);
  }

  return result;
}

unint64_t sub_26B664150()
{
  result = qword_2804099A0;
  if (!qword_2804099A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099A0);
  }

  return result;
}

unint64_t sub_26B6641A8()
{
  result = qword_2804099A8;
  if (!qword_2804099A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099A8);
  }

  return result;
}

unint64_t sub_26B664200()
{
  result = qword_2804099B0;
  if (!qword_2804099B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099B0);
  }

  return result;
}

unint64_t sub_26B664258()
{
  result = qword_2804099B8;
  if (!qword_2804099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099B8);
  }

  return result;
}

unint64_t sub_26B6642B0()
{
  result = qword_2804099C0;
  if (!qword_2804099C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099C0);
  }

  return result;
}

unint64_t sub_26B664308()
{
  result = qword_2804099C8;
  if (!qword_2804099C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099C8);
  }

  return result;
}

unint64_t sub_26B664360()
{
  result = qword_2804099D0;
  if (!qword_2804099D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099D0);
  }

  return result;
}

unint64_t sub_26B6643B8()
{
  result = qword_2804099D8;
  if (!qword_2804099D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099D8);
  }

  return result;
}

unint64_t sub_26B664410()
{
  result = qword_2804099E0;
  if (!qword_2804099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099E0);
  }

  return result;
}

unint64_t sub_26B664468()
{
  result = qword_2804099E8;
  if (!qword_2804099E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099E8);
  }

  return result;
}

unint64_t sub_26B6644C0()
{
  result = qword_2804099F0;
  if (!qword_2804099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099F0);
  }

  return result;
}

unint64_t sub_26B664518()
{
  result = qword_2804099F8;
  if (!qword_2804099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804099F8);
  }

  return result;
}

unint64_t sub_26B664570()
{
  result = qword_280409A00;
  if (!qword_280409A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A00);
  }

  return result;
}

unint64_t sub_26B6645C8()
{
  result = qword_280409A08;
  if (!qword_280409A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A08);
  }

  return result;
}

unint64_t sub_26B664620()
{
  result = qword_280409A10;
  if (!qword_280409A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A10);
  }

  return result;
}

unint64_t sub_26B664678()
{
  result = qword_280409A18;
  if (!qword_280409A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A18);
  }

  return result;
}

unint64_t sub_26B6646D0()
{
  result = qword_280409A20;
  if (!qword_280409A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A20);
  }

  return result;
}

unint64_t sub_26B664728()
{
  result = qword_280409A28;
  if (!qword_280409A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A28);
  }

  return result;
}

unint64_t sub_26B664780()
{
  result = qword_280409A30;
  if (!qword_280409A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A30);
  }

  return result;
}

unint64_t sub_26B6647D8()
{
  result = qword_280409A38;
  if (!qword_280409A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A38);
  }

  return result;
}

unint64_t sub_26B664830()
{
  result = qword_280409A40;
  if (!qword_280409A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A40);
  }

  return result;
}

unint64_t sub_26B664888()
{
  result = qword_280409A48;
  if (!qword_280409A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A48);
  }

  return result;
}

unint64_t sub_26B6648E0()
{
  result = qword_280409A50;
  if (!qword_280409A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A50);
  }

  return result;
}

unint64_t sub_26B664938()
{
  result = qword_280409A58;
  if (!qword_280409A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A58);
  }

  return result;
}

unint64_t sub_26B664990()
{
  result = qword_280409A60;
  if (!qword_280409A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A60);
  }

  return result;
}

unint64_t sub_26B6649E8()
{
  result = qword_280409A68;
  if (!qword_280409A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A68);
  }

  return result;
}

unint64_t sub_26B664A40()
{
  result = qword_280409A70;
  if (!qword_280409A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A70);
  }

  return result;
}

unint64_t sub_26B664A98()
{
  result = qword_280409A78;
  if (!qword_280409A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A78);
  }

  return result;
}

unint64_t sub_26B664AF0()
{
  result = qword_280409A80;
  if (!qword_280409A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A80);
  }

  return result;
}

unint64_t sub_26B664B48()
{
  result = qword_280409A88;
  if (!qword_280409A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A88);
  }

  return result;
}

unint64_t sub_26B664BA0()
{
  result = qword_280409A90;
  if (!qword_280409A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A90);
  }

  return result;
}

unint64_t sub_26B664BF8()
{
  result = qword_280409A98;
  if (!qword_280409A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409A98);
  }

  return result;
}

unint64_t sub_26B664C50()
{
  result = qword_280409AA0;
  if (!qword_280409AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AA0);
  }

  return result;
}

unint64_t sub_26B664CA8()
{
  result = qword_280409AA8;
  if (!qword_280409AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AA8);
  }

  return result;
}

unint64_t sub_26B664D00()
{
  result = qword_280409AB0;
  if (!qword_280409AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_26B6EA434();
}

uint64_t OUTLINED_FUNCTION_34_1@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;

  return sub_26B6EA424();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B6EA7C4();
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6EA3A4();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1, uint64_t a2)
{

  return sub_26B6EA494();
}

uint64_t OUTLINED_FUNCTION_68_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 84) = *(v1 + a1 + 24);
}

uint64_t OUTLINED_FUNCTION_82_0@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  LOBYTE(v4) = *(v4 + 24);
  *v1 = v5;
  *(v1 + 8) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v4;
}

void *OUTLINED_FUNCTION_95_0(uint64_t a1, ...)
{

  return sub_26B6EA714();
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6EA3A4();
}

uint64_t OUTLINED_FUNCTION_113@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_26B661770(v1, v4);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_26B6EA5D4();
}

void OUTLINED_FUNCTION_130(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v5 = (v4 + v3);
  *v5 = a2;
  v5[1].n128_u64[0] = a1;
  v5[1].n128_u8[8] = v2;
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1)
{

  return sub_26B6EA194();
}

uint64_t OUTLINED_FUNCTION_135@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_26B6EA424();
}

uint64_t OUTLINED_FUNCTION_137(uint64_t a1)
{

  return sub_26B66196C(a1);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B6EA4F4();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return sub_26B6EA734();
}

uint64_t OUTLINED_FUNCTION_141()
{
}

uint64_t OUTLINED_FUNCTION_142()
{

  return sub_26B6EA734();
}

uint64_t sub_26B6656F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26B6E93B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter(v6);

  sub_26B6E9344();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_26B6E9354();
  v10(v8, v2);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_26B66587C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_26B6E99F4();
  v10 = [v8 containerURLForSecurityApplicationGroupIdentifier_];

  if (v10)
  {
    sub_26B6E9374();

    v11 = sub_26B6E93B4();
    v12 = 0;
  }

  else
  {
    v11 = sub_26B6E93B4();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v12, 1, v11);
  sub_26B6672A4(v5, v7);
  sub_26B6E93B4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_26B665C44(v7);
    v13 = 1;
  }

  else
  {
    sub_26B6E9344();
    (*(*(v11 - 8) + 8))(v7, v11);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v11);
}

uint64_t static SportsSubscriptionState.activeSubscriptionEventId.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  OUTLINED_FUNCTION_46(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_6();
  sub_26B6656F8(v0);
  OUTLINED_FUNCTION_16_1(v0);
  if (v8)
  {
    sub_26B665C44(v0);
    return 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_4();
    v10(v9);
    OUTLINED_FUNCTION_7_3();
    sub_26B6E93F4();
    v11 = sub_26B6E9264();
    OUTLINED_FUNCTION_13_2(v11);
    sub_26B6E9254();
    sub_26B665CAC();
    sub_26B6E9244();
    (*(v6 + 8))(v1, v4);

    OUTLINED_FUNCTION_14_2();
    return v13;
  }
}

uint64_t sub_26B665C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B665CAC()
{
  result = qword_280409AB8;
  if (!qword_280409AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AB8);
  }

  return result;
}

uint64_t sub_26B665D00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static SportsSubscriptionState.activeSubscriptionEventId.setter(v1, v2);
}

uint64_t static SportsSubscriptionState.activeSubscriptionEventId.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  OUTLINED_FUNCTION_46(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_6();
  sub_26B6656F8(v8);
  OUTLINED_FUNCTION_16_1(v8);
  if (v13)
  {

    return sub_26B665C44(v8);
  }

  else
  {
    (*(v11 + 32))(v2, v8, v9);
    if (a2)
    {
      v15 = sub_26B6E9294();
      OUTLINED_FUNCTION_13_2(v15);
      sub_26B6E9284();
      v23[5] = a1;
      v23[6] = a2;
      sub_26B666068();
      v16 = sub_26B6E9274();
      v18 = v17;

      OUTLINED_FUNCTION_7_3();
      sub_26B6E9484();
      v21 = OUTLINED_FUNCTION_4_3();
      v22(v21);
      return sub_26B645A94(v16, v18);
    }

    else
    {
      OUTLINED_FUNCTION_7_3();
      sub_26B6E9484();
      v19 = OUTLINED_FUNCTION_4_3();
      return v20(v19);
    }
  }
}

unint64_t sub_26B666068()
{
  result = qword_280409AC0;
  if (!qword_280409AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AC0);
  }

  return result;
}

uint64_t (*static SportsSubscriptionState.activeSubscriptionEventId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = static SportsSubscriptionState.activeSubscriptionEventId.getter();
  a1[1] = v3;
  return sub_26B666104;
}

uint64_t sub_26B666104(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return static SportsSubscriptionState.activeSubscriptionEventId.setter(*a1, v2);
  }

  static SportsSubscriptionState.activeSubscriptionEventId.setter(v3, v2);
}

uint64_t static SportsSubscriptionState.filteringSelection.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_26B6E9054();
  OUTLINED_FUNCTION_13_2(v11);
  sub_26B6E9044();
  sub_26B66587C(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {

    result = sub_26B665C44(v1);
    v16 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v1, v5);
    v13 = sub_26B6E93F4();
    v15 = v14;
    sub_26B650EF0();
    sub_26B6E9024();
    (*(v7 + 8))(v10, v5);
    sub_26B645A94(v13, v15);

    v16 = v17[7];
  }

  *a1 = v16;
  return result;
}

uint64_t sub_26B6663A0@<X0>(_BYTE *a1@<X8>)
{
  result = static SportsSubscriptionState.filteringSelection.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t static SportsSubscriptionState.filteringSelection.setter(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_6();
  v6 = *a1;
  sub_26B66587C(v1);
  OUTLINED_FUNCTION_16_1(v1);
  if (v7)
  {
    return sub_26B665C44(v1);
  }

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  if (v6 == 5)
  {
    OUTLINED_FUNCTION_7_3();
    sub_26B6E9484();
    v12 = OUTLINED_FUNCTION_4_3();
    return v13(v12);
  }

  else
  {
    v11 = sub_26B6E90D4();
    OUTLINED_FUNCTION_13_2(v11);
    sub_26B6E90C4();
    sub_26B650D24();
    sub_26B6E90B4();
    OUTLINED_FUNCTION_7_3();
    sub_26B6E9484();
    v14 = OUTLINED_FUNCTION_4_3();
    v15(v14);
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t (*static SportsSubscriptionState.filteringSelection.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  static SportsSubscriptionState.filteringSelection.getter((a1 + 8));
  return sub_26B666748;
}

uint64_t sub_26B666748(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return static SportsSubscriptionState.filteringSelection.setter(v2);
}

id static SportsSubscriptionState.playClockEnabled.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B667118(0xD000000000000016, 0x800000026B6FBAA0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_11_4();
  v3 = sub_26B6E99F4();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void static SportsSubscriptionState.playClockEnabled.setter(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_26B667118(0xD000000000000016, 0x800000026B6FBAA0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_26B6E9D04();
    OUTLINED_FUNCTION_11_4();
    v5 = sub_26B6E99F4();
    [v3 setValue:v4 forKey:v5];
  }
}

void (*static SportsSubscriptionState.playClockEnabled.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = static SportsSubscriptionState.playClockEnabled.getter();
  OUTLINED_FUNCTION_6_4(v2);
  return sub_26B666950;
}

id static SportsSubscriptionState.leftRightPlayTextAlignmentEnabled.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_2_6();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26B6E99F4();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void static SportsSubscriptionState.leftRightPlayTextAlignmentEnabled.setter(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = OUTLINED_FUNCTION_2_6();
  if (v2)
  {
    v3 = v2;
    v4 = sub_26B6E9D04();
    v5 = sub_26B6E99F4();
    [v3 setValue:v4 forKey:v5];
  }
}

void (*static SportsSubscriptionState.leftRightPlayTextAlignmentEnabled.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = static SportsSubscriptionState.leftRightPlayTextAlignmentEnabled.getter();
  OUTLINED_FUNCTION_6_4(v2);
  return sub_26B666B14;
}

id static SportsSubscriptionState.playStampDescriptionEnabled.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_2_6();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_11_4();
  v3 = sub_26B6E99F4();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void static SportsSubscriptionState.playStampDescriptionEnabled.setter(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = OUTLINED_FUNCTION_2_6();
  if (v2)
  {
    v3 = v2;
    v4 = sub_26B6E9D04();
    OUTLINED_FUNCTION_11_4();
    v5 = sub_26B6E99F4();
    [v3 setValue:v4 forKey:v5];
  }
}

void (*static SportsSubscriptionState.playStampDescriptionEnabled.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = static SportsSubscriptionState.playStampDescriptionEnabled.getter();
  OUTLINED_FUNCTION_6_4(v2);
  return sub_26B666CC8;
}

uint64_t sub_26B666CFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B666D8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409AD8, &qword_26B6EFF60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B667250();
  sub_26B6EA7C4();
  sub_26B6EA4F4();
  return (*(v5 + 8))(v7, v4);
}

void *sub_26B666ECC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409AC8, &qword_26B6EFF58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B667250();
  sub_26B6EA784();
  if (!v1)
  {
    v7 = sub_26B6EA424();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_26B66702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B666CFC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B667058(uint64_t a1)
{
  v2 = sub_26B667250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B667094(uint64_t a1)
{
  v2 = sub_26B667250();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26B6670D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26B666ECC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id sub_26B667118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26B6E99F4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B6671C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B667204(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26B667250()
{
  result = qword_280409AD0;
  if (!qword_280409AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AD0);
  }

  return result;
}

uint64_t sub_26B6672A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SportsSubscriptionState.ActiveSubscription.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B6673C4()
{
  result = qword_280409AE0;
  if (!qword_280409AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AE0);
  }

  return result;
}

unint64_t sub_26B66741C()
{
  result = qword_280409AE8;
  if (!qword_280409AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AE8);
  }

  return result;
}

unint64_t sub_26B667474()
{
  result = qword_280409AF0;
  if (!qword_280409AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AF0);
  }

  return result;
}

id OUTLINED_FUNCTION_2_6()
{

  return sub_26B667118(0xD000000000000016, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_26B6E93B4();
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_26B645A94(v1, v0);
}

uint64_t sub_26B667644()
{
  v0 = sub_26B6E99F4();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_26B6E9A24();
    v4 = v3;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  result = sub_26B669688(v2, v4);
  if (v6 == 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t TierType.rawValue.getter()
{
  result = 0x505F315F52454954;
  switch(*v0)
  {
    case 1:
      result = 0x315F52454954;
      break;
    case 2:
      result = 0x325F52454954;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B667770(uint64_t a1, unint64_t a2)
{
  v2 = 0x534F63616DLL;
  switch(a2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = 5459817;
      break;
    case 2uLL:
      v2 = 1397716596;
      break;
    case 3uLL:
      v2 = 0x534F6E6F69736976;
      break;
    default:
      v2 = a1;
      break;
  }

  sub_26B66B0E0(a1, a2);
  return v2;
}

uint64_t SportsTierConfig.featureLevel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_26B655E98(v2);
}

BOOL static SportsTierConfig.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v12 = *a2;
  v14 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  if (v8 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }
  }

  else if (v12 == 4 || (sub_26B647D80(v8, v12) & 1) == 0)
  {
    return 0;
  }

  if (v10 != 1)
  {
    v29[0] = v10;
    v29[1] = v9;
    v29[2] = v11;
    if (v14 != 1)
    {
      v28[0] = v14;
      v28[1] = v13;
      v28[2] = v15;
      v23 = OUTLINED_FUNCTION_2_7();
      sub_26B655E98(v23);
      v24 = OUTLINED_FUNCTION_12_3();
      sub_26B655E98(v24);
      v25 = OUTLINED_FUNCTION_2_7();
      sub_26B655E98(v25);
      v26 = static TierFeatureLevelConfig.== infix(_:_:)(v29, v28);

      v27 = OUTLINED_FUNCTION_2_7();
      sub_26B655E0C(v27);
      return (v26 & 1) != 0;
    }

    v17 = OUTLINED_FUNCTION_2_7();
    sub_26B655E98(v17);
    sub_26B655E98(1);
    v18 = OUTLINED_FUNCTION_2_7();
    sub_26B655E98(v18);

    goto LABEL_12;
  }

  sub_26B655E98(1);
  if (v14 != 1)
  {
    v19 = OUTLINED_FUNCTION_12_3();
    sub_26B655E98(v19);
LABEL_12:
    v20 = OUTLINED_FUNCTION_2_7();
    sub_26B655E0C(v20);
    v21 = OUTLINED_FUNCTION_12_3();
    sub_26B655E0C(v21);
    return 0;
  }

  v16 = 1;
  sub_26B655E98(1);
  sub_26B655E0C(1);
  return v16;
}

uint64_t sub_26B6679E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795472656974 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C65727574616566 && a2 == 0xEC0000006C657665)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B667AB4(char a1)
{
  if (a1)
  {
    return 0x4C65727574616566;
  }

  else
  {
    return 0x6570795472656974;
  }
}

uint64_t sub_26B667AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6679E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B667B24(uint64_t a1)
{
  v2 = sub_26B669804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B667B60(uint64_t a1)
{
  v2 = sub_26B669804();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsTierConfig.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409AF8, &qword_26B6F0080);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B669804();
  sub_26B6EA7C4();
  sub_26B669858();
  OUTLINED_FUNCTION_20_1();
  sub_26B6EA4E4();
  if (!v1)
  {
    sub_26B655E98(v9);
    sub_26B6698AC();
    OUTLINED_FUNCTION_20_1();
    sub_26B6EA4E4();
    sub_26B655E0C(v9);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void SportsTierConfig.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B18, &qword_26B6F0088);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  sub_26B669804();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    sub_26B669900();
    OUTLINED_FUNCTION_16_2(&type metadata for TierType);
    sub_26B669954();
    OUTLINED_FUNCTION_16_2(&type metadata for TierFeatureLevelConfig);
    v4 = OUTLINED_FUNCTION_13_3();
    v5(v4);
    *v2 = v6;
    *(v2 + 8) = v6;
    *(v2 + 24) = v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

uint64_t static TierFeatureLevelConfig.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = OUTLINED_FUNCTION_12_3();
    sub_26B660968(v7, v8);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_26B660AA0(v2, v4);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {

      sub_26B660CAC(v3, v6);
      v14 = v13;

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B667F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F726665726F7473 && a2 == 0xEB0000000073746ELL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

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

uint64_t sub_26B6680B0(char a1)
{
  if (!a1)
  {
    return 0x6F726665726F7473;
  }

  if (a1 == 1)
  {
    return 0x7954656369766564;
  }

  return 0x7365727574616566;
}

uint64_t sub_26B668120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B667F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B668148(uint64_t a1)
{
  v2 = sub_26B6699A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668184(uint64_t a1)
{
  v2 = sub_26B6699A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierFeatureLevelConfig.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B30, &qword_26B6F0090);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = sub_26B6699A8();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B40, &qword_26B6F0098);
  sub_26B6699FC();
  OUTLINED_FUNCTION_4_4();

  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669ADC();
    OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669BBC();
    OUTLINED_FUNCTION_4_4();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void TierFeatureLevelConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B88, &qword_26B6F00B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_7();
  sub_26B6699A8();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B40, &qword_26B6F0098);
    sub_26B669C9C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669D7C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669E5C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    v16 = OUTLINED_FUNCTION_14_3();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

BOOL static TierStoreFront.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_26B66861C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E457062507369 && a2 == 0xEC00000064656C62)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6686BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B66861C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6686E8(uint64_t a1)
{
  v2 = sub_26B669F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668724(uint64_t a1)
{
  v2 = sub_26B669F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierStoreFront.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BC0, &qword_26B6F00B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26B669F3C();
  sub_26B6EA7C4();
  sub_26B6EA4B4();
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_37();
}

void TierStoreFront.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BD0, &qword_26B6F00C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_7();
  sub_26B669F3C();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    v4 = sub_26B6EA3E4();
    v5 = OUTLINED_FUNCTION_13_3();
    v6(v5);
    *v2 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

SportsKit::TierPlatformType __swiftcall TierPlatformType.init(minVersion:disabledBuilds:)(SportsKit::TierPlatformType minVersion, Swift::OpaquePointer_optional disabledBuilds)
{
  *v2 = minVersion.minVersion;
  v2[1].value._countAndFlagsBits = disabledBuilds.value._rawValue;
  minVersion.disabledBuilds = disabledBuilds;
  return minVersion;
}

uint64_t static TierPlatformType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_26B6EA5D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      v8 = OUTLINED_FUNCTION_22_0();
      if (sub_26B636ED0(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B668A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265566E696DLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xEE0073646C697542)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B668B4C(char a1)
{
  if (a1)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x69737265566E696DLL;
  }
}

uint64_t sub_26B668B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B668A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B668BC4(uint64_t a1)
{
  v2 = sub_26B669F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668C00(uint64_t a1)
{
  v2 = sub_26B669F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierPlatformType.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BD8, &qword_26B6F00C8);
  OUTLINED_FUNCTION_4();
  v7 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B669F90();
  sub_26B6EA7C4();
  sub_26B6EA4A4();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B669FE4(&qword_280409BF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA4E4();
  }

  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void TierPlatformType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BF8, &qword_26B6F00D8);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = v38 - v32;
  OUTLINED_FUNCTION_3_7();
  sub_26B669F90();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v34 = sub_26B6EA3D4();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B669FE4(&qword_280409C00, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26B6EA414();
    (*(v30 + 8))(v33, v28);
    v37 = v38[1];
    *v27 = v34;
    v27[1] = v36;
    v27[2] = v37;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static TierFeature.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      sub_26B660AA0(v2, v3);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B669068(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B669108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B669068(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B669134(uint64_t a1)
{
  v2 = sub_26B66A050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B669170(uint64_t a1)
{
  v2 = sub_26B66A050();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierFeature.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409C08, &qword_26B6F00E0);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_26B66A050();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
  sub_26B669ADC();
  OUTLINED_FUNCTION_59_0();
  sub_26B6EA4E4();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_37();
}

void TierFeature.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409C18, &qword_26B6F00E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_7();
  sub_26B66A050();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669D7C();
    sub_26B6EA414();
    v14 = OUTLINED_FUNCTION_12_3();
    v15(v14);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_37();
}

uint64_t TierType.init(from:)()
{
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v0);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA5E4();
  v5 = sub_26B6EA394();

  if (v5 >= 4)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  *v2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v0);
}