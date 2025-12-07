AlchemistService::ALCConfigurationPreset_optional __swiftcall ALCConfigurationPreset.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23EDC2070();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ALCConfigurationPreset.rawValue.getter()
{
  v1 = 0x647261646E617473;
  v2 = 0x6957736F746F6870;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7041736F746F6870;
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

uint64_t sub_23ED944BC()
{
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

double sub_23ED94590(uint64_t a1)
{
  sub_23EDC1A50();

  return result;
}

uint64_t sub_23ED94650()
{
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

void sub_23ED9472C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x647261646E617473;
  v4 = 0xEC00000074656764;
  v5 = 0x6957736F746F6870;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000023EDC9E50;
  }

  if (*v1)
  {
    v3 = 0x7041736F746F6870;
    v2 = 0xE900000000000070;
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

__n128 ALCConfiguration.renderOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

__n128 ALCConfiguration.renderOptions.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

double ALCConfiguration.sorterOptions.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 40);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

double ALCConfiguration.sorterOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ALCConfiguration.bakingOptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 177);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v5;
  v12[4] = *(v1 + 120);
  v12[5] = v2;
  v12[0] = *(v1 + 56);
  v12[1] = v4;
  v6 = *(v1 + 136);
  v7 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 177);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v9;
  a1[4] = *(v1 + 120);
  a1[5] = v6;
  *a1 = *(v1 + 56);
  a1[1] = v8;
  return sub_23ED93EA8(v12, &v11);
}

__n128 ALCConfiguration.bakingOptions.setter(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v4;
  *(v13 + 9) = *(v1 + 177);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  sub_23ED93E78(v12);
  v7 = a1[4];
  *(v1 + 136) = a1[5];
  v8 = a1[7];
  *(v1 + 152) = a1[6];
  *(v1 + 168) = v8;
  *(v1 + 177) = *(a1 + 121);
  v9 = *a1;
  *(v1 + 72) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 88) = result;
  *(v1 + 104) = v11;
  *(v1 + 120) = v7;
  *(v1 + 56) = v9;
  return result;
}

__n128 ALCConfiguration.init()@<Q0>(uint64_t a1@<X8>)
{
  *v34 = 0;
  *&v34[4] = 1;
  *&v34[12] = 0xCB1896803F000000;
  *&v34[20] = xmmword_23EDC60E0;
  sub_23ED937D4(&v34[40]);
  LODWORD(v38) = 1025758986;
  HIDWORD(v42) = 1036831949;
  v43 = 0;
  if (qword_27E388140 != -1)
  {
    swift_once();
  }

  if (qword_27E389728)
  {
    v2 = sub_23ED94224(0);
    if ((v3 & 1) == 0)
    {
      v4 = v2;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v5 = sub_23EDC1790();
      __swift_project_value_buffer(v5, qword_27E3897E8);
      v6 = sub_23EDC1770();
      v7 = sub_23EDC1D60();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&dword_23ED67000, v6, v7, "Setting number of baking layers from user defaults: %ld", v8, 0xCu);
        MEMORY[0x23EF24B30](v8, -1, -1);
      }

      *&v36 = v4;
    }

    v9 = sub_23ED94224(1u);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v12 = sub_23EDC1790();
      __swift_project_value_buffer(v12, qword_27E3897E8);
      v13 = sub_23EDC1770();
      v14 = sub_23EDC1D60();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v11;
        _os_log_impl(&dword_23ED67000, v13, v14, "Setting number of baking passes from user defaults: %ld", v15, 0xCu);
        MEMORY[0x23EF24B30](v15, -1, -1);
      }

      *&v37 = v11;
    }

    v16 = sub_23ED94094(2u);
    if (v16 != 2)
    {
      v17 = v16;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v18 = sub_23EDC1790();
      __swift_project_value_buffer(v18, qword_27E3897E8);
      v19 = sub_23EDC1770();
      v20 = sub_23EDC1D60();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = v17;
        _os_log_impl(&dword_23ED67000, v19, v20, "Setting texture compression flag from user defaults: %{BOOL}d", v21, 8u);
        MEMORY[0x23EF24B30](v21, -1, -1);
      }

      BYTE12(v41) = v17;
    }

    v22 = sub_23ED94094(3u);
    if (v22 != 2)
    {
      v23 = v22;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v24 = sub_23EDC1790();
      __swift_project_value_buffer(v24, qword_27E3897E8);
      v25 = sub_23EDC1770();
      v26 = sub_23EDC1D60();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_23ED67000, v25, v26, "Setting separate opaque geometry flag from user defaults: %{BOOL}d", v27, 8u);
        MEMORY[0x23EF24B30](v27, -1, -1);
      }

      BYTE8(v42) = v23;
    }
  }

  v28 = v42;
  *(a1 + 160) = v41;
  *(a1 + 176) = v28;
  *(a1 + 192) = v43;
  v29 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v29;
  v30 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v30;
  v31 = *&v34[32];
  *(a1 + 32) = *&v34[16];
  *(a1 + 48) = v31;
  v32 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v32;
  result = *v34;
  *a1 = 0u;
  *(a1 + 16) = *v34;
  return result;
}

__n128 ALCConfiguration.init(for:)@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  ALCConfiguration.init()(v28);
  v24 = v28[0];
  v25 = v28[1];
  v26 = v28[2];
  v4 = v30;
  v27 = v29;
  v23 = v31;
  *v22 = *v32;
  v5 = v33;
  *&v22[7] = *&v32[7];
  v21 = v35;
  v6 = v36;
  v7 = v37;
  v19 = v39;
  v20 = v34;
  v8 = v38;
  v9 = v40;
  v17 = v41;
  v18 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  v13 = v46;
  v16 = v48;
  v15 = v47;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = *MEMORY[0x277D25790];
      sub_23ED9513C(v28);
      v9 = 1;
      v23 = 1;
      v4 = 4;
      v5 = 16;
      v6 = 1025758986;
      v8 = 1024;
      v11 = 1;
    }

    else
    {
      v23 = 1;
      v13 = *MEMORY[0x277D25788];
      sub_23ED9513C(v28);
      v10 = 0;
      v4 = 4;
      v5 = 32;
      v6 = 1025758986;
      v7 = 1066192077;
    }
  }

  else if (v3)
  {
    v13 = *MEMORY[0x277D25788];
    sub_23ED9513C(v28);
    v11 = 1;
    v23 = 1;
    v4 = 4;
    v5 = 16;
    v6 = 1025758986;
    v8 = 2048;
    v9 = 1;
  }

  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v4;
  *(a2 + 64) = v23;
  *(a2 + 65) = *v22;
  *(a2 + 72) = *&v22[7];
  *(a2 + 80) = v5;
  *(a2 + 104) = v21;
  *(a2 + 88) = v20;
  *(a2 + 112) = v6;
  *(a2 + 116) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = v19;
  *(a2 + 144) = v9;
  result = v17;
  *(a2 + 152) = v17;
  *(a2 + 168) = v18;
  *(a2 + 172) = v10;
  *(a2 + 173) = v11;
  *(a2 + 174) = v12;
  *(a2 + 192) = v16;
  *(a2 + 176) = v13;
  *(a2 + 184) = v15;
  return result;
}

void *sub_23ED95098(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23ED9510C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_23ED95170()
{
  result = qword_27E388C78;
  if (!qword_27E388C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C78);
  }

  return result;
}

unint64_t sub_23ED951C8()
{
  result = qword_27E388C80;
  if (!qword_27E388C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388C88, &qword_23EDC6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALCConfigurationPreset(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ALCConfigurationPreset(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23ED953C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23ED95408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ALCStereoHEICOutput.data.getter()
{
  v1 = *v0;
  sub_23ED922EC(*v0, *(v0 + 8));
  return v1;
}

AlchemistService::Error_optional __swiftcall Error.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23EDC2070();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Error.rawValue.getter()
{
  result = 0x6146796669746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      return result;
    case 0xA:
      result = 0x456E776F6E6B6E75;
      break;
    case 0xB:
      result = 0x7265746C69466963;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_23ED956C8()
{
  v0 = Error.rawValue.getter();
  v2 = v1;
  if (v0 == Error.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23EDC2240();
  }

  return v5 & 1;
}

uint64_t sub_23ED95764()
{
  sub_23EDC22F0();
  Error.rawValue.getter();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

double sub_23ED957CC(uint64_t a1)
{
  Error.rawValue.getter();
  sub_23EDC1A50();

  return result;
}

uint64_t sub_23ED95830()
{
  sub_23EDC22F0();
  Error.rawValue.getter();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

unint64_t sub_23ED958A0@<X0>(unint64_t *a1@<X8>)
{
  result = Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double ALCService.GenerationEvent.progressValue.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    return dbl_23EDC6760[v1];
  }

  else
  {
    return fmin(v1 / (*(v0 + 8) + 0.0001), 0.99);
  }
}

uint64_t ALCService.GenerationOption.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        return MEMORY[0x23EF24060](v3);
      case 4:
        v3 = 5;
        return MEMORY[0x23EF24060](v3);
      case 5:
        v3 = 6;
        return MEMORY[0x23EF24060](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x23EF24060](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x23EF24060](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x23EF24060](v3);
    }
  }

  MEMORY[0x23EF24060](3);

  return sub_23EDC1A50();
}

uint64_t ALCService.GenerationOption.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_23EDC22F0();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 4;
        goto LABEL_15;
      case 4:
        v2 = 5;
        goto LABEL_15;
      case 5:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x23EF24060](v2);
        return sub_23EDC2320();
    }
  }

  MEMORY[0x23EF24060](3);
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23ED95ACC(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        return MEMORY[0x23EF24060](v3);
      case 4:
        v3 = 5;
        return MEMORY[0x23EF24060](v3);
      case 5:
        v3 = 6;
        return MEMORY[0x23EF24060](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x23EF24060](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x23EF24060](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x23EF24060](v3);
    }
  }

  MEMORY[0x23EF24060](3);

  return sub_23EDC1A50();
}

uint64_t sub_23ED95B9C()
{
  v1 = *(v0 + 8);
  sub_23EDC22F0();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 4;
        goto LABEL_15;
      case 4:
        v2 = 5;
        goto LABEL_15;
      case 5:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x23EF24060](v2);
        return sub_23EDC2320();
    }
  }

  MEMORY[0x23EF24060](3);
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23ED95C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 192);
  v30 = *(v1 + 176);
  v31 = v3;
  v4 = *(v1 + 96);
  v5 = *(v1 + 128);
  v26 = *(v1 + 112);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 128);
  v8 = *(v1 + 160);
  v28 = *(v1 + 144);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 32);
  v11 = *(v1 + 64);
  v22 = *(v1 + 48);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 64);
  v14 = *(v1 + 96);
  v24 = *(v1 + 80);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 32);
  v21[0] = *(v1 + 16);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 192);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 208);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_23ED9D53C(v21, v20);
}

uint64_t ALCService.__allocating_init(mtlDevice:eventUpdateCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ALCService.init(mtlDevice:eventUpdateCallback:)(a1, a2, a3);
  return v6;
}

uint64_t ALCService.init(mtlDevice:eventUpdateCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  *(v3 + 216) = xmmword_23EDC6280;
  _s18AnalyticsTelemetryCMa();
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = MEMORY[0x277D84F98];
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = v8;
  *(v7 + 48) = 1;
  *(v7 + 52) = 0;
  *(v7 + 56) = 1;
  *(v3 + 288) = v7;
  ALCConfiguration.init()(v55);
  v9 = v55[11];
  *(v3 + 176) = v55[10];
  *(v3 + 192) = v9;
  *(v3 + 208) = v56;
  v10 = v55[7];
  *(v3 + 112) = v55[6];
  *(v3 + 128) = v10;
  v11 = v55[9];
  *(v3 + 144) = v55[8];
  *(v3 + 160) = v11;
  v12 = v55[3];
  *(v3 + 48) = v55[2];
  *(v3 + 64) = v12;
  v13 = v55[5];
  *(v3 + 80) = v55[4];
  *(v3 + 96) = v13;
  v14 = v55[1];
  *(v3 + 16) = v55[0];
  *(v3 + 32) = v14;
  v15 = *(v3 + 232);
  v16 = *(v4 + 240);
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  sub_23ED9D598(a2, a3);
  sub_23ED9D5A8(v15, v16);
  v17 = objc_opt_self();
  v18 = [v17 processInfo];
  v19 = [v17 processInfo];

  v20 = [v17 processInfo];
  [v20 processIdentifier];

  v21 = [v18 processName];
  v22 = sub_23EDC19D0();
  v24 = v23;

  LODWORD(v21) = [v18 processIdentifier];
  *&v42 = v22;
  *(&v42 + 1) = v24;
  v25 = v57;
  LODWORD(v43) = v21;
  type metadata accessor for InferenceSession();
  swift_allocObject();
  *(v4 + 248) = InferenceSession.init(client:)(&v42);
  *(v4 + 256) = v25;
  v26 = [swift_unknownObjectRetain() newCommandQueue];
  if (v26)
  {
    *(v4 + 264) = v26;
    v27 = v26;
    v28 = objc_opt_self();
    swift_unknownObjectRetain();
    *(v4 + 272) = [v28 contextWithMTLCommandQueue_];
    v29 = [objc_allocWithZone(MEMORY[0x277D00878]) initWithDevice:*(v4 + 256) colorPixelFormat:81 depthPixelFormat:250];
    swift_unknownObjectRelease();
    sub_23ED9D5A8(a2, a3);
    swift_unknownObjectRelease();
    *(v4 + 280) = v29;
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v30 = sub_23EDC1790();
    __swift_project_value_buffer(v30, qword_27E3897E8);
    v31 = sub_23EDC1770();
    v32 = sub_23EDC1D80();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23ED67000, v31, v32, "Failed to create Metal command queue.", v33, 2u);
      MEMORY[0x23EF24B30](v33, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    sub_23ED9D5A8(a2, a3);
    swift_unknownObjectRelease();
    v35 = *(v4 + 192);
    v52 = *(v4 + 176);
    v53 = v35;
    v54 = *(v4 + 208);
    v36 = *(v4 + 128);
    v48 = *(v4 + 112);
    v49 = v36;
    v37 = *(v4 + 160);
    v50 = *(v4 + 144);
    v51 = v37;
    v38 = *(v4 + 64);
    v44 = *(v4 + 48);
    v45 = v38;
    v39 = *(v4 + 96);
    v46 = *(v4 + 80);
    v47 = v39;
    v40 = *(v4 + 32);
    v42 = *(v4 + 16);
    v43 = v40;
    sub_23ED9513C(&v42);
    sub_23ED9D5A8(*(v4 + 232), *(v4 + 240));

    swift_unknownObjectRelease();

    type metadata accessor for ALCService();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t ALCService.__allocating_init(mtlDevice:configuration:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ALCService.init(mtlDevice:configuration:eventHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ALCService.init(mtlDevice:configuration:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 216) = xmmword_23EDC6280;
  _s18AnalyticsTelemetryCMa();
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  v11 = MEMORY[0x277D84F98];
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = v11;
  *(v10 + 48) = 1;
  *(v10 + 52) = 0;
  *(v10 + 56) = 1;
  *(v5 + 288) = v10;
  v12 = *(a2 + 176);
  *(v5 + 176) = *(a2 + 160);
  *(v5 + 192) = v12;
  *(v5 + 208) = *(a2 + 192);
  v13 = *(a2 + 112);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 128) = v13;
  v14 = *(a2 + 144);
  *(v5 + 144) = *(a2 + 128);
  *(v5 + 160) = v14;
  v15 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v15;
  v16 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v16;
  v17 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v17;
  if (a3)
  {
    v18 = qword_27E388190;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_23EDC1790();
    __swift_project_value_buffer(v19, qword_27E3897E8);
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23ED67000, v20, v21, "The return value of deprecated event handler is ignored. Please use EventUpdateCallback instead.", v22, 2u);
      MEMORY[0x23EF24B30](v22, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v25 = *(v5 + 232);
    v24 = *(v5 + 240);
    *(v5 + 232) = sub_23ED9D614;
    *(v5 + 240) = v23;
    sub_23ED9D5A8(v25, v24);
  }

  v63 = a4;
  v26 = objc_opt_self();
  v27 = [v26 processInfo];
  v28 = [v26 processInfo];

  v29 = [v26 processInfo];
  [v29 processIdentifier];

  v30 = [v27 processName];
  v31 = sub_23EDC19D0();
  v33 = v32;

  LODWORD(v30) = [v27 processIdentifier];
  *&v50 = v31;
  *(&v50 + 1) = v33;
  LODWORD(v51) = v30;
  type metadata accessor for InferenceSession();
  swift_allocObject();
  *(v5 + 248) = InferenceSession.init(client:)(&v50);
  *(v5 + 256) = a1;
  v34 = [swift_unknownObjectRetain() newCommandQueue];
  if (v34)
  {
    *(v5 + 264) = v34;
    v35 = v34;
    v36 = objc_opt_self();
    swift_unknownObjectRetain();
    *(v5 + 272) = [v36 contextWithMTLCommandQueue_];
    v37 = [objc_allocWithZone(MEMORY[0x277D00878]) initWithDevice:*(v5 + 256) colorPixelFormat:81 depthPixelFormat:250];
    swift_unknownObjectRelease();
    sub_23ED9D5A8(a3, v63);
    swift_unknownObjectRelease();
    *(v5 + 280) = v37;
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v38 = sub_23EDC1790();
    __swift_project_value_buffer(v38, qword_27E3897E8);
    v39 = sub_23EDC1770();
    v40 = sub_23EDC1D80();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23ED67000, v39, v40, "Failed to create Metal command queue.", v41, 2u);
      MEMORY[0x23EF24B30](v41, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    sub_23ED9D5A8(a3, v63);
    swift_unknownObjectRelease();
    v43 = *(v5 + 192);
    v60 = *(v5 + 176);
    v61 = v43;
    v62 = *(v5 + 208);
    v44 = *(v5 + 128);
    v56 = *(v5 + 112);
    v57 = v44;
    v45 = *(v5 + 160);
    v58 = *(v5 + 144);
    v59 = v45;
    v46 = *(v5 + 64);
    v52 = *(v5 + 48);
    v53 = v46;
    v47 = *(v5 + 96);
    v54 = *(v5 + 80);
    v55 = v47;
    v48 = *(v5 + 32);
    v50 = *(v5 + 16);
    v51 = v48;
    sub_23ED9513C(&v50);
    sub_23ED9D5A8(*(v5 + 232), *(v5 + 240));

    swift_unknownObjectRelease();

    type metadata accessor for ALCService();
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t sub_23ED96704(uint64_t a1, uint64_t a2)
{
  v3[146] = v2;
  v3[145] = a2;
  v3[144] = a1;
  return MEMORY[0x2822009F8](sub_23ED9672C, 0, 0);
}

uint64_t sub_23ED9672C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x277CBFA08];
  *(inited + 32) = *MEMORY[0x277CBFA08];
  *(inited + 16) = xmmword_23EDC4860;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v5 = v4;
  sub_23ED7A0AC(inited);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &unk_27E388CA0, &qword_23EDC62D0);
  v6 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED9E5DC(&qword_27E388450, type metadata accessor for CIImageOption, &unk_23EDC4084);
  v7 = sub_23EDC1890();

  v8 = [v6 initWithCVPixelBuffer:v2 options:v7];
  *(v0 + 1176) = v8;

  *(v0 + 16) = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 80);
  *(v0 + 64) = *(v1 + 64);
  *(v0 + 80) = v11;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  v12 = *(v1 + 96);
  v13 = *(v1 + 112);
  v14 = *(v1 + 144);
  *(v0 + 128) = *(v1 + 128);
  *(v0 + 144) = v14;
  *(v0 + 96) = v12;
  *(v0 + 112) = v13;
  v15 = *(v1 + 160);
  v16 = *(v1 + 176);
  v17 = *(v1 + 192);
  *(v0 + 208) = *(v1 + 208);
  *(v0 + 176) = v16;
  *(v0 + 192) = v17;
  *(v0 + 160) = v15;
  *(v0 + 216) = *(v1 + 16);
  v18 = *(v1 + 32);
  v19 = *(v1 + 48);
  v20 = *(v1 + 80);
  *(v0 + 264) = *(v1 + 64);
  *(v0 + 280) = v20;
  *(v0 + 248) = v19;
  *(v0 + 232) = v18;
  v21 = *(v1 + 96);
  v22 = *(v1 + 112);
  v23 = *(v1 + 144);
  *(v0 + 328) = *(v1 + 128);
  *(v0 + 344) = v23;
  *(v0 + 296) = v21;
  *(v0 + 312) = v22;
  v24 = *(v1 + 160);
  v25 = *(v1 + 176);
  v26 = *(v1 + 192);
  *(v0 + 408) = *(v1 + 208);
  *(v0 + 376) = v25;
  *(v0 + 392) = v26;
  *(v0 + 360) = v24;
  sub_23ED9D53C(v0 + 16, v0 + 416);
  v27 = swift_task_alloc();
  *(v0 + 1184) = v27;
  *v27 = v0;
  v27[1] = sub_23ED96994;
  v28 = *(v0 + 1160);

  return sub_23ED96CA0(v8, (v0 + 216), v28);
}

uint64_t sub_23ED96994(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2 + 216;
  *(v3 + 1128) = v2;
  *(v3 + 1136) = a1;
  *(v3 + 1144) = v1;
  *(v3 + 1192) = v1;

  if (v1)
  {
    *(v3 + 616) = *v4;
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    v7 = *(v4 + 64);
    *(v3 + 664) = *(v4 + 48);
    *(v3 + 680) = v7;
    *(v3 + 632) = v5;
    *(v3 + 648) = v6;
    v8 = *(v4 + 80);
    v9 = *(v4 + 96);
    v10 = *(v4 + 128);
    *(v3 + 728) = *(v4 + 112);
    *(v3 + 744) = v10;
    *(v3 + 696) = v8;
    *(v3 + 712) = v9;
    v11 = *(v4 + 144);
    v12 = *(v4 + 160);
    v13 = *(v4 + 176);
    *(v3 + 808) = *(v4 + 192);
    *(v3 + 776) = v12;
    *(v3 + 792) = v13;
    *(v3 + 760) = v11;
    sub_23ED9513C(v3 + 616);
    v14 = sub_23ED96C3C;
  }

  else
  {
    *(v3 + 816) = *v4;
    v15 = *(v4 + 16);
    v16 = *(v4 + 32);
    v17 = *(v4 + 64);
    *(v3 + 864) = *(v4 + 48);
    *(v3 + 880) = v17;
    *(v3 + 832) = v15;
    *(v3 + 848) = v16;
    v18 = *(v4 + 80);
    v19 = *(v4 + 96);
    v20 = *(v4 + 128);
    *(v3 + 928) = *(v4 + 112);
    *(v3 + 944) = v20;
    *(v3 + 896) = v18;
    *(v3 + 912) = v19;
    v21 = *(v4 + 144);
    v22 = *(v4 + 160);
    v23 = *(v4 + 176);
    *(v3 + 1008) = *(v4 + 192);
    *(v3 + 976) = v22;
    *(v3 + 992) = v23;
    *(v3 + 960) = v21;
    sub_23ED9513C(v3 + 816);
    v14 = sub_23ED96B50;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_23ED96B50()
{
  v10 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v1 + 232);
  if (v2)
  {
    v3 = *(v0 + 1176);
    v4 = *(v1 + 240);
    v8 = xmmword_23EDC4850;
    v9 = 1;
    *(v0 + 1088) = 0u;
    *(v0 + 1104) = 0u;
    *(v0 + 1120) = 0;

    v2(&v8, v0 + 1088);
    sub_23ED9D5A8(v2, v4);

    sub_23ED6FA68(v0 + 1088, &qword_27E388CB0, &qword_23EDC62E0);
  }

  else
  {
  }

  v5 = *(v0 + 1136);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_23ED96C3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED96CA0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = a2[11];
  *(v4 + 328) = a2[10];
  *(v4 + 344) = v7;
  v8 = a2[4];
  *(v4 + 248) = a2[5];
  v9 = a2[7];
  *(v4 + 264) = a2[6];
  *(v4 + 280) = v9;
  v10 = a2[9];
  *(v4 + 296) = a2[8];
  *(v4 + 312) = v10;
  v11 = *a2;
  *(v4 + 184) = a2[1];
  v12 = a2[3];
  *(v4 + 200) = a2[2];
  *(v4 + 216) = v12;
  *(v4 + 232) = v8;
  *(v4 + 472) = v3;
  *(v4 + 360) = *(a2 + 192);
  *(v4 + 168) = v11;
  v13 = swift_task_alloc();
  *(v4 + 480) = v13;
  *v13 = v4;
  v13[1] = sub_23ED96D9C;

  return sub_23ED97174(v4 + 16, a1, v4 + 168, a3);
}

uint64_t sub_23ED96D9C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_23ED96F98;
  }

  else
  {
    v2 = sub_23ED96EB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED96EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = v3;
  v4 = *(v3 + 472);
  v5 = *(v4 + 232);
  if (v5)
  {
    v6 = *(v4 + 240);
    v10 = xmmword_23EDC4850;
    v11 = 1;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0;

    v5(&v10, v3 + 408);
    sub_23ED9D5A8(v5, v6);
    sub_23ED6FA68(v3 + 408, &qword_27E388CB0, &qword_23EDC62E0);
  }

  v7 = *(v3 + 16);
  sub_23EDA7AEC();
  v8 = *(v3 + 8);

  return v8(v7);
}

void sub_23ED96F98()
{
  v12 = v0;
  v1 = *(v0 + 472);
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[30];
    v10 = xmmword_23EDC6290;
    v11 = 1;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0;

    v2(&v10, v0 + 368);
    sub_23ED9D5A8(v2, v3);
    sub_23ED6FA68(v0 + 368, &qword_27E388CB0, &qword_23EDC62E0);
    v1 = *(v0 + 472);
  }

  v4 = (v1[27] / v1[28]) * 100.0;
  if (COERCE_INT(fabs(v4)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 1.8447e19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v1[36];
  if (v4 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = v4;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_23ED78970(v7, 0xD000000000000014, 0x800000023EDCAD40, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v10;
  swift_endAccess();
  swift_willThrow();
  sub_23EDA7AEC();
  v9 = *(v0 + 8);

  v9();
}

uint64_t sub_23ED97174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 1560) = a4;
  *(v5 + 1568) = v6;
  *(v5 + 1552) = a2;
  *(v5 + 1544) = a1;
  *(v5 + 1576) = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  *(v5 + 1584) = swift_task_alloc();
  v8 = sub_23EDC13D0();
  *(v5 + 1592) = v8;
  *(v5 + 1600) = *(v8 - 8);
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  *(v5 + 1624) = type metadata accessor for InferenceRecipe(0);
  *(v5 + 1632) = swift_task_alloc();
  v9 = sub_23EDC0EF0();
  *(v5 + 1640) = v9;
  *(v5 + 1648) = *(v9 - 8);
  *(v5 + 1656) = swift_task_alloc();
  *(v5 + 1664) = swift_task_alloc();
  *(v5 + 1672) = type metadata accessor for InferenceSessionDefinition(0);
  *(v5 + 1680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D20, &qword_23EDC45D8);
  *(v5 + 1688) = swift_task_alloc();
  *(v5 + 1696) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D28, &unk_23EDC6750);
  *(v5 + 1704) = swift_task_alloc();
  v10 = sub_23EDC13F0();
  *(v5 + 1712) = v10;
  *(v5 + 1720) = *(v10 - 8);
  *(v5 + 1728) = swift_task_alloc();
  v11 = *(a3 + 72);
  *(v5 + 976) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v5 + 944) = *(a3 + 32);
  *(v5 + 960) = v12;
  v13 = *(a3 + 16);
  *(v5 + 912) = *a3;
  *(v5 + 928) = v13;
  *(v5 + 1736) = v11;
  *(v5 + 1448) = *(a3 + 80);
  *(v5 + 1464) = *(a3 + 96);
  *(v5 + 1944) = *(a3 + 104);
  v14 = *(a3 + 153);
  *(v5 + 856) = *(a3 + 137);
  *(v5 + 872) = v14;
  *(v5 + 888) = *(a3 + 169);
  *(v5 + 904) = *(a3 + 185);
  v15 = *(a3 + 121);
  *(v5 + 824) = *(a3 + 105);
  *(v5 + 840) = v15;

  return MEMORY[0x2822009F8](sub_23ED974BC, 0, 0);
}

uint64_t sub_23ED974BC()
{
  v94 = v0;
  v1 = *(v0 + 1560);
  *(v0 + 1744) = *(*(v0 + 1568) + 288);
  v2 = xmmword_23EDC62A0;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v3 = sub_23ED9C9D0(0, 5);
      v2 = xmmword_23EDC62A0;
      if (v4)
      {
        sub_23ED71DA8(*(v1 + 56) + 32 * v3, v0 + 1368);
        if (swift_dynamicCast())
        {
          v2 = *(v0 + 1520);
        }

        else
        {
          v2 = xmmword_23EDC62A0;
        }
      }
    }
  }

  v5 = *(v0 + 1552);
  v92 = v2;
  sub_23EDA7EE4(&v92);
  sub_23ED9E5BC(v92, *(&v92 + 1));
  static ALCService.isSupported(image:)(v5, &v92);
  v6 = v92;
  if (v92)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v7 = sub_23EDC1790();
    __swift_project_value_buffer(v7, qword_27E3897E8);
    v8 = sub_23EDC1770();
    v9 = sub_23EDC1D80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v92 = v11;
      *v10 = 136315138;
      v12 = "ge dimension is too large";
      if (v6 != 2)
      {
        v12 = "multiLayerRenderer";
      }

      if (v6 == 1)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v13 = 0xD000000000000029;
      }

      if (v6 == 1)
      {
        v14 = "ge dimension is too small";
      }

      else
      {
        v14 = v12;
      }

      v15 = sub_23ED713FC(v13, v14 | 0x8000000000000000, &v92);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_23ED67000, v8, v9, "Input image is not supported. Reason: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x23EF24B30](v11, -1, -1);
      MEMORY[0x23EF24B30](v10, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  v17 = *(v0 + 1568);
  *(v17 + 216) = xmmword_23EDC6280;
  v18 = *(v17 + 232);
  if (v18)
  {
    v19 = *(v17 + 240);
    v92 = 0uLL;
    v93 = 1;
    *(v0 + 1072) = 0u;
    *(v0 + 1088) = 0u;
    *(v0 + 1104) = 0;

    v18(&v92, v0 + 1072);
    sub_23ED9D5A8(v18, v19);
    sub_23ED6FA68(v0 + 1072, &qword_27E388CB0, &qword_23EDC62E0);
  }

  if (qword_27E3881B8 != -1)
  {
    swift_once();
  }

  v20 = qword_27E389878;
  *(v0 + 1752) = qword_27E389878;
  *(v0 + 1760) = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v21 = swift_task_alloc();
  *(v21 + 16) = "generateMXI";
  *(v21 + 24) = 11;
  *(v21 + 32) = 2;
  *(v21 + 40) = v20;
  sub_23EDC1DE0();

  *(v0 + 1144) = 0;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 0u;
  v25 = *(v17 + 216);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_74;
  }

  *(v17 + 216) = v27;
  v28 = *(v17 + 232);
  if (v28)
  {
    v29 = *(v17 + 240);
    v30 = *(v17 + 224);
    *&v92 = v27;
    *(&v92 + 1) = v30;
    v93 = 0;

    v28(&v92, v0 + 1112);
    sub_23ED9D5A8(v28, v29);
  }

  sub_23ED6FA68(v0 + 1112, &qword_27E388CB0, &qword_23EDC62E0);
  v31 = sub_23ED71E08(1.0);
  *(v0 + 1768) = v31;
  sub_23ED9BF10(v31, 0);
  *(v0 + 1776) = v32;
  v35 = v32;
  v36 = *(v0 + 1736);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  v37 = swift_allocObject();
  v38 = *MEMORY[0x277CBFA08];
  *(v37 + 32) = *MEMORY[0x277CBFA08];
  *(v37 + 16) = xmmword_23EDC4860;
  *(v37 + 64) = MEMORY[0x277D839B0];
  *(v37 + 40) = 1;
  v39 = v35;
  v40 = v38;
  sub_23ED7A0AC(v37);
  swift_setDeallocating();
  sub_23ED6FA68(v37 + 32, &unk_27E388CA0, &qword_23EDC62D0);
  swift_deallocClassInstance();
  v41 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED9E5DC(&qword_27E388450, type metadata accessor for CIImageOption, &unk_23EDC4084);
  v42 = sub_23EDC1890();

  v43 = [v41 initWithCVPixelBuffer:v39 options:v42];
  *(v0 + 1784) = v43;

  if (*(v0 + 1944) != 1 || v36)
  {
    *(v0 + 1816) = 0;
    v45 = *(v0 + 1568);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1184) = 0;
    v46 = *(v45 + 216);
    v26 = __CFADD__(v46, 1);
    v47 = v46 + 1;
    if (!v26)
    {
      *(v45 + 216) = v47;
      v48 = *(v45 + 232);
      if (v48)
      {
        v49 = *(v0 + 1568);
        v39 = *(v49 + 240);
        v50 = *(v49 + 224);
        *&v92 = v47;
        *(&v92 + 1) = v50;
        v93 = 0;

        v48(&v92, v0 + 1152);
        sub_23ED9D5A8(v48, v39);
      }

      sub_23ED6FA68(v0 + 1152, &qword_27E388CB0, &qword_23EDC62E0);
      ColorSpace = CVImageBufferGetColorSpace(*(v0 + 1776));
      if (ColorSpace)
      {
        v39 = ColorSpace;
        v52 = sub_23EDC1DA0();
      }

      else
      {
        v52 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
        v53 = v52;
        if (v52)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      v53 = v52;

LABEL_45:
      *(v0 + 1824) = v53;
      v54 = *(v0 + 1744);
      [*(v0 + 1784) extent];
      *(v54 + 32) = v55;
      *(v54 + 40) = v56;
      *(v54 + 48) = 0;
      v57 = CGColorSpaceCopyName(v53);
      if (!v57)
      {
        sub_23ED7BB24(0, &unk_27E388CD0, 0x277CCACA8);
        v57 = sub_23EDC1E20();
      }

      v58 = *(v0 + 1744);
      v59 = *(v0 + 1568);
      swift_beginAccess();
      v60 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = *(v58 + 24);
      *(v58 + 24) = 0x8000000000000000;
      sub_23ED78970(v60, 0x6C6F437465737341, 0xEF6563617053726FLL, isUniquelyReferenced_nonNull_native);
      *(v58 + 24) = v92;
      swift_endAccess();

      v62 = *(v59 + 256);
      type metadata accessor for ServiceOutputDelegate(0);
      swift_allocObject();
      swift_unknownObjectRetain();
      v63 = v53;
      *(v0 + 1832) = sub_23EDB6050(v62, v63);

      v22 = swift_unknownObjectRelease();
      *(v0 + 1224) = 0;
      *(v0 + 1192) = 0u;
      *(v0 + 1208) = 0u;
      v64 = *(v59 + 216);
      v26 = __CFADD__(v64, 1);
      v65 = v64 + 1;
      if (!v26)
      {
        v66 = *(v0 + 1568);
        *(v66 + 216) = v65;
        v67 = *(v66 + 232);
        if (v67)
        {
          v68 = *(v0 + 1568);
          v69 = *(v68 + 240);
          v70 = *(v68 + 224);
          *&v92 = v65;
          *(&v92 + 1) = v70;
          v93 = 0;

          v67(&v92, v0 + 1192);
          sub_23ED9D5A8(v67, v69);
        }

        sub_23ED6FA68(v0 + 1192, &qword_27E388CB0, &qword_23EDC62E0);
        v71 = *(v0 + 1560);
        if (v71)
        {
          v72 = -1.0;
          if (*(v71 + 16))
          {
            v73 = sub_23ED9C9D0(0, 0);
            if (v74)
            {
              sub_23ED71DA8(*(v71 + 56) + 32 * v73, v0 + 1336);
              if (swift_dynamicCast())
              {
                v72 = *(v0 + 148);
              }

              else
              {
                v72 = -1.0;
              }
            }
          }

          if (*(v71 + 16))
          {
            v75 = sub_23ED9C9D0(0, 1);
            if (v76)
            {
              v77 = *(v0 + 1720);
              v78 = *(v0 + 1712);
              v79 = *(v0 + 1704);
              sub_23ED71DA8(*(v71 + 56) + 32 * v75, v0 + 1272);
              v80 = swift_dynamicCast();
              (*(v77 + 56))(v79, v80 ^ 1u, 1, v78);
              if ((*(v77 + 48))(v79, 1, v78) != 1)
              {
                (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1704), *(v0 + 1712));
LABEL_65:
                v84 = *(v71 + 16);
                if (!v84)
                {
                  goto LABEL_70;
                }

                v85 = sub_23ED9C9D0(0, 2);
                if (v86)
                {
                  sub_23ED71DA8(*(v71 + 56) + 32 * v85, v0 + 1304);
                  if (swift_dynamicCast())
                  {
                    LOBYTE(v84) = *(v0 + 345);
                    goto LABEL_70;
                  }
                }

LABEL_69:
                LOBYTE(v84) = 0;
LABEL_70:
                *(v0 + 346) = v84;
                *(v0 + 348) = v72;
                v87 = *(v0 + 1696);
                v88 = *(v0 + 1648);
                v89 = *(v0 + 1640);
                v90 = *(*(v0 + 1568) + 248);
                *(v0 + 1840) = sub_23ED9E5DC(&unk_27E388D30, type metadata accessor for ServiceOutputDelegate, &unk_23EDC8720);
                (*(v88 + 56))(v87, 1, 1, v89);
                v91 = *(v90 + 16);
                *(v0 + 1848) = v91;

                v22 = sub_23ED98A98;
                v23 = v91;
                v24 = 0;

                return MEMORY[0x2822009F8](v22, v23, v24);
              }

LABEL_62:
              v81 = *(v0 + 1720);
              v82 = *(v0 + 1712);
              v83 = *(v0 + 1704);
              sub_23EDC13E0();
              if ((*(v81 + 48))(v83, 1, v82) != 1)
              {
                sub_23ED6FA68(*(v0 + 1704), &qword_27E388D28, &unk_23EDC6750);
              }

              v71 = *(v0 + 1560);
              if (!v71)
              {
                goto LABEL_69;
              }

              goto LABEL_65;
            }
          }
        }

        else
        {
          v72 = -1.0;
        }

        (*(*(v0 + 1720) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1712));
        goto LABEL_62;
      }

LABEL_75:
      __break(1u);
      return MEMORY[0x2822009F8](v22, v23, v24);
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v44 = swift_task_alloc();
  *(v0 + 1792) = v44;
  *v44 = v0;
  v44[1] = sub_23ED9824C;

  return sub_23EDA21E4(v43);
}

uint64_t sub_23ED9824C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1800) = v1;

  if (v1)
  {
    v5 = sub_23ED9A628;
  }

  else
  {
    *(v4 + 1808) = a1;
    v5 = sub_23ED98374;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23ED98374(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v65 = v4;
  v5 = *(v4 + 1800);
  *(v4 + 1816) = *(v4 + 1808);
  v6 = *(v4 + 1568);
  *(v4 + 1152) = 0u;
  *(v4 + 1168) = 0u;
  *(v4 + 1184) = 0;
  v7 = *(v6 + 216);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_41;
  }

  *(v6 + 216) = v9;
  v10 = *(v6 + 232);
  if (v10)
  {
    v11 = *(v4 + 1568);
    v3 = *(v11 + 240);
    v12 = *(v11 + 224);
    v62 = v9;
    v63 = v12;
    v64 = 0;

    v10(&v62, v4 + 1152);
    sub_23ED9D5A8(v10, v3);
  }

  sub_23ED6FA68(v4 + 1152, &qword_27E388CB0, &qword_23EDC62E0);
  ColorSpace = CVImageBufferGetColorSpace(*(v4 + 1776));
  if (!ColorSpace)
  {
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    v23 = v14;
    if (v14)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    v23 = v14;

LABEL_12:
    *(v4 + 1824) = v23;
    v24 = *(v4 + 1744);
    [*(v4 + 1784) extent];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    *(v24 + 48) = 0;
    v27 = CGColorSpaceCopyName(v23);
    if (!v27)
    {
      sub_23ED7BB24(0, &unk_27E388CD0, 0x277CCACA8);
      v27 = sub_23EDC1E20();
    }

    v28 = *(v4 + 1744);
    v29 = *(v4 + 1568);
    swift_beginAccess();
    v30 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v28 + 24);
    *(v28 + 24) = 0x8000000000000000;
    sub_23ED78970(v30, 0x6C6F437465737341, 0xEF6563617053726FLL, isUniquelyReferenced_nonNull_native);
    *(v28 + 24) = v62;
    swift_endAccess();

    v32 = *(v29 + 256);
    type metadata accessor for ServiceOutputDelegate(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v33 = v23;
    *(v4 + 1832) = sub_23EDB6050(v32, v33);

    a1 = swift_unknownObjectRelease();
    *(v4 + 1224) = 0;
    *(v4 + 1192) = 0u;
    *(v4 + 1208) = 0u;
    v34 = *(v29 + 216);
    v8 = __CFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v8)
    {
      v36 = *(v4 + 1568);
      *(v36 + 216) = v35;
      v37 = *(v36 + 232);
      if (v37)
      {
        v38 = *(v4 + 1568);
        v39 = *(v38 + 240);
        v40 = *(v38 + 224);
        v62 = v35;
        v63 = v40;
        v64 = 0;

        v37(&v62, v4 + 1192);
        sub_23ED9D5A8(v37, v39);
      }

      sub_23ED6FA68(v4 + 1192, &qword_27E388CB0, &qword_23EDC62E0);
      v41 = *(v4 + 1560);
      if (v41)
      {
        v42 = -1.0;
        if (*(v41 + 16))
        {
          v43 = sub_23ED9C9D0(0, 0);
          if (v44)
          {
            sub_23ED71DA8(*(v41 + 56) + 32 * v43, v4 + 1336);
            if (swift_dynamicCast())
            {
              v42 = *(v4 + 148);
            }

            else
            {
              v42 = -1.0;
            }
          }
        }

        if (*(v41 + 16))
        {
          v45 = sub_23ED9C9D0(0, 1);
          if (v46)
          {
            v47 = *(v4 + 1720);
            v48 = *(v4 + 1712);
            v49 = *(v4 + 1704);
            sub_23ED71DA8(*(v41 + 56) + 32 * v45, v4 + 1272);
            v50 = swift_dynamicCast();
            (*(v47 + 56))(v49, v50 ^ 1u, 1, v48);
            if ((*(v47 + 48))(v49, 1, v48) != 1)
            {
              (*(*(v4 + 1720) + 32))(*(v4 + 1728), *(v4 + 1704), *(v4 + 1712));
LABEL_32:
              v54 = *(v41 + 16);
              if (!v54)
              {
                goto LABEL_37;
              }

              v55 = sub_23ED9C9D0(0, 2);
              if (v56)
              {
                sub_23ED71DA8(*(v41 + 56) + 32 * v55, v4 + 1304);
                if (swift_dynamicCast())
                {
                  LOBYTE(v54) = *(v4 + 345);
                  goto LABEL_37;
                }
              }

LABEL_36:
              LOBYTE(v54) = 0;
LABEL_37:
              *(v4 + 346) = v54;
              *(v4 + 348) = v42;
              v57 = *(v4 + 1696);
              v58 = *(v4 + 1648);
              v59 = *(v4 + 1640);
              v60 = *(*(v4 + 1568) + 248);
              *(v4 + 1840) = sub_23ED9E5DC(&unk_27E388D30, type metadata accessor for ServiceOutputDelegate, &unk_23EDC8720);
              (*(v58 + 56))(v57, 1, 1, v59);
              v61 = *(v60 + 16);
              *(v4 + 1848) = v61;

              a1 = sub_23ED98A98;
              a2 = v61;
              a3 = 0;

              return MEMORY[0x2822009F8](a1, a2, a3);
            }

LABEL_29:
            v51 = *(v4 + 1720);
            v52 = *(v4 + 1712);
            v53 = *(v4 + 1704);
            sub_23EDC13E0();
            if ((*(v51 + 48))(v53, 1, v52) != 1)
            {
              sub_23ED6FA68(*(v4 + 1704), &qword_27E388D28, &unk_23EDC6750);
            }

            v41 = *(v4 + 1560);
            if (!v41)
            {
              goto LABEL_36;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        v42 = -1.0;
      }

      (*(*(v4 + 1720) + 56))(*(v4 + 1704), 1, 1, *(v4 + 1712));
      goto LABEL_29;
    }

LABEL_41:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3 = ColorSpace;
  v14 = sub_23EDC1DA0();
  if (!v5)
  {
    goto LABEL_11;
  }

  v15 = *(v4 + 1784);
  v16 = *(v4 + 1776);
  v17 = *(v4 + 1768);
  v18 = *(v4 + 1752);
  v19 = *(v4 + 1568);
  swift_unknownObjectRelease();

  v20 = swift_task_alloc();
  *(v20 + 16) = "generateMXI";
  *(v20 + 24) = 11;
  *(v20 + 32) = 2;
  *(v20 + 40) = v18;
  *(v20 + 48) = sub_23ED9E624;
  *(v20 + 56) = v19;

  sub_23EDC1DE0();

  v21 = *(v4 + 8);

  return v21();
}

uint64_t sub_23ED98A98()
{
  sub_23ED71264(*(v0 + 1848) + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session, *(v0 + 1680));

  return MEMORY[0x2822009F8](sub_23ED98B10, 0, 0);
}

uint64_t sub_23ED98B10()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1640);
  sub_23ED6FA00(*(v0 + 1696), v1, &qword_27E388D20, &qword_23EDC45D8);
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 1688);
  if (v5 == 1)
  {
    v7 = *(v0 + 1640);
    sub_23EDC0EE0();
    if (v4(v6, 1, v7) != 1)
    {
      sub_23ED6FA68(*(v0 + 1688), &qword_27E388D20, &qword_23EDC45D8);
    }
  }

  else
  {
    (*(*(v0 + 1648) + 32))(*(v0 + 1664), *(v0 + 1688), *(v0 + 1640));
  }

  if (*(v0 + 346) == 1)
  {
    v8 = *(v0 + 1656);
    v9 = *(v0 + 1648);
    v10 = *(v0 + 1640);
    (*(v9 + 16))(v8, *(v0 + 1664), v10);
    v11 = type metadata accessor for InProcessInferenceOperation(0);
    v12 = swift_allocObject();
    (*(v9 + 32))(v12 + OBJC_IVAR____TtC16AlchemistService27InProcessInferenceOperation_id, v8, v10);
    *(v0 + 1056) = v11;
    *(v0 + 1064) = sub_23ED9E5DC(&qword_27E3885A8, type metadata accessor for InProcessInferenceOperation, &unk_23EDC40D0);
    *(v0 + 1032) = v12;
LABEL_9:
    v20 = *(v0 + 348);
    v21 = *(v0 + 1776);
    v22 = *(v0 + 1680);
    v23 = *(v0 + 1672);
    v24 = *(v0 + 1632);
    (*(*(v0 + 1720) + 16))(v24 + *(*(v0 + 1624) + 24), *(v0 + 1728), *(v0 + 1712));
    Width = CVPixelBufferGetWidth(v21);
    Height = CVPixelBufferGetHeight(v21);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
    type metadata accessor for PixelBufferArchive.HiddenBufferData();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_23EDC45C0;
    *v24 = Width;
    *(v24 + 8) = Height;
    *(v24 + 16) = PixelFormatType;
    *(v24 + 24) = v21;
    *(v24 + 32) = v28;
    *(v24 + 40) = v20;
    v29 = *(v0 + 1056);
    v30 = *(v0 + 1064);
    __swift_project_boxed_opaque_existential_1((v0 + 1032), v29);
    v31 = (v22 + *(v23 + 20));
    v32 = *v31;
    v33 = v31[1];
    LODWORD(v31) = *(v31 + 4);
    *(v0 + 1496) = v32;
    *(v0 + 1504) = v33;
    *(v0 + 1512) = v31;
    v34 = *(v30 + 32);
    v35 = v21;

    v56 = (v34 + *v34);
    v36 = swift_task_alloc();
    *(v0 + 1856) = v36;
    *v36 = v0;
    v36[1] = sub_23ED991EC;
    v37 = *(v0 + 1840);
    v38 = *(v0 + 1832);
    v39 = *(v0 + 1632);

    return v56(v39, v0 + 1496, v38, v37, v29, v30);
  }

  v13 = *(v0 + 1680);
  v14 = *(v13 + *(*(v0 + 1672) + 24));
  if (v14)
  {
    v15 = *(v0 + 1656);
    v16 = *(v0 + 1648);
    v17 = *(v0 + 1640);
    (*(v16 + 16))(v15, *(v0 + 1664), v17);
    v18 = type metadata accessor for ModelManagerInferenceOperation(0);
    v19 = swift_allocObject();
    (*(v16 + 32))(v19 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id, v15, v17);
    *(v19 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_modelManagerInterface) = v14;
    *(v0 + 1056) = v18;
    *(v0 + 1064) = sub_23ED9E5DC(&qword_27E388D40, type metadata accessor for ModelManagerInferenceOperation, &unk_23EDC40F8);
    *(v0 + 1032) = v19;

    goto LABEL_9;
  }

  v41 = *(v0 + 1696);
  v42 = *(v0 + 1664);
  v43 = *(v0 + 1648);
  v44 = *(v0 + 1640);
  sub_23ED71A8C();
  swift_allocError();
  *v45 = 1;
  swift_willThrow();

  (*(v43 + 8))(v42, v44);
  sub_23ED71AE0(v13, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v41, &qword_27E388D20, &qword_23EDC45D8);
  v46 = *(v0 + 1824);
  v47 = *(v0 + 1776);
  v48 = *(v0 + 1768);
  v49 = *(v0 + 1752);
  v50 = *(v0 + 1728);
  v51 = *(v0 + 1720);
  v52 = *(v0 + 1712);
  v53 = *(v0 + 1568);

  swift_unknownObjectRelease();
  (*(v51 + 8))(v50, v52);
  v54 = swift_task_alloc();
  *(v54 + 16) = "generateMXI";
  *(v54 + 24) = 11;
  *(v54 + 32) = 2;
  *(v54 + 40) = v49;
  *(v54 + 48) = sub_23ED9E624;
  *(v54 + 56) = v53;

  sub_23EDC1DE0();

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_23ED991EC()
{
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v2 = sub_23ED995C8;
  }

  else
  {
    v2 = sub_23ED99310;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED99310()
{
  v1 = v0[229];
  v2 = v0[212];
  v3 = v0[210];
  v4 = v0[208];
  v5 = v0[206];
  v6 = v0[205];
  v7 = v0[204];

  sub_23ED71AE0(v7, type metadata accessor for InferenceRecipe);
  (*(v5 + 8))(v4, v6);
  sub_23ED71AE0(v3, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v2, &qword_27E388D20, &qword_23EDC45D8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 129);

  return MEMORY[0x2822009F8](sub_23ED9941C, v1, 0);
}

uint64_t sub_23ED9941C()
{
  v1 = v0[229];
  v2 = *(v1 + 120);
  v0[234] = v2;
  v3 = *(v1 + 128);
  v0[235] = v3;
  v4 = v3;
  v5 = v2;

  return MEMORY[0x2822009F8](sub_23ED9949C, 0, 0);
}

uint64_t sub_23ED9949C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 1880);
  if (v6)
  {
    v7 = &protocol witness table for ALCMonocularDepthOutput;
    v8 = &type metadata for ALCMonocularDepthOutput;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v3 + 1240) = 0u;
  }

  v9 = *(v3 + 1568);
  *(v3 + 1232) = v6;
  *(v3 + 1256) = v8;
  *(v3 + 1264) = v7;
  v10 = *(v9 + 216);
  v11 = v10 + 1;
  if (v10 == -1)
  {
    __break(1u);
  }

  else
  {
    v24 = v4 | 0x1000000000000000;
    v25 = v5;
    v23 = v3;
    *(v9 + 216) = v11;
    v12 = *(v9 + 232);
    v13 = *(v3 + 1880);
    if (v12)
    {
      v14 = *(v3 + 1568);
      v15 = *(v14 + 240);
      v16 = *(v14 + 224);
      v21[0] = v11;
      v21[1] = v16;
      v22 = 0;
      v17 = v13;
      sub_23ED9D598(v12, v15);
      v12(v21, v3 + 1232);
      sub_23ED9D5A8(v12, v15);
    }

    else
    {
      v18 = v13;
    }

    v19 = *(v3 + 1832);
    sub_23ED6FA68(v3 + 1232, &qword_27E388CB0, &qword_23EDC62E0);
    a1 = sub_23ED99864;
    a2 = v19;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23ED995C8()
{
  v1 = *(v0 + 1696);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1664);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1632);

  sub_23ED71AE0(v6, type metadata accessor for InferenceRecipe);
  (*(v4 + 8))(v3, v5);
  sub_23ED71AE0(v2, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v1, &qword_27E388D20, &qword_23EDC45D8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1032));
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1776);
  v9 = *(v0 + 1768);
  v10 = *(v0 + 1752);
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1720);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1568);

  swift_unknownObjectRelease();
  (*(v12 + 8))(v11, v13);
  v15 = swift_task_alloc();
  *(v15 + 16) = "generateMXI";
  *(v15 + 24) = 11;
  *(v15 + 32) = 2;
  *(v15 + 40) = v10;
  *(v15 + 48) = sub_23ED9E624;
  *(v15 + 56) = v14;

  sub_23EDC1DE0();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23ED99864()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1584);
  v3 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  swift_beginAccess();
  sub_23ED6FA00(v1 + v3, v2, &qword_27E388D18, &unk_23EDC6740);

  return MEMORY[0x2822009F8](sub_23ED99910, 0, 0);
}

uint64_t sub_23ED99910()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_23ED6FA68(v3, &qword_27E388D18, &unk_23EDC6740);
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "User terminated generation at the end of the inference phase.", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }

    v8 = *(v0 + 1880);
    v9 = *(v0 + 1872);
    v76 = *(v0 + 1824);
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1768);
    v12 = *(v0 + 1752);
    v85 = *(v0 + 1728);
    v13 = *(v0 + 1720);
    v79 = *(v0 + 1776);
    v82 = *(v0 + 1712);
    v14 = *(v0 + 1568);

    sub_23ED721D8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v13 + 8))(v85, v82);
    v16 = swift_task_alloc();
    *(v16 + 16) = "generateMXI";
    *(v16 + 24) = 11;
    *(v16 + 32) = 2;
    *(v16 + 40) = v12;
    *(v16 + 48) = sub_23ED9E624;
    *(v16 + 56) = v14;

    goto LABEL_10;
  }

  v89 = *(v0 + 1872);
  v91 = *(v0 + 1864);
  v17 = *(v0 + 1784);
  v87 = *(v0 + 1736);
  v18 = *(v0 + 1616);
  (*(v1 + 32))(v18, v3, v2);
  sub_23EDA8078(v18);
  [v17 extent];
  v20 = v19;
  v22 = v21;
  sub_23EDC1340();
  v24 = v23;
  v25 = *(v0 + 960);
  *(v0 + 520) = *(v0 + 944);
  *(v0 + 536) = v25;
  *(v0 + 552) = *(v0 + 976);
  v26 = *(v0 + 928);
  *(v0 + 488) = *(v0 + 912);
  *(v0 + 504) = v26;
  *(v0 + 560) = v87;
  *(v0 + 568) = *(v0 + 1448);
  *(v0 + 584) = *(v0 + 1464);
  *(v0 + 592) = *(v0 + 1944);
  v27 = *(v0 + 872);
  *(v0 + 625) = *(v0 + 856);
  *(v0 + 641) = v27;
  *(v0 + 657) = *(v0 + 888);
  *(v0 + 673) = *(v0 + 904);
  v28 = *(v0 + 840);
  *(v0 + 593) = *(v0 + 824);
  *(v0 + 609) = v28;
  sub_23EDA68AC(v89, v0 + 488, v0 + 352, v20, v22, v24);
  if (v91)
  {
    v29 = *(v0 + 1872);
    v30 = *(v0 + 1824);
    v77 = *(v0 + 1880);
    v31 = *(v0 + 1776);
    v32 = *(v0 + 1768);
    v86 = *(v0 + 1752);
    v33 = *(v0 + 1720);
    v80 = *(v0 + 1712);
    v83 = *(v0 + 1728);
    v34 = *(v0 + 1616);
    v35 = *(v0 + 1600);
    v36 = *(v0 + 1592);
    v90 = *(v0 + 1568);

    swift_unknownObjectRelease();
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v83, v80);
    v37 = swift_task_alloc();
    *(v37 + 16) = "generateMXI";
    *(v37 + 24) = 11;
    *(v37 + 32) = 2;
    *(v37 + 40) = v86;
    *(v37 + 48) = sub_23ED9E624;
    *(v37 + 56) = v90;

LABEL_10:
    sub_23EDC1DE0();

    v56 = *(v0 + 8);

    return v56();
  }

  v38 = *(v0 + 1784);
  v39 = *(v0 + 1616);
  v40 = *(v0 + 1608);
  v41 = *(v0 + 1600);
  v42 = *(v0 + 1592);
  v43 = *(v0 + 464);
  *(v0 + 784) = *(v0 + 448);
  *(v0 + 800) = v43;
  *(v0 + 816) = *(v0 + 480);
  v44 = *(v0 + 400);
  *(v0 + 720) = *(v0 + 384);
  *(v0 + 736) = v44;
  v45 = *(v0 + 432);
  *(v0 + 752) = *(v0 + 416);
  *(v0 + 768) = v45;
  v46 = *(v0 + 368);
  *(v0 + 688) = *(v0 + 352);
  *(v0 + 704) = v46;
  [v38 extent];
  v48 = v47;
  v50 = v49;
  sub_23EDC1340();
  v52 = v51;
  v53.f64[0] = v48;
  sub_23EDB4BF0(v0 + 16, v53, v50, v52, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  (*(v41 + 16))(v40, v39, v42);
  sub_23EDA89EC();
  *(v0 + 1888) = v55;
  v58 = v54;
  v59 = v55;
  v88 = *(v0 + 1880);
  v78 = *(v0 + 1736);
  v60 = *(v0 + 1608);
  v61 = *(v0 + 1600);
  v62 = *(v0 + 1592);
  v84 = sub_23EDC1360();
  v64 = v63;
  *(v0 + 1896) = v63;
  v81 = sub_23EDC1350();
  v66 = v65;
  *(v0 + 1904) = v65;
  v67 = *(v61 + 8);
  *(v0 + 1912) = v67;
  *(v0 + 1920) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v60, v62);
  v68 = *(v0 + 912);
  *(v0 + 168) = *(v0 + 928);
  v69 = *(v0 + 960);
  *(v0 + 184) = *(v0 + 944);
  *(v0 + 200) = v69;
  v70 = *(v0 + 976);
  *(v0 + 152) = v68;
  *(v0 + 216) = v70;
  *(v0 + 224) = v78;
  *(v0 + 232) = *(v0 + 1448);
  *(v0 + 248) = *(v0 + 1464);
  *(v0 + 256) = *(v0 + 1944);
  v71 = *(v0 + 840);
  *(v0 + 257) = *(v0 + 824);
  *(v0 + 273) = v71;
  *(v0 + 337) = *(v0 + 904);
  v72 = *(v0 + 888);
  *(v0 + 305) = *(v0 + 872);
  *(v0 + 321) = v72;
  *(v0 + 289) = *(v0 + 856);
  *(v0 + 1536) = v88;
  *(v0 + 984) = v58;
  *(v0 + 992) = v59;
  *(v0 + 1000) = v84;
  *(v0 + 1008) = v64;
  *(v0 + 1016) = v81;
  *(v0 + 1024) = v66;
  v73 = swift_task_alloc();
  *(v0 + 1928) = v73;
  *v73 = v0;
  v73[1] = sub_23ED9A1F8;
  v74 = *(v0 + 1872);
  v75 = *(v0 + 1816);

  return sub_23EDA2B64(v74, v0 + 352, v0 + 152, v0 + 16, v75, (v0 + 1536), v0 + 984);
}

uint64_t sub_23ED9A1F8(uint64_t a1)
{
  v3 = *v2;
  v3[184] = v2;
  v3[185] = a1;
  v3[186] = v1;
  v3[242] = v1;

  if (v1)
  {
    v4 = sub_23ED9A7E4;
  }

  else
  {

    v4 = sub_23ED9A340;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23ED9A340(uint64_t a1)
{
  v24 = *(v1 + 1936);
  v22 = *(v1 + 1912);
  v2 = *(v1 + 1880);
  v3 = *(v1 + 1872);
  v4 = *(v1 + 1824);
  v5 = *(v1 + 1784);
  v19 = *(v1 + 1776);
  v6 = *(v1 + 1768);
  v7 = *(v1 + 1752);
  v21 = *(v1 + 1728);
  v8 = *(v1 + 1720);
  v20 = *(v1 + 1712);
  v9 = *(v1 + 1616);
  v18 = *(v1 + 1592);
  v23 = *(v1 + 1568);
  sub_23EDC1340();
  v11 = v10;

  swift_unknownObjectRelease();
  v22(v9, v18);
  (*(v8 + 8))(v21, v20);
  v12 = swift_task_alloc();
  *(v12 + 16) = "generateMXI";
  *(v12 + 24) = 11;
  *(v12 + 32) = 2;
  *(v12 + 40) = v7;
  *(v12 + 48) = sub_23ED9E624;
  *(v12 + 56) = v23;

  sub_23EDC1DE0();
  if (v24)
  {
  }

  v13 = *(v1 + 1480);
  v14 = *(v1 + 1544);

  *&v25[8] = *(v1 + 688);
  *&v25[72] = *(v1 + 752);
  *&v25[56] = *(v1 + 736);
  *&v25[40] = *(v1 + 720);
  *&v25[24] = *(v1 + 704);
  v15 = *(v1 + 816);
  *&v25[120] = *(v1 + 800);
  *&v25[104] = *(v1 + 784);
  *&v25[88] = *(v1 + 768);
  *(v14 + 8) = *v25;
  *(v14 + 72) = *&v25[64];
  *(v14 + 56) = *&v25[48];
  *&v25[136] = v15;
  *(v14 + 40) = *&v25[32];
  *(v14 + 24) = *&v25[16];
  *(v14 + 132) = *&v25[124];
  *(v14 + 120) = *&v25[112];
  *(v14 + 104) = *&v25[96];
  *v14 = v13;
  *(v14 + 88) = *&v25[80];
  *(v14 + 148) = v11;

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_23ED9A628()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1752);
  v4 = *(v0 + 1568);

  v5 = swift_task_alloc();
  *(v5 + 16) = "generateMXI";
  *(v5 + 24) = 11;
  *(v5 + 32) = 2;
  *(v5 + 40) = v3;
  *(v5 + 48) = sub_23ED9E624;
  *(v5 + 56) = v4;

  sub_23EDC1DE0();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23ED9A7E4()
{
  v13 = *(v0 + 1912);
  v15 = *(v0 + 1880);
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1768);
  v14 = *(v0 + 1752);
  v5 = *(v0 + 1720);
  v11 = *(v0 + 1712);
  v12 = *(v0 + 1728);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1592);
  v16 = *(v0 + 1568);

  swift_unknownObjectRelease();
  v13(v6, v7);
  (*(v5 + 8))(v12, v11);

  v8 = swift_task_alloc();
  *(v8 + 16) = "generateMXI";
  *(v8 + 24) = 11;
  *(v8 + 32) = 2;
  *(v8 + 40) = v14;
  *(v8 + 48) = sub_23ED9E624;
  *(v8 + 56) = v16;

  sub_23EDC1DE0();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23ED9AA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[127] = v6;
  v7[126] = a6;
  v7[125] = a5;
  v7[124] = a4;
  v7[123] = a3;
  v7[122] = a2;
  v7[121] = a1;
  v8 = sub_23EDC16A0();
  v7[128] = v8;
  v7[129] = *(v8 - 8);
  v7[130] = swift_task_alloc();
  v7[131] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CB8, &unk_23EDC62F8);
  v7[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED9AB6C, 0, 0);
}

uint64_t sub_23ED9AB6C()
{
  v1 = *(v0 + 984);
  if (v1)
  {
    v2 = *(v0 + 984);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    v1 = 0;
  }

  *(v0 + 1064) = v2;
  v3 = *(v0 + 1000);
  v4 = v1;
  sub_23ED74010(v2);
  *(v0 + 168) = *v3;
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v7 = *(v3 + 32);
  *(v0 + 184) = *(v3 + 16);
  *(v0 + 232) = v6;
  *(v0 + 216) = v5;
  *(v0 + 200) = v7;
  v8 = *(v3 + 112);
  v9 = *(v3 + 128);
  v10 = *(v3 + 96);
  *(v0 + 248) = *(v3 + 80);
  *(v0 + 280) = v8;
  *(v0 + 296) = v9;
  *(v0 + 264) = v10;
  v12 = *(v3 + 160);
  v11 = *(v3 + 176);
  v13 = *(v3 + 144);
  *(v0 + 360) = *(v3 + 192);
  *(v0 + 328) = v12;
  *(v0 + 344) = v11;
  *(v0 + 312) = v13;
  v14 = swift_task_alloc();
  *(v0 + 1072) = v14;
  *v14 = v0;
  v14[1] = sub_23ED9ACAC;
  v15 = *(v0 + 1008);
  v16 = *(v0 + 976);

  return sub_23ED97174(v0 + 16, v16, v0 + 168, v15);
}

uint64_t sub_23ED9ACAC()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_23ED9BAB4;
  }

  else
  {
    v2 = sub_23ED9ADC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED9ADC0()
{
  v57 = v1;
  v6 = 0x278C70000;
  [*(v1 + 976) extent];
  Width = CGRectGetWidth(v59);
  v10 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  LODWORD(Width) = 1;
  if (v10 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(Width) = 0;
  if (v10 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [*(v1 + 976) extent];
  Width = CGRectGetHeight(v60);
  v11 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LODWORD(Width) = 1;
  if (v11 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  LODWORD(Width) = 0;
  if (v11 < 9.22337204e18)
  {
    v5 = [*(v1 + 976) colorSpace];
    v4 = &unk_27E389000;
    if (!v5)
    {
      if (qword_27E388188 != -1)
      {
        swift_once();
      }

      v5 = qword_27E3897E0;
    }

    v12 = MEMORY[0x23EF241E0](v5);
    v13 = *(v1 + 1016);
    v14 = *(v1 + 976);
    if (v12)
    {
      v15 = *(v13 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CE0, qword_23EDC6310);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23EDC4860;
      v17 = *MEMORY[0x277CBF930];
      *(v16 + 32) = *MEMORY[0x277CBF930];
      type metadata accessor for CGColorSpace(0);
      *(v16 + 64) = v18;
      *(v16 + 40) = v5;
      v19 = v17;
      v56 = v5;
      sub_23ED7A940(v16);
      swift_setDeallocating();
      sub_23ED6FA68(v16 + 32, &qword_27E388690, &qword_23EDC4C80);
      swift_deallocClassInstance();
      type metadata accessor for CIContextOption(0);
      sub_23ED9E5DC(&qword_27E388440, type metadata accessor for CIContextOption, &unk_23EDC3FFC);
      v20 = sub_23EDC1890();

      v21 = [objc_opt_self() contextWithMTLDevice:v15 options:v20];

      [v14 extent];
      v22 = [v21 createCGImage:v14 fromRect:?];

      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v29 = *(v13 + 272);
      [*(v1 + 976) extent];
      if (qword_27E388180 != -1)
      {
        swift_once();
      }

      if (qword_27E388188 != -1)
      {
        swift_once();
      }

      v56 = qword_27E3897E0;
      v22 = [v29 createCGImage:*(v1 + 976) fromRect:? format:? colorSpace:?];
      if (v22)
      {
LABEL_13:
        v3 = v10;
        v2 = v11;
        v6 = (v1 + 368);
        v0 = *(v1 + 1008);
        image = v22;
        if (v0)
        {
          v23 = v22;
          v24 = *(v0 + 16);
          v25 = v56;
          v26 = v23;
          if (v24)
          {
            v27 = sub_23ED9C9D0(0, 4);
            if (v28)
            {
              sub_23ED71DA8(*(v0 + 56) + 32 * v27, v1 + 840);
              if (swift_dynamicCast())
              {
                v8 = *(v1 + 960);
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
          v31 = v56;
          v32 = v22;
        }

        if (v2 <= v3)
        {
          v8 = v10;
        }

        else
        {
          v8 = v11;
        }

LABEL_28:
        LODWORD(Width) = *(v1 + 164);
        v7 = *(v1 + 16);
        v33 = *(v1 + 144);
        *(v1 + 464) = *(v1 + 128);
        *(v1 + 480) = v33;
        *(v1 + 496) = *(v1 + 160);
        v34 = *(v1 + 80);
        *(v1 + 400) = *(v1 + 64);
        *(v1 + 416) = v34;
        v35 = *(v1 + 112);
        *(v1 + 432) = *(v1 + 96);
        *(v1 + 448) = v35;
        v36 = *(v1 + 48);
        *v6 = *(v1 + 32);
        *(v1 + 384) = v36;
        if (qword_27E388188 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_47;
      }
    }

    sub_23ED7E62C();
    swift_allocError();
    *v30 = 0xD000000000000022;
    *(v30 + 8) = 0x800000023EDCAD60;
    *(v30 + 16) = 3;
    swift_willThrow();

    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v52 = v7;
  v53 = v8;
  v54 = LODWORD(Width);
  swift_once();
  v7 = v52;
  LODWORD(Width) = v54;
  v8 = v53;
LABEL_29:
  v37 = *(v1 + 1080);
  sub_23EDA3C08(v7, v6, v3, v2, v8, v4[252], *(v1 + 1056), *&Width);
  if (v37)
  {
  }

  else
  {
    if (v0)
    {
      v38 = *(v1 + 1008);
      if (*(v38 + 16))
      {
        v39 = sub_23ED9C9D0(0, 3);
        if (v40)
        {
          sub_23ED71DA8(*(v38 + 56) + 32 * v39, v1 + 872);
          swift_dynamicCast();
        }
      }
    }

    v41 = *(v1 + 1040);
    v42 = *(v1 + 1032);
    v43 = *(v1 + 1024);
    v44 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
    sub_23EDC1690();
    sub_23EDC1670();
    (*(v42 + 8))(v41, v43);
    v45 = sub_23EDC19A0();

    v46 = CGImageDestinationCreateWithData(v44, v45, 3uLL, 0);

    if (v46)
    {
      type metadata accessor for CFString(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      sub_23ED9E5DC(&qword_27E388360, type metadata accessor for CFString, &unk_23EDC4040);
      sub_23EDC18A0();
      result = 0;
      __break(1u);
      return result;
    }

    v48 = *(v1 + 1056);
    sub_23ED721D8();
    swift_allocError();
    *v49 = 7;
    swift_willThrow();

    sub_23ED6FA68(v48, &qword_27E388CB8, &unk_23EDC62F8);
  }

LABEL_38:
  sub_23ED9D658(v1 + 16);
  v50 = *(v1 + 1064);
  sub_23EDA7AEC();

  v51 = *(v1 + 8);

  return v51();
}

void sub_23ED9BAB4()
{
  v13 = v0;
  v1 = *(v0 + 1016);
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[30];
    v11 = xmmword_23EDC6290;
    v12 = 1;
    *(v0 + 760) = 0u;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0;

    v2(&v11, v0 + 760);
    sub_23ED9D5A8(v2, v3);
    sub_23ED6FA68(v0 + 760, &qword_27E388CB0, &qword_23EDC62E0);
    v1 = *(v0 + 1016);
  }

  v4 = (v1[27] / v1[28]) * 100.0;
  if (COERCE_INT(fabs(v4)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 1.8447e19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v1[36];
  if (v4 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = v4;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v11 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_23ED78970(v7, 0xD000000000000014, 0x800000023EDCAD40, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v11;
  swift_endAccess();
  swift_willThrow();
  v9 = *(v0 + 1064);
  sub_23EDA7AEC();

  v10 = *(v0 + 8);

  v10();
}

uint64_t sub_23ED9BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  v11 = *(a4 + 176);
  *(v9 + 176) = *(a4 + 160);
  *(v9 + 192) = v11;
  *(v9 + 208) = *(a4 + 192);
  v12 = *(a4 + 112);
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = v12;
  v13 = *(a4 + 144);
  *(v9 + 144) = *(a4 + 128);
  *(v9 + 160) = v13;
  v14 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v14;
  v15 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v15;
  v16 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v16;
  v17 = swift_task_alloc();
  *(v9 + 216) = v17;
  *v17 = v9;
  v17[1] = sub_23ED9BDC4;

  return sub_23ED9AA58(a1, a2, a3, 0, v9 + 16, a5);
}

uint64_t sub_23ED9BDC4()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23ED9BEF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_23ED9BF10(void *a1, char a2)
{
  v5 = v2;
  v51[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23ED72294();
  if ((v8 & 0x100000000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [a1 pixelBuffer];
  if (v10)
  {
    if ((a2 & 1) == 0 || v9 == 1)
    {
      return;
    }
  }

  if (a2)
  {
    v11 = [a1 imageByApplyingCGOrientation_];
  }

  else
  {
    v11 = a1;
  }

  v12 = v11;
  [v11 extent];
  Width = CGRectGetWidth(v52);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v12 extent];
  Height = CGRectGetHeight(v53);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = sub_23EDC1420();
  if (v3)
  {

    return;
  }

  buffer = v15;
  v16 = [a1 colorSpace];
  if (v16)
  {
    v17 = v16;
    if (sub_23ED9E250(v16))
    {
      goto LABEL_32;
    }

    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v18 = sub_23EDC1790();
    __swift_project_value_buffer(v18, qword_27E3897E8);
    v19 = v17;
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = CGColorSpaceCopyName(v19);
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_23ED67000, v20, v21, "Input colorspace %@ is not natively supported, will be converted to sRGB.", v22, 0xCu);
      sub_23ED6FA68(v23, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v23, -1, -1);
      MEMORY[0x23EF24B30](v22, -1, -1);
    }

    v25 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (v25)
    {
      v17 = v25;

      goto LABEL_32;
    }

LABEL_51:
    __break(1u);
    return;
  }

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v26 = sub_23EDC1790();
  __swift_project_value_buffer(v26, qword_27E3897E8);
  v27 = sub_23EDC1770();
  v28 = sub_23EDC1D90();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23ED67000, v27, v28, "Input does not specify colorspace, will be regarded as sRGB.", v29, 2u);
    MEMORY[0x23EF24B30](v29, -1, -1);
  }

  v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v17)
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_32:
  v30 = *MEMORY[0x277CC4B78];
  v9 = v17;
  CVBufferSetAttachment(buffer, v30, v9, kCVAttachmentMode_ShouldPropagate);
  v31 = [objc_allocWithZone(MEMORY[0x277CBF778]) initWithPixelBuffer_];
  [v31 setColorSpace_];

  v32 = v5[34];
  [v12 extent];
  v51[0] = 0;
  v33 = [v32 startTaskToRender:v12 fromRect:v31 toDestination:v51 atPoint:? error:?];
  v34 = v51[0];
  if (!v33)
  {
    v46 = v51[0];
    sub_23EDC0E30();

    swift_willThrow();
LABEL_39:

    return;
  }

  v5 = v33;
  v51[0] = 0;
  v35 = v34;
  v36 = [v5 waitUntilCompletedAndReturnError_];
  if (!v36)
  {
    v47 = v51[0];
    sub_23EDC0E30();

    swift_willThrow();
    goto LABEL_39;
  }

  v4 = v36;
  v49 = v31;
  v37 = qword_27E388190;
  v38 = v51[0];
  if (v37 != -1)
  {
LABEL_49:
    swift_once();
  }

  v39 = sub_23EDC1790();
  __swift_project_value_buffer(v39, qword_27E3897E8);
  v40 = v4;
  v41 = sub_23EDC1770();
  v42 = sub_23EDC1D70();

  if (os_log_type_enabled(v41, v42))
  {
    log = v41;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v44 = v4;
    v45 = v40;
    _os_log_impl(&dword_23ED67000, log, v42, "Input CIImage to CVPixelBuffer conversion completed with info: %@", v43, 0xCu);
    sub_23ED6FA68(v44, &unk_27E388D00, &unk_23EDC6730);
    MEMORY[0x23EF24B30](v44, -1, -1);
    MEMORY[0x23EF24B30](v43, -1, -1);
  }

  else
  {
  }
}

uint64_t ALCService.deinit()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v9 = *(v0 + 208);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  sub_23ED9513C(v8);
  sub_23ED9D5A8(*(v0 + 232), *(v0 + 240));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ALCService.__deallocating_deinit()
{
  ALCService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED9C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 288);
  sub_23EDC23B0();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_23ED78970(v8, 0xD000000000000013, 0x800000023EDCAEC0, isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = v11;
  return swift_endAccess();
}

void sub_23ED9C744(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_23ED9C7E0(uint64_t a1)
{
  sub_23EDC1FC0();
  v2 = sub_23EDC18C0();

  return sub_23ED9CAD4(a1, v2);
}

unint64_t sub_23ED9C844(uint64_t a1)
{
  v2 = sub_23EDC22E0();

  return sub_23ED9CC6C(a1, v2);
}

unint64_t sub_23ED9C888(uint64_t a1)
{
  sub_23EDC22F0();
  type metadata accessor for CFString(0);
  sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString, &unk_23EDC3BEC);
  sub_23EDC14B0();
  v2 = sub_23EDC2320();

  return sub_23ED9CCD8(a1, v2);
}

unint64_t sub_23ED9C940(uint64_t a1)
{
  sub_23EDC19D0();
  sub_23EDC22F0();
  sub_23EDC1A50();
  v2 = sub_23EDC2320();

  return sub_23ED9D078(a1, v2);
}

unint64_t sub_23ED9C9D0(uint64_t a1, uint64_t a2)
{
  sub_23EDC22F0();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v4 = 4;
        goto LABEL_15;
      case 4:
        v4 = 5;
        goto LABEL_15;
      case 5:
        v4 = 6;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x23EF24060](3);
    sub_23EDC1A50();
    goto LABEL_16;
  }

  if (!a2)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v4 = 1;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v4 = 2;
LABEL_15:
  MEMORY[0x23EF24060](v4);
LABEL_16:
  v5 = sub_23EDC2320();

  return sub_23ED9CDE4(a1, a2, v5);
}

unint64_t sub_23ED9CAD4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_23EDC1FC0();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_23EDC1920();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23ED9CC6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23ED9CCD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString, &unk_23EDC3BEC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23EDC14A0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23ED9CDE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (a2 == 3)
          {
            v15 = *v9;
            v16 = 3;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 3;
          goto LABEL_24;
        case 4:
          if (a2 == 4)
          {
            v15 = *v9;
            v16 = 4;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 4;
          goto LABEL_24;
        case 5:
          if (a2 == 5)
          {
            v15 = *v9;
            v16 = 5;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          if (!a2)
          {
            v15 = *v9;
            v16 = 0;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 0;
          goto LABEL_24;
        case 1:
          if (a2 == 1)
          {
            v15 = *v9;
            v16 = 1;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 1;
          goto LABEL_24;
        case 2:
          if (a2 == 2)
          {
            v15 = *v9;
            v16 = 2;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      sub_23ED9E594(a1, a2);
      sub_23ED9E594(v10, v11);
      v12 = v11;
LABEL_24:
      sub_23ED9E5A8(v10, v12);
      sub_23ED9E5A8(a1, a2);
      goto LABEL_25;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = sub_23EDC2240();
    sub_23ED9E594(a1, a2);
    sub_23ED9E594(v10, v11);
    sub_23ED9E5A8(v10, v11);
    sub_23ED9E5A8(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_25:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_23ED9E594(a1, a2);
  sub_23ED9E594(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_41:
  sub_23ED9E5A8(v15, v16);
  sub_23ED9E5A8(a1, a2);
  return v5;
}

unint64_t sub_23ED9D078(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23EDC19D0();
      v8 = v7;
      if (v6 == sub_23EDC19D0() && v8 == v9)
      {
        break;
      }

      v11 = sub_23EDC2240();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23ED9D17C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EF23C50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23EDC1FE0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23ED9D2A4(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFString(0);
  sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString, &unk_23EDC3BEC);
  return sub_23EDC14A0() & 1;
}

uint64_t _s16AlchemistService10ALCServiceC16GenerationOptionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_23ED9E5A8(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_23ED9E5A8(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_23ED9E5A8(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_23ED9E594(*a2, a2[1]);
        sub_23ED9E594(v2, v3);
        sub_23ED9E5A8(v2, v3);
        sub_23ED9E5A8(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_23ED9E5A8(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_23ED9E5A8(*a1, 1uLL);
          sub_23ED9E5A8(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_23ED9E5A8(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_23ED9E5A8(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_23ED9E594(*a1, v3);
    sub_23ED9E594(v2, v3);
    sub_23ED9E5A8(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = sub_23EDC2240();
  sub_23ED9E594(v4, v5);
  sub_23ED9E594(v2, v3);
  sub_23ED9E5A8(v2, v3);
  sub_23ED9E5A8(v4, v5);
  return v10 & 1;
}

uint64_t sub_23ED9D598(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23ED9D5A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23ED9D5DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23ED9D614(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

unint64_t sub_23ED9D6B0()
{
  result = qword_27E388CE8;
  if (!qword_27E388CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CE8);
  }

  return result;
}

unint64_t sub_23ED9D708()
{
  result = qword_27E388CF0;
  if (!qword_27E388CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CF0);
  }

  return result;
}

uint64_t sub_23ED9D75C(uint64_t *a1, int a2)
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

uint64_t sub_23ED9D7A4(uint64_t result, int a2, int a3)
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

uint64_t sub_23ED9D80C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23ED9D860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ALCService.generate(_:with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23ED9E628;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ALCService.generate(from:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 288) + **(*v3 + 288));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_23ED9DD08;

  return v10(a1, a2, a3);
}

uint64_t sub_23ED9DD08(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ALCService.generateStereo(from:imageProperties:auxiliaryDictionary:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 304) + **(*v6 + 304));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_23ED68C90;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ALCService.generateStereo(from:imageProperties:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 312) + **(*v5 + 312));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_23ED70118;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t getEnumTagSinglePayload for ALCService.GenerationEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALCService.GenerationEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23ED9E114(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED9E130(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService10ALCServiceC16GenerationOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23ED9E178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED9E1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_23ED9E220(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23ED9E250(CGColorSpace *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC62B0;
  v3 = *MEMORY[0x277CBF4B8];
  *(inited + 32) = *MEMORY[0x277CBF4B8];
  v4 = *MEMORY[0x277CBF3E0];
  *(inited + 40) = *MEMORY[0x277CBF3E0];
  v5 = v3;
  v6 = v4;
  v7 = CGColorSpaceCopyName(a1);
  if (!v7)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v11 = sub_23EDC1790();
    __swift_project_value_buffer(v11, qword_27E3897E8);
    v8 = sub_23EDC1770();
    v12 = sub_23EDC1D80();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23ED67000, v8, v12, "CIImage does not contain a valid colorspace.", v13, 2u);
      MEMORY[0x23EF24B30](v13, -1, -1);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v21[2] = &v22;
  v9 = sub_23ED9D17C(sub_23ED9E574, v21, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v9 & 1) == 0)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v14 = sub_23EDC1790();
    __swift_project_value_buffer(v14, qword_27E3897E8);
    v15 = v8;
    v16 = sub_23EDC1770();
    v17 = sub_23EDC1D90();

    if (!os_log_type_enabled(v16, v17))
    {

      v10 = 0;
      v8 = v16;
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v8;
    v8 = v15;
    _os_log_impl(&dword_23ED67000, v16, v17, "Input colorspace is not natively supported: %@.", v18, 0xCu);
    sub_23ED6FA68(v19, &unk_27E388D00, &unk_23EDC6730);
    MEMORY[0x23EF24B30](v19, -1, -1);
    MEMORY[0x23EF24B30](v18, -1, -1);

    goto LABEL_12;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

double sub_23ED9E594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

double sub_23ED9E5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

double sub_23ED9E5BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_23ED9E5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ALCService.availability()@<X0>(char *a1@<X8>)
{
  v2 = sub_23EDC1190();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D48, &qword_23EDC6780);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  result = sub_23EDA12AC();
  if ((result & 1) == 0)
  {
    v18 = 3;
LABEL_21:
    *a1 = v18;
    return result;
  }

  sub_23EDC0FC0();
  swift_allocObject();
  v15 = sub_23EDC0FB0();
  sub_23EDC0F20();
  sub_23EDC0F90();

  v48[0] = v50;
  v48[1] = v51;
  v49 = v52;
  v16 = (v3 + 56);
  if (*(&v51 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D58, &qword_23EDC6790);
    v17 = swift_dynamicCast();
    (*v16)(v11, v17 ^ 1u, 1, v2);
  }

  else
  {
    sub_23ED6FA68(v48, &qword_27E388D50, &qword_23EDC6788);
    (*v16)(v11, 1, 1, v2);
  }

  sub_23EDA13AC(v11, v13);
  sub_23ED6FA00(v13, v8, &qword_27E388D48, &qword_23EDC6780);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_23ED6FA68(v8, &qword_27E388D48, &qword_23EDC6780);
LABEL_16:
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v33 = sub_23EDC1790();
    __swift_project_value_buffer(v33, qword_27E3897E8);
    v34 = sub_23EDC1770();
    v35 = sub_23EDC1D80();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23ED67000, v34, v35, "Bundle not resource backed", v36, 2u);
      MEMORY[0x23EF24B30](v36, -1, -1);
    }

    result = sub_23ED6FA68(v13, &qword_27E388D48, &qword_23EDC6780);
    v18 = 2;
    goto LABEL_21;
  }

  v19 = v47;
  v20 = (*(v3 + 32))(v47, v8, v2);
  v21 = *(MEMORY[0x23EF22EE0](v20) + 16);

  if (!v21)
  {
    (*(v3 + 8))(v19, v2);
    goto LABEL_16;
  }

  v45 = v3;
  v46 = a1;
  v23 = MEMORY[0x23EF22EE0](v22);
  v24 = *(v23 + 16);
  if (v24)
  {
    v43 = v13;
    v44 = v15;
    *&v48[0] = MEMORY[0x277D84F90];
    sub_23EDA0DA0(0, v24, 0);
    v25 = *&v48[0];
    v42 = v23;
    v26 = v23 + 32;
    do
    {
      sub_23EDA141C(v26, &v50);
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v27 = sub_23EDC0FD0();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(&v50);
      *&v48[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_23EDA0DA0((v30 > 1), v31 + 1, 1);
        v25 = *&v48[0];
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v26 += 40;
      --v24;
    }

    while (v24);

    v13 = v43;
  }

  else
  {
  }

  sub_23EDC1000();
  v37 = sub_23EDC0FE0();
  v38 = v46;
  v39 = v37;

  MEMORY[0x28223BE20](v40);
  v41 = v47;
  *(&v42 - 2) = v47;
  *(&v42 - 1) = v39;
  sub_23EDC0FF0();
  sub_23ED6FA68(v13, &qword_27E388D48, &qword_23EDC6780);

  *v38 = 0;
  return (*(v45 + 8))(v41, v2);
}

void sub_23ED9EF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v21 = sub_23EDC1020();
  v4 = *(v21 - 8);
  v5 = MEMORY[0x28223BE20](v21);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x23EF22EE0](v5);
  v19 = *(v8 + 16);
  if (v19)
  {
    v9 = 0;
    v10 = v8 + 32;
    v17 = (v4 + 8);
    v18 = v8;
    while (v9 < *(v8 + 16))
    {
      sub_23EDA141C(v10, v23);
      v22 = v3;
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23[6] = &v16;
      v12 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v14 = &v16 - v13;
      sub_23EDC1010();
      v15 = v22;
      sub_23EDC1060();
      v3 = v15;
      if (v15)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        (*v17)(v7, v21);
        return;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      (*v17)(v7, v21);
      (*(v12 + 8))(v14, AssociatedTypeWitness);
      v10 += 40;
      v8 = v18;
      if (v19 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t static ALCService.requestDownloadProgress()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D60, &qword_23EDC6798);
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x277D85778]);
  return sub_23EDC1C40();
}

uint64_t sub_23ED9F304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_23EDC1BE0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_23EDA059C(0, 0, v8, &unk_23EDC6920, v11);
  return sub_23EDC1BF0();
}

uint64_t sub_23ED9F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D80, &qword_23EDC6940);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_23EDC1150();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_23EDC10C0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_23EDC1130();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D88, &qword_23EDC6948);
  v4[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D90, &qword_23EDC6950);
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D98, &qword_23EDC6958);
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v11 = sub_23EDC10E0();
  v4[27] = v11;
  v4[28] = *(v11 - 8);
  v4[29] = swift_task_alloc();
  v12 = sub_23EDC10A0();
  v4[30] = v12;
  v4[31] = *(v12 - 8);
  v4[32] = swift_task_alloc();
  v13 = sub_23EDC10B0();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED9F904, 0, 0);
}

uint64_t sub_23ED9F904()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  sub_23EDC0FC0();
  swift_allocObject();
  *(v0 + 288) = sub_23EDC0FB0();
  sub_23EDC1090();
  sub_23EDC1080();
  (*(v6 + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA0, &unk_23EDC6960);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23EDC4860;
  (*(v2 + 16))(v8 + v7, v1, v3);
  sub_23EDC10D0();
  sub_23EDC0FA0();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v9 = sub_23EDC1790();
  *(v0 + 296) = __swift_project_value_buffer(v9, qword_27E3897E8);
  v10 = sub_23EDC1770();
  v11 = sub_23EDC1D60();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23ED67000, v10, v11, "Starting download progress reporting", v12, 2u);
    MEMORY[0x23EF24B30](v12, -1, -1);
  }

  sub_23EDC1C20();
  *(v0 + 44) = *MEMORY[0x277D29BD0];
  *(v0 + 312) = *MEMORY[0x277D29BE0];
  v13 = MEMORY[0x277D29BF0];
  *(v0 + 316) = *MEMORY[0x277D29BE8];
  *(v0 + 320) = *v13;
  *(v0 + 324) = *MEMORY[0x277D29BC8];
  v14 = MEMORY[0x277D29CB0];
  *(v0 + 328) = *MEMORY[0x277D29BC0];
  *(v0 + 332) = *v14;
  *(v0 + 336) = *MEMORY[0x277D29CA8];
  v15 = MEMORY[0x277D29C98];
  *(v0 + 340) = *MEMORY[0x277D29CB8];
  *(v0 + 344) = *v15;
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  *v16 = v0;
  v16[1] = sub_23ED9FC0C;
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);

  return MEMORY[0x2822003E8](v17, 0, 0, v18);
}

uint64_t sub_23ED9FC0C()
{

  return MEMORY[0x2822009F8](sub_23ED9FD08, 0, 0);
}

uint64_t sub_23ED9FD08()
{
  v63 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

LABEL_36:
    v47 = *(v0 + 272);
    v48 = *(v0 + 280);
    v60 = *(v0 + 264);
    v49 = *(v0 + 224);
    v50 = *(v0 + 232);
    v51 = *(v0 + 208);
    v52 = *(v0 + 216);
    v53 = *(v0 + 192);
    v54 = *(v0 + 200);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v54 + 8))(v51, v53);
    (*(v49 + 8))(v50, v52);
    (*(v47 + 8))(v48, v60);

    v55 = *(v0 + 8);

    return v55();
  }

  v4 = *(v0 + 44);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  (*(v3 + 32))(*(v0 + 152), v1, v2);
  sub_23EDC1110();
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == v4)
  {
    v9 = *(v0 + 332);
    v10 = *(v0 + 128);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    (*(*(v0 + 120) + 96))(v10, *(v0 + 112));
    (*(v13 + 32))(v11, v10, v14);
    (*(v13 + 16))(v12, v11, v14);
    v15 = (*(v13 + 88))(v12, v14);
    if (v15 == v9)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v16 = 0;
      v17 = 0xEE00676E6964616FLL;
      v18 = 0x6C776F6420746F4ELL;
      v19 = 2;
      goto LABEL_24;
    }

    if (v15 == *(v0 + 336))
    {
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v16 = 0;
      v18 = 0;
      v17 = 0;
      v19 = 1;
      goto LABEL_24;
    }

    if (v15 == *(v0 + 340))
    {
      v18 = 0xD000000000000010;
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v16 = 0;
      v17 = 0x800000023EDCAF60;
      v19 = 3;
      goto LABEL_24;
    }

    v20 = *(v0 + 344);
    v21 = *(*(v0 + 88) + 8);
    v22 = v15;
    v21(*(v0 + 104), *(v0 + 80));
    if (v22 == v20)
    {
      v17 = 0x800000023EDCAF80;
      v18 = 0xD000000000000011;
      v16 = 1;
      v19 = 4;
      goto LABEL_24;
    }

    v18 = 0x6573697270727553;
    v21(*(v0 + 96), *(v0 + 80));
    v19 = 0;
    v17 = 0xEF73757461747320;
LABEL_8:
    v16 = 1;
    goto LABEL_24;
  }

  if (v8 == *(v0 + 312))
  {
    v19 = 0;
    v17 = 0xEE00657461647075;
    v18 = 0x206E776F6E6B6E55;
    goto LABEL_8;
  }

  if (v8 == *(v0 + 316))
  {
    v17 = 0x800000023EDCAFA0;
    v18 = 0xD000000000000011;
    v16 = 1;
    v19 = 5;
    goto LABEL_24;
  }

  if (v8 == *(v0 + 320))
  {
    v18 = 0;
    v17 = 0;
    v16 = 1;
    v19 = 6;
    goto LABEL_24;
  }

  if (v8 == *(v0 + 324))
  {
    v18 = 0xD000000000000010;
    v17 = 0x800000023EDCAF40;
    v16 = 1;
    v19 = 7;
  }

  else
  {
    if (v8 != *(v0 + 328))
    {
      v18 = 0x6573697270727553;
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      v19 = 0;
      v17 = 0xEF65746164707520;
      goto LABEL_8;
    }

    v17 = 0xED0000726F727265;
    v18 = 0x206B726F7774654ELL;
    v16 = 1;
    v19 = 8;
  }

LABEL_24:
  sub_23EDC1120();
  v24 = v23;
  v25 = sub_23EDC1100();
  v26 = sub_23EDC10F0();
  if (!v17)
  {
    goto LABEL_32;
  }

  if (((1 << v19) & 0x1D1) != 0)
  {

    v27 = sub_23EDC1770();
    v28 = sub_23EDC1D80();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = v26;
      v62 = swift_slowAlloc();
      v30 = v25;
      v31 = v16;
      v32 = v62;
      *v29 = 136315138;
      v33 = sub_23ED713FC(v18, v17, &v62);

      *(v29 + 4) = v33;
      v34 = "progress error: %s";
LABEL_28:
      _os_log_impl(&dword_23ED67000, v27, v28, v34, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v35 = v32;
      v16 = v31;
      v25 = v30;
      v26 = v61;
      MEMORY[0x23EF24B30](v35, -1, -1);
      MEMORY[0x23EF24B30](v29, -1, -1);

      goto LABEL_32;
    }
  }

  else
  {

    v27 = sub_23EDC1770();
    v28 = sub_23EDC1D60();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = v26;
      v62 = swift_slowAlloc();
      v30 = v25;
      v31 = v16;
      v32 = v62;
      *v29 = 136315138;
      v36 = sub_23ED713FC(v18, v17, &v62);

      *(v29 + 4) = v36;
      v34 = "progress update: %s";
      goto LABEL_28;
    }
  }

LABEL_32:
  v38 = *(v0 + 64);
  v37 = *(v0 + 72);
  v39 = *(v0 + 56);
  *(v0 + 16) = v24;
  *(v0 + 24) = v25;
  *(v0 + 32) = v26;
  *(v0 + 40) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  sub_23EDC1C00();
  (*(v38 + 8))(v37, v39);
  if (v16)
  {
    sub_23EDC1C10();
    v40 = sub_23EDC1770();
    v41 = sub_23EDC1D60();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    v45 = *(v0 + 136);
    if (v42)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_23ED67000, v40, v41, "Finishing download progress", v46, 2u);
      MEMORY[0x23EF24B30](v46, -1, -1);
    }

    (*(v44 + 8))(v43, v45);
    goto LABEL_36;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v57 = swift_task_alloc();
  *(v0 + 304) = v57;
  *v57 = v0;
  v57[1] = sub_23ED9FC0C;
  v58 = *(v0 + 160);
  v59 = *(v0 + 168);

  return MEMORY[0x2822003E8](v58, 0, 0, v59);
}

uint64_t sub_23EDA059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23ED6FA00(a3, v25 - v10, &qword_27E388C58, &qword_23EDC5EE0);
  v12 = sub_23EDC1BE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23ED6FA68(v11, &qword_27E388C58, &qword_23EDC5EE0);
  }

  else
  {
    sub_23EDC1BD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23EDC1B90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23EDC1A20() + 32;
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

      sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);

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

  sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);
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

uint64_t sub_23EDA089C(uint64_t a1, uint64_t a2)
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E3897E8);
  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23ED67000, v3, v4, "Terminating download progress", v5, 2u);
    MEMORY[0x23EF24B30](v5, -1, -1);
  }

  return sub_23EDC1C50();
}

void static ALCService.adjustSubscription(subscribe:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_23EDC19A0();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    sub_23ED721D8();
    swift_allocError();
    *v6 = 8;
    swift_willThrow();
    return;
  }

  v5 = sub_23EDC19A0();
  if (a1)
  {
    [v4 removeObjectForKey_];
  }

  else
  {
    [v4 setBool:1 forKey:v5];
  }

  if (![v4 synchronize])
  {
    sub_23ED721D8();
    swift_allocError();
    v10 = 8;
    goto LABEL_10;
  }

  v7 = sub_23EDC1A20();
  v8 = notify_post((v7 + 32));

  if (v8)
  {
    sub_23ED721D8();
    swift_allocError();
    v10 = 9;
LABEL_10:
    *v9 = v10;
    swift_willThrow();
  }
}

uint64_t sub_23EDA0B70(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23EDA0C68;

  return v6(a1);
}

uint64_t sub_23EDA0C68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_23EDA0D60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23EDA0DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23EDA0D80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23EDA109C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23EDA0DA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23EDA11A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23EDA0DC0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DB0, &qword_23EDC6970);
  v10 = *(sub_23EDC0E80() - 8);
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
  v15 = *(sub_23EDC0E80() - 8);
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

char *sub_23EDA0F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885D8, &qword_23EDC4830);
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

char *sub_23EDA109C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885C0, &qword_23EDC4818);
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

char *sub_23EDA11A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA8, &qword_23EDC85C0);
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

uint64_t sub_23EDA12AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23EDC19A0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_23EDC19A0();
    v4 = [v2 BOOLForKey_];

    v5 = v4 ^ 1;
  }

  else
  {
    sub_23ED721D8();
    swift_allocError();
    *v6 = 8;
    swift_willThrow();
  }

  return v5 & 1;
}

uint64_t sub_23EDA13AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D48, &qword_23EDC6780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDA141C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23EDA14A0()
{
  result = qword_27E388D68;
  if (!qword_27E388D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388D68);
  }

  return result;
}

unint64_t sub_23EDA14F8()
{
  result = qword_27E388D70;
  if (!qword_27E388D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388D70);
  }

  return result;
}

uint64_t _s14DownloadStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14DownloadStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_23EDA16C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23EDA1704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_23EDA175C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23EDA182C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta") - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23ED68C90;

  return sub_23ED9F4FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_23EDA1930()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23EDA1968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23ED70118;

  return sub_23EDA0B70(a1, v4);
}

uint64_t sub_23EDA1A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23ED68C90;

  return sub_23EDA0B70(a1, v4);
}

uint64_t ALCService.Metadata.alcVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ALCService.Metadata.jpVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ALCService.Metadata.fovVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ALCService.Metadata.init(scene:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23EDC19A0();
  v5 = [a1 attribute_];

  if (v5)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v16;
      v6 = v17;
      goto LABEL_9;
    }
  }

  else
  {
    sub_23ED741A0(&v20);
  }

  v6 = 0xE300000000000000;
  v7 = 4271950;
LABEL_9:
  v8 = sub_23EDC19A0();
  v9 = [a1 attribute_];

  if (v9)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v16;
      v10 = v17;
      goto LABEL_17;
    }
  }

  else
  {
    sub_23ED741A0(&v20);
  }

  v10 = 0xE300000000000000;
  v11 = 4271950;
LABEL_17:
  v12 = sub_23EDC19A0();
  v13 = [a1 attribute_];

  if (v13)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_23ED741A0(&v20);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    v14 = 0xE300000000000000;
    v15 = 4271950;
    goto LABEL_25;
  }

  v15 = v16;
  v14 = v17;

LABEL_25:
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v10;
  a2[4] = v15;
  a2[5] = v14;
}

void sub_23EDA1E4C(void *a1, void *a2)
{
  v3 = sub_23EDC19A0();
  v4 = sub_23EDC19A0();
  [a1 setAttribute:v3 forKey:v4];

  v5 = sub_23EDC19A0();
  v6 = sub_23EDC19A0();
  [a1 setAttribute:v5 forKey:v6];

  v7 = sub_23EDC19A0();
  v8 = sub_23EDC19A0();
  [a1 setAttribute:v7 forKey:v8];
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

uint64_t sub_23EDA1FA0(uint64_t a1, int a2)
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

uint64_t sub_23EDA1FE8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy152_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23EDA2078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_23EDA20C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23EDA2140(uint64_t a1, unsigned int a2)
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

uint64_t sub_23EDA2188(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23EDA21E4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23EDA2204, 0, 0);
}

uint64_t sub_23EDA2204()
{
  v31 = v0;
  if (qword_27E3881B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E389878;
  v2 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  *(v0 + 80) = qword_27E389878;
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = "makeRefineImage";
  *(v3 + 24) = 15;
  *(v3 + 32) = 2;
  *(v3 + 40) = v1;
  v4 = MEMORY[0x277D84F78];
  sub_23EDC1DE0();
  v5 = *(v0 + 64);

  CGAffineTransformMakeScale(&v30, 1.0, -1.0);
  v6 = *&v30.c;
  v7 = *&v30.tx;
  *(v0 + 16) = *&v30.a;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  v8 = [v5 imageByApplyingTransform_];
  *(v0 + 96) = v8;
  v9 = objc_opt_self();
  [v8 extent];
  Width = CGRectGetWidth(v33);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v8 extent];
  Height = CGRectGetHeight(v34);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x2821FF5E8](v10);
  }

  v13 = [v9 texture2DDescriptorWithPixelFormat:81 width:Width height:Height mipmapped:1];
  *(v0 + 104) = v13;
  [v13 setUsage_];
  sub_23EDC1C80();
  v14 = [*(*(v0 + 72) + 256) newTextureWithDescriptor_];
  *(v0 + 112) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [*(*(v0 + 72) + 264) commandBuffer];
    *(v0 + 120) = v16;
    if (v16)
    {
      v29 = v16;
      v17 = [*(v0 + 64) colorSpace];
      if (v17)
      {
        v4 = v17;
        v18 = sub_23EDC1DA0();
      }

      else
      {
        v18 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
        v25 = v18;
        if (v18)
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      v25 = v18;

LABEL_21:
      *(v0 + 128) = v25;
      sub_23EDC1C80();
      v28 = *(*(v0 + 72) + 272);
      swift_unknownObjectRetain();
      [v8 extent];
      [v28 render:v8 toMTLTexture:v15 commandBuffer:v29 bounds:v25 colorSpace:?];
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      [v29 commit];
      sub_23EDC1C80();
      *(v0 + 136) = 0;
      v27 = swift_task_alloc();
      *(v0 + 144) = v27;
      *v27 = v0;
      v27[1] = sub_23EDA2960;
      v10 = ObjectType;

      return MEMORY[0x2821FF5E8](v10);
    }

    sub_23ED7E62C();
    swift_allocError();
    *v23 = 0xD00000000000001DLL;
    *(v23 + 8) = 0x800000023EDCB210;
    *(v23 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v24 = swift_task_alloc();
    *(v24 + 16) = "makeRefineImage";
    *(v24 + 24) = 15;
    *(v24 + 32) = 2;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 40) = v1;
    sub_23EDC1DE0();
  }

  else
  {
    sub_23ED7E62C();
    swift_allocError();
    *v21 = 0xD000000000000016;
    *(v21 + 8) = 0x800000023EDCB1F0;
    *(v21 + 16) = 0;
    swift_willThrow();

    v22 = swift_task_alloc();
    *(v22 + 16) = "makeRefineImage";
    *(v22 + 24) = 15;
    *(v22 + 32) = 2;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 40) = v1;
    sub_23EDC1DE0();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23EDA2960()
{

  return MEMORY[0x2822009F8](sub_23EDA2A5C, 0, 0);
}

uint64_t sub_23EDA2A5C()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);

  swift_unknownObjectRelease();
  v5 = swift_task_alloc();
  *(v5 + 16) = "makeRefineImage";
  *(v5 + 24) = 15;
  *(v5 + 32) = 2;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = v4;
  sub_23EDC1DE0();
  if (v1)
  {
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 112);

  return v6(v7);
}

uint64_t sub_23EDA2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(v8 + 464) = a4;
  *(v8 + 472) = a5;
  *(v8 + 448) = a1;
  *(v8 + 456) = a2;
  v9 = *(a3 + 136);
  v10 = *(a3 + 168);
  *(v8 + 208) = *(a3 + 152);
  *(v8 + 224) = v10;
  *(v8 + 233) = *(a3 + 177);
  v11 = *(a3 + 72);
  v12 = *(a3 + 104);
  *(v8 + 144) = *(a3 + 88);
  *(v8 + 160) = v12;
  *(v8 + 176) = *(a3 + 120);
  *(v8 + 192) = v9;
  *(v8 + 112) = *(a3 + 56);
  *(v8 + 128) = v11;
  v13 = *a6;
  *(v8 + 480) = v7;
  *(v8 + 488) = v13;
  *(v8 + 496) = *a7;
  *(v8 + 512) = *(a7 + 16);
  *(v8 + 520) = *(a7 + 24);
  *(v8 + 536) = *(a7 + 40);

  return MEMORY[0x2822009F8](sub_23EDA2C5C, 0, 0);
}

void sub_23EDA2C5C()
{
  v115 = v0;
  v114 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 256);
  v2 = [objc_allocWithZone(MEMORY[0x277D00870]) init];
  v3 = *(v0 + 136);
  v4 = v2;
  [v4 setLayers_];
  v5 = *(v0 + 128);
  if (v5)
  {
    if (v5 != 1)
    {
      sub_23EDC1EC0();
      *(v0 + 256) = 0;
      *(v0 + 264) = 0xE000000000000000;
      MEMORY[0x23EF237D0](0xD000000000000010, 0x800000023EDCB260);
      *(v0 + 424) = v5;
      type metadata accessor for MXIType(0);
      sub_23EDC1FA0();
      sub_23EDC2000();
      return;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 448);
  v9 = *(v0 + 456);
  [v4 setType_];
  [v4 setNumPasses_];
  [v4 setEnableDepthTessellation_];
  LODWORD(v10) = *(v0 + 168);
  [v4 setNdcOverlapFactor_];
  [v4 setRefineImage_];
  sub_23EDB4A38(v0 + 64);
  [v4 setCameraIntrinsicsRefine_];
  [v4 setCameraExtrinsics_];
  sub_23EDB4A38(v0 + 16);
  [v4 setCameraIntrinsics_];
  [v4 setCameraImageSize_];
  [v4 setCameraNearFarPlane_];

  v11 = [v8 cgColorSpace];
  if (!v11)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v12 = sub_23EDC1790();
    __swift_project_value_buffer(v12, qword_27E3897E8);
    v13 = sub_23EDC1770();
    v14 = sub_23EDC1D80();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23ED67000, v13, v14, "GSAsset does not contain a valid colorspace, setting to linearSRGB.", v15, 2u);
      MEMORY[0x23EF24B30](v15, -1, -1);
    }

    v11 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    if (!v11)
    {
      goto LABEL_48;
    }
  }

  v17 = *(v0 + 456);
  v16 = *(v0 + 464);
  v18 = v11;
  v19 = sub_23EDA70F8(v18);
  v21 = v20;

  sub_23ED7BB24(0, &qword_27E388DC0, 0x277D257F8);
  v22 = *(v0 + 224);
  v112 = *(v0 + 208);
  v113[0] = v22;
  *(v113 + 9) = *(v0 + 233);
  v23 = *(v0 + 160);
  v108 = *(v0 + 144);
  v109 = v23;
  v24 = *(v0 + 192);
  v110 = *(v0 + 176);
  v111 = v24;
  v25 = *(v0 + 128);
  v106 = *(v0 + 112);
  v107 = v25;
  sub_23ED93EA8(v0 + 112, v0 + 256);
  v26 = v19;
  v27 = sub_23ED938DC(&v106, v17, v26, v21 & 1, v16);
  sub_23EDC1C80();
  v29 = *(v0 + 488);
  if (v29)
  {
    v30 = v29;
    v31 = sub_23ED72BA8(v30);
    if (v31)
    {
      *(v0 + 400) = v31;
      *(v0 + 408) = v32;
      *(v0 + 416) = v33;
      v34 = sub_23ED73F28(v31, *&v33);
      sub_23ED730A4(v27, v0 + 400, v34);
    }
  }

  sub_23EDC1C80();
  v35 = *(v0 + 536);
  v36 = *(v0 + 528);
  v37 = *(v0 + 512);
  v106 = *(v0 + 496);
  v107 = v37;
  *&v108 = v36;
  *(&v108 + 1) = v35;
  sub_23EDA1E4C(v27, &v106);
  sub_23EDC1C80();
  v38 = *(v0 + 480);
  *v1 = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  v39 = v38[27];
  v40 = __CFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_24;
  }

  v38[27] = v41;
  v42 = v38[29];
  v104 = v38;
  if (v42)
  {
    v43 = v38[30];
    v44 = *(*(v0 + 480) + 224);
    *&v106 = v41;
    *(&v106 + 1) = v44;
    LOBYTE(v107) = 0;

    v42(&v106, v0 + 256);
    sub_23ED9E62C(v42, v43);
  }

  v45 = sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  v105 = MEMORY[0x23EF24460](v45);
  if (qword_27E3881B8 != -1)
  {
    goto LABEL_46;
  }

LABEL_24:
  v46 = qword_27E389878;
  v47 = swift_task_alloc();
  *(v47 + 16) = "renderMultiLayer";
  *(v47 + 24) = 16;
  *(v47 + 32) = 2;
  *(v47 + 40) = v46;
  sub_23EDC1DE0();
  v102 = v46;
  v48 = *(v0 + 480);

  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v50 = (v49 + 16);
  v51 = [*(v48 + 264) commandBuffer];
  if (!v51)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v55 = 0xD00000000000001DLL;
    *(v55 + 8) = 0x800000023EDCB210;
    *(v55 + 16) = 0;
    swift_willThrow();
LABEL_27:

    objc_autoreleasePoolPop(v105);

LABEL_13:
    v28 = *(v0 + 8);

    v28();
    return;
  }

  v101 = *(v0 + 480);
  v98 = *(v101 + 280);
  v99 = *(v0 + 448);
  v103 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v27;
  *(v52 + 24) = v49;
  *(v0 + 288) = sub_23EDA7504;
  *(v0 + 296) = v52;
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_23EDA62CC;
  *(v0 + 280) = &block_descriptor;
  v53 = _Block_copy((v0 + 256));
  v97 = v27;

  v100 = [v98 renderMultiLayerWith:v103 asset:v99 convertMXIOption:v4 multiLayerCallback:v53 error:0];
  _Block_release(v53);
  [v103 commit];
  [v103 waitUntilCompleted];
  v54 = swift_task_alloc();
  *(v54 + 16) = "renderMultiLayer";
  *(v54 + 24) = 16;
  *(v54 + 32) = 2;
  *(v54 + 40) = v102;
  *(v54 + 48) = sub_23EDA7524;
  *(v54 + 56) = v101;

  sub_23EDC1DE0();

  if ((v100 & 1) == 0)
  {
    swift_beginAccess();
    v56 = *v50;
    if (*v50)
    {
      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      v57 = v56;
      sub_23EDC1EC0();

      *&v106 = 0xD000000000000029;
      *(&v106 + 1) = 0x800000023EDCB340;
      v58 = [v57 localizedDescription];
      v59 = sub_23EDC19D0();
      v61 = v60;

      MEMORY[0x23EF237D0](v59, v61);

      MEMORY[0x23EF237D0](46, 0xE100000000000000);
      v62 = v106;
      sub_23ED7E62C();
      swift_allocError();
      *v63 = v62;
      *(v63 + 16) = 1;
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }
  }

  swift_unknownObjectRelease();

  objc_autoreleasePoolPop(v105);
  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v64 = v104[27];
  v40 = __CFADD__(v64, 1);
  v65 = v64 + 1;
  if (v40)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v104[27] = v65;
  v66 = v104[29];
  if (v66)
  {
    v67 = v104[30];
    v68 = *(*(v0 + 480) + 224);
    *&v106 = v65;
    *(&v106 + 1) = v68;
    LOBYTE(v107) = 0;

    v66(&v106, v0 + 256);
    sub_23ED9E62C(v66, v67);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  sub_23EDC1C80();
  v69 = swift_task_alloc();
  *(v69 + 16) = "mxiSceneBuilder";
  *(v69 + 24) = 15;
  *(v69 + 32) = 2;
  *(v69 + 40) = v102;
  sub_23EDC1DE0();

  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v70 = v104[27];
  v40 = __CFADD__(v70, 1);
  v71 = v70 + 1;
  if (v40)
  {
    goto LABEL_49;
  }

  v104[27] = v71;
  v72 = v104[29];
  if (v72)
  {
    v73 = v104[30];
    v74 = *(*(v0 + 480) + 224);
    *&v106 = v71;
    *(&v106 + 1) = v74;
    LOBYTE(v107) = 0;

    v72(&v106, v0 + 256);
    sub_23ED9E62C(v72, v73);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DC8, &qword_23EDC6B58);
  v75 = swift_allocObject();
  v76 = *MEMORY[0x277D25748];
  *(v75 + 32) = *MEMORY[0x277D25748];
  v77 = MEMORY[0x277D83B88];
  *(v75 + 40) = *(v0 + 216);
  v78 = MEMORY[0x277D25750];
  *(v75 + 16) = xmmword_23EDC4D80;
  v79 = *v78;
  *(v75 + 64) = v77;
  *(v75 + 72) = v79;
  v80 = *(v0 + 224);
  *(v75 + 104) = MEMORY[0x277D83A90];
  *(v75 + 80) = v80;
  v81 = v76;
  v82 = v79;
  *(v75 + 112) = sub_23EDC19A0();
  v83 = *(v0 + 228);
  v84 = MEMORY[0x277D839B0];
  *(v75 + 144) = MEMORY[0x277D839B0];
  *(v75 + 120) = (v83 & 1) == 0;
  *(v75 + 152) = sub_23EDC19A0();
  v85 = *(v0 + 229);
  *(v75 + 184) = v84;
  *(v75 + 160) = v85;
  sub_23ED7A818(v75);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886E8, &qword_23EDC6B60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for MXIBuildOption(0);
  sub_23EDA75CC(&qword_27E388518, type metadata accessor for MXIBuildOption, &unk_23EDC44E0);
  v86 = sub_23EDC1890();

  *(v0 + 256) = 0;
  v87 = [v97 buildSceneWithOptions:v86 error:v0 + 256];

  v88 = *(v0 + 256);
  if (v88)
  {
    swift_willThrow();
    v88;

    v89 = swift_task_alloc();
    *(v89 + 16) = "mxiSceneBuilder";
    *(v89 + 24) = 15;
    *(v89 + 32) = 2;
    *(v89 + 40) = v102;
    *(v89 + 48) = sub_23EDA7614;
    *(v89 + 56) = v101;

    sub_23EDC1DE0();

    goto LABEL_13;
  }

  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v90 = v104[27];
  v40 = __CFADD__(v90, 1);
  v91 = v90 + 1;
  if (v40)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v104[27] = v91;
  v92 = v104[29];
  if (v92)
  {
    v93 = v104[30];
    v94 = *(*(v0 + 480) + 224);
    *&v106 = v91;
    *(&v106 + 1) = v94;
    LOBYTE(v107) = 0;
    sub_23ED9D598(v92, v93);
    v92(&v106, v0 + 256);
    sub_23ED9E62C(v92, v93);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  v95 = swift_task_alloc();
  *(v95 + 16) = "mxiSceneBuilder";
  *(v95 + 24) = 15;
  *(v95 + 32) = 2;
  *(v95 + 40) = v102;
  *(v95 + 48) = sub_23EDA7578;
  *(v95 + 56) = v101;

  sub_23EDC1DE0();

  v96 = *(v0 + 8);

  v96(v87);
}

void sub_23EDA3C08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  v292 = a6;
  v297 = a2;
  v299 = a1;
  v289 = a7;
  v358 = *MEMORY[0x277D85DE8];
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v286 = &v245 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v284 = *(v14 - 8);
  v285 = v14;
  MEMORY[0x28223BE20](v14);
  v283 = &v245 - v15;
  v290 = type metadata accessor for StereoProperties(0);
  MEMORY[0x28223BE20](v290);
  v291 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v298 = *(v301 - 8);
  v17 = MEMORY[0x28223BE20](v301);
  v293.i64[0] = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v245 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v295 = &v245 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v294.i64[0] = &v245 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v296 = &v245 - v27;
  MEMORY[0x28223BE20](v26);
  v300 = &v245 - v28;
  v29 = sub_23EDC11A0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = (v245.i64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_23EDC1250();
  v34 = MEMORY[0x28223BE20](v33);
  v303 = &v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v38 = 0xD00000000000002CLL;
    *(v38 + 8) = 0x800000023EDCAFC0;
    *(v38 + 16) = 4;
    swift_willThrow();
    return;
  }

  v281 = v35;
  v282 = v34;
  *v32 = a5;
  (*(v30 + 104))(v32, *MEMORY[0x277CEA598], v29);
  v37 = v303;
  sub_23EDC1410();
  if (v8)
  {
    (*(v30 + 8))(v32, v29);
    return;
  }

  (*(v30 + 8))(v32, v29);
  sub_23EDC1230();
  v40 = round(v39);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_23EDC1230();
  v42 = round(v41);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_23EDC1240();
  v43 = v309[0];
  v44 = roundf(v43 * a8);
  if ((LODWORD(v44) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v44 <= -9.2234e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v44 >= 9.2234e18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = *(v302 + 32);
  v46 = objc_allocWithZone(MEMORY[0x277D257F0]);
  v332.i64[0] = 0;
  v47 = [v46 initWithDevice:v45 colorPixelFormat:81 depthPixelFormat:250 sampleCount:1 error:&v332];
  v48 = v332.i64[0];
  if (!v47)
  {
    v72 = v332.i64[0];
    sub_23EDC0E30();

    swift_willThrow();
LABEL_24:
    (*(v281 + 8))(v37, v282);
    return;
  }

  v280 = v47;
  v49 = v42;
  v50 = objc_opt_self();
  v51 = v48;
  *&v277 = v50;
  v52 = [v50 texture2DDescriptorWithPixelFormat:250 width:v40 height:v42 mipmapped:0];
  [v52 setTextureType_];
  [v52 setUsage_];
  v278.i64[0] = v45;
  v53 = [v45 newTextureWithDescriptor_];
  if (!v53)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v73 = 0xD000000000000027;
    *(v73 + 8) = 0x800000023EDCAFF0;
    *(v73 + 16) = 0;
    swift_willThrow();
LABEL_23:

    goto LABEL_24;
  }

  v54 = v53;
  v279 = v40;
  v55 = [*(v302 + 33) commandBuffer];
  if (!v55)
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v273 = v55;
  v274 = v54;
  v56 = v44;
  v57 = *(v297 + 8);
  v58 = *(v297 + 80);
  v275 = *(v297 + 96);
  v276 = v58;
  *&v272 = *v297;
  v59 = *(v297 + 28);
  v60 = *(v297 + 60);
  v306 = *(v297 + 44);
  v307 = v60;
  v308 = *(v297 + 76);
  v304 = *(v297 + 12);
  v305 = v59;
  v61 = *(v297 + 112);
  v62 = *(v297 + 116);
  v357 = *(v297 + 128);
  v356 = v61;
  [v299 effectiveVerticalFOV];
  v64 = tanf(v63 * 0.5);
  v65 = objc_opt_self();
  v66 = [v65 meters];
  v67 = sub_23ED7BB24(0, &qword_27E388780, 0x277CCAE20);
  v68 = v300;
  v69 = v56;
  v70 = v67;
  sub_23EDC0D60();
  sub_23ED7E064(v68, v69, v279, v49);
  v74 = *v71.i64;
  v269 = v52;
  v270 = v49;
  v261 = 0;
  v71.f32[0] = v62 / v64;
  v268 = v71;
  v75 = v301;
  sub_23EDC0D70();
  v267 = v69;
  v76 = v69;
  v77 = [v65 meters];
  sub_23EDC0D60();
  sub_23EDC0D70();
  if (qword_27E388158 != -1)
  {
    swift_once();
  }

  v254 = v70;
  __swift_project_value_buffer(v75, qword_27E389760);
  v255 = v65;
  v78 = [v65 meters];
  sub_23EDC0D90();
  sub_23EDC0D70();

  v79 = v298;
  v80 = *(v298 + 8);
  v297 = v298 + 8;
  v271 = v80;
  v80(v21, v75);
  sub_23EDC0D80();
  v81 = v75;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v82 = v275;
  v82.i32[1] = v268.i32[0];
  v275 = v82;
  v83 = v276;
  v83.i32[0] = v268.i32[0];
  v276 = v83;
  v84 = sub_23EDC1790();
  v85 = __swift_project_value_buffer(v84, qword_27E3897E8);
  v86 = v293.i64[0];
  v268.i64[0] = *(v79 + 16);
  (v268.i64[0])(v293.i64[0], v300, v75);
  v253 = v85;
  v87 = sub_23EDC1770();
  v88 = sub_23EDC1D60();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = v279;
    v90 = (v267 * 36.0) / v279;
    v91 = swift_slowAlloc();
    v266.i64[0] = swift_slowAlloc();
    v355[0] = v266.i64[0];
    *v91 = 136315906;
    sub_23EDA6848();
    v92 = sub_23EDC21E0();
    v93 = v271;
    v94 = v86;
    v96 = v95;
    v271(v94, v301);
    v97 = sub_23ED713FC(v92, v96, v355);
    v98 = v93;

    *(v91 + 4) = v97;
    *(v91 + 12) = 2048;
    *(v91 + 14) = v74 / v89;
    *(v91 + 22) = 2048;
    *(v91 + 24) = v90;
    *(v91 + 32) = 2048;
    v99 = v295;
    swift_beginAccess();
    sub_23EDC0D70();
    v101 = v100;
    swift_endAccess();
    *(v91 + 34) = v101 * 1000.0;
    _os_log_impl(&dword_23ED67000, v87, v88, "\n [Stereo Baking] \n  Near Distance: %s, \n Max disparity %%: %f \n Focal Length(35mm): %f, Recommended stereo baseline (mm): %f", v91, 0x2Au);
    v102 = v266.i64[0];
    __swift_destroy_boxed_opaque_existential_0Tm(v266.i64[0]);
    v81 = v301;
    MEMORY[0x23EF24B30](v102, -1, -1);
    MEMORY[0x23EF24B30](v91, -1, -1);

    v103 = v296;
    v104 = v270;
    v105 = v294.i64[0];
  }

  else
  {

    v106 = v86;
    v98 = v271;
    v271(v106, v75);
    v103 = v296;
    v104 = v270;
    v105 = v294.i64[0];
    v99 = v295;
  }

  swift_beginAccess();
  (v268.i64[0])(v105, v99, v81);
  v98(v99, v81);
  (*(v298 + 32))(v103, v105, v81);
  v324 = v305;
  v325 = v306;
  v326 = v307;
  v107 = v272;
  v321 = v272;
  v322 = v57 * 0.98;
  v327 = v308;
  v323 = v304;
  v328 = v276;
  v329 = v275;
  v330 = v356;
  v331 = v357;
  sub_23EDA64B0(&v321, 0, &v332);
  v268 = v332;
  v265 = v334;
  v266 = v333;
  v293 = v337;
  v294 = v336;
  v311 = v57 * 0.98;
  v313 = v305;
  v314 = v306;
  v315 = v307;
  v263 = v338;
  v264 = v335;
  v262 = v339;
  v310 = v107;
  v316 = v308;
  v312 = v304;
  v317 = v276;
  v318 = v275;
  v320 = v357;
  v319 = v356;
  sub_23EDA64B0(&v310, 1, &v332);
  v258 = v333;
  v259 = v332;
  v256 = v335;
  v257 = v334;
  v275 = v337;
  v276 = v336;
  v272 = v338;
  v260 = v339;
  v108 = [v299 cgColorSpaceName];
  v109 = CGColorSpaceCreateWithName(v108);

  if (!v109)
  {
    if (qword_27E388188 != -1)
    {
      swift_once();
    }

    v109 = qword_27E3897E0;
  }

  v110 = v279;
  v111 = sub_23ED80D20(v279, v104, v109);
  if (!v111)
  {
    goto LABEL_61;
  }

  v295 = v111;
  v112 = sub_23ED80D20(v110, v104, v109);
  if (!v112)
  {

LABEL_61:
    sub_23ED7E62C();
    swift_allocError();
    *v178 = 0xD00000000000002ALL;
    *(v178 + 8) = 0x800000023EDCB0A0;
    *(v178 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v98(v296, v81);
    v98(v300, v81);
LABEL_62:
    (*(v281 + 8))(v303, v282);
    return;
  }

  v113 = v112;
  v114 = [v277 texture2DDescriptorWithPixelFormat:81 width:v110 height:v104 mipmapped:0];
  [v114 setUsage_];
  v252 = v114;
  v115 = v295;
  v116 = [v278.i64[0] newTextureWithDescriptor:v114 iosurface:v295 plane:0];
  if (!v116)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v179 = 0xD000000000000027;
    *(v179 + 8) = 0x800000023EDCB0D0;
    *(v179 + 16) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v180 = v280;
    v181 = v269;
    v182 = v303;
LABEL_65:
    v184 = v296;

    v185 = v271;
    v271(v184, v81);
    v185(v300, v81);
    (*(v281 + 8))(v182, v282);
    return;
  }

  v250 = v113;
  v251 = v116;
  [v299 modelToWorldTransform];
  v247 = v118;
  v248 = v117;
  v245 = v120;
  v246 = v119;
  v121 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v122 = [v121 colorAttachments];
  v123 = [v122 objectAtIndexedSubscript_];

  if (!v123)
  {
    __break(1u);
    goto LABEL_107;
  }

  [v123 setLoadAction_];

  v124 = [v121 colorAttachments];
  v125 = [v124 objectAtIndexedSubscript_];

  if (!v125)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  [v125 setStoreAction_];

  v126 = [v121 colorAttachments];
  v127 = [v126 objectAtIndexedSubscript_];

  if (!v127)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  [v127 setTexture_];

  v128 = [v121 colorAttachments];
  v129 = [v128 objectAtIndexedSubscript_];

  if (!v129)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  [v129 setClearColor_];

  [v121 setRenderTargetArrayLength_];
  v130 = [v121 depthAttachment];
  v131 = v280;
  if (!v130)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v132 = v130;
  [v130 setTexture_];

  v133 = [v121 depthAttachment];
  if (!v133)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v134 = v133;
  [v133 setLoadAction_];

  v135 = [v121 depthAttachment];
  if (!v135)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v136 = v135;
  v249 = v109;
  [v135 setStoreAction_];

  v137 = [v121 depthAttachment];
  if (!v137)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v138 = v137;
  [v137 setClearDepth_];

  v139 = [v273 renderCommandEncoderWithDescriptor_];
  if (!v139)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v183 = 0xD000000000000025;
    *(v183 + 8) = 0x800000023EDCB100;
    *(v183 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v180 = v269;
    v181 = v249;
    v109 = v121;
    v113 = v131;
    v182 = v303;
    v81 = v301;
    goto LABEL_65;
  }

  v140 = v139;
  v332 = v248;
  v333 = v247;
  v334 = v246;
  v335 = v245;
  v336 = v268;
  v337 = v266;
  v338 = v265;
  v339 = v264;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v343 = 0u;
  v344 = v294;
  v345 = v293;
  v346 = v263;
  v347 = v262;
  v348 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 7;
  v353 = 0xFFFFFFFFLL;
  v354 = 0;
  v141 = v131;
  v142 = v299;
  [(__IOSurface *)v141 renderScene:v299 withEncoder:v140 context:&v332];
  [v140 endEncoding];

  swift_unknownObjectRelease();
  v143 = [v277 texture2DDescriptorWithPixelFormat:81 width:v279 height:v270 mipmapped:0];
  [v143 setUsage_];
  v144 = v250;
  v145 = [v278.i64[0] newTextureWithDescriptor:v143 iosurface:v250 plane:0];
  if (!v145)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v186 = 0xD000000000000027;
    *(v186 + 8) = 0x800000023EDCB0D0;
    *(v186 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v161 = v301;
    v162 = v296;
    v163 = v269;
LABEL_68:

    v177 = v162;
    goto LABEL_69;
  }

  v294.i64[0] = v145;
  [v142 modelToWorldTransform];
  v293 = v146;
  v277 = v148;
  v278 = v147;
  v268 = v149;
  v150 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v151 = [v150 colorAttachments];
  v152 = [v151 objectAtIndexedSubscript_];

  v153 = v273;
  if (!v152)
  {
    goto LABEL_114;
  }

  [v152 setLoadAction_];

  v154 = [v150 colorAttachments];
  v155 = [v154 objectAtIndexedSubscript_];

  if (!v155)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  [v155 setStoreAction_];

  v156 = [v150 colorAttachments];
  v157 = [v156 objectAtIndexedSubscript_];

  if (!v157)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  [v157 setTexture_];

  v158 = [v150 colorAttachments];
  v159 = [v158 objectAtIndexedSubscript_];

  if (!v159)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  [v159 setClearColor_];

  [v150 setRenderTargetArrayLength_];
  v160 = [v150 depthAttachment];
  v161 = v301;
  v162 = v296;
  v163 = v269;
  if (!v160)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v164 = v160;
  [v160 setTexture_];

  v165 = [v150 depthAttachment];
  if (!v165)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v166 = v165;
  [v165 setLoadAction_];

  v167 = [v150 depthAttachment];
  if (!v167)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v168 = v167;
  [v167 setStoreAction_];

  v169 = [v150 depthAttachment];
  if (!v169)
  {
LABEL_121:
    __break(1u);
    return;
  }

  v170 = v169;
  [v169 setClearDepth_];

  v171 = [v153 renderCommandEncoderWithDescriptor_];
  if (!v171)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v187 = 0xD000000000000025;
    *(v187 + 8) = 0x800000023EDCB100;
    *(v187 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_68;
  }

  v172 = v171;
  v332 = v293;
  v333 = v278;
  v334 = v277;
  v335 = v268;
  v336 = v259;
  v337 = v258;
  v338 = v257;
  v339 = v256;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v343 = 0u;
  v344 = v276;
  v345 = v275;
  v346 = v272;
  v347 = v260;
  v348 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 7;
  v353 = 0xFFFFFFFFLL;
  v354 = 0;
  v173 = v280;
  [v280 renderScene:v299 withEncoder:v171 context:&v332];
  [v172 endEncoding];

  swift_unknownObjectRelease();
  [v153 commit];
  [v153 waitUntilCompleted];
  v174 = v249;
  v175 = v261;
  v176 = sub_23EDC1DA0();
  if (v175)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v177 = v296;
LABEL_69:
    v188 = v271;
    v271(v177, v161);
    v188(v300, v161);
    goto LABEL_62;
  }

  v189 = v176;
  v299 = *(v302 + 34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_23EDC4860;
  v191 = *MEMORY[0x277CBFA40];
  *(v190 + 32) = *MEMORY[0x277CBFA40];
  type metadata accessor for CGColorSpace(0);
  *(v190 + 64) = v192;
  *(v190 + 40) = v189;
  v193 = v191;
  v302 = v189;
  v194 = v294.i64[0];
  swift_unknownObjectRetain();
  v195 = v251;
  swift_unknownObjectRetain();
  sub_23ED7A0AC(v190);
  swift_setDeallocating();
  sub_23ED6FA68(v190 + 32, &unk_27E388CA0, &qword_23EDC62D0);
  swift_deallocClassInstance();
  v196 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23EDA75CC(&qword_27E388450, type metadata accessor for CIImageOption, &unk_23EDC4084);
  v197 = sub_23EDC1890();
  a4 = [v196 initWithMTLTexture:v195 options:v197];

  if (!a4)
  {

LABEL_89:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v208 = v303;
    v209 = v301;
    v210 = v296;
    v211 = v269;
LABEL_90:
    sub_23ED7E62C();
    swift_allocError();
    *v212 = 0xD000000000000024;
    *(v212 + 8) = 0x800000023EDCB130;
    *(v212 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v213 = v210;
    v214 = v271;
    v271(v213, v209);
    v214(v300, v209);
    (*(v281 + 8))(v208, v282);
    return;
  }

  v198 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v199 = sub_23EDC1890();

  v200 = [v198 initWithMTLTexture:v194 options:v199];

  if (!v200)
  {
LABEL_87:

    goto LABEL_89;
  }

  [a4 extent];
  v201 = *MEMORY[0x277CBF978];
  v202 = v299;
  v203 = v292;
  v293.i64[0] = [v299 createCGImage:a4 fromRect:v201 format:v292 colorSpace:?];
  if (!v293.i64[0])
  {

    goto LABEL_89;
  }

  [v200 extent];
  v204 = [v202 createCGImage:v200 fromRect:v201 format:v203 colorSpace:?];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v204)
  {

    v208 = v303;
    v209 = v301;
    v210 = v296;
    v211 = v269;
    goto LABEL_90;
  }

  if (qword_27E388168 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v301, qword_27E389790);
  sub_23EDC0D70();
  v206 = v205;
  sub_23ED7E064(v300, v267, v279, v270);
  v215 = v279;
  v216 = v206 * v279 / v270;
  v217 = v207 / v279;
  if (qword_27E388150 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v301, qword_27E389748);
  sub_23EDC0D70();
  v219 = v217 - v218 / v216;
  if (v219 < 0.0)
  {
    v220 = 0.0;
  }

  else
  {
    v220 = v219;
  }

  v221 = sub_23EDC1770();
  v222 = sub_23EDC1D60();
  if (os_log_type_enabled(v221, v222))
  {
    v223 = swift_slowAlloc();
    *v223 = 134217984;
    *(v223 + 4) = v220;
    _os_log_impl(&dword_23ED67000, v221, v222, "\n [Stereo Baking] Recommended Disparity Adjustment: %f", v223, 0xCu);
    MEMORY[0x23EF24B30](v223, -1, -1);
  }

  v299 = objc_opt_self();
  v224 = [v299 degrees];
  v292 = sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
  sub_23EDC0D60();
  v225 = *(v290 + 20);
  if (qword_27E388170 != -1)
  {
    swift_once();
  }

  v226 = qword_27E3897A8;
  type metadata accessor for CustomUnitProportion();
  v227 = v226;
  v228 = v291;
  sub_23EDC0D60();
  v229 = v290;
  v230 = *(v290 + 24);
  v231 = [v255 millimeters];
  sub_23EDC0D60();
  v232 = &v228[*(v229 + 28)];
  *v232 = 0;
  v232[8] = 1;
  (*(v298 + 24))(&v228[v230], v296, v301);
  if (v267 < 1 || v279 <= 0)
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v243 = v301;
    v244 = v271;
    v271(v296, v301);
    v244(v300, v243);
    (*(v281 + 8))(v303, v282);
    v242 = v291;
  }

  else
  {
    atan2(v215 * 0.5, v76);
    v233 = [v299 degrees];
    v234 = v283;
    sub_23EDC0D60();
    v235 = v291;
    (*(v284 + 40))(v291, v234, v285);
    v236 = v227;
    v237 = v286;
    sub_23EDC0D60();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v238 = v301;
    v239 = v271;
    v271(v296, v301);
    v239(v300, v238);
    (*(v281 + 8))(v303, v282);
    (*(v287 + 40))(v235 + v225, v237, v288);
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CB8, &unk_23EDC62F8);
    v241 = v289;
    sub_23EDA67E4(v235, v289 + *(v240 + 32));
    *v241 = v293.i64[0];
    v241[1] = v204;
    v242 = v235;
  }

  sub_23EDA6788(v242);
}

uint64_t sub_23EDA602C(unsigned int a1)
{
  if (a1 < 6)
  {
    return qword_23EDC6B68[a1];
  }

  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000001DLL, 0x800000023EDCB3E0);
  type metadata accessor for GSConvertMXIFace(0);
  sub_23EDC1FA0();
  MEMORY[0x23EF237D0](46, 0xE100000000000000);
  result = sub_23EDC2000();
  __break(1u);
  return result;
}

void sub_23EDA6124()
{
  v0 = *MEMORY[0x277CBF3E0];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27E3897E0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23EDA6170(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v18 = [objc_allocWithZone(MEMORY[0x277D257E8]) init];
  [v18 setLinearDepth_];
  [v18 setProjection_];
  v19 = sub_23EDA602C(a3);
  swift_beginAccess();
  v28[0] = *(a7 + 16);
  v20 = v28[0];
  v21 = v18;
  [a6 process:a1 layer:a2 face:v19 color:a4 depth:a5 params:v21 error:v28];
  v22 = v28[0];
  *(a7 + 16) = v28[0];
  v23 = v22;
  swift_endAccess();
}

uint64_t sub_23EDA62CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v15 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15(a2, a3, a4, a5, a6, a7, a8, a9, a10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_23EDA639C(unsigned int a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a1 > 0x1000 || a2 > 0x1000)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "MXI baking resolution will be clamped to max (4096x4096)", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }

    if (v3 >= 0x1000)
    {
      v3 = 4096;
    }

    if (v2 >= 0x1000)
    {
      v2 = 4096;
    }

    else
    {
      v2 = v2;
    }
  }

  return v3 | (v2 << 32);
}

float32x4_t sub_23EDA64B0@<Q0>(__int128 *a1@<X0>, char a2@<W1>, float32x4_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = a1[5];
  v11 = a1[6];
  v42 = *a1;
  v47 = v10;
  v48 = v11;
  v49 = a1[7];
  v50 = *(a1 + 32);
  v12 = *(MEMORY[0x277D860B8] + 16);
  v38 = *MEMORY[0x277D860B8];
  v39 = v12;
  v13 = *(MEMORY[0x277D860B8] + 48);
  v40 = *(MEMORY[0x277D860B8] + 32);
  v36 = v13;
  v14 = [objc_opt_self() meters];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v16 = v15;

  (*(v7 + 8))(v9, v6);
  v17 = v16 * 0.5;
  if (a2)
  {
    v17 = -v17;
  }

  v18 = v36;
  v18.f32[0] = v36.f32[0] + v17;
  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v38.f32[0]), v39, *v38.f32, 1), v40, v38, 2), v18, v38, 3);
  v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v39.f32[0]), v39, *v39.f32, 1), v40, v39, 2), v18, v39, 3);
  __asm { FMOV            V0.4S, #-1.0 }

  v35 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, *&v40), v39, *&v40, 1), _Q0, v40), v18, v40, 3);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v36.f32[0]), v39, *v36.f32, 1), v40, v36, 2), v18, v36, 3);
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v18;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v24.f32[0] = sub_23EDB4B90();
  v28 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, v38.f32[0]), 0, v25), 0, v26), 0, v27);
  v29 = vmulq_f32(v24, 0);
  v30 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(v29, v25, *v39.f32, 1), 0, v26), 0, v27);
  result = vmlaq_f32(vaddq_f32(v26, vmlaq_lane_f32(vmulq_n_f32(v24, *&v40), v25, *&v40, 1)), 0, v27);
  v32 = vmlaq_f32(vmlaq_f32(v29, 0, v25), 0, v26);
  v33 = v37;
  *a3 = v41;
  a3[1] = v33;
  v34 = v36;
  a3[2] = v35;
  a3[3] = v34;
  a3[4] = v28;
  a3[5] = v30;
  a3[6] = result;
  a3[7] = vaddq_f32(v27, v32);
  return result;
}

uint64_t sub_23EDA6788(uint64_t a1)
{
  v2 = type metadata accessor for StereoProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDA67E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StereoProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23EDA6848()
{
  result = qword_27E388DB8;
  if (!qword_27E388DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388778, &unk_23EDC6B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DB8);
  }

  return result;
}

void sub_23EDA68AC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float64_t a4@<D0>, float64_t a5@<D1>, unsigned int a6@<S2>)
{
  v10 = a1;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  v103 = *(a2 + 72);
  v14 = *(a2 + 116);
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (v6)
  {
    return;
  }

  v15.f64[0] = a4;
  sub_23EDB4BF0(v71, v15, a5, a6, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  v93 = v75;
  v85 = v71[0];
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v94 = v71[0];
  v95 = v71[1];
  v96 = v71[2];
  v97 = v71[3];
  v102 = v75;
  v100 = v73;
  v101 = v74;
  v98 = v71[4];
  v99 = v72;
  *&v16 = sub_23EDB4A84();
  v86 = v16;
  v87 = v17;
  v88 = v18;
  v89 = v19;
  sub_23EDB4ACC(&v76, v14);
  v20 = v84;
  if (v13)
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        LODWORD(v21) = 1024;
      }

      else
      {
        LODWORD(v21) = 512;
      }

      if (v12)
      {
        v22 = 1024;
      }

      else
      {
        v22 = 512;
      }
    }

    else if (v12 == 2)
    {
      LODWORD(v21) = 2048;
      v22 = 2048;
    }

    else if (v12 == 3)
    {
      LODWORD(v21) = 4096;
      v22 = 4096;
    }

    else
    {
      if (a4 <= -1.0)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (a4 >= 4294967300.0)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_69;
      }

      if (a5 <= -1.0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (a5 >= 4294967300.0)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v24 = sub_23EDA639C(a4, a5);
      v21 = HIDWORD(v24);
      v22 = v24;
    }
  }

  else
  {
    v23 = sub_23EDA639C(v12, HIDWORD(v12));
    v22 = v23;
    v21 = HIDWORD(v23);
  }

  v25 = v81;
  v26 = v82;
  *(&v27 + 1) = v83.i64[1];
  v28 = v22;
  v29 = v21;
  if (v103)
  {
    *&v25 = v28 * 0.5;
    *(&v26 + 1) = v29 * 0.5;
    v68 = v26;
    v69 = v25;
    *&v27 = v28 * 0.5;
    *(&v27 + 1) = v29 * 0.5;
    v67 = v27;
    goto LABEL_36;
  }

  v30 = v85;
  v31 = DWORD1(v85);
  v32 = v85 / DWORD1(v85);
  if ((v28 / v29) >= v32)
  {
    v37 = v32 * v29;
    if (COERCE_INT(fabs(v32 * v29)) <= 2139095039)
    {
      if (v37 > -1.0)
      {
        if (v37 < 4295000000.0)
        {
          v35 = v29 / v31;
          v22 = v37;
          v34.f32[0] = v37 / v30;
          v36 = v35;
          goto LABEL_35;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v33 = v28 / v32;
  if (COERCE_INT(fabs(v28 / v32)) > 2139095039)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v33 <= -1.0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v33 >= 4295000000.0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v34.f32[0] = v28 / v30;
  LODWORD(v21) = v33;
  v35 = v33 / v31;
  v36 = v34.f32[0];
LABEL_35:
  v34.f32[1] = v35;
  *&v25 = v36 * *&v81;
  DWORD1(v26) = vmuls_lane_f32(v36, *&v82, 1);
  v68 = v26;
  v69 = v25;
  *&v38 = vmul_f32(*v83.i8, v34);
  *(&v38 + 1) = vextq_s8(v83, v83, 8uLL).u64[0];
  v67 = v38;
LABEL_36:
  v39 = [v10 coords];
  if (v39)
  {
    v40 = v39;
    v66 = v21;
    v41 = [swift_unknownObjectRetain() contents];
    v42 = v40;
    v43 = [v10 numGaussians];
    if (v43)
    {
      v44 = v43;
      v45 = v43;
      v46 = sub_23ED73494(v43, 0);
      v43 = memcpy(v46 + 4, v41, 4 * (v44 + 2 * v45));
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    v64 = v78;
    v65 = v77;
    v62 = v80;
    v63 = v79;
    MEMORY[0x28223BE20](v43);
    sub_23EDC1DE0();
    v49 = v46[2];
    if (v49)
    {
      v50 = (v46 + 5);
      v51 = 1.1755e-38;
      v52 = 3.4028e38;
      while (1)
      {
        v53 = vaddq_f32(v62, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v65, *(v50 - 2)), v64, *(v50 - 1)), v63, *v50));
        if (v11 == 1)
        {
          v53 = vabsq_f32(v53);
          v53.f32[0] = fmaxf(fmaxf(v53.f32[0], v53.f32[2]), v53.f32[1]);
          if (v53.f32[0] >= 0.0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v53.i32[0] = v53.i32[2];
          if (v53.f32[2] >= 0.0)
          {
LABEL_48:
            if (v53.f32[0] < v52)
            {
              v52 = v53.f32[0];
            }

            if (v51 <= v53.f32[0])
            {
              v51 = v53.f32[0];
            }
          }
        }

        v50 += 3;
        if (!--v49)
        {
          goto LABEL_53;
        }
      }
    }

    v51 = 1.1755e-38;
    v52 = 3.4028e38;
LABEL_53:

    v55 = v103 == 1 && v11 == 1;
    v56 = 1.0 / fmaxf((1.0 / v51) + -0.0001, 0.0001);
    v57 = (1.0 / v52) + 0.0001;
    if (v55)
    {
      v58 = 1000000.0;
    }

    else
    {
      v58 = v56;
    }

    MEMORY[0x28223BE20](v54);
    sub_23EDC1DE0();
    v59 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v59);
    sub_23EDC1DE0();
    *a3 = v22;
    *(a3 + 4) = v66;
    *(a3 + 8) = 1.0 / v57;
    *(a3 + 12) = v58;
    v60 = v78;
    *(a3 + 16) = v77;
    *(a3 + 32) = v60;
    v61 = v80;
    *(a3 + 48) = v79;
    *(a3 + 64) = v61;
    *(a3 + 80) = v69;
    *(a3 + 96) = v68;
    *(a3 + 112) = v67;
    *(a3 + 128) = v20;
  }

  else
  {
    sub_23ED7E62C();
    swift_allocError();
    *v47 = 0xD00000000000001FLL;
    *(v47 + 8) = 0x800000023EDCB420;
    *(v47 + 16) = 2;
    v48 = swift_willThrow();
    MEMORY[0x28223BE20](v48);
    sub_23EDC1DE0();
  }
}

id sub_23EDA70F8(CGColorSpace *a1)
{
  v1 = CGColorSpaceCopyName(a1);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = qword_27E388190;
    v2 = *MEMORY[0x277CBF4A8];
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "CGColorSpace for MXISceneBuilder does not have a valid name, set to linearSRGB.", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }
  }

  type metadata accessor for CFString(0);
  sub_23EDA75CC(&qword_27E388D10, type metadata accessor for CFString, &unk_23EDC3BEC);
  v8 = v2;
  v9 = sub_23EDC14A0();

  if (v9)
  {
    v10 = MEMORY[0x277D25790];
    v11 = v8;
  }

  else
  {
    v11 = v8;
    v12 = sub_23EDC14A0();

    if ((v12 & 1) == 0)
    {
      v11 = v11;
      v13 = sub_23EDC14A0();

      if (v13 & 1) != 0 || (v11 = v11, v14 = sub_23EDC14A0(), v11, (v14))
      {
        v10 = MEMORY[0x277D25788];
        goto LABEL_15;
      }

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v17 = sub_23EDC1790();
      __swift_project_value_buffer(v17, qword_27E3897E8);
      v18 = v11;
      v11 = sub_23EDC1770();
      v19 = sub_23EDC1D80();

      if (!os_log_type_enabled(v11, v19))
      {

        v10 = MEMORY[0x277D25790];
        v11 = v18;
        goto LABEL_15;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      _os_log_impl(&dword_23ED67000, v11, v19, "%@ is unsupported in baking, setting to default linearSRGB", v20, 0xCu);
      sub_23ED6FA68(v21, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v21, -1, -1);
      MEMORY[0x23EF24B30](v20, -1, -1);
    }

    v10 = MEMORY[0x277D25790];
  }

LABEL_15:

  v15 = *v10;
  return v15;
}

uint64_t sub_23EDA748C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23EDA74C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23EDA75CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static ALCService.isSupported(image:)(void *a1@<X0>, char *a2@<X8>)
{
  [a1 extent];
  Width = CGRectGetWidth(v11);
  [a1 extent];
  Height = CGRectGetHeight(v12);
  if (Height >= Width)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  [a1 extent];
  v7 = CGRectGetWidth(v13);
  [a1 extent];
  v8 = CGRectGetHeight(v14);
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v6 >= 32.0)
  {
    if (v8 <= 16384.0)
    {
      v10 = v8 / v6;
      v9 = v10 < 0.01 || v10 > 100.0;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 2;
  }

  *a2 = v9;
}

unint64_t ALCService.ImageSupportStatus.description.getter()
{
  v1 = 0x6574726F70707553;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t ALCService.ImageSupportStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

unint64_t sub_23EDA7814()
{
  v1 = 0x6574726F70707553;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000029;
  }
}

unint64_t sub_23EDA78C8()
{
  result = qword_27E388DD0;
  if (!qword_27E388DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService10ALCServiceC10ClientNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23EDA7944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EDA799C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_23EDA79FC()
{
  sub_23EDC22F0();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDA7A70()
{
  sub_23EDC22F0();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDA7AB4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23EDA8950(*a1);
  *a2 = result;
  return result;
}

void sub_23EDA7AEC()
{
  if (*(v0 + 16) == 1)
  {
    if ((*(v0 + 48) & 1) == 0 && (*(v0 + 56) & 1) == 0)
    {
      v1 = *(v0 + 32);
      v2 = *(v0 + 40);
      v3 = *(v0 + 52) / sqrtf(((v2 * v2) + (v1 * v1)) / 1872.0);
      v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v5 = v3;
      v6 = [v4 initWithFloat_];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v6, 0xD000000000000013, 0x800000023EDCB5A0, isUniquelyReferenced_nonNull_native);
      *(v0 + 24) = v22;
      swift_endAccess();
      v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v9 = v1;
      v10 = [v8 initWithFloat_];
      swift_beginAccess();
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v10, 0x616D497475706E49, 0xEF68746469576567, v11);
      *(v0 + 24) = v23;
      swift_endAccess();
      v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v13 = v2;
      v14 = [v12 initWithFloat_];
      swift_beginAccess();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v14, 0xD000000000000010, 0x800000023EDCB5C0, v15);
      *(v0 + 24) = v24;
      swift_endAccess();
      v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v17 = v2 / v1;
      v18 = [v16 initWithFloat_];
      swift_beginAccess();
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v18, 0xD000000000000015, 0x800000023EDCB5E0, v19);
      *(v0 + 24) = v25;
      swift_endAccess();
    }

    v20 = sub_23EDC19A0();
    aBlock[4] = sub_23EDA884C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23EDA7E58;
    aBlock[3] = &block_descriptor_0;
    v21 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v21);
  }

  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F98];
}

id sub_23EDA7E58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_23EDA889C();
    v4 = sub_23EDC1890();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23EDA7EE4(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  sub_23EDA8838(v13[0], v3);
  v4 = sub_23EDA870C(v13);
  if (v4 == 6)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v5 = sub_23EDC1790();
    __swift_project_value_buffer(v5, qword_27E3897E8);
    v6 = sub_23EDC1770();
    v7 = sub_23EDC1D80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23ED67000, v6, v7, "Unknown client name, telemetry report will be less useful.", v8, 2u);
      MEMORY[0x23EF24B30](v8, -1, -1);
    }
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_23ED78970(v9, 0x614E746E65696C43, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v12;
  return swift_endAccess();
}

uint64_t sub_23EDA8078(uint64_t a1)
{
  sub_23EDC1340();
  *(v1 + 52) = v2;
  *(v1 + 56) = 0;
  sub_23EDC1370();
  if (v3 > 0.0)
  {
    sub_23EDC1370();
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_23ED78970(v5, 0x657265666E495046, 0xEF656D695465636ELL, isUniquelyReferenced_nonNull_native);
    *(v1 + 24) = v19;
    swift_endAccess();
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_23ED78970(v7, 0xD000000000000016, 0x800000023EDCB510, v8);
    *(v1 + 24) = v20;
    swift_endAccess();
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_23ED78970(v9, 0xD000000000000013, 0x800000023EDCB530, v10);
    *(v1 + 24) = v21;
    swift_endAccess();
  }

  sub_23EDC1380();
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_23ED78970(v12, 0x657265666E49504ALL, 0xEF656D695465636ELL, v13);
  *(v1 + 24) = v22;
  swift_endAccess();
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  swift_beginAccess();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_23ED78970(v14, 0xD000000000000016, 0x800000023EDCB4D0, v15);
  *(v1 + 24) = v23;
  swift_endAccess();
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_23ED78970(v16, 0xD000000000000013, 0x800000023EDCB4F0, v17);
  *(v1 + 24) = v24;
  return swift_endAccess();
}

uint64_t sub_23EDA8430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  MEMORY[0x23EF237D0](1701669204, 0xE400000000000000);
  sub_23EDC23B0();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v7 + 24);
  *(v7 + 24) = 0x8000000000000000;
  sub_23ED78970(v13, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v7 + 24) = v22;
  result = swift_endAccess();
  if ((a7 & 1) == 0)
  {

    MEMORY[0x23EF237D0](0x754379726F6D654DLL, 0xED0000746E657272);
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_23ED78970(v16, a1, a2, v17);

    *(v7 + 24) = v23;
    swift_endAccess();

    MEMORY[0x23EF237D0](0x655079726F6D654DLL, 0xEA00000000006B61);
    v18 = a1;
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_23ED78970(v19, v18, a2, v20);

    *(v7 + 24) = v24;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_23EDA86B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23EDA870C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_23ED7A71C(&unk_285164940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DD8, "R^");
  swift_arrayDestroy();
  if (v1 <= 1)
  {
    if (!v1)
    {

      return 0;
    }

    if (v1 == 1)
    {

      return 2;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:

        return 3;
      case 3:

        return 5;
      case 4:

        return 6;
    }
  }

  if (*(v3 + 16))
  {
    v5 = sub_23ED906A8(v2, v1);
    if (v6)
    {
      v7 = *(*(v3 + 56) + v5);
      sub_23ED9E5BC(v2, v1);

      return v7;
    }
  }

  sub_23ED9E5BC(v2, v1);
  return 6;
}

double sub_23EDA8838(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

double sub_23EDA884C()
{
  swift_beginAccess();

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23EDA889C()
{
  result = qword_27E388DE0;
  if (!qword_27E388DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E388DE0);
  }

  return result;
}

unint64_t sub_23EDA88FC()
{
  result = qword_27E388DE8;
  if (!qword_27E388DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DE8);
  }

  return result;
}

uint64_t sub_23EDA8950(uint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

uint64_t ALCService.VersionError.hashValue.getter()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

void sub_23EDA89EC()
{
  type metadata accessor for ALCService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_23EDC18B0();

    if (*(v4 + 16) && (v5 = sub_23ED906A8(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) != 0))
    {
      sub_23ED71DA8(*(v4 + 56) + 32 * v5, v7);

      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
    }
  }

  sub_23EDA8BB4();
  swift_allocError();
  swift_willThrow();
}