uint64_t sub_25E980E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_25E980EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25E980EDC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_25E9D82C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;

      result = sub_25E97906C(v13, a4, a5);
      if (v15)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      *(v9[7] + 8 * result) = v12;
      v16 = v9[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v9[2] = v18;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_25E981094(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25E9D77F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E9810D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E981140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E9811A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E981210(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E981274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = v5 == 0xD000000000000017;
    v7 = *(a1 + 24);
    if (0x800000025E9DCE90 == v4 && v5 == 0xD000000000000017)
    {
LABEL_10:

      if ((*(a1 + 40) & 1) == 0)
      {
        v9 = *(a1 + 32);
        if (v9 == 1005)
        {
          type metadata accessor for PNRFailureInfo();
          v10 = swift_allocObject();
          a2 = v10;
          *(v10 + 16) = 11270;
          v11 = 62;
          goto LABEL_20;
        }

        if (v9 == 1004)
        {
          type metadata accessor for PNRFailureInfo();
          v10 = swift_allocObject();
          a2 = v10;
          *(v10 + 16) = 11270;
          v11 = 61;
LABEL_20:
          *(v10 + 18) = v11;
          goto LABEL_21;
        }
      }

      type metadata accessor for PNRFailureInfo();
      v10 = swift_allocObject();
      a2 = v10;
      v12 = 11270;
LABEL_19:
      *(v10 + 16) = v12;
      v11 = 63;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (sub_25E9D8300())
  {
    goto LABEL_10;
  }

  if (0x800000025E9DCEB0 == v7 && v5 == 0xD000000000000014 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 11526;
    goto LABEL_19;
  }

  if (0x800000025E9DCED0 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 11782;
    goto LABEL_19;
  }

  if (0x800000025E9DCF00 == v7 && v5 == 0xD000000000000019 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12038;
    goto LABEL_19;
  }

  sub_25E982374();

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12294;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12550;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12806;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13062;
    goto LABEL_19;
  }

  if (0x800000025E9DCFC0 == v7 && v5 == 0xD000000000000013 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13318;
    goto LABEL_19;
  }

  if (0x800000025E9DCFE0 == v7 && v5 == 0xD000000000000018 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13574;
    goto LABEL_19;
  }

  if (0x800000025E9DD000 == v7 && v5 == 0xD000000000000026 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13830;
    goto LABEL_19;
  }

  if (0x800000025E9DD030 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14086;
    goto LABEL_19;
  }

  if (0x800000025E9DD050 == v7 && v5 == 0xD000000000000024 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD080 == v7 && v5 == 0xD000000000000026 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14598;
    goto LABEL_19;
  }

  if (0x800000025E9DD0B0 == v7 && v5 == 0xD00000000000001DLL || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD0D0 == v7 && v5 == 0xD00000000000001FLL || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14854;
    goto LABEL_19;
  }

  if (0x800000025E9DD0F0 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14342;
    goto LABEL_19;
  }

  v14 = 0x800000025E9DD120 == v7 && v6;
  if (v14 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 15110;
    goto LABEL_19;
  }

  if (0x800000025E9DD140 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 15366;
    goto LABEL_19;
  }

  if (0x800000025E9DD170 == v7 && v5 == 0xD000000000000024 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD1A0 == v7 && v5 == 0xD000000000000030 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD1E0 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0 || (sub_25E9D81D0() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 16132;
    goto LABEL_19;
  }

  if (0x800000025E9DD220 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD240 == v7 && v5 == 0xD000000000000012 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD260 == v7 && v5 == 0xD000000000000012)
  {
  }

  else
  {
    v19 = sub_25E9D8300();

    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v15 = *(a1 + 32);
  if (v15 == 4099)
  {
    v16 = 62;
  }

  else
  {
    v16 = 41;
  }

  if (v15 == 4097)
  {
    v17 = 61;
  }

  else
  {
    v17 = v16;
  }

  if (*(a1 + 40))
  {
    v18 = 41;
  }

  else
  {
    v18 = v17;
  }

  type metadata accessor for PNRFailureInfo();
  v10 = swift_allocObject();
  a2 = v10;
  *(v10 + 16) = 9733;
  *(v10 + 18) = v18;
LABEL_21:
  *(v10 + 24) = a1;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
LABEL_22:

  return a2;
}

uint64_t sub_25E981D64()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  sub_25E9D7C10();
  v13 = sub_25E9D7D10();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_2:
    type metadata accessor for PNRFailureInfo();
    v15 = swift_allocObject();
    *(v15 + 16) = 16132;
    *(v15 + 18) = 63;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    goto LABEL_11;
  }

  sub_25E9822B8(v12, v10);
  v16 = (*(v14 + 88))(v10, v13);
  if (v16 != *MEMORY[0x277D235F8])
  {
    if (v16 == *MEMORY[0x277D235F0])
    {
      type metadata accessor for PNRError();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_25E9D9270;
      *(v30 + 32) = 0;
      *(v30 + 40) = 22785;
      type metadata accessor for PNRFailureInfo();
      v15 = swift_allocObject();
      *(v15 + 16) = 16132;
      *(v15 + 18) = 63;
      *(v15 + 24) = v30;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      goto LABEL_11;
    }

    (*(v14 + 8))(v10, v13);
    goto LABEL_2;
  }

  (*(v14 + 96))(v10, v13);
  (*(v1 + 32))(v6, v10, v0);
  (*(v1 + 16))(v4, v6, v0);
  v35 = 89;
  type metadata accessor for PNRError();
  swift_allocObject();
  v17 = sub_25E9A7B54(v4, &v35);
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v18 = sub_25E9D7F10();
  __swift_project_value_buffer(v18, qword_27FD0DB18);

  v19 = sub_25E9D7F00();
  v20 = sub_25E9D8120();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136315138;
    v24 = sub_25E9A7C94();
    v26 = sub_25E9887EC(v24, v25, &v34);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_25E971000, v19, v20, "Processing TranscriptProtoExecutorError.other %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F8C51A0](v23, -1, -1);
    v27 = v22;
    v1 = v33;
    MEMORY[0x25F8C51A0](v27, -1, -1);
  }

  type metadata accessor for PNRFailureInfo();
  v28 = swift_allocObject();
  *(v28 + 16) = 9733;
  *(v28 + 18) = 40;
  *(v28 + 24) = v17;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;

  v15 = sub_25E981274(v29, v28);

  (*(v1 + 8))(v6, v0);
LABEL_11:
  sub_25E982250(v12);
  return v15;
}

uint64_t sub_25E982250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9822B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

unint64_t sub_25E982374()
{
  result = qword_27FD0D7F0;
  if (!qword_27FD0D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D7F0);
  }

  return result;
}

double sub_25E9823C8(uint64_t a1)
{
  sub_25E9D78C0();
  sub_25E9D8280();
  type metadata accessor for PNRError();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 22785;
  type metadata accessor for PNRFailureInfo();
  v2 = swift_allocObject();
  *(v2 + 16) = 11013;
  *(v2 + 18) = 63;
  *(v2 + 24) = v1;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

double sub_25E982484()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  sub_25E9D7BA0();
  v13 = sub_25E9D7CB0();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_25E982820(v12, v10);
    v16 = (*(v14 + 88))(v10, v13);
    if (v16 == *MEMORY[0x277D235C8])
    {
      (*(v14 + 96))(v10, v13);
      (*(v1 + 32))(v6, v10, v0);
      (*(v1 + 16))(v4, v6, v0);
      v20 = 89;
      type metadata accessor for PNRError();
      swift_allocObject();
      v15 = sub_25E9A7B54(v4, &v20);
      (*(v1 + 8))(v6, v0);
    }

    else if (v16 == *MEMORY[0x277D235C0])
    {
      type metadata accessor for PNRError();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_25E9D9290;
      *(v15 + 32) = 0;
      *(v15 + 40) = 22785;
    }

    else
    {
      (*(v14 + 8))(v10, v13);
      v15 = 0;
    }
  }

  sub_25E9827B8(v12);
  type metadata accessor for PNRFailureInfo();
  v17 = swift_allocObject();
  *(v17 + 16) = 16131;
  *(v17 + 18) = 63;
  *(v17 + 24) = v15;
  result = 0.0;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  return result;
}

uint64_t sub_25E9827B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E982820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25E982894(char a1)
{
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v2 = sub_25E9D7F10();
  __swift_project_value_buffer(v2, qword_280F6FE78);
  oslog = sub_25E9D7F00();
  v3 = sub_25E9D8120();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_25E971000, oslog, v3, "#FileRadarUtils autoBugCapture: result: %{BOOL}d", v4, 8u);
    MEMORY[0x25F8C51A0](v4, -1, -1);
  }
}

void _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AFIsInternalInstall())
  {
    sub_25E9D7830();
    swift_allocObject();
    sub_25E9D7820();
    sub_25E9D7810();
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v10 = sub_25E9D7F10();
    __swift_project_value_buffer(v10, qword_280F6FE78);

    oslog = sub_25E9D7F00();
    v11 = sub_25E9D8120();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_25E9887EC(a1, a2, &v15);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_25E9887EC(a3, a4, &v15);
      _os_log_impl(&dword_25E971000, oslog, v11, "#FileRadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s/%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v13, -1, -1);
      MEMORY[0x25F8C51A0](v12, -1, -1);
    }
  }
}

PnROnDeviceFramework::IERequestGrainFeatureTagName_optional __swiftcall IERequestGrainFeatureTagName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IERequestGrainFeatureTagName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x6E41686372616553;
  if (v1 != 5)
  {
    v3 = 0x6E41686372616553;
  }

  v4 = 0x7041656C706D6953;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6C616E6F73726550;
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

uint64_t sub_25E982D78(uint64_t a1)
{
  sub_25E9D8010();
}

void sub_25E982EC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xEF6E6F6974634164;
  v6 = 0x6E41686372616553;
  if (v2 != 5)
  {
    v6 = 0x6E41686372616553;
    v5 = 0xED00006D69685364;
  }

  v7 = 0x800000025E9DC9A0;
  v8 = 0x7041656C706D6953;
  if (v2 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xEF746E65746E4970;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000025E9DC970;
  v10 = 0xD000000000000015;
  if (v2 != 1)
  {
    v10 = 0x6C616E6F73726550;
    v9 = 0xEA00000000004151;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t IERequestGrainFeatureTags.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t IERequestGrainFeatureTags.init()()
{
  result = v0;
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  return result;
}

_BYTE *IERequestGrainFeatureTags.__allocating_init(hasStructuredSearch:hasStructuredSearchAnswerSynthesis:hasStructuredSearchReturnTypeCustom:hasCall:hasClientActionCreated:)(char a1, char a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  result[16] = a1;
  result[18] = a3;
  result[17] = a2;
  result[19] = a4;
  result[20] = a5;
  return result;
}

_BYTE *IERequestGrainFeatureTags.init(hasStructuredSearch:hasStructuredSearchAnswerSynthesis:hasStructuredSearchReturnTypeCustom:hasCall:hasClientActionCreated:)(char a1, char a2, char a3, char a4, char a5)
{
  v5[16] = a1;
  v5[18] = a3;
  v5[17] = a2;
  v5[19] = a4;
  v5[20] = a5;
  return v5;
}

uint64_t sub_25E983090()
{
  if (v0[16] != 1 || (v0[17] & 1) != 0 || (v0[19] & 1) != 0)
  {
    return 0;
  }

  else
  {
    return (v0[18] ^ 1) & 1;
  }
}

uint64_t sub_25E9830C4()
{
  if (v0[16] == 1 && (v0[17] & 1) == 0)
  {
    return v0[18];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E9830E8()
{
  if (v0[16] == 1 && v0[17] == 1)
  {
    return (v0[19] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E983118()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + 19);
  }
}

uint64_t sub_25E983130()
{
  if (v0[16] == 1 && v0[19] == 1)
  {
    return (v0[20] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E983160()
{
  if (v0[16] == 1 && v0[19] == 1)
  {
    return v0[20];
  }

  else
  {
    return 0;
  }
}

char *sub_25E983188()
{
  if (v0[16] != 1)
  {
    if (v0[19] != 1)
    {
      return MEMORY[0x277D84F90];
    }

    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(result + 2);
    v6 = *(result + 3);
    v4 = v3 + 1;
    if (v3 >= v6 >> 1)
    {
      result = sub_25E983454((v6 > 1), v3 + 1, 1, result);
    }

    v5 = 4;
    goto LABEL_21;
  }

  if (v0[17] != 1)
  {
    if (v0[19])
    {
      if (!v0[18])
      {
        goto LABEL_13;
      }
    }

    else if ((v0[18] & 1) == 0)
    {
      v5 = 1;
      result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
      v3 = *(result + 2);
      v8 = *(result + 3);
      v4 = v3 + 1;
      if (v3 >= v8 >> 1)
      {
        v5 = 1;
        result = sub_25E983454((v8 > 1), v3 + 1, 1, result);
      }

      goto LABEL_21;
    }

    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(result + 2);
    v7 = *(result + 3);
    v4 = v3 + 1;
    if (v3 >= v7 >> 1)
    {
      result = sub_25E983454((v7 > 1), v3 + 1, 1, result);
    }

    v5 = 3;
    goto LABEL_21;
  }

  if ((v0[19] & 1) == 0)
  {
    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(result + 2);
    v2 = *(result + 3);
    v4 = v3 + 1;
    if (v3 >= v2 >> 1)
    {
      result = sub_25E983454((v2 > 1), v3 + 1, 1, result);
    }

    v5 = 2;
LABEL_21:
    *(result + 2) = v4;
    result[v3 + 32] = v5;
    goto LABEL_22;
  }

LABEL_13:
  result = MEMORY[0x277D84F90];
LABEL_22:
  if (v0[16] == 1 && v0[19] == 1)
  {
    v9 = v0[20];
    v10 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v9)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v10;
      }

      else
      {
        result = sub_25E983454(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(result + 2);
      v12 = *(result + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_25E983454((v12 > 1), v13 + 1, 1, result);
      }

      v15 = 6;
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v10;
      }

      else
      {
        result = sub_25E983454(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(result + 2);
      v16 = *(result + 3);
      v14 = v13 + 1;
      if (v13 >= v16 >> 1)
      {
        result = sub_25E983454((v16 > 1), v13 + 1, 1, result);
      }

      v15 = 5;
    }

    *(result + 2) = v14;
    result[v13 + 32] = v15;
  }

  return result;
}

char *sub_25E983454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D858, &unk_25E9D94A0);
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

unint64_t sub_25E98354C()
{
  result = qword_27FD0D800;
  if (!qword_27FD0D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IERequestGrainFeatureTagName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IERequestGrainFeatureTagName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_25E983888(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D808, &qword_25E9D9450);
  v10 = *(sub_25E9D7A10() - 8);
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
  v15 = *(sub_25E9D7A10() - 8);
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

char *sub_25E983A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D840, &qword_25E9D9488);
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

char *sub_25E983B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D830, &qword_25E9D9478);
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

char *sub_25E983C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D848, &qword_25E9D9490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E983D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D850, &qword_25E9D9498);
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

char *sub_25E983E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D818, &qword_25E9D9460);
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

char *sub_25E983F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9840A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9841D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D820, &qword_25E9D9468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9842F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 416);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[416 * v8])
    {
      memmove(v12, v13, 416 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E984420()
{
  v0 = sub_25E9D77A0();
  __swift_allocate_value_buffer(v0, qword_280F700C8);
  __swift_project_value_buffer(v0, qword_280F700C8);
  return sub_25E9D7780();
}

uint64_t static PnRIntervalConstants.timeSinceSevenDaysAgo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F700C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25E9D77A0();
  v3 = __swift_project_value_buffer(v2, qword_280F700C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

PnROnDeviceFramework::StreamIdentifier_optional __swiftcall StreamIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StreamIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_25E98460C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "self.processedstream";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "self.processedstream";
  }

  else
  {
    v6 = "arplay.self.processedstream";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ion";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v4 = "arplay.self.processedstream";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ion";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25E9D8300();
  }

  return v11 & 1;
}

uint64_t sub_25E9846E4()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E984780(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E984808(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9848AC(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "self.processedstream";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = "arplay.self.processedstream";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000024;
    v4 = "ion";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

PnROnDeviceFramework::ReaderDomain_optional __swiftcall ReaderDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ReaderDomain.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t sub_25E9849C0()
{
  result = qword_27FD0D860;
  if (!qword_27FD0D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D860);
  }

  return result;
}

uint64_t sub_25E984A14(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "ouse.pnr.PnROnDeviceWorker";
  if (v3 == 1)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "ouse.pnr.PnROnDeviceWorker";
  }

  else
  {
    v6 = "eviceWorkerReader";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.biome.self.teststream";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v4 = "eviceWorkerReader";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.biome.self.teststream";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25E9D8300();
  }

  return v11 & 1;
}

unint64_t sub_25E984AF0()
{
  result = qword_27FD0D868;
  if (!qword_27FD0D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D868);
  }

  return result;
}

uint64_t sub_25E984B44()
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E984BE0(uint64_t a1)
{
  sub_25E9D8010();
}

uint64_t sub_25E984C68(uint64_t a1)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E984D0C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "ouse.pnr.PnROnDeviceWorker";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v3 = "eviceWorkerReader";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002ALL;
    v4 = "com.apple.biome.self.teststream";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_25E984D98(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25E984E28(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E984F58(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D890, &unk_25E9D97D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  result = sub_25E9867E4();
  if (result)
  {
    v8 = sub_25E9D79C0();
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    result = swift_beginAccess();
    v12 = 0;
    if (v11)
    {
      while (1)
      {
        v13 = v12;
LABEL_10:
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = sub_25E9CD2F8(v36, *(*(v8 + 56) + ((v13 << 9) | (8 * v14))));
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 64 + 8 * v13);
      ++v12;
      if (v11)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    swift_endAccess();

    sub_25E9D79B0();
    v15 = sub_25E9D7A60();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      sub_25E981210(v6, &qword_27FD0D890, &unk_25E9D97D0);
    }

    else
    {
      v17 = sub_25E9D7A50();
      (*(v16 + 8))(v6, v15);
      swift_beginAccess();
      sub_25E9CD2F8(v36, v17);
      swift_endAccess();
    }

    v18 = v2[2];
    v31[3] = type metadata accessor for IEExecutionGrainDimensionsSpec();
    v31[4] = &off_2870AAFA8;
    v31[0] = v18;
    v19 = v2[3];
    v33 = type metadata accessor for IETranscriptLatencyIntervalSpec();
    v34 = &off_2870ACB88;
    v32[0] = v19;
    v20 = v2[4];
    v35[3] = v33;
    v35[4] = &off_2870ACB88;
    v35[0] = v20;
    sub_25E986C6C(v31, v28);
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v23 = *(v22 + 8);

    v23(a1, v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_25E986C6C(v32, v28);
    v24 = v29;
    v25 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v25 + 8))(a1, v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_25E986C6C(v35, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D898, &unk_25E9DB860);
    swift_arrayDestroy();
    v26 = v29;
    v27 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v27 + 8))(a1, v26, v27);
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return result;
}

uint64_t sub_25E98530C()
{

  return swift_deallocClassInstance();
}

void *sub_25E985380(uint64_t a1)
{
  type metadata accessor for IEExecutionGrainDimensionsSpec();
  v2 = swift_allocObject();
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  *(v1 + 16) = v2;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v3 = swift_allocObject();
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[1] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v25 = sub_25E9D7B60();
  v4 = *(v25 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25E9D9690;
  v7 = *(v4 + 104);
  (v7)(v6 + v5, *MEMORY[0x277D234C0], v25);
  (v7)(v6 + v5 + v21, *MEMORY[0x277D234F0], v25);
  type metadata accessor for IETranscriptNextEvent(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v22 = sub_25E9D7A10();
  v23 = *(*(v22 - 8) + 56);
  v23(v8 + v9, 1, 1, v22);
  *(v8 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v6;
  *(v8 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v10 = type metadata accessor for IETranscriptEventFilter(0);
  v27 = v10;
  v28 = &off_2870ACBA8;
  v26[0] = v8;
  swift_beginAccess();
  sub_25E986D14(v26, (v3 + 1));
  swift_endAccess();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25E9D96A0;
  v20 = *MEMORY[0x277D23520];
  v7(v11 + v5);
  v12 = swift_allocObject();
  v23(v12 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v22);
  *(v12 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v11;
  *(v12 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = &off_2870ACBA8;
  v26[0] = v12;
  swift_beginAccess();
  sub_25E986D14(v26, v3 + 56);
  swift_endAccess();
  v24[3] = v3;
  v13 = swift_allocObject();
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[1] = 0u;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E9D96A0;
  (v7)(v14 + v5, *MEMORY[0x277D234C8], v25);
  v15 = swift_allocObject();
  v23(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v22);
  *(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v14;
  *(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = &off_2870ACBA8;
  v26[0] = v15;
  swift_beginAccess();
  sub_25E986D14(v26, (v13 + 1));
  swift_endAccess();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25E9D96A0;
  (v7)(v16 + v5, v20, v25);
  v17 = swift_allocObject();
  v23(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v22);
  *(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v16;
  *(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = &off_2870ACBA8;
  v26[0] = v17;
  swift_beginAccess();
  sub_25E986D14(v26, v13 + 56);
  swift_endAccess();
  v18 = MEMORY[0x277D84FA0];
  result = v24;
  v24[4] = v13;
  v24[5] = v18;
  return result;
}

uint64_t sub_25E985920(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25E9D7BD0();
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E9D7CA0();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D870, &unk_25E9D97B0);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v83 - v8;
  v9 = sub_25E9D7AE0();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D878, &unk_25E9DBD50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v83 - v14;
  v16 = sub_25E9D7A40();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v83 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  if (sub_25E986498())
  {
    v1[10] = sub_25E9D7990();
    v1[11] = v28;

    v1[8] = sub_25E9D79D0();
    v1[9] = v29;
  }

  sub_25E9D79A0();
  v30 = sub_25E9D7A80();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v21, 1, v30) == 1)
  {
    sub_25E981210(v21, &qword_27FD0D880, &unk_25E9D97C0);
    v32 = sub_25E9D7B90();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
    return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7A70();
  (*(v31 + 8))(v21, v30);
  v33 = sub_25E9D7B90();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v27, 1, v33) == 1)
  {
    return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E986774(v27, v25);
  result = (*(v34 + 88))(v25, v33);
  if (result == *MEMORY[0x277D23538])
  {
    v1[4] = sub_25E9D79E0();
    v1[5] = v36;

LABEL_8:
    (*(v34 + 8))(v25, v33);
    return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23540])
  {
    (*(v34 + 96))(v25, v33);
    v38 = v95;
    v37 = v96;
    (*(v95 + 32))(v18, v25, v96);
    v1[2] = sub_25E9D79E0();
    v1[3] = v39;

    sub_25E9D7A20();
    v40 = sub_25E9D7D40();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v15, 1, v40) == 1)
    {
      sub_25E981210(v15, &qword_27FD0D878, &unk_25E9DBD50);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v42 = sub_25E9D79E0();
      v43 = v59;
      (*(v41 + 8))(v15, v40);
    }

    v2[12] = v42;
    v2[13] = v43;

    v60 = sub_25E9D7A30();
    v62 = v61;
    (*(v38 + 8))(v18, v37);
    v2[14] = v60;
    v2[15] = v62;

    v63 = v2[16];
    v49 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (!v49)
    {
      v2[16] = v64;
      return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (result == *MEMORY[0x277D23550])
  {
    (*(v34 + 96))(v25, v33);
    v45 = v92;
    v44 = v93;
    v46 = v94;
    (*(v93 + 32))(v92, v25, v94);
    v1[6] = sub_25E9D79E0();
    v1[7] = v47;

    v48 = v1[17];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v1[17] = v50;
    v51 = v90;
    sub_25E9D7AD0();
    v52 = sub_25E9D7D80();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v51, 1, v52);
    v55 = v91;
    if (v54 == 1)
    {
      (*(v44 + 8))(v45, v46);
      v56 = &qword_27FD0D870;
      v57 = &unk_25E9D97B0;
      v58 = v51;
    }

    else
    {
      sub_25E9D7D70();
      (*(v53 + 8))(v51, v52);
      v75 = sub_25E9D7D40();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v55, 1, v75) != 1)
      {
        v77 = sub_25E9D79E0();
        v78 = v82;
        (*(v44 + 8))(v45, v46);
        (*(v76 + 8))(v55, v75);
        goto LABEL_33;
      }

      (*(v44 + 8))(v45, v46);
      v56 = &qword_27FD0D878;
      v57 = &unk_25E9DBD50;
      v58 = v55;
    }

    sub_25E981210(v58, v56, v57);
    v77 = 0;
    v78 = 0;
LABEL_33:
    v2[12] = v77;
    v2[13] = v78;

    return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v34 + 96))(v25, v33);
    v66 = v87;
    v65 = v88;
    v67 = v25;
    v68 = v89;
    result = (*(v88 + 32))(v87, v67, v89);
    v69 = v1[20];
    v49 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v49)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v1[20] = v70;
    v71 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v66);
LABEL_22:
    v72 = v71;
    (*(v65 + 8))(v66, v68);
    v2[21] = v72;

    return sub_25E981210(v27, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23558])
  {
    v73 = v1[18];
    v49 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v49)
    {
      v1[18] = v74;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_8;
  }

  (*(v34 + 96))(v25, v33);
  v66 = v84;
  v65 = v85;
  v79 = v25;
  v68 = v86;
  result = (*(v85 + 32))(v84, v79, v86);
  v80 = v1[19];
  v49 = __OFADD__(v80, 1);
  v81 = v80 + 1;
  if (!v49)
  {
    v1[19] = v81;
    v71 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
  return result;
}

void *sub_25E9863A4()
{

  return v0;
}

uint64_t sub_25E9863FC()
{
  sub_25E9863A4();

  return swift_deallocClassInstance();
}

double sub_25E986454()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

BOOL sub_25E986498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_25E9D79A0();
  v9 = sub_25E9D7A80();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_25E981210(v2, &qword_27FD0D880, &unk_25E9D97C0);
    v11 = sub_25E9D7B90();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_4:
    v14 = 0;
    goto LABEL_5;
  }

  sub_25E9D7A70();
  (*(v10 + 8))(v2, v9);
  v12 = sub_25E9D7B90();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  sub_25E986774(v8, v6);
  v16 = (*(v13 + 88))(v6, v12);
  if (v16 == *MEMORY[0x277D23540])
  {
    (*(v13 + 8))(v6, v12);
    v14 = 1;
  }

  else
  {
    v14 = v16 == *MEMORY[0x277D23550];
    (*(v13 + 8))(v6, v12);
  }

LABEL_5:
  sub_25E981210(v8, &qword_27FD0D888, &qword_25E9DBDA0);
  return v14;
}

uint64_t sub_25E986774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9867E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v28 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_25E9D79A0();
  v12 = sub_25E9D7A80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) != 1)
  {
    sub_25E9D7A70();
    (*(v13 + 8))(v5, v12);
    v15 = sub_25E9D7B90();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      goto LABEL_4;
    }

    sub_25E986774(v11, v9);
    v19 = (*(v16 + 88))(v9, v15);
    if (v19 == *MEMORY[0x277D23540] || v19 == *MEMORY[0x277D23550] || v19 == *MEMORY[0x277D23558])
    {
      (*(v16 + 8))(v9, v15);
      v17 = 1;
      goto LABEL_5;
    }

    if (v19 != *MEMORY[0x277D23560])
    {
      (*(v16 + 8))(v9, v15);
      goto LABEL_4;
    }

    sub_25E9D79F0();
    v22 = sub_25E9D7C40();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v2, 1, v22) == 1)
    {
      sub_25E981210(v2, &qword_27FD0D8A0, &unk_25E9D97E0);
      v17 = 0;
LABEL_24:
      (*(v16 + 8))(v9, v15);
      goto LABEL_5;
    }

    v24 = sub_25E9D79E0();
    v26 = v25;
    (*(v23 + 8))(v2, v22);
    if (v24 == 0x726F747563657865 && v26 == 0xE800000000000000)
    {
    }

    else
    {
      v27 = sub_25E9D8300();

      v17 = 0;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v17 = 1;
    goto LABEL_24;
  }

  sub_25E981210(v5, &qword_27FD0D880, &unk_25E9D97C0);
  v14 = sub_25E9D7B90();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
LABEL_4:
  v17 = 0;
LABEL_5:
  sub_25E981210(v11, &qword_27FD0D888, &qword_25E9DBDA0);
  return v17;
}

uint64_t sub_25E986C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E986D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8B0, qword_25E9D97F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SELFProcessedTurnReader.read()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E986EB0;

  return v7(a1, a2);
}

uint64_t sub_25E986EB0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t SELFComponent.PR.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SELFComponent.PR.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25E986FE0()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E9870B0();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E9870B0()
{
  result = qword_27FD0D8B8;
  if (!qword_27FD0D8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D8B8);
  }

  return result;
}

void sub_25E9870FC(uint64_t *a1)
{
  v205 = a1;
  v193 = type metadata accessor for PnRPlanResolutionRecord(0);
  v186 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v179 = &v171 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v3 - 8);
  v203 = &v171 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8C0, &qword_25E9D9858);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v176 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v202 = &v171 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v175 = &v171 - v11;
  MEMORY[0x28223BE20](v10);
  v210 = &v171 - v12;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8C8, &qword_25E9D9860);
  v13 = MEMORY[0x28223BE20](v178);
  v192 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v198 = &v171 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v191 = &v171 - v18;
  MEMORY[0x28223BE20](v17);
  v209 = (&v171 - v19);
  v20 = sub_25E9D77F0();
  v194 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v171 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v171 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v171 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v171 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D0, &qword_25E9D9868);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v171 - v39;
  v41 = sub_25E989284();
  if (v1)
  {
    return;
  }

  v44 = v41;
  v208 = v42;
  v188 = v43;
  v183 = v40;
  v184 = v38;
  v187 = v34;
  v213 = v32;
  v182 = v29;
  v172 = v26;
  v197 = v23;
  v211 = v20;
  if (v41)
  {
    swift_bridgeObjectRetain_n();
    v45 = v208;

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = v187;
  v48 = sub_25E98A6F4(v44, v46);

  v171 = 0;
  *(v212 + 16) = v48;

  if (v44)
  {

    v49 = v211;
    v50 = v188;
  }

  else
  {
    v50 = 0;
    v49 = v211;
  }

  v51 = *(v212 + 16);
  if (!v51)
  {

LABEL_82:

    return;
  }

  v188 = v50;
  v52 = *(v51 + 64);
  v174 = v51 + 64;
  v53 = 1 << *(v51 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v52;
  v173 = (v53 + 63) >> 6;
  v201 = (v194 + 32);
  v207 = (v194 + 8);
  v208 = (v194 + 16);
  v195 = (v186 + 56);
  v196 = (v186 + 48);
  v180 = (v194 + 56);
  v177 = v51;

  v56 = 0;
  *&v57 = 136315138;
  v181 = v57;
  v58 = v47;
  while (v55)
  {
    v59 = v56;
LABEL_24:
    v62 = __clz(__rbit64(v55));
    v63 = (v55 - 1) & v55;
    v64 = v62 | (v59 << 6);
    v65 = v177;
    v66 = v194;
    (*(v194 + 16))(v58, *(v177 + 48) + *(v194 + 72) * v64, v49);
    v67 = (*(v65 + 56) + 32 * v64);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
    v69 = &v184[*(v68 + 48)];
    v70 = *(v66 + 32);
    v71 = v67[1];
    v212 = *v67;
    v206 = v71;
    v72 = v184;
    v70();
    v73 = v206;
    *v69 = v212;
    *(v69 + 1) = v73;
    (*(*(v68 - 8) + 56))(v72, 0, 1, v68);
    v61 = v59;
LABEL_25:
    v74 = v183;
    sub_25E98B514(v72, v183, &qword_27FD0D8D0, &qword_25E9D9868);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
    if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
    {

      goto LABEL_82;
    }

    v76 = (v74 + *(v75 + 48));
    v77 = *v76;
    v190 = v76[1];
    v189 = v77;
    v78 = *v201;
    v79 = v213;
    (*v201)(v213, v74, v49);
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v200 = v61;
    v80 = sub_25E9D7F10();
    v81 = __swift_project_value_buffer(v80, qword_280F6FE78);
    v82 = v182;
    v204 = *v208;
    v204(v182, v79, v49);
    v83 = sub_25E9D7F00();
    v84 = sub_25E9D8120();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v205;
    v199 = v81;
    v185 = v78;
    if (v85)
    {
      v87 = v82;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v214 = v89;
      *v88 = v181;
      sub_25E981094(&qword_27FD0D8E0, MEMORY[0x277CC9628]);
      v90 = sub_25E9D82F0();
      v92 = v91;
      *&v206 = *v207;
      (v206)(v87, v49);
      v93 = sub_25E9887EC(v90, v92, &v214);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_25E971000, v83, v84, "Inside allPRMetrics prId: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      v86 = v205;
      MEMORY[0x25F8C51A0](v89, -1, -1);
      MEMORY[0x25F8C51A0](v88, -1, -1);
    }

    else
    {

      *&v206 = *v207;
      (v206)(v82, v49);
    }

    v94 = v196;
    v95 = *v86;
    v96 = v193;
    if (*(*v86 + 16))
    {
      v97 = sub_25E978FD4(v213);
      v98 = v209;
      if (v99)
      {
        sub_25E98B2F4(*(v95 + 56) + *(v186 + 72) * v97, v209, type metadata accessor for PnRPlanResolutionRecord);
        v100 = 0;
      }

      else
      {
        v100 = 1;
      }
    }

    else
    {
      v100 = 1;
      v98 = v209;
    }

    v101 = *v195;
    (*v195)(v98, v100, 1, v96);
    swift_beginAccess();
    v102 = v191;
    sub_25E9811A8(v98, v191, &qword_27FD0D8C8, &qword_25E9D9860);
    *&v212 = *v94;
    v103 = (v212)(v102, 1, v96);
    sub_25E981210(v102, &qword_27FD0D8C8, &qword_25E9D9860);
    if (v103 == 1)
    {
      v104 = *(v96 + 28);
      v105 = v198;
      sub_25E9D77E0();
      (*v180)(v105 + v104, 0, 1, v211);
      *(v105 + 40) = 0;
      *(v105 + 44) = 0;
      *v105 = 90;
      *(v105 + 8) = 0;
      *(v105 + 16) = 0;
      *(v105 + 24) = 0;
      *(v105 + 29) = 0;
      v101(v105, 0, 1, v96);
      sub_25E98B230(v105, v98, &qword_27FD0D8C8, &qword_25E9D9860);
    }

    v106 = v98;
    if (!(v212)(v98, 1, v96))
    {
      v107 = v190;
      *v98 = v189;
      v98[1] = v107;
    }

    v108 = v202;
    v109 = v203;
    if (v188)
    {
      v110 = v212;
      if (*(v188 + 16))
      {
        v111 = v188;

        v112 = sub_25E978FD4(v213);
        if (v113)
        {
          v114 = v112;
          v115 = *(v111 + 56);
          v116 = type metadata accessor for PRRequestContextMetadata(0);
          v117 = *(v116 - 8);
          v118 = v115 + *(v117 + 72) * v114;
          v106 = v209;
          v119 = v210;
          sub_25E98B2F4(v118, v210, type metadata accessor for PRRequestContextMetadata);

          (*(v117 + 56))(v119, 0, 1, v116);
          v110 = v212;
        }

        else
        {

          v124 = type metadata accessor for PRRequestContextMetadata(0);
          (*(*(v124 - 8) + 56))(v210, 1, 1, v124);
        }

        v108 = v202;
        v109 = v203;
      }

      else
      {
        v122 = type metadata accessor for PRRequestContextMetadata(0);
        (*(*(v122 - 8) + 56))(v210, 1, 1, v122);
      }

      v121 = v110(v106, 1, v96);
    }

    else
    {
      v120 = type metadata accessor for PRRequestContextMetadata(0);
      (*(*(v120 - 8) + 56))(v210, 1, 1, v120);
      v110 = v212;
      v121 = (v212)(v106, 1, v96);
    }

    if (!v121)
    {
      v125 = v175;
      sub_25E9811A8(v210, v175, &qword_27FD0D8C0, &qword_25E9D9858);
      v126 = type metadata accessor for PRRequestContextMetadata(0);
      if ((*(*(v126 - 8) + 48))(v125, 1, v126) == 1)
      {
        sub_25E981210(v125, &qword_27FD0D8C0, &qword_25E9D9858);
        v127 = 0;
      }

      else
      {
        v127 = *(v125 + *(v126 + 24));
        sub_25E98B298(v125);
      }

      *(v106 + 40) = v127;
      *(v106 + 44) = 0;
      v108 = v202;
      v109 = v203;
    }

    if (!v110(v106, 1, v96))
    {
      sub_25E9811A8(v210, v108, &qword_27FD0D8C0, &qword_25E9D9858);
      v128 = v108;
      v129 = type metadata accessor for PRRequestContextMetadata(0);
      if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
      {
        sub_25E981210(v128, &qword_27FD0D8C0, &qword_25E9D9858);
        v130 = 0;
      }

      else
      {
        v130 = *(v128 + *(v129 + 20));
        sub_25E98B298(v128);
      }

      *(v106 + 32) = v130;
      *(v106 + 36) = 0;
      v110 = v212;
    }

    v131 = v110(v106, 1, v96);
    v132 = v192;
    if (!v131)
    {
      v133 = v176;
      sub_25E9811A8(v210, v176, &qword_27FD0D8C0, &qword_25E9D9858);
      v134 = type metadata accessor for PRRequestContextMetadata(0);
      if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
      {
        sub_25E981210(v133, &qword_27FD0D8C0, &qword_25E9D9858);
        v135 = 1;
        v136 = v211;
      }

      else
      {
        v137 = v172;
        v136 = v211;
        v204(v172, v133, v211);
        sub_25E98B298(v133);
        v185(v109, v137, v136);
        v135 = 0;
      }

      (*v180)(v109, v135, 1, v136);
      v106 = v209;
      sub_25E98B230(v109, v209 + *(v96 + 28), &qword_27FD0D7D8, &qword_25E9D9BC0);
      v110 = v212;
    }

    *&v212 = v63;
    v138 = v197;
    v139 = v106;
    v140 = v211;
    v204(v197, v213, v211);
    sub_25E9811A8(v139, v132, &qword_27FD0D8C8, &qword_25E9D9860);
    if (v110(v132, 1, v96) == 1)
    {
      sub_25E981210(v132, &qword_27FD0D8C8, &qword_25E9D9860);
      v141 = v198;
      sub_25E988D94(v138, v198);
      sub_25E981210(v141, &qword_27FD0D8C8, &qword_25E9D9860);
      (v206)(v138, v140);
      v55 = v212;
      goto LABEL_78;
    }

    v142 = v179;
    sub_25E981140(v132, v179, type metadata accessor for PnRPlanResolutionRecord);
    v143 = v205;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v214 = *v143;
    v145 = v214;
    v146 = sub_25E978FD4(v138);
    v148 = *(v145 + 16);
    v149 = (v147 & 1) == 0;
    v150 = __OFADD__(v148, v149);
    v151 = v148 + v149;
    if (v150)
    {
      goto LABEL_84;
    }

    v152 = v147;
    if (*(v145 + 24) >= v151)
    {
      v55 = v212;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v170 = v146;
        sub_25E97DE70();
        v146 = v170;
      }

      v154 = v198;
      v155 = v214;
      if ((v152 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      sub_25E97A1D4(v151, isUniquelyReferenced_nonNull_native);
      v146 = sub_25E978FD4(v138);
      v55 = v212;
      if ((v152 & 1) != (v153 & 1))
      {
        goto LABEL_86;
      }

      v154 = v198;
      v155 = v214;
      if ((v152 & 1) == 0)
      {
LABEL_71:
        v155[(v146 >> 6) + 8] |= 1 << v146;
        v156 = v146;
        v157 = v197;
        v158 = v211;
        v204((v155[6] + *(v194 + 72) * v146), v197, v211);
        sub_25E981140(v142, v155[7] + *(v186 + 72) * v156, type metadata accessor for PnRPlanResolutionRecord);
        (v206)(v157, v158);
        v159 = v155[2];
        v150 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v150)
        {
          goto LABEL_85;
        }

        v155[2] = v160;
        *v143 = v155;
        goto LABEL_77;
      }
    }

    sub_25E98B57C(v142, v155[7] + *(v186 + 72) * v146, type metadata accessor for PnRPlanResolutionRecord);
    (v206)(v197, v211);
    *v143 = v155;
LABEL_77:
    v141 = v154;
LABEL_78:
    v161 = sub_25E9D7F00();
    v162 = sub_25E9D8120();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = v141;
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v214 = v165;
      *v164 = v181;
      sub_25E9811A8(v209, v141, &qword_27FD0D8C8, &qword_25E9D9860);
      v166 = sub_25E9D81B0();
      v168 = v167;
      sub_25E981210(v163, &qword_27FD0D8C8, &qword_25E9D9860);
      v169 = sub_25E9887EC(v166, v168, &v214);

      *(v164 + 4) = v169;
      _os_log_impl(&dword_25E971000, v161, v162, "Inside computePlanResolutionMetrics prRecord: %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x25F8C51A0](v165, -1, -1);
      MEMORY[0x25F8C51A0](v164, -1, -1);
    }

    sub_25E981210(v210, &qword_27FD0D8C0, &qword_25E9D9858);
    v49 = v211;
    (v206)(v213, v211);
    sub_25E981210(v209, &qword_27FD0D8C8, &qword_25E9D9860);
    v56 = v200;
    v58 = v187;
  }

  if (v173 <= v56 + 1)
  {
    v60 = v56 + 1;
  }

  else
  {
    v60 = v173;
  }

  v61 = v60 - 1;
  while (1)
  {
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v59 >= v173)
    {
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
      v72 = v184;
      (*(*(v123 - 8) + 56))(v184, 1, 1, v123);
      v63 = 0;
      goto LABEL_25;
    }

    v55 = *(v174 + 8 * v59);
    ++v56;
    if (v55)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_25E9D8330();
  __break(1u);
}

void *sub_25E9886D8(uint64_t a1)
{
  result = sub_25E989284();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t SELFComponent.PR.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_BYTE **sub_25E988758(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25E988790(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25E9887EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25E9887EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E9888B8(v11, 0, 0, 1, a1, a2);
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
    sub_25E980E4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25E9888B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E9889C4(a5, a6);
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
    result = sub_25E9D8270();
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

void *sub_25E9889C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E988A10(a1, a2);
  sub_25E988B40(&unk_2870AA348);
  return v3;
}

void *sub_25E988A10(uint64_t a1, unint64_t a2)
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

  v6 = sub_25E988C2C(v5, 0);
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

  result = sub_25E9D8270();
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
        v10 = sub_25E9D8030();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E988C2C(v10, 0);
        result = sub_25E9D8230();
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

uint64_t sub_25E988B40(uint64_t result)
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

  result = sub_25E988CA0(result, v11, 1, v3);
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

void *sub_25E988C2C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8E8, &qword_25E9D98A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E988CA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8E8, &qword_25E9D98A0);
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

uint64_t sub_25E988D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25E978FD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97DE70();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_25E9D77F0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PnRPlanResolutionRecord(0);
    v20 = *(v13 - 8);
    sub_25E981140(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PnRPlanResolutionRecord);
    sub_25E97C6E4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PnRPlanResolutionRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_25E988F30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25E978F5C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    *&v11[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97E4B8();
      v10 = *&v11[0];
    }

    memmove(a3, (*(v10 + 56) + 288 * v8), 0x120uLL);
    sub_25E97CBC4(v8, v10);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_25E98B4E0(v11);
    memcpy(a3, v11, 0x120uLL);
  }
}

void sub_25E988FFC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25E978F5C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    __src[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97E7F8();
      v10 = __src[0];
    }

    memmove(a3, (*(v10 + 56) + 360 * v8), 0x168uLL);
    sub_25E97CD78(v8, v10);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_25E980E0C(__src);
    memcpy(a3, __src, 0x168uLL);
  }
}

__n128 sub_25E9890C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25E978F5C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    *&v18[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97ED0C();
      v10 = *&v18[0];
    }

    memmove(a3, (*(v10 + 56) + 232 * v8), 0xE8uLL);
    sub_25E97D290(v8, v10);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_25E98B498(v18);
    v12 = v18[13];
    a3[12] = v18[12];
    a3[13] = v12;
    *(a3 + 28) = v19;
    v13 = v18[9];
    a3[8] = v18[8];
    a3[9] = v13;
    v14 = v18[11];
    a3[10] = v18[10];
    a3[11] = v14;
    v15 = v18[5];
    a3[4] = v18[4];
    a3[5] = v15;
    v16 = v18[7];
    a3[6] = v18[6];
    a3[7] = v16;
    v17 = v18[1];
    *a3 = v18[0];
    a3[1] = v17;
    result = v18[3];
    a3[2] = v18[2];
    a3[3] = result;
  }

  return result;
}

double sub_25E9891E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25E978F5C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97F080();
      v10 = v12;
    }

    sub_25E980EA8((*(v10 + 56) + 32 * v8), a3);
    sub_25E97D444(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_25E989284()
{
  v177 = type metadata accessor for PRRequestContextMetadata(0);
  v174 = *(v177 - 8);
  v1 = MEMORY[0x28223BE20](v177);
  v184 = &v173 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v176 = &v173 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v175 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v191 = &v173 - v7;
  v8 = sub_25E9D77F0();
  v179 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v180 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v185 = &v173 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v183 = &v173 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v173 - v16;
  MEMORY[0x28223BE20](v15);
  v190 = &v173 - v18;
  v19 = MEMORY[0x277D84F90];
  v20 = sub_25E97F624(MEMORY[0x277D84F90]);
  v21 = sub_25E97F624(v19);
  v22 = sub_25E97F81C(v19);
  swift_beginAccess();
  v23 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {

    return 0;
  }

  v187 = v20;
  v188 = v17;
  v193 = v21;
  v173 = v0;
  sub_25E9870B0();
  v24 = v23;
  v25 = sub_25E9D7E70();

  if (qword_280F6FE70 != -1)
  {
LABEL_109:
    swift_once();
  }

  v26 = sub_25E9D7F10();
  v27 = __swift_project_value_buffer(v26, qword_280F6FE78);

  v28 = sub_25E9D7F00();
  v29 = sub_25E9D8120();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v25 >> 62;
  v186 = v22;
  v32 = v190;
  if (v30)
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v27;
    if (v31)
    {
      v172 = v33;
      v35 = sub_25E9D8290();
      v33 = v172;
    }

    else
    {
      v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v33 + 4) = v35;
    v36 = v33;

    _os_log_impl(&dword_25E971000, v28, v29, "prRequestContextEvents length %ld", v36, 0xCu);
    MEMORY[0x25F8C51A0](v36, -1, -1);

    v32 = v190;
    v27 = v34;
  }

  else
  {
  }

  if (v31)
  {
    v38 = sub_25E9D8290();
  }

  else
  {
    v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v193;
  v182 = v27;
  if (!v38)
  {
LABEL_94:

    v148 = sub_25E9D7F00();
    v149 = sub_25E9D8120();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v203 = v202;
      *v150 = 136315138;
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);

      v151 = sub_25E9D7F40();
      v153 = v152;

      v154 = sub_25E9887EC(v151, v153, &v203);

      *(v150 + 4) = v154;
      _os_log_impl(&dword_25E971000, v148, v149, "PRRequestContext Start Event Dict: %s", v150, 0xCu);
      v155 = v202;
      __swift_destroy_boxed_opaque_existential_0(v202);
      MEMORY[0x25F8C51A0](v155, -1, -1);
      MEMORY[0x25F8C51A0](v150, -1, -1);
    }

    v156 = sub_25E9D7F00();
    v157 = sub_25E9D8120();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v203 = v159;
      *v158 = 136315138;
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);

      v160 = sub_25E9D7F40();
      v162 = v161;

      v163 = sub_25E9887EC(v160, v162, &v203);

      *(v158 + 4) = v163;
      _os_log_impl(&dword_25E971000, v156, v157, "PRRequestContext End Event Dict: %s", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x25F8C51A0](v159, -1, -1);
      MEMORY[0x25F8C51A0](v158, -1, -1);
    }

    v164 = sub_25E9D7F00();
    v165 = sub_25E9D8120();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v203 = v167;
      *v166 = 136315138;
      sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);

      v168 = sub_25E9D7F40();
      v170 = v169;

      v171 = sub_25E9887EC(v168, v170, &v203);

      *(v166 + 4) = v171;
      _os_log_impl(&dword_25E971000, v164, v165, "prRequestContextMetadata Dict: %s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v167);
      MEMORY[0x25F8C51A0](v167, -1, -1);
      MEMORY[0x25F8C51A0](v166, -1, -1);
    }

    return v187;
  }

  v22 = 0;
  v195 = v25 & 0xC000000000000001;
  v181 = v25 & 0xFFFFFFFFFFFFFF8;
  v199 = (v179 + 48);
  v178 = (v179 + 32);
  v196 = (v179 + 56);
  v197 = v25;
  v192 = (v179 + 16);
  v198 = (v179 + 8);
  v40 = v191;
  v194 = v38;
  while (1)
  {
    if (v195)
    {
      v41 = MEMORY[0x25F8C4B40](v22, v25);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v22 >= *(v181 + 16))
      {
        goto LABEL_102;
      }

      v41 = *(v25 + 8 * v22 + 32);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    v201 = v41;
    v42 = sub_25E9D7840();
    v200 = v25;
    if (!v42)
    {
      v45 = 0;
LABEL_29:
      v51 = 1;
LABEL_30:
      (*v196)(v40, 1, 1, v8);
      goto LABEL_31;
    }

    v43 = v42;
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    v45 = v44;
    if (!v44)
    {

      goto LABEL_29;
    }

    v46 = [v44 eventMetadata];
    if (!v46)
    {
      v51 = 0;
      goto LABEL_30;
    }

    v193 = v39;
    v47 = v27;
    v48 = v45;
    v49 = v46;
    v50 = [v46 prId];

    if (!v50)
    {
      v51 = 0;
      v45 = v48;
      v27 = v47;
      v39 = v193;
      goto LABEL_30;
    }

    sub_25E9D8100();

    v25 = *v199;
    if ((*v199)(v40, 1, v8) != 1)
    {
      (*v178)(v32, v40, v8);
      v45 = v48;
      v27 = v47;
      v39 = v193;
      goto LABEL_38;
    }

    v51 = 0;
    v45 = v48;
    v27 = v47;
    v39 = v193;
LABEL_31:
    sub_25E9D77E0();
    v25 = *v199;
    if ((*v199)(v40, 1, v8) != 1)
    {
      sub_25E981210(v40, &qword_27FD0D7D8, &qword_25E9D9BC0);
    }

    if (v51)
    {
      v202 = v45;
LABEL_52:
      v87 = sub_25E9D7F00();
      v88 = sub_25E9D8120();
      v89 = os_log_type_enabled(v87, v88);
      v25 = v197;
      if (v89)
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_25E971000, v87, v88, "PRSiriSchemaPRClientEvent: something other thanstartedOrChanged or ended detected.", v90, 2u);
        v91 = v90;
        v40 = v191;
        MEMORY[0x25F8C51A0](v91, -1, -1);
      }

      (*v198)(v32, v8);
      goto LABEL_14;
    }

LABEL_38:
    v202 = v45;
    v52 = [v45 requestContext];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 startedOrChanged];

      if (v54)
      {
        break;
      }
    }

    v70 = [v202 requestContext];
    if (!v70)
    {
      goto LABEL_52;
    }

    v71 = v70;
    v72 = [v70 ended];

    if (!v72)
    {
      goto LABEL_52;
    }

    v25 = *v192;
    v73 = v180;
    v74 = v32;
    (*v192)(v180, v32, v8);
    v75 = sub_25E9D7850();
    if (!v75)
    {
      goto LABEL_113;
    }

    v76 = v75;
    v77 = sub_25E9D7870();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v203 = v39;
    v79 = sub_25E978FD4(v73);
    v81 = v39[2];
    v82 = (v80 & 1) == 0;
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_105;
    }

    v85 = v80;
    if (v39[3] >= v84)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v147 = v79;
        sub_25E97D964();
        v79 = v147;
      }
    }

    else
    {
      sub_25E979A54(v84, isUniquelyReferenced_nonNull_native);
      v79 = sub_25E978FD4(v180);
      if ((v85 & 1) != (v86 & 1))
      {
        goto LABEL_114;
      }
    }

    v32 = v74;
    v39 = v203;
    if (v85)
    {
      v133 = v203[7] + 16 * v79;
      *v133 = 38;
      *(v133 + 8) = v77;

      v134 = *v198;
      (*v198)(v180, v8);
      v134(v74, v8);
    }

    else
    {
      v203[(v79 >> 6) + 8] |= 1 << v79;
      v135 = v179;
      v136 = v79;
      v137 = v39[6] + *(v179 + 72) * v79;
      v138 = v39;
      v139 = v180;
      (v25)(v137, v180, v8);
      v140 = v138[7] + 16 * v136;
      *v140 = 38;
      *(v140 + 8) = v77;

      v141 = *(v135 + 8);
      v142 = v139;
      v39 = v138;
      v143 = v190;
      v141(v142, v8);
      v32 = v143;
      v141(v143, v8);
      v144 = v39[2];
      v83 = __OFADD__(v144, 1);
      v145 = v144 + 1;
      if (v83)
      {
        goto LABEL_108;
      }

      v39[2] = v145;
    }

    v40 = v191;
    v25 = v197;
    v27 = v182;
LABEL_14:
    ++v22;
    if (v200 == v194)
    {
      goto LABEL_94;
    }
  }

  v55 = v39;

  v56 = v188;
  v57 = v8;
  v189 = *v192;
  v189(v188, v32, v8);
  v58 = sub_25E9D7850();
  if (v58)
  {
    v59 = v58;
    v60 = sub_25E9D7870();

    v61 = v187;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v61;
    v63 = sub_25E978FD4(v56);
    v64 = *(v61 + 16);
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_103;
    }

    v67 = v62;
    if (*(v61 + 24) >= v66)
    {
      if ((v8 & 1) == 0)
      {
        sub_25E97D964();
      }
    }

    else
    {
      sub_25E979A54(v66, v8);
      v68 = sub_25E978FD4(v188);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_115;
      }

      v63 = v68;
    }

    v8 = v57;
    v92 = v203;
    v193 = v55;
    v187 = v203;
    if (v67)
    {
      v93 = v203[7] + 16 * v63;
      *v93 = 37;
      *(v93 + 8) = v60;
      v94 = *v198;
      (*v198)(v188, v8);
      v95 = v186;
    }

    else
    {
      v203[(v63 >> 6) + 8] |= 1 << v63;
      v96 = v179;
      v97 = v188;
      v189((v92[6] + *(v179 + 72) * v63), v188, v57);
      v98 = v92[7] + 16 * v63;
      *v98 = 37;
      *(v98 + 8) = v60;
      v94 = *(v96 + 8);
      v94(v97, v8);
      v99 = v92[2];
      v83 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      v95 = v186;
      if (v83)
      {
        goto LABEL_106;
      }

      v92[2] = v100;
    }

    v101 = v183;
    v189(v183, v190, v8);
    v102 = [v202 requestContext];
    if (v102 && (v103 = v102, v104 = [v102 startedOrChanged], v103, v104) && (v105 = objc_msgSend(v104, sel_planCycleId), v104, v105))
    {
      v106 = v175;
      sub_25E9D8100();

      if ((v25)(v106, 1, v8) != 1)
      {
        (*v178)(v185, v106, v8);
        v25 = v197;
        v107 = v202;
LABEL_68:
        v109 = [v107 requestContext];
        if (v109 && (v110 = v109, v111 = [v109 startedOrChanged], v110, v111))
        {
          v112 = [v111 actionStatementId];
        }

        else
        {
          v112 = 0;
        }

        v113 = [v202 requestContext];
        if (v113 && (v114 = v113, v115 = [v113 startedOrChanged], v114, v115))
        {
          v116 = [v115 statementId];
        }

        else
        {
          v116 = 0;
        }

        v117 = v176;
        (*v178)(v176, v185, v8);
        v118 = v177;
        *(v117 + *(v177 + 20)) = v112;
        *(v117 + *(v118 + 24)) = v116;
        sub_25E981140(v117, v184, type metadata accessor for PRRequestContextMetadata);
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v203 = v95;
        v120 = sub_25E978FD4(v101);
        v122 = *(v95 + 16);
        v123 = (v121 & 1) == 0;
        v83 = __OFADD__(v122, v123);
        v124 = v122 + v123;
        if (v83)
        {
          goto LABEL_104;
        }

        v125 = v121;
        if (*(v95 + 24) >= v124)
        {
          v32 = v190;
          v127 = v202;
          if ((v119 & 1) == 0)
          {
            v146 = v120;
            sub_25E97D928();
            v127 = v202;
            v120 = v146;
          }

          v40 = v191;
        }

        else
        {
          sub_25E979A18(v124, v119);
          v120 = sub_25E978FD4(v101);
          v32 = v190;
          if ((v125 & 1) != (v126 & 1))
          {
            goto LABEL_114;
          }

          v40 = v191;
          v127 = v202;
        }

        v128 = v203;
        v186 = v203;
        if (v125)
        {
          sub_25E98B57C(v184, v203[7] + *(v174 + 72) * v120, type metadata accessor for PRRequestContextMetadata);

          v94(v183, v8);
          v94(v32, v8);
          v27 = v182;
          v39 = v193;
        }

        else
        {
          v203[(v120 >> 6) + 8] |= 1 << v120;
          v129 = v120;
          v25 = v94;
          v130 = v183;
          v189((v128[6] + *(v179 + 72) * v120), v183, v8);
          sub_25E981140(v184, v128[7] + *(v174 + 72) * v129, type metadata accessor for PRRequestContextMetadata);

          (v25)(v130, v8);
          (v25)(v32, v8);
          v131 = v128[2];
          v83 = __OFADD__(v131, 1);
          v132 = v131 + 1;
          if (v83)
          {
            goto LABEL_107;
          }

          v128[2] = v132;
          v27 = v182;
          v39 = v193;
          v25 = v197;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v106 = v175;
      (*v196)(v175, 1, 1, v8);
    }

    sub_25E9D77E0();
    v108 = (v25)(v106, 1, v8);
    v25 = v197;
    v107 = v202;
    if (v108 != 1)
    {
      sub_25E981210(v106, &qword_27FD0D7D8, &qword_25E9D9BC0);
    }

    goto LABEL_68;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  sub_25E9D8330();
  __break(1u);
LABEL_115:
  result = sub_25E9D8330();
  __break(1u);
  return result;
}

void *sub_25E98A6F4(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v111 = a2;
  v123 = sub_25E9D77F0();
  v112 = *(v123 - 8);
  v5 = MEMORY[0x28223BE20](v123);
  v122 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  isUniquelyReferenced_nonNull_native = v103 - v8;
  MEMORY[0x28223BE20](v7);
  v108 = v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F0, &qword_25E9D98A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v120 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v103 - v14;
  v104 = sub_25E97FA38(MEMORY[0x277D84F90]);
  if (qword_280F6FE70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v16 = sub_25E9D7F10();
    v17 = __swift_project_value_buffer(v16, qword_280F6FE78);

    v105 = v17;
    v18 = sub_25E9D7F00();
    v19 = sub_25E9D8120();

    v20 = os_log_type_enabled(v18, v19);
    v119 = v15;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v125 = v22;
      *v21 = 136315138;
      v124 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D900, &qword_25E9D98B8);
      v23 = sub_25E9D81B0();
      v25 = sub_25E9887EC(v23, v24, &v125);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25E971000, v18, v19, "Compute Metrics PRRequestContextStart: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F8C51A0](v22, -1, -1);
      MEMORY[0x25F8C51A0](v21, -1, -1);
    }

    v26 = v111;

    v27 = sub_25E9D7F00();
    v28 = sub_25E9D8120();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v125 = v30;
      *v29 = 136315138;
      v124 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D900, &qword_25E9D98B8);
      v31 = sub_25E9D81B0();
      v33 = sub_25E9887EC(v31, v32, &v125);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_25E971000, v27, v28, "Compute Metrics PRRequestContextEnd: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F8C51A0](v30, -1, -1);
      MEMORY[0x25F8C51A0](v29, -1, -1);
    }

    v15 = v119;
    v34 = v120;
    if (!a1)
    {

      v89 = sub_25E9D7F00();
      v90 = sub_25E9D8120();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_25E971000, v89, v90, "computePRHandle PRRequestContextStart Missing!", v91, 2u);
        MEMORY[0x25F8C51A0](v91, -1, -1);
      }

      return 0;
    }

    v103[1] = v3;
    v35 = *(a1 + 64);
    v107 = a1 + 64;
    v36 = 1 << *(a1 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v3 = v37 & v35;
    v106 = (v36 + 63) >> 6;
    v121 = (v112 + 16);
    v114 = (v112 + 32);
    v109 = a1;
    v110 = (v112 + 8);

    v38 = 0;
    v39 = v104;
    v113 = isUniquelyReferenced_nonNull_native;
    if (v3)
    {
      break;
    }

LABEL_13:
    if (v106 <= v38 + 1)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v106;
    }

    v46 = v45 - 1;
    while (1)
    {
      a1 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (a1 >= v106)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
        (*(*(v88 - 8) + 56))(v34, 1, 1, v88);
        v3 = 0;
        goto LABEL_22;
      }

      v3 = *(v107 + 8 * a1);
      ++v38;
      if (v3)
      {
        v118 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  while (1)
  {
    v118 = v39;
    a1 = v38;
LABEL_21:
    v47 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v48 = v47 | (a1 << 6);
    v49 = v109;
    v50 = v112;
    (*(v112 + 16))(v108, *(v109 + 48) + *(v112 + 72) * v48, v123);
    v51 = *(v49 + 56) + 16 * v48;
    LOBYTE(v49) = *v51;
    v52 = *(v51 + 8);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
    v54 = &v120[*(v53 + 48)];
    v55 = v120;
    (*(v50 + 32))();
    *v54 = v49;
    *(v54 + 1) = v52;
    v34 = v55;
    (*(*(v53 - 8) + 56))(v55, 0, 1, v53);
    v46 = a1;
    isUniquelyReferenced_nonNull_native = v113;
    v39 = v118;
    v15 = v119;
LABEL_22:
    sub_25E98B514(v34, v15, &qword_27FD0D8F0, &qword_25E9D98A8);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
    v57 = (*(*(v56 - 8) + 48))(v15, 1, v56);
    v58 = v111;
    if (v57 == 1)
    {

      v92 = sub_25E9D7F00();
      v93 = sub_25E9D8120();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v125 = v95;
        *v94 = 136315138;
        sub_25E981094(&qword_27FD0D798, MEMORY[0x277CC9600]);
        v96 = sub_25E9D7F50();
        v98 = sub_25E9887EC(v96, v97, &v125);

        *(v94 + 4) = v98;

        _os_log_impl(&dword_25E971000, v92, v93, "Computed PRHandleTime for PlanResolution: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x25F8C51A0](v95, -1, -1);
        MEMORY[0x25F8C51A0](v94, -1, -1);
      }

      else
      {
      }

      return v39;
    }

    v118 = v46;
    v59 = &v15[*(v56 + 48)];
    v60 = *v59;
    v61 = *(v59 + 1);
    (*v114)(isUniquelyReferenced_nonNull_native, v15, v123);
    if (!v58)
    {
      break;
    }

    v62 = *(v58 + 16);
    v117 = v61;
    if (v62 && (v63 = sub_25E978FD4(isUniquelyReferenced_nonNull_native), (v64 & 1) != 0))
    {
      v65 = (*(v58 + 56) + 16 * v63);
      v66 = *v65;
      v67 = *(v65 + 1);
      v115 = v66;
      v116 = v67;
    }

    else
    {
      v115 = 89;
      v116 = 0;
    }

    v68 = v122;
    a1 = *v121;
    (*v121)(v122, isUniquelyReferenced_nonNull_native, v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v39;
    v70 = sub_25E978FD4(v68);
    v71 = v39[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_51;
    }

    v74 = v69;
    if (v39[3] >= v73)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25E97DBF0();
      }
    }

    else
    {
      sub_25E979E18(v73, isUniquelyReferenced_nonNull_native);
      v75 = sub_25E978FD4(v122);
      if ((v74 & 1) != (v76 & 1))
      {
        result = sub_25E9D8330();
        __break(1u);
        return result;
      }

      v70 = v75;
    }

    isUniquelyReferenced_nonNull_native = v113;
    v39 = v125;
    if (v74)
    {
      v40 = (v125[7] + 32 * v70);
      v41 = v117;
      *v40 = v60;
      v40[1] = v41;
      v42 = v116;
      v40[2] = v115;
      v40[3] = v42;
      v43 = *v110;
      v44 = v123;
      (*v110)(v122, v123);
      v43(isUniquelyReferenced_nonNull_native, v44);
      v38 = v118;
      v15 = v119;
      v34 = v120;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v125[(v70 >> 6) + 8] |= 1 << v70;
      v77 = v112;
      v78 = isUniquelyReferenced_nonNull_native;
      v80 = v122;
      v79 = v123;
      (a1)(v39[6] + *(v112 + 72) * v70, v122, v123);
      v81 = (v39[7] + 32 * v70);
      v82 = v117;
      *v81 = v60;
      v81[1] = v82;
      v83 = v116;
      v81[2] = v115;
      v81[3] = v83;
      a1 = *(v77 + 8);
      v84 = v80;
      isUniquelyReferenced_nonNull_native = v78;
      v15 = v110;
      (a1)(v84, v79);
      (a1)(v78, v79);
      v85 = v39[2];
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_52;
      }

      v39[2] = v87;
      v38 = v118;
      v15 = v119;
      v34 = v120;
      if (!v3)
      {
        goto LABEL_13;
      }
    }
  }

  v99 = sub_25E9D7F00();
  v100 = sub_25E9D8120();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_25E971000, v99, v100, "computePRHandle PRRequestContextEnd Missing!", v101, 2u);
    MEMORY[0x25F8C51A0](v101, -1, -1);
  }

  (*v110)(isUniquelyReferenced_nonNull_native, v123);
  return 0;
}

uint64_t sub_25E98B1E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E98B230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E98B298(uint64_t a1)
{
  v2 = type metadata accessor for PRRequestContextMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E98B2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_25E98B498(uint64_t a1)
{
  *a1 = 91;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

double sub_25E98B4E0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  return result;
}

uint64_t sub_25E98B514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E98B57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Bookmark.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void *sub_25E98B630(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_25E9D7FA0();
  v12 = [v10 initWithSuiteName_];

  v5[2] = v12;
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v13 = sub_25E9D7F10();
  __swift_project_value_buffer(v13, qword_280F6FE78);

  v14 = sub_25E9D7F00();
  v15 = sub_25E9D8120();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_25E9887EC(a3, a4, &v21);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_25E971000, v14, v15, "Domain name is %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F8C51A0](v17, -1, -1);
    MEMORY[0x25F8C51A0](v16, -1, -1);
  }

  else
  {
  }

  v5[3] = a1;
  v5[4] = a2;
  v21 = a1;
  v22 = a2;

  MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DD680);
  v19 = v22;
  v5[5] = v21;
  v5[6] = v19;
  return v5;
}

uint64_t sub_25E98B828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E9D77A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  if (qword_280F700C0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F700C8);
  (*(v5 + 16))(v10, v11, v4);
  v12 = *(v1 + 16);
  if (v12)
  {
    swift_beginAccess();

    v13 = sub_25E9D7FA0();

    v14 = [v12 valueForKey_];

    if (v14)
    {
      sub_25E9D81E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43 = v41;
    v44 = v42;
    if (*(&v42 + 1))
    {
      sub_25E98C2B8(&v43);

      v15 = sub_25E9D7FA0();

      [v12 doubleForKey_];
      v17 = v16;

      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v18 = sub_25E9D7F10();
      __swift_project_value_buffer(v18, qword_280F6FE78);

      v19 = sub_25E9D7F00();
      v20 = sub_25E9D8120();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v43 = v22;
        *v21 = 136315394;
        v40 = v10;
        v23 = a1;
        v25 = *(v2 + 40);
        v24 = *(v2 + 48);

        v26 = sub_25E9887EC(v25, v24, &v43);

        *(v21 + 4) = v26;
        a1 = v23;
        v10 = v40;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v17;
        _os_log_impl(&dword_25E971000, v19, v20, "The userdefault has key %s with the value %f", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x25F8C51A0](v22, -1, -1);
        MEMORY[0x25F8C51A0](v21, -1, -1);
      }

      sub_25E9D7760();
      sub_25E98C320();
      v27 = sub_25E9D7F80();
      v28 = *(v5 + 8);
      v29 = (v5 + 32);
      if (v27)
      {
        v28(v10, v4);
        return (*v29)(a1, v8, v4);
      }

      else
      {
        v28(v8, v4);
        return (*v29)(a1, v10, v4);
      }
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  sub_25E98C2B8(&v43);
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v31 = sub_25E9D7F10();
  __swift_project_value_buffer(v31, qword_280F6FE78);

  v32 = sub_25E9D7F00();
  v33 = sub_25E9D8120();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v41 = v35;
    *v34 = 136315138;
    swift_beginAccess();
    v37 = *(v2 + 40);
    v36 = *(v2 + 48);

    v38 = sub_25E9887EC(v37, v36, &v41);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_25E971000, v32, v33, "The userdefault contained no value for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x25F8C51A0](v35, -1, -1);
    MEMORY[0x25F8C51A0](v34, -1, -1);
  }

  return (*(v5 + 32))(a1, v10, v4);
}

uint64_t sub_25E98BD88(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    sub_25E9D7770();
    v7 = v6;
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v8 = sub_25E9D7F10();
    __swift_project_value_buffer(v8, qword_280F6FE78);

    v9 = sub_25E9D7F00();
    v10 = sub_25E9D8120();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = sub_25E9887EC(v13, v14, v35);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_25E971000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x25F8C51A0](v12, -1, -1);
      MEMORY[0x25F8C51A0](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      v17 = v16;
      v18 = sub_25E9D80D0();
      swift_beginAccess();

      v19 = sub_25E9D7FA0();

      [v17 setValue:v18 forKey:v19];
    }

    else
    {

      v27 = sub_25E9D7F00();
      v28 = sub_25E9D8120();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v32 = v5[5];
        v31 = v5[6];

        v33 = sub_25E9887EC(v32, v31, &v36);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_25E971000, v27, v28, "Fail to set key %s due to empty userdefaults", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25F8C51A0](v30, -1, -1);
        MEMORY[0x25F8C51A0](v29, -1, -1);
      }
    }

    v34 = sub_25E9D77A0();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v20 = sub_25E9D7F10();
    __swift_project_value_buffer(v20, qword_280F6FE78);
    v21 = sub_25E9D7F00();
    v22 = sub_25E9D8120();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25E971000, v21, v22, "Skip userDefault set due to empty identifier", v23, 2u);
      MEMORY[0x25F8C51A0](v23, -1, -1);
    }

    v24 = sub_25E9D77A0();
    v25 = *(*(v24 - 8) + 8);

    return v25(a1, v24);
  }
}

uint64_t Bookmark.deinit()
{

  return v0;
}

uint64_t Bookmark.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25E98C2B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D908, &unk_25E9D9910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E98C320()
{
  result = qword_27FD0D910;
  if (!qword_27FD0D910)
  {
    sub_25E9D77A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D910);
  }

  return result;
}

uint64_t sub_25E98C378(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEF6E6F6974634164;
  v5 = 0x6E41686372616553;
  if (a1 == 5)
  {
    v5 = 0x6E41686372616553;
  }

  else
  {
    v4 = 0xED00006D69685364;
  }

  v6 = 0x800000025E9DC9A0;
  v7 = 0x7041656C706D6953;
  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xEF746E65746E4970;
  }

  if (a1 > 4u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x800000025E9DC970;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0x6C616E6F73726550;
    v8 = 0xEA00000000004151;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E55;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x800000025E9DC970;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0xEA00000000004151;
        if (v10 != 0x6C616E6F73726550)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF6E6F6974634164;
      if (v10 != 0x6E41686372616553)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xED00006D69685364;
      if (v10 != 0x6E41686372616553)
      {
LABEL_42:
        v13 = sub_25E9D8300();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000025E9DC9A0;
    if (v10 != 0xD000000000000013)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0xEF746E65746E4970;
    if (v10 != 0x7041656C706D6953)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_25E98C5E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65657263536E4FLL;
  v5 = 0xEE006E6F74747542;
  if (a1 != 5)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x800000025E9DCB50;
  }

  v6 = 0x61546F54646C6F48;
  v7 = 0xEA00000000006B6CLL;
  if (a1 != 3)
  {
    v6 = 0x525654656C707041;
    v7 = 0xED000065746F6D65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0xD000000000000011;
  v9 = 0x800000025E9DCB00;
  if (a1 != 1)
  {
    v8 = 0x6547726576726553;
    v9 = 0xEF6465746172656ELL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E55;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x800000025E9DCB00;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xEF6465746172656ELL;
        if (v10 != 0x6547726576726553)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEE006E6F74747542;
      if (v10 != 0x6E65657263536E4FLL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0x800000025E9DCB50;
      if (v10 != 0xD00000000000001CLL)
      {
LABEL_40:
        v13 = sub_25E9D8300();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006B6CLL;
    if (v10 != 0x61546F54646C6F48)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xED000065746F6D65;
    if (v10 != 0x525654656C707041)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25E98C860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "Failed";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000020;
    }

    else
    {
      v6 = 0xD00000000000002BLL;
    }

    if (v4)
    {
      v7 = "urnGrainLatencyUploadFailed";
    }

    else
    {
      v7 = "Failed";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = "IERequestGrainUploadFailed";
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v5 = "IEPlannerGrainUploadFailed";
LABEL_12:
      v7 = (v5 - 32);
      v6 = 0xD00000000000001ALL;
      goto LABEL_14;
    }

    v7 = "IEPlannerGrainUploadFailed";
    v6 = 0xD000000000000019;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000020;
    }

    else
    {
      v2 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v3 = "urnGrainLatencyUploadFailed";
    }
  }

  else if (a2 == 2)
  {
    v3 = "encyUploadFailed";
  }

  else if (a2 == 3)
  {
    v3 = "IERequestGrainUploadFailed";
  }

  else
  {
    v3 = "IEPlannerGrainUploadFailed";
    v2 = 0xD000000000000019;
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E9D8300();
  }

  return v8 & 1;
}

uint64_t sub_25E98C9C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x4174736575716572;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
    v5 = 0x800000025E9DCBE0;
  }

  v7 = 0x800000025E9DCBB0;
  v8 = 0xD00000000000001ALL;
  if (a1 != 3)
  {
    v8 = 0x65526E6F69746361;
    v7 = 0xEE0065736E6F7073;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x64656D7265746E69;
  v10 = 0xEC00000065746169;
  if (a1 != 1)
  {
    v9 = 0xD000000000000015;
    v10 = 0x800000025E9DCB90;
  }

  if (!a1)
  {
    v9 = 0x4174736575716572;
    v10 = 0xED00006E6F697463;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065746169;
        if (v11 != 0x64656D7265746E69)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x800000025E9DCB90;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000025E9DCBE0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0x800000025E9DCBB0;
      if (v11 != 0xD00000000000001ALL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x65526E6F69746361;
    v2 = 0xEE0065736E6F7073;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_25E9D8300();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

void SiriTurnGrainCalculator.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = qword_27FD0DD78;
    qword_27FD0DD78 = a1;
    v5 = a1;
  }

  *a2 = a1;
}

void SiriTurnGrainCalculator.extractLatencies()(_OWORD *a1@<X8>)
{
  v194 = sub_25E9D77F0();
  v4 = *(v194 - 8);
  v5 = MEMORY[0x28223BE20](v194);
  v192 = (&v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v165 - v7;
  v9 = *v1;
  SiriTurnGrainCalculator.computeSRT()(&v205);
  v10 = v2;
  v11 = 0x280F6F000;
  if (v2)
  {
    goto LABEL_44;
  }

  v190 = v206;
  v191 = v205;
  swift_beginAccess();
  v12 = qword_27FD0DD78;
  v189 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D8B8, 0x277D5A0F0);
    v13 = v12;
    v14 = sub_25E9D7E70();

    if (v14 >> 62)
    {
      v15 = sub_25E9D8290();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v15 = 0;
  }

  v219 = MEMORY[0x277D84F98];
  type metadata accessor for SELFComponent.PR();
  *(swift_allocObject() + 16) = 0;
  sub_25E9870FC(&v219);
  v17 = v16;
  swift_setDeallocating();

  swift_deallocClassInstance();
  if (!v17)
  {
    v17 = sub_25E980308(MEMORY[0x277D84F90]);
  }

  v185 = v15;

  v219 = v17;
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v188 = v9;
  v18 = sub_25E9D7F10();
  v187 = __swift_project_value_buffer(v18, qword_280F6FE78);
  v19 = sub_25E9D7F00();
  v20 = sub_25E9D8120();
  v21 = os_log_type_enabled(v19, v20);
  v193 = 0;
  v184 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *&v205 = swift_slowAlloc();
    v183 = a1;
    v23 = v205;
    *v22 = 136315138;
    type metadata accessor for PnRPlanResolutionRecord(0);
    sub_25E98F5E4();

    v24 = sub_25E9D7F40();
    v186 = v4;
    v26 = v25;

    v27 = sub_25E9887EC(v24, v26, &v205);
    v4 = v186;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_25E971000, v19, v20, "Plan Resolution metrics extracted: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v28 = v23;
    a1 = v183;
    MEMORY[0x25F8C51A0](v28, -1, -1);
    MEMORY[0x25F8C51A0](v22, -1, -1);
  }

  type metadata accessor for SELFComponent.PlanGeneration();
  swift_allocObject();
  SELFComponent.PlanGeneration.init()();

  v29 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D918, 0x277D59B80);
    v30 = v29;
    v31 = sub_25E9D7E70();

    if (v31 >> 62)
    {
      v183 = sub_25E9D8290();
    }

    else
    {
      v183 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v183 = 0;
  }

  v204 = MEMORY[0x277D84F98];
  swift_allocObject();
  SELFComponent.PlanGeneration.init()();
  v32 = v193;
  sub_25E98FCA4(&v204);
  v10 = v32;
  if (v32)
  {

LABEL_43:

    v11 = 0x280F6F000uLL;
LABEL_44:
    v193 = 0;
    if (*(v11 + 3696) != -1)
    {
      swift_once();
    }

    v75 = sub_25E9D7F10();
    __swift_project_value_buffer(v75, qword_280F6FE78);
    *&v205 = 0;
    *(&v205 + 1) = 0xE000000000000000;
    sub_25E9D8240();

    *&v205 = 0xD00000000000002FLL;
    *(&v205 + 1) = 0x800000025E9DD6A0;
    v76 = v192;
    sub_25E9D7EF0();
    v77 = sub_25E9D77C0();
    v79 = v78;
    (*(v4 + 8))(v76, v194);
    MEMORY[0x25F8C4910](v77, v79);

    v80 = v205;

    v81 = sub_25E9D7F00();
    v82 = sub_25E9D8120();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v205 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_25E9887EC(v80, *(&v80 + 1), &v205);
      _os_log_impl(&dword_25E971000, v81, v82, "%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x25F8C51A0](v84, -1, -1);
      MEMORY[0x25F8C51A0](v83, -1, -1);
    }

    LOBYTE(v205) = 0x80;
    _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v205, v80, *(&v80 + 1));

    _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0xD000000000000014, 0x800000025E9D9910, 0xD00000000000001ALL, 0x800000025E9DD6D0);

    sub_25E98F52C(&v205);
    v85 = v216;
    a1[10] = v215;
    a1[11] = v85;
    v86 = v218;
    a1[12] = v217;
    a1[13] = v86;
    v87 = v212;
    a1[6] = v211;
    a1[7] = v87;
    v88 = v214;
    a1[8] = v213;
    a1[9] = v88;
    v89 = v208;
    a1[2] = v207;
    a1[3] = v89;
    v90 = v210;
    a1[4] = v209;
    a1[5] = v90;
    v91 = v206;
    *a1 = v205;
    a1[1] = v91;
    return;
  }

  v34 = v33;

  v193 = 0;
  if (!v34)
  {
    v34 = sub_25E980524(MEMORY[0x277D84F90]);
  }

  v204 = v34;
  v35 = sub_25E9D7F00();
  v36 = sub_25E9D8120();
  v37 = os_log_type_enabled(v35, v36);
  v180 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v181 = v17;
    v40 = v39;
    *&v205 = v39;
    *v38 = 136315138;

    v41 = sub_25E9D7F40();
    v186 = v4;
    v42 = v34;
    v44 = v43;

    v45 = sub_25E9887EC(v41, v44, &v205);
    v34 = v42;
    v4 = v186;

    *(v38 + 4) = v45;
    _os_log_impl(&dword_25E971000, v35, v36, "Plan Generation metrics extracted: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v46 = v40;
    v17 = v181;
    MEMORY[0x25F8C51A0](v46, -1, -1);
    MEMORY[0x25F8C51A0](v38, -1, -1);
  }

  v179 = sub_25E997C24();
  v182 = v47;
  type metadata accessor for SELFComponent.QD();
  swift_allocObject();
  SELFComponent.QD.init()();

  v48 = qword_27FD0DD78;
  v49 = MEMORY[0x277D84F98];
  v178 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
    v50 = v48;
    v51 = sub_25E9D7E80();

    if (v51 >> 62)
    {
      v177 = sub_25E9D8290();
    }

    else
    {
      v177 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v177 = 0;
  }

  v203 = v49;
  swift_allocObject();
  SELFComponent.QD.init()();
  v52 = v193;
  sub_25E9AF338(&v203);
  v10 = v52;
  if (v52)
  {

    goto LABEL_43;
  }

  v54 = v53;

  v193 = 0;
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = sub_25E9806B0(MEMORY[0x277D84F90]);
  }

  v56 = MEMORY[0x277D84F98];

  v203 = v55;
  v57 = sub_25E9D7F00();
  v58 = sub_25E9D8120();
  v59 = os_log_type_enabled(v57, v58);
  v176 = v55;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v181 = v17;
    v62 = v61;
    *&v205 = v61;
    *v60 = 136315138;

    v63 = sub_25E9D7F40();
    v186 = v4;
    v64 = v34;
    v66 = v65;

    v67 = sub_25E9887EC(v63, v66, &v205);
    v34 = v64;
    v4 = v186;

    *(v60 + 4) = v67;
    _os_log_impl(&dword_25E971000, v57, v58, "Print All QD: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v68 = v62;
    v17 = v181;
    MEMORY[0x25F8C51A0](v68, -1, -1);
    v69 = v60;
    v56 = MEMORY[0x277D84F98];
    MEMORY[0x25F8C51A0](v69, -1, -1);
  }

  v172 = sub_25E997D40();
  v173 = sub_25E997BF8();
  type metadata accessor for SELFComponent.RG();
  swift_allocObject();
  SELFComponent.RG.init()();

  v70 = qword_27FD0DD78;
  v175 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D928, 0x277D5A478);
    v71 = v70;
    v72 = sub_25E9D7E80();

    if (v72 >> 62)
    {
      v174 = sub_25E9D8290();
    }

    else
    {
      v174 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v174 = 0;
  }

  v202 = v56;
  swift_allocObject();
  SELFComponent.RG.init()();
  v73 = v193;
  sub_25E99E3C0(&v202);
  v10 = v73;
  if (v73)
  {

    goto LABEL_43;
  }

  v92 = v74;

  v193 = 0;
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = sub_25E98083C(MEMORY[0x277D84F90]);
  }

  v202 = v93;
  v94 = sub_25E9D7F00();
  v95 = sub_25E9D8120();
  v96 = os_log_type_enabled(v94, v95);
  v171 = v93;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v181 = v17;
    v99 = v98;
    *&v205 = v98;
    *v97 = 136315138;

    v100 = sub_25E9D7F40();
    v186 = v4;
    v101 = v34;
    v103 = v102;

    v104 = sub_25E9887EC(v100, v103, &v205);
    v34 = v101;
    v4 = v186;

    *(v97 + 4) = v104;
    _os_log_impl(&dword_25E971000, v94, v95, "Response Generation metrics extracted: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    v105 = v99;
    v17 = v181;
    MEMORY[0x25F8C51A0](v105, -1, -1);
    MEMORY[0x25F8C51A0](v97, -1, -1);
  }

  type metadata accessor for SELFComponent.SearchTool();
  swift_allocObject();
  SELFComponent.SearchTool.init()();

  v106 = qword_27FD0DD78;
  v170 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D690, 0x277D5AE38);
    v107 = v106;
    v108 = sub_25E9D7E70();

    if (v108 >> 62)
    {
      v169 = sub_25E9D8290();
    }

    else
    {
      v169 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v169 = 0;
  }

  v201 = MEMORY[0x277D84F98];
  swift_allocObject();
  SELFComponent.SearchTool.init()();
  v109 = v193;
  v110 = sub_25E976154(&v201);
  v10 = v109;
  if (v109)
  {

    goto LABEL_43;
  }

  v111 = v110;

  v193 = 0;
  if (!v111)
  {
    v111 = sub_25E98017C(MEMORY[0x277D84F90]);
  }

  v168 = v34;

  v201 = v111;
  v112 = v111;
  v113 = sub_25E9D7F00();
  v114 = sub_25E9D8120();
  v115 = os_log_type_enabled(v113, v114);
  v167 = v112;
  if (v115)
  {
    v116 = swift_slowAlloc();
    DWORD2(v166) = v114;
    v117 = v116;
    v118 = swift_slowAlloc();
    v181 = v17;
    v119 = v118;
    *&v205 = v118;
    *v117 = 136315138;

    v120 = sub_25E9D7F40();
    v122 = v121;

    v123 = sub_25E9887EC(v120, v122, &v205);

    *(v117 + 4) = v123;
    _os_log_impl(&dword_25E971000, v113, BYTE8(v166), "Search Tool metrics extracted: %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    v124 = v119;
    v17 = v181;
    MEMORY[0x25F8C51A0](v124, -1, -1);
    v125 = v117;
    v126 = MEMORY[0x277D84F98];
    MEMORY[0x25F8C51A0](v125, -1, -1);
  }

  else
  {

    v126 = MEMORY[0x277D84F98];
  }

  v200 = v126;
  type metadata accessor for SELFComponent.Executor();
  swift_allocObject();
  SELFComponent.Executor.init()();
  v127 = v193;
  sub_25E9D6004(&v200);
  v10 = v127;
  if (v127)
  {

    goto LABEL_43;
  }

  v129 = v128;

  v186 = v4;
  if (!v129)
  {
    v129 = sub_25E980A5C(MEMORY[0x277D84F90]);
  }

  v193 = 0;

  v200 = v129;
  v130 = sub_25E9D7F00();
  v131 = sub_25E9D8120();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    *&v205 = v192;
    *v132 = 136315138;

    v133 = sub_25E9D7F40();
    v134 = v17;
    v136 = v135;

    v137 = sub_25E9887EC(v133, v136, &v205);
    v17 = v134;

    *(v132 + 4) = v137;
    _os_log_impl(&dword_25E971000, v130, v131, "Print All Executor: %s", v132, 0xCu);
    v138 = v192;
    __swift_destroy_boxed_opaque_existential_0(v192);
    MEMORY[0x25F8C51A0](v138, -1, -1);
    MEMORY[0x25F8C51A0](v132, -1, -1);
  }

  v139 = v180;
  type metadata accessor for SELFComponent.IFTranscript();
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_25E9D9920;
  sub_25E99A324(&v205);
  swift_setDeallocating();
  sub_25E98F5A0(*(v140 + 16), *(v140 + 24));
  swift_deallocClassInstance();
  v141 = v205;

  v143 = SiriTurnGrainCalculator.computeSearchToolCrossComponentMetrics(searchToolRecords:iftEventsRecord:)(v142, &v205);

  sub_25E98F5A0(v141, *(&v141 + 1));

  v144 = v184;
  sub_25E9D7EF0();
  v192 = sub_25E9D77C0();
  v188 = v145;
  (*(v186 + 8))(v144, v194);

  v146 = v176;

  v147 = v171;

  v148 = 0;
  v149 = 0;
  if ((v172 & 0x100000000) == 0)
  {
    v148 = sub_25E9D8170();
  }

  v187 = v149;
  v194 = v148;
  v181 = v17;
  *&v166 = v129;
  *(&v166 + 1) = v143;
  v150 = v147;
  v151 = v146;
  if ((v173 & 0x100000000) != 0)
  {

    v186 = 0;
    v184 = 0;
  }

  else
  {
    v186 = sub_25E9D8160();
    v184 = v152;
  }

  LODWORD(v173) = v170 == 0;
  v153 = v175 == 0;
  v154 = v178 == 0;
  v155 = v139 == 0;
  v156 = v189 == 0;
  v157 = v168;

  v199 = v154;
  v198 = v156;
  v197 = v155;
  v196 = v153;
  v195 = v173;
  *&v205 = v192;
  *(&v205 + 1) = v188;
  v207 = v190;
  v206 = v191;
  *&v208 = v151;
  *(&v208 + 1) = v177;
  LOBYTE(v209) = v154;
  *(&v209 + 1) = v181;
  *&v210 = v185;
  BYTE8(v210) = v156;
  *&v211 = v157;
  *(&v211 + 1) = v183;
  LOBYTE(v212) = v155;
  *(&v212 + 1) = v150;
  *&v213 = v174;
  BYTE8(v213) = v153;
  v214 = v166;
  *&v215 = v169;
  BYTE8(v215) = v173;
  *&v216 = v179;
  *(&v216 + 1) = v182;
  *&v217 = v194;
  *(&v217 + 1) = v187;
  *&v218 = v186;
  *(&v218 + 1) = v184;
  nullsub_1();
  v158 = v216;
  a1[10] = v215;
  a1[11] = v158;
  v159 = v218;
  a1[12] = v217;
  a1[13] = v159;
  v160 = v212;
  a1[6] = v211;
  a1[7] = v160;
  v161 = v214;
  a1[8] = v213;
  a1[9] = v161;
  v162 = v208;
  a1[2] = v207;
  a1[3] = v162;
  v163 = v210;
  a1[4] = v209;
  a1[5] = v163;
  v164 = v206;
  *a1 = v205;
  a1[1] = v164;
}

void SiriTurnGrainCalculator.computeSRT()(uint64_t *a1@<X8>)
{
  type metadata accessor for SELFComponent.UEI();
  swift_initStackObject();
  sub_25E99701C(&v29);
  if (!v1)
  {
    v4 = v29;
    v3 = v30;
    type metadata accessor for SELFComponent.MH();
    swift_initStackObject();
    sub_25E99589C(&v29);
    v27 = v4;
    v28 = v3;
    v5 = v29;
    v6 = v30;
    swift_initStackObject();
    sub_25E9974D8(&v29);
    v8 = v29;
    v7 = v30;
    v9 = sub_25E997BF8();
    swift_initStackObject();
    sub_25E9978A0(&v29);
    v10 = v29;
    type metadata accessor for SELFComponent.ACTV();
    swift_initStackObject();
    sub_25E9D3374(&v29);
    if (v10 == 7 || (v11 = v29, v12 = v30, (sub_25E98C5E0(v10, 3u) & 1) == 0))
    {
      v14 = (v9 & 0x1FFFFFFFFLL) == 1;
      if ((v9 & 0x1FFFFFFFFLL) == 1)
      {
        v13 = v5;
      }

      else
      {
        v13 = v8;
      }

      if (v14)
      {
        v7 = v6;
      }
    }

    else
    {
      v13 = v11;
      v7 = v12;
    }

    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v15 = sub_25E9D7F10();
    __swift_project_value_buffer(v15, qword_280F6FE78);
    v16 = sub_25E9D7F00();
    v17 = sub_25E9D8120();
    if (os_log_type_enabled(v16, v17))
    {
      v26 = v13;
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v18 = 136315138;
      v29 = v26;
      v30 = v7;
      v19 = v28;
      v31 = v27;
      v32 = v28;
      v20 = PnRLatencyContextMetrics.description.getter();
      v22 = v7;
      v23 = sub_25E9887EC(v20, v21, &v33);

      *(v18 + 4) = v23;
      v7 = v22;
      _os_log_impl(&dword_25E971000, v16, v17, "Compute Metrics srt: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8C51A0](v25, -1, -1);
      v24 = v18;
      v13 = v26;
      MEMORY[0x25F8C51A0](v24, -1, -1);
    }

    else
    {

      v19 = v28;
    }

    *a1 = v13;
    a1[1] = v7;
    a1[2] = v27;
    a1[3] = v19;
  }
}

void *SiriTurnGrainCalculator.computeSearchToolCrossComponentMetrics(searchToolRecords:iftEventsRecord:)(int64_t a1, unint64_t *a2)
{
  v174 = *a2;
  v172 = a2[1];
  if (qword_280F6FE70 != -1)
  {
LABEL_151:
    swift_once();
  }

  v3 = sub_25E9D7F10();
  __swift_project_value_buffer(v3, qword_280F6FE78);
  v4 = sub_25E9D7F00();
  v5 = sub_25E9D8120();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25E971000, v4, v5, "inside computeSearchToolCrossComponentMetrics()", v6, 2u);
    MEMORY[0x25F8C51A0](v6, -1, -1);
  }

  v7 = sub_25E98017C(MEMORY[0x277D84F90]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v164 = v12;
  v165 = a1;
  for (i = a1 + 64; ; v8 = i)
  {
    if (!v11)
    {
      v14 = v174;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          return v7;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          v169 = v7;
          v13 = v15;
          goto LABEL_18;
        }
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v169 = v7;
    v14 = v174;
LABEL_18:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v175 = *v17;
    v19 = *(a1 + 56) + 304 * v16;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v170 = *(v19 + 32);
    v168 = *(v19 + 40);
    v185 = 0x5AuLL;
    v186 = 0uLL;
    v183 = 0x5AuLL;
    v22 = v20;
    v184 = 0uLL;
    v23 = v20 - 89 >= 2 && v14 >= 2;
    v173 = v18;
    if (v23)
    {
      v160 = v20;
      v31 = 1 << *(v14 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v14 + 64);
      v34 = (v31 + 63) >> 6;

      v35 = v174;
      a1 = 0;
      v36 = MEMORY[0x277D84F90];
      v166 = MEMORY[0x277D84F90];
      if (v33)
      {
LABEL_38:
        while (2)
        {
          while (1)
          {
            v37 = __clz(__rbit64(v33));
            v33 &= v33 - 1;
            v38 = *(v35 + 56) + ((a1 << 10) | (16 * v37));
            v39 = *(v38 + 8);
            if (v39 >= v21)
            {
              break;
            }

            v158 = *v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v166 = sub_25E983D78(0, *(v166 + 2) + 1, 1, v166);
            }

            v42 = *(v166 + 2);
            v41 = *(v166 + 3);
            v43 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              v156 = *(v166 + 2);
              v157 = v42 + 1;
              v48 = sub_25E983D78((v41 > 1), v42 + 1, 1, v166);
              v42 = v156;
              v43 = v157;
              v166 = v48;
            }

            *(v166 + 2) = v43;
            v44 = &v166[16 * v42];
            v44[32] = v158;
            *(v44 + 5) = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_25E983C74(0, *(v36 + 2) + 1, 1, v36);
            }

            v46 = *(v36 + 2);
            v45 = *(v36 + 3);
            v47 = v46 + 1;
            v35 = v174;
            if (v46 >= v45 >> 1)
            {
              v159 = v46 + 1;
              v49 = v36;
              v50 = *(v36 + 2);
              v51 = sub_25E983C74((v45 > 1), v46 + 1, 1, v49);
              v47 = v159;
              v46 = v50;
              v36 = v51;
              v35 = v174;
            }

            *(v36 + 2) = v47;
            *&v36[8 * v46 + 32] = v39;
            if (!v33)
            {
              goto LABEL_40;
            }
          }

          if (v33)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
      v18 = v173;
      while (1)
      {
        v40 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v40 >= v34)
        {
          break;
        }

        v33 = *(v174 + 64 + 8 * v40);
        ++a1;
        if (v33)
        {
          a1 = v40;
          goto LABEL_38;
        }
      }

      v52 = *(v36 + 2);
      if (!v52)
      {
LABEL_69:

        v68 = sub_25E9D7F00();
        v69 = sub_25E9D8120();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&__src[0] = v71;
          *v70 = 136315138;
          *(v70 + 4) = sub_25E9887EC(v175, v173, __src);
          _os_log_impl(&dword_25E971000, v68, v69, "No corresponding queriesCreated Event for searchHandleStart for %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x25F8C51A0](v71, -1, -1);
          MEMORY[0x25F8C51A0](v70, -1, -1);
        }

        goto LABEL_76;
      }

      v53 = *(v36 + 4);
      v54 = v52 - 1;
      if (v52 != 1)
      {
        if (v52 >= 5)
        {
          v55 = v54 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v56 = vdupq_n_s64(v53);
          v57 = (v36 + 56);
          v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
          v59 = v56;
          do
          {
            v56 = vbslq_s8(vcgtq_u64(v56, v57[-1]), v56, v57[-1]);
            v59 = vbslq_s8(vcgtq_u64(v59, *v57), v59, *v57);
            v57 += 2;
            v58 -= 4;
          }

          while (v58);
          v60 = vbslq_s8(vcgtq_u64(v56, v59), v56, v59);
          v61 = vextq_s8(v60, v60, 8uLL).u64[0];
          v53 = vbsl_s8(vcgtd_u64(v60.u64[0], v61), *v60.i8, v61);
          if (v54 != (v54 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_62;
          }
        }

        else
        {
          v55 = 1;
LABEL_62:
          v62 = v52 - v55;
          v63 = &v36[8 * v55 + 32];
          do
          {
            v65 = *v63++;
            v64 = v65;
            if (v53 <= v65)
            {
              v53 = v64;
            }

            --v62;
          }

          while (v62);
        }
      }

      v66 = 0;
      v67 = (v166 + 40);
      while (*&v36[8 * v66 + 32] != v53)
      {
        ++v66;
        v67 += 2;
        if (v52 == v66)
        {
          goto LABEL_69;
        }
      }

      if (v66 >= *(v166 + 2))
      {
        goto LABEL_153;
      }

      v72 = *(v67 - 8);
      v73 = *v67;
      swift_beginAccess();
      *&v185 = v72;
      *(&v185 + 1) = v73;
      *&v186 = v160;
      *(&v186 + 1) = v21;

      v74 = sub_25E9D7F00();
      v75 = sub_25E9D8120();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        *&v181[0] = v161;
        *v76 = 136315394;
        *(v76 + 4) = sub_25E9887EC(v175, v173, v181);
        *(v76 + 12) = 2080;
        __src[0] = v185;
        __src[1] = v186;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D930, &qword_25E9D9950);
        v77 = sub_25E9D81B0();
        v79 = sub_25E9887EC(v77, v78, v181);

        *(v76 + 14) = v79;
        _os_log_impl(&dword_25E971000, v74, v75, "Computed preSearchTime for searchToolID %s and is %s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v161, -1, -1);
        MEMORY[0x25F8C51A0](v76, -1, -1);
      }

LABEL_76:
      v28 = v172;
      if (v170 != 89 && v172)
      {
LABEL_78:
        v80 = 1 << *(v28 + 32);
        v81 = *(v28 + 64);
        if (v80 < 64)
        {
          v82 = ~(-1 << v80);
        }

        else
        {
          v82 = -1;
        }

        v83 = v82 & v81;
        a1 = (v80 + 63) >> 6;

        v84 = v172;
        v85 = 0;
        v86 = MEMORY[0x277D84F90];
        v167 = MEMORY[0x277D84F90];
        for (j = v168; v83; *&v86[8 * v97 + 32] = v90)
        {
LABEL_82:
          while (1)
          {
            v88 = __clz(__rbit64(v83));
            v83 &= v83 - 1;
            v89 = *(v84 + 56) + ((v85 << 10) | (16 * v88));
            v90 = *(v89 + 8);
            if (j < v90)
            {
              break;
            }

            if (!v83)
            {
              goto LABEL_84;
            }
          }

          v162 = *v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_25E983D78(0, *(v167 + 2) + 1, 1, v167);
          }

          v93 = *(v167 + 2);
          v92 = *(v167 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v99 = sub_25E983D78((v92 > 1), v93 + 1, 1, v167);
            v94 = v93 + 1;
            v167 = v99;
          }

          *(v167 + 2) = v94;
          v95 = &v167[16 * v93];
          v95[32] = v162;
          *(v95 + 5) = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_25E983C74(0, *(v86 + 2) + 1, 1, v86);
          }

          v97 = *(v86 + 2);
          v96 = *(v86 + 3);
          v98 = v97 + 1;
          v84 = v172;
          j = v168;
          if (v97 >= v96 >> 1)
          {
            v100 = sub_25E983C74((v96 > 1), v97 + 1, 1, v86);
            v98 = v97 + 1;
            j = v168;
            v86 = v100;
            v84 = v172;
          }

          *(v86 + 2) = v98;
        }

LABEL_84:
        v18 = v173;
        while (1)
        {
          v91 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            goto LABEL_148;
          }

          if (v91 >= a1)
          {
            break;
          }

          v83 = *(v172 + 64 + 8 * v91);
          ++v85;
          if (v83)
          {
            v85 = v91;
            goto LABEL_82;
          }
        }

        v105 = *(v86 + 2);
        if (!v105)
        {
LABEL_116:

          v121 = sub_25E9D7F00();
          v122 = sub_25E9D8120();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *&__src[0] = v124;
            *v123 = 136315138;
            *(v123 + 4) = sub_25E9887EC(v175, v173, __src);
            _os_log_impl(&dword_25E971000, v121, v122, "No corresponding queriesCreated Event for searchHandleStart for %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v124);
            MEMORY[0x25F8C51A0](v124, -1, -1);
            MEMORY[0x25F8C51A0](v123, -1, -1);
          }

          goto LABEL_123;
        }

        v106 = *(v86 + 4);
        v107 = v105 - 1;
        if (v105 != 1)
        {
          if (v105 >= 5)
          {
            v108 = v107 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v109 = vdupq_n_s64(v106);
            v110 = (v86 + 56);
            v111 = v107 & 0xFFFFFFFFFFFFFFFCLL;
            v112 = v109;
            do
            {
              v109 = vbslq_s8(vcgtq_u64(v109, v110[-1]), v110[-1], v109);
              v112 = vbslq_s8(vcgtq_u64(v112, *v110), *v110, v112);
              v110 += 2;
              v111 -= 4;
            }

            while (v111);
            v113 = vbslq_s8(vcgtq_u64(v112, v109), v109, v112);
            v114 = vextq_s8(v113, v113, 8uLL).u64[0];
            v106 = vbsl_s8(vcgtd_u64(v114, v113.u64[0]), *v113.i8, v114);
            if (v107 != (v107 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v108 = 1;
LABEL_109:
            v115 = v105 - v108;
            v116 = &v86[8 * v108 + 32];
            do
            {
              v118 = *v116;
              v116 += 8;
              v117 = v118;
              if (v118 < v106)
              {
                v106 = v117;
              }

              --v115;
            }

            while (v115);
          }
        }

        v119 = 0;
        v120 = (v167 + 40);
        while (*&v86[8 * v119 + 32] != v106)
        {
          ++v119;
          v120 += 2;
          if (v105 == v119)
          {
            goto LABEL_116;
          }
        }

        if (v119 < *(v167 + 2))
        {
          v125 = *(v120 - 8);
          v126 = *v120;
          swift_beginAccess();
          *&v183 = v170;
          *(&v183 + 1) = v168;
          *&v184 = v125;
          *(&v184 + 1) = v126;

          v127 = sub_25E9D7F00();
          v128 = sub_25E9D8120();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            *&v181[0] = v171;
            *v129 = 136315394;
            *(v129 + 4) = sub_25E9887EC(v175, v173, v181);
            *(v129 + 12) = 2080;
            __src[0] = v183;
            __src[1] = v184;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D930, &qword_25E9D9950);
            v130 = sub_25E9D81B0();
            v132 = sub_25E9887EC(v130, v131, v181);

            *(v129 + 14) = v132;
            _os_log_impl(&dword_25E971000, v127, v128, "Computed postSearchTime for searchToolID %s and is %s", v129, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F8C51A0](v171, -1, -1);
            MEMORY[0x25F8C51A0](v129, -1, -1);
          }

          goto LABEL_123;
        }

        goto LABEL_154;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v24 = sub_25E9D7F00();
      v25 = sub_25E9D8120();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&__src[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_25E9887EC(v175, v18, __src);
        _os_log_impl(&dword_25E971000, v24, v25, "preSearchTime: no start/end events found for searchToolId %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x25F8C51A0](v27, -1, -1);
        MEMORY[0x25F8C51A0](v26, -1, -1);
      }

      v28 = v172;
      if (v22 != 90)
      {
        v29 = v170 == 89 || v174 == 1;
        if (!v29 && v172 != 0)
        {
          goto LABEL_78;
        }
      }
    }

    v101 = sub_25E9D7F00();
    v102 = sub_25E9D8120();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&__src[0] = v104;
      *v103 = 136315138;
      *(v103 + 4) = sub_25E9887EC(v175, v18, __src);
      _os_log_impl(&dword_25E971000, v101, v102, "postSearchTime: no start/end events found for searchToolId %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x25F8C51A0](v104, -1, -1);
      MEMORY[0x25F8C51A0](v103, -1, -1);
    }

LABEL_123:
    a1 = v165;
    v7 = v169;
    if (*(v165 + 16) && (v133 = sub_25E978F5C(v175, v18), (v134 & 1) != 0))
    {
      v135 = (*(v165 + 56) + 304 * v133);
      memcpy(v181, v135, sizeof(v181));
      memmove(__src, v135, 0x130uLL);
      nullsub_1();
      sub_25E97F4EC(v181, v180);
    }

    else
    {
      sub_25E97F43C(v181);
      memcpy(__src, v181, sizeof(__src));
    }

    memcpy(v181, __src, sizeof(v181));
    if (sub_25E97F474(v181) != 1)
    {
      swift_beginAccess();
      __src[15] = v185;
      __src[16] = v186;
    }

    memcpy(v180, __src, sizeof(v180));
    if (sub_25E97F474(v180) != 1)
    {
      swift_beginAccess();
      __src[17] = v183;
      __src[18] = v184;
    }

    memcpy(v178, __src, sizeof(v178));
    memcpy(v179, __src, sizeof(v179));
    if (sub_25E97F474(v179) != 1)
    {
      break;
    }

    v136 = sub_25E978F5C(v175, v18);
    v138 = v137;

    if (v138)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v169;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25E97D76C();
        v7 = v176[0];
      }

      memcpy(__dst, (v7[7] + 304 * v136), sizeof(__dst));
      sub_25E97F498(__dst);
      sub_25E97C530(v136, v7);
    }

    v12 = v164;
LABEL_10:
    v11 &= v11 - 1;
    memcpy(__dst, __src, sizeof(__dst));
    sub_25E98F63C(__dst);
  }

  memcpy(__dst, v178, sizeof(__dst));
  sub_25E97F4EC(__dst, v176);
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v141 = sub_25E978F5C(v175, v18);
  v143 = v169[2];
  v144 = (v142 & 1) == 0;
  v145 = __OFADD__(v143, v144);
  v146 = v143 + v144;
  if (v145)
  {
    goto LABEL_150;
  }

  v147 = v142;
  if (v169[3] >= v146)
  {
    v12 = v164;
    if (v140)
    {
      if (v142)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v151 = v141;
      sub_25E97D76C();
      v12 = v164;
      v141 = v151;
      if (v147)
      {
        goto LABEL_142;
      }
    }
  }

  else
  {
    sub_25E979724(v146, v140);
    v141 = sub_25E978F5C(v175, v18);
    if ((v147 & 1) != (v148 & 1))
    {
      goto LABEL_155;
    }

    v12 = v164;
    if (v147)
    {
LABEL_142:
      v149 = v141;

      v7 = v169;
      v150 = (v169[7] + 304 * v149);
      memcpy(v176, v150, sizeof(v176));
      memcpy(v150, v178, 0x130uLL);
      sub_25E97F498(v176);
      goto LABEL_10;
    }
  }

  v7 = v169;
  v169[(v141 >> 6) + 8] |= 1 << v141;
  v152 = (v169[6] + 16 * v141);
  *v152 = v175;
  v152[1] = v18;
  memcpy((v169[7] + 304 * v141), v178, 0x130uLL);
  v153 = v169[2];
  v145 = __OFADD__(v153, 1);
  v154 = v153 + 1;
  if (!v145)
  {
    v169[2] = v154;
    goto LABEL_10;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  result = sub_25E9D8330();
  __break(1u);
  return result;
}

double sub_25E98F52C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}

uint64_t sub_25E98F558(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25E98F5A0(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25E98F5E4()
{
  result = qword_27FD0D798;
  if (!qword_27FD0D798)
  {
    sub_25E9D77F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D798);
  }

  return result;
}

uint64_t sub_25E98F63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D698, &qword_25E9D90E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SELFProcessedStreamTurnReader(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SELFProcessedStreamTurnReader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E98F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_25E994254(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_25E978F5C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_25E97E32C();
        v16 = v18;
      }

      result = sub_25E97CA14(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_25E98F84C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_25E97F474(__dst) == 1)
  {
    sub_25E988F30(a2, a3, v9);

    memcpy(v11, v9, sizeof(v11));
    return sub_25E981210(v11, &qword_27FD0D938, &qword_25E9D9998);
  }

  else
  {
    memcpy(v11, __src, sizeof(v11));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *v3;
    sub_25E9943A4(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9[0];
  }

  return result;
}

uint64_t sub_25E98F93C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_25E994EC4(__dst) == 1)
  {
    sub_25E988FFC(a2, a3, v11);
  }

  else
  {
    memcpy(v11, __src, sizeof(v11));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_25E994674(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_25E98FA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v10 = sub_25E978F5C(a2, a3);
    v12 = v11;

    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25E97EBA0();
        v14 = v16;
      }

      result = sub_25E97D0E0(v10, v14);
      *v4 = v14;
    }
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25E994908(a1, a2, a3, v8, sub_25E97EBA0, sub_25E97B9F4, sub_25E99B4F8);

    *v3 = v15;
  }

  return result;
}

double SELFComponent.PlanGeneration.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

double SELFComponent.PlanGeneration.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_25E98FB88()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98FC58();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E98FC58()
{
  result = qword_27FD0D918;
  if (!qword_27FD0D918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D918);
  }

  return result;
}

void sub_25E98FCA4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v251 = MEMORY[0x28223BE20](a1);
  if (qword_27FD0D5C0 != -1)
  {
LABEL_326:
    swift_once();
  }

  v5 = sub_25E9D7F10();
  __swift_project_value_buffer(v5, qword_27FD0DB78);
  v6 = sub_25E9D7F00();
  v7 = sub_25E9D8120();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25E971000, v6, v7, "Start: computePlanGenerationMetrics", v8, 2u);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  sub_25E991FB4();
  if (!v3)
  {
    if (v4[2])
    {
      v9 = v4[2];
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = *(v9 + 16);
    if (v10)
    {

      v11 = 0;
      v12 = (v9 + 40);
      v217 = v10 - 1;
      v13 = 0x280F6F000uLL;
      v218 = v9;
      v219 = v5;
      while (1)
      {
        v250 = v11;
        v14 = *v12;
        v269 = *(v12 - 1);
        v248 = v12;
        v15 = v4[3];
        if (!v15 || !v4[4])
        {
          v27 = *(v13 + 3696);

          if (v27 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v28 = sub_25E9D7F00();
          v29 = sub_25E9D8120();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&dword_25E971000, v28, v29, "pgFullPlannerHandleTime: PRRequestContextStart or PRRequestContextEnd or both missing!", v30, 2u);
            goto LABEL_30;
          }

LABEL_31:

          v240 = 0;
          v241 = 0;
          v242 = 90;
          v243 = 0;
          goto LABEL_32;
        }

        v16 = *(v15 + 16);

        if (!v16 || (, sub_25E978F5C(v269, v14), v18 = v17, , (v18 & 1) == 0) || (v19 = v4[4]) == 0 || !*(v19 + 16) || (, sub_25E978F5C(v269, v14), v21 = v20, , (v21 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v28 = sub_25E9D7F00();
          v31 = sub_25E9D8120();

          if (os_log_type_enabled(v28, v31))
          {
            v30 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v267[0] = v32;
            *v30 = 136315138;
            *(v30 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v28, v31, "pgFullPlannerHandleTime: no start/end events found for planCycleId %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            v33 = v32;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v33, -1, -1);
LABEL_30:
            MEMORY[0x25F8C51A0](v30, -1, -1);
          }

          goto LABEL_31;
        }

        v22 = v4[3];
        if (!v22 || !*(v22 + 16))
        {
          goto LABEL_274;
        }

        v23 = sub_25E978F5C(v269, v14);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = (*(v22 + 56) + 16 * v23);
        v242 = *v25;
        v243 = *(v25 + 1);

        v26 = v4[4];
        if (!v26)
        {
          goto LABEL_309;
        }

LABEL_275:
        if (!*(v26 + 16))
        {
          goto LABEL_309;
        }

        v196 = sub_25E978F5C(v269, v14);
        if ((v197 & 1) == 0)
        {

LABEL_309:
          v240 = 89;
          v241 = 0;
          goto LABEL_32;
        }

        v198 = (*(v26 + 56) + 16 * v196);
        v240 = *v198;
        v241 = *(v198 + 1);

LABEL_32:
        v34 = v4[15];
        if (!v34 || !v4[16])
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v45 = sub_25E9D7F00();
          v46 = sub_25E9D8120();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_25E971000, v45, v46, "pgPlanGenTotalTime: pgGeneratePlanContextStart or pgGeneratePlanContextEnd or both missing!", v47, 2u);
            goto LABEL_52;
          }

LABEL_53:

          v236 = 0;
          v237 = 0;
          v238 = 90;
          v239 = 0;
          goto LABEL_54;
        }

        if (!*(v34 + 16) || (, sub_25E978F5C(v269, v14), v36 = v35, , (v36 & 1) == 0) || (v37 = v4[16]) == 0 || !*(v37 + 16) || (, sub_25E978F5C(v269, v14), v39 = v38, , (v39 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v45 = sub_25E9D7F00();
          v48 = sub_25E9D8120();

          if (os_log_type_enabled(v45, v48))
          {
            v47 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v267[0] = v49;
            *v47 = 136315138;
            *(v47 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v45, v48, "pgPlanGenTotalTime: no start/end events found for planCycleId %s", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);
            v50 = v49;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v50, -1, -1);
LABEL_52:
            MEMORY[0x25F8C51A0](v47, -1, -1);
          }

          goto LABEL_53;
        }

        v40 = v4[15];
        if (!v40 || !*(v40 + 16))
        {
          goto LABEL_279;
        }

        v41 = sub_25E978F5C(v269, v14);
        if ((v42 & 1) == 0)
        {

LABEL_279:
          v238 = 89;
          v239 = 0;
          v44 = v4[16];
          if (!v44)
          {
            goto LABEL_311;
          }

          goto LABEL_280;
        }

        v43 = (*(v40 + 56) + 16 * v41);
        v238 = *v43;
        v239 = *(v43 + 1);

        v44 = v4[16];
        if (!v44)
        {
          goto LABEL_311;
        }

LABEL_280:
        if (!*(v44 + 16))
        {
          goto LABEL_311;
        }

        v199 = sub_25E978F5C(v269, v14);
        if ((v200 & 1) == 0)
        {

LABEL_311:
          v236 = 89;
          v237 = 0;
          goto LABEL_54;
        }

        v201 = (*(v44 + 56) + 16 * v199);
        v236 = *v201;
        v237 = *(v201 + 1);

LABEL_54:
        v51 = v4[5];
        if (!v51 || !v4[6])
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v62 = sub_25E9D7F00();
          v63 = sub_25E9D8120();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_25E971000, v62, v63, "pgModelInferenceTime: pgModelInferenceContextStart or pgModelInferenceContextEnd or both missing!", v64, 2u);
            goto LABEL_74;
          }

LABEL_75:

          v232 = 0;
          v233 = 0;
          v234 = 90;
          v235 = 0;
          goto LABEL_76;
        }

        if (!*(v51 + 16) || (, sub_25E978F5C(v269, v14), v53 = v52, , (v53 & 1) == 0) || (v54 = v4[6]) == 0 || !*(v54 + 16) || (, sub_25E978F5C(v269, v14), v56 = v55, , (v56 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v62 = sub_25E9D7F00();
          v65 = sub_25E9D8120();

          if (os_log_type_enabled(v62, v65))
          {
            v64 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v267[0] = v66;
            *v64 = 136315138;
            *(v64 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v62, v65, "pgModelInferenceTime: no start/end events found for planCycleId %s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v66);
            v67 = v66;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v67, -1, -1);
LABEL_74:
            MEMORY[0x25F8C51A0](v64, -1, -1);
          }

          goto LABEL_75;
        }

        v57 = v4[5];
        if (!v57 || !*(v57 + 16))
        {
          goto LABEL_284;
        }

        v58 = sub_25E978F5C(v269, v14);
        if ((v59 & 1) == 0)
        {

LABEL_284:
          v234 = 89;
          v235 = 0;
          v61 = v4[6];
          if (!v61)
          {
            goto LABEL_313;
          }

          goto LABEL_285;
        }

        v60 = (*(v57 + 56) + 16 * v58);
        v234 = *v60;
        v235 = *(v60 + 1);

        v61 = v4[6];
        if (!v61)
        {
          goto LABEL_313;
        }

LABEL_285:
        if (!*(v61 + 16))
        {
          goto LABEL_313;
        }

        v202 = sub_25E978F5C(v269, v14);
        if ((v203 & 1) == 0)
        {

LABEL_313:
          v232 = 89;
          v233 = 0;
          goto LABEL_76;
        }

        v204 = (*(v61 + 56) + 16 * v202);
        v232 = *v204;
        v233 = *(v204 + 1);

LABEL_76:
        v68 = v4[3];
        if (!v68 || !v4[5])
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v79 = sub_25E9D7F00();
          v80 = sub_25E9D8120();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_25E971000, v79, v80, "pgFullPlannerPreInferenceTime: pgRequestContextStart or pgModelInferenceContextStart or both missing!", v81, 2u);
            goto LABEL_96;
          }

LABEL_97:

          v228 = 0;
          v229 = 0;
          v230 = 90;
          v231 = 0;
          goto LABEL_98;
        }

        if (!*(v68 + 16) || (, sub_25E978F5C(v269, v14), v70 = v69, , (v70 & 1) == 0) || (v71 = v4[5]) == 0 || !*(v71 + 16) || (, sub_25E978F5C(v269, v14), v73 = v72, , (v73 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v79 = sub_25E9D7F00();
          v82 = sub_25E9D8120();

          if (os_log_type_enabled(v79, v82))
          {
            v81 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v267[0] = v83;
            *v81 = 136315138;
            *(v81 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v79, v82, "pgFullPlannerPreInferenceTime: no start/end events found for planCycleId %s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v83);
            v84 = v83;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v84, -1, -1);
LABEL_96:
            MEMORY[0x25F8C51A0](v81, -1, -1);
          }

          goto LABEL_97;
        }

        v74 = v4[3];
        if (!v74 || !*(v74 + 16))
        {
          goto LABEL_289;
        }

        v75 = sub_25E978F5C(v269, v14);
        if ((v76 & 1) == 0)
        {

LABEL_289:
          v230 = 89;
          v231 = 0;
          v78 = v4[5];
          if (!v78)
          {
            goto LABEL_315;
          }

          goto LABEL_290;
        }

        v77 = (*(v74 + 56) + 16 * v75);
        v230 = *v77;
        v231 = *(v77 + 1);

        v78 = v4[5];
        if (!v78)
        {
          goto LABEL_315;
        }

LABEL_290:
        if (!*(v78 + 16))
        {
          goto LABEL_315;
        }

        v205 = sub_25E978F5C(v269, v14);
        if ((v206 & 1) == 0)
        {

LABEL_315:
          v228 = 89;
          v229 = 0;
          goto LABEL_98;
        }

        v207 = (*(v78 + 56) + 16 * v205);
        v228 = *v207;
        v229 = *(v207 + 1);

LABEL_98:
        v85 = v4[6];
        if (!v85 || !v4[4])
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v96 = sub_25E9D7F00();
          v97 = sub_25E9D8120();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            *v98 = 0;
            _os_log_impl(&dword_25E971000, v96, v97, "pgFullPlannerPostInferenceTime: pgModelInferenceContextEnd or pgRequestContextEnd or both missing!", v98, 2u);
            goto LABEL_118;
          }

LABEL_119:

          v224 = 0;
          v225 = 0;
          v226 = 90;
          v227 = 0;
          goto LABEL_120;
        }

        if (!*(v85 + 16) || (, sub_25E978F5C(v269, v14), v87 = v86, , (v87 & 1) == 0) || (v88 = v4[4]) == 0 || !*(v88 + 16) || (, sub_25E978F5C(v269, v14), v90 = v89, , (v90 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v96 = sub_25E9D7F00();
          v99 = sub_25E9D8120();

          if (os_log_type_enabled(v96, v99))
          {
            v98 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v267[0] = v100;
            *v98 = 136315138;
            *(v98 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v96, v99, "pgFullPlannerPostInferenceTime: no start/end events found for planCycleId %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v100);
            v101 = v100;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v101, -1, -1);
LABEL_118:
            MEMORY[0x25F8C51A0](v98, -1, -1);
          }

          goto LABEL_119;
        }

        v91 = v4[6];
        if (!v91 || !*(v91 + 16))
        {
          goto LABEL_294;
        }

        v92 = sub_25E978F5C(v269, v14);
        if ((v93 & 1) == 0)
        {

LABEL_294:
          v226 = 89;
          v227 = 0;
          v95 = v4[4];
          if (!v95)
          {
            goto LABEL_317;
          }

          goto LABEL_295;
        }

        v94 = (*(v91 + 56) + 16 * v92);
        v226 = *v94;
        v227 = *(v94 + 1);

        v95 = v4[4];
        if (!v95)
        {
          goto LABEL_317;
        }

LABEL_295:
        if (*(v95 + 16))
        {

          v208 = sub_25E978F5C(v269, v14);
          if (v209)
          {
            v210 = (*(v95 + 56) + 16 * v208);
            v224 = *v210;
            v225 = *(v210 + 1);

            goto LABEL_120;
          }
        }

LABEL_317:
        v224 = 89;
        v225 = 0;
LABEL_120:
        if (!v4[7])
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v109 = sub_25E9D7F00();
          v110 = sub_25E9D8120();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_25E971000, v109, v110, "pgModelInterfaceDim pgModelInterface events missing!", v111, 2u);
            goto LABEL_139;
          }

LABEL_140:

LABEL_141:
          v247 = 0;
          v105 = v4[8];
          if (!v105)
          {
            goto LABEL_127;
          }

          goto LABEL_142;
        }

        v102 = sub_25E981270();

        if ((v102 & 0x100000000) != 0)
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v109 = sub_25E9D7F00();
          v112 = sub_25E9D8120();

          if (os_log_type_enabled(v109, v112))
          {
            v111 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v267[0] = v113;
            *v111 = 136315138;
            *(v111 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v109, v112, "pgModelInterface events not found for planCycleId %s", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v113);
            v114 = v113;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v114, -1, -1);
LABEL_139:
            MEMORY[0x25F8C51A0](v111, -1, -1);
          }

          goto LABEL_140;
        }

        if (!v4[7])
        {
          goto LABEL_141;
        }

        v103 = sub_25E981270();

        if ((v103 & 0x100000000) != 0)
        {
          v104 = 0;
        }

        else
        {
          v104 = v103;
        }

        v247 = v104;
        v105 = v4[8];
        if (!v105)
        {
LABEL_127:
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v106 = sub_25E9D7F00();
          v107 = sub_25E9D8120();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&dword_25E971000, v106, v107, "pgModelIdentifierDim pgModelInterface events missing!", v108, 2u);
            goto LABEL_150;
          }

          goto LABEL_151;
        }

LABEL_142:

        sub_25E976E70(v269, v14, v105);
        v116 = v115;

        if (!v116)
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v106 = sub_25E9D7F00();
          v120 = sub_25E9D8120();

          if (os_log_type_enabled(v106, v120))
          {
            v108 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v267[0] = v121;
            *v108 = 136315138;
            *(v108 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v106, v120, "pgModelIdentifier events not found for planCycleId %s", v108, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v121);
            v122 = v121;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v122, -1, -1);
LABEL_150:
            MEMORY[0x25F8C51A0](v108, -1, -1);
          }

LABEL_151:

          goto LABEL_152;
        }

        v117 = v4[8];
        if (v117)
        {

          v246 = sub_25E976E70(v269, v14, v117);
          v249 = v118;

          v119 = v4[9];
          if (!v119)
          {
            goto LABEL_164;
          }

          goto LABEL_153;
        }

LABEL_152:
        v246 = 0;
        v249 = 0;
        v119 = v4[9];
        if (!v119)
        {
          goto LABEL_164;
        }

LABEL_153:
        if (!v4[10])
        {
LABEL_164:
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v133 = sub_25E9D7F00();
          v134 = sub_25E9D8120();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&dword_25E971000, v133, v134, "pgOverridesTime: pgOverridesRequestContextStart or pgOverridesRequestContextEnd or both missing!", v135, 2u);
            v136 = v135;
            goto LABEL_172;
          }

LABEL_173:

          v220 = 0;
          v221 = 0;
          v222 = 90;
          v223 = 0;
          goto LABEL_174;
        }

        if (!*(v119 + 16) || (, sub_25E978F5C(v269, v14), v124 = v123, , (v124 & 1) == 0) || (v125 = v4[10]) == 0 || !*(v125 + 16) || (, sub_25E978F5C(v269, v14), v127 = v126, , (v127 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v133 = sub_25E9D7F00();
          v137 = sub_25E9D8120();

          if (os_log_type_enabled(v133, v137))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v267[0] = v139;
            *v138 = 136315138;
            *(v138 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v133, v137, "pgOverridesTime: no start/end events found for planCycleId %s", v138, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v139);
            v140 = v139;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v140, -1, -1);
            v136 = v138;
LABEL_172:
            MEMORY[0x25F8C51A0](v136, -1, -1);
          }

          goto LABEL_173;
        }

        v128 = v4[9];
        if (!v128 || !*(v128 + 16))
        {
          goto LABEL_299;
        }

        v129 = sub_25E978F5C(v269, v14);
        if ((v130 & 1) == 0)
        {

LABEL_299:
          v222 = 89;
          v223 = 0;
          v132 = v4[10];
          if (!v132)
          {
            goto LABEL_319;
          }

          goto LABEL_300;
        }

        v131 = (*(v128 + 56) + 16 * v129);
        v222 = *v131;
        v223 = *(v131 + 1);

        v132 = v4[10];
        if (!v132)
        {
          goto LABEL_319;
        }

LABEL_300:
        if (*(v132 + 16))
        {

          v211 = sub_25E978F5C(v269, v14);
          if (v212)
          {
            v213 = (*(v132 + 56) + 16 * v211);
            v220 = *v213;
            v221 = *(v213 + 1);

            goto LABEL_174;
          }
        }

LABEL_319:
        v220 = 89;
        v221 = 0;
LABEL_174:
        v141 = v4[12];
        if (!v141)
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v152 = sub_25E9D7F00();
          v153 = sub_25E9D8120();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            *v154 = 0;
            _os_log_impl(&dword_25E971000, v152, v153, "pgOverridesAssetVersionDim pgOverridesAssetVersion events missing!", v154, 2u);
            v155 = v154;
            goto LABEL_191;
          }

LABEL_192:

          goto LABEL_193;
        }

        sub_25E976E70(v269, v14, v141);
        v143 = v142;

        if (!v143)
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v152 = sub_25E9D7F00();
          v156 = sub_25E9D8120();

          if (os_log_type_enabled(v152, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v267[0] = v158;
            *v157 = 136315138;
            *(v157 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v152, v156, "pgOverridesMatched events not found for planCycleId %s", v157, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v158);
            v159 = v158;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v159, -1, -1);
            v155 = v157;
LABEL_191:
            MEMORY[0x25F8C51A0](v155, -1, -1);
          }

          goto LABEL_192;
        }

        v144 = v4[12];
        if (v144)
        {

          v245 = sub_25E976E70(v269, v14, v144);
          v146 = v145;

          v147 = v4[11];
          if (!v147)
          {
            goto LABEL_178;
          }

          goto LABEL_194;
        }

LABEL_193:
        v245 = 0;
        v146 = 0;
        v147 = v4[11];
        if (!v147)
        {
LABEL_178:
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v148 = sub_25E9D7F00();
          v149 = sub_25E9D8120();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            *v150 = 0;
            _os_log_impl(&dword_25E971000, v148, v149, "pgOverridesMatchedDim pgOverridesMatched events missing!", v150, 2u);
            v151 = v150;
            v13 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v151, -1, -1);
          }

LABEL_204:
          v244 = 0;
          v165 = v4[13];
          if (!v165)
          {
            goto LABEL_216;
          }

          goto LABEL_205;
        }

LABEL_194:

        v160 = sub_25E976ED4(v269, v14, v147);

        if (v160 != 2)
        {
          v166 = v4[11];
          if (v166)
          {

            v244 = sub_25E976ED4(v269, v14, v166);

            v165 = v4[13];
            if (!v165)
            {
              goto LABEL_216;
            }

            goto LABEL_205;
          }

          goto LABEL_204;
        }

        if (*(v13 + 3696) != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v5, qword_280F6FE78);

        v161 = sub_25E9D7F00();
        v162 = sub_25E9D8120();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v267[0] = v164;
          *v163 = 136315138;
          *(v163 + 4) = sub_25E9887EC(v269, v14, v267);
          _os_log_impl(&dword_25E971000, v161, v162, "pgOverridesMatched events not found for planCycleId %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v164);
          MEMORY[0x25F8C51A0](v164, -1, -1);
          MEMORY[0x25F8C51A0](v163, -1, -1);
        }

        v244 = 0;
        v13 = 0x280F6F000uLL;
        v165 = v4[13];
        if (!v165)
        {
LABEL_216:
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v179 = sub_25E9D7F00();
          v180 = sub_25E9D8120();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            *v181 = 0;
            _os_log_impl(&dword_25E971000, v179, v180, "pgPrescribedPlanTime pgPrescribedPlanRequestContextStart or pgPrescribedPlanRequestContextEnd or both missing!", v181, 2u);
            v182 = v181;
            goto LABEL_224;
          }

LABEL_225:

          v177 = 0;
          v186 = 0;
          v187 = 0;
          v176 = 90;
          goto LABEL_226;
        }

LABEL_205:
        if (!v4[14])
        {
          goto LABEL_216;
        }

        if (!*(v165 + 16) || (, sub_25E978F5C(v269, v14), v168 = v167, , (v168 & 1) == 0) || (v169 = v4[14]) == 0 || !*(v169 + 16) || (, sub_25E978F5C(v269, v14), v171 = v170, , (v171 & 1) == 0))
        {
          if (*(v13 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v179 = sub_25E9D7F00();
          v183 = sub_25E9D8120();

          if (os_log_type_enabled(v179, v183))
          {
            v184 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            v267[0] = v185;
            *v184 = 136315138;
            *(v184 + 4) = sub_25E9887EC(v269, v14, v267);
            _os_log_impl(&dword_25E971000, v179, v183, "pgPrescribedPlanTime: no start/end events found for planCycleId %s", v184, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v185);
            MEMORY[0x25F8C51A0](v185, -1, -1);
            v182 = v184;
LABEL_224:
            MEMORY[0x25F8C51A0](v182, -1, -1);
          }

          goto LABEL_225;
        }

        v172 = v4[13];
        if (!v172 || !*(v172 + 16))
        {
          goto LABEL_304;
        }

        v173 = sub_25E978F5C(v269, v14);
        if ((v174 & 1) == 0)
        {

LABEL_304:
          v177 = 0;
          v176 = 89;
          v178 = v4[14];
          if (!v178)
          {
            goto LABEL_321;
          }

          goto LABEL_305;
        }

        v175 = (*(v172 + 56) + 16 * v173);
        v176 = *v175;
        v177 = *(v175 + 1);

        v178 = v4[14];
        if (!v178)
        {
          goto LABEL_321;
        }

LABEL_305:
        if (*(v178 + 16))
        {

          v214 = sub_25E978F5C(v269, v14);
          if (v215)
          {
            v216 = (*(v178 + 56) + 16 * v214);
            v186 = *v216;
            v187 = *(v216 + 1);

            goto LABEL_226;
          }
        }

LABEL_321:
        v187 = 0;
        v186 = 89;
LABEL_226:
        v188 = *v251;
        if (*(*v251 + 16) && (v189 = sub_25E978F5C(v269, v14), (v190 & 1) != 0))
        {
          v191 = (*(v188 + 56) + 288 * v189);
          memcpy(v266, v191, sizeof(v266));
          memmove(v267, v191, 0x120uLL);
          nullsub_1();
          sub_25E981038(v266, __dst);
        }

        else
        {
          sub_25E98B4E0(v266);
          memcpy(v267, v266, sizeof(v267));
        }

        memcpy(v266, v267, sizeof(v266));
        if (sub_25E97F474(v266) == 1)
        {
          v263[0] = 0;
          __src[0] = xmmword_25E9D90A0;
          LODWORD(__src[1]) = 0;
          BYTE4(__src[1]) = 0;
          *(&__src[1] + 8) = xmmword_25E9D90A0;
          *(&__src[2] + 8) = xmmword_25E9D90A0;
          BYTE8(__src[3]) = 0;
          __src[5] = 0uLL;
          __src[4] = 0x5AuLL;
          __src[6] = 0x5AuLL;
          __src[7] = 0uLL;
          __src[9] = 0uLL;
          __src[8] = 0x5AuLL;
          __src[10] = 0x5AuLL;
          __src[11] = 0uLL;
          __src[13] = 0uLL;
          __src[12] = 0x5AuLL;
          __src[14] = 0x5AuLL;
          __src[15] = 0uLL;
          __src[16] = 0x5AuLL;
          __src[17] = 0uLL;
          nullsub_1();
          memcpy(__dst, v267, sizeof(__dst));
          sub_25E981210(__dst, &qword_27FD0D938, &qword_25E9D9998);
          memcpy(v267, __src, sizeof(v267));
        }

        memcpy(__dst, v267, sizeof(__dst));
        if (sub_25E97F474(__dst) != 1)
        {

          v267[0] = v269;
          v267[1] = v14;
        }

        memcpy(__src, v267, sizeof(__src));
        if (sub_25E97F474(__src) != 1)
        {
          LODWORD(v267[2]) = v247;
          BYTE4(v267[2]) = 0;
        }

        memcpy(v263, v267, sizeof(v263));
        if (sub_25E97F474(v263) == 1)
        {
        }

        else
        {
          if (v249)
          {
            v192 = v246;
          }

          else
          {
            v192 = 0;
          }

          if (v249)
          {
            v193 = v249;
          }

          else
          {
            v193 = 0xE000000000000000;
          }

          v267[3] = v192;
          v267[4] = v193;
        }

        memcpy(v262, v267, sizeof(v262));
        if (sub_25E97F474(v262) == 1)
        {
        }

        else
        {
          if (v146)
          {
            v194 = v245;
          }

          else
          {
            v194 = 0;
          }

          if (v146)
          {
            v195 = v146;
          }

          else
          {
            v195 = 0xE000000000000000;
          }

          v267[5] = v194;
          v267[6] = v195;
        }

        memcpy(v261, v267, sizeof(v261));
        if (sub_25E97F474(v261) != 1)
        {
          LOBYTE(v267[7]) = v244 & 1;
        }

        memcpy(v260, v267, sizeof(v260));
        if (sub_25E97F474(v260) != 1)
        {
          v267[12] = v242;
          v267[13] = v243;
          v267[14] = v240;
          v267[15] = v241;
        }

        memcpy(v259, v267, sizeof(v259));
        if (sub_25E97F474(v259) != 1)
        {
          v267[16] = v234;
          v267[17] = v235;
          v267[18] = v232;
          v267[19] = v233;
        }

        memcpy(v258, v267, sizeof(v258));
        if (sub_25E97F474(v258) != 1)
        {
          v267[20] = v222;
          v267[21] = v223;
          v267[22] = v220;
          v267[23] = v221;
        }

        memcpy(v257, v267, sizeof(v257));
        if (sub_25E97F474(v257) != 1)
        {
          v267[24] = v176;
          v267[25] = v177;
          v267[26] = v186;
          v267[27] = v187;
        }

        memcpy(v256, v267, sizeof(v256));
        if (sub_25E97F474(v256) != 1)
        {
          v267[8] = v238;
          v267[9] = v239;
          v267[10] = v236;
          v267[11] = v237;
        }

        memcpy(v255, v267, sizeof(v255));
        v5 = v219;
        v13 = 0x280F6F000;
        if (sub_25E97F474(v255) != 1)
        {
          v267[28] = v230;
          v267[29] = v231;
          v267[30] = v228;
          v267[31] = v229;
        }

        memcpy(v254, v267, sizeof(v254));
        if (sub_25E97F474(v254) != 1)
        {
          v267[32] = v226;
          v267[33] = v227;
          v267[34] = v224;
          v267[35] = v225;
        }

        memcpy(v268, v267, 0x120uLL);
        sub_25E993F70(v268, v252);
        sub_25E98F84C(v268, v269, v14);
        memcpy(v253, v267, sizeof(v253));
        sub_25E981210(v253, &qword_27FD0D938, &qword_25E9D9998);
        if (v217 == v250)
        {
          goto LABEL_324;
        }

        v11 = v250 + 1;
        v3 = v218;
        v12 = v248 + 2;
        if ((v250 + 1) >= *(v218 + 16))
        {
          __break(1u);
          goto LABEL_326;
        }
      }

LABEL_274:
      v242 = 89;
      v243 = 0;
      v26 = v4[4];
      if (!v26)
      {
        goto LABEL_309;
      }

      goto LABEL_275;
    }

LABEL_324:
  }
}