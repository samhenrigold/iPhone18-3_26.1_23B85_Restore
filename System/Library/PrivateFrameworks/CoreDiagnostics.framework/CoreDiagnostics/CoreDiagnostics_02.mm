unint64_t sub_1D98377E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A614();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

void sub_1D9837838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      if (*(a2 + 16))
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v8 = *(v4 - 1);
        v7 = *v4;

        v9 = sub_1D98447E4(v5, v6);
        if (v10)
        {
          sub_1D981B108(*(a2 + 56) + 32 * v9, v11);
          sub_1D982799C(v11, v12);
          sub_1D982E48C(v12, v8, v7);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
        }
      }

      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

uint64_t _sSo22AirPodsCrashReportObjcC15CoreDiagnosticsE08generateD010withBinary8testMode9productId15applicationInfo11description10Foundation4DataVSgSDySSALG_Sbs6UInt32VSDyS2SGSgSSSgtFZ_0(uint64_t a1, char a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  AirPodsCrashReport.init(crashBinaryChunks:testMode:productId:applicationInfo:description:)(a1, a2, a3, a4, v16);
  v17[10] = v16[10];
  v17[11] = v16[11];
  v17[12] = v16[12];
  v17[13] = v16[13];
  v17[6] = v16[6];
  v17[7] = v16[7];
  v17[8] = v16[8];
  v17[9] = v16[9];
  v17[2] = v16[2];
  v17[3] = v16[3];
  v17[4] = v16[4];
  v17[5] = v16[5];
  v17[0] = v16[0];
  v17[1] = v16[1];
  if (sub_1D98381B4(v17) == 1)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D9849C54();
    __swift_project_value_buffer(v10, qword_1ECB47658);
    v11 = sub_1D9849C24();
    v12 = sub_1D984A124();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D97FA000, v11, v12, "Failed to create AirPods crash report", v13, 2u);
      MEMORY[0x1DA738F10](v13, -1, -1);
    }

    return 0;
  }

  else
  {
    v15 = AirPodsCrashReport.saveReport()();
    sub_1D981A4E8(v16, &qword_1ECB41BC0, &qword_1D984E7C0);
    return v15;
  }
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1D9837B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1D9837B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for AirPodsCrashReportObjc()
{
  result = qword_1ECB41B30;
  if (!qword_1ECB41B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB41B30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15CoreDiagnostics13CallStackInfo33_4B94F3FA0C0522D6805C0C914AB57E4FLLVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15CoreDiagnostics16AirPodsCrashInfo33_4B94F3FA0C0522D6805C0C914AB57E4FLLVSg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D9837CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
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

uint64_t sub_1D9837D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsCrashReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsCrashReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9837F28()
{
  result = qword_1ECB41B38;
  if (!qword_1ECB41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B38);
  }

  return result;
}

unint64_t sub_1D9837F80()
{
  result = qword_1ECB41B40;
  if (!qword_1ECB41B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B40);
  }

  return result;
}

unint64_t sub_1D9837FD8()
{
  result = qword_1ECB41B48;
  if (!qword_1ECB41B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B48);
  }

  return result;
}

unint64_t sub_1D983802C()
{
  result = qword_1ECB41B58;
  if (!qword_1ECB41B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B58);
  }

  return result;
}

unint64_t sub_1D9838080()
{
  result = qword_1ECB41B68;
  if (!qword_1ECB41B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B68);
  }

  return result;
}

double sub_1D98380D4(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D9838128()
{
  result = qword_1ECB41B78;
  if (!qword_1ECB41B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B78);
  }

  return result;
}

uint64_t sub_1D98381B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D983830C()
{
  result = qword_1ECB41C30;
  if (!qword_1ECB41C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C30);
  }

  return result;
}

unint64_t sub_1D9838360()
{
  result = qword_1ECB41C38;
  if (!qword_1ECB41C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C38);
  }

  return result;
}

double sub_1D98383B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
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

uint64_t sub_1D9838420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D983847C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
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

uint64_t sub_1D9838500(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9838548(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D98385C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D9838624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D98386B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98386FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D98387A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D98387E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D983886C()
{
  result = qword_1ECB41C50;
  if (!qword_1ECB41C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C50);
  }

  return result;
}

unint64_t sub_1D98388C4()
{
  result = qword_1ECB41C58;
  if (!qword_1ECB41C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C58);
  }

  return result;
}

unint64_t sub_1D983891C()
{
  result = qword_1ECB41C60;
  if (!qword_1ECB41C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C60);
  }

  return result;
}

unint64_t sub_1D9838970()
{
  result = qword_1ECB41C70;
  if (!qword_1ECB41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C70);
  }

  return result;
}

unint64_t sub_1D98389C4()
{
  result = qword_1ECB41C78;
  if (!qword_1ECB41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C78);
  }

  return result;
}

unint64_t sub_1D9838A18()
{
  result = qword_1ECB41C88;
  if (!qword_1ECB41C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C88);
  }

  return result;
}

unint64_t sub_1D9838A9C()
{
  result = qword_1ECB41C90;
  if (!qword_1ECB41C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41C90);
  }

  return result;
}

unint64_t sub_1D9838AF0()
{
  result = qword_1ECB41CA0;
  if (!qword_1ECB41CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CA0);
  }

  return result;
}

unint64_t sub_1D9838B74()
{
  result = qword_1ECB41CA8;
  if (!qword_1ECB41CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CA8);
  }

  return result;
}

unint64_t sub_1D9838C00()
{
  result = qword_1ECB41CB0;
  if (!qword_1ECB41CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CB0);
  }

  return result;
}

unint64_t sub_1D9838C54()
{
  result = qword_1ECB41CC0;
  if (!qword_1ECB41CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CC0);
  }

  return result;
}

unint64_t sub_1D9838CA8()
{
  result = qword_1ECB41CC8;
  if (!qword_1ECB41CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CC8);
  }

  return result;
}

unint64_t sub_1D9838D2C()
{
  result = qword_1ECB41CD0;
  if (!qword_1ECB41CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CD0);
  }

  return result;
}

unint64_t sub_1D9838D80()
{
  result = qword_1ECB41CD8;
  if (!qword_1ECB41CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CD8);
  }

  return result;
}

unint64_t sub_1D9838E04()
{
  result = qword_1ECB41CE0;
  if (!qword_1ECB41CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CE0);
  }

  return result;
}

unint64_t sub_1D9838E58()
{
  result = qword_1ECB41CE8;
  if (!qword_1ECB41CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CE8);
  }

  return result;
}

unint64_t sub_1D9838EAC()
{
  result = qword_1ECB41CF8;
  if (!qword_1ECB41CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41CF8);
  }

  return result;
}

unint64_t sub_1D9838F00()
{
  result = qword_1ECB41D10;
  if (!qword_1ECB41D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D10);
  }

  return result;
}

unint64_t sub_1D9838F54()
{
  result = qword_1ECB41D28;
  if (!qword_1ECB41D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D28);
  }

  return result;
}

unint64_t sub_1D9838FA8()
{
  result = qword_1ECB41D38;
  if (!qword_1ECB41D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D983902C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D38);
  }

  return result;
}

unint64_t sub_1D983902C()
{
  result = qword_1ECB41D40;
  if (!qword_1ECB41D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D40);
  }

  return result;
}

unint64_t sub_1D9839080()
{
  result = qword_1ECB41D48;
  if (!qword_1ECB41D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D48);
  }

  return result;
}

unint64_t sub_1D98390D4()
{
  result = qword_1ECB41D58;
  if (!qword_1ECB41D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D9839158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D58);
  }

  return result;
}

unint64_t sub_1D9839158()
{
  result = qword_1ECB41D60;
  if (!qword_1ECB41D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D60);
  }

  return result;
}

unint64_t sub_1D98391AC()
{
  result = qword_1ECB41D68;
  if (!qword_1ECB41D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D68);
  }

  return result;
}

unint64_t sub_1D9839200()
{
  result = qword_1ECB41D78;
  if (!qword_1ECB41D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScenarioInfo.EventInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScenarioInfo.EventInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsCrashInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsCrashInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_memcpy15_2(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ScenarioInfo.RoutedToSourceInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScenarioInfo.RoutedToSourceInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 15) = v3;
  return result;
}

uint64_t sub_1D983959C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D98395E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D9839638()
{
  result = qword_1ECB41D88;
  if (!qword_1ECB41D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D88);
  }

  return result;
}

unint64_t sub_1D9839690()
{
  result = qword_1ECB41D90;
  if (!qword_1ECB41D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D90);
  }

  return result;
}

unint64_t sub_1D98396E8()
{
  result = qword_1ECB41D98;
  if (!qword_1ECB41D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41D98);
  }

  return result;
}

unint64_t sub_1D9839740()
{
  result = qword_1ECB41DA0;
  if (!qword_1ECB41DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DA0);
  }

  return result;
}

unint64_t sub_1D9839798()
{
  result = qword_1ECB41DA8;
  if (!qword_1ECB41DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DA8);
  }

  return result;
}

unint64_t sub_1D98397F0()
{
  result = qword_1ECB41DB0;
  if (!qword_1ECB41DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DB0);
  }

  return result;
}

unint64_t sub_1D9839848()
{
  result = qword_1ECB41DB8;
  if (!qword_1ECB41DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DB8);
  }

  return result;
}

unint64_t sub_1D98398A0()
{
  result = qword_1ECB41DC0;
  if (!qword_1ECB41DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DC0);
  }

  return result;
}

unint64_t sub_1D98398F8()
{
  result = qword_1ECB41DC8;
  if (!qword_1ECB41DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DC8);
  }

  return result;
}

unint64_t sub_1D9839950()
{
  result = qword_1ECB41DD0;
  if (!qword_1ECB41DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DD0);
  }

  return result;
}

unint64_t sub_1D98399A8()
{
  result = qword_1ECB41DD8;
  if (!qword_1ECB41DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DD8);
  }

  return result;
}

unint64_t sub_1D9839A00()
{
  result = qword_1ECB41DE0;
  if (!qword_1ECB41DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DE0);
  }

  return result;
}

unint64_t sub_1D9839A58()
{
  result = qword_1ECB41DE8;
  if (!qword_1ECB41DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DE8);
  }

  return result;
}

unint64_t sub_1D9839AB0()
{
  result = qword_1ECB41DF0;
  if (!qword_1ECB41DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DF0);
  }

  return result;
}

unint64_t sub_1D9839B08()
{
  result = qword_1ECB41DF8;
  if (!qword_1ECB41DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41DF8);
  }

  return result;
}

unint64_t sub_1D9839B5C()
{
  result = qword_1ECB41E08;
  if (!qword_1ECB41E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E08);
  }

  return result;
}

unint64_t sub_1D9839BB0()
{
  result = qword_1ECB41E20;
  if (!qword_1ECB41E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E20);
  }

  return result;
}

unint64_t sub_1D9839C28()
{
  result = qword_1ECB41E30;
  if (!qword_1ECB41E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E30);
  }

  return result;
}

unint64_t sub_1D9839C80()
{
  result = qword_1ECB41E38;
  if (!qword_1ECB41E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E38);
  }

  return result;
}

unint64_t sub_1D9839CD8()
{
  result = qword_1ECB41E40;
  if (!qword_1ECB41E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E40);
  }

  return result;
}

unint64_t sub_1D9839D30()
{
  result = qword_1ECB41E48;
  if (!qword_1ECB41E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E48);
  }

  return result;
}

unint64_t sub_1D9839D88()
{
  result = qword_1ECB41E50;
  if (!qword_1ECB41E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E50);
  }

  return result;
}

unint64_t sub_1D9839DE0()
{
  result = qword_1ECB41E58;
  if (!qword_1ECB41E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E58);
  }

  return result;
}

unint64_t sub_1D9839E50()
{
  if (*v0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_1D9839EEC()
{
  result = qword_1ECB41E60;
  if (!qword_1ECB41E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41E60);
  }

  return result;
}

uint64_t sub_1D9839F40()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB41E68);
  __swift_project_value_buffer(v0, qword_1ECB41E68);
  return sub_1D9849C34();
}

id TextualRepresentationBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextualRepresentationBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextualRepresentationBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextualRepresentationBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TextualRepresentationBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D983A160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v5 = *(a1 + 32);
    v3 = (a1 + 32);
    v4 = v5;
    v6 = 0xF800000000000000;
    do
    {
      v7 = *v3++;
      if (v7 != v4)
      {
        if (v6 >> 60 == 15)
        {
          sub_1D984A354();

          v15 = sub_1D984A5D4();
          MEMORY[0x1DA737B20](v15);

          MEMORY[0x1DA737B20](0x736574796220, 0xE600000000000000);
          return 0xD000000000000017;
        }

        __break(1u);
        goto LABEL_17;
      }

      ++v6;
      v2 += 16;
      --v1;
    }

    while (v1);
    if (qword_1ECB415E0 == -1)
    {
      goto LABEL_6;
    }

LABEL_17:
    swift_once();
LABEL_6:
    v8 = sub_1D9849C54();
    __swift_project_value_buffer(v8, qword_1ECB41E68);
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Unable to determine malloc size class for uniform MTE tags";
  }

  else
  {
    if (qword_1ECB415E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9849C54();
    __swift_project_value_buffer(v13, qword_1ECB41E68);
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Unable to determine malloc size class for empty MTE tags";
  }

  _os_log_impl(&dword_1D97FA000, v9, v10, v12, v11, 2u);
  MEMORY[0x1DA738F10](v11, -1, -1);
LABEL_13:

  return 0;
}

void sub_1D983A3A0(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C20, &qword_1D984E828);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E76D8];
  *(v4 + 16) = xmmword_1D984E260;
  v6 = MEMORY[0x1E69E7738];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a2;
  sub_1D9849E14();
  if (__OFSUB__(32, sub_1D9849E94()))
  {
    goto LABEL_39;
  }

  v7 = sub_1D9849F54();
  v9 = v8;
  MEMORY[0x1DA737B20](2099770, 0xE300000000000000);
  MEMORY[0x1DA737B20](0x756C615620676154, 0xEA00000000007365);
  MEMORY[0x1DA737B20](v7, v9);

  MEMORY[0x1DA737B20](32, 0xE100000000000000);
  MEMORY[0x1DA737B20](0xD00000000000001BLL, 0x80000001D98543F0);
  MEMORY[0x1DA737B20](10, 0xE100000000000000);
  v32 = *(a1 + 16);
  if (v32)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2 & 0xFFFFFFFFFFFFC000;
    v31 = a1 + 32;
    v13 = a2 & 0xFFFFFFFFFFFFC000;
    while (1)
    {
      if (v11 == 0x800000000000000)
      {
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
        __break(1u);
        return;
      }

      v14 = v12 + v10;
      if (__CFADD__(v12, v10))
      {
        goto LABEL_34;
      }

      v15 = *(v31 + 8 * v11);
      v16 = v14 + 16;
      if (v14 <= a2)
      {
        if (v14 >= 0xFFFFFFFFFFFFFFF0)
        {
          goto LABEL_36;
        }

        v17 = v16 > a2;
      }

      else
      {
        v17 = 0;
      }

      if (~(a2 & 0xFFFFFFFFFFFFC000) >> 4 == v11)
      {
        goto LABEL_35;
      }

      if (v16 > a2)
      {
        break;
      }

      v24 = __CFADD__(v14, 32);
      v25 = v14 + 32;
      if (v24)
      {
        goto LABEL_37;
      }

      v18 = v25 <= a2;
      v19 = v11 & 0xF;
      if ((v11 & 0xF) == 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D984E260;
      *(v21 + 56) = MEMORY[0x1E69E6530];
      *(v21 + 64) = MEMORY[0x1E69E65A8];
      *(v21 + 32) = v15;
      v22 = sub_1D9849E14();
      MEMORY[0x1DA737B20](v22);

      if (v17)
      {
        v23 = 93;
      }

      else
      {
        v26 = v19 == 15 || v18;
        if ((v26 & 1) == 0)
        {
          MEMORY[0x1DA737B20](91, 0xE100000000000000);
          goto LABEL_5;
        }

        v23 = 32;
      }

      MEMORY[0x1DA737B20](v23, 0xE100000000000000);
      if (v19 == 15)
      {
        if (v13 >= 0xFFFFFFFFFFFFFF00)
        {
          goto LABEL_38;
        }

        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D984F880;
        v28 = MEMORY[0x1E69E76D8];
        *(v27 + 56) = MEMORY[0x1E69E76D8];
        v29 = MEMORY[0x1E69E7738];
        *(v27 + 64) = MEMORY[0x1E69E7738];
        *(v27 + 72) = v13 + 256;
        *(v27 + 32) = v13;
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        v30 = sub_1D9849E14();
        MEMORY[0x1DA737B20](v30);

        v13 += 256;
      }

LABEL_5:
      ++v11;
      v10 += 16;
      if (v32 == v11)
      {
        return;
      }
    }

    v18 = 1;
    v19 = v11 & 0xF;
    if ((v11 & 0xF) != 0)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v17)
    {
      v20 = 91;
    }

    else
    {
      v20 = 32;
    }

    MEMORY[0x1DA737B20](v20, 0xE100000000000000);
    goto LABEL_19;
  }
}

void sub_1D983A748(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) || (v4 = sub_1D98447E4(0x6F69747065637865, 0xE90000000000006ELL), (v5 & 1) == 0) || (v6 = *(*(a2 + 56) + 8 * v4), ([v6 respondsToSelector_] & 1) == 0))
  {
    v24 = 0uLL;
    *&v25 = 0;
    *(&v25 + 1) = 1;
    goto LABEL_8;
  }

  *&v22 = 0x7365646F43776172;
  *(&v22 + 1) = 0xE800000000000000;
  swift_unknownObjectRetain();
  v7 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_17;
  }

  sub_1D984A284();
  swift_unknownObjectRelease();
  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1) == 1)
  {
LABEL_8:
    v8 = &unk_1ECB41E80;
    v9 = &unk_1D984F8C0;
    v10 = &v24;
LABEL_9:
    sub_1D981A4E8(v10, v8, v9);
LABEL_10:
    if (qword_1ECB415E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB41E68);
    v12 = sub_1D9849C24();
    v13 = sub_1D984A134();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D97FA000, v12, v13, "Report has missing or malformed exception codes.", v14, 2u);
      MEMORY[0x1DA738F10](v14, -1, -1);
    }

    return;
  }

LABEL_17:
  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    v8 = &qword_1ECB41A98;
    v9 = &qword_1D984E370;
    v10 = v26;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E88, qword_1D984F8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (MEMORY[0x7365646F43776182] < 2uLL)
  {

    goto LABEL_10;
  }

  v15 = MEMORY[0x7365646F4377619A];

  sub_1D983A160(a1);
  v17 = v16;
  sub_1D983A3A0(a1, v15);
  if (v17)
  {
    v20 = v18;
    v21 = v19;
    MEMORY[0x1DA737B20](10, 0xE100000000000000);
    MEMORY[0x1DA737B20](v20, v21);
  }
}

uint64_t sub_1D983AA70(void *a1)
{
  v2 = sub_1D9849C54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9849C44();
  v6 = a1;
  v7 = sub_1D9849C24();
  v8 = sub_1D984A124();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D97FA000, v7, v8, "Error connecting to remote object: %@", v9, 0xCu);
    sub_1D983AE10(v10);
    MEMORY[0x1DA738F10](v10, -1, -1);
    MEMORY[0x1DA738F10](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1D983AC08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D983ACB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id CompatibilityBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompatibilityBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompatibilityBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CompatibilityBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CompatibilityBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D983AE10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41628, &qword_1D984E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D983AE7C(void *a1)
{
  sub_1D983B278(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Pattern(319, a1[2], a1[3], a1[4]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D983AF10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = v6 + 16;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v6 + 8) & ~v8) + ((*(*(*(a3 + 16) - 8) + 64) + (v9 & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    v19 = a1 + v8 + 8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v9 + (v19 & ~v8)) & ~v6);
    }

    v20 = *((v19 & ~v8) + 8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

_BYTE *sub_1D983B074(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = v8 | 7;
  v10 = ((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -32)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v19 = (&result[v9 + 8] & ~v9);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v19 + v8 + 16) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v19 = a2 & 0x7FFFFFFF;
        *((&result[v9 + 8] & ~v9) + 8) = 0;
      }

      else
      {
        *((&result[v9 + 8] & ~v9) + 8) = a2 - 1;
      }

      return result;
    }
  }

  if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -32)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v8 + 8) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != -32)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, v10);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_1D983B278(uint64_t a1)
{
  if (!qword_1EDCFE560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41EA0, qword_1D984F948);
    v1 = sub_1D984A1F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCFE560);
    }
  }
}

uint64_t sub_1D983B2F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D983B374(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1D983B4BC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1D983B68C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D983B6DC(char a1)
{
  if (!a1)
  {
    return 0x736E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x6E726574746170;
  }

  return 0x7274656D656C6574;
}

uint64_t sub_1D983B740(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v14 = a2[3];
  v15 = v4;
  v13 = v5;
  type metadata accessor for Payload.CodingKeys(255, v4, v14, v5);
  swift_getWitnessTable();
  v6 = sub_1D984A5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v16;
  sub_1D984A704();
  v21 = *v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41EA0, qword_1D984F948);
  sub_1D983CB00(qword_1ECB41EA8, MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
  v11 = v17;
  sub_1D984A534();
  if (!v11)
  {
    v19 = 1;
    type metadata accessor for Pattern(0, v15, v14, v13);
    swift_getWitnessTable();
    sub_1D984A5A4();
    v18 = 2;
    sub_1D984A584();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1D983B99C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v9 = type metadata accessor for Pattern(0, a2, a3, a4);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - v10;
  type metadata accessor for Payload.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v37 = sub_1D984A4F4();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Payload(0, a2, a3, a4);
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v12;
  v16 = v39;
  sub_1D984A6F4();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v17 = v33;
    v18 = v34;
    v30 = v15;
    v39 = a1;
    v20 = v35;
    v19 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41EA0, qword_1D984F948);
    v42 = 0;
    sub_1D983CB00(&qword_1EDCFE568, MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
    sub_1D984A464();
    v29 = v43;
    *v30 = v43;
    v41 = 1;
    swift_getWitnessTable();
    sub_1D984A4D4();
    v21 = v18;
    v22 = v13;
    v23 = v30;
    (*(v20 + 32))(v30 + *(v13 + 44), v21, v19);
    v40 = 2;
    v24 = sub_1D984A4B4();
    v26 = v25;
    (*(v17 + 8))(v38, v37);
    v27 = (v23 + *(v22 + 48));
    *v27 = v24;
    v27[1] = v26;
    v28 = v31;
    (*(v31 + 16))(v32, v23, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    (*(v28 + 8))(v23, v22);
  }
}

uint64_t sub_1D983BE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954677562 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D983BF6C(unsigned __int8 a1)
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](a1);
  return sub_1D984A6D4();
}

uint64_t sub_1D983BFB4(char a1)
{
  if (!a1)
  {
    return 0x65707954677562;
  }

  if (a1 == 1)
  {
    return 0x6974696E69666564;
  }

  return 1684632949;
}

uint64_t sub_1D983C008(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v12[0] = a2[4];
  v12[1] = v4;
  type metadata accessor for Pattern.CodingKeys(255, v4, v5, v12[0]);
  swift_getWitnessTable();
  v6 = sub_1D984A5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D984A704();
  v15 = 0;
  v10 = v12[3];
  sub_1D984A584();
  if (!v10)
  {
    v14 = 1;
    sub_1D984A5A4();
    v13 = 2;
    sub_1D984A584();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1D983C1CC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Pattern.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v41 = sub_1D984A4F4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v31 - v13;
  v36 = a2;
  v38 = a3;
  v15 = type metadata accessor for Pattern(0, a2, a3, a4);
  v33 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v31 - v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v14;
  v18 = v42;
  sub_1D984A6F4();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v19 = v37;
    v32 = v17;
    v45 = 0;
    v20 = sub_1D984A4B4();
    v21 = v32;
    *v32 = v20;
    v21[1] = v22;
    v42 = v22;
    v44 = 1;
    v23 = v36;
    sub_1D984A4D4();
    (*(v35 + 32))(v32 + *(v15 + 44), v19, v23);
    v43 = 2;
    v24 = v40;
    v25 = sub_1D984A4B4();
    v27 = v26;
    (*(v39 + 8))(v24, v41);
    v29 = v32;
    v28 = v33;
    v30 = (v32 + *(v15 + 48));
    *v30 = v25;
    v30[1] = v27;
    (*(v28 + 16))(v34, v29, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v28 + 8))(v29, v15);
  }
}

uint64_t sub_1D983C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D983C64C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D983C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D983C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1D983C798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D983B68C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D983C7C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D983B6DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D983C7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D983B6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D983C824@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D983CC2C();
  *a2 = result;
  return result;
}

uint64_t sub_1D983C858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D983C8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D983C974(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D983BF44(v3, *v1);
  return sub_1D984A6D4();
}

uint64_t sub_1D983C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D983BE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D983CA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D983CA58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D983CB00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41EA0, qword_1D984F948);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D983CC38(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D984A3B4();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1D983FEE0(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

char *sub_1D983CF38(uint64_t a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  sub_1D98499B4();
  v5 = sub_1D9849E54();

  v6 = sub_1D9849E54();
  v7 = getxattr((v5 + 32), (v6 + 32), 0, 0, 0, 0);

  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = MEMORY[0x1DA737960](isStackAllocationSafe);
    v10 = MEMORY[0x1DA737960]();
    result = strerror(v10);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = sub_1D9849ED4();
    v14 = v13;
    sub_1D9842464();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
    return swift_willThrow();
  }

  if (!v7)
  {
    sub_1D984A354();

    v20[0] = 0xD00000000000001ELL;
    v20[1] = 0x80000001D9854540;
    MEMORY[0x1DA737B20](a1, a2);
    sub_1D9842464();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    *(v16 + 8) = 0x80000001D9854540;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    return swift_willThrow();
  }

  if (v7 <= 0x400 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1D983D1B4(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v18 + v7 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, &v19);
    if (!v2)
    {
      return v19;
    }

    return swift_willThrow();
  }

  v17 = swift_slowAlloc();
  sub_1D983D1B4(v17, v17 + v7, a1, a2, v20);
  result = MEMORY[0x1DA738F10](v17, -1, -1);
  if (!v2)
  {
    return v20[0];
  }

  return result;
}

char *sub_1D983D1B4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  sub_1D98499B4();
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1D9849E54();

  v12 = sub_1D9849E54();
  v13 = getxattr((v11 + 32), (v12 + 32), a1, v10, 0, 0);

  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = sub_1D9849E34();
    MEMORY[0x1EEE9AC00](v15 - 8);
    sub_1D9849E24();
    result = sub_1D9849E04();
    if (v17)
    {
      *a5 = result;
      a5[1] = v17;
      return result;
    }

    sub_1D984A354();

    MEMORY[0x1DA737B20](a3, a4);
    v23 = 0xD000000000000028;
    v20 = 0x80000001D9854560;
    sub_1D9842464();
    swift_allocError();
    v22 = 0;
    goto LABEL_10;
  }

  v18 = MEMORY[0x1DA737960](v14);
  v19 = MEMORY[0x1DA737960]();
  result = strerror(v19);
  if (result)
  {
    v20 = sub_1D9849ED4();
    v22 = v21;
    v23 = v18;
    sub_1D9842464();
    swift_allocError();
LABEL_10:
    *v24 = v23;
    *(v24 + 8) = v20;
    *(v24 + 16) = v22;
    *(v24 + 24) = v13 < 0;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D983D3D8()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = objc_opt_self();
  v4 = qword_1F550AF50;
  v3 = unk_1F550AF58;

  v5 = sub_1D9833E5C(v1);
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_1D9849DF4();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v5;
    sub_1D9847408(v4, v3, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  sub_1D98482A0(v5);

  v11 = sub_1D9849D94();

  aBlock[4] = sub_1D98424B8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D983E24C;
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  [v2 iterateLogsWithOptions:v11 usingBlock:v12];
  _Block_release(v12);

  sub_1D98424C8(&qword_1F550AF50);
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    v14 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    sub_1D98408E0(&v14);

    return v14;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D983D63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9849C54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1D983CF38(0x657079745F677562, 0xE800000000000000);
  v77 = v5;
  v10 = v9;
  v12 = v11;
  v74 = v4;
  v75 = 0;
  v69 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  v76 = &v68;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v68 - v15;
  v17 = sub_1D9849A54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v70 = v17;
  v19(v16, 1, 1);
  v73 = v16;
  if (v10 == 3487795 && v12 == 0xE300000000000000 || ((v42 = sub_1D984A5F4(), v10 == 3617331) ? (v43 = v12 == 0xE300000000000000) : (v43 = 0), !v43 ? (v44 = 0) : (v44 = 1), (v42 & 1) != 0 || (v44 & 1) != 0 || (v45 = sub_1D984A5F4(), (v45 & 1) != 0)))
  {
    v68 = v18;
    v72 = v12;
    v20 = sub_1D9849944();
    v71 = &v68;
    v21 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D984E260;
    v25 = *MEMORY[0x1E695DAA8];
    *(inited + 32) = *MEMORY[0x1E695DAA8];
    v26 = v25;
    sub_1D98421F0(inited);
    swift_setDeallocating();
    sub_1D98423E4(inited + 32);
    v27 = v75;
    sub_1D9849974();
    if (v27)
    {
      v75 = v27;

      sub_1D9849C44();
      v28 = sub_1D98499C4();
      v29 = *(v28 - 8);
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v31, a1, v28);
      v32 = sub_1D9849C24();
      v33 = sub_1D984A124();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v71 = &v68;
        v35 = v34;
        v36 = swift_slowAlloc();
        v78[0] = v36;
        *v35 = 136315138;
        v37 = sub_1D9849964();
        v39 = v38;
        (*(v29 + 8))(v31, v28);
        v40 = sub_1D9819F0C(v37, v39, v78);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_1D97FA000, v32, v33, "Cannot retrieve creationDateKey for file %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1DA738F10](v36, -1, -1);
        MEMORY[0x1DA738F10](v35, -1, -1);
      }

      else
      {

        (*(v29 + 8))(v31, v28);
      }

      (v77[1])(v8, v74);
      return sub_1D981A4E8(v73, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    MEMORY[0x1EEE9AC00](v46);
    sub_1D9849924();
    (*(v21 + 8))(v23, v20);
    v16 = v73;
    sub_1D981A4E8(v73, &qword_1ECB41A50, &unk_1D984FCF0);
    v45 = sub_1D984258C(&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    v18 = v68;
  }

  v77 = &v68;
  v47 = *(v18 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v49 = v18;
  v50 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = &v68 - v50;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D984251C(v16, v52);
  v53 = v70;
  if ((*(v49 + 48))(v52, 1, v70) == 1)
  {
    sub_1D981A4E8(v16, &qword_1ECB41A50, &unk_1D984FCF0);

    return sub_1D981A4E8(v52, &qword_1ECB41A50, &unk_1D984FCF0);
  }

  else
  {
    v54 = (*(v49 + 32))(&v68 - v50, v52, v53);
    MEMORY[0x1EEE9AC00](v54);
    v55 = &v68 - v50;
    sub_1D9849A44();
    sub_1D9849A14();
    v57 = v56;
    v58 = *(v49 + 8);
    v58(v55, v53);
    if (v57 <= 86400.0)
    {
      v59 = sub_1D98499C4();
      v75 = &v68;
      v60 = *(v59 - 8);
      MEMORY[0x1EEE9AC00](v59);
      v62 = &v68 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v62, a1, v59);
      v63 = v69;
      swift_beginAccess();
      v64 = *(v63 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 16) = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = sub_1D98330F8(0, v64[2] + 1, 1, v64);
        *(v69 + 16) = v64;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v64 = sub_1D98330F8((v66 > 1), v67 + 1, 1, v64);
      }

      v64[2] = v67 + 1;
      (*(v60 + 32))(v64 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v67, v62, v59);
      *(v69 + 16) = v64;

      v58(v51, v70);
      return sub_1D981A4E8(v73, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    else
    {

      v58(v51, v53);
      return sub_1D981A4E8(v16, &qword_1ECB41A50, &unk_1D984FCF0);
    }
  }
}

uint64_t sub_1D983E24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1D98499C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D98499A4();

  v2(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D983E33C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v60 = a1;
  v2 = sub_1D9849C54();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9849944();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
  inited = swift_initStackObject();
  v54 = xmmword_1D984E260;
  *(inited + 16) = xmmword_1D984E260;
  v8 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v9 = v8;
  sub_1D98421F0(inited);
  swift_setDeallocating();
  sub_1D98423E4(inited + 32);
  v10 = v61;
  sub_1D9849974();
  if (v10)
  {

    v15 = v57;
    sub_1D9849C44();
    v16 = v10;
    v17 = sub_1D9849C24();
    v18 = sub_1D984A124();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v10;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D97FA000, v17, v18, "Error retrieving file CreationDate: %@", v19, 0xCu);
      sub_1D981A4E8(v20, &qword_1ECB41628, &qword_1D984E3B0);
      MEMORY[0x1DA738F10](v20, -1, -1);
      MEMORY[0x1DA738F10](v19, -1, -1);
    }

    else
    {
    }

    (v58[1])(v15, v59);
  }

  else
  {
    v61 = &v48 - v6;
    v60 = v4;

    MEMORY[0x1EEE9AC00](v11);
    v12 = &v48 - v6;
    v13 = swift_initStackObject();
    *(v13 + 16) = v54;
    *(v13 + 32) = v9;
    v14 = v9;
    sub_1D98421F0(v13);
    swift_setDeallocating();
    sub_1D98423E4(v13 + 32);
    sub_1D9849974();
    v58 = &v48;

    v25 = sub_1D9849A54();
    v57 = &v48;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x1EEE9AC00](v25);
    v52 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    v53 = &v48 - v52;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
    v59 = &v48;
    MEMORY[0x1EEE9AC00](v28 - 8);
    v51 = v29;
    v30 = &v48 - v29;
    v31 = v61;
    sub_1D9849924();
    *&v54 = v26;
    v32 = *(v26 + 48);
    v55 = v25;
    if (v32(v30, 1, v25) == 1)
    {
      v33 = v60;
      v34 = *(v56 + 8);
      v34(v12, v60);
      v34(v31, v33);
      sub_1D981A4E8(v30, &qword_1ECB41A50, &unk_1D984FCF0);
    }

    else
    {
      v35 = *(v54 + 32);
      v36 = v55;
      v50 = v54 + 32;
      v49 = v35;
      v37 = (v35)(v53, v30, v55);
      v59 = &v48;
      v38 = MEMORY[0x1EEE9AC00](v37);
      v39 = &v48 - v52;
      MEMORY[0x1EEE9AC00](v38);
      v40 = &v48 - v51;
      sub_1D9849924();
      if (v32(v40, 1, v36) != 1)
      {
        v43 = v55;
        v49(v39, v40, v55);
        v44 = v53;
        v23 = sub_1D9849A24();
        v45 = *(v54 + 8);
        v45(v39, v43);
        v45(v44, v43);
        v46 = *(v56 + 8);
        v47 = v60;
        v46(v12, v60);
        v46(v61, v47);
        return v23 & 1;
      }

      (*(v54 + 8))(v53, v55);
      v41 = *(v56 + 8);
      v42 = v60;
      v41(v12, v60);
      v41(v61, v42);
      sub_1D981A4E8(v40, &qword_1ECB41A50, &unk_1D984FCF0);
    }
  }

  v23 = 0;
  return v23 & 1;
}

Swift::OpaquePointer_optional __swiftcall ExcResourceReportPaths()()
{
  v136 = sub_1D9849C54();
  v0 = *(v136 - 8);
  v1 = MEMORY[0x1EEE9AC00](v136);
  v3 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v123 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v123 - v7;
  v9 = sub_1D983D3D8();
  if (!v9)
  {
    sub_1D9849C44();
    v112 = sub_1D9849C24();
    v113 = sub_1D984A114();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_1D97FA000, v112, v113, "No ExcResource reports found", v114, 2u);
      MEMORY[0x1DA738F10](v114, -1, -1);
    }

    (*(v0 + 8))(v8, v136);
LABEL_52:
    v143 = 0;
LABEL_53:
    v60 = v143;
    goto LABEL_56;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    v110 = 0;
    v60 = MEMORY[0x1E69E7CC0];
    v143 = MEMORY[0x1E69E7CC0];
    v111 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v111)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v137 = v6;
  v128 = v3;
  v140 = *MEMORY[0x1E695DB50];
  v11 = v9;
  v12 = sub_1D98499C4();
  v130 = 0;
  v150 = 0;
  v13 = *(v12 - 8);
  v14 = v13[2];
  v126 = v11;
  v141 = (v13 + 1);
  v134 = (v0 + 8);
  v15 = v13[8];
  v138 = v13[9];
  v129 = *MEMORY[0x1E69B7C78];
  *(&v16 + 1) = 2;
  v139 = xmmword_1D984E260;
  *&v16 = 136315650;
  v125 = v16;
  *&v16 = 136446466;
  v131 = v16;
  v143 = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0];
  v144 = v12;
  v135 = v13 + 2;
  v142 = v15;
  do
  {
    v147 = v10;
    v145 = &v123;
    MEMORY[0x1EEE9AC00](v12);
    v19 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    v146 = v20;
    v14(&v123 - v19);
    v21 = sub_1D9849944();
    v148 = &v123;
    v22 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v21);
    v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F30, &unk_1D984FCA0);
    inited = swift_initStackObject();
    *(inited + 16) = v139;
    v26 = v140;
    *(inited + 32) = v140;
    v27 = v26;
    sub_1D98421F0(inited);
    swift_setDeallocating();
    sub_1D98423E4(inited + 32);
    v149 = &v123 - v19;
    v28 = v150;
    sub_1D9849974();
    v150 = v28;
    if (!v28)
    {
      v56 = v149;

      v57 = sub_1D9849934();
      v59 = v58;
      v60 = (*(v22 + 8))(v24, v21);
      if (v59)
      {
        v12 = (*v141)(v56, v144);
      }

      else
      {
        v62 = v130 + v57;
        v63 = v144;
        v15 = v142;
        if (__OFADD__(v130, v57))
        {
          goto LABEL_55;
        }

        v64 = v56;
        if (v62 > 10485760)
        {
          v12 = (*v141)(v56, v144);
          v18 = v147;
          goto LABEL_6;
        }

        v65 = sub_1D9849DF4();
        v66 = v150;
        v68 = sub_1D983CF38(v65, v67);
        v150 = v66;
        if (v66)
        {

          v70 = v150;
          v71 = sub_1D9849C44();
          MEMORY[0x1EEE9AC00](v71);
          v72 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v14)(v72, v64, v63);
          v73 = v70;
          v74 = sub_1D9849C24();
          v75 = sub_1D984A124();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            LODWORD(v132) = v75;
            v77 = v76;
            v130 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v151[0] = v133;
            *v77 = v125;
            v78 = sub_1D9849DF4();
            v148 = &v123;
            v80 = sub_1D9819F0C(v78, v79, v151);
            v124 = v74;
            v81 = v80;

            *(v77 + 4) = v81;
            *(v77 + 12) = 2080;
            v82 = sub_1D9849964();
            v84 = v83;
            (*v141)(v72, v63);
            v85 = sub_1D9819F0C(v82, v84, v151);

            *(v77 + 14) = v85;
            *(v77 + 22) = 2112;
            v86 = v70;
            v87 = _swift_stdlib_bridgeErrorToNSError();
            *(v77 + 24) = v87;
            v88 = v130;
            *v130 = v87;
            v89 = v124;
            _os_log_impl(&dword_1D97FA000, v124, v132, "Unable to retrieve extended attribute %s for file %s with Error: %@", v77, 0x20u);
            sub_1D981A4E8(v88, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v88, -1, -1);
            v90 = v133;
            swift_arrayDestroy();
            MEMORY[0x1DA738F10](v90, -1, -1);
            MEMORY[0x1DA738F10](v77, -1, -1);
          }

          else
          {

            (*v141)(v72, v63);
          }

          (*v134)(v128, v136);
          v150 = 0;
        }

        else
        {
          v91 = v68;
          v92 = v69;

          v93 = sub_1D983CC38(v91, v92);
          if ((v94 & 1) == 0 && !v93)
          {
            v95 = sub_1D98499B4();
            v97 = v96;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v98 = v127;
            }

            else
            {
              v98 = sub_1D98332F0(0, v127[2] + 1, 1, v127);
            }

            v127 = v98;
            v100 = v98[2];
            v99 = v98[3];
            if (v100 >= v99 >> 1)
            {
              v127 = sub_1D98332F0((v99 > 1), v100 + 1, 1, v127);
            }

            v12 = (*v141)(v64, v63);
            v101 = v127;
            v127[2] = v100 + 1;
            v102 = &v101[3 * v100];
            v102[4] = v95;
            v102[5] = v97;
            v102[6] = v57;
            goto LABEL_32;
          }
        }

        v103 = sub_1D98499B4();
        v105 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1D9832DC0(0, *(v143 + 2) + 1, 1, v143);
        }

        v107 = *(v143 + 2);
        v106 = *(v143 + 3);
        if (v107 >= v106 >> 1)
        {
          v143 = sub_1D9832DC0((v106 > 1), v107 + 1, 1, v143);
        }

        v12 = (*v141)(v64, v63);
        v108 = v143;
        *(v143 + 2) = v107 + 1;
        v109 = &v108[16 * v107];
        *(v109 + 4) = v103;
        *(v109 + 5) = v105;
        v130 = v62;
      }

LABEL_32:
      v18 = v147;
      v15 = v142;
      goto LABEL_6;
    }

    v29 = v137;
    v30 = sub_1D9849C44();
    v148 = &v123;
    v31 = v142;
    MEMORY[0x1EEE9AC00](v30);
    v32 = &v123 - v19;
    v33 = v144;
    (v14)(&v123 - v19, v149, v144);
    v34 = v150;
    v35 = v150;
    v36 = sub_1D9849C24();
    v37 = sub_1D984A124();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v151[0] = v133;
      *v38 = v131;
      v132 = v36;
      v40 = sub_1D98499B4();
      v41 = v14;
      v43 = v42;
      v44 = v150;
      v45 = *v141;
      (*v141)(v32, v144);
      v46 = sub_1D9819F0C(v40, v43, v151);
      v14 = v41;

      *(v38 + 4) = v46;
      *(v38 + 12) = 2112;
      v47 = v44;
      v48 = v44;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v49;
      *v39 = v49;
      v50 = v37;
      v51 = v132;
      _os_log_impl(&dword_1D97FA000, v132, v50, "Cannot retrieve file size for %{public}s: %@", v38, 0x16u);
      sub_1D981A4E8(v39, &qword_1ECB41628, &qword_1D984E3B0);
      v52 = v39;
      v53 = v144;
      MEMORY[0x1DA738F10](v52, -1, -1);
      v54 = v133;
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x1DA738F10](v54, -1, -1);
      v55 = v38;
      v15 = v142;
      MEMORY[0x1DA738F10](v55, -1, -1);

      (*v134)(v137, v136);
      v12 = v45(v149, v53);
    }

    else
    {
      v15 = v31;

      v17 = *v141;
      (*v141)(&v123 - v19, v33);
      (*v134)(v29, v136);
      v12 = v17(v149, v33);
    }

    v18 = v147;
    v150 = 0;
LABEL_6:
    v10 = v18 - 1;
  }

  while (v10);

  v110 = v130;
  if (v130 >= 10485760 || (v60 = v127, (v111 = v127[2]) == 0))
  {
LABEL_50:

    if (!*(v143 + 2))
    {

      goto LABEL_52;
    }

    goto LABEL_53;
  }

LABEL_41:
  v115 = v60 + 48;
  while (1)
  {
    v118 = v110 + *v115;
    if (__OFADD__(v110, *v115))
    {
      break;
    }

    if (v118 <= 10485760)
    {
      v120 = *(v115 - 2);
      v119 = *(v115 - 1);
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_1D9832DC0(0, *(v143 + 2) + 1, 1, v143);
      }

      v122 = *(v143 + 2);
      v121 = *(v143 + 3);
      if (v122 >= v121 >> 1)
      {
        v143 = sub_1D9832DC0((v121 > 1), v122 + 1, 1, v143);
      }

      v116 = v143;
      *(v143 + 2) = v122 + 1;
      v117 = &v116[16 * v122];
      *(v117 + 4) = v120;
      *(v117 + 5) = v119;

      v110 = v118;
    }

    v115 += 3;
    if (!--v111)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result.value._rawValue = v60;
  result.is_nil = v61;
  return result;
}

id DiagnosticReportCollectorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticReportCollectorBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticReportCollectorBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticReportCollectorBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DiagnosticReportCollectorBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1D983F8E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41710, &qword_1D984FCE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1D983F95C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1D9849F74();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D984046C(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D984A3B4();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void sub_1D983FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1D9849F74();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D984046C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D984A3B4();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1D984046C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D9849F84();
  v6 = sub_1D98404EC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D98404EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D984A214();
    if (!v9 || (v10 = v9, v11 = sub_1D983F8E8(v9, 0), v12 = sub_1D9840644(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D9849E74();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D9849E74();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D984A3B4();
LABEL_4:

  return sub_1D9849E74();
}

unint64_t sub_1D9840644(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D9840864(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D9849F14();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D984A3B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D9840864(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D9849EF4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1D9840864(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D9849F24();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA737B60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1D98408E0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D98421DC(v2);
  }

  v3 = v2[2];
  v4 = *(sub_1D98499C4() - 8);
  v5[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v5[1] = v3;
  sub_1D9840984(v5);
  *a1 = v2;
}

void sub_1D9840984(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D984A5C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D98499C4();
        v6 = sub_1D984A024();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D98499C4() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D9840D8C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9840AB0(0, v2, 1, a1);
  }
}

uint64_t sub_1D9840AB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v31 = a2;
  if (a3 != a2)
  {
    v6 = a3;
    v7 = result;
    v8 = *a4;
    result = sub_1D98499C4();
    v9 = result;
    v10 = *(result - 8);
    v11 = v10[2];
    v39 = v10 + 2;
    v40 = v11;
    v13 = v10[8];
    v12 = v10[9];
    v41 = (v10 + 1);
    v14 = v8 + v12 * (v6 - 1);
    v36 = -v12;
    v37 = (v10 + 4);
    v15 = v7 - v6;
    v38 = v8;
    v30 = v12;
    v16 = v8 + v12 * v6;
    while (2)
    {
      v34 = v14;
      v35 = v6;
      v32 = v16;
      v33 = v15;
      v17 = v15;
      while (1)
      {
        v45 = v5;
        v42 = v17;
        v44 = &v29;
        MEMORY[0x1EEE9AC00](result);
        v18 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = v40;
        v20 = (v40)(v18, v16, v9);
        v43 = &v29;
        MEMORY[0x1EEE9AC00](v20);
        v19(v18, v14, v9);
        v21 = v45;
        v22 = sub_1D983E33C(v18, v18);
        if (v21)
        {
          v28 = *v41;
          (*v41)(v18, v9);
          return (v28)(v18, v9);
        }

        v23 = v22;
        v45 = 0;
        v24 = *v41;
        (*v41)(v18, v9);
        result = (v24)(v18, v9);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v25 = v42;
        if (!v38)
        {
          __break(1u);
          return result;
        }

        MEMORY[0x1EEE9AC00](result);
        v26 = *v37;
        (*v37)(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v26)(v14, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        v14 += v36;
        v16 += v36;
        v27 = __CFADD__(v25, 1);
        v17 = v25 + 1;
        v5 = v45;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      v5 = v45;
LABEL_11:
      v6 = v35 + 1;
      v14 = v34 + v30;
      v15 = v33 - 1;
      v16 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D9840D8C(char **a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v152 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v7 = *v138;
    if (*v138)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v137 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7 + 1;
    v140 = v8;
    if ((v7 + 1) >= v6)
    {
      goto LABEL_25;
    }

    v146 = v6;
    v153 = v5;
    v151 = *v152;
    v10 = v151;
    v11 = sub_1D98499C4();
    v150 = &v133;
    v12 = *(v11 - 8);
    v13 = v12;
    v14 = *(v12 + 9);
    v139 = v7;
    v15 = v10 + v14 * v9;
    v16 = *(v12 + 8);
    MEMORY[0x1EEE9AC00](v11);
    v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *(v13 + 2);
    v19 = v18(v17, v15, v11);
    v147 = &v133;
    v148 = v16;
    MEMORY[0x1EEE9AC00](v19);
    v143 = v18;
    v144 = (v13 + 16);
    (v18)(v17);
    v20 = v153;
    LODWORD(v145) = sub_1D983E33C(v17, v17);
    v153 = v20;
    if (v20)
    {
      v132 = *(v13 + 1);
      v132(v17, v11);
      v132(v17, v11);

      return;
    }

    v136 = v13;
    v21 = *(v13 + 1);
    (v21)(v17, v11);
    v149 = v11;
    v141 = v21;
    v142 = (v13 + 8);
    v22 = (v21)(v17, v11);
    v23 = v139 + 2;
    v24 = v151 + v14 * (v139 + 2);
    v25 = v14;
    v147 = v14;
    do
    {
      v9 = v146;
      v5 = v153;
      if (v146 == v23)
      {
        goto LABEL_11;
      }

      v151 = &v133;
      v26 = v148;
      MEMORY[0x1EEE9AC00](v22);
      v27 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = v149;
      v29 = v143;
      v30 = (v143)(v27, v24, v149);
      v150 = &v133;
      MEMORY[0x1EEE9AC00](v30);
      v29(v27, v15, v28);
      v31 = v153;
      v32 = sub_1D983E33C(v27, v27);
      v153 = v31;
      if (v31)
      {
        v130 = v141;
        (v141)(v27, v28);
        (v130)(v27, v28);
        goto LABEL_110;
      }

      v33 = v32;
      v34 = v141;
      (v141)(v27, v28);
      v22 = (v34)(v27, v28);
      ++v23;
      v25 = v147;
      v24 = v147 + v24;
      v15 = v147 + v15;
    }

    while (((v145 ^ v33) & 1) == 0);
    v9 = v23 - 1;
    v5 = v153;
LABEL_11:
    v7 = v139;
    v8 = v140;
    if (v145)
    {
      if (v9 >= v139)
      {
        if (v139 < v9)
        {
          v153 = v5;
          v151 = (v136 + 32);
          v35 = v9;
          v36 = v25 * (v9 - 1);
          v37 = v9 * v25;
          v146 = v9;
          v38 = v139;
          v39 = v139 * v25;
          do
          {
            if (v38 != --v35)
            {
              v41 = *v152;
              if (!*v152)
              {
                goto LABEL_137;
              }

              v150 = &v133;
              MEMORY[0x1EEE9AC00](v22);
              v43 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
              v145 = *v151;
              v145(v43, v41 + v39, v149);
              if (v39 < v36 || v41 + v39 >= v41 + v37)
              {
                v40 = v149;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v40 = v149;
                if (v39 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v22 = (v145)(v41 + v36, v43, v40);
              v8 = v140;
              v25 = v147;
            }

            ++v38;
            v36 -= v25;
            v37 -= v25;
            v39 += v25;
          }

          while (v38 < v35);
          v5 = v153;
          v7 = v139;
          v9 = v146;
        }

        goto LABEL_25;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

LABEL_25:
    v44 = v152[1];
    if (v9 >= v44)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v9, v7))
    {
      goto LABEL_129;
    }

    if (v9 - v7 >= v137)
    {
LABEL_34:
      v46 = v9;
      if (v9 < v7)
      {
        goto LABEL_128;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v7, v137))
    {
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (&v7[v137] >= v44)
    {
      v45 = v152[1];
    }

    else
    {
      v45 = &v7[v137];
    }

    if (v45 < v7)
    {
      goto LABEL_132;
    }

    if (v9 == v45)
    {
      goto LABEL_34;
    }

    v153 = v5;
    v100 = *v152;
    v101 = sub_1D98499C4();
    v102 = v101;
    v103 = *(v101 - 8);
    v104 = v103[2];
    v103 += 2;
    v147 = v104;
    v106 = v103[6];
    v105 = v103[7];
    v148 = (v103 - 1);
    v144 = v100;
    v145 = v103;
    v107 = v100 + v105 * (v9 - 1);
    v142 = -v105;
    v143 = (v103 + 2);
    v139 = v7;
    v108 = (v7 - v9);
    v133 = v105;
    v109 = v100 + v9 * v105;
    v141 = v45;
    while (2)
    {
      v146 = v9;
      v134 = v109;
      v135 = v108;
      v110 = v108;
      v136 = v107;
      while (2)
      {
        v149 = v110;
        v151 = &v133;
        MEMORY[0x1EEE9AC00](v101);
        v111 = &v133 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
        v112 = v147;
        v113 = (v147)(v111, v109, v102);
        v150 = &v133;
        v114 = v106;
        MEMORY[0x1EEE9AC00](v113);
        (v112)(v111, v107, v102);
        v115 = v153;
        v116 = sub_1D983E33C(v111, v111);
        v153 = v115;
        if (v115)
        {
          v131 = *v148;
          (*v148)(v111, v102);
          v131(v111, v102);
          goto LABEL_110;
        }

        v117 = v116;
        v118 = *v148;
        (*v148)(v111, v102);
        v101 = (v118)(v111, v102);
        if (v117)
        {
          v106 = v114;
          v119 = v149;
          if (!v144)
          {
            goto LABEL_135;
          }

          v151 = &v133;
          MEMORY[0x1EEE9AC00](v101);
          v120 = *v143;
          (*v143)(&v133 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0), v109, v102);
          swift_arrayInitWithTakeFrontToBack();
          v101 = v120(v107, &v133 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0), v102);
          v107 += v142;
          v109 += v142;
          v121 = __CFADD__(v119, 1);
          v110 = (v119 + 1);
          if (v121)
          {
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      v106 = v114;
LABEL_93:
      v9 = (v146 + 1);
      v107 = &v136[v133];
      v108 = v135 - 1;
      v109 = &v134[v133];
      v46 = v141;
      if ((v146 + 1) != v141)
      {
        continue;
      }

      break;
    }

    v5 = v153;
    v7 = v139;
    v8 = v140;
    if (v141 < v139)
    {
      goto LABEL_128;
    }

LABEL_35:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D9832FF4(0, *(v8 + 16) + 1, 1, v8);
    }

    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = sub_1D9832FF4((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 16) = v50;
    v51 = v8 + 16 * v49;
    v52 = v141;
    *(v51 + 32) = v7;
    *(v51 + 40) = v52;
    v53 = *v138;
    if (!*v138)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      break;
    }

LABEL_3:
    v6 = v152[1];
    v7 = v141;
    if (v141 >= v6)
    {
      goto LABEL_97;
    }
  }

  while (2)
  {
    v54 = v50 - 1;
    if (v50 >= 4)
    {
      v59 = v8 + 32 + 16 * v50;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_115;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_116;
      }

      v66 = (v8 + 16 * v50);
      v68 = *v66;
      v67 = v66[1];
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_118;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_121;
      }

      if (v70 >= v62)
      {
        v88 = (v8 + 32 + 16 * v54);
        v90 = *v88;
        v89 = v88[1];
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_127;
        }

        if (v57 < v91)
        {
          v54 = v50 - 2;
        }
      }

      else
      {
LABEL_54:
        if (v58)
        {
          goto LABEL_117;
        }

        v71 = (v8 + 16 * v50);
        v73 = *v71;
        v72 = v71[1];
        v74 = __OFSUB__(v72, v73);
        v75 = v72 - v73;
        v76 = v74;
        if (v74)
        {
          goto LABEL_120;
        }

        v77 = (v8 + 32 + 16 * v54);
        v79 = *v77;
        v78 = v77[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_123;
        }

        if (__OFADD__(v75, v80))
        {
          goto LABEL_124;
        }

        if (v75 + v80 < v57)
        {
          goto LABEL_68;
        }

        if (v57 < v80)
        {
          v54 = v50 - 2;
        }
      }
    }

    else
    {
      if (v50 == 3)
      {
        v55 = *(v8 + 32);
        v56 = *(v8 + 40);
        v65 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        v58 = v65;
        goto LABEL_54;
      }

      v81 = (v8 + 16 * v50);
      v83 = *v81;
      v82 = v81[1];
      v65 = __OFSUB__(v82, v83);
      v75 = v82 - v83;
      v76 = v65;
LABEL_68:
      if (v76)
      {
        goto LABEL_119;
      }

      v84 = v8 + 16 * v54;
      v86 = *(v84 + 32);
      v85 = *(v84 + 40);
      v65 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v87 < v75)
      {
        goto LABEL_3;
      }
    }

    v92 = v54 - 1;
    if (v54 - 1 < v50)
    {
      v7 = *v152;
      if (!*v152)
      {
        goto LABEL_134;
      }

      v93 = v8;
      v94 = v8 + 32;
      v8 = *(v8 + 32 + 16 * v92);
      v95 = (v94 + 16 * v54);
      v97 = *v95;
      v96 = v95[1];
      v98 = sub_1D98499C4();
      sub_1D984198C(&v7[*(*(v98 - 8) + 72) * v8], &v7[*(*(v98 - 8) + 72) * v97], &v7[*(*(v98 - 8) + 72) * v96], v53);
      if (v5)
      {
        goto LABEL_110;
      }

      if (v96 < v8)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1D98420E4(v93);
      }

      if (v92 >= *(v93 + 2))
      {
        goto LABEL_114;
      }

      v99 = &v93[16 * v92];
      *(v99 + 4) = v8;
      *(v99 + 5) = v96;
      v154 = v93;
      sub_1D9842058(v54);
      v8 = v154;
      v50 = *(v154 + 16);
      if (v50 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v8 = sub_1D98420E4(v8);
LABEL_99:
  v154 = v8;
  v122 = *(v8 + 16);
  if (v122 < 2)
  {
LABEL_110:

    return;
  }

  while (1)
  {
    v123 = *v152;
    if (!*v152)
    {
      break;
    }

    v124 = v8;
    v8 = *(v8 + 16 * v122);
    v125 = &v124[16 * v122 - 16];
    v127 = *(v125 + 4);
    v126 = *(v125 + 5);
    v128 = sub_1D98499C4();
    sub_1D984198C(v123 + *(*(v128 - 8) + 72) * v8, v123 + *(*(v128 - 8) + 72) * v127, v123 + *(*(v128 - 8) + 72) * v126, v7);
    if (v5)
    {
      goto LABEL_110;
    }

    if (v126 < v8)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_1D98420E4(v124);
    }

    if (v122 - 2 >= *(v124 + 2))
    {
      goto LABEL_126;
    }

    v129 = &v124[16 * v122];
    *v129 = v8;
    v129[1] = v126;
    v154 = v124;
    sub_1D9842058(v122 - 1);
    v8 = v154;
    v122 = *(v154 + 16);
    if (v122 <= 1)
    {
      goto LABEL_110;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_1D984198C(char *a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  result = sub_1D98499C4();
  v68 = *(result - 8);
  v11 = v68[9];
  if (!v11)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = result;
  v13 = a2;
  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_68;
  }

  v14 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v11 != -1)
  {
    v15 = (a2 - a1) / v11;
    v76 = a1;
    v75 = a4;
    if (v15 < v14 / v11)
    {
      v16 = v15 * v11;
      if (a4 < a1 || &a1[v16] <= a4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v13 = a2;
LABEL_17:
      v69 = &a4[v16];
      v73 = v4;
      v74 = &a4[v16];
      if (v16 >= 1 && v13 < a3)
      {
        v19 = v68[2];
        v65 = v68[8];
        v66 = v19;
        v68 += 2;
        v67 = (v68 - 1);
        v63 = v11;
        v64 = a3;
        while (1)
        {
          v70 = a1;
          v20 = a4;
          v72 = &v58;
          v21 = v65;
          MEMORY[0x1EEE9AC00](result);
          v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
          v71 = v23;
          v24 = v66;
          v25 = (v66)(v22);
          MEMORY[0x1EEE9AC00](v25);
          v26 = v20;
          (v24)(v22, v20, v12);
          v27 = v73;
          v28 = sub_1D983E33C(v22, v22);
          v73 = v27;
          if (v27)
          {
            break;
          }

          v29 = v28;
          v30 = *v67;
          (*v67)(v22, v12);
          result = (v30)(v22, v12);
          if (v29)
          {
            v31 = v70;
            v32 = v63;
            v33 = v64;
            v34 = &v63[v71];
            a4 = v26;
            if (v70 < v71 || v70 >= v34)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v71)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v35 = v34;
          }

          else
          {
            v32 = v63;
            v33 = v64;
            a4 = &v63[v26];
            v31 = v70;
            if (v70 < v26 || v70 >= a4)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v26)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v75 = a4;
            v35 = v71;
          }

          a1 = &v32[v31];
          v76 = a1;
          if (a4 >= v69 || v35 >= v33)
          {
            goto LABEL_66;
          }
        }

        v56 = *v67;
        (*v67)(v22, v12);
        v56(v22, v12);
      }

LABEL_66:
      sub_1D98420F8(&v76, &v75, &v74);
      return 1;
    }

    v17 = v14 / v11 * v11;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        if (v17 < 1)
        {
          v38 = &a4[v17];
        }

        else
        {
          v36 = -v11;
          v62 = v68 + 2;
          v63 = (v68 + 1);
          v37 = &a4[v17];
          v38 = &a4[v17];
          v70 = a1;
          v60 = -v11;
          v61 = a4;
          do
          {
            v59 = v38;
            v39 = &v13[v36];
            v71 = &v13[v36];
            v65 = v13;
            while (1)
            {
              v73 = v5;
              if (v13 <= a1)
              {
                v76 = v13;
                v74 = v59;
                goto LABEL_66;
              }

              v66 = a3;
              v67 = v37;
              v64 = v38;
              v72 = &v58;
              v40 = v68[8];
              MEMORY[0x1EEE9AC00](result);
              v41 = &v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = *(v42 + 16);
              v69 = v44;
              v45 = v43(v41);
              MEMORY[0x1EEE9AC00](v45);
              (v43)(v41, v39, v12);
              v46 = v73;
              v47 = sub_1D983E33C(v41, v41);
              if (v46)
              {
                v57 = *v63;
                (*v63)(v41, v12);
                v57(v41, v12);
                v76 = v65;
                v74 = v64;
                goto LABEL_66;
              }

              v48 = v47;
              v73 = 0;
              v49 = v66;
              v50 = &v66[v36];
              v51 = *v63;
              (*v63)(v41, v12);
              result = v51(v41, v12);
              if (v48)
              {
                break;
              }

              v38 = v69;
              v52 = v61;
              a3 = v50;
              if (v49 < v67 || v50 >= v67)
              {
                result = swift_arrayInitWithTakeFrontToBack();
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
              }

              else
              {
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
                if (v49 != v67)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v38;
              v13 = v65;
              if (v69 <= v52)
              {
                goto LABEL_61;
              }
            }

            v53 = v61;
            a3 = v50;
            if (v49 < v65 || v50 >= v65)
            {
              v55 = v71;
              result = swift_arrayInitWithTakeFrontToBack();
              v13 = v55;
              v5 = v73;
              a1 = v70;
              v36 = v60;
            }

            else
            {
              v5 = v73;
              a1 = v70;
              v13 = v71;
              v36 = v60;
              if (v49 != v65)
              {
                v54 = v71;
                result = swift_arrayInitWithTakeBackToFront();
                v13 = v54;
              }
            }

            v37 = v67;
            v38 = v64;
          }

          while (v67 > v53);
        }

LABEL_61:
        v73 = v5;
        v74 = v38;
        v76 = v13;
        goto LABEL_66;
      }

      result = swift_arrayInitWithTakeBackToFront();
    }

    v13 = a2;
    goto LABEL_41;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1D9842058(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D98420E4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D98420F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1D98499C4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1D98421F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F40, &qword_1D984FCE8);
    v3 = sub_1D984A334();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_1D9849DF4();
      sub_1D984A6A4();
      v26 = v7;
      sub_1D9849E84();
      v8 = sub_1D984A6D4();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_1D9849DF4();
        v17 = v16;
        if (v15 == sub_1D9849DF4() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_1D984A5F4();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1D98423E4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9842464()
{
  result = qword_1ECB41F38;
  if (!qword_1ECB41F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F38);
  }

  return result;
}

uint64_t sub_1D984251C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D984258C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9842608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9842650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void PanicPatternInfo.init(panicString:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter);
  *v3 = 0xD000000000000010;
  v3[1] = 0x80000001D98545A0;
  v74[0] = a1;
  v74[1] = a2;
  v72 = 0xD000000000000010;
  v73 = 0x80000001D98545A0;
  sub_1D984448C();
  v4 = sub_1D984A0D4();
  v5 = *(v4 + 16);
  if (v5)
  {
    v74[0] = MEMORY[0x1E69E7CC0];
    sub_1D98444E0(0, v5, 0);
    v6 = 0;
    v7 = v74[0];
    v8 = (v4 + 56);
    do
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x1DA737AC0](v9, v10, v11, v12);
      v15 = v14;

      v74[0] = v7;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        sub_1D98444E0((v16 > 1), v17 + 1, 1);
        v7 = v74[0];
      }

      ++v6;
      v7[2] = v17 + 1;
      v18 = &v7[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v8 += 4;
    }

    while (v5 != v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v19 = v7[2];
  if (v19)
  {
    v20 = v7[5];
    v21 = &v69[OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString];
    *v21 = v7[4];
    *(v21 + 1) = v20;
    v22 = &v7[2 * v19 + 4];
    v23 = *(v22 - 16);
    v24 = *(v22 - 8);
  }

  else
  {
    v23 = 0;
    v25 = &v69[OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString];
    v24 = 0xE000000000000000;
    *v25 = 0;
    *(v25 + 1) = 0xE000000000000000;
  }

  v26 = 0xEC0000006564696CLL;

  sub_1D9844A78(v23, v24);
  v28 = v27;

  v29 = 0;
  v70 = v28;
  do
  {
    v41 = byte_1F550AF88[v29 + 32];
    if (v41 <= 1)
    {
      v42 = 0x73206C656E72654BLL;
      v43 = v26;
      if (byte_1F550AF88[v29 + 32])
      {
        v42 = 0xD000000000000010;
        v43 = 0x80000001D98545C0;
        if (!*(v28 + 16))
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v41 == 2)
    {
      v42 = 0x657620746F6F4269;
      v43 = 0xED00006E6F697372;
LABEL_35:
      if (!*(v28 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v42 = 0x6220657275636573;
    v43 = 0xEB00000000746F6FLL;
    if (!*(v28 + 16))
    {
LABEL_39:

      goto LABEL_40;
    }

LABEL_36:
    v44 = sub_1D98447E4(v42, v43);
    v46 = v45;

    if (v46)
    {
      v47 = (*(v28 + 56) + 16 * v44);
      v48 = *v47;
      v49 = v47[1];

      goto LABEL_41;
    }

LABEL_40:
    v48 = 0;
    v49 = 0xE000000000000000;
LABEL_41:
    if (qword_1ECB415B0 != -1)
    {
      swift_once();
    }

    v50 = sub_1D9849C54();
    __swift_project_value_buffer(v50, qword_1ECB47618);

    v51 = sub_1D9849C24();
    v52 = sub_1D984A134();

    if (os_log_type_enabled(v51, v52))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v74[0] = v31;
      *v30 = 136315394;
      v32 = 0x657620746F6F4269;
      if (v41 != 2)
      {
        v32 = 0x6220657275636573;
      }

      v33 = 0xED00006E6F697372;
      if (v41 != 2)
      {
        v33 = 0xEB00000000746F6FLL;
      }

      v34 = 0xD000000000000010;
      if (!v41)
      {
        v34 = 0x73206C656E72654BLL;
      }

      v35 = 0x80000001D98545C0;
      if (!v41)
      {
        v35 = v26;
      }

      if (v41 <= 1)
      {
        v36 = v34;
      }

      else
      {
        v36 = v32;
      }

      if (v41 <= 1)
      {
        v37 = v35;
      }

      else
      {
        v37 = v33;
      }

      v38 = v26;
      v39 = sub_1D9819F0C(v36, v37, v74);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2080;
      v40 = sub_1D9819F0C(v48, v49, v74);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_1D97FA000, v51, v52, "key %s -> %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v31, -1, -1);
      MEMORY[0x1DA738F10](v30, -1, -1);

      v26 = v38;
      v28 = v70;
    }

    else
    {
    }

    ++v29;
  }

  while (v29 != 4);
  if (*(v28 + 16) && (v53 = sub_1D98447E4(0x73206C656E72654BLL, v26), (v54 & 1) != 0))
  {
    v55 = *(*(v28 + 56) + 16 * v53);
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v57 = &v69[OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide];
  *v57 = v55;
  *(v57 + 1) = v56;
  if (*(v28 + 16) && (v58 = sub_1D98447E4(0xD000000000000010, 0x80000001D98545C0), (v59 & 1) != 0))
  {
    v60 = *(*(v28 + 56) + 16 * v58);
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v62 = &v69[OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase];
  *v62 = v60;
  *(v62 + 1) = v61;
  if (*(v28 + 16) && (v63 = sub_1D98447E4(0x657620746F6F4269, 0xED00006E6F697372), (v64 & 1) != 0))
  {
    v65 = (*(v28 + 56) + 16 * v63);
    v67 = *v65;
    v66 = v65[1];
  }

  else
  {
    v67 = 0;
    v66 = 0;
  }

  v68 = &v69[OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion];
  *v68 = v67;
  *(v68 + 1) = v66;
  v71.receiver = v69;
  v71.super_class = type metadata accessor for PanicPatternInfo();
  objc_msgSendSuper2(&v71, sel_init);
}

void sub_1D9842D84(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v62 = 58;
  v63 = 0xE100000000000000;
  v61 = &v62;

  v8 = sub_1D9844084(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D98451F8, v60, v4, v5, v6, v7);
  v9 = v8;
  v64 = v2;
  v10 = *(v8 + 2);
  if (v10)
  {
    v11 = *(v8 + 4);
    v12 = *(v8 + 5);
    v13 = *(v8 + 6);
    v14 = *(v8 + 7);
  }

  else
  {
    v11 = sub_1D984A234();
    v12 = v15;
    v13 = v16;
    v14 = v17;
  }

  v18 = 0x73206C656E72654BLL;
  v19 = MEMORY[0x1DA737AC0](v11, v12, v13, v14);
  v21 = v20;

  v22 = 0x657620746F6F4269;
  v23 = 0xED00006E6F697372;
  if (byte_1F550AF80 != 2)
  {
    v22 = 0x6220657275636573;
    v23 = 0xEB00000000746F6FLL;
  }

  v24 = 0xD000000000000010;
  if (byte_1F550AF80)
  {
    v25 = 0x80000001D98545C0;
  }

  else
  {
    v24 = 0x73206C656E72654BLL;
    v25 = 0xEC0000006564696CLL;
  }

  if (byte_1F550AF80 <= 1u)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (byte_1F550AF80 <= 1u)
  {
    v27 = v25;
  }

  else
  {
    v27 = v23;
  }

  if (v26 == v19 && v27 == v21)
  {
    goto LABEL_28;
  }

  v29 = sub_1D984A5F4();

  if (v29)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF81 > 1u)
  {
    if (byte_1F550AF81 != 2)
    {
      v31 = 0xEB00000000746F6FLL;
      if (v19 != 0x6220657275636573)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    v30 = 0x657620746F6F4269;
    v31 = 0xED00006E6F697372;
LABEL_26:
    if (v30 != v19)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v30 = 0x73206C656E72654BLL;
  v31 = 0xEC0000006564696CLL;
  if (!byte_1F550AF81)
  {
    goto LABEL_26;
  }

  v31 = 0x80000001D98545C0;
  if (v19 != 0xD000000000000010)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (v31 == v21)
  {
    goto LABEL_28;
  }

LABEL_35:
  v52 = sub_1D984A5F4();

  if (v52)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF82 > 1u)
  {
    if (byte_1F550AF82 == 2)
    {
      v53 = 0x657620746F6F4269;
      v54 = 0xED00006E6F697372;
    }

    else
    {
      v53 = 0x6220657275636573;
      v54 = 0xEB00000000746F6FLL;
    }
  }

  else
  {
    v53 = 0x73206C656E72654BLL;
    v54 = 0xEC0000006564696CLL;
    if (byte_1F550AF82)
    {
      v53 = 0xD000000000000010;
      v54 = 0x80000001D98545C0;
    }
  }

  if (v53 == v19 && v54 == v21)
  {
    goto LABEL_28;
  }

  v55 = sub_1D984A5F4();

  if (v55)
  {
    goto LABEL_29;
  }

  if (byte_1F550AF83 > 1u)
  {
    if (byte_1F550AF83 == 2)
    {
      v18 = 0x657620746F6F4269;
      v56 = 0xED00006E6F697372;
    }

    else
    {
      v18 = 0x6220657275636573;
      v56 = 0xEB00000000746F6FLL;
    }
  }

  else
  {
    v56 = 0xEC0000006564696CLL;
    if (byte_1F550AF83)
    {
      v18 = 0xD000000000000010;
      v56 = 0x80000001D98545C0;
    }
  }

  if (v18 == v19 && v56 == v21)
  {
LABEL_28:

    goto LABEL_29;
  }

  v57 = sub_1D984A5F4();

  if ((v57 & 1) == 0)
  {

    return;
  }

LABEL_29:
  v58 = v19;
  v59 = v21;
  if (!v10)
  {
    v32 = a1;

    v34 = sub_1D984A234();
    v35 = v38;
    v37 = v39;
    v36 = v40;
    goto LABEL_33;
  }

  if (v10 <= *(v9 + 2))
  {
    v32 = a1;
    v33 = &v9[32 * v10];
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];

LABEL_33:
    v41 = MEMORY[0x1DA737AC0](v34, v35, v37, v36);
    v43 = v42;

    v62 = v41;
    v63 = v43;
    v44 = sub_1D98498B4();
    v45 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v47 = &v58 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D98498A4();
    sub_1D9838360();
    v48 = sub_1D984A274();
    v50 = v49;
    (*(v45 + 8))(v47, v44);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *v32;
    sub_1D9847408(v48, v50, v58, v59, isUniquelyReferenced_nonNull_native);

    *v32 = v62;
    return;
  }

  __break(1u);
}

id PanicPatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D98433B4()
{
  v1 = *v0;
  v2 = 0x6C536C656E72656BLL;
  v3 = 0x65546C656E72656BLL;
  if (v1 != 3)
  {
    v3 = 0x726556746F6F4269;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9843478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9844F08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D98434AC(uint64_t a1)
{
  v2 = sub_1D9844BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D98434E8(uint64_t a1)
{
  v2 = sub_1D9844BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D9843524()
{

  return result;
}

id PanicPatternInfo.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PanicPatternInfo();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D984366C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F78, &qword_1D984FDD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9844BC0();
  sub_1D984A704();
  v8[15] = 0;
  sub_1D984A584();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D984A584();
  v8[13] = 2;
  sub_1D984A514();
  v8[12] = 3;
  sub_1D984A514();
  v8[11] = 4;
  sub_1D984A514();
  return (*(v4 + 8))(v6, v3);
}

void *PanicPatternInfo.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41F88, &qword_1D984FDD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9844BC0();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for PanicPatternInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = 0;
    v9 = sub_1D984A4B4();
    v11 = (v1 + OBJC_IVAR____SwiftPanicPatternInfo_panicStringDelimiter);
    *v11 = v9;
    v11[1] = v12;
    v27 = 1;
    v13 = sub_1D984A4B4();
    v14 = (v1 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString);
    *v14 = v13;
    v14[1] = v15;
    v27 = 2;
    v16 = sub_1D984A444();
    v17 = (v1 + OBJC_IVAR____SwiftPanicPatternInfo_kernelSlide);
    *v17 = v16;
    v17[1] = v18;
    v27 = 3;
    v19 = sub_1D984A444();
    v20 = (v1 + OBJC_IVAR____SwiftPanicPatternInfo_kernelTextBase);
    *v20 = v19;
    v20[1] = v21;
    v27 = 4;
    v22 = sub_1D984A444();
    v23 = (v1 + OBJC_IVAR____SwiftPanicPatternInfo_iBootVersion);
    *v23 = v22;
    v23[1] = v24;
    v25 = type metadata accessor for PanicPatternInfo();
    v26.receiver = v1;
    v26.super_class = v25;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

void *sub_1D9843C4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PanicPatternInfo());
  result = PanicPatternInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D9843CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D9849F84();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D9832B8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D9832B8C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D9849F64();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D9849EA4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D9849EA4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D9849F84();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D9832B8C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D9849F84();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D9832B8C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D9832B8C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D9849EA4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D9844084@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x1E69E7CC0];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_1D984A224();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_1D984A204() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_1D984A204();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_1D984A244();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D9832B8C(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_1D9832B8C((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_1D984A204();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_1D984A244();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_1D9832B8C((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_1D9832B8C(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_1D984A244();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_1D9832B8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D984448C()
{
  result = qword_1ECB41F50;
  if (!qword_1ECB41F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F50);
  }

  return result;
}

char *sub_1D98444E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D98446D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D9844500(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB8, &qword_1D984E7B8);
  v10 = *(sub_1D98499C4() - 8);
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
  v15 = *(sub_1D98499C4() - 8);
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

char *sub_1D98446D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA0, &qword_1D984E7A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D98447E4(uint64_t a1, uint64_t a2)
{
  sub_1D984A6A4();
  sub_1D9849E84();
  v4 = sub_1D984A6D4();

  return sub_1D98448A0(a1, a2, v4);
}

unint64_t sub_1D984485C(uint64_t a1)
{
  v2 = sub_1D984A304();

  return sub_1D9844958(a1, v2);
}

unint64_t sub_1D98448A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D984A5F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D9844958(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D98450D4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA737F70](v9, a1);
      sub_1D9845130(v9);
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

uint64_t sub_1D9844A20(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

void sub_1D9844A78(uint64_t a1, unint64_t a2)
{
  *&v13 = 10;
  *(&v13 + 1) = 0xE100000000000000;
  v12[2] = &v13;

  v5 = sub_1D9843CC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D9845184, v12, a1, a2, v4);
  v6 = v5;
  v16 = MEMORY[0x1E69E7CC8];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 56);
    while (v8 < *(v6 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v9 - 3);
      v14 = v10;
      v15 = v11;

      sub_1D9842D84(&v16, &v13);

      ++v8;
      v9 += 4;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_1D9844BC0()
{
  result = qword_1ECB41F80;
  if (!qword_1ECB41F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PanicPatternInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PanicPatternInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9844E04()
{
  result = qword_1ECB41F90;
  if (!qword_1ECB41F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F90);
  }

  return result;
}

unint64_t sub_1D9844E5C()
{
  result = qword_1ECB41F98;
  if (!qword_1ECB41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41F98);
  }

  return result;
}

unint64_t sub_1D9844EB4()
{
  result = qword_1ECB41FA0;
  if (!qword_1ECB41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FA0);
  }

  return result;
}

uint64_t sub_1D9844F08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D9854640 == a2;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9853FA0 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C536C656E72656BLL && a2 == 0xEB00000000656469 || (sub_1D984A5F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546C656E72656BLL && a2 == 0xEE00657361427478 || (sub_1D984A5F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556746F6F4269 && a2 == 0xEC0000006E6F6973)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D98451A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

void sub_1D9845214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D982799C(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1D98472B8(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1D981A4E8(a1, &qword_1ECB41A98, &qword_1D984E370);
    sub_1D9846AEC(a2, a3, v8);

    sub_1D981A4E8(v8, &qword_1ECB41A98, &qword_1D984E370);
  }
}

id sub_1D98452E4()
{
  result = [objc_allocWithZone(type metadata accessor for AppleIntelligenceState()) init];
  qword_1EDD00600 = result;
  return result;
}

id sub_1D9845314()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D984A164();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9849D54();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1D984A154();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_queue;
  sub_1D9847B54(0, &qword_1EDCFE9C0, 0x1E69E9610);
  sub_1D984A144();
  sub_1D9849D44();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v5);
  *&v1[v11] = sub_1D984A1A4();
  v12 = &v1[OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons] = MEMORY[0x1E69E7CC0];
  v13 = type metadata accessor for AppleIntelligenceState();
  v19.receiver = v1;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  sub_1D9845658();
  v15 = sub_1D984A084();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_1D9846504(0, 0, v4, &unk_1D984FFB0, v17);

  return v14;
}

void sub_1D9845658()
{
  v56 = sub_1D9849D34();
  v0 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9849C54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v53 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v58 = 0;
  v59 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 16) = xmmword_1D984E260;
  *(v16 + 56) = v17;
  *(v16 + 32) = 0x7474616D79657267;
  *(v16 + 40) = 0xEA00000000007265;
  sub_1D9847B54(0, &qword_1EDCFE558, 0x1E695DFD8);
  v18 = MEMORY[0x1DA737E30](v16);
  v19 = sub_1D9849B14();

  v20 = MEMORY[0x1DA7390F0](v19);
  if (v20 != sub_1D9849C74())
  {
    sub_1D9849C44();
    v21 = sub_1D9849C24();
    v22 = sub_1D984A124();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D97FA000, v21, v22, "Analytics query xpc_object is not of type dictionary", v23, 2u);
      MEMORY[0x1DA738F10](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
LABEL_11:
    v30 = v55;
    v31 = sub_1D9849D24();
    MEMORY[0x1EEE9AC00](v31);
    *(&v53 - 4) = v30;
    *(&v53 - 3) = &v58;
    *(&v53 - 2) = &v57;
    sub_1D984A174();
    swift_unknownObjectRelease();
    (*(v0 + 8))(v2, v56);

    return;
  }

  v24 = xpc_dictionary_get_dictionary(v19, "greymatter");
  if (!v24)
  {
LABEL_8:
    sub_1D9849C44();
    v27 = sub_1D9849C24();
    v28 = sub_1D984A124();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D97FA000, v27, v28, "Failed to query generative models dictionary", v29, 2u);
      MEMORY[0x1DA738F10](v29, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = MEMORY[0x1DA7390F0]();
  if (v26 != sub_1D9849C74())
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  string = xpc_dictionary_get_string(v25, "availability");
  v53 = v25;
  if (string)
  {
    v58 = sub_1D9849ED4();
    v59 = v33;
  }

  else
  {
    sub_1D9849C44();
    v34 = sub_1D9849C24();
    v35 = sub_1D984A124();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D97FA000, v34, v35, "GM availability string not found", v36, 2u);
      MEMORY[0x1DA738F10](v36, -1, -1);
    }

    (*(v4 + 8))(v15, v3);
    v25 = v53;
  }

  v37 = xpc_dictionary_get_value(v25, "reasons");
  if (!v37)
  {
LABEL_20:
    sub_1D9849C44();
    v40 = sub_1D9849C24();
    v41 = sub_1D984A124();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D97FA000, v40, v41, "Failed to get reasons array", v42, 2u);
      MEMORY[0x1DA738F10](v42, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v4 + 8))(v13, v3);
    goto LABEL_11;
  }

  v38 = v37;
  v39 = MEMORY[0x1DA7390F0]();
  if (v39 != sub_1D9849C64())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  count = xpc_array_get_count(v38);
  if ((count & 0x8000000000000000) == 0)
  {
    v44 = count;
    if (count)
    {
      v45 = 0;
      v46 = MEMORY[0x1E69E7CC0];
      v54 = count;
      do
      {
        if (xpc_array_get_string(v38, v45))
        {
          v48 = sub_1D9849ED4();
          v50 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1D9832DC0(0, *(v46 + 2) + 1, 1, v46);
          }

          v52 = *(v46 + 2);
          v51 = *(v46 + 3);
          if (v52 >= v51 >> 1)
          {
            v46 = sub_1D9832DC0((v51 > 1), v52 + 1, 1, v46);
          }

          *(v46 + 2) = v52 + 1;
          v47 = &v46[16 * v52];
          *(v47 + 4) = v48;
          *(v47 + 5) = v50;
          v57 = v46;
          v44 = v54;
        }

        ++v45;
      }

      while (v44 != v45);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1D9845D00(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v6 = (a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state);
  *v6 = *a2;
  v6[1] = v5;

  *(a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons) = *a3;
}

uint64_t sub_1D9845D98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    if (MEMORY[0x1E69A12D8])
    {
      v2 = MEMORY[0x1E69A12E8] == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2 && MEMORY[0x1E69A12F0] != 0)
    {
      v6 = sub_1D9849B94();
      v0[8] = v6;
      v0[9] = *(v6 - 8);
      v0[10] = swift_task_alloc();
      v7 = sub_1D9849BE4();
      v8 = *(v7 - 8);
      v9 = swift_task_alloc();
      v10 = sub_1D9849B74();
      v11 = *(v10 - 8);
      v12 = swift_task_alloc();
      v13 = *(sub_1D9849BB4() - 8);
      swift_task_alloc();
      (*(v13 + 104))();
      sub_1D9849B64();

      sub_1D9849BD4();
      (*(v11 + 8))(v12, v10);

      v14 = sub_1D9849BA4();
      v15 = *(v14 - 8);
      v16 = swift_task_alloc();
      sub_1D9849BC4();
      (*(v8 + 8))(v9, v7);
      sub_1D9849B84();
      (*(v15 + 8))(v16, v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC8, &unk_1D984FFD0);
      v0[11] = swift_task_alloc();
      v17 = sub_1D9847F24();
      v18 = swift_task_alloc();
      v0[12] = v18;
      *v18 = v0;
      v18[1] = sub_1D98461CC;
      v19 = v0[11];
      v20 = v0[8];

      return MEMORY[0x1EEE6D8C8](v19, v20, v17);
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D98461CC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D9846478;
  }

  else
  {
    v2 = sub_1D98462E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D98462FC()
{
  v1 = v0[11];
  v2 = sub_1D9849B54();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1D9845658();
    sub_1D981A4E8(v1, &qword_1ECB41FC8, &unk_1D984FFD0);
    v6 = sub_1D9847F24();
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1D98461CC;
    v8 = v0[11];
    v9 = v0[8];

    return MEMORY[0x1EEE6D8C8](v8, v9, v6);
  }
}

uint64_t sub_1D9846478()
{
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41620, &unk_1D984C0A0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1D9846504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D9847D44(a3, v25 - v10);
  v12 = sub_1D984A084();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D981A4E8(v11, &qword_1ECB41FC0, &qword_1D984FFA0);
  }

  else
  {
    sub_1D984A074();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D984A054();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9849E54() + 32;
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

      sub_1D981A4E8(a3, &qword_1ECB41FC0, &qword_1D984FFA0);

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

  sub_1D981A4E8(a3, &qword_1ECB41FC0, &qword_1D984FFA0);
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

id AppleIntelligenceState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIntelligenceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98468FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D98469F4;

  return v6(a1);
}

uint64_t sub_1D98469F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1D9846AEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D98447E4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D98475FC();
      v10 = v12;
    }

    sub_1D982799C((*(v10 + 56) + 32 * v8), a3);
    sub_1D9847108(v8, v10);
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

uint64_t sub_1D9846B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
  v33 = v4;
  result = sub_1D984A3E4();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D982799C(v24, v34);
      }

      else
      {
        sub_1D981B108(v24, v34);
      }

      sub_1D984A6A4();
      sub_1D9849E84();
      result = sub_1D984A6D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D982799C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D9846E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
  v37 = v4;
  result = sub_1D984A3E4();
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

      sub_1D984A6A4();
      sub_1D9849E84();
      result = sub_1D984A6D4();
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

void sub_1D9847108(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D984A2C4() + 1) & ~v5;
    do
    {
      sub_1D984A6A4();

      sub_1D9849E84();
      v10 = sub_1D984A6D4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

_OWORD *sub_1D98472B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D98447E4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D98475FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9846B90(v16, a4 & 1);
    v11 = sub_1D98447E4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D984A634();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1D982799C(a1, v22);
  }

  else
  {
    sub_1D9847590(v11, a2, a3, a1, v21);
  }
}

void sub_1D9847408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D98447E4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D9846E48(v18, a5 & 1);
      v13 = sub_1D98447E4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D984A634();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D98477A0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

_OWORD *sub_1D9847590(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D982799C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1D98475FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
  v2 = *v0;
  v3 = sub_1D984A3D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D981B108(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D982799C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D98477A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
  v2 = *v0;
  v3 = sub_1D984A3D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

unint64_t _s15CoreDiagnostics22AppleIntelligenceStateC03getcD12AvailabilitySDySSypGSgyFZ_0()
{
  v0 = sub_1D98337FC(MEMORY[0x1E69E7CC0]);
  v1 = v0;
  if (qword_1EDCFE758 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FD0, &unk_1D984FFE0);
  sub_1D984A184();
  v2 = v8;
  if (*(&v7 + 1))
  {
    v9 = MEMORY[0x1E69E6158];
    sub_1D982799C(&v7, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D98472B8(v6, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (!*(v2 + 16))
  {

    if (*(v1 + 16))
    {
      return v1;
    }

    goto LABEL_7;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  *&v7 = v2;
  sub_1D982799C(&v7, v6);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D98472B8(v6, 0x736E6F73616572, 0xE700000000000000, v4);
  if (!*(v1 + 16))
  {
LABEL_7:

    return 0;
  }

  return v1;
}

uint64_t sub_1D9847B54(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1D9847B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9847C50;

  return sub_1D9845D78(a1, v4, v5, v6);
}

uint64_t sub_1D9847C50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9847D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9847DB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9847FC0;

  return sub_1D98468FC(a1, v4);
}

uint64_t sub_1D9847E6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9847C50;

  return sub_1D98468FC(a1, v4);
}

unint64_t sub_1D9847F24()
{
  result = qword_1EDCFE580;
  if (!qword_1EDCFE580)
  {
    sub_1D9849B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE580);
  }

  return result;
}

uint64_t sub_1D9847F70@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state + 8);
  *a1 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state);
  a1[1] = v3;
  a1[2] = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons);
}

uint64_t sub_1D9847FD4()
{
  result = sub_1D9847FF8();
  byte_1EDCFE4D8 = result & 1;
  return result;
}

uint64_t sub_1D9847FF8()
{
  v0 = sub_1D9849DC4();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0 && (v5 & 1) != 0)
  {
    return 0;
  }

  v3 = sub_1D9849DC4();
  v4 = MGCopyAnswer();

  if (v4 && (swift_dynamicCast() & 1) != 0)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t static DeviceState.isCustomerFused.getter()
{
  if (qword_1EDCFE4D0 != -1)
  {
    swift_once();
  }

  return byte_1EDCFE4D8;
}

id DeviceState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceState.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98482A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v2 = sub_1D984A3F4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1D982799C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1D982799C(v29, v30);
    result = sub_1D984A304();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1D982799C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9848568(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v2 = sub_1D984A3F4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1D982799C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1D982799C(v29, v30);
    result = sub_1D984A304();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1D982799C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static ReportViewer.textualRepresentation(_:includeFullReport:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FD8, &qword_1D9850030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984E260;
  *(inited + 32) = sub_1D9849DF4();
  *(inited + 40) = v4;
  *(inited + 48) = a2;
  v5 = sub_1D9833F70(inited);
  swift_setDeallocating();
  sub_1D9848BAC(inited + 32);
  v6 = objc_opt_self();
  v7 = sub_1D9849994();
  v8 = sub_1D9849DC4();
  sub_1D9848568(v5);

  v9 = sub_1D9849D94();

  v10 = [v6 transformURL:v7 template:v8 options:v9];

  v11 = sub_1D9849DB4();
  *&v21[0] = sub_1D9849DF4();
  *(&v21[0] + 1) = v12;
  sub_1D984A324();
  if (!*(v11 + 16) || (v13 = sub_1D984485C(v22), (v14 & 1) == 0))
  {
    sub_1D9845130(v22);
    *&v21[0] = sub_1D9849DF4();
    *(&v21[0] + 1) = v16;
    sub_1D984A324();
    if (*(v11 + 16) && (v17 = sub_1D984485C(v22), (v18 & 1) != 0))
    {
      sub_1D981B108(*(v11 + 56) + 32 * v17, v23);
      sub_1D9845130(v22);

      sub_1D9848C68();
      if (swift_dynamicCast())
      {
        return swift_willThrow();
      }
    }

    else
    {

      sub_1D9845130(v22);
    }

    sub_1D9848C14();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  sub_1D981B108(*(v11 + 56) + 32 * v13, v21);
  sub_1D9845130(v22);

  sub_1D982799C(v21, v23);
  sub_1D981B108(v23, v22);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return *&v21[0];
  }

  else
  {
    sub_1D9848C14();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }
}

unint64_t sub_1D9848B70()
{
  if (*v0)
  {
    return 0xD00000000000003BLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1D9848BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FE0, &qword_1D9850038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9848C14()
{
  result = qword_1ECB41FE8;
  if (!qword_1ECB41FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FE8);
  }

  return result;
}

unint64_t sub_1D9848C68()
{
  result = qword_1ECB41FF0;
  if (!qword_1ECB41FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB41FF0);
  }

  return result;
}

unint64_t sub_1D9848CDC()
{
  result = qword_1ECB41FF8;
  if (!qword_1ECB41FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FF8);
  }

  return result;
}

void __handleDiagnosticLog_block_invoke_cold_1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void gotLoadHelper_x21__OBJC_CLASS___DiagnosticsReporterLaunchOptions(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DiagnosticsReporterServices))
  {
    dlopenHelper_DiagnosticsReporterServices(a1);
  }
}

void gotLoadHelper_x22__OBJC_CLASS___OSADiagnosticsReporter(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DiagnosticsReporterServices))
  {
    dlopenHelper_DiagnosticsReporterServices(a1);
  }
}

double dlopenHelper_DiagnosticsReporterServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DiagnosticsReporterServices.framework/DiagnosticsReporterServices", 0);
  atomic_store(1u, &dlopenHelperFlag_DiagnosticsReporterServices);
  return a1;
}