uint64_t sub_22FEDA778(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return DeviceModePolicy.evaluate(bundle:context:)(v4, a2);
}

uint64_t DeviceModePolicy.Constraint.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEDA894()
{
  result = qword_27DAF1F60;
  if (!qword_27DAF1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F60);
  }

  return result;
}

unint64_t sub_22FEDA8EC()
{
  result = qword_27DAF1F68;
  if (!qword_27DAF1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F68);
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.ModeLoader(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = (a2 + 16776962) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776962) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }
    }
  }

  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  if (v8 + 1 >= 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy.ModeLoader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776962) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776962) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v4)
    {
      v5 = ((a2 - 254) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_22FEDAB54(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.Error(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 65410 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65410 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65410;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65410;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65410;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 7) & 0x7C | (*a1 >> 14)) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceModePolicy.Error(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65410 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65410 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 16) + 1;
    *result = a2 - 126;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FEDAD3C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059F0);
  __swift_project_value_buffer(v0, qword_27DB059F0);
  return sub_22FFB12E8();
}

uint64_t EnsembleMembersPolicy.init(required:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t EnsembleMembersPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = *v2;
  v4 = *(v2 + 8);
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 33) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_22FEDAE4C, 0, 0);
}

uint64_t sub_22FEDAE4C()
{
  v22 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 33);
  }

  else
  {
    AttestationPolicyContext.validatedDarwinInit.getter(&v20);
    v1 = v20;
    if (!v20)
    {
      if (*(v0 + 32) == 1)
      {
        if (qword_27DAF1278 != -1)
        {
          swift_once();
        }

        v14 = sub_22FFB12F8();
        __swift_project_value_buffer(v14, qword_27DB059F0);
        v5 = sub_22FFB12D8();
        v6 = sub_22FFB1838();
        v7 = 0;
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_22;
        }

        v8 = "Validated darwin-init not available";
        goto LABEL_21;
      }

      if (qword_27DAF1278 != -1)
      {
        swift_once();
      }

      v18 = sub_22FFB12F8();
      __swift_project_value_buffer(v18, qword_27DB059F0);
      v10 = sub_22FFB12D8();
      v11 = sub_22FFB1838();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Validated darwin-init not available, failing open";
        goto LABEL_27;
      }

LABEL_28:

      goto LABEL_29;
    }

    v2 = v21;
  }

  v20 = v1;
  v21 = v2;
  v3 = DarwinInit.ensembleCertificateFingerprints.getter();

  if (!v3)
  {
    if (*(v0 + 32))
    {
      if (qword_27DAF1278 != -1)
      {
        swift_once();
      }

      v4 = sub_22FFB12F8();
      __swift_project_value_buffer(v4, qword_27DB059F0);
      v5 = sub_22FFB12D8();
      v6 = sub_22FFB1838();
      v7 = 1;
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_22;
      }

      v8 = "Ensemble member fingerprints not found in secure-config";
LABEL_21:
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FE99000, v5, v6, v8, v15, 2u);
      MEMORY[0x23190EFF0](v15, -1, -1);
LABEL_22:

      sub_22FEDB25C();
      swift_allocError();
      *v16 = v7;
      swift_willThrow();
      v17 = *(v0 + 8);
      goto LABEL_30;
    }

    if (qword_27DAF1278 != -1)
    {
      swift_once();
    }

    v9 = sub_22FFB12F8();
    __swift_project_value_buffer(v9, qword_27DB059F0);
    v10 = sub_22FFB12D8();
    v11 = sub_22FFB1838();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Ensemble member fingerprints not found in secure-config, failing open";
LABEL_27:
      _os_log_impl(&dword_22FE99000, v10, v11, v13, v12, 2u);
      MEMORY[0x23190EFF0](v12, -1, -1);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

LABEL_29:
  v17 = *(v0 + 8);
LABEL_30:

  return v17();
}

uint64_t sub_22FEDB1C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return EnsembleMembersPolicy.evaluate(bundle:context:)(v4, a2);
}

unint64_t sub_22FEDB25C()
{
  result = qword_27DAF1F70;
  if (!qword_27DAF1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F70);
  }

  return result;
}

uint64_t sub_22FEDB2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_22FEDB30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_22FEDB384()
{
  result = qword_27DAF1F78;
  if (!qword_27DAF1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F78);
  }

  return result;
}

uint64_t sub_22FEDB3D8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A08);
  __swift_project_value_buffer(v0, qword_27DB05A08);
  return sub_22FFB12E8();
}

unsigned __int8 *FusingPolicy.init(_:is:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = a2[1];
  v6 = a2[2];
  if (result[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  *a3 = *a2;
  *(a3 + 1) = v5;
  *(a3 + 2) = v6;
  *(a3 + 5) = v4;
  *(a3 + 3) = v7 | v3;
  return result;
}

_BYTE *FusingPolicy.Constraints.init(productionStatus:securityMode:securityDomain:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

unsigned __int8 *FusingPolicy.init(_:matches:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(a2 + 2);
  if (result[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  *a3 = *a2;
  *(a3 + 2) = v5;
  *(a3 + 5) = v4;
  *(a3 + 3) = v6 | v3;
  return result;
}

_BYTE *FusingPolicy.init(is:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  *a2 = *result;
  *(a2 + 1) = v2;
  *(a2 + 2) = v3;
  *(a2 + 5) = 0;
  *(a2 + 3) = 2;
  return result;
}

uint64_t FusingPolicy.init(matches:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 2);
  *a2 = *result;
  *(a2 + 2) = v2;
  *(a2 + 5) = 0;
  *(a2 + 3) = 2;
  return result;
}

uint64_t FusingPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 44) = *v2;
  *(v3 + 45) = *(v2 + 1);
  v4 = *(v2 + 3);
  *(v3 + 42) = *(v2 + 5);
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FEDB5E4, 0, 0);
}

uint64_t sub_22FEDB5E4(void *a1)
{
  v29 = v1;
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 40) | (*(v1 + 42) << 16);
  if (*(v1 + 40) == 2)
  {
    AttestationPolicyContext.validatedAttestation.getter(&v23);
    v3 = v24;
    if (v24 >> 60 == 15 || (v5 = v25, v4 = v26, v6 = v23, *(v1 + 16) = 0, *(v1 + 24) = 0, v7 = swift_task_alloc(), *(v7 + 16) = v1 + 16, *(v7 + 24) = v1 + 24, sub_22FED55F8(v5, v4, sub_22FEB341C), sub_22FECB858(v6, v3, v5, v4), , v2 = v27, v27 == 2))
    {
      v8 = 2;
LABEL_16:
      sub_22FEDBA30();
      swift_allocError();
      *(v16 + 4) = WORD2(v8);
      *v16 = v8;
      swift_willThrow();
      v17 = *(v1 + 8);
      goto LABEL_17;
    }

    v9 = (v27 >> 8) & 1;
    v10 = BYTE2(v27);
  }

  else
  {
    LODWORD(v9) = (v2 >> 8) & 1;
    v10 = HIWORD(v2);
  }

  v11 = *(v1 + 44);
  v12 = *(v1 + 45);
  if (v11 != 2 && ((v2 ^ v11) & 1) != 0 || v12 != 2 && ((v9 ^ v12) & 1) != 0 || (v13 = *(v1 + 46), v13 != 4) && v10 != v13)
  {
    v14 = v9 == 0;
    v15 = 256;
    if (v14)
    {
      v15 = 0;
    }

    v8 = v15 & 0xFFFFFFFFFFFFFFFELL | v2 & 1 | (v10 << 16) | (v11 << 24) | (v12 << 32) | (*(v1 + 46) << 40);
    goto LABEL_16;
  }

  if (qword_27DAF1280 != -1)
  {
    swift_once();
  }

  v19 = sub_22FFB12F8();
  __swift_project_value_buffer(v19, qword_27DB05A08);
  v20 = sub_22FFB12D8();
  v21 = sub_22FFB1848();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22FE99000, v20, v21, "AttestationBundle passed FusingPolicy: device has expected fuse bits", v22, 2u);
    MEMORY[0x23190EFF0](v22, -1, -1);
  }

  v17 = *(v1 + 8);
LABEL_17:

  return v17();
}

BOOL static FusingPolicy.Constraints.~= infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (v2 != 2 && ((*a2 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != 2 && ((a2[1] ^ v5) & 1) != 0)
  {
    return 0;
  }

  return v3 == 4 || a2[2] == v3;
}

uint64_t sub_22FEDB920(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return FusingPolicy.evaluate(bundle:context:)(v4, a2);
}

BOOL FusingPolicy.Constraints.matches(_:)(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = v1[2];
  if (v2 != 2 && ((*a1 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v5 = v1[1];
  if (v5 != 2 && ((a1[1] ^ v5) & 1) != 0)
  {
    return 0;
  }

  return v3 == 4 || a1[2] == v3;
}

unint64_t sub_22FEDBA30()
{
  result = qword_27DAF1F80[0];
  if (!qword_27DAF1F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1F80);
  }

  return result;
}

uint64_t FusingPolicy.Constraint.matches(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  v12 = 1;
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v7, v9, v3);
    v12 = sub_22FFB1478();
    (*(v4 + 8))(v7, v3);
  }

  return v12 & 1;
}

uint64_t getEnumTagSinglePayload for FusingPolicy.Constraints(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FusingPolicy.Constraints(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_22FEDBDF4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22FEDBE50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_22FEDBFD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FusingPolicy.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEDC250(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *HardwareIdentifiersPolicy.init(matches:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = result[2];
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 2) = v5;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  *(a4 + 12) = 2;
  *(a4 + 20) = 0;
  return result;
}

uint64_t sub_22FEDC2C8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A20);
  __swift_project_value_buffer(v0, qword_27DB05A20);
  return sub_22FFB12E8();
}

unsigned __int8 *HardwareIdentifiersPolicy.init(_:matches:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *result;
  v8 = result[2];
  v9 = a4[1];
  v10 = a4[2];
  v11 = 256;
  if (!result[1])
  {
    v11 = 0;
  }

  *a7 = *a4;
  *(a7 + 1) = v9;
  *(a7 + 2) = v10;
  *(a7 + 4) = a5;
  *(a7 + 8) = a6;
  *(a7 + 12) = v11 | v7 | (v8 << 16) | (a2 << 32);
  *(a7 + 20) = a3;
  return result;
}

uint64_t HardwareIdentifiersPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 60) = *v2;
  *(v3 + 61) = *(v2 + 1);
  *(v3 + 62) = *(v2 + 2);
  *(v3 + 48) = *(v2 + 4);
  v4 = *(v2 + 12);
  *(v3 + 32) = a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(v2 + 20);

  return MEMORY[0x2822009F8](sub_22FEDC450, 0, 0);
}

uint64_t sub_22FEDC450()
{
  v34 = v0;
  v33 = *MEMORY[0x277D85DE8];
  AttestationPolicyContext.validatedAttestation.getter(&v29);
  v2 = v29;
  v1 = v30;
  v4 = v31;
  v3 = v32;
  if (v30 >> 60 == 15)
  {
    LODWORD(v5) = 0;
    v6 = 0;
    LOBYTE(v7) = 1;
    LODWORD(v8) = 2;
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 16;
    *(v9 + 24) = v0 + 24;
    sub_22FEDC90C(v2, v1, v4, v3);
    sub_22FED55F8(v4, v3, sub_22FEB341C);
    sub_22FECB858(v2, v1, v4, v3);

    v6 = v29;
    LODWORD(v8) = v31;
    v29 = v2;
    v30 = v1;
    v31 = v4;
    v32 = v3;
    v5 = SEP.Attestation.boardID.getter();
    v7 = HIDWORD(v5) & 1;
  }

  if (*(v0 + 40) == 2)
  {
    if ((v8 == 2) | v7 & 1)
    {
      sub_22FEDC8B8();
      swift_allocError();
      v10[1] = 0;
      v10[2] = 0;
      *v10 = 2;
LABEL_33:
      swift_willThrow();
      sub_22FECB858(v2, v1, v4, v3);
      v21 = *(v0 + 8);
      goto LABEL_34;
    }
  }

  else
  {
    v6 = HIDWORD(*(v0 + 40));
    LODWORD(v5) = *(v0 + 56);
    v8 = *(v0 + 40);
  }

  v11 = WORD1(v8) & 3;
  v12 = *(v0 + 62);
  if ((v8 & 0x100) != 0)
  {
    v11 |= 4u;
    v13 = v12 & 3 | 4;
    if (!*(v0 + 61))
    {
      v13 = v12 & 3;
    }

    v14 = 8 * (v8 & 1);
  }

  else
  {
    v13 = v12 & 3 | 4;
    if (!*(v0 + 61))
    {
      v13 = v12 & 3;
    }

    if (v8)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = v11 | v14;
  if (*(v0 + 60))
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != (v16 | v13) || v6 != *(v0 + 48) || v5 != *(v0 + 52))
  {
    v22 = *(v0 + 48);
    v23 = v8 & 0xFF0101 | (v6 << 32);
    v24 = 0x100000000;
    if (!*(v0 + 60))
    {
      v24 = 0;
    }

    v25 = 0x10000000000;
    if (!*(v0 + 61))
    {
      v25 = 0;
    }

    v26 = v24 | v25 | (v12 << 48) | v5;
    sub_22FEDC8B8();
    swift_allocError();
    *v27 = v23;
    v27[1] = v26;
    v27[2] = v22;
    goto LABEL_33;
  }

  if (qword_27DAF1288 != -1)
  {
    swift_once();
  }

  v17 = sub_22FFB12F8();
  __swift_project_value_buffer(v17, qword_27DB05A20);
  v18 = sub_22FFB12D8();
  v19 = sub_22FFB1848();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22FE99000, v18, v19, "AttestationBundle passed HardwareIdentifiersPolicy: device has expected hardware identifiers", v20, 2u);
    MEMORY[0x23190EFF0](v20, -1, -1);
  }

  sub_22FECB858(v2, v1, v4, v3);

  v21 = *(v0 + 8);
LABEL_34:

  return v21();
}

uint64_t sub_22FEDC824(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return HardwareIdentifiersPolicy.evaluate(bundle:context:)(v4, a2);
}

unint64_t sub_22FEDC8B8()
{
  result = qword_27DAF2008;
  if (!qword_27DAF2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2008);
  }

  return result;
}

uint64_t sub_22FEDC90C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22FEA5608(result, a2);

    return sub_22FEA5608(a3, a4);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy.IdentifiersLoader(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[12])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy.IdentifiersLoader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22FEDCAC4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HardwareIdentifiersPolicy.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HardwareIdentifiersPolicy.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22FEDCB9C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_22FEDCC1C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913D0);
  __swift_project_value_buffer(v0, qword_2814913D0);
  return sub_22FFB12E8();
}

uint64_t sub_22FEDCCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEDCD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_22FFB0A08();
  (*(*(v7 - 8) + 32))(a4, a2, v7);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(type metadata accessor for KeyOptionsPolicy(0) + 20);
  sub_22FEDCCA8(a1, a4 + v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v10 = *(*(v9 - 8) + 56);

  return v10(a4 + v8, 0, 1, v9);
}

uint64_t sub_22FEDCE20@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22FFB0A08();
  (*(*(v5 - 8) + 32))(a3, a1, v5);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(type metadata accessor for KeyOptionsPolicy(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t KeyOptionsPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[6] = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v3[7] = swift_task_alloc();
  type metadata accessor for KeyOptionsPolicy.OptionsLoader(0);
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_22FFB0A08();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEDD0E0, 0, 0);
}

uint64_t sub_22FEDD0E0()
{
  v58 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for KeyOptionsPolicy(0);
  sub_22FEDD998(v4 + *(v5 + 20), v3, type metadata accessor for KeyOptionsPolicy.OptionsLoader);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = AttestationPolicyContext.validatedAttestation.getter(&v54);
    v7 = v55;
    if (v55 >> 60 == 15)
    {
      (*(v0[13] + 56))(v0[11], 1, 1, v0[12], v6);
    }

    else
    {
      v9 = v56;
      v8 = v57;
      v10 = v54;
      sub_22FEDDADC(v56, v57, v0[11]);
      sub_22FECB858(v10, v7, v9, v8);
    }
  }

  else
  {
    sub_22FEDCCA8(v0[8], v0[11]);
  }

  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[11];
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_22FEDD910(v13);
    type metadata accessor for KeyOptionsPolicy.Error(0);
    sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error, &protocol conformance descriptor for KeyOptionsPolicy.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_8:

    v14 = v0[1];
    goto LABEL_18;
  }

  v15 = v0[7];
  v16 = v0[5];
  v17 = *(v12 + 32);
  v17(v0[21], v13, v11);
  sub_22FEDD998(v16, v15, type metadata accessor for KeyOptionsPolicy.Assertion);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v0 + 14;
    v17(v0[14], v19, v0[12]);
    sub_22FEDDA00(&qword_27DAF2018, MEMORY[0x277CEE010], MEMORY[0x277CEE018]);
    sub_22FFB1678();
    sub_22FFB1678();
    if (v0[2] != v0[3])
    {
      v21 = v0[21];
      v22 = v0[13];
      v50 = v0[14];
      v23 = v0[12];
      type metadata accessor for KeyOptionsPolicy.Error(0);
      sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error, &protocol conformance descriptor for KeyOptionsPolicy.Error);
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2020, &qword_22FFB52B0) + 48);
      v27 = *(v22 + 16);
      v27(v25, v21, v23);
      v27(v25 + v26, v50, v23);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v28 = *(v22 + 8);
      v28(v50, v23);
      v28(v21, v23);
      goto LABEL_8;
    }
  }

  else
  {
    v20 = v0 + 20;
    v17(v0[20], v19, v0[12]);
    sub_22FEDDA00(&qword_281491308, MEMORY[0x277CEE010], MEMORY[0x277CEE020]);
    if ((sub_22FFB1918() & 1) == 0)
    {
      v36 = v0[20];
      v37 = v0[21];
      v38 = v0[16];
      v39 = v0[17];
      v40 = v0[15];
      v41 = v0[12];
      v48 = v0[13];
      v49 = v36;
      v51 = v0[19];
      v53 = *(v48 + 16);
      v53();
      (v53)(v38, v36, v41);
      v42 = v37;
      v47 = v37;
      (v53)(v40, v37, v41);
      sub_22FFB1908();
      sub_22FFB18F8();
      v43 = *(v48 + 8);
      v43(v39, v41);
      type metadata accessor for KeyOptionsPolicy.Error(0);
      sub_22FEDDA00(&qword_27DAF2010, type metadata accessor for KeyOptionsPolicy.Error, &protocol conformance descriptor for KeyOptionsPolicy.Error);
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2028, &qword_22FFB52B8) + 48);
      (v53)(v45, v42, v41);
      (v53)(v45 + v46, v51, v41);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v43(v51, v41);
      v43(v49, v41);
      v43(v47, v41);
      goto LABEL_8;
    }
  }

  v52 = *(v0[13] + 8);
  v52(*v20, v0[12]);
  if (qword_2814901B0 != -1)
  {
    swift_once();
  }

  v29 = sub_22FFB12F8();
  __swift_project_value_buffer(v29, qword_2814913D0);
  v30 = sub_22FFB12D8();
  v31 = sub_22FFB1848();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22FE99000, v30, v31, "AttestationBundle passed KeyOptionsPolicy: attested key has expected flags set", v32, 2u);
    MEMORY[0x23190EFF0](v32, -1, -1);
  }

  v33 = v0[21];
  v34 = v0[12];

  v52(v33, v34);

  v14 = v0[1];
LABEL_18:

  return v14();
}

uint64_t sub_22FEDD910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDD998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEDDA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEDDA48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return KeyOptionsPolicy.evaluate(bundle:context:)(v4, a2);
}

uint64_t sub_22FEDDADC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FEDDF9C(v5, a3);
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    return sub_22FEDDF9C(v5, a3);
  }

LABEL_8:
  if (aks_attest_context_get_uint64())
  {
    v7 = 1;
  }

  else
  {
    sub_22FFB09F8();
    v7 = 0;
  }

  v8 = sub_22FFB0A08();
  return (*(*(v8 - 8) + 56))(a3, v7, 1, v8);
}

uint64_t sub_22FEDDC9C(uint64_t a1)
{
  result = type metadata accessor for KeyOptionsPolicy.Assertion(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for KeyOptionsPolicy.OptionsLoader(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FEDDD20(uint64_t a1)
{
  sub_22FEDDDB4(319, &qword_27DAF2040, " missing ");
  if (v1 <= 0x3F)
  {
    sub_22FEDDDB4(319, &qword_27DAF2048, " notEqual ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22FEDDDB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_22FFB0A08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22FEDDE44(uint64_t a1)
{
  sub_22FEDDE9C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22FEDDE9C(uint64_t a1)
{
  if (!qword_281491300)
  {
    sub_22FFB0A08();
    v1 = sub_22FFB1888();
    if (!v2)
    {
      atomic_store(v1, &qword_281491300);
    }
  }
}

void sub_22FEDDEF4(uint64_t a1)
{
  sub_22FEDDF54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22FEDDF54()
{
  if (!qword_281491310)
  {
    v0 = sub_22FFB0A08();
    if (!v1)
    {
      atomic_store(v0, &qword_281491310);
    }
  }
}

uint64_t sub_22FEDDF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFB0588();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_22FFB05B8();
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v7 = a1 - v6 + v5;
  sub_22FFB05A8();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (aks_attest_context_get_uint64())
  {
    v8 = 1;
  }

  else
  {
    sub_22FFB09F8();
    v8 = 0;
  }

  v9 = sub_22FFB0A08();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t LocalBootPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_22FFB13F8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_22FFB13B8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for Proto_LocalPolicy(0);
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEDE2B0, 0, 0);
}

uint64_t sub_22FEDE2B0()
{
  v64 = v0;
  v63 = *MEMORY[0x277D85DE8];
  AttestationPolicyContext.validatedAttestation.getter(&v59);
  v1 = v60;
  if (v60 >> 60 == 15)
  {
    sub_22FEDEA98();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
LABEL_3:

    v3 = v0[1];
    goto LABEL_27;
  }

  v4 = v59;
  v6 = v61;
  v5 = v62;
  v0[9] = 0;
  v0[8] = 0;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 8;
  *(v7 + 24) = v0 + 9;
  sub_22FED55F8(v6, v5, sub_22FED545C);

  if (v59 == 3)
  {
    v0[10] = 0;
    v0[11] = 0;
    v8 = swift_task_alloc();
    v8[2] = v0 + 10;
    v8[3] = v0 + 11;
    v8[4] = v4;
    v8[5] = v1;
    v8[6] = v6;
    v8[7] = v5;
    sub_22FED55F8(v6, v5, sub_22FEDEAEC);

    if ((~v61 & 0x3000000000000000) == 0)
    {
      sub_22FEDEA98();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
LABEL_23:
      sub_22FECB858(v4, v1, v6, v5);
      goto LABEL_3;
    }

    v55 = v4;
    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    v14 = v61 & 0xDFFFFFFFFFFFFFFFLL;
    v57 = v60;
    v58 = v61;
    v56 = v59;
    if ((v61 & 0x2000000000000000) != 0)
    {
      v15 = v60;
    }

    else
    {
      v15 = v59;
    }

    if ((v61 & 0x2000000000000000) == 0)
    {
      v14 = v60;
    }

    v50 = v14;
    v52 = v15;
    v13 = v0[12];
    v16 = *(v13 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    v48 = v16;
    sub_22FEDEB10(v16 + v17, v12);
    v18 = *(v11 + 48);
    v19 = v18(v12, 1, v10);
    v20 = v0[25];
    if (v19 == 1)
    {
      v22 = v0[21];
      v21 = v0[22];
      *v20 = xmmword_22FFB33B0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 1;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v23 = v18(v22, 1, v21);
      if (v23 != 1)
      {
        v23 = sub_22FEDEB80(v0[21]);
      }
    }

    else
    {
      v23 = sub_22FEDEC44(v0[21], v20);
    }

    sub_22FF1E7D4(v23);
    v25 = v24;
    v54 = v26;
    sub_22FEDEBE8(v0[25]);
    v4 = v55;
    if ((sub_22FECAAF4(v25, v54, v52, v50) & 1) == 0)
    {
      sub_22FEDEA98();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
      sub_22FEA55AC(v25, v54);
      sub_22FED5840(v56, v57, v58);
      goto LABEL_23;
    }

    v53 = v25;
    v27 = v0[22];
    v28 = v0[20];
    sub_22FEDEB10(v48 + v17, v28);
    v29 = v18(v28, 1, v27);
    v30 = v0[24];
    if (v29 == 1)
    {
      v31 = v0[22];
      v32 = v0[20];
      *v30 = xmmword_22FFB33B0;
      *(v30 + 16) = 0;
      *(v30 + 24) = 1;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v18(v32, 1, v31) != 1)
      {
        sub_22FEDEB80(v0[20]);
      }
    }

    else
    {
      sub_22FEDEC44(v0[20], v30);
    }

    sub_22FF1EBDC();
    v34 = v0[16];
    v44 = v0[19];
    v45 = v0[15];
    v46 = v35;
    v47 = v0[14];
    v51 = v36;
    sub_22FEDEBE8(v0[24]);
    swift_beginAccess();
    v37 = *(v48 + 32);
    v38 = *(v48 + 40);
    sub_22FEA5608(v37, v38);
    sub_22FED57E8();
    sub_22FFB1388();
    sub_22FEA5608(v37, v38);
    sub_22FED5478(v37, v38, v34);
    sub_22FEA55AC(v37, v38);
    sub_22FFB1368();
    sub_22FEA55AC(v37, v38);
    (*(v45 + 8))(v34, v47);
    v39 = sub_22FECA81C(v44, v46, v51);
    v40 = v0[18];
    v41 = v0[17];
    if ((v39 & 1) == 0)
    {
      v49 = v0[19];
      sub_22FEDEA98();
      swift_allocError();
      *v43 = 2;
      swift_willThrow();
      sub_22FEA55AC(v46, v51);
      sub_22FEA55AC(v53, v54);
      sub_22FECB858(v55, v1, v6, v5);
      sub_22FED5840(v56, v57, v58);
      (*(v40 + 8))(v49, v41);
      goto LABEL_3;
    }

    (*(v40 + 8))(v0[19], v0[17]);
    sub_22FEA55AC(v46, v51);
    sub_22FEA55AC(v53, v54);
    sub_22FED5840(v56, v57, v58);
  }

  sub_22FECB858(v4, v1, v6, v5);

  v3 = v0[1];
LABEL_27:

  return v3();
}

uint64_t sub_22FEDE974(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return LocalBootPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t LocalBootPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEDEA98()
{
  result = qword_27DAF2058;
  if (!qword_27DAF2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2058);
  }

  return result;
}

uint64_t sub_22FEDEB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEDEB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDEBE8(uint64_t a1)
{
  v2 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEDEC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FEDECAC()
{
  result = qword_27DAF2060;
  if (!qword_27DAF2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2060);
  }

  return result;
}

uint64_t static PolicyBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = 8 * a2;
  v39 = a5;
  v40 = a4;
  if (a2 == 1)
  {
    v8 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v11 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != a2)
      {
LABEL_9:
        v18 = a2 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    v8 = v10;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v23 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = v38;
  v26 = MEMORY[0x28223BE20](v23);
  v27 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v28 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v26 + 32);
    v30 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v29;
      }

      v34 = *v28++;
      v33 = v34;
      v35 = &v25[v32];
      v36 = *v6++;
      (*(*(v33 - 8) + 16))(&v25[v32], v36);
      *v30++ = v35;
      v29 += 4;
      --v31;
    }

    while (v31);
  }

  return PolicyBuilder.TuplePolicy.init(policies:)(v27, a2, v8, v39);
}

uint64_t static PolicyBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22FFB1888();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(v6 + 16))(&v10 - v7, a1, v5);
  return (*(v6 + 32))(a3, v8, v5);
}

uint64_t static PolicyBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t PolicyBuilder.TuplePolicy.init(policies:)@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v39 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PolicyBuilder.TuplePolicy(0, a2, a3, v24);
  v38 = &v36;
  v25 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v27 = &v36 - v26;
  if (a2)
  {
    v28 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v7 + 32);
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v29;
      }

      v33 = *v28++;
      v32 = v33;
      v34 = *v6++;
      (*(*(v32 - 8) + 32))(&v23[v31], v34);
      v29 += 4;
      --v30;
    }

    while (v30);
  }

  (*(v21 + 16))(v27, v23, v7);
  (*(v25 + 32))(v39, v27, v37);
  return (*(v21 + 8))(v23, v7);
}

uint64_t PolicyBuilder.OptionalPolicy.init(policy:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22FFB1888();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t static PolicyBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a2 - 8) + 16))(a6, a1, a2);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for PolicyBuilder.ConditionalPolicy(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static PolicyBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 16))(a6, a1);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for PolicyBuilder.ConditionalPolicy(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t PolicyBuilder.PredicatePolicy.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PolicyBuilder.TuplePolicy.policies.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v23 + 16))(v22, v3, v7);
  if (v6)
  {
    v25 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v7 + 32);
    v27 = v6;
    do
    {
      if (v6 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *v26;
      }

      v30 = *v25++;
      v29 = v30;
      v31 = *a2++;
      result = (*(*(v29 - 8) + 32))(v31, &v22[v28]);
      v26 += 4;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t PolicyBuilder.TuplePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(a3 + 16);
  v4[6] = v6;
  if (v6 == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = 16;
  }

  else
  {
    v8 = (8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = swift_task_alloc();
    if (v6)
    {
      v10 = 0;
      v11 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (v9 - v11 < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = (v9 + 16);
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = (v9 + 8 * v10);
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v4[7] = v8;
  v4[8] = TupleTypeMetadata;
  v4[9] = *(TupleTypeMetadata - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEDFA24, 0, 0);
}

uint64_t sub_22FEDFA24()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[11] = v2;
  if (v1)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v6 = v0[6];
      if (v6 == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v0[8] + v4);
      }

      v2[v3++] = v0[10] + v5;
      v4 += 16;
    }

    while (v3 != v6);
    v7 = v0[4];
    PolicyBuilder.TuplePolicy.policies.getter(v7, v2);
    v8 = *(v7 + 24);
    v0[12] = v8;
    v9 = *(v7 + 32);
    v8 &= ~1uLL;
    v0[13] = v9;
    v0[14] = 0;
    v10 = *v8;
    v0[15] = *v8;
    v11 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    v12 = *(v10 - 8);
    v0[16] = v12;
    v0[17] = swift_task_alloc();
    (*(v12 + 16))();
    v18 = (*(v11 + 8) + **(v11 + 8));
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_22FEDFCE0;
    v15 = v0[2];
    v14 = v0[3];

    return v18(v15, v14, v10, v11);
  }

  else
  {
    PolicyBuilder.TuplePolicy.policies.getter(v0[4], v2);
    (*(v0[9] + 8))(v0[10], v0[8]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22FEDFCE0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v3 = sub_22FEE00AC;
  }

  else
  {

    v3 = sub_22FEDFE54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEDFE54()
{
  v1 = v0[14] + 1;
  if (v1 == v0[6])
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[14] = v1;
    v4 = v0[13] & 0xFFFFFFFFFFFFFFFELL;
    v5 = *((v0[12] & 0xFFFFFFFFFFFFFFFELL) + 8 * v1);
    v0[15] = v5;
    v6 = *(v4 + 8 * v1);
    v7 = *(v5 - 8);
    v0[16] = v7;
    v0[17] = swift_task_alloc();
    (*(v7 + 16))();
    v11 = (*(v6 + 8) + **(v6 + 8));
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_22FEDFCE0;
    v10 = v0[2];
    v9 = v0[3];

    return v11(v10, v9, v5, v6);
  }
}

uint64_t sub_22FEE00AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEE0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA538;

  return PolicyBuilder.TuplePolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t sub_22FEE0234()
{
  if (**(v0 + 16) != 1)
  {
    sub_22FEE02E0();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22FEE02E0()
{
  result = qword_27DAF2070;
  if (!qword_27DAF2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2070);
  }

  return result;
}

uint64_t PolicyBuilder.PredicatePolicy.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FEE03E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  if ((sub_22FFB0978() & 1) == 0)
  {
    sub_22FEE02E0();
    swift_allocError();
    v3 = v2;
    *v2 = sub_22FFB0968();
    v3[1] = v4;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PolicyBuilder.OptionalPolicy.policy.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_22FFB1888();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PolicyBuilder.OptionalPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[6] = v5;
  v6 = sub_22FFB1888();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE0690, 0, 0);
}

uint64_t sub_22FEE0690()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_22FFB1888();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[9], v0[6]);
    v9 = *(v8 + 24);
    v14 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_22FEE08B0;
    v11 = v0[6];
    v13 = v0[2];
    v12 = v0[3];

    return v14(v13, v12, v11, v9);
  }
}

uint64_t sub_22FEE08B0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22FEE0A50;
  }

  else
  {
    v2 = sub_22FEE09C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEE09C4()
{
  (*(v0[10] + 8))(v0[11], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE0A50()
{
  (*(v0[10] + 8))(v0[11], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE0ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA538;

  return PolicyBuilder.OptionalPolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t PolicyBuilder.ConditionalPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(a3 + 24);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = *(a3 + 16);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = *(a3 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE0CF4, 0, 0);
}

uint64_t sub_22FEE0CF4()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[13], v0[6]);
    v3 = *(v6 + 40);
    v11 = (*(v3 + 8) + **(v3 + 8));
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_22FEE1150;
    v5 = v0[6];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return sub_22FFB1AA8();
    }

    v2 = v0[4];
    (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
    v3 = *(v2 + 32);
    v11 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_22FEE0FA0;
    v5 = v0[9];
  }

  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, v5, v3);
}

uint64_t sub_22FEE0FA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22FEE1304;
  }

  else
  {
    v2 = sub_22FEE10B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEE10B4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE1150()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22FEE13A0;
  }

  else
  {
    v2 = sub_22FEE1264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEE1264()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE1304()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE13A0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FEE1440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FEAA0D4;

  return PolicyBuilder.ConditionalPolicy.evaluate(bundle:context:)(a1, a2, a3);
}

uint64_t _s16CloudAttestation13PolicyBuilderV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_22FFB1BC8();
}

uint64_t sub_22FEE157C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[7] = 0;
    v20 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyBuilder.BooleanPolicy(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t type metadata accessor for PolicyBuilder.PredicatePolicy(uint64_t a1)
{
  result = qword_27DAF2078;
  if (!qword_27DAF2078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22FEE181C(uint64_t a1)
{
  sub_22FEE1888();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22FEE1888()
{
  if (!qword_27DAF2088)
  {
    v0 = sub_22FFB0988();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAF2088);
    }
  }
}

uint64_t sub_22FEE18E0(uint64_t a1)
{
  result = sub_22FFB1888();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEE1968(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FEE19E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_22FEE1B0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FEE1CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE1D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE1D78(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22FEE1D90(void *result, int a2)
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

uint64_t sub_22FEE1DD4()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A38);
  __swift_project_value_buffer(v0, qword_27DB05A38);
  return sub_22FFB12E8();
}

uint64_t RoutingHintPolicy.init(_:required:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = a2;
  *(a3 + 10) = 0;
  return result;
}

uint64_t RoutingHintPolicy.init(required:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = result;
  *(a2 + 10) = 0;
  return result;
}

uint64_t RoutingHintPolicy.init(_:required:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 9) = a2;
  *(a4 + 10) = a3;
  return result;
}

uint64_t RoutingHintPolicy.init(required:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = result;
  *(a3 + 10) = a2;
  return result;
}

uint64_t RoutingHintPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 80) = a2;
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v2 + 8);
  *(v3 + 97) = *(v2 + 9);
  *(v3 + 98) = *(v2 + 10);

  return MEMORY[0x2822009F8](sub_22FEE1F3C, 0, 0);
}

uint64_t sub_22FEE1F3C()
{
  v34 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 96);
    goto LABEL_5;
  }

  v33 = **(v0 + 80);
  AttestationPolicyContext.validatedDarwinInit.getter(&v31);
  v1 = v31;
  if (v31)
  {
    v2 = v32;
LABEL_5:
    v31 = v1;
    v32 = v2;
    v3 = DarwinInit.secureConfigRoutingHint.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

LABEL_7:
      if (qword_28148FD58 != -1)
      {
        swift_once();
      }

      v7 = xmmword_28148FD60;
      v8 = qword_28148FD70;
      v9 = unk_28148FD78;
      *(v0 + 40) = MEMORY[0x277D837D0];
      *(v0 + 16) = v5;
      *(v0 + 24) = v6;
      sub_22FED6328(v0 + 16, v0 + 48);

      sub_22FECBD14(v0 + 48, v7, *(&v7 + 1), v8, v9);
      sub_22FED62C0(v0 + 16);
      goto LABEL_40;
    }

    if (*(v0 + 98))
    {
      if (qword_27DAF1290 != -1)
      {
        swift_once();
      }

      v10 = sub_22FFB12F8();
      __swift_project_value_buffer(v10, qword_27DB05A38);
      v11 = sub_22FFB12D8();
      v12 = sub_22FFB1818();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22FE99000, v11, v12, "Reading fallback routing hint from Preferences", v13, 2u);
        MEMORY[0x23190EFF0](v13, -1, -1);
      }

      v31 = v1;
      v32 = v2;
      v5 = DarwinInit.cfPrefsRoutingHint.getter();
      v6 = v14;

      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (*(v0 + 97) == 1)
    {
      if (qword_27DAF1290 != -1)
      {
        swift_once();
      }

      v15 = sub_22FFB12F8();
      __swift_project_value_buffer(v15, qword_27DB05A38);
      v16 = sub_22FFB12D8();
      v17 = sub_22FFB1838();
      v18 = 1;
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_29;
      }

      v19 = "Required routing hint missing from darwin-init";
LABEL_28:
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22FE99000, v16, v17, v19, v21, 2u);
      MEMORY[0x23190EFF0](v21, -1, -1);
LABEL_29:

      sub_22FEE26E4();
      swift_allocError();
      *v22 = v18;
      swift_willThrow();
      v23 = *(v0 + 8);
      goto LABEL_41;
    }

    if (qword_27DAF1290 != -1)
    {
      swift_once();
    }

    v24 = sub_22FFB12F8();
    __swift_project_value_buffer(v24, qword_27DB05A38);
    v25 = sub_22FFB12D8();
    v26 = sub_22FFB1838();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Optional routing hint missing from darwin-init";
LABEL_38:
      _os_log_impl(&dword_22FE99000, v25, v26, v28, v27, 2u);
      MEMORY[0x23190EFF0](v27, -1, -1);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (*(v0 + 97) == 1)
  {
    if (qword_27DAF1290 != -1)
    {
      swift_once();
    }

    v20 = sub_22FFB12F8();
    __swift_project_value_buffer(v20, qword_27DB05A38);
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1838();
    v18 = 0;
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_29;
    }

    v19 = "Required validated darwin-init unavailable";
    goto LABEL_28;
  }

  if (qword_27DAF1290 != -1)
  {
    swift_once();
  }

  v29 = sub_22FFB12F8();
  __swift_project_value_buffer(v29, qword_27DB05A38);
  v25 = sub_22FFB12D8();
  v26 = sub_22FFB1838();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Optional validated darwin-init unavailable";
    goto LABEL_38;
  }

LABEL_39:

LABEL_40:
  v23 = *(v0 + 8);
LABEL_41:

  return v23();
}

uint64_t sub_22FEE2434(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FEAA0D4;

  return RoutingHintPolicy.evaluate(bundle:context:)(v4, a2);
}

void sub_22FEE24C8()
{
  *&xmmword_28148FD60 = &type metadata for RoutingHintPolicy;
  *(&xmmword_28148FD60 + 1) = &protocol witness table for RoutingHintPolicy;
  qword_28148FD70 = 0xD000000000000014;
  unk_28148FD78 = 0x800000022FFC9F10;
}

uint64_t static RoutingHintPolicy.validatedRoutingHintKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_28148FD70;
  v2 = unk_28148FD78;
  *a1 = xmmword_28148FD60;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_22FEE2580()
{
  v1 = *v0;
  if (qword_28148FD58 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_22FFA62AC(xmmword_28148FD60, *(&xmmword_28148FD60 + 1), qword_28148FD70, unk_28148FD78);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RoutingHintPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEE26E4()
{
  result = qword_27DAF2090;
  if (!qword_27DAF2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2090);
  }

  return result;
}

unint64_t sub_22FEE273C()
{
  result = qword_27DAF2098;
  if (!qword_27DAF2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2098);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_22FEE27A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 11))
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

uint64_t sub_22FEE2800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE2878(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE28C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE2920(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t SecureConfigPolicy.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SEP.SealedHash(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_22FEE29BC()
{
  v0 = sub_22FFB0958();
  __swift_allocate_value_buffer(v0, qword_28148FBD8);
  v1 = __swift_project_value_buffer(v0, qword_28148FBD8);
  if (qword_28148FA40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814913A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SecureConfigPolicy.slot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_28148FBD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FEE2B2C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913B8);
  __swift_project_value_buffer(v0, qword_2814913B8);
  return sub_22FFB12E8();
}

uint64_t SecureConfigPolicy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FED8260(a1, a2, type metadata accessor for SEP.SealedHash);
  v3 = type metadata accessor for SEP.SealedHash(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t SecureConfigPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for SEP.SealedHash.Value(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for SEP.SealedHash(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for SecureConfigPolicy.SealedHashLoader(0);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE2DD8, 0, 0);
}

uint64_t sub_22FEE2DD8()
{
  v59 = v0;
  v58 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_22FEE3930(*(v0 + 32), v1, type metadata accessor for SecureConfigPolicy.SealedHashLoader);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = AttestationPolicyContext.validatedAttestation.getter(&v54);
    v6 = v55;
    if (v55 >> 60 == 15)
    {
      (*(*(v0 + 64) + 56))(*(v0 + 96), 1, 1, *(v0 + 56), v5);
    }

    else
    {
      v10 = (v0 + 112);
      v53 = v54;
      v11 = v56;
      v12 = v57;
      if (qword_28148FBD0 != -1)
      {
        swift_once();
      }

      v13 = sub_22FFB0958();
      v14 = __swift_project_value_buffer(v13, qword_28148FBD8);
      *v10 = 0u;
      *(v0 + 128) = 0u;
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
      *(v0 + 190) = 0;
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = v10;
      sub_22FED55F8(v11, v12, sub_22FED86EC);
      sub_22FECB858(v53, v6, v11, v12);
    }
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_22FED8260(*(v0 + 80), v7, type metadata accessor for SEP.SealedHash);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  sub_22FEE374C(*(v0 + 96), *(v0 + 104));
  if (sub_22FFA7ED0())
  {
  }

  else if (v4(*(v0 + 104), 1, *(v0 + 56)) == 1)
  {
    if (qword_28148FBC8 != -1)
    {
      swift_once();
    }

    v16 = sub_22FFB12F8();
    __swift_project_value_buffer(v16, qword_2814913B8);
    v17 = sub_22FFB12D8();
    v18 = sub_22FFB1838();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FE99000, v17, v18, "Device has no secure-config loaded", v19, 2u);
      MEMORY[0x23190EFF0](v19, -1, -1);
    }

    goto LABEL_36;
  }

  v20 = sub_22FFA7ED0();
  if (!v20)
  {
    type metadata accessor for SecureConfigPolicy.Error(0);
    sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error, &protocol conformance descriptor for SecureConfigPolicy.Error);
    swift_allocError();
    goto LABEL_20;
  }

  v21 = v20;
  v22 = *(v0 + 88);
  v23 = *(v0 + 56);
  sub_22FED80E0(*(v0 + 104), v22);
  v24 = v4(v22, 1, v23);
  v25 = *(v0 + 88);
  if (v24 == 1)
  {

    sub_22FEE37BC(v25);
    type metadata accessor for SecureConfigPolicy.Error(0);
    sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error, &protocol conformance descriptor for SecureConfigPolicy.Error);
    swift_allocError();
LABEL_20:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_36;
  }

  v26 = *(v0 + 72);
  sub_22FED8260(*(v0 + 88), v26, type metadata accessor for SEP.SealedHash);
  if ((*v26 & 4) != 0)
  {
    if (qword_28148FBC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22FFB12F8();
    __swift_project_value_buffer(v27, qword_2814913B8);
    v28 = sub_22FFB12D8();
    v29 = sub_22FFB1838();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22FE99000, v28, v29, "SecureConfig sealed hash is unexpectedly locked", v30, 2u);
      MEMORY[0x23190EFF0](v30, -1, -1);
    }
  }

  v31 = sub_22FFA874C();
  if (!v31)
  {
    v33 = sub_22FFB13F8();
    v32 = sub_22FEE38E8(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v31 = v33;
  }

  sub_22FFA8BA4(v31, v32, v21, *(v0 + 40));
  v34 = *(v0 + 72);
  v35 = *(v0 + 48);
  v36 = *(v0 + 56);
  v37 = *(v0 + 40);

  sub_22FED8260(v37, v35, type metadata accessor for SEP.SealedHash.Value);
  v38 = *(v36 + 20);
  if (_s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(v35, v34 + v38))
  {
    if (qword_28148FBC8 != -1)
    {
      swift_once();
    }

    v39 = sub_22FFB12F8();
    __swift_project_value_buffer(v39, qword_2814913B8);
    v40 = sub_22FFB12D8();
    v41 = sub_22FFB1848();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 72);
    v44 = *(v0 + 48);
    if (v42)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22FE99000, v40, v41, "AttestationBundle passed SecureConfigPolicy: reported secure configs match SEP attestation", v45, 2u);
      MEMORY[0x23190EFF0](v45, -1, -1);
    }

    sub_22FED82C8(v44, type metadata accessor for SEP.SealedHash.Value);
    sub_22FED82C8(v43, type metadata accessor for SEP.SealedHash);
  }

  else
  {
    v46 = *(v0 + 72);
    v47 = *(v0 + 48);
    type metadata accessor for SecureConfigPolicy.Error(0);
    sub_22FEE38E8(&qword_27DAF20A0, type metadata accessor for SecureConfigPolicy.Error, &protocol conformance descriptor for SecureConfigPolicy.Error);
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F20, &qword_22FFB5830) + 48);
    sub_22FEE3930(v47, v49, type metadata accessor for SEP.SealedHash.Value);
    sub_22FEE3930(v34 + v38, v49 + v50, type metadata accessor for SEP.SealedHash.Value);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FED82C8(v47, type metadata accessor for SEP.SealedHash.Value);
    sub_22FED82C8(v46, type metadata accessor for SEP.SealedHash);
  }

LABEL_36:
  sub_22FEE37BC(*(v0 + 104));

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_22FEE374C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEE37BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEE3824(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SecureConfigPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FEE38E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEE3930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEE39E0(uint64_t a1)
{
  result = type metadata accessor for SecureConfigPolicy.SealedHashLoader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FEE3A4C(uint64_t a1)
{
  sub_22FEE3AD4();
  if (v1 <= 0x3F)
  {
    sub_22FED856C(319);
    if (v2 <= 0x3F)
    {
      sub_22FED85D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22FEE3AD4()
{
  if (!qword_27DAF20B8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF20B8);
    }
  }
}

uint64_t sub_22FEE3B5C(uint64_t a1)
{
  v1 = type metadata accessor for SEP.SealedHash(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void SEPAttestationPolicy.init(insecure:)(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v3 = sub_22FFB12F8();
    __swift_project_value_buffer(v3, qword_28148FB00);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FE99000, v4, v5, "Using Insecure SEPAttestationPolicy", v6, 2u);
      MEMORY[0x23190EFF0](v6, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v7;
}

uint64_t SEPAttestationPolicy.verifies(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  *a3 = v7;
  sub_22FECB480(v7);
  sub_22FE9AC3C(v8, v9);

  result = sub_22FEA5C80(v8, v9);
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

double AttestationPolicyContext.validatedAttestation.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16) || (v4 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v5 & 1) == 0))
  {
    v7 = 0u;
    v8 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v4, &v7);

  if (!*(&v8 + 1))
  {
LABEL_7:
    sub_22FEAEA34(&v7, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    *a1 = xmmword_22FFB2D00;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t SEPAttestationPolicy.body.getter()
{
  v1 = *(v0 + 8);
  sub_22FE9AC3C(v1, *(v0 + 16));
  return v1;
}

uint64_t SEPAttestationPolicy.body.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA5C80(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_22FEE3E9C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_28148FB00);
  __swift_project_value_buffer(v0, qword_28148FB00);
  return sub_22FFB12E8();
}

uint64_t static SEPAttestationPolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_28148FB00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void SEPAttestationPolicy.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t SEPAttestationPolicy.init(signer:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t SEPAttestationPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  v4 = *v2;
  *(v3 + 328) = *v2;
  *(v3 + 344) = *(v2 + 2);
  sub_22FECB480(v4);

  return MEMORY[0x2822009F8](sub_22FEE4090, 0, 0);
}

uint64_t sub_22FEE4090()
{
  v111 = v0;
  v110 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  if (!v1)
  {
    v100 = **(v0 + 320);
    AttestationPolicyContext.validatedCert.getter(&v105);
    v6 = v105;
    if (!v105)
    {
      sub_22FEE57D8();
      swift_allocError();
      *v57 = 1;
      swift_willThrow();
LABEL_55:
      v69 = *(v0 + 8);
      goto LABEL_56;
    }

    v8 = v108;
    v7 = v109;
    v10 = v106;
    v9 = v107;
    v11 = *(&v105 + 1);
    v12 = *(&v105 + 1);
    sub_22FED1EDC(v6, v11, v10, v9, v8, v7);
    v13 = v12;
    v1 = *(v0 + 328);
LABEL_7:
    *(v0 + 400) = v13;
    v14 = *(v0 + 312);
    v15 = *(v14 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    swift_beginAccess();
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    sub_22FECB480(v1);
    sub_22FEA5608(v16, v17);
    SEP.Attestation.init(from:signer:)(v16, v17, v13, &v105);
    v18 = *(&v105 + 1);
    v19 = v105;
    *(v0 + 408) = v105;
    *(v0 + 416) = v18;
    v96 = v18;
    v21 = v106;
    v20 = v107;
    *(v0 + 424) = v106;
    *(v0 + 432) = v20;
    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v22 = sub_22FFB12F8();
    __swift_project_value_buffer(v22, qword_28148FB00);
    v23 = sub_22FFB12D8();
    v24 = sub_22FFB1848();
    v98 = v19;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22FE99000, v23, v24, "AttestationBundle passed SEPAttestationPolicy: SEP attestation signed by trusted authority", v25, 2u);
      v26 = v25;
      v19 = v98;
      MEMORY[0x23190EFF0](v26, -1, -1);
    }

    v27 = *(v0 + 320);

    v100 = *v27;
    AttestationPolicyContext.validatedCert.getter(&v105);
    v28 = v105;
    if (v105)
    {
      v29 = v21;
      v30 = v20;
      v31 = v108;
      v32 = v109;
      v34 = v106;
      v33 = v107;
      v35 = *(&v105 + 1);

      v36 = v35;
      v37 = v31;
      sub_22FED1EDC(v28, v36, v34, v33, v31, v32);
      if (v32)
      {
        *(v0 + 280) = 0;
        *(v0 + 288) = 0;
        v38 = swift_task_alloc();
        *(v38 + 16) = v0 + 280;
        *(v38 + 24) = v0 + 288;

        v20 = v30;
        sub_22FED55F8(v29, v30, sub_22FEB341C);

        if (v102 == 2)
        {

          v21 = v29;
          goto LABEL_15;
        }

        LODWORD(v105) = v100;
        *(&v105 + 1) = v101;
        LOWORD(v106) = v102 & 0x101;
        BYTE2(v106) = v103;
        HIDWORD(v106) = v104;
        if (v37 == SEP.Identity.string.getter() && v32 == v60)
        {

          swift_bridgeObjectRelease_n();
          v19 = v98;
          v21 = v29;
        }

        else
        {
          v65 = sub_22FFB1BC8();

          v21 = v29;
          if ((v65 & 1) == 0)
          {
LABEL_15:

            v39 = v96;
            sub_22FEA5608(v98, v96);
            sub_22FEA5608(v21, v20);
            v40 = sub_22FFB12D8();
            v41 = sub_22FFB1838();

            sub_22FEA55AC(v98, v96);
            sub_22FEA55AC(v21, v20);
            if (os_log_type_enabled(v40, v41))
            {
              v95 = v41;
              v42 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v99 = v94;
              *v42 = 136315394;
              v43 = sub_22FF9E448(v37, v32, &v99);

              *(v42 + 4) = v43;
              *(v42 + 12) = 2080;
              *(v0 + 296) = 0;
              *(v0 + 304) = 0;
              v44 = swift_task_alloc();
              *(v44 + 16) = v0 + 296;
              *(v44 + 24) = v0 + 304;
              sub_22FED55F8(v21, v20, sub_22FEBFA54);

              if (v102 == 2)
              {
                v45 = 0xE500000000000000;
                v46 = 0x3E6C696E3CLL;
              }

              else
              {
                LODWORD(v105) = v100;
                *(&v105 + 1) = v101;
                LOWORD(v106) = v102 & 0x101;
                BYTE2(v106) = v103;
                HIDWORD(v106) = v104;
                v46 = SEP.Identity.string.getter();
                v45 = v73;
              }

              v74 = sub_22FF9E448(v46, v45, &v99);

              *(v42 + 14) = v74;
              _os_log_impl(&dword_22FE99000, v40, v95, "Certificate DeviceIdentity %s != %s", v42, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23190EFF0](v94, -1, -1);
              MEMORY[0x23190EFF0](v42, -1, -1);

              v39 = v96;
            }

            else
            {
            }

            sub_22FEE57D8();
            v75 = swift_allocError();
            *v76 = 2;
            swift_willThrow();
            sub_22FEA55AC(v98, v39);
            sub_22FEA55AC(v21, v20);
            *(v0 + 272) = v75;
            v77 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
            if (swift_dynamicCast() && *(v0 + 456) == 3)
            {

              if (qword_28148FAF8 != -1)
              {
                swift_once();
              }

              v78 = sub_22FFB12F8();
              __swift_project_value_buffer(v78, qword_28148FB00);
              v79 = sub_22FFB12D8();
              v80 = sub_22FFB1838();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                *v81 = 0;
                _os_log_impl(&dword_22FE99000, v79, v80, "SEP Attestation signature failed verification", v81, 2u);
                MEMORY[0x23190EFF0](v81, -1, -1);
              }

              v82 = *(v0 + 400);

              sub_22FEE57D8();
              swift_allocError();
              *v83 = 0;
              swift_willThrow();
            }

            else
            {

              if (qword_28148FAF8 != -1)
              {
                swift_once();
              }

              v84 = sub_22FFB12F8();
              __swift_project_value_buffer(v84, qword_28148FB00);
              v85 = v75;
              v86 = sub_22FFB12D8();
              v87 = sub_22FFB1838();

              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                *v88 = 138543362;
                v90 = v75;
                v91 = _swift_stdlib_bridgeErrorToNSError();
                *(v88 + 4) = v91;
                *v89 = v91;
                _os_log_impl(&dword_22FE99000, v86, v87, "SEP Attestation verification failed with unknown reason: %{public}@", v88, 0xCu);
                sub_22FEAEA34(v89, &qword_27DAF1680, &unk_22FFB4B10);
                MEMORY[0x23190EFF0](v89, -1, -1);
                MEMORY[0x23190EFF0](v88, -1, -1);
              }

              v92 = *(v0 + 400);

              sub_22FEE57D8();
              swift_allocError();
              *v93 = v75;
              swift_willThrow();
            }

            goto LABEL_55;
          }

          v19 = v98;
        }
      }

      else
      {
        v19 = v98;
        v20 = v30;
        v21 = v29;
      }
    }

    v66 = *(v0 + 336);
    *(v0 + 184) = &type metadata for SEP.Attestation;
    v67 = swift_allocObject();
    *(v0 + 160) = v67;
    v67[2] = v19;
    v67[3] = v96;
    v67[4] = v21;
    v67[5] = v20;
    sub_22FED6328(v0 + 160, v0 + 192);
    sub_22FEA5608(v19, v96);
    sub_22FEA5608(v21, v20);
    sub_22FECBD14(v0 + 192, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50);
    sub_22FEAEA34(v0 + 160, &qword_27DAF1A78, &unk_22FFB3A50);
    if (v66)
    {
      v68 = *(v0 + 336);
      *&v105 = v19;
      *(&v105 + 1) = v96;
      v106 = v21;
      v107 = v20;

      v68(&v105);
      v61 = *(v0 + 80);
      v62 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v61);
      v97 = (*(v62 + 8) + **(v62 + 8));
      v63 = swift_task_alloc();
      *(v0 + 440) = v63;
      *v63 = v0;
      v64 = sub_22FEE50E4;
      goto LABEL_38;
    }

    sub_22FEA55AC(v19, v96);
    v58 = v21;
    v59 = v20;
    goto LABEL_37;
  }

  if (v1 != 1)
  {
    v13 = *(v0 + 328);
    goto LABEL_7;
  }

  v2 = *(v0 + 312);
  v3 = *(v2 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  sub_22FEA5608(v5, v4);
  SEP.Attestation.init(from:)(v5, v4, &v105);
  v47 = v105;
  *(v0 + 352) = v105;
  v48 = v106;
  v49 = v107;
  *(v0 + 368) = v106;
  *(v0 + 376) = v49;
  *(v0 + 120) = &type metadata for SEP.Attestation;
  v50 = swift_allocObject();
  *(v0 + 96) = v50;
  *(v50 + 16) = v47;
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  sub_22FED6328(v0 + 96, v0 + 128);
  sub_22FEA5608(v47, *(&v47 + 1));
  sub_22FEA5608(v48, v49);
  sub_22FECBD14(v0 + 128, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50);
  sub_22FEAEA34(v0 + 96, &qword_27DAF1A78, &unk_22FFB3A50);
  if (qword_28148FAF8 != -1)
  {
    swift_once();
  }

  v51 = sub_22FFB12F8();
  __swift_project_value_buffer(v51, qword_28148FB00);
  v52 = sub_22FFB12D8();
  v53 = sub_22FFB1848();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22FE99000, v52, v53, "AttestationBundle passed SEPAttestationPolicy: SEP Attestation has valid structure, but signature was not checked", v54, 2u);
    MEMORY[0x23190EFF0](v54, -1, -1);
  }

  v55 = *(v0 + 336);

  if (v55)
  {
    v56 = *(v0 + 336);
    v105 = v47;
    v106 = v48;
    v107 = v49;

    v56(&v105);
    v61 = *(v0 + 40);
    v62 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v61);
    v97 = (*(v62 + 8) + **(v62 + 8));
    v63 = swift_task_alloc();
    *(v0 + 384) = v63;
    *v63 = v0;
    v64 = sub_22FEE4EDC;
LABEL_38:
    v63[1] = v64;
    v71 = *(v0 + 312);
    v70 = *(v0 + 320);

    return v97(v71, v70, v61, v62);
  }

  sub_22FEA55AC(v47, *(&v47 + 1));
  v58 = v48;
  v59 = v49;
LABEL_37:
  sub_22FEA55AC(v58, v59);
  v69 = *(v0 + 8);
LABEL_56:

  return v69();
}

uint64_t sub_22FEE4EDC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_22FEE5304;
  }

  else
  {
    v2 = sub_22FEE501C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEE501C()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v3 = v0[43];
  sub_22FEA55AC(v0[44], v0[45]);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22FEE50E4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_22FEE53CC;
  }

  else
  {
    v2 = sub_22FEE5224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEE5224()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);

  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v6, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FEE5304()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v3 = v0[43];
  sub_22FEA55AC(v0[44], v0[45]);
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22FEE53CC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  sub_22FEA55AC(*(v0 + 408), *(v0 + 416));
  sub_22FEA55AC(v1, v2);
  sub_22FEA5C80(v4, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v5 = *(v0 + 448);
  *(v0 + 272) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast() && *(v0 + 456) == 3)
  {

    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v7 = sub_22FFB12F8();
    __swift_project_value_buffer(v7, qword_28148FB00);
    v8 = sub_22FFB12D8();
    v9 = sub_22FFB1838();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FE99000, v8, v9, "SEP Attestation signature failed verification", v10, 2u);
      MEMORY[0x23190EFF0](v10, -1, -1);
    }

    v11 = *(v0 + 400);

    sub_22FEE57D8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else
  {

    if (qword_28148FAF8 != -1)
    {
      swift_once();
    }

    v13 = sub_22FFB12F8();
    __swift_project_value_buffer(v13, qword_28148FB00);
    v14 = v5;
    v15 = sub_22FFB12D8();
    v16 = sub_22FFB1838();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = v5;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22FE99000, v15, v16, "SEP Attestation verification failed with unknown reason: %{public}@", v17, 0xCu);
      sub_22FEAEA34(v18, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v18, -1, -1);
      MEMORY[0x23190EFF0](v17, -1, -1);
    }

    v21 = *(v0 + 400);

    sub_22FEE57D8();
    swift_allocError();
    *v22 = v5;
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22FEE5734(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SEPAttestationPolicy.evaluate(bundle:context:)(a1, a2);
}

unint64_t sub_22FEE57D8()
{
  result = qword_27DAF20C0;
  if (!qword_27DAF20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20C0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FEE5840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22FEE589C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FEE5900(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE595C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22FEE59BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEE5A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22FEE5A90()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491430);
  __swift_project_value_buffer(v0, qword_281491430);
  return sub_22FFB12E8();
}

uint64_t SEPImagePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return MEMORY[0x2822009F8](sub_22FEE5BA4, 0, 0);
}

uint64_t sub_22FEE5BA4()
{
  v77 = v0;
  v76 = *MEMORY[0x277D85DE8];
  AttestationPolicyContext.validatedAttestation.getter(&v72);
  v1 = v73;
  if (v73 >> 60 == 15)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
LABEL_17:
    v22 = *(v0 + 8);
    goto LABEL_18;
  }

  v3 = (v0 + 16);
  v4 = v72;
  v5 = v74;
  v6 = v75;
  *(v0 + 16) = 0;
  *(v0 + 56) = 0;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 16;
  *(v7 + 24) = v0 + 56;
  sub_22FED55F8(v5, v6, sub_22FED545C);
  v70 = 0;

  v71 = v4;
  if (v72 == 3)
  {
    v8 = *(v0 + 112);
    v9 = (*(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
    swift_beginAccess();
    v10 = (v9 + 1);
  }

  else
  {
    v11 = *(v0 + 112);
    v12 = *(v11 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v9 = (v12 + 32);
    swift_beginAccess();
    v10 = (v12 + 40);
  }

  v13 = *v10;
  v14 = *v9;
  v15 = *v10 >> 62;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
LABEL_13:
    sub_22FEA5608(v14, v13);
    if (v16 != v17)
    {
      goto LABEL_21;
    }

LABEL_14:
    sub_22FEE63E8();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    sub_22FEA55AC(v14, v13);
    v19 = v71;
LABEL_15:
    v20 = v1;
    v21 = v5;
LABEL_16:
    sub_22FECB858(v19, v20, v21, v6);
    goto LABEL_17;
  }

  if (v15)
  {
    v16 = v14;
    v17 = v14 >> 32;
    goto LABEL_13;
  }

  if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v69 = v5;
  v24 = (v0 + 128);
  v25 = MEMORY[0x277CC9318];
  v26 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v26;
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  v27 = __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
  v28 = *v27;
  v29 = v27[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v30)
    {
      *(v0 + 128) = v28;
      *(v0 + 136) = v29;
      *(v0 + 138) = BYTE2(v29);
      *(v0 + 139) = BYTE3(v29);
      *(v0 + 140) = BYTE4(v29);
      *(v0 + 141) = BYTE5(v29);
      sub_22FEA5608(v14, v13);
      v31 = (v0 + 128);
      v32 = v24 + BYTE6(v29);
LABEL_51:
      sub_22FF9E9E4(v31, v32, &v72);
      goto LABEL_36;
    }

    v68 = v6;
    v6 = v28;
    v47 = v28 >> 32;
    v48 = v47 - v6;
    if (v47 >= v6)
    {
      sub_22FEA5608(v14, v13);
      v7 = sub_22FFB0588();
      if (!v7)
      {
LABEL_43:
        v6 = v68;
        v50 = sub_22FFB05A8();
        if (v50 >= v48)
        {
          v51 = v48;
        }

        else
        {
          v51 = v50;
        }

        v52 = (v51 + v7);
        if (v7)
        {
          v32 = v52;
        }

        else
        {
          v32 = 0;
        }

        v31 = v7;
        goto LABEL_51;
      }

      v49 = sub_22FFB05B8();
      if (!__OFSUB__(v6, v49))
      {
        v7 += v6 - v49;
        goto LABEL_43;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_67;
  }

  if (v30 != 2)
  {
    *(v0 + 134) = 0;
    *v24 = 0;
    sub_22FEA5608(v14, v13);
    v31 = (v0 + 128);
    v32 = (v0 + 128);
    goto LABEL_51;
  }

  v68 = v6;
  v6 = *(v28 + 16);
  v33 = *(v28 + 24);
  sub_22FEA5608(v14, v13);
  v7 = sub_22FFB0588();
  if (v7)
  {
    v34 = sub_22FFB05B8();
    if (__OFSUB__(v6, v34))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v7 += v6 - v34;
  }

  v35 = __OFSUB__(v33, v6);
  v36 = v33 - v6;
  if (v35)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v37 = sub_22FFB05A8();
  if (v37 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = (v38 + v7);
  if (v7)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  sub_22FF9E9E4(v7, v40, &v72);
  v6 = v68;
LABEL_36:
  v7 = v72;
  v41 = v73;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v72 = v7;
  v73 = v41;
  LOBYTE(v74) = 0;
  v42 = sub_22FEC6AAC();
  if (v43 >> 60 == 15)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v44 = 2;
    swift_willThrow();
    v45 = v7;
    v46 = v41;
LABEL_38:
    sub_22FEA55AC(v45, v46);
    sub_22FEA55AC(v14, v13);
    v19 = v71;
    v20 = v1;
    v21 = v69;
    goto LABEL_16;
  }

  v67 = v7;
  v68 = v42;
  v70 = v43;
  v66 = v41;
  *v3 = 0;
  *(v0 + 104) = 0;
  v53 = swift_task_alloc();
  v53[2] = v3;
  v53[3] = v0 + 104;
  v53[4] = v71;
  v53[5] = v1;
  v5 = v69;
  v53[6] = v69;
  v53[7] = v6;
  sub_22FED55F8(v69, v6, sub_22FEE643C);

  v3 = v74;
  if ((~v74 & 0x3000000000000000) == 0)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v54 = 3;
    swift_willThrow();
    sub_22FEA56EC(v68, v70);
    sub_22FEA55AC(v7, v66);
    sub_22FEA55AC(v14, v13);
    v19 = v71;
    goto LABEL_15;
  }

  v55 = v73;
  if ((v74 & 0x2000000000000000) != 0)
  {
    v56 = v73;
  }

  else
  {
    v56 = v72;
  }

  if ((v74 & 0x2000000000000000) != 0)
  {
    v57 = v74 & 0xDFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v57 = v73;
  }

  v64 = v73;
  v65 = v72;
  if ((sub_22FECAAF4(v56, v57, v68, v70) & 1) == 0)
  {
    sub_22FEE63E8();
    swift_allocError();
    *v63 = 4;
    swift_willThrow();
    sub_22FED5840(v65, v55, v3);
    sub_22FEA56EC(v68, v70);
    v46 = v66;
    v45 = v7;
    goto LABEL_38;
  }

  if (qword_281490288 != -1)
  {
    goto LABEL_70;
  }

LABEL_62:
  v58 = sub_22FFB12F8();
  __swift_project_value_buffer(v58, qword_281491430);
  v59 = sub_22FFB12D8();
  v60 = sub_22FFB1848();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_22FE99000, v59, v60, "AttestationBundle passed SEPImagePolicy: reported SEP Image from AP Ticket matches SEP attestation", v61, 2u);
    v62 = v61;
    v7 = v67;
    MEMORY[0x23190EFF0](v62, -1, -1);
  }

  sub_22FEA55AC(v14, v13);
  sub_22FED5840(v65, v64, v3);
  sub_22FEA56EC(v68, v70);
  sub_22FEA55AC(v7, v66);
  sub_22FECB858(v71, v1, v69, v6);

  v22 = *(v0 + 8);
LABEL_18:

  return v22();
}

uint64_t sub_22FEE634C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return SEPImagePolicy.evaluate(bundle:context:)(a1, a2);
}

unint64_t sub_22FEE63E8()
{
  result = qword_27DAF20C8;
  if (!qword_27DAF20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEPImagePolicy.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SEPImagePolicy.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FEE65C4()
{
  result = qword_27DAF20D0;
  if (!qword_27DAF20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20D0);
  }

  return result;
}

uint64_t sub_22FEE6684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEE6708()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF20D8);
  __swift_project_value_buffer(v0, qword_27DAF20D8);
  return sub_22FFB12E8();
}

uint64_t static SoftwareReleasePolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF1298 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF20D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SoftwareReleasePolicy.evaluate(bundle:context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for SoftwareReleasePolicy(0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  type metadata accessor for Proto_AttestationBundle(0);
  v2[6] = swift_task_alloc();
  type metadata accessor for AttestationBundle(0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for Release(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEE6990, 0, 0);
}

uint64_t sub_22FEE6990()
{
  v52 = v0;
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  sub_22FEEC130(v0[2], v2, type metadata accessor for AttestationBundle);
  sub_22FEEC130(v2, v3, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v3, 1, 0, v1);
  sub_22FEEC198(v2, type metadata accessor for AttestationBundle);
  sub_22FEEC1F8(v0[13], v0[14], type metadata accessor for Release);
  if (qword_27DAF1298 != -1)
  {
    swift_once();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_22FFB12F8();
  __swift_project_value_buffer(v7, qword_27DAF20D8);
  sub_22FEEC130(v6, v4, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEEC130(v6, v5, type metadata accessor for SoftwareReleasePolicy);
  v8 = sub_22FFB12D8();
  v9 = sub_22FFB1848();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[12];
    v11 = v0[5];
    v48 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136446466;
    sub_22FEEC130(v11, v10, type metadata accessor for Release);
    sub_22FFB19B8();

    v50 = 0xD000000000000010;
    v51 = 0x800000022FFC9F50;
    v14 = Release.sha256.getter();
    MEMORY[0x23190DD10](v14);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FEEC198(v10, type metadata accessor for Release);
    sub_22FEEC198(v11, type metadata accessor for SoftwareReleasePolicy);
    v15 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v49);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = Release.jsonString.getter();
    v18 = v17;
    sub_22FEEC198(v48, type metadata accessor for SoftwareReleasePolicy);
    v19 = sub_22FF9E448(v16, v18, &v49);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_22FE99000, v8, v9, "Local device is running %{public}s:\n%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v13, -1, -1);
    MEMORY[0x23190EFF0](v12, -1, -1);
  }

  else
  {
    v20 = v0[4];
    v21 = v0[5];

    sub_22FEEC198(v20, type metadata accessor for SoftwareReleasePolicy);
    sub_22FEEC198(v21, type metadata accessor for SoftwareReleasePolicy);
  }

  v22 = v0[14];
  v23 = v0[10];
  sub_22FEEC130(v22, v0[11], type metadata accessor for Release);
  sub_22FEEC130(v22, v23, type metadata accessor for Release);
  v24 = sub_22FFB12D8();
  v25 = sub_22FFB1848();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[10];
  v28 = v0[11];
  if (v26)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v30;
    v50 = 0;
    *v29 = 136446466;
    v51 = 0xE000000000000000;
    sub_22FFB19B8();

    v50 = 0xD000000000000010;
    v51 = 0x800000022FFC9F50;
    v31 = Release.sha256.getter();
    MEMORY[0x23190DD10](v31);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    v33 = v50;
    v32 = v51;
    sub_22FEEC198(v28, type metadata accessor for Release);
    v34 = sub_22FF9E448(v33, v32, &v49);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = Release.jsonString.getter();
    v37 = v36;
    sub_22FEEC198(v27, type metadata accessor for Release);
    v38 = sub_22FF9E448(v35, v37, &v49);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_22FE99000, v24, v25, "Remote device is running %{public}s:\n%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v30, -1, -1);
    MEMORY[0x23190EFF0](v29, -1, -1);
  }

  else
  {

    sub_22FEEC198(v27, type metadata accessor for Release);
    sub_22FEEC198(v28, type metadata accessor for Release);
  }

  sub_22FEEC130(v0[3], v0[9], type metadata accessor for Release);
  if (sub_22FFB0C08() & 1) != 0 && (v39 = *(v0[8] + 20), (sub_22FEE72BC(*(v0[14] + v39), *(v0[9] + v39))) && (v40 = *(v0[8] + 24), (sub_22FEE800C(*(v0[14] + v40), *(v0[9] + v40))))
  {
    sub_22FEEC198(v0[9], type metadata accessor for Release);
    v41 = sub_22FFB12D8();
    v42 = sub_22FFB1848();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22FE99000, v41, v42, "Remote device is running same release as local device", v43, 2u);
      MEMORY[0x23190EFF0](v43, -1, -1);
    }

    v44 = v0[14];

    sub_22FEEC198(v44, type metadata accessor for Release);

    v45 = v0[1];
  }

  else
  {
    v46 = v0[14];
    sub_22FEEC198(v0[9], type metadata accessor for Release);
    sub_22FEEBF28();
    swift_allocError();
    swift_willThrow();
    sub_22FEEC198(v46, type metadata accessor for Release);

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_22FEE71B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEAA0D4;

  return SoftwareReleasePolicy.evaluate(bundle:context:)(a1);
}

uint64_t SoftwareReleasePolicy.Error.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEE72BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0C28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_22FEEC260(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
      v26 = sub_22FFB1428();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_22FEEC260(&qword_28148F1E8, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F8]);
        v31 = sub_22FFB1478();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEE766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22FEE76FC(uint64_t a1, uint64_t a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v12 = v7 >> 62;
      v13 = v10 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v24 = *(v6 + 16);
          v23 = *(v6 + 24);
          v21 = __OFSUB__(v23, v24);
          v15 = v23 - v24;
          if (v21)
          {
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        v15 = 0;
        if (v13 <= 1)
        {
          goto LABEL_27;
        }
      }

      else if (v12)
      {
        LODWORD(v15) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_68;
        }

        v15 = v15;
        if (v13 <= 1)
        {
LABEL_27:
          if (v13)
          {
            LODWORD(v22) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
            }

            v22 = v22;
          }

          else
          {
            v22 = BYTE6(v10);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v15 = BYTE6(v7);
        if (v13 <= 1)
        {
          goto LABEL_27;
        }
      }

LABEL_20:
      if (v13 != 2)
      {
        if (v15)
        {
          return 0;
        }

LABEL_38:
        sub_22FEA5608(*(i - 2), *(i - 1));
        v17 = v9;
        v18 = v10;
LABEL_39:
        sub_22FEA5608(v17, v18);
        goto LABEL_60;
      }

      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_66;
      }

LABEL_33:
      if (v15 != v22)
      {
        return 0;
      }

      if (v15 < 1)
      {
        goto LABEL_38;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v37 = *v4;
          v38 = *i;
          v39 = v3;
          v27 = *(v6 + 16);
          v36 = *(v6 + 24);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          v28 = sub_22FFB0588();
          if (v28)
          {
            v29 = sub_22FFB05B8();
            if (__OFSUB__(v27, v29))
            {
              goto LABEL_71;
            }

            v28 += v27 - v29;
          }

          if (__OFSUB__(v36, v27))
          {
            goto LABEL_70;
          }

          sub_22FFB05A8();
          v30 = v28;
          v31 = v9;
          v32 = v10;
          v3 = v39;
          goto LABEL_56;
        }

        memset(v41, 0, 14);
        sub_22FEA5608(v6, v7);
        sub_22FEA5608(v9, v10);
        sub_22FEA5608(v6, v7);
        sub_22FEA5608(v9, v10);
        v25 = v9;
        v26 = v10;
      }

      else
      {
        if (v12)
        {
          v37 = *v4;
          v38 = *i;
          if (v6 >> 32 < v6)
          {
            goto LABEL_69;
          }

          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          sub_22FEA5608(v6, v7);
          sub_22FEA5608(v9, v10);
          v33 = sub_22FFB0588();
          if (v33)
          {
            v34 = sub_22FFB05B8();
            if (__OFSUB__(v6, v34))
            {
              goto LABEL_72;
            }

            v33 += v6 - v34;
          }

          sub_22FFB05A8();
          v30 = v33;
          v31 = v9;
          v32 = v10;
LABEL_56:
          sub_22FEEBB68(v30, v31, v32, v41);
          sub_22FEA55AC(v9, v10);
          sub_22FEA55AC(v6, v7);
          v11 = v37;
          v8 = v38;
          if ((v41[0] & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_60;
        }

        v41[0] = *(i - 2);
        LOWORD(v41[1]) = v7;
        BYTE2(v41[1]) = BYTE2(v7);
        BYTE3(v41[1]) = BYTE3(v7);
        BYTE4(v41[1]) = BYTE4(v7);
        BYTE5(v41[1]) = BYTE5(v7);
        sub_22FEA5608(v6, v7);
        sub_22FEA5608(v9, v10);
        sub_22FEA5608(v6, v7);
        sub_22FEA5608(v9, v10);
        v25 = v9;
        v26 = v10;
      }

      sub_22FEEBB68(v41, v25, v26, &v40);
      sub_22FEA55AC(v9, v10);
      sub_22FEA55AC(v6, v7);
      if (!v40)
      {
LABEL_63:
        sub_22FEA55AC(v9, v10);
        sub_22FEA55AC(v6, v7);
        return 0;
      }

LABEL_60:
      sub_22FEA55AC(v9, v10);
      sub_22FEA55AC(v6, v7);
      if (v8 != v11)
      {
        return 0;
      }

      v4 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v7 == 0xC000000000000000;
    }

    v15 = 0;
    v16 = v14 && v10 >> 62 == 3;
    if (v16 && !v9 && v10 == 0xC000000000000000)
    {
      sub_22FEA5608(0, 0xC000000000000000);
      v17 = 0;
      v18 = 0xC000000000000000;
      goto LABEL_39;
    }

LABEL_26:
    if (v13 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  return 1;
}

uint64_t sub_22FEE7C00(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_22FEA5608(v7, v6);
          sub_22FEA5608(v9, v8);
          v22 = sub_22FFB0588();
          if (v22)
          {
            v23 = sub_22FFB05B8();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_22FFB05A8();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_22FEA5608(v7, v6);
        sub_22FEA5608(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_22FEA5608(v7, v6);
          sub_22FEA5608(v9, v8);
          v27 = sub_22FFB0588();
          if (v27)
          {
            v28 = sub_22FFB05B8();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_22FFB05A8();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_22FEEBB68(v24, v25, v26, v33);
          sub_22FEA55AC(v9, v8);
          sub_22FEA55AC(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_22FEA5608(v7, v6);
        sub_22FEA5608(v9, v8);
      }

      sub_22FEEBB68(v33, v9, v8, &v32);
      sub_22FEA55AC(v9, v8);
      sub_22FEA55AC(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_22FEE800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0CC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_22FEEC260(&qword_27DAF2160, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
    v21 = sub_22FFB1478();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEE8220(uint64_t a1, uint64_t a2)
{
  v76[3] = *MEMORY[0x277D85DE8];
  v72 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  MEMORY[0x28223BE20](v10);
  v71 = &v61 - v11;
  v74 = type metadata accessor for Proto_SealedHash.Entry(0);
  v12 = MEMORY[0x28223BE20](v74);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_70;
  }

  if (!v18 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v63 = v6;
  v64 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v69 = &v61 - v16;
  v70 = (v4 + 48);
  v22 = *(v15 + 72);
  v66 = 0;
  v67 = v22;
  v65 = v10;
  v68 = v14;
  while (1)
  {
    sub_22FEEC130(v20, v17, type metadata accessor for Proto_SealedHash.Entry);
    if (!v18)
    {
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
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    sub_22FEEC130(v21, v14, type metadata accessor for Proto_SealedHash.Entry);
    if (*v17 != *v14)
    {
      goto LABEL_69;
    }

    v23 = *(v17 + 1);
    v24 = *(v17 + 2);
    v26 = *(v14 + 1);
    v25 = *(v14 + 2);
    v27 = v24 >> 62;
    v28 = v25 >> 62;
    if (v24 >> 62 == 3)
    {
      v29 = 0;
      if (!v23 && v24 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v29 = 0;
        if (!v26 && v25 == 0xC000000000000000)
        {
          goto LABEL_57;
        }
      }

LABEL_23:
      if (v28 <= 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v35 = *(v23 + 16);
        v34 = *(v23 + 24);
        v32 = __OFSUB__(v34, v35);
        v29 = v34 - v35;
        if (v32)
        {
          goto LABEL_76;
        }

        goto LABEL_23;
      }

      v29 = 0;
      if (v28 <= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v27)
    {
      LODWORD(v29) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_75;
      }

      v29 = v29;
      if (v28 <= 1)
      {
LABEL_24:
        if (v28)
        {
          LODWORD(v33) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_73;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v25);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v29 = BYTE6(v24);
      if (v28 <= 1)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    if (v28 != 2)
    {
      if (v29)
      {
        goto LABEL_69;
      }

      goto LABEL_57;
    }

    v31 = *(v26 + 16);
    v30 = *(v26 + 24);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (v32)
    {
      goto LABEL_74;
    }

LABEL_30:
    if (v29 != v33)
    {
      goto LABEL_69;
    }

    if (v29 < 1)
    {
      goto LABEL_57;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v76, 0, 14);
LABEL_49:
        v47 = v66;
        sub_22FEEBB68(v76, v26, v25, &v75);
        v66 = v47;
        if (!v75)
        {
          goto LABEL_69;
        }

        goto LABEL_57;
      }

      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      v73 = v37;
      v62 = v36;
      v38 = sub_22FFB0588();
      if (v38)
      {
        v39 = v38;
        v40 = sub_22FFB05B8();
        v41 = v73;
        if (__OFSUB__(v73, v40))
        {
          goto LABEL_79;
        }

        v61 = v73 - v40 + v39;
      }

      else
      {
        v61 = 0;
        v41 = v73;
      }

      if (__OFSUB__(v62, v41))
      {
        goto LABEL_78;
      }

      sub_22FFB05A8();
      v48 = v61;
    }

    else
    {
      if (!v27)
      {
        v76[0] = *(v17 + 1);
        LOWORD(v76[1]) = v24;
        BYTE2(v76[1]) = BYTE2(v24);
        BYTE3(v76[1]) = BYTE3(v24);
        BYTE4(v76[1]) = BYTE4(v24);
        BYTE5(v76[1]) = BYTE5(v24);
        goto LABEL_49;
      }

      v42 = v23;
      v43 = v23 >> 32;
      v73 = v43 - v42;
      if (v43 < v42)
      {
        goto LABEL_77;
      }

      v44 = sub_22FFB0588();
      if (v44)
      {
        v62 = v44;
        v45 = sub_22FFB05B8();
        if (__OFSUB__(v42, v45))
        {
          goto LABEL_80;
        }

        v46 = v42 - v45 + v62;
      }

      else
      {
        v46 = 0;
      }

      sub_22FFB05A8();
      v48 = v46;
    }

    v49 = v66;
    sub_22FEEBB68(v48, v26, v25, v76);
    v66 = v49;
    v10 = v65;
    if ((v76[0] & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_57:
    v73 = v18;
    v50 = *(v74 + 24);
    v51 = *(v10 + 48);
    v52 = v71;
    sub_22FEBF3A4(&v17[v50], v71, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FEBF3A4(&v14[v50], v52 + v51, &qword_27DAF2130, &unk_22FFB5C80);
    v53 = *v70;
    v54 = v72;
    if ((*v70)(v52, 1, v72) != 1)
    {
      break;
    }

    if (v53(v52 + v51, 1, v54) != 1)
    {
      goto LABEL_68;
    }

    sub_22FEAEA34(v52, &qword_27DAF2130, &unk_22FFB5C80);
    v55 = v73;
    v14 = v68;
    v17 = v69;
LABEL_62:
    if (!sub_22FF1AD24(*&v17[*(v74 + 28)], *&v14[*(v74 + 28)]))
    {
      goto LABEL_69;
    }

    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v59 = sub_22FFB1478();
    sub_22FEEC198(v14, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FEEC198(v17, type metadata accessor for Proto_SealedHash.Entry);
    if (v59)
    {
      v18 = v55 - 1;
      v21 += v67;
      v20 += v67;
      if (v55 != 1)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  v56 = v64;
  sub_22FEBF3A4(v52, v64, &qword_27DAF2130, &unk_22FFB5C80);
  if (v53(v52 + v51, 1, v54) != 1)
  {
    v57 = v63;
    sub_22FEEC1F8(v52 + v51, v63, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v58 = static Proto_SealedHash.Entry.OneOf_Info.== infix(_:_:)(v56, v57);
    sub_22FEEC198(v57, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FEEC198(v56, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FEAEA34(v52, &qword_27DAF2130, &unk_22FFB5C80);
    v10 = v65;
    v55 = v73;
    v14 = v68;
    v17 = v69;
    if ((v58 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  sub_22FEEC198(v56, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_68:
  sub_22FEAEA34(v52, &qword_27DAF2138, &qword_22FFB90D0);
  v14 = v68;
  v17 = v69;
LABEL_69:
  sub_22FEEC198(v14, type metadata accessor for Proto_SealedHash.Entry);
  sub_22FEEC198(v17, type metadata accessor for Proto_SealedHash.Entry);
LABEL_70:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_22FEE8A98(uint64_t a1, uint64_t a2)
{
  v118[3] = *MEMORY[0x277D85DE8];
  v112 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v4 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v101 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v93 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2148, &qword_22FFB5C98);
  MEMORY[0x28223BE20](v104);
  v107 = &v93 - v9;
  v106 = type metadata accessor for LogEntry(0);
  v10 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  MEMORY[0x28223BE20](v14);
  v105 = &v93 - v15;
  v114 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v16 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v93 - v19;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  MEMORY[0x28223BE20](v110);
  v111 = &v93 - v21;
  v116 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  v22 = MEMORY[0x28223BE20](v116);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v27 = &v93 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    goto LABEL_112;
  }

  if (!v28 || a1 == a2)
  {
    v89 = 1;
    return v89 & 1;
  }

  v96 = v14;
  v93 = v8;
  v97 = 0;
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = a1 + v29;
  v31 = a2 + v29;
  v100 = (v16 + 48);
  v95 = (v10 + 48);
  v94 = (v4 + 48);
  v98 = *(v25 + 72);
  v32 = &qword_27DAF37C0;
  v33 = v111;
  v99 = v20;
  while (1)
  {
    v115 = v28;
    sub_22FEEC130(v30, v27, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    if (!v115)
    {
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
    }

    sub_22FEEC130(v31, v24, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    v34 = *v27;
    if (v27[8] == 1)
    {
      v34 = qword_22FFB5CA8[v34];
    }

    v35 = *v24;
    v36 = v24[8];
    v108 = v31;
    v109 = v30;
    if (v36)
    {
      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            if (v34 != 1)
            {
              goto LABEL_111;
            }
          }

          else if (v34 != 3)
          {
            goto LABEL_111;
          }
        }

        else if (v34)
        {
          goto LABEL_111;
        }
      }

      else if (v35 > 4)
      {
        if (v35 == 5)
        {
          if (v34 != 6)
          {
            goto LABEL_111;
          }
        }

        else if (v34 != 7)
        {
          goto LABEL_111;
        }
      }

      else if (v35 == 3)
      {
        if (v34 != 4)
        {
          goto LABEL_111;
        }
      }

      else if (v34 != 5)
      {
        goto LABEL_111;
      }
    }

    else if (v34 != v35)
    {
      goto LABEL_111;
    }

    v37 = *(v27 + 2);
    v38 = *(v27 + 3);
    v39 = *(v24 + 2);
    v40 = *(v24 + 3);
    v41 = v38 >> 62;
    v42 = v40 >> 62;
    if (v38 >> 62 == 3)
    {
      v43 = 0;
      if (!v37 && v38 == 0xC000000000000000 && v40 >> 62 == 3)
      {
        v43 = 0;
        if (!v39 && v40 == 0xC000000000000000)
        {
          goto LABEL_71;
        }
      }

LABEL_31:
      if (v42 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v49 = *(v37 + 16);
        v48 = *(v37 + 24);
        v46 = __OFSUB__(v48, v49);
        v43 = v48 - v49;
        if (v46)
        {
          goto LABEL_118;
        }

        goto LABEL_31;
      }

      v43 = 0;
      if (v42 <= 1)
      {
        goto LABEL_32;
      }
    }

    else if (v41)
    {
      LODWORD(v43) = HIDWORD(v37) - v37;
      if (__OFSUB__(HIDWORD(v37), v37))
      {
        goto LABEL_117;
      }

      v43 = v43;
      if (v42 <= 1)
      {
LABEL_32:
        if (v42)
        {
          LODWORD(v47) = HIDWORD(v39) - v39;
          if (__OFSUB__(HIDWORD(v39), v39))
          {
            goto LABEL_116;
          }

          v47 = v47;
        }

        else
        {
          v47 = BYTE6(v40);
        }

        goto LABEL_42;
      }
    }

    else
    {
      v43 = BYTE6(v38);
      if (v42 <= 1)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    if (v42 != 2)
    {
      if (v43)
      {
        goto LABEL_111;
      }

      goto LABEL_71;
    }

    v45 = *(v39 + 16);
    v44 = *(v39 + 24);
    v46 = __OFSUB__(v44, v45);
    v47 = v44 - v45;
    if (v46)
    {
      goto LABEL_115;
    }

LABEL_42:
    if (v43 != v47)
    {
      goto LABEL_111;
    }

    if (v43 < 1)
    {
      goto LABEL_71;
    }

    if (v41 <= 1)
    {
      if (!v41)
      {
        v118[0] = *(v27 + 2);
        LOWORD(v118[1]) = v38;
        BYTE2(v118[1]) = BYTE2(v38);
        BYTE3(v118[1]) = BYTE3(v38);
        BYTE4(v118[1]) = BYTE4(v38);
        BYTE5(v118[1]) = BYTE5(v38);
        v50 = v97;
        sub_22FEEBB68(v118, v39, v40, &v117);
        v97 = v50;
        v33 = v111;
        if (!v117)
        {
          goto LABEL_111;
        }

        goto LABEL_71;
      }

      v55 = v32;
      v56 = v37;
      if (v37 >> 32 < v37)
      {
        goto LABEL_119;
      }

      v53 = sub_22FFB0588();
      if (v53)
      {
        v57 = sub_22FFB05B8();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_122;
        }

        v53 += v56 - v57;
      }

      v32 = v55;
      goto LABEL_68;
    }

    if (v41 == 2)
    {
      v51 = *(v37 + 16);
      v52 = *(v37 + 24);
      v53 = sub_22FFB0588();
      if (v53)
      {
        v54 = sub_22FFB05B8();
        if (__OFSUB__(v51, v54))
        {
          goto LABEL_121;
        }

        v53 += v51 - v54;
      }

      if (__OFSUB__(v52, v51))
      {
        goto LABEL_120;
      }

LABEL_68:
      sub_22FFB05A8();
      v58 = v53;
      v59 = v97;
      sub_22FEEBB68(v58, v39, v40, v118);
      v97 = v59;
      v20 = v99;
      v33 = v111;
      if ((v118[0] & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_71;
    }

    memset(v118, 0, 14);
    v60 = v97;
    sub_22FEEBB68(v118, v39, v40, &v117);
    v97 = v60;
    v33 = v111;
    if (!v117)
    {
      goto LABEL_111;
    }

LABEL_71:
    v61 = *(v116 + 32);
    v62 = *(v110 + 48);
    sub_22FEBF3A4(&v27[v61], v33, v32, &unk_22FFB5C60);
    sub_22FEBF3A4(&v24[v61], v33 + v62, v32, &unk_22FFB5C60);
    v63 = *v100;
    v64 = v114;
    if ((*v100)(v33, 1, v114) == 1)
    {
      if (v63(v33 + v62, 1, v64) != 1)
      {
        goto LABEL_102;
      }

      sub_22FEAEA34(v33, v32, &unk_22FFB5C60);
      goto LABEL_88;
    }

    sub_22FEBF3A4(v33, v20, v32, &unk_22FFB5C60);
    if (v63(v33 + v62, 1, v64) == 1)
    {
      break;
    }

    v65 = v113;
    sub_22FEEC1F8(v33 + v62, v113, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v66 = *(v64 + 20);
    v67 = *(v96 + 48);
    v68 = v105;
    sub_22FEBF3A4(&v20[v66], v105, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FEBF3A4(v65 + v66, v68 + v67, &qword_27DAF2150, &qword_22FFB5CA0);
    v69 = *v95;
    v70 = v106;
    v71 = (*v95)(v68, 1, v106);
    v72 = v107;
    if (v71 == 1)
    {
      if (v69(v68 + v67, 1, v70) != 1)
      {
        goto LABEL_104;
      }

      sub_22FEAEA34(v68, &qword_27DAF2150, &qword_22FFB5CA0);
      v73 = v94;
      v20 = v99;
    }

    else
    {
      v74 = v103;
      sub_22FEBF3A4(v68, v103, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v69(v68 + v67, 1, v70) == 1)
      {
        sub_22FEEC198(v74, type metadata accessor for LogEntry);
LABEL_104:
        sub_22FEAEA34(v68, &qword_27DAF2158, &unk_22FFB7B80);
LABEL_108:
        v20 = v99;
LABEL_109:
        sub_22FEEC198(v113, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        sub_22FEEC198(v20, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        v90 = &qword_27DAF37C0;
        v91 = &unk_22FFB5C60;
        goto LABEL_110;
      }

      v75 = v102;
      sub_22FEEC1F8(v68 + v67, v102, type metadata accessor for LogEntry);
      v76 = static LogEntry.== infix(_:_:)(v74, v75);
      v20 = v99;
      v33 = v111;
      sub_22FEEC198(v75, type metadata accessor for LogEntry);
      sub_22FEEC198(v74, type metadata accessor for LogEntry);
      sub_22FEAEA34(v68, &qword_27DAF2150, &qword_22FFB5CA0);
      v73 = v94;
      if ((v76 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v77 = *(v114 + 24);
    v78 = *(v104 + 48);
    sub_22FEBF3A4(&v20[v77], v72, &qword_27DAF2140, &qword_22FFB5C90);
    sub_22FEBF3A4(v113 + v77, v72 + v78, &qword_27DAF2140, &qword_22FFB5C90);
    v79 = *v73;
    if ((*v73)(v72, 1, v112) == 1)
    {
      if (v79(v72 + v78, 1, v112) != 1)
      {
        goto LABEL_106;
      }

      sub_22FEAEA34(v72, &qword_27DAF2140, &qword_22FFB5C90);
      v32 = &qword_27DAF37C0;
    }

    else
    {
      v80 = v93;
      sub_22FEBF3A4(v72, v93, &qword_27DAF2140, &qword_22FFB5C90);
      if (v79(v72 + v78, 1, v112) == 1)
      {
        sub_22FEEC198(v80, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
        v20 = v99;
LABEL_106:
        sub_22FEAEA34(v72, &qword_27DAF2148, &qword_22FFB5C98);
        goto LABEL_109;
      }

      v81 = v101;
      sub_22FEEC1F8(v72 + v78, v101, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      v82 = *(v112 + 20);
      v83 = *(v80 + v82);
      v84 = *(v81 + v82);
      if (v83 != v84)
      {

        v85 = sub_22FEFFCE0(v83, v84);

        if (!v85)
        {
          sub_22FEEC198(v81, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
          sub_22FEEC198(v80, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
          sub_22FEAEA34(v72, &qword_27DAF2140, &qword_22FFB5C90);
          v33 = v111;
          goto LABEL_108;
        }
      }

      sub_22FFB0F88();
      sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v86 = sub_22FFB1478();
      sub_22FEEC198(v81, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEEC198(v80, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEAEA34(v72, &qword_27DAF2140, &qword_22FFB5C90);
      v33 = v111;
      v32 = &qword_27DAF37C0;
      v20 = v99;
      if ((v86 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v87 = v113;
    v88 = sub_22FFB1478();
    sub_22FEEC198(v87, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEEC198(v20, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEAEA34(v33, &qword_27DAF37C0, &unk_22FFB5C60);
    if ((v88 & 1) == 0)
    {
      goto LABEL_111;
    }

LABEL_88:
    if (*(v27 + 4) != *(v24 + 4))
    {
      goto LABEL_111;
    }

    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v89 = sub_22FFB1478();
    sub_22FEEC198(v24, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    sub_22FEEC198(v27, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    if (v89)
    {
      v28 = v115 - 1;
      v31 = v108 + v98;
      v30 = v109 + v98;
      if (v115 != 1)
      {
        continue;
      }
    }

    return v89 & 1;
  }

  sub_22FEEC198(v20, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_102:
  v90 = &qword_27DAF2110;
  v91 = &qword_22FFB7B90;
LABEL_110:
  sub_22FEAEA34(v33, v90, v91);
LABEL_111:
  sub_22FEEC198(v24, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
  sub_22FEEC198(v27, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
LABEL_112:
  v89 = 0;
  return v89 & 1;
}

uint64_t sub_22FEE9AFC(uint64_t a1, uint64_t a2)
{
  v88[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v82 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v86 = 0;
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v82 = v4;
      v83 = v15;
      while (1)
      {
        sub_22FEEC130(v13, v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        sub_22FEEC130(v14, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        v16 = *v10;
        v17 = *v7;
        v18 = v7[8];
        v84 = v14;
        v85 = v13;
        if (v18 == 1)
        {
          if (v17 > 3)
          {
            if (v17 > 5)
            {
              if (v17 == 6)
              {
                if (v16 != 6)
                {
                  goto LABEL_175;
                }
              }

              else if (v16 != 7)
              {
LABEL_175:
                sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
                sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
                goto LABEL_176;
              }
            }

            else if (v17 == 4)
            {
              if (v16 != 4)
              {
                goto LABEL_175;
              }
            }

            else if (v16 != 5)
            {
              goto LABEL_175;
            }
          }

          else if (v17 > 1)
          {
            if (v17 == 2)
            {
              if (v16 != 2)
              {
                goto LABEL_175;
              }
            }

            else if (v16 != 3)
            {
              goto LABEL_175;
            }
          }

          else if (v17)
          {
            if (v16 != 1)
            {
              goto LABEL_175;
            }
          }

          else if (v16)
          {
            goto LABEL_175;
          }
        }

        else if (v16 != v17)
        {
          goto LABEL_175;
        }

        v19 = v10[2];
        v20 = v10[3];
        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        v23 = v20 >> 62;
        v24 = v21 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v31 = *(v19 + 16);
            v30 = *(v19 + 24);
            v28 = __OFSUB__(v30, v31);
            v25 = v30 - v31;
            if (v28)
            {
              goto LABEL_186;
            }

            goto LABEL_32;
          }

          v25 = 0;
          if (v24 <= 1)
          {
            goto LABEL_33;
          }
        }

        else if (v23)
        {
          LODWORD(v25) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_185;
          }

          v25 = v25;
          if (v24 <= 1)
          {
LABEL_33:
            if (v24)
            {
              LODWORD(v29) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
              }

              v29 = v29;
            }

            else
            {
              v29 = BYTE6(v21);
            }

            goto LABEL_39;
          }
        }

        else
        {
          v25 = BYTE6(v20);
          if (v24 <= 1)
          {
            goto LABEL_33;
          }
        }

LABEL_22:
        if (v24 != 2)
        {
          if (v25)
          {
            goto LABEL_175;
          }

          goto LABEL_69;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_180;
        }

LABEL_39:
        if (v25 != v29)
        {
          goto LABEL_175;
        }

        if (v25 < 1)
        {
          goto LABEL_69;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v33 = *(v19 + 16);
            v32 = *(v19 + 24);
            v34 = sub_22FFB0588();
            if (v34)
            {
              v35 = sub_22FFB05B8();
              if (__OFSUB__(v33, v35))
              {
                goto LABEL_197;
              }

              v34 += v33 - v35;
            }

            if (__OFSUB__(v32, v33))
            {
              goto LABEL_192;
            }

            goto LABEL_65;
          }

          memset(v88, 0, 14);
        }

        else
        {
          if (v23)
          {
            v36 = v19;
            if (v19 >> 32 < v19)
            {
              goto LABEL_191;
            }

            v34 = sub_22FFB0588();
            if (v34)
            {
              v37 = sub_22FFB05B8();
              if (__OFSUB__(v36, v37))
              {
                goto LABEL_198;
              }

              v34 += v36 - v37;
            }

LABEL_65:
            sub_22FFB05A8();
            v38 = v86;
            sub_22FEEBB68(v34, v22, v21, v88);
            v86 = v38;
            if ((v88[0] & 1) == 0)
            {
              goto LABEL_175;
            }

            goto LABEL_69;
          }

          v88[0] = v10[2];
          LOWORD(v88[1]) = v20;
          BYTE2(v88[1]) = BYTE2(v20);
          BYTE3(v88[1]) = BYTE3(v20);
          BYTE4(v88[1]) = BYTE4(v20);
          BYTE5(v88[1]) = BYTE5(v20);
        }

        v39 = v86;
        sub_22FEEBB68(v88, v22, v21, &v87);
        v86 = v39;
        if (!v87)
        {
          goto LABEL_175;
        }

LABEL_69:
        if (v10[4] != *(v7 + 4))
        {
          goto LABEL_175;
        }

        v40 = v10[5];
        v41 = v10[6];
        v43 = *(v7 + 5);
        v42 = *(v7 + 6);
        v44 = v41 >> 62;
        v45 = v42 >> 62;
        if (v41 >> 62 == 3)
        {
          v46 = 0;
          if (!v40 && v41 == 0xC000000000000000 && v42 >> 62 == 3)
          {
            v46 = 0;
            if (!v43 && v42 == 0xC000000000000000)
            {
              goto LABEL_117;
            }
          }

LABEL_86:
          if (v45 <= 1)
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v51 = *(v40 + 16);
            v50 = *(v40 + 24);
            v28 = __OFSUB__(v50, v51);
            v46 = v50 - v51;
            if (v28)
            {
              goto LABEL_188;
            }

            goto LABEL_86;
          }

          v46 = 0;
          if (v45 <= 1)
          {
            goto LABEL_87;
          }
        }

        else if (v44)
        {
          LODWORD(v46) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
            goto LABEL_187;
          }

          v46 = v46;
          if (v45 <= 1)
          {
LABEL_87:
            if (v45)
            {
              LODWORD(v49) = HIDWORD(v43) - v43;
              if (__OFSUB__(HIDWORD(v43), v43))
              {
                goto LABEL_182;
              }

              v49 = v49;
            }

            else
            {
              v49 = BYTE6(v42);
            }

            goto LABEL_93;
          }
        }

        else
        {
          v46 = BYTE6(v41);
          if (v45 <= 1)
          {
            goto LABEL_87;
          }
        }

LABEL_80:
        if (v45 != 2)
        {
          if (v46)
          {
            goto LABEL_175;
          }

          goto LABEL_117;
        }

        v48 = *(v43 + 16);
        v47 = *(v43 + 24);
        v28 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v28)
        {
          goto LABEL_181;
        }

LABEL_93:
        if (v46 != v49)
        {
          goto LABEL_175;
        }

        if (v46 < 1)
        {
          goto LABEL_117;
        }

        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v53 = *(v40 + 16);
            v52 = *(v40 + 24);
            v54 = sub_22FFB0588();
            if (v54)
            {
              v55 = sub_22FFB05B8();
              if (__OFSUB__(v53, v55))
              {
                goto LABEL_199;
              }

              v54 += v53 - v55;
            }

            if (__OFSUB__(v52, v53))
            {
              goto LABEL_194;
            }

            goto LABEL_113;
          }

          memset(v88, 0, 14);
        }

        else
        {
          if (v44)
          {
            v56 = v40;
            if (v40 >> 32 < v40)
            {
              goto LABEL_193;
            }

            v54 = sub_22FFB0588();
            if (v54)
            {
              v57 = sub_22FFB05B8();
              if (__OFSUB__(v56, v57))
              {
                goto LABEL_200;
              }

              v54 += v56 - v57;
            }

LABEL_113:
            sub_22FFB05A8();
            v58 = v86;
            sub_22FEEBB68(v54, v43, v42, v88);
            v86 = v58;
            if ((v88[0] & 1) == 0)
            {
              goto LABEL_175;
            }

            goto LABEL_117;
          }

          v88[0] = v10[5];
          LOWORD(v88[1]) = v41;
          BYTE2(v88[1]) = BYTE2(v41);
          BYTE3(v88[1]) = BYTE3(v41);
          BYTE4(v88[1]) = BYTE4(v41);
          BYTE5(v88[1]) = BYTE5(v41);
        }

        v59 = v86;
        sub_22FEEBB68(v88, v43, v42, &v87);
        v86 = v59;
        if (!v87)
        {
          goto LABEL_175;
        }

LABEL_117:
        v60 = v10[7];
        v61 = v10[8];
        v63 = *(v7 + 7);
        v62 = *(v7 + 8);
        v64 = v61 >> 62;
        v65 = v62 >> 62;
        if (v61 >> 62 == 3)
        {
          v66 = 0;
          if (!v60 && v61 == 0xC000000000000000 && v62 >> 62 == 3)
          {
            v66 = 0;
            if (!v63 && v62 == 0xC000000000000000)
            {
              goto LABEL_164;
            }
          }

LABEL_133:
          if (v65 > 1)
          {
            goto LABEL_127;
          }

          goto LABEL_134;
        }

        if (v64 > 1)
        {
          if (v64 == 2)
          {
            v71 = *(v60 + 16);
            v70 = *(v60 + 24);
            v28 = __OFSUB__(v70, v71);
            v66 = v70 - v71;
            if (v28)
            {
              goto LABEL_189;
            }

            goto LABEL_133;
          }

          v66 = 0;
          if (v65 > 1)
          {
            goto LABEL_127;
          }
        }

        else if (v64)
        {
          LODWORD(v66) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_190;
          }

          v66 = v66;
          if (v65 > 1)
          {
LABEL_127:
            if (v65 != 2)
            {
              if (v66)
              {
                goto LABEL_175;
              }

              goto LABEL_164;
            }

            v68 = *(v63 + 16);
            v67 = *(v63 + 24);
            v28 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v28)
            {
              goto LABEL_184;
            }

            goto LABEL_140;
          }
        }

        else
        {
          v66 = BYTE6(v61);
          if (v65 > 1)
          {
            goto LABEL_127;
          }
        }

LABEL_134:
        if (v65)
        {
          LODWORD(v69) = HIDWORD(v63) - v63;
          if (__OFSUB__(HIDWORD(v63), v63))
          {
            goto LABEL_183;
          }

          v69 = v69;
        }

        else
        {
          v69 = BYTE6(v62);
        }

LABEL_140:
        if (v66 != v69)
        {
          goto LABEL_175;
        }

        if (v66 >= 1)
        {
          if (v64 > 1)
          {
            if (v64 != 2)
            {
              memset(v88, 0, 14);
              sub_22FEA5608(v63, v62);
LABEL_163:
              v79 = v86;
              sub_22FEEBB68(v88, v63, v62, &v87);
              v86 = v79;
              sub_22FEA55AC(v63, v62);
              if (!v87)
              {
                goto LABEL_175;
              }

              goto LABEL_164;
            }

            v73 = *(v60 + 16);
            v72 = *(v60 + 24);
            sub_22FEA5608(*(v7 + 7), *(v7 + 8));
            v74 = sub_22FFB0588();
            if (v74)
            {
              v75 = sub_22FFB05B8();
              if (__OFSUB__(v73, v75))
              {
                goto LABEL_201;
              }

              v74 += v73 - v75;
            }

            if (__OFSUB__(v72, v73))
            {
              goto LABEL_196;
            }
          }

          else
          {
            if (!v64)
            {
              v88[0] = v10[7];
              LOWORD(v88[1]) = v61;
              BYTE2(v88[1]) = BYTE2(v61);
              BYTE3(v88[1]) = BYTE3(v61);
              BYTE4(v88[1]) = BYTE4(v61);
              BYTE5(v88[1]) = BYTE5(v61);
              sub_22FEA5608(v63, v62);
              goto LABEL_163;
            }

            v76 = v60;
            if (v60 >> 32 < v60)
            {
              goto LABEL_195;
            }

            sub_22FEA5608(*(v7 + 7), *(v7 + 8));
            v74 = sub_22FFB0588();
            if (v74)
            {
              v77 = sub_22FFB05B8();
              if (__OFSUB__(v76, v77))
              {
                goto LABEL_202;
              }

              v74 += v76 - v77;
            }
          }

          sub_22FFB05A8();
          v78 = v86;
          sub_22FEEBB68(v74, v63, v62, v88);
          v86 = v78;
          sub_22FEA55AC(v63, v62);
          if ((v88[0] & 1) == 0)
          {
            goto LABEL_175;
          }
        }

LABEL_164:
        if (v10[9] != *(v7 + 9))
        {
          goto LABEL_175;
        }

        sub_22FFB0F88();
        sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v80 = sub_22FFB1478();
        sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        if (v80)
        {
          v14 = v84 + v83;
          v13 = v85 + v83;
          if (--v11)
          {
            continue;
          }
        }

        return v80 & 1;
      }

      v25 = 0;
      if (!v19 && v20 == 0xC000000000000000 && v21 >> 62 == 3)
      {
        v25 = 0;
        if (!v22 && v21 == 0xC000000000000000)
        {
          goto LABEL_69;
        }
      }

LABEL_32:
      if (v24 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    v80 = 1;
  }

  else
  {
LABEL_176:
    v80 = 0;
  }

  return v80 & 1;
}

uint64_t sub_22FEEA65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      if (*v3)
      {
        v6 = *(v3 - 1) != 0;
      }

      else
      {
        v6 = *(v3 - 1);
      }

      if (*v4 == 1)
      {
        if (v5)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }
      }

      else if (v6 != v5)
      {
        return 0;
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22FEEA6F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 16)
    {
      v5 = *(v3 - 1);
      if (*v3 == 1)
      {
        v5 = qword_22FFB5CE0[v5];
      }

      v6 = *(i - 1);
      if (*i)
      {
        switch(v6)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_6;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_6;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_6;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          case 7:
            if (v5 != 7)
            {
              return 0;
            }

            goto LABEL_6;
          case 8:
            if (v5 != 8)
            {
              return 0;
            }

            goto LABEL_6;
          case 9:
            if (v5 != 9)
            {
              return 0;
            }

            goto LABEL_6;
          case 10:
            if (v5 != 96)
            {
              return 0;
            }

            goto LABEL_6;
          case 11:
            if (v5 != 97)
            {
              return 0;
            }

            goto LABEL_6;
          case 12:
            if (v5 != 98)
            {
              return 0;
            }

            goto LABEL_6;
          case 13:
            if (v5 != 99)
            {
              return 0;
            }

            goto LABEL_6;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v5 != v6)
      {
        break;
      }

LABEL_6:
      v3 += 16;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22FEEA830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_22FEEC130(v13, v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
      sub_22FEEC130(v14, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      sub_22FFB0F88();
      sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_22FFB1478();
      sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
      sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
    sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_22FEEAAB4(uint64_t a1, uint64_t a2)
{
  v106[3] = *MEMORY[0x277D85DE8];
  v96 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v4 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  MEMORY[0x28223BE20](v94);
  v95 = &v85 - v10;
  v100 = type metadata accessor for Proto_TransparencyProofs(0);
  v11 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v13 - 8);
  v98 = &v85 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2120, &qword_22FFB90B0);
  MEMORY[0x28223BE20](v99);
  v16 = &v85 - v15;
  v104 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v17 = MEMORY[0x28223BE20](v104);
  v19 = (&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = (&v85 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_75;
  }

  if (!v23 || a1 == a2)
  {
    v83 = 1;
    return v83 & 1;
  }

  v88 = v9;
  v87 = v6;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v93 = (v11 + 48);
  v89 = (v4 + 48);
  v90 = v16;
  v27 = *(v20 + 72);
  v91 = 0;
  v92 = v27;
  v28 = v100;
  while (1)
  {
    sub_22FEEC130(v25, v22, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    sub_22FEEC130(v26, v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    v29 = *v22;
    v30 = v22[1];
    v31 = *v19;
    v32 = v19[1];
    v33 = v30 >> 62;
    v34 = v32 >> 62;
    v102 = v26;
    if (v30 >> 62 == 3)
    {
      v35 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v32 >> 62 == 3)
      {
        v35 = 0;
        if (!v31 && v32 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_21:
      if (v34 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v41 = *(v29 + 16);
        v40 = *(v29 + 24);
        v38 = __OFSUB__(v40, v41);
        v35 = v40 - v41;
        if (v38)
        {
          goto LABEL_79;
        }

        goto LABEL_21;
      }

      v35 = 0;
      if (v34 <= 1)
      {
        goto LABEL_22;
      }
    }

    else if (v33)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_80;
      }

      v35 = v35;
      if (v34 <= 1)
      {
LABEL_22:
        if (v34)
        {
          LODWORD(v39) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(v32);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v34 <= 1)
      {
        goto LABEL_22;
      }
    }

LABEL_15:
    if (v34 != 2)
    {
      if (v35)
      {
        goto LABEL_74;
      }

      goto LABEL_55;
    }

    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (v38)
    {
      goto LABEL_78;
    }

LABEL_28:
    if (v35 != v39)
    {
      goto LABEL_74;
    }

    if (v35 < 1)
    {
      goto LABEL_55;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        memset(v106, 0, 14);
LABEL_47:
        v54 = v91;
        sub_22FEEBB68(v106, v31, v32, &v105);
        v91 = v54;
        v28 = v100;
        if (!v105)
        {
          goto LABEL_74;
        }

        goto LABEL_55;
      }

      v103 = v31;
      v43 = *(v29 + 16);
      v42 = *(v29 + 24);
      v101 = v43;
      v86 = v42;
      v44 = sub_22FFB0588();
      if (v44)
      {
        v45 = v44;
        v46 = sub_22FFB05B8();
        v47 = v101;
        if (__OFSUB__(v101, v46))
        {
          goto LABEL_83;
        }

        v85 = v101 - v46 + v45;
      }

      else
      {
        v85 = 0;
        v47 = v101;
      }

      if (__OFSUB__(v86, v47))
      {
        goto LABEL_82;
      }

      sub_22FFB05A8();
      v55 = v91;
      sub_22FEEBB68(v85, v103, v32, v106);
      v91 = v55;
      v28 = v100;
      if ((v106[0] & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (!v33)
      {
        v106[0] = v29;
        LOWORD(v106[1]) = v30;
        BYTE2(v106[1]) = BYTE2(v30);
        BYTE3(v106[1]) = BYTE3(v30);
        BYTE4(v106[1]) = BYTE4(v30);
        BYTE5(v106[1]) = BYTE5(v30);
        goto LABEL_47;
      }

      v103 = v31;
      v48 = v29;
      v49 = v29 >> 32;
      v101 = v49 - v48;
      if (v49 < v48)
      {
        goto LABEL_81;
      }

      v50 = sub_22FFB0588();
      if (v50)
      {
        v51 = v50;
        v52 = sub_22FFB05B8();
        if (__OFSUB__(v48, v52))
        {
          goto LABEL_84;
        }

        v53 = v48 - v52 + v51;
      }

      else
      {
        v53 = 0;
      }

      sub_22FFB05A8();
      v56 = v53;
      v57 = v91;
      sub_22FEEBB68(v56, v103, v32, v106);
      v91 = v57;
      v28 = v100;
      if ((v106[0] & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_55:
    v103 = v23;
    v101 = v25;
    v58 = *(v104 + 24);
    v59 = *(v99 + 48);
    sub_22FEBF3A4(v22 + v58, v16, &qword_27DAF2118, &unk_22FFB5C70);
    sub_22FEBF3A4(v19 + v58, &v16[v59], &qword_27DAF2118, &unk_22FFB5C70);
    v60 = *v93;
    if ((*v93)(v16, 1, v28) != 1)
    {
      break;
    }

    if (v60(&v16[v59], 1, v28) != 1)
    {
      goto LABEL_70;
    }

    sub_22FEAEA34(v16, &qword_27DAF2118, &unk_22FFB5C70);
    v61 = v101;
    v62 = v103;
LABEL_65:
    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v83 = sub_22FFB1478();
    sub_22FEEC198(v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    sub_22FEEC198(v22, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    if (v83)
    {
      v26 = v102 + v92;
      v25 = v61 + v92;
      v23 = v62 - 1;
      if (v23)
      {
        continue;
      }
    }

    return v83 & 1;
  }

  v63 = v98;
  sub_22FEBF3A4(v16, v98, &qword_27DAF2118, &unk_22FFB5C70);
  v64 = v60(&v16[v59], 1, v28);
  v65 = v28;
  v66 = v96;
  if (v64 == 1)
  {
    sub_22FEEC198(v63, type metadata accessor for Proto_TransparencyProofs);
LABEL_70:
    sub_22FEAEA34(v16, &qword_27DAF2120, &qword_22FFB90B0);
    goto LABEL_74;
  }

  v67 = &v16[v59];
  v68 = v63;
  v69 = v97;
  sub_22FEEC1F8(v67, v97, type metadata accessor for Proto_TransparencyProofs);
  v70 = *(v65 + 20);
  v71 = *(v94 + 48);
  v72 = v68 + v70;
  v73 = v95;
  sub_22FEBF3A4(v72, v95, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEBF3A4(v69 + v70, v73 + v71, &qword_27DAF37C0, &unk_22FFB5C60);
  v74 = *v89;
  if ((*v89)(v73, 1, v66) == 1)
  {
    v75 = v74(v73 + v71, 1, v66);
    v62 = v103;
    if (v75 != 1)
    {
      goto LABEL_72;
    }

    sub_22FEAEA34(v73, &qword_27DAF37C0, &unk_22FFB5C60);
    v76 = v98;
    goto LABEL_64;
  }

  v77 = v88;
  sub_22FEBF3A4(v73, v88, &qword_27DAF37C0, &unk_22FFB5C60);
  v78 = v74(v73 + v71, 1, v66);
  v62 = v103;
  if (v78 != 1)
  {
    v79 = v87;
    sub_22FEEC1F8(v73 + v71, v87, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v80 = static PrivateCloudCompute_TransparencyLog_ATLogProofs.== infix(_:_:)(v77, v79);
    sub_22FEEC198(v79, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEEC198(v77, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEAEA34(v73, &qword_27DAF37C0, &unk_22FFB5C60);
    v76 = v98;
    if ((v80 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_64:
    sub_22FFB0F88();
    sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v81 = v97;
    v82 = sub_22FFB1478();
    sub_22FEEC198(v81, type metadata accessor for Proto_TransparencyProofs);
    sub_22FEEC198(v76, type metadata accessor for Proto_TransparencyProofs);
    v16 = v90;
    sub_22FEAEA34(v90, &qword_27DAF2118, &unk_22FFB5C70);
    v28 = v100;
    v61 = v101;
    if ((v82 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

  sub_22FEEC198(v77, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_72:
  sub_22FEAEA34(v73, &qword_27DAF2110, &qword_22FFB7B90);
  v76 = v98;
LABEL_73:
  sub_22FEEC198(v97, type metadata accessor for Proto_TransparencyProofs);
  sub_22FEEC198(v76, type metadata accessor for Proto_TransparencyProofs);
  sub_22FEAEA34(v90, &qword_27DAF2118, &unk_22FFB5C70);
LABEL_74:
  sub_22FEEC198(v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  sub_22FEEC198(v22, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
LABEL_75:
  v83 = 0;
  return v83 & 1;
}