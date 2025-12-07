__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_197A64144(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_197A64184(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_197A6421C()
{
  if (!qword_1EAF4AF98)
  {
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF4AF98);
    }
  }
}

void sub_197A64294(uint64_t a1)
{
  sub_197A6421C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_111();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 56));
  }

  v4 = OUTLINED_FUNCTION_68_8();
  type metadata accessor for ClientData(v4);
  v5 = OUTLINED_FUNCTION_177(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_76_1();
  if (v3)
  {
    *(v1 + 56) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for ClientData(0);
    v5 = OUTLINED_FUNCTION_177(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_197A64418(uint64_t a1)
{
  sub_197A6421C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_197A644DC(uint64_t a1)
{
  sub_197A6421C();
  if (v1 <= 0x3F)
  {
    sub_197A64750(319, &qword_1ED87EA00, type metadata accessor for ClientData, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_197A64750(319, &qword_1EAF4AFD0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_197A64600(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_197A646A4(uint64_t a1)
{
  sub_197A64750(319, &qword_1ED880FB0, type metadata accessor for ClientData, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_197A64750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_197A647B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197A64808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_197A6486C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_67_11(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_98_5();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_67_11(v3);
}

uint64_t sub_197A648B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_197A64980(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_67_11(-1);
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
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_67_11(v8);
}

_BYTE *sub_197A64A04(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_6(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_10(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_80_6(result, v6);
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_197A64AE0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_67_11(-1);
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
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_67_11(v8);
}

_BYTE *sub_197A64B64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_6(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_10(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_80_6(result, v6);
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_197A64C30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_67_11(-1);
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
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_67_11((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_67_11(v8);
}

_BYTE *sub_197A64CB4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_6(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_10(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_80_6(result, v6);
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteIPCRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_197A64E9C(_BYTE *result, int a2, int a3)
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

unint64_t sub_197A64F4C()
{
  result = qword_1EAF4AFF8;
  if (!qword_1EAF4AFF8)
  {
    result = swift_getWitnessTable(byte_197A9F664, &type metadata for RemoteIPCRequest.CheckAvailabilityRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4AFF8);
  }

  return result;
}

unint64_t sub_197A64FA4()
{
  result = qword_1EAF4B000;
  if (!qword_1EAF4B000)
  {
    result = swift_getWitnessTable(asc_197A9F71C, &type metadata for RemoteIPCRequest.FetchNextStreamResultCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B000);
  }

  return result;
}

unint64_t sub_197A64FFC()
{
  result = qword_1EAF4B008;
  if (!qword_1EAF4B008)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B008);
  }

  return result;
}

unint64_t sub_197A65054()
{
  result = qword_1EAF4B010;
  if (!qword_1EAF4B010)
  {
    result = swift_getWitnessTable(byte_197A9F88C, &type metadata for RemoteIPCRequest.ExecuteRemoteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B010);
  }

  return result;
}

unint64_t sub_197A650AC()
{
  result = qword_1EAF4B018;
  if (!qword_1EAF4B018)
  {
    result = swift_getWitnessTable(byte_197A9F944, &type metadata for RemoteIPCRequest.IsVersionSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B018);
  }

  return result;
}

unint64_t sub_197A65104()
{
  result = qword_1EAF4B020;
  if (!qword_1EAF4B020)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for RemoteIPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B020);
  }

  return result;
}

unint64_t sub_197A6515C()
{
  result = qword_1EAF4B028;
  if (!qword_1EAF4B028)
  {
    result = swift_getWitnessTable(byte_197A9FAB4, &type metadata for RemoteIPCRequest.IsVersionSupported.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B028);
  }

  return result;
}

unint64_t sub_197A651B4()
{
  result = qword_1EAF4B030;
  if (!qword_1EAF4B030)
  {
    result = swift_getWitnessTable(aW_3, &type metadata for RemoteIPCRequest.IsVersionSupported.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B030);
  }

  return result;
}

unint64_t sub_197A6520C()
{
  result = qword_1EAF4B038;
  if (!qword_1EAF4B038)
  {
    result = swift_getWitnessTable(asc_197A9FC24, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B038);
  }

  return result;
}

unint64_t sub_197A65264()
{
  result = qword_1EAF4B040;
  if (!qword_1EAF4B040)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B040);
  }

  return result;
}

unint64_t sub_197A652BC()
{
  result = qword_1EAF4B048;
  if (!qword_1EAF4B048)
  {
    result = swift_getWitnessTable(byte_197A9FD94, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B048);
  }

  return result;
}

unint64_t sub_197A65314()
{
  result = qword_1EAF4B050;
  if (!qword_1EAF4B050)
  {
    result = swift_getWitnessTable(byte_197A9FE4C, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B050);
  }

  return result;
}

unint64_t sub_197A6536C()
{
  result = qword_1EAF4B058;
  if (!qword_1EAF4B058)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B058);
  }

  return result;
}

unint64_t sub_197A653C4()
{
  result = qword_1EAF4B060;
  if (!qword_1EAF4B060)
  {
    result = swift_getWitnessTable(byte_197A9FFBC, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B060);
  }

  return result;
}

unint64_t sub_197A6541C()
{
  result = qword_1EAF4B068;
  if (!qword_1EAF4B068)
  {
    result = swift_getWitnessTable(aSWx, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B068);
  }

  return result;
}

unint64_t sub_197A65474()
{
  result = qword_1EAF4B070;
  if (!qword_1EAF4B070)
  {
    result = swift_getWitnessTable(byte_197AA012C, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B070);
  }

  return result;
}

unint64_t sub_197A654CC()
{
  result = qword_1EAF4B078;
  if (!qword_1EAF4B078)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B078);
  }

  return result;
}

unint64_t sub_197A65524()
{
  result = qword_1EAF4B080;
  if (!qword_1EAF4B080)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B080);
  }

  return result;
}

unint64_t sub_197A6557C()
{
  result = qword_1EAF4B088;
  if (!qword_1EAF4B088)
  {
    result = swift_getWitnessTable(asc_197A9FFE4, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B088);
  }

  return result;
}

unint64_t sub_197A655D4()
{
  result = qword_1EAF4B090;
  if (!qword_1EAF4B090)
  {
    result = swift_getWitnessTable(asc_197AA000C, &type metadata for RemoteIPCRequest.CheckAvailabilityRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B090);
  }

  return result;
}

unint64_t sub_197A6562C()
{
  result = qword_1EAF4B098;
  if (!qword_1EAF4B098)
  {
    result = swift_getWitnessTable(aSW_0, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B098);
  }

  return result;
}

unint64_t sub_197A65684()
{
  result = qword_1EAF4B0A0;
  if (!qword_1EAF4B0A0)
  {
    result = swift_getWitnessTable(aW_4, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0A0);
  }

  return result;
}

unint64_t sub_197A656DC()
{
  result = qword_1EAF4B0A8;
  if (!qword_1EAF4B0A8)
  {
    result = swift_getWitnessTable(asc_197A9FE74, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0A8);
  }

  return result;
}

unint64_t sub_197A65734()
{
  result = qword_1EAF4B0B0;
  if (!qword_1EAF4B0B0)
  {
    result = swift_getWitnessTable(byte_197A9FE9C, &type metadata for RemoteIPCRequest.FetchNextStreamingResult.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0B0);
  }

  return result;
}

unint64_t sub_197A6578C()
{
  result = qword_1EAF4B0B8;
  if (!qword_1EAF4B0B8)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0B8);
  }

  return result;
}

unint64_t sub_197A657E4()
{
  result = qword_1EAF4B0C0;
  if (!qword_1EAF4B0C0)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0C0);
  }

  return result;
}

unint64_t sub_197A6583C()
{
  result = qword_1EAF4B0C8;
  if (!qword_1EAF4B0C8)
  {
    result = swift_getWitnessTable(byte_197A9FD04, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0C8);
  }

  return result;
}

unint64_t sub_197A65894()
{
  result = qword_1EAF4B0D0;
  if (!qword_1EAF4B0D0)
  {
    result = swift_getWitnessTable(byte_197A9FD2C, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0D0);
  }

  return result;
}

unint64_t sub_197A658EC()
{
  result = qword_1EAF4B0D8;
  if (!qword_1EAF4B0D8)
  {
    result = swift_getWitnessTable(byte_197A9FC4C, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0D8);
  }

  return result;
}

unint64_t sub_197A65944()
{
  result = qword_1EAF4B0E0;
  if (!qword_1EAF4B0E0)
  {
    result = swift_getWitnessTable(byte_197A9FC74, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0E0);
  }

  return result;
}

unint64_t sub_197A6599C()
{
  result = qword_1EAF4B0E8;
  if (!qword_1EAF4B0E8)
  {
    result = swift_getWitnessTable(asc_197A9FB94, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0E8);
  }

  return result;
}

unint64_t sub_197A659F4()
{
  result = qword_1EAF4B0F0;
  if (!qword_1EAF4B0F0)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for RemoteIPCRequest.ExecuteRemoteRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0F0);
  }

  return result;
}

unint64_t sub_197A65A4C()
{
  result = qword_1EAF4B0F8;
  if (!qword_1EAF4B0F8)
  {
    result = swift_getWitnessTable(byte_197A9FADC, &type metadata for RemoteIPCRequest.IsVersionSupported.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B0F8);
  }

  return result;
}

unint64_t sub_197A65AA4()
{
  result = qword_1EAF4B100;
  if (!qword_1EAF4B100)
  {
    result = swift_getWitnessTable(asc_197A9FB04, &type metadata for RemoteIPCRequest.IsVersionSupported.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B100);
  }

  return result;
}

unint64_t sub_197A65AFC()
{
  result = qword_1EAF4B108;
  if (!qword_1EAF4B108)
  {
    result = swift_getWitnessTable(aW_5, &type metadata for RemoteIPCRequest.IsVersionSupported.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B108);
  }

  return result;
}

unint64_t sub_197A65B54()
{
  result = qword_1EAF4B110;
  if (!qword_1EAF4B110)
  {
    result = swift_getWitnessTable(byte_197A9FA4C, &type metadata for RemoteIPCRequest.IsVersionSupported.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B110);
  }

  return result;
}

unint64_t sub_197A65BAC()
{
  result = qword_1EAF4B118;
  if (!qword_1EAF4B118)
  {
    result = swift_getWitnessTable(asc_197A9F8B4, &type metadata for RemoteIPCRequest.IsVersionSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B118);
  }

  return result;
}

unint64_t sub_197A65C04()
{
  result = qword_1EAF4B120;
  if (!qword_1EAF4B120)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for RemoteIPCRequest.IsVersionSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B120);
  }

  return result;
}

unint64_t sub_197A65C5C()
{
  result = qword_1EAF4B128;
  if (!qword_1EAF4B128)
  {
    result = swift_getWitnessTable(byte_197A9F7FC, &type metadata for RemoteIPCRequest.ExecuteRemoteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B128);
  }

  return result;
}

unint64_t sub_197A65CB4()
{
  result = qword_1EAF4B130;
  if (!qword_1EAF4B130)
  {
    result = swift_getWitnessTable(asc_197A9F824, &type metadata for RemoteIPCRequest.ExecuteRemoteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B130);
  }

  return result;
}

unint64_t sub_197A65D0C()
{
  result = qword_1EAF4B138;
  if (!qword_1EAF4B138)
  {
    result = swift_getWitnessTable(byte_197A9F744, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B138);
  }

  return result;
}

unint64_t sub_197A65D64()
{
  result = qword_1EAF4B140;
  if (!qword_1EAF4B140)
  {
    result = swift_getWitnessTable(aSW0, &type metadata for RemoteIPCRequest.ExecuteRemoteStreamingRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B140);
  }

  return result;
}

unint64_t sub_197A65DBC()
{
  result = qword_1EAF4B148;
  if (!qword_1EAF4B148)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for RemoteIPCRequest.FetchNextStreamResultCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B148);
  }

  return result;
}

unint64_t sub_197A65E14()
{
  result = qword_1EAF4B150;
  if (!qword_1EAF4B150)
  {
    result = swift_getWitnessTable(asc_197A9F6B4, &type metadata for RemoteIPCRequest.FetchNextStreamResultCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B150);
  }

  return result;
}

unint64_t sub_197A65E6C()
{
  result = qword_1EAF4B158;
  if (!qword_1EAF4B158)
  {
    result = swift_getWitnessTable(byte_197A9F5D4, &type metadata for RemoteIPCRequest.CheckAvailabilityRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B158);
  }

  return result;
}

unint64_t sub_197A65EC4()
{
  result = qword_1EAF4B160;
  if (!qword_1EAF4B160)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for RemoteIPCRequest.CheckAvailabilityRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B160);
  }

  return result;
}

unint64_t sub_197A65F1C()
{
  result = qword_1EAF4B168;
  if (!qword_1EAF4B168)
  {
    result = swift_getWitnessTable(byte_197A9F96C, &type metadata for RemoteIPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B168);
  }

  return result;
}

unint64_t sub_197A65F74()
{
  result = qword_1EAF4B170[0];
  if (!qword_1EAF4B170[0])
  {
    result = swift_getWitnessTable(byte_197A9F994, &type metadata for RemoteIPCRequest.CodingKeys, v0, v1);
    atomic_store(result, qword_1EAF4B170);
  }

  return result;
}

uint64_t ResponseStreamOverridingError.init(from:overrideError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = a3;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19);
  sub_197A87C98();
  (*(v17 + 8))(a1, a6);
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  result = type metadata accessor for ResponseStreamOverridingError(0, v24);
  v21 = (a9 + *(result + 60));
  v22 = v23;
  *v21 = a2;
  v21[1] = v22;
  return result;
}

uint64_t _s20ModelManagerServices29ResponseStreamOverridingErrorV4nextxSgyYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v5[4] = v3;
  v5[5] = a3;
  v5[3] = a2;
  v7 = OUTLINED_FUNCTION_6_14();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  OUTLINED_FUNCTION_6_14();
  swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_197A6633C;

  return MEMORY[0x1EEE6D8C8](a1);
}

uint64_t sub_197A6633C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A66460, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A66460()
{
  v1 = *(v0[4] + *(v0[3] + 60));
  v0[2] = v0[10];
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_197A665B4;
  v3 = v0[8];
  v4 = v0[5];

  return v6(v4, v3);
}

uint64_t sub_197A665B4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_197A66700, 0, 0);
}

uint64_t sub_197A66700()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[10];
  swift_willThrowTyped(v0[5], *(v0[3] + 24), *(v0[3] + 40));

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t _s20ModelManagerServices29ResponseStreamOverridingErrorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v6;
  v9[5] = v5;
  v9[6] = a5;
  v9[3] = a3;
  v9[4] = a4;
  v9[2] = a2;
  v11 = OUTLINED_FUNCTION_5_13();
  v9[7] = v11;
  v9[8] = *(v11 - 8);
  v9[9] = swift_task_alloc();
  v12 = swift_task_alloc();
  v9[10] = v12;
  v9[11] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_5_13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_task_alloc();
  v9[12] = v15;
  *v15 = v9;
  v15[1] = sub_197A66928;

  return MEMORY[0x1EEE6D8D0](a1, a2, a3, v12, v13, AssociatedConformanceWitness);
}

uint64_t sub_197A66928()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = sub_197A87B58();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v3 + 104) = v9;
    *(v3 + 112) = v11;
    v14 = sub_197A66B14;
    v15 = v9;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v12 = sub_197A87B58();
      v11 = v13;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v14 = sub_197A66AA4;
    v15 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v14, v15, v11);
}

uint64_t sub_197A66AA4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A66B14()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v0[8] + 32);
  v6(v1, v0[10], v3);
  v6(v2, v1, v3);
  v11 = (*(v4 + *(v5 + 60)) + **(v4 + *(v5 + 60)));
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_197A66C68;
  v8 = v0[9];
  v9 = v0[6];

  return v11(v9, v8);
}

uint64_t sub_197A66C68()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_197A66D7C, v5, v4);
}

uint64_t sub_197A66D7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  swift_willThrowTyped(v0[6], *(v0[4] + 24), *(v0[4] + 40));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A66E4C(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ResponseStreamOverridingError<A, B, C>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A66E88(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ResponseStreamOverridingError<A, B, C>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A66EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ResponseStreamOverridingError.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_197A66F48(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(a2 + 24);
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_197A67060;

  return _s20ModelManagerServices29ResponseStreamOverridingErrorV4nextxSgyYaq_YKF(a1, a2, v6);
}

uint64_t sub_197A67060()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3[4] + 32);
    v7(v3[5], v3[6], v3[3]);
    v8 = sub_197A88208();
    v9 = v3[5];
    if (v8)
    {
      (*(v3[4] + 8))(v3[5], v3[3]);
    }

    else
    {
      v10 = v3[3];
      swift_allocError();
      v7(v11, v9, v10);
    }
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

uint64_t sub_197A67220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v5[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_197A67344;

  return _s20ModelManagerServices29ResponseStreamOverridingErrorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v11);
}

uint64_t sub_197A67344()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A67464(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_197A67898();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_197A67504(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_197A6769C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v9 + 1;
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

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              v18[1] = 0;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_197A67898()
{
  result = qword_1EAF4B1F8;
  if (!qword_1EAF4B1F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EAF4B1F8);
  }

  return result;
}

uint64_t sub_197A678F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563697665446E6FLL && a2 == 0xEE0079726F6D654DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A6799C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A678F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A679C8(uint64_t a1)
{
  v2 = sub_197A67B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A67A04(uint64_t a1)
{
  v2 = sub_197A67B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetCost.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B200, &qword_197AA0780);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A67B68();
  sub_197A883D8();
  sub_197A88128();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_197A67B68()
{
  result = qword_1ED87D3D8[0];
  if (!qword_1ED87D3D8[0])
  {
    result = swift_getWitnessTable(aE_15, &type metadata for AssetCost.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED87D3D8);
  }

  return result;
}

uint64_t AssetCost.hashValue.getter()
{
  v1 = *v0;
  sub_197A882F8();
  MEMORY[0x19A8EB600](v1);
  return sub_197A88358();
}

uint64_t AssetCost.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B208, &qword_197AA0788);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A67B68();
  sub_197A883A8();
  if (!v2)
  {
    v11 = sub_197A88018();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_197A67D4C(uint64_t a1)
{
  v2 = *v1;
  sub_197A882F8();
  MEMORY[0x19A8EB600](v2);
  return sub_197A88358();
}

void static AssetCost.- infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (*a2 < *a3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_14(a1);
  }
}

void *sub_197A67DF4(void *result, uint64_t a2)
{
  if (__CFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

unint64_t *sub_197A67E18(unint64_t *result, unint64_t a2)
{
  if (*result < a2)
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

uint64_t AssetInfo.identifier.getter()
{
  v1 = *v0;
  sub_197A878A8();
  return v1;
}

uint64_t AssetInfo.version.getter()
{
  v1 = *(v0 + 16);
  sub_197A878A8();
  return v1;
}

uint64_t AssetInfo.timeLastRequestEnded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetInfo(0) + 32);
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AssetInfo(uint64_t a1)
{
  result = qword_1ED87D3A0;
  if (!qword_1ED87D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetInfo.init(identifier:cost:version:hasForegroundSession:timeLastRequestEnded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = v10;
  *(a8 + 40) = a6;
  v11 = *(type metadata accessor for AssetInfo(0) + 32);
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  v13 = *(v12 + 32);

  return v13(a8 + v11, a7);
}

uint64_t sub_197A67FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1953722211 && a2 == 0xE400000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000197AA4960 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x8000000197AA3410 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

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

unint64_t sub_197A681A4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 1953722211;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A68244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A67FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A6826C(uint64_t a1)
{
  v2 = sub_197A684F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A682A8(uint64_t a1)
{
  v2 = sub_197A684F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B210, &qword_197AA0790);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A684F4();
  sub_197A883D8();
  v15 = 0;
  OUTLINED_FUNCTION_58();
  sub_197A880B8();
  if (!v2)
  {
    v14 = 1;
    OUTLINED_FUNCTION_58();
    sub_197A880B8();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1979C3CD4();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v12[14] = 3;
    OUTLINED_FUNCTION_58();
    sub_197A880C8();
    type metadata accessor for AssetInfo(0);
    v12[13] = 4;
    sub_197A87258();
    sub_197A688EC(&qword_1ED87F858, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_197A684F4()
{
  result = qword_1ED87D3C0;
  if (!qword_1ED87D3C0)
  {
    result = swift_getWitnessTable(byte_197AA0B04, &type metadata for AssetInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D3C0);
  }

  return result;
}

uint64_t AssetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_197A87258();
  OUTLINED_FUNCTION_2();
  v26 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B218, &qword_197AA0798);
  OUTLINED_FUNCTION_2();
  v28 = v9;
  v29 = v8;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for AssetInfo(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A684F4();
  v30 = v12;
  v17 = v31;
  sub_197A883A8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v3;
  v37 = 0;
  OUTLINED_FUNCTION_3_18();
  v18 = v16;
  *v16 = sub_197A87FA8();
  *(v16 + 1) = v19;
  v25[2] = v19;
  v36 = 1;
  OUTLINED_FUNCTION_3_18();
  *(v16 + 2) = sub_197A87FA8();
  *(v16 + 3) = v20;
  v35 = 2;
  sub_1979C3ED0();
  v25[1] = 0;
  sub_197A87FD8();
  *(v16 + 4) = v32;
  v34 = 3;
  OUTLINED_FUNCTION_3_18();
  v16[40] = sub_197A87FB8() & 1;
  v33 = 4;
  sub_197A688EC(&qword_1ED87E9F8, MEMORY[0x1E6969558]);
  v21 = v31;
  sub_197A87FD8();
  v22 = OUTLINED_FUNCTION_1_17();
  v23(v22);
  (*(v26 + 32))(v18 + *(v13 + 32), v7, v21);
  sub_197A46194(v18, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_197A461F8(v18);
}

uint64_t sub_197A688EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_197A87258();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197A68930()
{
  result = qword_1EAF48530;
  if (!qword_1EAF48530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCost, &type metadata for AssetCost, v0, v1);
    atomic_store(result, &qword_1EAF48530);
  }

  return result;
}

uint64_t sub_197A689C0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetInfo.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetCost(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetCost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_197A68A58(uint64_t a1)
{
  result = sub_197A87258();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetCost.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_197A68C74()
{
  result = qword_1EAF4B220;
  if (!qword_1EAF4B220)
  {
    result = swift_getWitnessTable(asc_197AA0A24, &type metadata for AssetCost.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B220);
  }

  return result;
}

unint64_t sub_197A68CCC()
{
  result = qword_1EAF4B228;
  if (!qword_1EAF4B228)
  {
    result = swift_getWitnessTable(aM_20, &type metadata for AssetInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B228);
  }

  return result;
}

unint64_t sub_197A68D24()
{
  result = qword_1ED87D3B0;
  if (!qword_1ED87D3B0)
  {
    result = swift_getWitnessTable(byte_197AA0A4C, &type metadata for AssetInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D3B0);
  }

  return result;
}

unint64_t sub_197A68D7C()
{
  result = qword_1ED87D3B8;
  if (!qword_1ED87D3B8)
  {
    result = swift_getWitnessTable(byte_197AA0A74, &type metadata for AssetInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D3B8);
  }

  return result;
}

unint64_t sub_197A68DD4()
{
  result = qword_1ED87D3C8;
  if (!qword_1ED87D3C8)
  {
    result = swift_getWitnessTable(asc_197AA0994, &type metadata for AssetCost.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D3C8);
  }

  return result;
}

unint64_t sub_197A68E2C()
{
  result = qword_1ED87D3D0;
  if (!qword_1ED87D3D0)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for AssetCost.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D3D0);
  }

  return result;
}

uint64_t sub_197A68F4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_197A68FBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_197A690F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

_BYTE *Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v13 = *a4;
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = v13;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13 & 1;
  return result;
}

uint64_t static Policy.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v25 = *(a1 + 72);
  v27 = *(a1 + 80);
  v10 = *(a2 + 1);
  v11 = a2[16];
  v12 = a2[17];
  v13 = *(a2 + 3);
  v14 = a2[32];
  v15 = *(a2 + 5);
  v16 = a2[48];
  v17 = *(a2 + 7);
  v28 = a2[64];
  v29 = *(a1 + 64);
  v24 = *(a2 + 9);
  v26 = a2[80];
  if ((sub_197958988(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v10)
    {
      v18 = v11;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if ((sub_1979577EC(v4, v12) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v29)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v21 = v28;
    if (v9 != v17)
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v27)
  {
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = v26;
    if (v25 != v24)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_197A69570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F507465737361 && a2 == 0xEB00000000796369;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x754279726F6D656DLL && a2 == 0xEC00000074656764;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72506C65636E6163 && a2 == 0xEE00797469726F69;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000197AA4980 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000197AA49A0 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x8000000197AA49C0 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000020 && 0x8000000197AA49F0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_197A88218();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_197A697B8(char a1)
{
  result = 0x6C6F507465737361;
  switch(a1)
  {
    case 1:
      result = 0x754279726F6D656DLL;
      break;
    case 2:
      result = 0x72506C65636E6163;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A698B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A69570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A698E0(uint64_t a1)
{
  v2 = sub_197A69BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A6991C(uint64_t a1)
{
  v2 = sub_197A69BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Policy.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B230, &qword_197AA0BF0);
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = *v1;
  v24 = *(v1 + 1);
  v10 = v1[16];
  v22 = v1[17];
  v23 = v10;
  v21 = *(v1 + 3);
  v20 = v1[32];
  v17 = *(v1 + 5);
  v18 = v1[48];
  v15[1] = *(v1 + 7);
  v16 = v1[64];
  v19 = *(v1 + 9);
  v11 = v1[80];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A69BF4();
  sub_197A883D8();
  v34 = v9;
  v33 = 0;
  sub_197A69C48();
  v12 = v25;
  sub_197A880E8();
  if (!v12)
  {
    v13 = v22;
    LODWORD(v25) = v11;
    v32 = 1;
    OUTLINED_FUNCTION_0_24();
    sub_197A880A8();
    v31 = v13;
    v30 = 2;
    sub_1979A6BD0();
    sub_197A880E8();
    v29 = 3;
    OUTLINED_FUNCTION_0_24();
    sub_197A88078();
    v28 = 4;
    OUTLINED_FUNCTION_0_24();
    sub_197A88078();
    v27 = 5;
    OUTLINED_FUNCTION_0_24();
    sub_197A88078();
    v26 = 6;
    OUTLINED_FUNCTION_0_24();
    sub_197A88088();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_197A69BF4()
{
  result = qword_1EAF48568;
  if (!qword_1EAF48568)
  {
    result = swift_getWitnessTable(byte_197AA0EC4, &type metadata for Policy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48568);
  }

  return result;
}

unint64_t sub_197A69C48()
{
  result = qword_1EAF486A0[0];
  if (!qword_1EAF486A0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetPolicy, &type metadata for AssetPolicy, v0, v1);
    atomic_store(result, qword_1EAF486A0);
  }

  return result;
}

uint64_t Policy.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v16 = *(v2 + 56);
  v17 = *(v2 + 72);
  v18 = *(v2 + 80);
  sub_197A879B8();

  sub_197A88328();
  if (v5 != 1)
  {
    MEMORY[0x19A8EB600](v4);
  }

  sub_19799E8BC(a1, v6);
  if (v8)
  {
    sub_197A88328();
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_197A88328();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x19A8EB600](v14);
    if (!v10)
    {
LABEL_5:
      sub_197A88328();
      if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x19A8EB600](v12);
      if (!v11)
      {
        goto LABEL_9;
      }

LABEL_18:
      sub_197A88328();
      goto LABEL_19;
    }
  }

  sub_197A88328();
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_9:
  sub_197A88328();
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x19A8EB600](v13);
LABEL_19:
  if (v18)
  {
    return sub_197A88328();
  }

  sub_197A88328();
  return MEMORY[0x19A8EB5D0](v17);
}

uint64_t Policy.hashValue.getter()
{
  sub_197A882F8();
  Policy.hash(into:)(v1);
  return sub_197A88358();
}

uint64_t Policy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B238, &qword_197AA0BF8);
  OUTLINED_FUNCTION_0_8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A69BF4();
  sub_197A883A8();
  if (!v2)
  {
    v43[0] = 0;
    sub_197A6A29C();
    OUTLINED_FUNCTION_3_19(&type metadata for AssetPolicy, v43);
    v11 = v43[1];
    v42[2] = 1;
    OUTLINED_FUNCTION_1_18();
    v12 = sub_197A87F98();
    v39 = v13 & 1;
    v42[0] = 2;
    sub_197978D10();
    OUTLINED_FUNCTION_3_19(&type metadata for RequestPriority, v42);
    v32 = v42[1];
    v41 = 3;
    OUTLINED_FUNCTION_1_18();
    v31 = sub_197A87F68();
    v38 = v14 & 1;
    v40 = 4;
    OUTLINED_FUNCTION_1_18();
    v30 = sub_197A87F68();
    v37 = v15 & 1;
    v34 = 5;
    OUTLINED_FUNCTION_1_18();
    v29 = sub_197A87F68();
    v36 = v16 & 1;
    v33 = 6;
    OUTLINED_FUNCTION_1_18();
    v17 = sub_197A87F78();
    v20 = v19;
    v21 = *(v7 + 8);
    v28 = v17;
    v21(v10, v3);
    v35 = v20 & 1;
    v22 = v39;
    v23 = v38;
    v24 = v37;
    v25 = v36;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v22;
    *(a2 + 17) = v32;
    *(a2 + 24) = v31;
    *(a2 + 32) = v23;
    v26 = v29;
    *(a2 + 40) = v30;
    *(a2 + 48) = v24;
    *(a2 + 56) = v26;
    *(a2 + 64) = v25;
    *(a2 + 72) = v28;
    *(a2 + 80) = v20 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_197A6A138(uint64_t a1)
{
  sub_197A882F8();
  Policy.hash(into:)(v2);
  return sub_197A88358();
}

ModelManagerServices::AssetPolicy_optional __swiftcall AssetPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

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

uint64_t AssetPolicy.rawValue.getter()
{
  if (*v0)
  {
    return 0x614364616F6C6E75;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_197A6A274@<X0>(uint64_t *a1@<X8>)
{
  result = AssetPolicy.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_197A6A29C()
{
  result = qword_1EAF48688;
  if (!qword_1EAF48688)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetPolicy, &type metadata for AssetPolicy, v0, v1);
    atomic_store(result, &qword_1EAF48688);
  }

  return result;
}

unint64_t sub_197A6A2F4()
{
  result = qword_1EAF4B240;
  if (!qword_1EAF4B240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Policy, &type metadata for Policy, v0, v1);
    atomic_store(result, &qword_1EAF4B240);
  }

  return result;
}

unint64_t sub_197A6A34C()
{
  result = qword_1EAF48698;
  if (!qword_1EAF48698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetPolicy, &type metadata for AssetPolicy, v0, v1);
    atomic_store(result, &qword_1EAF48698);
  }

  return result;
}

uint64_t sub_197A6A450(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[81])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197A6A48C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Policy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_197A6A6A4()
{
  result = qword_1EAF4B248;
  if (!qword_1EAF4B248)
  {
    result = swift_getWitnessTable(byte_197AA0E9C, &type metadata for Policy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B248);
  }

  return result;
}

unint64_t sub_197A6A6FC()
{
  result = qword_1EAF48558;
  if (!qword_1EAF48558)
  {
    result = swift_getWitnessTable(byte_197AA0E0C, &type metadata for Policy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48558);
  }

  return result;
}

unint64_t sub_197A6A754()
{
  result = qword_1EAF48560;
  if (!qword_1EAF48560)
  {
    result = swift_getWitnessTable(byte_197AA0E34, &type metadata for Policy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48560);
  }

  return result;
}

unint64_t sub_197A6A7A8()
{
  result = qword_1EAF48690;
  if (!qword_1EAF48690)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetPolicy, &type metadata for AssetPolicy, v0, v1);
    atomic_store(result, &qword_1EAF48690);
  }

  return result;
}

uint64_t TaskCancellingXPCPeerHandler.__allocating_init(handler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TaskCancellingXPCPeerHandler.init(handler:)(a1);
  return v2;
}

uint64_t sub_197A6A83C()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87D2A8);
  __swift_project_value_buffer(v0, qword_1ED87D2A8);
  return sub_197A875F8();
}

uint64_t TaskCancellingXPCPeerHandler.init(handler:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  type metadata accessor for TaskCancellingIPCPeerHandler(0, v4, *(v8 + 88), v9);
  (*(v5 + 16))(v7, a1, v4);
  v10 = TaskCancellingIPCPeerHandler.__allocating_init(handler:)(v7);
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t TaskCancellingXPCPeerHandler.handleCancellation(error:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_197A87768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED87D2A0 != -1)
  {
    swift_once();
  }

  v8 = sub_197A87608();
  __swift_project_value_buffer(v8, qword_1ED87D2A8);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_197A875E8();
  v11 = sub_197A87D78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_1979AB594();
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_197941000, v10, v11, "TaskCancellingXPCPeerHandler cancelling with reason: %@", v13, 0xCu);
    sub_197A6ACAC(v14);
    MEMORY[0x19A8EBE00](v14, -1, -1);
    MEMORY[0x19A8EBE00](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_1979D79E4();
}

uint64_t TaskCancellingXPCPeerHandler.__deallocating_deinit()
{
  TaskCancellingXPCPeerHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_197A6ACAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48A90, &qword_197A891A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197A6AD40(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v54 = *MEMORY[0x1E69E9840];
  v48[0] = a1;
  v48[1] = a2;
  *&v51 = a1;
  *(&v51 + 1) = a2;
  sub_197A878A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B270, &qword_197AA11F0);
  if (swift_dynamicCast())
  {
    sub_197945EF8(v49, &v52);
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    sub_197A870C8();
    v49[0] = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    goto LABEL_59;
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_197A6B714(v49);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v49[0] = a1;
    *(&v49[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v49;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_197A87E98();
  }

  sub_197A6B77C(v5, v6, &v52);
  v7 = *(&v52 + 1);
  v8 = v52;
  if (*(&v52 + 1) >> 60 != 15)
  {
    v49[0] = v52;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v49[0] = MEMORY[0x19A8EA440](v9);
  *(&v49[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v49[0]);
  v43[2] = v48;
  v11 = sub_197A6B898(sub_197A6BE6C, v43);
  v13 = *(&v49[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v49[0]);
  switch(*(&v49[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v49[0]) - LODWORD(v49[0]);
      if (__OFSUB__(DWORD1(v49[0]), v49[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v49[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v49[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v49[0] + 16);
      v21 = *(*&v49[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_197A87178();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v43[4] = v4;
      v44 = v8;
      v45 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v46 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v47 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v51 + 7) = 0;
      *&v51 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v49[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_2_18();
      v28 = sub_197A6BE88(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_197A879D8();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_197A87A08();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v52 = v14;
      *(&v52 + 1) = v47;
      v31 = *(&v52 + v29);
    }

    else
    {
      v30 = v46;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_197A87E98();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_2_18();
      v18 = sub_197A6BE88(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_2_18();
    v18 = sub_197A879E8();
LABEL_46:
    *(&v51 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_5_15();
      sub_197A87198();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_5_15();
    sub_197A87198();
    sub_197979B74(v44, v45);
    goto LABEL_58;
  }

  sub_197979B74(v44, v45);
LABEL_59:
  v38 = OUTLINED_FUNCTION_116();
  sub_197984D18(v38, v39);

  v40 = OUTLINED_FUNCTION_116();
  sub_197974AFC(v40, v41);
  return OUTLINED_FUNCTION_116();
}

uint64_t static AuditToken.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v13[0] = *a1;
  v13[1] = v2;
  v3 = a2[1];
  v12[0] = *a2;
  v12[1] = v3;
  sub_197974728(v13, v14);
  v4 = sub_197974728(v12, v13);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_116();
  v8 = MEMORY[0x19A8EA460](v7);
  sub_197974AFC(v4, v6);
  v9 = OUTLINED_FUNCTION_116();
  sub_197974AFC(v9, v10);
  return v8 & 1;
}

void __swiftcall AuditToken.init(_:)(ModelManagerServices::AuditToken *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->token.val = a2;
  *&retstr->token.val[2] = v2;
  *&retstr->token.val[4] = v3;
  *&retstr->token.val[6] = v4;
}

uint64_t AuditToken.hashValue.getter()
{
  sub_197A882F8();
  sub_197A88308();
  return sub_197A88358();
}

BOOL sub_197A6B4CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_197A87EF8();

  return v2 != 0;
}

uint64_t sub_197A6B51C(uint64_t a1)
{
  sub_197A882F8();
  AuditToken.hash(into:)();
  return sub_197A88358();
}

BOOL sub_197A6B568@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_197A6B4CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_197A6B5B4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A6B4CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A6B5EC(uint64_t a1)
{
  v2 = sub_19797450C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A6B628(uint64_t a1)
{
  v2 = sub_19797450C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_197A6B668()
{
  result = qword_1EAF4B260;
  if (!qword_1EAF4B260)
  {
    result = swift_getWitnessTable("Y~?W؇", &type metadata for AuditToken, v0, v1);
    atomic_store(result, &qword_1EAF4B260);
  }

  return result;
}

unint64_t sub_197A6B6C0()
{
  result = qword_1EAF4B268;
  if (!qword_1EAF4B268)
  {
    result = swift_getWitnessTable(byte_197AA1174, &type metadata for AuditToken.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B268);
  }

  return result;
}

uint64_t sub_197A6B714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF4B278, &qword_197AA11F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197A6B77C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_197A87128();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_197A87088();
      swift_allocObject();
      v8 = sub_197A87048();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_197A87168();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_197A6B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_197A6BD1C(sub_197A6BF44, v5, a1, a2);
}

uint64_t sub_197A6B898(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_197974AFC(v7, v6);
      *v5 = xmmword_197AA0F90;
      sub_197974AFC(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_197A87058() && __OFSUB__(v7, sub_197A87078()))
      {
        goto LABEL_24;
      }

      sub_197A87088();
      swift_allocObject();
      v14 = sub_197A87038();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_197A6BD80(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_197974AFC(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_197AA0F90;
      sub_197974AFC(0, 0xC000000000000000);
      sub_197A87138();
      v7 = v17;
      v10 = sub_197A6BD80(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_197974AFC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_197A6BC5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_197A87128();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x19A8EA400]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x19A8EA410]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_197A6BCD4(uint64_t result)
{
  if (result)
  {
    result = sub_197A87E68();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_197A6BD1C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_197A6BD80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_197A87058();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_197A87078();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_197A87068();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_197A6BE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_197A6B844(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_197A6BE88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_197A87A18();
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
    v5 = MEMORY[0x19A8EACB0](15, a1 >> 16);
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

uint64_t sub_197A6BF04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_197A6BCD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_197A6BF68()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF482D0);
  __swift_project_value_buffer(v0, qword_1EAF482D0);
  return sub_197A875F8();
}

uint64_t sub_197A6BFEC()
{
  sub_197A87298();
  sub_197954654(&qword_1ED880FE0, MEMORY[0x1E69695B8]);
  v0 = sub_197A87898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B288, &qword_197AA1278);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EAF48678 = result;
  return result;
}

uint64_t static _OSTransaction.transactions.getter()
{
  if (qword_1EAF48670 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_1EAF48670);
  }
}

uint64_t _OSTransaction.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  _OSTransaction.init(_:)(a1, a2);
  return v4;
}

uint64_t sub_197A6C120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_197A6C198(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_197A6C2A4(uint64_t a1)
{
  OUTLINED_FUNCTION_145();
  sub_197A88328();
  return sub_197A88358();
}

uint64_t sub_197A6C2FC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_145();
  a2(v5, a1);
  return sub_197A88358();
}

uint64_t sub_197A6C364()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_211_0();
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t sub_197A6C3C4(uint64_t a1, char a2)
{
  sub_197A882F8();
  sub_197A879B8();

  return sub_197A88358();
}

uint64_t sub_197A6C450(uint64_t a1, char a2)
{
  sub_197A882F8();
  sub_197A879B8();

  return sub_197A88358();
}

uint64_t sub_197A6C508(uint64_t a1)
{
  sub_197A882F8();
  OUTLINED_FUNCTION_211_0();
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t sub_197A6C568(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_197A882F8();
  a3(v6, a2);
  return sub_197A88358();
}

uint64_t sub_197A6C5B4(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A88328();
  return sub_197A88358();
}

uint64_t sub_197A6C5F8(uint64_t a1, char a2)
{
  sub_197A882F8();
  sub_197A879B8();

  return sub_197A88358();
}

uint64_t InferenceProviderXPCRequestDispatcher.__allocating_init(configuration:)()
{
  OUTLINED_FUNCTION_150_2();
  v0 = swift_allocObject();
  InferenceProviderXPCRequestDispatcher.init(configuration:)();
  return v0;
}

uint64_t sub_197A6C6D8()
{
  OUTLINED_FUNCTION_9();
  v0[16] = v1;
  v0[17] = v2;
  v3 = type metadata accessor for InferenceError.Context(0);
  v0[18] = v3;
  OUTLINED_FUNCTION_28(v3);
  v0[19] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v4);
  v0[20] = OUTLINED_FUNCTION_90_4();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A6C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v17 = *(v16 + 136);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v18 = sub_19796EA88(v17 + 112, v16 + 16);
  if (*(v16 + 56) == 1)
  {
    (*(v16 + 16))(v18);
    sub_197A7548C(v16 + 64);

    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_15();
  }

  else
  {
    sub_197A7510C(v16 + 16);
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v19 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v19, qword_1ED87D2C0);
    v20 = sub_197A875E8();
    v21 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v21))
    {
      OUTLINED_FUNCTION_95_8();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v22);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v29 = *(v16 + 176);
    v28 = *(v16 + 184);
    v30 = *(v16 + 152);
    a10 = *(v16 + 160);

    v31 = type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_4_14();
    sub_197973734(v32, 255, v33);
    a12 = v31;
    OUTLINED_FUNCTION_52_9();
    swift_allocError();
    a11 = v34;
    v35 = sub_197A87898();
    v36 = sub_197A87258();
    v37 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
    sub_197947A40(v28, &qword_1EAF48B20, &qword_197A89620);
    v40 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
    OUTLINED_FUNCTION_100_0();
    sub_197944528();
    *v30 = 0xD000000000000036;
    *(v30 + 8) = 0x8000000197AA4D10;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0xE000000000000000;
    *(v30 + 32) = 0;
    *(v30 + 40) = v35;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    sub_197944528();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a10, 1, v36);
    sub_197947A40(v29, &qword_1EAF48B20, &qword_197A89620);
    sub_197947A40(v28, &qword_1EAF48B20, &qword_197A89620);
    if (EnumTagSinglePayload == 1)
    {
      v44 = OUTLINED_FUNCTION_25_0();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v36);
      v47 = OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_64_0(v47, v48, v36);
      if (!v49)
      {
        sub_197947A40(*(v16 + 160), &qword_1EAF48B20, &qword_197A89620);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      v50 = OUTLINED_FUNCTION_100_0();
      v51(v50);
      OUTLINED_FUNCTION_56_0();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v36);
    }

    sub_19794B118();
    OUTLINED_FUNCTION_34_8();
    sub_197979D80();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_13();
  }

  OUTLINED_FUNCTION_30_0();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A6CBAC(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 180) = *v2;
  *(v3 + 188) = *(v2 + 8);
  return OUTLINED_FUNCTION_32_0(sub_197A6CBD4, a2);
}

uint64_t sub_197A6CBD4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    OUTLINED_FUNCTION_28_11();
LABEL_9:

    return v2();
  }

  sub_197961900(v1 + 16, v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (OUTLINED_FUNCTION_128_3(v3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v4 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v4, qword_1ED87D2C0);
    v5 = sub_197A875E8();
    v6 = sub_197A87D38();
    if (OUTLINED_FUNCTION_65(v6))
    {
      OUTLINED_FUNCTION_95_8();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v7);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v13 = *(v1 + 136);

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_4_14();
    sub_197973734(v14, 255, v15);
    OUTLINED_FUNCTION_52_9();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_201_0(v16, v17);
    swift_storeEnumTagMultiPayload();
    ModelManagerError.init(wrapping:)(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    OUTLINED_FUNCTION_15();
    goto LABEL_9;
  }

  v19 = *(v1 + 188);
  v20 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = *(v1 + 180);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v20);
  *(v1 + 168) = v22;
  *(v1 + 176) = v19;
  v24 = (*(v21 + 16) + **(v21 + 16));
  v23 = swift_task_alloc();
  *(v1 + 152) = v23;
  *v23 = v1;
  OUTLINED_FUNCTION_43(v23);

  return v24(v1 + 168, v20, v21);
}

uint64_t sub_197A6CEBC()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 192) = v3 & 1;
  }

  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A6CFD0()
{
  OUTLINED_FUNCTION_9();
  **(v0 + 136) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A6D054()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A6D0B0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_32_0(sub_197A6D0CC, a2);
}

uint64_t sub_197A6D0CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    OUTLINED_FUNCTION_28_11();
LABEL_9:

    return v2();
  }

  sub_197961900((v1 + 2), (v1 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (OUTLINED_FUNCTION_128_3(v3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 12);
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v4 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v4, qword_1ED87D2C0);
    v5 = sub_197A875E8();
    v6 = sub_197A87D38();
    if (OUTLINED_FUNCTION_65(v6))
    {
      OUTLINED_FUNCTION_95_8();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v7);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v13 = v1[17];

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_4_14();
    sub_197973734(v14, 255, v15);
    OUTLINED_FUNCTION_52_9();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_201_0(v16, v17);
    swift_storeEnumTagMultiPayload();
    ModelManagerError.init(wrapping:)(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
    OUTLINED_FUNCTION_15();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_67_12();
  OUTLINED_FUNCTION_17_2();
  v19 = swift_task_alloc();
  v1[20] = v19;
  *v19 = v1;
  v19[1] = sub_197A6D368;
  v20 = OUTLINED_FUNCTION_81_7(v1[19]);

  return v21(v20);
}

uint64_t sub_197A6D368()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *v8 = *v1;
  v7[21] = v0;

  v9 = v6[18];
  if (v0)
  {
    v10 = sub_197A6D524;
  }

  else
  {
    v7[22] = v3;
    v7[23] = v5;
    v10 = sub_197A6D49C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_197A6D49C()
{
  OUTLINED_FUNCTION_9();
  *v0[8].i64[1] = vextq_s8(v0[11], v0[11], 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(v0[1].i64);
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A6D524()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A6D580()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v3 + 184);
  if (v0)
  {
    v8 = sub_197A6D71C;
  }

  else
  {
    v8 = sub_197A6D67C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A6D67C()
{
  OUTLINED_FUNCTION_18();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  OUTLINED_FUNCTION_105();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A6D71C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v1, 255, v2);
  OUTLINED_FUNCTION_64_11();
  swift_allocError();
  OUTLINED_FUNCTION_15_11();
  sub_197979D80();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A6D7DC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v1, 255, v2);
  OUTLINED_FUNCTION_64_11();
  swift_allocError();
  OUTLINED_FUNCTION_15_11();
  sub_197979D80();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A6D890()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_193_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  OUTLINED_FUNCTION_28(v3);
  v0[5] = OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for RequestKey(0);
  v0[6] = v4;
  OUTLINED_FUNCTION_28(v4);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v5);
  v0[8] = OUTLINED_FUNCTION_78_0();
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_10(NextStreamResultsRequest);
  v0[9] = v7;
  v0[10] = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_225_0();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_158_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A6D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v26 = sub_197A87608();
  v27 = __swift_project_value_buffer(v26, qword_1ED87D2C0);
  v22[16] = v27;
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v28 = sub_197A875E8();
  v29 = sub_197A87D38();
  v30 = OUTLINED_FUNCTION_48(v29);
  v31 = v22[15];
  if (v30)
  {
    v32 = v22[7];
    swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_41_0();
    a11 = v47;
    *v27 = 136315394;
    OUTLINED_FUNCTION_2_20();
    sub_197969950();
    sub_19794B118();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v33 = OUTLINED_FUNCTION_205_0();
    sub_197947A40(v33, v34, &unk_197A8CE70);
    OUTLINED_FUNCTION_115_5();
    sub_197969A00(v31, v35);
    sub_197948834(v32, v23, &a11);

    OUTLINED_FUNCTION_142_3();
    *(v27 + 14) = v23;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v36, v37, v38, v39, v40, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(v22[14], type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);

    v41 = OUTLINED_FUNCTION_140();
    sub_197969A00(v41, v42);
  }

  sub_197969950();
  v22[17] = swift_allocObject();
  OUTLINED_FUNCTION_114_2();
  sub_197979D80();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v22[18] = v43;
  *v43 = v44;
  v43[1] = sub_197A6DCA4;
  OUTLINED_FUNCTION_142();

  return sub_197A770E0();
}

uint64_t sub_197A6DCA4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);
    v8 = sub_197A6DEB8;
  }

  else
  {
    v9 = *(v3 + 24);

    v8 = sub_197A6DDB4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A6DDB4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_108_3();
  sub_19794B118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_197A6DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_213();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[19];

  sub_197969950();
  sub_197969950();
  MEMORY[0x19A8EBBD0](v29);
  v30 = sub_197A875E8();
  v31 = sub_197A87D58();

  if (os_log_type_enabled(v30, v31))
  {
    a12 = v26[19];
    v32 = v26[12];
    v33 = v26[8];
    a9 = v26[6];
    a10 = v26[11];
    v34 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    a14 = a13;
    *v34 = 136315650;
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_120_1();
    sub_197969950();
    OUTLINED_FUNCTION_140();
    sub_19794B118();
    v35 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v37 = v36;
    sub_197947A40(v33, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_115_5();
    sub_197969A00(v32, v38);
    v39 = sub_197948834(v35, v37, &a14);

    *(v34 + 4) = v39;
    *(v34 + 12) = 1024;
    LODWORD(v39) = *(a10 + *(a9 + 20));
    sub_197969A00(a10, v33);
    *(v34 + 14) = v39;
    *(v34 + 18) = 2112;
    MEMORY[0x19A8EBBD0](a12);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 20) = v40;
    *a11 = v40;
    OUTLINED_FUNCTION_203_0();
    _os_log_impl(v41, v42, v43, v44, v45, 0x1Cu);
    sub_197947A40(a11, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    v46 = v26[12];
    sub_197969A00(v26[11], type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);

    sub_197969A00(v46, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_160_0();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_197A6E1A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_193_0(v1, v2);
  v3 = type metadata accessor for RequestKey(0);
  v0[5] = v3;
  OUTLINED_FUNCTION_28(v3);
  v0[6] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v4);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v5 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(0);
  OUTLINED_FUNCTION_28(v5);
  v0[8] = OUTLINED_FUNCTION_225_0();
  v0[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_158_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A6E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v26 = sub_197A87608();
  v27 = __swift_project_value_buffer(v26, qword_1ED87D2C0);
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v28 = sub_197A875E8();
  v29 = sub_197A87D78();
  v30 = OUTLINED_FUNCTION_48(v29);
  v31 = v22[9];
  if (v30)
  {
    v32 = v22[6];
    a9 = v22[5];
    swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_41_0();
    a11 = a10;
    *v27 = 136315394;
    OUTLINED_FUNCTION_2_20();
    sub_197969950();
    sub_19794B118();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v33 = OUTLINED_FUNCTION_205_0();
    sub_197947A40(v33, v34, &unk_197A8CE70);
    sub_197969A00(v31, type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake);
    sub_197948834(v32, v23, &a11);

    OUTLINED_FUNCTION_142_3();
    *(v27 + 14) = v23;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v35, v36, v37, v38, v39, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(v22[8], type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake);

    v40 = OUTLINED_FUNCTION_140();
    sub_197969A00(v40, v41);
  }

  sub_197A79A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t RequestKey.init(requestID:subrequestID:)@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  sub_19794B118();
  result = OUTLINED_FUNCTION_104_5();
  *(a2 + v5) = a1;
  return result;
}

uint64_t sub_197A6E524(uint64_t a1)
{
  v101 = a1;
  v2 = type metadata accessor for ClientData(0);
  v100 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v99 = &v90 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v98 = &v90 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v94 = &v90 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v90 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v90 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v90 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v90 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B328, &unk_197AA1AF8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v90 - v33;
  sub_197944528();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1 || (sub_197944528(), v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348), , LODWORD(v36) = v32[*(v36 + 64)], sub_197969A00(v32, type metadata accessor for ClientData), v36 == 1))
    {
      result = sub_197947A40(v34, &qword_1EAF499E0, &qword_197A92340);
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  sub_197947A40(v34, &qword_1EAF499E0, &qword_197A92340);
  v37 = &v24[*(v22 + 48)];
  v38 = v1;
  sub_197944528();
  sub_197944528();
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 == 2)
  {
    v53 = &qword_1EAF4B328;
    v54 = &unk_197AA1AF8;
    return sub_197947A40(v24, v53, v54);
  }

  if (v39 == 1)
  {
    sub_197947A40(v1, &qword_1EAF499E0, &qword_197A92340);
    sub_197944528();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
    v41 = *(v40 + 48);
    v42 = *&v28[v41];
    v43 = swift_getEnumCaseMultiPayload();
    if (!v43)
    {
      sub_197979D80();
      v65 = v94;
      result = sub_197979D80();
      v102 = v42;
      v66 = *(v42 + 24);
      v67 = v66 + 1;
      if (!__OFADD__(v66, 1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (*(v42 + 16) < v67 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_197A81F38(isUniquelyReferenced_nonNull_native, v67, 0);
          v42 = v102;
        }

        sub_197A822DC((v42 + 16));
        sub_197969A00(v65, type metadata accessor for ClientData);
        v69 = *(v40 + 48);
        v70 = *(v40 + 64);
        sub_197979D80();
        *(v38 + v69) = v42;
        *(v38 + v70) = 0;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (v43 == 1)
    {
      v44 = *(v37 + v41);
      v45 = *(v37 + *(v40 + 64));
      sub_197979D80();
      result = sub_197979D80();
      v102 = v42;
      v47 = *(v42 + 24);
      v48 = v47 + 1;
      if (!__OFADD__(v47, 1))
      {
        v49 = swift_isUniquelyReferenced_nonNull_native();
        if (*(v42 + 16) < v48 || (v49 & 1) == 0)
        {
          sub_197A81F38(v49, v48, 0);
          v42 = v102;
        }

        v50 = v99;
        sub_197A822DC((v42 + 16));
        sub_197A6F04C(v44);

        sub_197969A00(v50, type metadata accessor for ClientData);
        v51 = *(v40 + 48);
        v52 = *(v40 + 64);
        sub_197979D80();
        *(v38 + v51) = v102;
        *(v38 + v52) = v45;
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    v71 = v91;
    sub_197979D80();
    v72 = *v37;
    if (v72)
    {

      v73 = v71;
LABEL_31:
      sub_197969A00(v73, type metadata accessor for ClientData);
      sub_197944528();
LABEL_35:
      v53 = &qword_1EAF499E0;
      v54 = &qword_197A92340;
      return sub_197947A40(v24, v53, v54);
    }

    v84 = *(v40 + 48);
    v85 = *(v40 + 64);
    sub_197979D80();
    *(v38 + v84) = v42;
    *(v38 + v85) = 1;
    goto LABEL_34;
  }

  sub_197947A40(v1, &qword_1EAF499E0, &qword_197A92340);
  sub_197944528();
  v55 = swift_getEnumCaseMultiPayload();
  if (!v55)
  {
    v74 = v95;
    sub_197979D80();
    v75 = v97;
    sub_197979D80();
    sub_197969950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A198, &unk_197A96710);
    v76 = *(v100 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_197A88E50;
    sub_197969950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B320, &qword_197AA1AC8);
    v78 = (v76 + 40) & ~v76;
    v79 = swift_allocObject();
    v79[2] = sub_197A7FD14();
    v79[3] = 0;
    v79[4] = 0;
    sub_197A7F3C4((v79 + 2), v79 + v78, 1uLL, v77);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
    v81 = *(v80 + 48);
    v82 = *(v80 + 64);
    swift_setDeallocating();
    sub_197A7E948();
    sub_197969A00(v75, type metadata accessor for ClientData);
    sub_197969A00(v74, type metadata accessor for ClientData);
    *(v1 + v81) = v79;
    *(v1 + v82) = 0;
    goto LABEL_34;
  }

  if (v55 != 1)
  {
    v83 = v90;
    sub_197979D80();
    if (*v37)
    {

      v73 = v83;
      goto LABEL_31;
    }

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
    v87 = *(v86 + 48);
    v88 = *(v86 + 64);
    sub_197969950();
    v89 = *sub_197A87398();

    sub_197969A00(v83, type metadata accessor for ClientData);
    *(v38 + v87) = v89;
    *(v38 + v88) = 1;
LABEL_34:
    swift_storeEnumTagMultiPayload();
    goto LABEL_35;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
  v57 = *(v37 + *(v56 + 48));
  v58 = *(v37 + *(v56 + 64));
  sub_197979D80();
  v59 = v92;
  result = sub_197979D80();
  v102 = v57;
  v60 = *(v57 + 24);
  v61 = v60 + 1;
  if (!__OFADD__(v60, 1))
  {
    v62 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v57 + 16) < v61 || (v62 & 1) == 0)
    {
      sub_197A81F38(v62, v61, 0);
      v57 = v102;
    }

    sub_197A82CE8((v57 + 16));
    sub_197969A00(v59, type metadata accessor for ClientData);
    v63 = *(v56 + 48);
    v64 = *(v56 + 64);
    sub_197979D80();
    *(v38 + v63) = v57;
    *(v38 + v64) = v58;
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_197A6F04C(void *a1)
{
  v3 = type metadata accessor for ClientData(0);
  v6 = *(v3 - 8);
  result = (v3 - 8);
  v5 = v6;
  v7 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = a1[3];
  v9 = a1[4];
  v10 = v8 + v9;
  if (a1[2] < v8 + v9)
  {
    if (v8 <= 0)
    {
      return result;
    }

    result = *v1;
    v11 = *(*v1 + 24);
    v12 = v11 + v8;
    if (!__OFADD__(v11, v8))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v1;
      if (*(*v1 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_197A81F38(isUniquelyReferenced_nonNull_native, v12, 0);
        v14 = *v1;
      }

      sub_197A82DA0((v14 + 16), v14 + v7, v29);
      result = sub_197A82EFC(v8, &v30);
      v16 = v30;
      v15 = v31;
      if (v34)
      {
        result = sub_197A7F9BC(a1, v30, v31);
      }

      else
      {
        if (v31 < 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (a1[3] < v31)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v23 = v32;
        v24 = v33;

        sub_197A7F474(0, v15, a1, v16, v15);

        v25 = a1[3];
        if (v25 < v15)
        {
LABEL_32:
          __break(1u);
          return result;
        }

        sub_197A7F474(v15, v25, a1, v23, v24);
      }

      v26 = *(v14 + 24);
      v27 = __OFADD__(v26, v8);
      v28 = v26 + v8;
      if (!v27)
      {
        *(v14 + 24) = v28;
        return result;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 < v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__OFSUB__(v10, v9))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *v1;
  v17 = *(*v1 + 24);
  v18 = v17 + v8;
  if (__OFADD__(v17, v8))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = v5;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v1;
  if (*(*v1 + 16) < v18 || (v20 & 1) == 0)
  {
    sub_197A81F38(v20, v18, 0);
    v21 = *v1;
  }

  v22 = a1 + v7 + *(v19 + 72) * v9;

  return sub_197A83198(v22, v8, (v21 + 16), v21 + v7);
}

uint64_t sub_197A6F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  *(v5 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 0;
  *(v5 + 176) = v11;
  v12 = *(*v5 + 144);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  __swift_storeEnumTagSinglePayload(v5 + v12, 1, 1, v13);
  v14 = (v5 + *(*v5 + 152));
  *v14 = 0;
  v14[1] = 0;
  v15 = *(a1 + 16);
  *(v5 + 128) = *a1;
  *(v5 + 144) = v15;
  *(v5 + 160) = *(a1 + 32);
  *(v5 + 112) = a2;
  *(v5 + 120) = a3;
  swift_beginAccess();
  *v14 = a4;
  v14[1] = a5;
  v16 = (v5 + *(*v5 + 160));
  *v16 = 0;
  v16[1] = 0;
  return v5;
}

uint64_t sub_197A6F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_150_2();
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_7_2();
  *(v6 + *(v11 + 128)) = 0;
  OUTLINED_FUNCTION_7_2();
  v13 = *(v12 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  *(v6 + v13) = v14;
  OUTLINED_FUNCTION_7_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_7_2();
  v20 = (v6 + *(v19 + 152));
  *v20 = 0;
  v20[1] = 0;
  OUTLINED_FUNCTION_7_2();
  sub_197969950();
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  swift_beginAccess();
  *v20 = a4;
  v20[1] = a5;
  v21 = (v5 + *(type metadata accessor for ModelServiceClient.StreamBacking(0) + 32));
  v22 = *v21;
  v23 = v21[1];
  sub_197A346AC(*v21, v23);
  sub_197969A00(v5, type metadata accessor for ModelServiceClient.StreamBacking);
  OUTLINED_FUNCTION_7_2();
  v25 = (v6 + *(v24 + 160));
  *v25 = v22;
  v25[1] = v23;
  return v6;
}

uint64_t sub_197A6F63C()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 40);
  v3 = v2[21];
  v2[21] = 1;
  v4 = sub_197A33628(v3);
  v5 = (v2 + *(*v2 + 160));
  if (*v5)
  {
    v0 = *(v1 + 40);
    (*v5)(v4);
  }

  OUTLINED_FUNCTION_181_1();
  v6 = *v0;
  *(v1 + 48) = *v0;
  if (v6)
  {
    OUTLINED_FUNCTION_69_9();
    v13 = v7;
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_138_3(v8);
    *v9 = v10;
    OUTLINED_FUNCTION_43(v9);

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v12();
  }
}

uint64_t sub_197A6F790()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A6F888()
{
  OUTLINED_FUNCTION_9();
  sub_197A346B0(*(v0 + 48), *(v0 + 56));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A6F900()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_7_2();
  v4 = *(v3 + 128);
  v5 = *(v2 + v4);
  *(v2 + v4) = 1;
  v6 = sub_197A33628(v5);
  v7 = (v2 + *(*v2 + 160));
  if (*v7)
  {
    v0 = *(v1 + 40);
    (*v7)(v6);
  }

  OUTLINED_FUNCTION_181_1();
  v8 = *v0;
  *(v1 + 48) = *v0;
  if (v8)
  {
    OUTLINED_FUNCTION_69_9();
    v15 = v9;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_138_3(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_43(v11);

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v14();
  }
}

uint64_t sub_197A6FA64()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A6FB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ClientData(0);
  v43 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v38[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38[-v15];
  v17 = *(*v1 + 144);
  swift_beginAccess();
  sub_197944528();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
  {
LABEL_2:
    v19 = a1;
    v20 = 1;
    v21 = v4;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
    return sub_197947A40(v16, &qword_1EAF4B318, &qword_197AA1AA8);
  }

  v41 = a1;
  v42 = v4;
  sub_197944528();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_197979D80();
    v35 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v18);
    swift_beginAccess();
    sub_197A84284(v35, v1 + v17);
    swift_endAccess();
    v36 = v41;
    sub_197979D80();
    v19 = v36;
    v20 = 0;
    v21 = v42;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    a1 = v41;
    v4 = v42;
    if (*v14)
    {
      swift_willThrow();
      return sub_197947A40(v16, &qword_1EAF4B318, &qword_197AA1AA8);
    }

    goto LABEL_2;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
  v24 = *(v14 + *(v23 + 48));
  v40 = v23;
  v25 = *(v14 + *(v23 + 64));
  sub_197979D80();
  v48 = v24;
  v26 = v46;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v18);
  swift_beginAccess();

  sub_197A84284(v26, v2 + v17);
  swift_endAccess();
  v27 = *(v24 + 24);

  if (!v27)
  {
    v34 = v42;
    if (v25)
    {
      v37 = v46;
      *v46 = 0;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v18);
      swift_beginAccess();
      sub_197A84284(v37, v2 + v17);
      swift_endAccess();
    }

    v33 = v41;
    goto LABEL_16;
  }

  v39 = v25;
  if (*(v24 + 24))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_197A82AAC();
      v24 = v48;
    }

    v29 = v47;
    sub_197A82C38((v24 + 16));
    v47 = v29;
    v30 = *(v40 + 48);
    v31 = *(v40 + 64);
    v32 = v46;
    sub_197979D80();
    *(v32 + v30) = v24;
    *(v32 + v31) = v39;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v18);
    swift_beginAccess();

    sub_197A84284(v32, v2 + v17);
    swift_endAccess();

    v33 = v41;
    v34 = v42;
LABEL_16:
    sub_197979D80();
    v19 = v33;
    v20 = 0;
    v21 = v34;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A700D4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A7017C, v1, 0);
}

uint64_t sub_197A7017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_202_0();
  v13 = *(v12 + 144);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  OUTLINED_FUNCTION_217();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v15 = OUTLINED_FUNCTION_76_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);
  OUTLINED_FUNCTION_85_8();
  sub_197947A40(v18, v19, v20);
  if (EnumTagSinglePayload == 1)
  {
    v21 = *(v10 + 112);
    sub_197944528();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v14);
    OUTLINED_FUNCTION_46(v11 + v13, v10 + 72);
    sub_197A84284(v21, v11 + v13);
    swift_endAccess();
  }

  else
  {
    v25 = sub_197A6F284(v10 + 16);
    if (!OUTLINED_FUNCTION_176_1(v25, v26))
    {
      sub_197A6E524(*(v10 + 96));
    }

    (qword_197AA1AA8)(v10 + 16, 0);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_197A702DC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A70384, v1, 0);
}

uint64_t sub_197A70384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_202_0();
  v13 = *(v12 + 144);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  OUTLINED_FUNCTION_217();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v15 = OUTLINED_FUNCTION_76_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);
  OUTLINED_FUNCTION_85_8();
  sub_197947A40(v18, v19, v20);
  if (EnumTagSinglePayload == 1)
  {
    v21 = *(v10 + 112);
    sub_197944528();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v14);
    OUTLINED_FUNCTION_46(v11 + v13, v10 + 72);
    sub_197A84284(v21, v11 + v13);
    swift_endAccess();
  }

  else
  {
    v25 = sub_197A6F2F0(v10 + 16);
    if (!OUTLINED_FUNCTION_176_1(v25, v26))
    {
      sub_197A6E524(*(v10 + 96));
    }

    (qword_197AA1AA8)(v10 + 16, 0);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_197A704E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_197A70504, v1, 0);
}

uint64_t sub_197A70504()
{
  OUTLINED_FUNCTION_33();
  v1 = *(*(v0 + 24) + 176);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    OUTLINED_FUNCTION_102_5(v3);
  }

  OUTLINED_FUNCTION_74_10();
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_157_2(v5);

  return v9(v7);
}

uint64_t sub_197A705F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_197A70618, v1, 0);
}

uint64_t sub_197A70618()
{
  OUTLINED_FUNCTION_33();
  v1 = *(*(v0 + 24) + *(**(v0 + 24) + 136));
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    OUTLINED_FUNCTION_102_5(v3);
  }

  OUTLINED_FUNCTION_74_10();
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_157_2(v5);

  return v9(v7);
}

unint64_t sub_197A70720(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + 168);
  if (!v7 || v7 != 1 && (a1 & 1) != 0)
  {
    v8 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    sub_19795CB2C();
    v11 = *(v1 + 168);
    *(v1 + 168) = v12;
    return sub_197A33628(v11);
  }

  return result;
}

void sub_197A70850(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_2();
  v6 = *(v5 + 128);
  v7 = *(v1 + v6);
  if (!v7 || v7 != 1 && (a1 & 1) != 0)
  {
    sub_197A87C08();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    sub_19795CB2C();
    v14 = *(v1 + v6);
    *(v1 + v6) = v15;
    sub_197A33628(v14);
  }
}

uint64_t sub_197A7098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A70A28, 0, 0);
}

uint64_t sub_197A70A28()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_17(&unk_197AA1AE0);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v0 + 136) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_197_0(v2);

    return v5(v4);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A70B10()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A70BF4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_164_1();

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_17(&unk_197AA1AE8);
    v15 = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_197A70DD8;
    v4 = OUTLINED_FUNCTION_32_1(v0[15]);

    return v15(v4);
  }

  if (sub_1979CF314())
  {
    OUTLINED_FUNCTION_75_9();
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[20] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v8 = OUTLINED_FUNCTION_119_5(v7);
      *v8 = v9;
      OUTLINED_FUNCTION_43(v8);

      return sub_197A6F61C();
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  v0[21] = v10;
  if (!v10)
  {
LABEL_14:
    sub_197947A40(v0[15], &qword_1EAF499E0, &qword_197A92340);

    OUTLINED_FUNCTION_13();

    return v14();
  }

  v11 = OUTLINED_FUNCTION_93_8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A70DD8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A70ED8()
{
  OUTLINED_FUNCTION_9();
  if (sub_1979CF314())
  {
    OUTLINED_FUNCTION_75_9();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      v3 = OUTLINED_FUNCTION_119_5(v2);
      *v3 = v4;
      OUTLINED_FUNCTION_43(v3);

      return sub_197A6F61C();
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[21] = v6;
  if (!v6)
  {
LABEL_10:
    sub_197947A40(v0[15], &qword_1EAF499E0, &qword_197A92340);

    OUTLINED_FUNCTION_13();

    return v10();
  }

  v7 = OUTLINED_FUNCTION_93_8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A7101C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A7111C()
{
  OUTLINED_FUNCTION_9();
  sub_197A70720(1);

  v0 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_197A71184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A71220, 0, 0);
}

uint64_t sub_197A71220()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_17(&unk_197AA1B18);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v0 + 136) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_197_0(v2);

    return v5(v4);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A71308()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A713EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_164_1();

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_17(&unk_197AA1B20);
    v15 = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_197A715D0;
    v4 = OUTLINED_FUNCTION_32_1(v0[15]);

    return v15(v4);
  }

  if (sub_1979CF314())
  {
    OUTLINED_FUNCTION_75_9();
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[20] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v8 = OUTLINED_FUNCTION_119_5(v7);
      *v8 = v9;
      OUTLINED_FUNCTION_43(v8);

      return sub_197A6F8E0();
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  v0[21] = v10;
  if (!v10)
  {
LABEL_14:
    sub_197947A40(v0[15], &qword_1EAF499E0, &qword_197A92340);

    OUTLINED_FUNCTION_13();

    return v14();
  }

  v11 = OUTLINED_FUNCTION_92_7();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A715D0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A716D0()
{
  OUTLINED_FUNCTION_9();
  if (sub_1979CF314())
  {
    OUTLINED_FUNCTION_75_9();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      v3 = OUTLINED_FUNCTION_119_5(v2);
      *v3 = v4;
      OUTLINED_FUNCTION_43(v3);

      return sub_197A6F8E0();
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[21] = v6;
  if (!v6)
  {
LABEL_10:
    sub_197947A40(v0[15], &qword_1EAF499E0, &qword_197A92340);

    OUTLINED_FUNCTION_13();

    return v10();
  }

  v7 = OUTLINED_FUNCTION_92_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A71814()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A71914()
{
  OUTLINED_FUNCTION_9();
  sub_197947A40(*(v0 + 120), &qword_1EAF499E0, &qword_197A92340);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A71984()
{
  OUTLINED_FUNCTION_9();
  sub_197A70850(1);

  v0 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_197A719EC()
{
  if (*(v0 + 168) >= 2uLL)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197A71A18()
{
  v1 = *(v0 + 176);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  result = sub_197A719EC();
  if (result)
  {
    sub_197A87C38();
  }

  return result;
}

uint64_t sub_197A71ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v50 = v17;
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v18 = sub_197A87608();
  v17[3] = __swift_project_value_buffer(v18, qword_1ED880520);
  v19 = sub_197A875E8();
  v20 = sub_197A87D78();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_95_8();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_137(v21);
    _os_log_impl(&dword_197941000, v19, v20, "Cancelling sequence buffering and waiting for upstream sequence termination", v16, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v22 = v17[2];

  sub_197A71A18();
  if (!*(v22 + 168))
  {
    sub_197A70720(0);
  }

  v23 = sub_197A719EC();
  v17[4] = v23;
  if (!v23)
  {

    v33 = sub_197A875E8();
    v34 = sub_197A87D78();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v17[2];
      v36 = OUTLINED_FUNCTION_56();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      v38 = *(v35 + 168);
      if (v38)
      {
        if (v38 == 1)
        {
          v39 = OUTLINED_FUNCTION_146_1();
        }

        else
        {
          v39 = OUTLINED_FUNCTION_145_4();
        }
      }

      else
      {
        v39 = OUTLINED_FUNCTION_133_5();
      }

      v40 = sub_197948834(v39, v35, &v49);

      *(v36 + 4) = v40;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v24 = swift_task_alloc();
  v17[5] = v24;
  *v24 = v17;
  OUTLINED_FUNCTION_99_6(v24);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A71D24()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A71E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v44 = v16;

  v17 = sub_197A719EC();
  v16[4] = v17;
  if (!v17)
  {

    v27 = sub_197A875E8();
    v28 = sub_197A87D78();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v16[2];
      v30 = OUTLINED_FUNCTION_56();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      v32 = *(v29 + 168);
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = OUTLINED_FUNCTION_146_1();
        }

        else
        {
          v33 = OUTLINED_FUNCTION_145_4();
        }
      }

      else
      {
        v33 = OUTLINED_FUNCTION_133_5();
      }

      v34 = sub_197948834(v33, v29, &v43);

      *(v30 + 4) = v34;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v18 = swift_task_alloc();
  v16[5] = v18;
  *v18 = v16;
  OUTLINED_FUNCTION_99_6(v18);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A71FD4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A72070, v1, 0);
}

uint64_t sub_197A72070()
{
  OUTLINED_FUNCTION_18();
  if (!*(v0[6] + 168))
  {
    sub_197A70720(0);
  }

  OUTLINED_FUNCTION_7_2();
  v0[8] = *(v1 + 144);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  if (*(v0[6] + 168) == 1)
  {
    goto LABEL_10;
  }

  sub_197944528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v2 = OUTLINED_FUNCTION_52_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = v0[7];
  if (EnumTagSinglePayload != 1)
  {
    sub_197947A40(v5, &qword_1EAF4B318, &qword_197AA1AA8);
LABEL_10:
    sub_197A6FB5C(v0[5]);
    goto LABEL_11;
  }

  sub_197947A40(v5, &qword_1EAF4B318, &qword_197AA1AA8);
  v6 = sub_197A719EC();
  v0[9] = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_45_7(&qword_1ED87D488, &qword_1EAF4B2A8, qword_197AA12C8);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_91_9(v7);
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v17 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v17, qword_1ED880520);
  v18 = sub_197A875E8();
  v19 = sub_197A87D68();
  if (OUTLINED_FUNCTION_65(v19))
  {
    OUTLINED_FUNCTION_95_8();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_137(v20);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_7_13();
  sub_197973734(v26, 255, v27);
  OUTLINED_FUNCTION_64_11();
  v28 = swift_allocError();
  OUTLINED_FUNCTION_95_5(v28, v29);
  swift_willThrow();
LABEL_11:

  OUTLINED_FUNCTION_13();

  return v16();
}

void sub_197A72324()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_1();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_197A72440()
{
  OUTLINED_FUNCTION_18();

  if (*(v0[6] + 168) == 1)
  {
    goto LABEL_8;
  }

  sub_197944528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v1 = OUTLINED_FUNCTION_52_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[7];
  if (EnumTagSinglePayload != 1)
  {
    sub_197947A40(v4, &qword_1EAF4B318, &qword_197AA1AA8);
LABEL_8:
    sub_197A6FB5C(v0[5]);
    goto LABEL_9;
  }

  sub_197947A40(v4, &qword_1EAF4B318, &qword_197AA1AA8);
  v5 = sub_197A719EC();
  v0[9] = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_45_7(&qword_1ED87D488, &qword_1EAF4B2A8, qword_197AA12C8);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_91_9(v6);
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DE18](v7, v8, v9, v10, v11, v12, v13, v14);
  }

  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v16 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v16, qword_1ED880520);
  v17 = sub_197A875E8();
  v18 = sub_197A87D68();
  if (OUTLINED_FUNCTION_65(v18))
  {
    OUTLINED_FUNCTION_95_8();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_137(v19);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_7_13();
  sub_197973734(v25, 255, v26);
  OUTLINED_FUNCTION_64_11();
  v27 = swift_allocError();
  OUTLINED_FUNCTION_95_5(v27, v28);
  swift_willThrow();
LABEL_9:

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t sub_197A726C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_19795CB2C();
}

uint64_t sub_197A727D8()
{
  OUTLINED_FUNCTION_9();
  sub_197A71A18();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A72830(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A72920, v1, 0);
}

uint64_t sub_197A72920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_49_0();
  if (!*(v16[9] + 168))
  {
    sub_197A70720(0);
  }

  OUTLINED_FUNCTION_7_2();
  v16[15] = *(v19 + 144);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v20 = v16[9];
  if (*(v20 + 168) != 1)
  {
    v21 = v16[10];
    OUTLINED_FUNCTION_162_2(v20);
    sub_197944528();
    v22 = OUTLINED_FUNCTION_76_9();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, v21);
    v25 = v16[14];
    if (EnumTagSinglePayload == 1)
    {
      sub_197947A40(v25, &qword_1EAF4B318, &qword_197AA1AA8);
      v26 = sub_197A719EC();
      v16[16] = v26;
      if (v26)
      {
        v27 = swift_task_alloc();
        v16[17] = v27;
        *v27 = v16;
        OUTLINED_FUNCTION_98_6(v27);
        OUTLINED_FUNCTION_38_9();
        OUTLINED_FUNCTION_153_3();

        return MEMORY[0x1EEE6DA40](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, v16);
      }

      if (qword_1ED880370 != -1)
      {
        OUTLINED_FUNCTION_50(&qword_1ED880370);
      }

      v53 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v53, qword_1ED880520);
      v54 = sub_197A875E8();
      v55 = sub_197A87D68();
      if (OUTLINED_FUNCTION_65(v55))
      {
        OUTLINED_FUNCTION_95_8();
        v56 = swift_slowAlloc();
        OUTLINED_FUNCTION_137(v56);
        OUTLINED_FUNCTION_53();
        _os_log_impl(v57, v58, v59, v60, v61, 2u);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v62 = v16[8];

      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_7_13();
      sub_197973734(v63, 255, v64);
      OUTLINED_FUNCTION_52_9();
      v65 = swift_allocError();
      OUTLINED_FUNCTION_201_0(v65, v66);
      swift_storeEnumTagMultiPayload();
      *v62 = v65;
      OUTLINED_FUNCTION_100();
      goto LABEL_13;
    }

    sub_197947A40(v25, &qword_1EAF4B318, &qword_197AA1AA8);
    v20 = v16[9];
  }

  v36 = v16[13];
  v37 = v16[10];
  OUTLINED_FUNCTION_162_2(v20);
  sub_197944528();
  v38 = OUTLINED_FUNCTION_76_9();
  OUTLINED_FUNCTION_64_0(v38, v39, v37);
  if (v40)
  {
    v41 = v16[8];
    sub_197947A40(v16[13], &qword_1EAF4B318, &qword_197AA1AA8);
    *v41 = 0;
    OUTLINED_FUNCTION_22();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_171_2();
  sub_19794B118();
  OUTLINED_FUNCTION_171_2();
  sub_19794B118();
  v42 = OUTLINED_FUNCTION_27_13();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v15);
  OUTLINED_FUNCTION_46(v18 + v17, (v16 + 5));
  sub_197A84284(v36, v18 + v17);
  swift_endAccess();
LABEL_14:

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_153_3();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_197A72C68()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A72D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_49_0();

  v19 = v16[9];
  if (*(v19 + 168) != 1)
  {
    v20 = v16[10];
    OUTLINED_FUNCTION_162_2(v19);
    sub_197944528();
    v21 = OUTLINED_FUNCTION_76_9();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v20);
    v24 = v16[14];
    if (EnumTagSinglePayload == 1)
    {
      sub_197947A40(v24, &qword_1EAF4B318, &qword_197AA1AA8);
      v25 = sub_197A719EC();
      v16[16] = v25;
      if (v25)
      {
        v26 = swift_task_alloc();
        v16[17] = v26;
        *v26 = v16;
        OUTLINED_FUNCTION_98_6(v26);
        OUTLINED_FUNCTION_38_9();
        OUTLINED_FUNCTION_153_3();

        return MEMORY[0x1EEE6DA40](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, v16);
      }

      if (qword_1ED880370 != -1)
      {
        OUTLINED_FUNCTION_50(&qword_1ED880370);
      }

      v52 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v52, qword_1ED880520);
      v53 = sub_197A875E8();
      v54 = sub_197A87D68();
      if (OUTLINED_FUNCTION_65(v54))
      {
        OUTLINED_FUNCTION_95_8();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_137(v55);
        OUTLINED_FUNCTION_53();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v61 = v16[8];

      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_7_13();
      sub_197973734(v62, 255, v63);
      OUTLINED_FUNCTION_52_9();
      v64 = swift_allocError();
      OUTLINED_FUNCTION_201_0(v64, v65);
      swift_storeEnumTagMultiPayload();
      *v61 = v64;
      OUTLINED_FUNCTION_100();
      goto LABEL_11;
    }

    sub_197947A40(v24, &qword_1EAF4B318, &qword_197AA1AA8);
    v19 = v16[9];
  }

  v35 = v16[13];
  v36 = v16[10];
  OUTLINED_FUNCTION_162_2(v19);
  sub_197944528();
  v37 = OUTLINED_FUNCTION_76_9();
  OUTLINED_FUNCTION_64_0(v37, v38, v36);
  if (v39)
  {
    v40 = v16[8];
    sub_197947A40(v16[13], &qword_1EAF4B318, &qword_197AA1AA8);
    *v40 = 0;
    OUTLINED_FUNCTION_22();
LABEL_11:
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_171_2();
  sub_19794B118();
  OUTLINED_FUNCTION_171_2();
  sub_19794B118();
  v41 = OUTLINED_FUNCTION_27_13();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v15);
  OUTLINED_FUNCTION_46(v18 + v17, (v16 + 5));
  sub_197A84284(v35, v18 + v17);
  swift_endAccess();
LABEL_12:

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_153_3();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_197A73074()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87D2C0);
  __swift_project_value_buffer(v0, qword_1ED87D2C0);
  return sub_197A875F8();
}

uint64_t sub_197A73140(uint64_t a1, uint64_t a2)
{
  v2 = sub_197A87EF8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197A731B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_197A73140(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_197A731E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19797A6C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_197A73214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A73140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A73248(uint64_t a1)
{
  v2 = sub_19797A570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A73284(uint64_t a1)
{
  v2 = sub_19797A570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static RequestKey.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_104_5();
  return *(v1 + v2) == *(v0 + v2);
}

uint64_t RequestKey.hash(into:)()
{
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v0, 255, v1);
  OUTLINED_FUNCTION_52_2();
  sub_197A878F8();
  OUTLINED_FUNCTION_104_5();
  return sub_197A88338();
}

uint64_t RequestKey.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v0, 255, v1);
  sub_197A878F8();
  OUTLINED_FUNCTION_104_5();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t sub_197A73408(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v2, 255, v3);
  sub_197A878F8();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t InferenceProviderRequestStream.uuid.getter()
{
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_52_2();

  return v1(v0);
}

uint64_t InferenceProviderRequestStream.__allocating_init(stream:id:)()
{
  OUTLINED_FUNCTION_114_0();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_100();
  InferenceProviderRequestStream.init(stream:id:)(v1);
  return v0;
}

uint64_t InferenceProviderRequestStream.init(stream:id:)(void *a1)
{
  v2 = v1;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v4 = OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_cancellationReason;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2A0, &qword_197AA12B8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 4;
  *(v2 + v4) = v5;
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_hasTriggeredEndOfStream) = 0;
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_endOfStreamWaiters) = MEMORY[0x1E69E7CC0];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  (*(v9 + 16))(v8 - v7);
  v15[3] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_119();
  v15[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_197A87C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2A8, qword_197AA12C8);
  swift_allocObject();
  OUTLINED_FUNCTION_75_9();
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_bufferingSequence) = sub_197A6F35C(v10, v11, v12, v13, 0);
  OUTLINED_FUNCTION_3_21();
  sub_197979D80();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_197A737AC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for InferenceError(0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for ClientData(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A738AC, a2, 0);
}

uint64_t sub_197A738AC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_45_7(&qword_1ED87D488, &qword_1EAF4B2A8, qword_197AA12C8);
  OUTLINED_FUNCTION_116_5(v1 + 128);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 128, *(v1 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_197A7399C;
  OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6D8D0](v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A7399C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_197A73BC8;
  }

  else
  {
    v9 = *(v3 + 48);
    swift_endAccess();
    v8 = sub_197A73AA8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A73AA8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  v2 = OUTLINED_FUNCTION_76_9();
  OUTLINED_FUNCTION_64_0(v2, v3, v4);
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_197947A40(v1, &qword_1EAF49110, &qword_197A92D60);
    *v6 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  }

  else
  {
    sub_197979D80();
    OUTLINED_FUNCTION_85_8();
    sub_197979D80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
    OUTLINED_FUNCTION_105();
  }

  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A73BC8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v2, 255, v3);
  OUTLINED_FUNCTION_64_11();
  v4 = swift_allocError();
  OUTLINED_FUNCTION_15_11();
  sub_197979D80();
  swift_endAccess();
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_7_13();
  sub_197973734(v5, 255, v6);
  OUTLINED_FUNCTION_105();
  v7 = swift_allocError();
  v9 = v8;
  MEMORY[0x19A8EBBD0](v4);
  ModelManagerError.init(wrapping:)(v4, v9);
  *v1 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_13();

  return v10();
}

BOOL static InferenceProviderRequestStream.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_id;
  v3 = a2 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_id;
  OUTLINED_FUNCTION_22();
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_104_5();
  return *(v2 + v4) == *(v3 + v4);
}

uint64_t sub_197A73D70()
{
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v0, 255, v1);
  OUTLINED_FUNCTION_52_2();
  sub_197A878F8();
  OUTLINED_FUNCTION_104_5();
  return sub_197A88338();
}

void sub_197A73DF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_cancellationReason);
  os_unfair_lock_lock((v1 + 24));
  sub_197A750D0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t *sub_197A73E54(unint64_t *result, unint64_t a2)
{
  if (*result == 4)
  {
    v3 = result;
    sub_197A750FC(4uLL);
    *v3 = a2;
    return sub_1979D559C(a2);
  }

  return result;
}

uint64_t sub_197A73EA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  v7 = OUTLINED_FUNCTION_28(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_cancellationReason);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  sub_197A750EC(v15);
  os_unfair_lock_unlock((v14 + 24));
  switch(v15)
  {
    case 0uLL:
    case 3uLL:
      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_156_1();
      swift_storeEnumTagMultiPayload();
      v16 = v10;
      v17 = 0;
      goto LABEL_5;
    case 1uLL:
    case 2uLL:
      v3 = type metadata accessor for ModelManagerError(0);
      v16 = v10;
      v17 = 1;
LABEL_5:
      __swift_storeEnumTagSinglePayload(v16, v17, 1, v3);
      goto LABEL_6;
    case 4uLL:
      v3 = type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
      goto LABEL_8;
    default:
      *v10 = v15;
      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_156_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_56_0();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v3);
      sub_197A878A8();
LABEL_6:
      sub_19794B118();
      sub_197A750FC(v15);
      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_64_0(v13, 1, v3);
      if (v21)
      {
LABEL_8:
        MEMORY[0x19A8EBBD0](a1);
        ModelManagerError.init(wrapping:)(a1, a2);
        type metadata accessor for ModelManagerError(0);
        result = OUTLINED_FUNCTION_64_0(v13, 1, v3);
        if (!v21)
        {
          return sub_197947A40(v13, &qword_1EAF48B68, &qword_197A89660);
        }
      }

      else
      {
        OUTLINED_FUNCTION_100();
        return sub_197979D80();
      }

      return result;
  }
}

uint64_t sub_197A7410C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_bufferingSequence);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A74134, v1);
}

uint64_t sub_197A74134()
{
  OUTLINED_FUNCTION_9();
  sub_197A70720(0);
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A741AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17(&unk_197AA12E8);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_43(v2);

  return v4();
}

void sub_197A7424C()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  *(v0 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_hasTriggeredEndOfStream) = 1;
  v7 = OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_endOfStreamWaiters;
  v8 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_endOfStreamWaiters);
  v9 = *(v8 + 16);
  if (v9)
  {
    v15 = OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_endOfStreamWaiters;
    v16 = v0;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    sub_197A878A8();
    do
    {
      v11(v6, v13, v1);
      sub_197A87B88();
      (*(v10 - 8))(v6, v1);
      v13 += v14;
      --v9;
    }

    while (v9);

    v7 = v15;
    v0 = v16;
  }

  *(v0 + v7) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A743A8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_hasTriggeredEndOfStream) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
    return sub_197A87B88();
  }

  else
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_endOfStreamWaiters;
    sub_197A1ECC0();
    v6 = *(*(v1 + v5) + 16);
    sub_197A1ED4C(v6);
    v7 = *(v1 + v5);
    *(v7 + 16) = v6 + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
    OUTLINED_FUNCTION_6();
    result = (*(v8 + 16))(v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, a1);
    *(v4 + v5) = v7;
  }

  return result;
}

uint64_t sub_197A7449C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A744B8, 0);
}

uint64_t sub_197A744B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17(&unk_197AA12F8);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_197A74560;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t sub_197A74560()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A74680, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v5();
  }
}

uint64_t sub_197A74680()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_7_13();
  sub_197973734(v2, 255, v3);
  OUTLINED_FUNCTION_105();
  swift_allocError();
  sub_197A73EA8(v1, v4);
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A74750()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  v1[5] = v3;
  OUTLINED_FUNCTION_28(v3);
  v1[6] = OUTLINED_FUNCTION_225_0();
  v1[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A747E4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17(&unk_197AA1310);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 64) = v2;
  *v2 = v3;
  v2[1] = sub_197A7488C;
  v4 = *(v0 + 56);

  return v6(v4);
}

uint64_t sub_197A7488C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A74970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  sub_197944528();
  OUTLINED_FUNCTION_63();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v10 + 48);
      v12 = *(v10 + 56);
      v14 = *(v10 + 24);

      sub_197947A40(v12, &qword_1EAF499E0, &qword_197A92340);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
      v16 = *(v15 + 48);
      v17 = *(v13 + v16);
      v18 = *(v15 + 64);
      v19 = *(v13 + v18);
      OUTLINED_FUNCTION_16_12();
      sub_197979D80();
      *(v14 + v16) = v17;
      *(v14 + v18) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
    }

    else
    {
      v21 = **(v10 + 48);
      if (v21)
      {
        *(v10 + 16) = v21;

        MEMORY[0x19A8EBBD0](v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
        v22 = sub_197A88208();
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          OUTLINED_FUNCTION_52_9();
          v23 = swift_allocError();
          *v29 = v21;
        }

        v30 = *(v10 + 56);
        sub_197A73EA8(v23, *(v10 + 24));

        sub_197947A40(v30, &qword_1EAF499E0, &qword_197A92340);
        type metadata accessor for ModelManagerError(0);
        OUTLINED_FUNCTION_56_0();
        __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
      }

      else
      {
        v24 = *(v10 + 56);

        sub_197947A40(v24, &qword_1EAF499E0, &qword_197A92340);
        type metadata accessor for ModelManagerError(0);
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
        OUTLINED_FUNCTION_105();
      }
    }
  }

  else
  {
    v20 = *(v10 + 56);

    sub_197947A40(v20, &qword_1EAF499E0, &qword_197A92340);
    OUTLINED_FUNCTION_16_12();
    sub_197979D80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  }

  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t InferenceProviderRequestStream.deinit()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v0 + v3, v4);

  return v0;
}

uint64_t InferenceProviderRequestStream.__deallocating_deinit()
{
  InferenceProviderRequestStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_197A74D38()
{
  OUTLINED_FUNCTION_145();
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v0, 255, v1);
  sub_197A878F8();
  OUTLINED_FUNCTION_104_5();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t sub_197A74E10(uint64_t a1)
{
  sub_197A882F8();
  sub_197A73D70();
  return sub_197A88358();
}

uint64_t sub_197A74E98()
{
  v1 = v0;
  v2 = sub_197A87708();
  v3 = OUTLINED_FUNCTION_28(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  if (*(v0 + 168))
  {
    v4 = *(v0 + 168);
  }

  else
  {

    sub_197A876F8();
    sub_197A87748();
    swift_allocObject();
    v4 = sub_197A876E8();
    *(v1 + 168) = v4;
  }

  return v4;
}

uint64_t sub_197A74F80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2E8, &qword_197AA1A20);
  sub_19796AB98(&qword_1ED87D480, &qword_1EAF4B2E8, &qword_197AA1A20);
  return sub_197A87718();
}

uint64_t sub_197A75028@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PerRequestInferenceProviderXPCRequestDispatcher();
  v2 = swift_allocObject();

  sub_197A7CE60(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2E8, &qword_197AA1A20);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2F0, &qword_197AA1A28);
  swift_allocObject();
  result = sub_1979AAD68(v2);
  *(v4 + 16) = result;
  *a1 = v4;
  return result;
}

unint64_t sub_197A750EC(unint64_t result)
{
  if (result != 4)
  {
    return sub_1979D559C(result);
  }

  return result;
}

unint64_t sub_197A750FC(unint64_t result)
{
  if (result != 4)
  {
    return sub_197A0E098(result);
  }

  return result;
}

uint64_t sub_197A7513C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2B0, &qword_197AA1328);
  v2[4] = OUTLINED_FUNCTION_44_10(&qword_1ED87D7B8);
  v2[5] = OUTLINED_FUNCTION_26_8(&qword_1ED87D7C0);
  __swift_allocate_boxed_opaque_existential_1(v2);
  v3 = OUTLINED_FUNCTION_150_2();
  MEMORY[0x19A8EBBD0](v3);
  ModelManagerError.init(wrapping:)(v1, v2);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A7520C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_196_0(v1);

  return sub_197A0CE04();
}

uint64_t static InferenceProviderXPCRequestDispatcher.responseForXPCDecodingError(error:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v4 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v4, qword_1ED87D2C0);
  MEMORY[0x19A8EBBD0](a1);
  v5 = sub_197A875E8();
  v6 = sub_197A87D38();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_56();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x19A8EBBD0](a1);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_197941000, v5, v6, "Error during decoding the message: %@", v7, 0xCu);
    sub_197947A40(v8, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2B0, &qword_197AA1328);
  a2[4] = OUTLINED_FUNCTION_26_8(&qword_1ED87D7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  sub_197A87EA8();
  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0xE000000000000000;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_105();
  swift_storeEnumTagMultiPayload();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A7548C(uint64_t a1)
{
  sub_197961900(a1, v4);
  v4[40] = 0;
  OUTLINED_FUNCTION_46(v1 + 112, v3);
  sub_197A841C0(v4, v1 + 112);
  return swift_endAccess();
}

uint64_t sub_197A754D4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_193_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_12();
  *(v0 + 48) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A75570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v16 = sub_197A87608();
  __swift_project_value_buffer(v16, qword_1ED87D2C0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_22();
  sub_197969950();
  v17 = sub_197A875E8();
  v18 = sub_197A87D38();
  v19 = OUTLINED_FUNCTION_48(v18);
  v20 = *(v14 + 48);
  if (v19)
  {
    OUTLINED_FUNCTION_56();
    a11 = OUTLINED_FUNCTION_41_0();
    *v15 = 136315138;
    OUTLINED_FUNCTION_179_2();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v21 = OUTLINED_FUNCTION_36();
    sub_197947A40(v21, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v20, v22);
    v23 = OUTLINED_FUNCTION_120_1();
    v26 = sub_197948834(v23, v24, v25);

    *(v15 + 4) = v26;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {

    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v20, v32);
  }

  OUTLINED_FUNCTION_17(&unk_197AA19E0);
  v45 = v33;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v14 + 56) = v34;
  *v34 = v35;
  v34[1] = sub_197A75760;
  OUTLINED_FUNCTION_142();

  return v40(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, a11, a12, a13, a14);
}

uint64_t sub_197A75760()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A75880(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_197A75958;

  return sub_197A7449C(v2);
}

uint64_t sub_197A75958()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_197A15E54;
  }

  else
  {
    v5 = sub_197A75A5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_197A75A5C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_64_0(v1, 1, v2);
  if (v3)
  {
    sub_197947A40(v1, &qword_1EAF49110, &qword_197A92D60);
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_12();
    sub_197979D80();
    v4 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 16), v4, 1, v2);

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_197A75B1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_46_0();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_197A75C58()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v2, 255, v3);
  OUTLINED_FUNCTION_105();
  swift_allocError();
  OUTLINED_FUNCTION_15_11();
  sub_197979D80();
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_164_1();

  OUTLINED_FUNCTION_28_11();

  return v5();
}

uint64_t sub_197A75D30()
{
  OUTLINED_FUNCTION_9();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v5);
  v1[16] = OUTLINED_FUNCTION_78_0();
  v6 = sub_197A876D8();
  v1[17] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v8);
  v1[20] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_28(v9);
  v1[22] = OUTLINED_FUNCTION_90_4();
  v1[23] = swift_task_alloc();
  v10 = type metadata accessor for RequestKey(0);
  v1[24] = v10;
  OUTLINED_FUNCTION_28(v10);
  v1[25] = OUTLINED_FUNCTION_90_4();
  v1[26] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A76204()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A76318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  v12 = OUTLINED_FUNCTION_206_0();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v10, v14);
  OUTLINED_FUNCTION_144_5();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_197A763CC()
{
  OUTLINED_FUNCTION_9();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v5);
  v1[16] = OUTLINED_FUNCTION_78_0();
  v6 = sub_197A876D8();
  v1[17] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v8);
  v1[20] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_28(v9);
  v1[22] = OUTLINED_FUNCTION_90_4();
  v1[23] = swift_task_alloc();
  v10 = type metadata accessor for RequestKey(0);
  v1[24] = v10;
  OUTLINED_FUNCTION_28(v10);
  v1[25] = OUTLINED_FUNCTION_90_4();
  v1[26] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_197A7652C()
{
  OUTLINED_FUNCTION_80();
  sub_19796DD70((v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_17_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[27] = v1;
  *v1 = v2;
  v1[1] = sub_197A766CC;
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_197A766CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A767E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_72();
  a22 = v25;
  OUTLINED_FUNCTION_210_0();
  __swift_destroy_boxed_opaque_existential_1Tm(v25 + 7);
  v30 = *(v26 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v31 + 16))(v24, v27 + v30);
  OUTLINED_FUNCTION_209_0();
  sub_197A7A0AC((v25 + 2));
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v32 = OUTLINED_FUNCTION_214_0();
  v33 = __swift_project_value_buffer(v32, qword_1ED87D2C0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_63();
  sub_197969950();
  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_59_1();
  sub_197969950();
  v34 = sub_197A875E8();
  v35 = sub_197A87D38();
  v36 = OUTLINED_FUNCTION_184_0(v35);
  v37 = v25[25];
  if (v36)
  {
    v38 = v25[20];
    v39 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v39 = 136315394;
    OUTLINED_FUNCTION_220_0();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v37, v40);
    sub_197948834(v33, v26, &a13);
    OUTLINED_FUNCTION_169_1();

    *(v39 + 4) = v38;
    *(v39 + 12) = 2080;
    OUTLINED_FUNCTION_17_13();
    sub_197969950();
    v41 = sub_197A87988();
    OUTLINED_FUNCTION_24_14();
    v42 = OUTLINED_FUNCTION_119();
    sub_197948834(v42, v43, v44);
    OUTLINED_FUNCTION_169_1();

    *(v39 + 14) = v41;
    OUTLINED_FUNCTION_203_0();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v37, v50);
  }

  sub_197A74E98();
  sub_197A87738();

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v25[29] = v51;
  *v51 = v52;
  OUTLINED_FUNCTION_195_0(v51);
  OUTLINED_FUNCTION_30_0();

  return sub_197A754D4();
}

uint64_t sub_197A76A94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A76BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v32 = v14[23];
  v33 = v14[22];
  v15 = v14[19];
  v34 = v14[20];
  v17 = v14[17];
  v16 = v14[18];
  v18 = v14[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);
  OUTLINED_FUNCTION_3_21();
  sub_197979D80();
  v19 = type metadata accessor for InferenceProviderRequestResult(0);
  (*(v16 + 32))(v18 + *(v19 + 20), v15, v17);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_19794B118();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_197A76CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 56));
  OUTLINED_FUNCTION_144_5();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_197A76D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  v12 = OUTLINED_FUNCTION_206_0();
  v13(v12);
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v10, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_144_5();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_158_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_197A76E18(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A76E34, v1);
}

uint64_t sub_197A76E34()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    OUTLINED_FUNCTION_28_11();

    return v2();
  }

  else
  {
    OUTLINED_FUNCTION_67_12();
    OUTLINED_FUNCTION_17_2();
    v4 = swift_task_alloc();
    *(v1 + 72) = v4;
    *v4 = v1;
    v4[1] = sub_197A76F70;
    v5 = OUTLINED_FUNCTION_81_7(*(v1 + 56));

    return v6(v5);
  }
}

uint64_t sub_197A76F70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A77084()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A770E0()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v6);
  v1[7] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_12();
  v1[8] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A77184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v16 = sub_197A87608();
  __swift_project_value_buffer(v16, qword_1ED87D2C0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_22();
  sub_197969950();
  v17 = sub_197A875E8();
  v18 = sub_197A87D78();
  v19 = OUTLINED_FUNCTION_48(v18);
  v20 = v14[8];
  if (v19)
  {
    OUTLINED_FUNCTION_56();
    a11 = OUTLINED_FUNCTION_41_0();
    *v15 = 136315138;
    OUTLINED_FUNCTION_179_2();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v21 = OUTLINED_FUNCTION_36();
    sub_197947A40(v21, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v20, v22);
    v23 = OUTLINED_FUNCTION_120_1();
    v26 = sub_197948834(v23, v24, v25);

    *(v15 + 4) = v26;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {

    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v20, v32);
  }

  v34 = v14[4];
  v33 = v14[5];
  v35 = swift_allocObject();
  v14[9] = v35;
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v14[10] = v36;
  *v36 = v37;
  v36[1] = sub_197A773AC;
  OUTLINED_FUNCTION_142();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, sub_197A7AEB8, a11, a12, a13, a14);
}

uint64_t sub_197A773AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_197A774E0, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v8();
  }
}

uint64_t sub_197A774E0()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A77550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  v4[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_197A7762C;

  return sub_197A74750();
}

uint64_t sub_197A7762C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A77710()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  sub_197947A40(v1, &qword_1EAF499D8, &unk_197A92330);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_197A77794(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_32_0(sub_197A777B4, v2);
}

uint64_t sub_197A777B4()
{
  OUTLINED_FUNCTION_18();
  v0[4] = sub_197A7A1AC(v0[2]);
  OUTLINED_FUNCTION_17(&unk_197AA12E8);
  v4 = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_43(v2);

  return v4();
}

uint64_t sub_197A77910()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A77A08()
{
  OUTLINED_FUNCTION_9();

  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_73_8(v1);

    return sub_197A79558();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

uint64_t sub_197A77ACC()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v3);
  v1[4] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_12();
  v1[5] = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A77B68()
{
  OUTLINED_FUNCTION_80();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v2 = sub_197A87608();
  __swift_project_value_buffer(v2, qword_1ED87D2C0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_22();
  sub_197969950();
  v3 = sub_197A875E8();
  v4 = sub_197A87D78();
  v5 = OUTLINED_FUNCTION_48(v4);
  v6 = v0[5];
  if (v5)
  {
    OUTLINED_FUNCTION_56();
    v34 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    OUTLINED_FUNCTION_179_2();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v7 = OUTLINED_FUNCTION_36();
    sub_197947A40(v7, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v6, v8);
    v9 = OUTLINED_FUNCTION_120_1();
    v12 = sub_197948834(v9, v10, v11);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00](v18);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00](v19);
  }

  else
  {

    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v6, v20);
  }

  v22 = v0[2];
  v21 = v0[3];
  v23 = swift_task_alloc();
  v0[6] = v23;
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v24 = swift_task_alloc();
  v0[7] = v24;
  *(v24 + 16) = v22;
  *(v24 + 24) = v21;
  OUTLINED_FUNCTION_5_17();
  v28 = sub_197973734(v25, v26, v27);
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_138_3(v29);
  *v30 = v31;
  v30[1] = sub_197A77DDC;
  v32 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v30, &unk_197AA1940, v23, sub_197A8391C, v24, v21, v28, v32);
}

void sub_197A77DDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 24);

    MEMORY[0x1EEE6DFA0](sub_197A77F0C, v7, 0);
  }
}

uint64_t sub_197A77F0C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A77F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197A77F8C, a2, 0);
}

uint64_t sub_197A77F8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5_17();
  v4 = sub_197973734(v1, v2, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v11 = *(v0 + 24);
  *(v5 + 16) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v6;
  *v6 = v7;
  v6[1] = sub_197A780B8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v8, v11, v4, 0x727453664F646E65, 0xEF293A5F286D6165, sub_197A83A24, v5, v9);
}

uint64_t sub_197A780B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_197A781B4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for RequestKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_197969950();
  (*(v4 + 16))(v6, v20, v3);
  v15 = sub_197973734(&qword_1ED87D478, v14, type metadata accessor for InferenceProviderXPCRequestDispatcher);
  v16 = (v9 + *(v4 + 80) + ((*(v8 + 80) + 40) & ~*(v8 + 80))) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = v15;
  *(v17 + 4) = a2;
  sub_197979D80();
  (*(v4 + 32))(&v17[v16], v6, v3);
  swift_retain_n();
  sub_19795CB2C();
}

uint64_t sub_197A7848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v6[7] = *(v9 + 64);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A78568, a4, 0);
}

void sub_197A78568()
{
  OUTLINED_FUNCTION_33();
  (*(v0[6] + 16))(v0[8], v0[4], v0[5]);
  v0[9] = swift_allocObject();
  OUTLINED_FUNCTION_211_0();
  v1();
  OUTLINED_FUNCTION_17(&unk_197AA18F8);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_197A7868C;
  OUTLINED_FUNCTION_112();

  __asm { BR              X0 }
}

uint64_t sub_197A7868C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_197A787F4;
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = sub_197A7879C;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A7879C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A787F4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);

  sub_197A87B88();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A78874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_197A78894, 0, 0);
}

uint64_t sub_197A78894()
{
  OUTLINED_FUNCTION_9();
  sub_197A743A8(*(v0 + 24));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_197A788EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RequestKey(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_197969950();
  v10 = (v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_197979D80();
  *(v11 + v10) = a2;

  sub_19795CB2C();
}

uint64_t sub_197A78AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5[4] = swift_task_alloc();
  v5[5] = type metadata accessor for RequestKey(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A78B80, 0, 0);
}

uint64_t sub_197A78B80()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_180_1();
  __swift_project_value_buffer(v3, qword_1ED87D2C0);
  OUTLINED_FUNCTION_12_12();
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v4 = sub_197A875E8();
  v5 = sub_197A87D78();
  v6 = OUTLINED_FUNCTION_48(v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    OUTLINED_FUNCTION_143_4();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_194();
    *v1 = 136315394;
    OUTLINED_FUNCTION_140();
    sub_197944528();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v8 = OUTLINED_FUNCTION_129_3();
    sub_197947A40(v8, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_10_15();
    sub_197969A00(v7, v9);
    v10 = OUTLINED_FUNCTION_108_3();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_42_8();
    *(v1 + 14) = v7;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(*(v0 + 48), type metadata accessor for RequestKey);

    v18 = OUTLINED_FUNCTION_140();
    sub_197969A00(v18, v19);
  }

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_138_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_73_8(v21);
  OUTLINED_FUNCTION_142();

  return sub_197A77794(v23, v24);
}

uint64_t sub_197A78D60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A78E9C()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v3);
  v1[4] = OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for RequestKey(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_28(v4);
  v1[6] = OUTLINED_FUNCTION_90_4();
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A78F50()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_180_1();
  __swift_project_value_buffer(v3, qword_1ED87D2C0);
  OUTLINED_FUNCTION_12_12();
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v4 = sub_197A875E8();
  v5 = sub_197A87D78();
  v6 = OUTLINED_FUNCTION_48(v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    OUTLINED_FUNCTION_143_4();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_194();
    *v1 = 136315394;
    OUTLINED_FUNCTION_140();
    sub_197944528();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v8 = OUTLINED_FUNCTION_129_3();
    sub_197947A40(v8, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_10_15();
    sub_197969A00(v7, v9);
    v10 = OUTLINED_FUNCTION_108_3();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_42_8();
    *(v1 + 14) = v7;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(*(v0 + 48), type metadata accessor for RequestKey);

    v18 = OUTLINED_FUNCTION_140();
    sub_197969A00(v18, v19);
  }

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_138_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_73_8(v21);
  OUTLINED_FUNCTION_142();

  return sub_197A77794(v23, v24);
}

uint64_t sub_197A79130()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v1[2] = v4;
  v1[3] = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v5);
  v1[4] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for RequestKey(0);
  v1[5] = v6;
  OUTLINED_FUNCTION_28(v6);
  v1[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v1[7] = v7;
  v1[8] = v8;
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A79558()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v3);
  v1[4] = OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for RequestKey(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_28(v4);
  v1[6] = OUTLINED_FUNCTION_90_4();
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A7960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_180_1();
  __swift_project_value_buffer(v17, qword_1ED87D2C0);
  OUTLINED_FUNCTION_12_12();
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v18 = sub_197A875E8();
  v19 = sub_197A87D78();
  v20 = OUTLINED_FUNCTION_48(v19);
  v21 = *(v14 + 56);
  if (v20)
  {
    OUTLINED_FUNCTION_143_4();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_194();
    *v15 = 136315394;
    OUTLINED_FUNCTION_140();
    sub_197944528();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v22 = OUTLINED_FUNCTION_129_3();
    sub_197947A40(v22, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_10_15();
    sub_197969A00(v21, v23);
    v24 = OUTLINED_FUNCTION_108_3();
    sub_197948834(v24, v25, v26);
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_42_8();
    *(v15 + 14) = v21;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(*(v14 + 48), type metadata accessor for RequestKey);

    v32 = OUTLINED_FUNCTION_140();
    sub_197969A00(v32, v33);
  }

  OUTLINED_FUNCTION_17(&unk_197AA18F8);
  v47 = v34;
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_138_3(v35);
  *v36 = v37;
  v36[1] = sub_197A79814;
  OUTLINED_FUNCTION_142();

  return v38(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, a11, a12, a13, a14);
}

uint64_t sub_197A79814()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_52_5();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A79930()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A799BC()
{
  OUTLINED_FUNCTION_9();
  sub_197A7424C();
  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_197A79A14()
{
  v1 = OUTLINED_FUNCTION_49_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_27();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6 - 8];
  OUTLINED_FUNCTION_2_20();
  sub_197969950();
  OUTLINED_FUNCTION_46(v0 + 160, v11);
  sub_197A8004C(v7, v4);
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v7, v8);
  return swift_endAccess();
}

uint64_t sub_197A79AD4()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2C8, &qword_197AA18D0);
  OUTLINED_FUNCTION_28(v3);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v4);
  v1[9] = OUTLINED_FUNCTION_78_0();
  v5 = type metadata accessor for RequestKey(0);
  v1[10] = v5;
  OUTLINED_FUNCTION_28(v5);
  v1[11] = OUTLINED_FUNCTION_90_4();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A79BB4()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v3 = sub_197A87608();
  __swift_project_value_buffer(v3, qword_1ED87D2C0);
  OUTLINED_FUNCTION_12_12();
  sub_197969950();
  OUTLINED_FUNCTION_100();
  sub_197969950();
  v4 = sub_197A875E8();
  v5 = sub_197A87D78();
  v6 = OUTLINED_FUNCTION_48(v5);
  v7 = v0[12];
  if (v6)
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_194();
    *v1 = 136315394;
    OUTLINED_FUNCTION_140();
    sub_197944528();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v8 = OUTLINED_FUNCTION_129_3();
    sub_197947A40(v8, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_10_15();
    sub_197969A00(v7, v9);
    v10 = OUTLINED_FUNCTION_108_3();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_226_0();
    OUTLINED_FUNCTION_42_8();
    *(v1 + 14) = v7;
    OUTLINED_FUNCTION_43_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  else
  {
    sub_197969A00(v0[11], type metadata accessor for RequestKey);

    v18 = OUTLINED_FUNCTION_140();
    sub_197969A00(v18, v19);
  }

  v20 = v0[8];
  v21 = v0[6];
  OUTLINED_FUNCTION_116_5(v0[7] + 160);
  sub_197A83400(v21, v20);
  sub_197947A40(v20, &qword_1EAF4B2C8, &qword_197AA18D0);
  swift_endAccess();
  v0[5] = 1;
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_197A79E08;
  OUTLINED_FUNCTION_32_1(v0[6]);
  OUTLINED_FUNCTION_142();

  return sub_197A79130();
}

uint64_t sub_197A79E08()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v4;
  v5[1] = sub_197A79F54;
  v6 = OUTLINED_FUNCTION_32_1(*(v1 + 48));

  return sub_197A77794(v6, 1);
}

uint64_t sub_197A79F54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A7A0AC(uint64_t a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_49_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  sub_197961900(a1, v7);
  OUTLINED_FUNCTION_2_20();
  sub_197969950();
  type metadata accessor for InferenceProviderRequestStream(0);
  swift_allocObject();
  InferenceProviderRequestStream.init(stream:id:)(v7);
  OUTLINED_FUNCTION_46(v2 + 184, v7);

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 184);
  OUTLINED_FUNCTION_59_1();
  sub_197A257E8();
  *(v2 + 184) = v6;
  swift_endAccess();
}

uint64_t sub_197A7A1AC(uint64_t a1)
{
  v3 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v9 = OUTLINED_FUNCTION_28(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27();
  v53 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_200();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - v17;
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  v19 = *(v1 + 184);
  if (*(v19 + 16))
  {
    sub_197A878A8();
    v20 = sub_197A40900();
    if (v21)
    {
      v7 = *(*(v19 + 56) + 8 * v20);

      return v7;
    }
  }

  v50[2] = v2;
  v50[3] = v3;
  v22 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v23, 255, v24);
  v50[1] = v22;
  OUTLINED_FUNCTION_64_11();
  v50[4] = swift_allocError();
  v51 = 0;
  v50[0] = v25;
  v52 = 0xE000000000000000;
  sub_197A87E58();
  MEMORY[0x19A8EAC80](0xD000000000000010, 0x8000000197AA4CF0);
  type metadata accessor for RequestKey(0);
  sub_197A87EA8();
  v26 = v51;
  v27 = v52;
  v28 = sub_197A87898();
  v29 = sub_197A87258();
  v30 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  sub_197947A40(v18, &qword_1EAF48B20, &qword_197A89620);
  v33 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  sub_197944528();
  *v7 = v26;
  *(v7 + 8) = v27;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = v28;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v36 = v53;
  sub_197944528();
  v37 = OUTLINED_FUNCTION_96();
  LODWORD(v28) = __swift_getEnumTagSinglePayload(v37, v38, v29);
  sub_197947A40(v16, &qword_1EAF48B20, &qword_197A89620);
  sub_197947A40(v18, &qword_1EAF48B20, &qword_197A89620);
  if (v28 == 1)
  {
    v39 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
    v42 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v42, v43, v29) != 1)
    {
      sub_197947A40(v36, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    v44 = OUTLINED_FUNCTION_100_0();
    v45(v44);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v29);
  }

  sub_19794B118();
  OUTLINED_FUNCTION_34_8();
  sub_197979D80();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v7;
}

uint64_t sub_197A7A59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(type metadata accessor for RequestKey(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A7A6A0, v4, 0);
}

uint64_t sub_197A7A934()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7AA48()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_197A7AAC4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A7AB38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A7AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(type metadata accessor for RequestKey(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A7AFBC, v4, 0);
}

uint64_t sub_197A7B250()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7B364()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A7B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(type metadata accessor for RequestKey(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A7B7E8, v4, 0);
}

uint64_t sub_197A7BA7C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A7BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v12 = (a5 + *a5);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_197960FB0;

  return v12(a1, a7);
}

uint64_t sub_197A7BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2E0, &qword_197AA1A18);
  v8 = swift_task_alloc();
  v7[11] = v8;
  v9 = swift_task_alloc();
  v7[12] = v9;
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v9 = v7;
  v9[1] = sub_197A7C030;

  return MEMORY[0x1EEE6DA10](v8);
}

uint64_t sub_197A7C030()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_52_5();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7C14C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  sub_197947A40(v0, &qword_1EAF4B2E0, &qword_197AA1A18);
  OUTLINED_FUNCTION_191_0();
  if (v5)
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_189_0();
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_188_0();

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_197A7C208()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);
  v2 = OUTLINED_FUNCTION_27_13();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_197947A40(v1, &qword_1EAF4B2E0, &qword_197AA1A18);
  OUTLINED_FUNCTION_191_0();
  if (v6)
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_189_0();
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_188_0();

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A7C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2D8, &unk_197AA19C8);
  v8 = swift_task_alloc();
  v7[11] = v8;
  v9 = swift_task_alloc();
  v7[12] = v9;
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v9 = v7;
  v9[1] = sub_197A7C3F8;

  return MEMORY[0x1EEE6DA10](v8);
}

uint64_t sub_197A7C3F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_52_5();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7C514()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  sub_197947A40(v0, &qword_1EAF4B2D8, &unk_197AA19C8);
  OUTLINED_FUNCTION_191_0();
  if (v5)
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_189_0();
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_188_0();

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_197A7C5D0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);
  v2 = OUTLINED_FUNCTION_27_13();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_197947A40(v1, &qword_1EAF4B2D8, &unk_197AA19C8);
  OUTLINED_FUNCTION_191_0();
  if (v6)
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_189_0();
  }

  OUTLINED_FUNCTION_58_12();
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_188_0();

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_197A7C694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  v8 = swift_task_alloc();
  v7[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v8 = v7;
  v8[1] = sub_197A7C764;

  return MEMORY[0x1EEE6DA10](v9);
}

uint64_t sub_197A7C764()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_52_5();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7C880()
{
  OUTLINED_FUNCTION_9();
  if (*(*(v0 + 64) + OBJC_IVAR____TtC20ModelManagerServices30InferenceProviderRequestStream_hasTriggeredEndOfStream) == 1)
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_189_0();
  }

  OUTLINED_FUNCTION_116_5(*(v0 + 72) + 176);
  sub_197A40F3C();
  OUTLINED_FUNCTION_188_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A7C920(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v3 = v1;
  v3[1] = sub_197960E38;

  return MEMORY[0x1EEE6DA10](a1);
}

uint64_t sub_197A7CA08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return MEMORY[0x1EEE6DA10](a1);
}

uint64_t sub_197A7CAF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return MEMORY[0x1EEE6DA10](a1);
}

uint64_t sub_197A7CBC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_22();

  return sub_197A87C38();
}

uint64_t sub_197A7CC2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);

  return sub_197A87C38();
}

uint64_t InferenceProviderXPCRequestDispatcher.deinit()
{
  sub_197A7510C(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InferenceProviderXPCRequestDispatcher.__deallocating_deinit()
{
  InferenceProviderXPCRequestDispatcher.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A7CD28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_83_7();

  return sub_19796A470();
}

uint64_t sub_197A7CDBC()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);

  return sub_197A7520C();
}

uint64_t sub_197A7CE60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2C8, &qword_197AA18D0);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for RequestKey(0);
  v5 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2F8, &qword_197AA1A30);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_197944528();
  v10 = OUTLINED_FUNCTION_59_1();
  sub_197947A40(v10, v11, &qword_197AA18D0);
  *(v1 + 16) = a1;
  *(v1 + 24) = v9;
  return v1;
}

uint64_t sub_197A7CFF0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_193_0(v1, v2);
  v3 = type metadata accessor for RequestKey(0);
  v0[5] = v3;
  OUTLINED_FUNCTION_28(v3);
  v0[6] = OUTLINED_FUNCTION_78_0();
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v5 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(0);
  OUTLINED_FUNCTION_28(v5);
  v0[8] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_28(v6);
  v0[10] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A7D0D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_162_2(v0[3]);
  sub_197969950();
  OUTLINED_FUNCTION_63();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v2 = v0[8];
      v3 = v0[4];
      sub_197979D80();
      v4 = *(v3 + 24);
      *(swift_task_alloc() + 16) = v2;
      v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
      v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v4 + v6));
      sub_197A7F3A8(v4 + v5);
      os_unfair_lock_unlock((v4 + v6));
      v7 = v0[8];

      v8 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake;
      v9 = v7;
      goto LABEL_4;
    }

    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v19 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v19, qword_1ED87D2C0);
    v20 = sub_197A875E8();
    v21 = sub_197A87D58();
    if (OUTLINED_FUNCTION_184_0(v21))
    {
      OUTLINED_FUNCTION_95_8();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v22);
      OUTLINED_FUNCTION_203_0();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v28 = v0[10];
    v29 = v0[2];

    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2B0, &qword_197AA1328);
    v29[4] = OUTLINED_FUNCTION_44_10(&qword_1ED87D7B8);
    v29[5] = OUTLINED_FUNCTION_26_8(&qword_1ED87D7C0);
    __swift_allocate_boxed_opaque_existential_1(v29);
    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_105();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_100();
    swift_storeEnumTagMultiPayload();
    v30 = type metadata accessor for InferenceProviderXPCRequest;
LABEL_21:
    sub_197969A00(v28, v30);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  v14 = v0[7];
  v15 = v0[4];
  OUTLINED_FUNCTION_114_2();
  sub_197979D80();
  v16 = *(v15 + 24);
  *(swift_task_alloc() + 16) = v14;
  v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v16 + v18));
  sub_197A7F38C(v16 + v17);
  os_unfair_lock_unlock((v16 + v18));

  OUTLINED_FUNCTION_100();
  v31 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
  if ((v31 & 1) == 0 || (v32 = v0[7], v33 = *(v0[5] + 20), *(v0[6] + v33) != *(v32 + v33)))
  {
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v36 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v36, qword_1ED87D2C0);
    v37 = sub_197A875E8();
    v38 = sub_197A87D58();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_95_8();
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_197941000, v37, v38, "Direct InferenceProvider connection reused for different request", v39, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v40 = v0[6];
    v28 = v0[7];
    v41 = v0[2];

    v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2B0, &qword_197AA1328);
    v41[4] = OUTLINED_FUNCTION_44_10(&qword_1ED87D7B8);
    v41[5] = OUTLINED_FUNCTION_26_8(&qword_1ED87D7C0);
    __swift_allocate_boxed_opaque_existential_1(v41);
    type metadata accessor for ModelManagerError(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_59_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_20();
    sub_197969A00(v40, v42);
    v30 = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v34, v35);
  v8 = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest;
  v9 = v32;
LABEL_4:
  sub_197969A00(v9, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[11] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_157_2(v10);
  OUTLINED_FUNCTION_112();

  return sub_19796A470();
}

uint64_t sub_197A7D61C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_197A7D77C(uint64_t a1)
{
  sub_197947A40(a1, &qword_1EAF4B2C8, &qword_197AA18D0);
  sub_197969950();
  v2 = type metadata accessor for RequestKey(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_197A7D800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2C8, &qword_197AA18D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  sub_197944528();
  v8 = type metadata accessor for RequestKey(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    return sub_197979D80();
  }

  sub_197947A40(a1, &qword_1EAF4B2C8, &qword_197AA18D0);
  sub_197947A40(v7, &qword_1EAF4B2C8, &qword_197AA18D0);
  sub_197969950();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  sub_197944528();
  result = __swift_getEnumTagSinglePayload(v5, 1, v8);
  if (result != 1)
  {
    return sub_197979D80();
  }

  __break(1u);
  return result;
}

uint64_t sub_197A7D9BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A7D9D8, 0);
}

uint64_t sub_197A7D9D8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_196_0(v1);

  return sub_197A0CE04();
}

uint64_t sub_197A7DA7C()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2C8, &qword_197AA18D0);
  OUTLINED_FUNCTION_28(v2);
  v1[3] = OUTLINED_FUNCTION_78_0();
  v3 = type metadata accessor for RequestKey(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_28(v3);
  v1[5] = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A7DB24()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 24);
  v4 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v4));
  sub_197944528();
  os_unfair_lock_unlock((v3 + v4));
  OUTLINED_FUNCTION_64_0(v1, 1, v2);
  if (v5)
  {
    sub_197947A40(v0[3], &qword_1EAF4B2C8, &qword_197AA18D0);
    if (qword_1ED87D788 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v6 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v6, qword_1ED87D2C0);
    v7 = sub_197A875E8();
    v8 = sub_197A87D58();
    if (OUTLINED_FUNCTION_65(v8))
    {
      OUTLINED_FUNCTION_95_8();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(v9);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_3_21();
  sub_197979D80();
  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = sub_197A7DD40;
  OUTLINED_FUNCTION_32_1(v0[5]);
  OUTLINED_FUNCTION_112();

  return sub_197A79AD4();
}

uint64_t sub_197A7DD40()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A7DE24()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_20();
  sub_197969A00(v0, v1);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A7DE94()
{

  return v0;
}

uint64_t sub_197A7DEBC()
{
  sub_197A7DE94();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_197A7DEF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_197A7CFF0();
}

uint64_t sub_197A7DF9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return sub_197A7D9BC(a1);
}

uint64_t sub_197A7E034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_197A7DA7C();
}

uint64_t sub_197A7E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v59 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v52 - v7;
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  v9 = MEMORY[0x1EEE9AC00](NextStreamResultsRequest - 8);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v52 - v23;
  if (qword_1ED87D788 != -1)
  {
    swift_once();
  }

  v25 = sub_197A87608();
  v26 = __swift_project_value_buffer(v25, qword_1ED87D2C0);
  sub_197944528();
  sub_197969950();
  v60 = a2;
  sub_197969950();
  v56 = v26;
  v27 = sub_197A875E8();
  v28 = sub_197A87D78();
  if (os_log_type_enabled(v27, v28))
  {
    v55 = a1;
    v29 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63 = v53;
    *v29 = 134218498;
    sub_197944528();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v54 = v13;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = *(*&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348) + 48)] + 24);

        v33 = __OFADD__(v31, 1);
        v34 = v31 + 1;
        if (v33)
        {
          __break(1u);
          return result;
        }

        sub_197969A00(v22, type metadata accessor for ClientData);
      }

      else
      {
        sub_197947A40(v22, &qword_1EAF499D8, &unk_197A92330);
        v34 = 0;
      }
    }

    else
    {
      sub_197947A40(v22, &qword_1EAF499D8, &unk_197A92330);
      v34 = 1;
    }

    sub_197947A40(v24, &qword_1EAF499D8, &unk_197A92330);
    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    sub_197969950();
    v35 = v57;
    sub_19794B118();
    v36 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v38 = v37;
    sub_197947A40(v35, &qword_1EAF49128, &unk_197A8CE70);
    sub_197969A00(v18, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
    v39 = sub_197948834(v36, v38, &v63);

    *(v29 + 14) = v39;
    *(v29 + 22) = 1024;
    LODWORD(v39) = *&v16[*(v59 + 20)];
    sub_197969A00(v16, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
    *(v29 + 24) = v39;
    _os_log_impl(&dword_197941000, v27, v28, "Consumed %ld elements from stream %s : %u", v29, 0x1Cu);
    v40 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x19A8EBE00](v40, -1, -1);
    MEMORY[0x19A8EBE00](v29, -1, -1);

    v13 = v54;
    a1 = v55;
  }

  else
  {
    sub_197969A00(v16, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
    sub_197947A40(v24, &qword_1EAF499D8, &unk_197A92330);

    sub_197969A00(v18, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
  }

  v41 = sub_1979CF300();
  v42 = v62;
  if (v41)
  {
    sub_197969950();
    sub_197969950();
    v43 = sub_197A875E8();
    v44 = sub_197A87D78();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v63 = v46;
      *v45 = 136315394;
      sub_197969950();
      v55 = a1;
      v47 = v57;
      sub_19794B118();
      v48 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v50 = v49;
      sub_197947A40(v47, &qword_1EAF49128, &unk_197A8CE70);
      sub_197969A00(v13, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
      v51 = sub_197948834(v48, v50, &v63);

      *(v45 + 4) = v51;
      *(v45 + 12) = 1024;
      LODWORD(v51) = *(v62 + *(v59 + 20));
      sub_197969A00(v62, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
      *(v45 + 14) = v51;
      _os_log_impl(&dword_197941000, v43, v44, "Reached end of stream %s : %u", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x19A8EBE00](v46, -1, -1);
      MEMORY[0x19A8EBE00](v45, -1, -1);
    }

    else
    {
      sub_197969A00(v42, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);

      sub_197969A00(v13, type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
    }
  }

  return sub_197944528();
}

uint64_t sub_197A7E858(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4B2B0, &qword_197AA1328);
    v6 = sub_197973734(&qword_1ED8813C8, 255, type metadata accessor for ModelManagerError);
    v7 = sub_197973734(&qword_1ED8813D0, 255, type metadata accessor for ModelManagerError);
    v8[0] = MEMORY[0x1E69E7400];
    v8[1] = MEMORY[0x1E69E73E8];
    v8[2] = v6;
    v8[3] = v7;
    result = swift_getWitnessTable(a2, v5, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197A7E948()
{
  type metadata accessor for ClientData(0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t dispatch thunk of InferenceProviderRequestStream.startBuffering()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v5 = (*(v0 + 208) + **(v0 + 208));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);

  return v5();
}

uint64_t dispatch thunk of InferenceProviderRequestStream.cancelBufferingAndWait(isolatedTo:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  OUTLINED_FUNCTION_7_2();
  v7 = (*(v2 + 216) + **(v2 + 216));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);

  return v7(v1);
}

uint64_t dispatch thunk of InferenceProviderRequestStream.next()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v0 + 240) + **(v0 + 240));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of InferenceProviderRequestStream.nextBufferResult()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v0 + 248) + **(v0 + 248));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of InferenceProviderXPCRequestDispatcher.handleIncomingRequestWithReply(_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v0 + 216) + **(v0 + 216));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  v4 = OUTLINED_FUNCTION_83_7();

  return v6(v4);
}

uint64_t dispatch thunk of InferenceProviderXPCRequestDispatcher.handleIncomingRequest(_:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  OUTLINED_FUNCTION_7_2();
  v7 = (*(v2 + 224) + **(v2 + 224));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);

  return v7(v1);
}

uint64_t sub_197A7F180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197A7F1BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_197A7F208(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_197A7F288()
{
  result = qword_1EAF4B2C0;
  if (!qword_1EAF4B2C0)
  {
    result = swift_getWitnessTable(aEvW, &type metadata for RequestKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4B2C0);
  }

  return result;
}

unint64_t sub_197A7F2E0()
{
  result = qword_1ED87FBB0;
  if (!qword_1ED87FBB0)
  {
    result = swift_getWitnessTable(byte_197AA173C, &type metadata for RequestKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FBB0);
  }

  return result;
}

unint64_t sub_197A7F338()
{
  result = qword_1ED87FBB8;
  if (!qword_1ED87FBB8)
  {
    result = swift_getWitnessTable(byte_197AA1764, &type metadata for RequestKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FBB8);
  }

  return result;
}

uint64_t sub_197A7F3C4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    result = type metadata accessor for ClientData(0);
    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197A7F474(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = type metadata accessor for ClientData(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v39 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v39 - v18;
  v53 = a4;
  v54 = a5;
  v47 = v11;
  v48 = a5;
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v49 = &v55;
  v50 = sub_197A84A74;
  v51 = &v52;
  v20 = a3 + ((*(v11 + 80) + 40) & ~*(v11 + 80));
  result = sub_197A844AC((a3 + 16), v20, sub_197A84B44);
  if ((v22 & 1) == 0)
  {
    return result;
  }

  v39 = v19;
  v40 = v10;
  v55 = a1;
  v56 = a2;
  v46 = a2;
  v57 = a3;
  v23 = MEMORY[0x1EEE9AC00](result);
  v24 = v48;
  *(&v39 - 2) = a4;
  *(&v39 - 1) = v24;
  MEMORY[0x1EEE9AC00](v23);
  *(&v39 - 4) = &v55;
  *(&v39 - 3) = sub_197A84B64;
  *(&v39 - 2) = v25;

  v45 = v20;
  result = sub_197A8458C((a3 + 16), v20, sub_197A84B80);
  if (v27)
  {
    v41 = 0;
    v28 = a1;
    if (a4)
    {
      v29 = v40;
      v30 = v39;
      v31 = v46;
      v32 = v48;
      if (v48)
      {
        if (v48 < 0)
        {
LABEL_42:
          __break(1u);
          return result;
        }

        v33 = 0;
        v41 = v46 - a1;
        v44 = a1 - v46;
        while (v33 < v32)
        {
          if (__OFADD__(v33, 1))
          {
            goto LABEL_33;
          }

          if (!(v44 + v33))
          {
            v29 = v40;
            v30 = v39;
            goto LABEL_28;
          }

          if ((a1 + v33) >= v31)
          {
            goto LABEL_34;
          }

          if (a1 < 0)
          {
            goto LABEL_35;
          }

          if ((a1 + v33) >= *(a3 + 24))
          {
            goto LABEL_36;
          }

          v34 = *(v47 + 72);
          sub_197969950();
          sub_197979D80();
          result = sub_197979D80();
          v32 = v48;
          if (v33 + 1 == v48)
          {
            v28 = a1 + v33 + 1;
            v41 = v48;
            goto LABEL_17;
          }

          a4 += v34;
          ++v33;
          v31 = v46;
        }

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
        goto LABEL_38;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v28 = a1 + v26;
    if (__OFADD__(a1, v26))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v41 = v26;
  }

LABEL_17:
  v29 = v40;
  v30 = v39;
  v31 = v46;
LABEL_18:
  if (v28 == v31)
  {
LABEL_28:
    v36 = v30;
    v37 = 1;
  }

  else
  {
    if (v28 < a1 || v28 >= v31)
    {
      goto LABEL_39;
    }

    if (v28 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v28 >= *(a3 + 24))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_197969950();
    sub_197979D80();
    sub_197979D80();
    v36 = v30;
    v37 = 0;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v29);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v29);
  sub_197947A40(v30, &qword_1EAF49110, &qword_197A92D60);
  result = v41;
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_37;
  }

  return result;
}

void *sub_197A7F9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - v7;
  result = type metadata accessor for ClientData(0);
  v10 = result;
  v11 = (*(*(result - 1) + 80) + 40) & ~*(*(result - 1) + 80);
  v12 = a1 + v11;
  v13 = a1[4];
  v14 = a1[3] + v13;
  if (a1[2] >= v14)
  {
    v16 = a1[3];
    if (v14 >= v13)
    {
      if (!__OFSUB__(v14, v13))
      {
        if (v16)
        {
          if (v16 > a3)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();
        }

        return v16;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31[0] = (*(*(result - 1) + 80) + 40) & ~*(*(result - 1) + 80);
  result = sub_197A825A8(a1 + 2, a1 + v11, &v32);
  v15 = v33;
  if (v33 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v33;
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_197A83168(v16);
  sub_197A84678(v17, v18, v19, v20, 0, v16, a2);
  if (v15 >= a3 || (v35 & 1) != 0)
  {
    v21 = sub_197A84770(a1 + 2, v12, v16);
LABEL_20:
    v31[2] = v21;
    v31[3] = v22;
    v31[4] = v23;
    if (v22 == v23 && (sub_197A8331C() & 1) == 0)
    {
      v29 = 1;
    }

    else
    {
      sub_197969950();
      v29 = 0;
    }

    __swift_storeEnumTagSinglePayload(v8, v29, 1, v10);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    result = sub_197947A40(v8, &qword_1EAF49110, &qword_197A92D60);
    if (EnumTagSinglePayload == 1)
    {
      return v16;
    }

    goto LABEL_29;
  }

  if (a3 - v16 >= v34)
  {
    result = v34;
  }

  else
  {
    result = (a3 - v16);
  }

  v24 = result + v16;
  if (__OFADD__(v16, result))
  {
    goto LABEL_31;
  }

  if (v24 >= v16)
  {
    v25 = sub_197A83168(result);
    sub_197A84678(v25, v26, v27, v28, v16, v24, a2);
    v21 = sub_197A84770(a1 + 2, v12, v24);
    v16 = v24;
    goto LABEL_20;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_197A7FC78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return 0;
  }

  v4 = a2;
  if (!a2)
  {
    return v4;
  }

  if (a4 >= a2)
  {
    type metadata accessor for ClientData(0);
    swift_arrayInitWithCopy();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A7FD14()
{
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = type metadata accessor for ClientData(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197A7FDB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_197AA1290;
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

void sub_197A7FE14()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v26 = v3;
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_2();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v24 - v11;
  v25 = v0;
  v12 = *v0;
  sub_197A882F8();
  v28 = v4;
  sub_197A87298();
  OUTLINED_FUNCTION_6_15();
  sub_197973734(v13, 255, v14);
  sub_197A878F8();
  v15 = sub_197A88358();
  v16 = ~(-1 << *(v12 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((1 << (v15 & v16)) & *(v12 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v20 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_10();
      v22 = v24;
      sub_197969950();
      v29 = *v20;
      sub_197A80A18(v22, v17, isUniquelyReferenced_nonNull_native);
      *v20 = v29;
      OUTLINED_FUNCTION_111_4();
      sub_197979D80();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9_10();
    sub_197969950();
    v18 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
    OUTLINED_FUNCTION_35_6();
    sub_197969A00(v9, v19);
    if (v18)
    {
      break;
    }

    v15 = v17 + 1;
  }

  OUTLINED_FUNCTION_35_6();
  sub_197969A00(v2, v23);
  OUTLINED_FUNCTION_9_10();
  sub_197969950();
LABEL_7:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A8004C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = type metadata accessor for RequestKey(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - v8;
  v22 = v2;
  v9 = *v2;
  sub_197A882F8();
  sub_197A87298();
  sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
  sub_197A878F8();
  v24 = v4;
  v10 = *(a2 + *(v4 + 20));
  sub_197A88338();
  v11 = sub_197A88358();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      sub_197969950();
      if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0())
      {
        v15 = *&v7[*(v24 + 20)];
        sub_197969A00(v7, type metadata accessor for RequestKey);
        if (v15 == v10)
        {
          sub_197969A00(a2, type metadata accessor for RequestKey);
          sub_197969950();
          return 0;
        }
      }

      else
      {
        sub_197969A00(v7, type metadata accessor for RequestKey);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v21;
  sub_197969950();
  v25[0] = *v16;
  sub_197A80C90(v18, v13, isUniquelyReferenced_nonNull_native);
  *v16 = v25[0];
  sub_197979D80();
  return 1;
}

uint64_t sub_197A80350(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Assertion.DaemonRep(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B330, &qword_197AA1B30);
  result = sub_197A87E38();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v25 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_197A7FDB0(0, (v24 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_197979D80();
    sub_197A882F8();
    sub_197A87298();
    sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
    sub_197A878F8();
    result = sub_197A88358();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_197979D80();
    ++*(v6 + 16);
    v4 = v25;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_197A806B0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2D0, &qword_197AA18E8);
  result = sub_197A87E38();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v25 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_197A7FDB0(0, (v24 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_197979D80();
    sub_197A882F8();
    sub_197A87298();
    sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
    sub_197A878F8();
    sub_197A88338();
    result = sub_197A88358();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_197979D80();
    ++*(v6 + 16);
    v4 = v25;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_197A80A18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for Assertion.DaemonRep(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_197A80350(v9 + 1);
      goto LABEL_8;
    }

    if (v10 <= v9)
    {
      sub_197A81324(v9 + 1);
LABEL_8:
      v20 = v3;
      v11 = *v3;
      sub_197A882F8();
      sub_197A87298();
      sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
      sub_197A878F8();
      v12 = sub_197A88358();
      v13 = ~(-1 << *(v11 + 32));
      while (1)
      {
        a2 = v12 & v13;
        if (((*(v11 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        sub_197969950();
        v14 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
        sub_197969A00(v8, type metadata accessor for Assertion.DaemonRep);
        if (v14)
        {
          goto LABEL_16;
        }

        v12 = a2 + 1;
      }

      v3 = v20;
      goto LABEL_13;
    }

    sub_197A80F54();
  }

LABEL_13:
  v15 = *v3;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_197979D80();
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_16:
    result = sub_197A88278();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_197A80C90(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for RequestKey(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24[1] = v8;
  v25 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_197A806B0(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_197A8111C();
        goto LABEL_15;
      }

      sub_197A81654(v11 + 1);
    }

    v13 = *v3;
    sub_197A882F8();
    sub_197A87298();
    sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
    sub_197A878F8();
    v14 = *(a1 + *(v7 + 20));
    sub_197A88338();
    v15 = sub_197A88358();
    v16 = -1 << *(v13 + 32);
    a2 = v15 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      do
      {
        sub_197969950();
        if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0())
        {
          v18 = *&v10[*(v7 + 20)];
          sub_197969A00(v10, type metadata accessor for RequestKey);
          if (v18 == v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_197969A00(v10, type metadata accessor for RequestKey);
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_15:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_197979D80();
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_18:
    result = sub_197A88278();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void sub_197A80F54()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v2 = type metadata accessor for Assertion.DaemonRep(0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B330, &qword_197AA1B30);
  v4 = *v0;
  v5 = sub_197A87E28();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v14 &= v14 - 1;
LABEL_17:
        OUTLINED_FUNCTION_9_10();
        sub_197969950();
        OUTLINED_FUNCTION_111_4();
        sub_197979D80();
      }

      while (v14);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v17 = *(v4 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v14 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v6;
    OUTLINED_FUNCTION_66();
  }
}

void *sub_197A8111C()
{
  v1 = v0;
  v2 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2D0, &qword_197AA18E8);
  v3 = *v0;
  v4 = sub_197A87E28();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_197969950();
        result = sub_197979D80();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

uint64_t sub_197A81324(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Assertion.DaemonRep(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B330, &qword_197AA1B30);
  result = sub_197A87E38();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_197969950();
        sub_197A882F8();
        sub_197A87298();
        sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
        sub_197A878F8();
        result = sub_197A88358();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_197979D80();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_197A81654(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B2D0, &qword_197AA18E8);
  result = sub_197A87E38();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_197969950();
        sub_197A882F8();
        sub_197A87298();
        sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
        sub_197A878F8();
        sub_197A88338();
        result = sub_197A88358();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_197979D80();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

void sub_197A8198C()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = *v0;
  v10 = *v0 + 56;
  v11 = -1 << *(*v0 + 32);
  v12 = (v2 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_197A87E18();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = (v14 + 1) & v13;
      v34 = *(v4 + 72);
      v16 = v13;
      while (1)
      {
        v17 = v10;
        v18 = v34 * v12;
        OUTLINED_FUNCTION_9_10();
        sub_197969950();
        sub_197A882F8();
        v19 = v16;
        sub_197A87298();
        OUTLINED_FUNCTION_6_15();
        sub_197973734(&qword_1ED880FE0, 255, v20);
        sub_197A878F8();
        v21 = sub_197A88358();
        OUTLINED_FUNCTION_35_6();
        sub_197969A00(v8, v22);
        v23 = v21 & v19;
        v16 = v19;
        if (v2 >= v15)
        {
          if (v23 < v15 || v2 < v23)
          {
            goto LABEL_24;
          }
        }

        else if (v23 < v15 && v2 < v23)
        {
          goto LABEL_24;
        }

        v26 = *(v9 + 48);
        v27 = v34 * v2;
        v28 = v26 + v34 * v2;
        v29 = v26 + v18 + v34;
        if (v34 * v2 < v18 || v28 >= v29)
        {
          break;
        }

        v2 = v12;
        if (v27 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v17;
        if (((*(v17 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      v2 = v12;
      goto LABEL_24;
    }

LABEL_25:

    *(v10 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v10 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_197A81C34(int64_t a1)
{
  v31 = type metadata accessor for RequestKey(0);
  v3 = *(v31 - 8);
  result = MEMORY[0x1EEE9AC00](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_197A87E18();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v32 = *(v3 + 72);
      v14 = v11;
      while (1)
      {
        v15 = v8;
        v16 = v32 * v10;
        sub_197969950();
        sub_197A882F8();
        sub_197A87298();
        sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
        v17 = v14;
        sub_197A878F8();
        sub_197A88338();
        v18 = sub_197A88358();
        sub_197969A00(v6, type metadata accessor for RequestKey);
        v19 = v18 & v17;
        v14 = v17;
        if (a1 >= v13)
        {
          if (v19 < v13 || a1 < v19)
          {
            goto LABEL_24;
          }
        }

        else if (v19 < v13 && a1 < v19)
        {
          goto LABEL_24;
        }

        v22 = *(v7 + 48);
        v23 = v32 * a1;
        v24 = v22 + v32 * a1;
        v25 = v22 + v16 + v32;
        if (v32 * a1 < v16 || v24 >= v25)
        {
          break;
        }

        a1 = v10;
        if (v23 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v17;
        v8 = v15;
        if (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v10;
      goto LABEL_24;
    }

LABEL_25:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v7 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v29;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_197A81F38(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = type metadata accessor for ClientData(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v15 = *(*(v10 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B320, &qword_197AA1AC8);
    v14 = swift_allocObject();
    v16 = *(v7 + 24);
    *(v14 + 16) = v9;
    *(v14 + 24) = v16;
    if (v16 >= 1)
    {
      sub_197A82894(v14 + 16, v14 + ((v15 + 40) & ~v15), v8, v7 + ((v15 + 40) & ~v15));
    }
  }

  else
  {
    sub_197A87418();
    v12 = *(*(v11 - 8) + 80);
    if (a1)
    {
      v13 = *(v7 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B320, &qword_197AA1AC8);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_197A7FD14();
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      if (v13 >= 1)
      {
        sub_197A823AC(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
        *(v7 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B320, &qword_197AA1AC8);
      v14 = swift_allocObject();
      v17 = sub_197A7FD14();
      v18 = *(v7 + 24);
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = 0;
      if (v18 >= 1)
      {
        sub_197A82668(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12));
      }
    }
  }

  *v4 = v14;
  return result;
}

uint64_t sub_197A82164(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B338, &qword_197AA1B38);
    v10 = swift_allocObject();
    v15 = *(v5 + 24);
    *(v10 + 16) = v6;
    *(v10 + 24) = v15;
    if (v15 >= 1)
    {
      OUTLINED_FUNCTION_127_3();
      sub_197A829A4(v16, v17, v18, v19);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
    sub_197A87418();
    if (a1)
    {
      v8 = *(v5 + 24);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B338, &qword_197AA1B38);
      v10 = OUTLINED_FUNCTION_177_2(v9);
      *(v10 + 16) = sub_197A7FCEC();
      *(v10 + 24) = v8;
      *(v10 + 32) = 0;
      if (v8 >= 1)
      {
        OUTLINED_FUNCTION_127_3();
        sub_197A824CC(v11, v12, v13, v14);
        *(v5 + 24) = 0;
      }
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B338, &qword_197AA1B38);
      v10 = OUTLINED_FUNCTION_177_2(v20);
      v21 = sub_197A7FCEC();
      v22 = *(v5 + 24);
      *(v10 + 16) = v21;
      *(v10 + 24) = v22;
      *(v10 + 32) = 0;
      if (v22 >= 1)
      {
        OUTLINED_FUNCTION_127_3();
        sub_197A8278C(v23, v24, v25, v26);
      }
    }
  }

  *v4 = v10;
  return result;
}

void *sub_197A822DC(void *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = v2 + v1;
  if (!__OFADD__(v2, v1))
  {
    v4 = result;
    if ((v1 & 0x8000000000000000) == 0)
    {
      v5 = __OFSUB__(v3, *result);
      if (v3 < *result || (v3 -= *result, !v5))
      {
LABEL_9:
        type metadata accessor for ClientData(0);
        result = sub_197969950();
        v6 = v4[1];
        v5 = __OFADD__(v6, 1);
        v7 = v6 + 1;
        if (!v5)
        {
          v4[1] = v7;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v3 < 0 && __OFADD__(v3, *result))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_197A823AC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ClientData(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_197A1F574(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_197A1F574(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

char *sub_197A824CC(uint64_t a1, char *a2, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = *a3 - v4;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = 0;
  v8 = 0;
  v9 = a3[1];
LABEL_6:
  if (v8)
  {
    v11 = v5 < v7;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v9 >= 1)
  {
    if (a4)
    {
      result = sub_197A21910(&a4[8 * v4], v9, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = 0;
LABEL_16:
  if (v5 < v7 && v8 >= 1)
  {
    if (v12)
    {
      return sub_197A21910(v12, v8, &a2[8 * v9]);
    }

LABEL_26:
    __break(1u);
  }

  return result;
}

void *sub_197A825A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for ClientData(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_197A82668(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ClientData(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_197A8278C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_197A82894(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ClientData(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_197A829A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_197A82AAC()
{
  v1 = *v0;
  v2 = type metadata accessor for ClientData(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B320, &qword_197AA1AC8);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_197A82894(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_197A82BA4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B338, &qword_197AA1B38);
  v5 = OUTLINED_FUNCTION_177_2(v4);
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_197A829A4(v5 + 16, v5 + 40, v2, v1 + 40);
  }

  *v0 = v5;
  return result;
}

uint64_t sub_197A82C38(void *a1)
{
  type metadata accessor for ClientData(0);
  result = sub_197979D80();
  v3 = a1[2];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = a1[1];
    if (v5 >= *a1)
    {
      v5 = 0;
    }

    a1[2] = v5;
    if (!__OFSUB__(v6, 1))
    {
      a1[1] = v6 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_197A82CE8(void *result)
{
  v1 = result;
  v2 = result[2];
  if (!v2)
  {
LABEL_5:
    v3 = *result - 1;
    if (__OFSUB__(*result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  type metadata accessor for ClientData(0);
  result = sub_197969950();
  v1[2] = v3;
  v4 = v1[1];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    v1[1] = v6;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void *sub_197A82DA0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = *result;
    v9 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = *result;
  if (v5 < 0)
  {
    v9 = __OFADD__(v5, v8);
    v5 += v8;
    if (v9)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v3 >= v8)
  {
    v16 = type metadata accessor for ClientData(0);
    v13 = 0;
    v14 = 0;
    v4 = 0;
    v17 = *(v16 - 8);
    result = (v16 - 8);
    v11 = v17;
    v15 = 1;
    goto LABEL_21;
  }

  if (v5 < v4)
  {
    v10 = type metadata accessor for ClientData(0);
    v12 = *(v10 - 8);
    result = (v10 - 8);
    v11 = v12;
    v13 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      v14 = 0;
      v4 = 0;
      v15 = 1;
LABEL_21:
      *a3 = a2 + *(v11 + 72) * v5;
      *(a3 + 8) = v13;
      *(a3 + 16) = v14;
      *(a3 + 24) = v4;
      *(a3 + 32) = v15;
      return result;
    }

    goto LABEL_23;
  }

  v13 = v8 - v5;
  if (!__OFSUB__(v8, v5))
  {
    if ((v4 & 0x8000000000000000) == 0 && v8 >= v5)
    {
      v15 = v4 == 0;
      if (v4)
      {
        v14 = a2;
      }

      else
      {
        v14 = 0;
      }

      v18 = type metadata accessor for ClientData(0);
      v19 = *(v18 - 8);
      result = (v18 - 8);
      v11 = v19;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_197A82EFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 32);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2[3];
  }

  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = *v2;
  v11 = v2[2];
  if (v9 <= result)
  {
LABEL_18:
    *a2 = v10;
    *(a2 + 8) = v4;
    *(a2 + 16) = v11;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6 & 1;
    return result;
  }

  if (v4 >= result)
  {
    result = sub_197A83168(result);
    v20 = result;
    v22 = v21;
    v10 = v23;
    if (v23)
    {
      v24 = type metadata accessor for ClientData(0);
      v25 = *(v24 - 8);
      result = v24 - 8;
      v10 += *(v25 + 72) * v20;
    }

    v11 = 0;
    v5 = 0;
    v4 = v22 - v20;
    v6 = 1;
    goto LABEL_18;
  }

  if ((v2[4] & 1) == 0)
  {
    v8 = __OFSUB__(result, v4);
    result -= v4;
    if (!v8)
    {
      result = sub_197A83168(result);
      v13 = result;
      v15 = v14;
      if (v12)
      {
        v16 = v12;
        v17 = type metadata accessor for ClientData(0);
        v18 = *(v17 - 8);
        result = v17 - 8;
        v19 = v16 + *(v18 + 72) * v13;
      }

      else
      {
        v19 = 0;
      }

      v5 = v15 - v13;
      v6 = v15 == v13;
      if (v15 == v13)
      {
        v11 = 0;
      }

      else
      {
        v11 = v19;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_197A83020(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      type metadata accessor for ClientData(0);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    type metadata accessor for ClientData(0);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  result = type metadata accessor for ClientData(0);
  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_197A83168(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A83198(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return result;
  }

  v5 = result;
  result = a3[1];
  v6 = __OFADD__(result, a2);
  v7 = result + a2;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  a3[1] = v7;
  if (v7 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_197A8323C(result, v7, a3, a4, &v11);
  v8 = v12;
  v9 = v13;
  if (v13)
  {
    v10 = v14;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v8 = 0;
  }

  if (v14)
  {
    v9 = 0;
  }

  v15 = v11;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  return sub_197A83020(v5, a2);
}

uint64_t sub_197A8323C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = type metadata accessor for ClientData(0);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197A8331C()
{
  v1 = *v0;
  v2 = *(type metadata accessor for ClientData(0) - 8);
  return sub_197A8339C(v1 + 16, v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v0) & 1;
}

uint64_t sub_197A8339C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 0)
  {
LABEL_7:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v6 = __OFADD__(v5, *result);
    v5 += *result;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v6 = __OFSUB__(v5, *result);
  if (v5 >= *result)
  {
    v5 -= *result;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v5 || v5 == *(a3 + 8))
  {
    return 0;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  return 1;
}

uint64_t sub_197A83400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v7 = *v2;
  sub_197A882F8();
  sub_197A87298();
  sub_197973734(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
  sub_197A878F8();
  v22 = v4;
  v8 = *(a1 + *(v4 + 20));
  sub_197A88338();
  v9 = sub_197A88358();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_8:
    v14 = v21;
    v15 = 1;
    return __swift_storeEnumTagSinglePayload(v14, v15, 1, v22);
  }

  v12 = ~v10;
  while (1)
  {
    sub_197969950();
    if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
    {
      sub_197969A00(v6, type metadata accessor for RequestKey);
      goto LABEL_7;
    }

    v13 = *&v6[*(v22 + 20)];
    sub_197969A00(v6, type metadata accessor for RequestKey);
    if (v13 == v8)
    {
      break;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v16 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_197A8111C();
  }

  v18 = v21;
  sub_197979D80();
  sub_197A81C34(v11);
  *v16 = v23[0];
  v14 = v18;
  v15 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v22);
}

uint64_t sub_197A836A4()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_131_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_158_0();

  return sub_197A7BDFC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A83738(uint64_t a1)
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_80_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_153_3();

  return sub_197A7C694(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_197A837F4()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return sub_197A7CAF0(v3);
}

uint64_t sub_197A83884()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_1(v4);

  return sub_197A77F6C(v6, v2, v1);
}

uint64_t sub_197A83924()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;
  v8 = OUTLINED_FUNCTION_81();

  return sub_197A78AA8(v8, v9, v10, v11, v4);
}

uint64_t sub_197A83A2C()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_28(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_197960FB0;
  OUTLINED_FUNCTION_85_8();
  OUTLINED_FUNCTION_158_0();

  return sub_197A7848C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A83B74()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_28(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  v4 = OUTLINED_FUNCTION_83_7();

  return sub_197A78874(v4, v5, v6);
}

uint64_t sub_197A83C48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960FB0;
  v6 = OUTLINED_FUNCTION_83_7();

  return sub_197A77550(v6, v7, v2, v1);
}

uint64_t sub_197A83CE4()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_131_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_158_0();

  return sub_197A7BDFC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v0 + ((v3 + 56) & ~v3));
  v5 = OUTLINED_FUNCTION_155_2();

  return MEMORY[0x1EEE6BDD0](v5);
}

uint64_t sub_197A83E4C(uint64_t a1)
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_80_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_153_3();

  return sub_197A7C2CC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_197A83F08()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return sub_197A7CA08(v3);
}

uint64_t sub_197A83FBC()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_131_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_158_0();

  return sub_197A7BDFC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A84050(uint64_t a1)
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_80_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_153_3();

  return sub_197A7BF04(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_197A8410C()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return sub_197A7C920(v3);
}

uint64_t sub_197A84208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_197A7E0DC(a1, v7, a2);
}

uint64_t sub_197A84284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B318, &qword_197AA1AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A842F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_8_0(v17);
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_8_1(v18);

  return sub_197A32908(v20, v16, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A84384()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_159_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  v4 = OUTLINED_FUNCTION_81();

  return sub_197A727B8(v4, v5, v6, v0);
}

uint64_t sub_197A84418()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_159_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  v4 = OUTLINED_FUNCTION_81();

  return sub_197A7098C(v4, v5, v6, v0);
}

void *sub_197A844AC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = type metadata accessor for ClientData(0);
  v10 = *(v8 - 8);
  result = (v8 - 8);
  v9 = v10;
  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v11, a2 + *(v9 + 72) * v4, v5 - v4);
  if (!v3)
  {
    return v11;
  }

  return result;
}

void *sub_197A8458C(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = type metadata accessor for ClientData(0);
  v10 = *(v8 - 8);
  result = (v8 - 8);
  v9 = v10;
  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v11, a2 + *(v9 + 72) * v4, v5 - v4);
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t sub_197A84678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  if (a7)
  {
    result = type metadata accessor for ClientData(0) - 8;
  }

  v12 = a2;
  if (__OFADD__(v11, a2 - v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3)
  {
    v13 = a2 - v11;
    if (v12 != v11)
    {
      result = type metadata accessor for ClientData(0);
      if (a6 - a5 < v13)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      swift_arrayInitWithCopy();
    }
  }

  else
  {
    v13 = 0;
  }

  result = a5 + v13;
  if (__OFADD__(a5, v13))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t *sub_197A84770(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v4 == a3)
  {
  }

  v7 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, v5);
      if (v6 < v5)
      {
      }

      v6 -= v5;
      if (!v7)
      {
      }

      __break(1u);
    }

    if ((v6 & 0x8000000000000000) == 0 || !__OFADD__(v6, v5))
    {
    }
  }

  __break(1u);
  return result;
}

void *sub_197A84808(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *(*a6)(uint64_t *__return_ptr, char *, uint64_t))
{
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(a3, a4 - a3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = a4 - a3;
  if (a4 < a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result)
  {
    v9 = result + *(*(type metadata accessor for ClientData(0) - 8) + 72) * a3;
  }

  else
  {
    v9 = 0;
  }

  result = a6(&v10, v9, v7);
  if (!v6)
  {
    return v10;
  }

  return result;
}

void *sub_197A848C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *(*a6)(uint64_t *__return_ptr, char *, uint64_t))
{
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(a3, a4 - a3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = a4 - a3;
  if (a4 < a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result)
  {
    v9 = result + *(*(type metadata accessor for ClientData(0) - 8) + 72) * a3;
  }

  else
  {
    v9 = 0;
  }

  result = a6(&v10, v9, v7);
  if (!v6)
  {
    return v10;
  }

  return result;
}

uint64_t sub_197A8497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    v6 = type metadata accessor for ClientData(0);
    swift_arrayInitWithCopy();
    v4 += *(*(v6 - 8) + 72) * v5;
  }

  else if (a1)
  {
    type metadata accessor for ClientData(0);
  }

  return v4;
}

uint64_t sub_197A84A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_197A7FC78(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_197A84A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_197A8497C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

void *sub_197A84AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *(*a4)(uint64_t *__return_ptr, char *, uint64_t)@<X3>, void *a5@<X8>)
{
  result = sub_197A84808(a1, a2, *a3, a3[1], a3[2], a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

void *sub_197A84B04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *(*a4)(uint64_t *__return_ptr, char *, uint64_t)@<X3>, void *a5@<X8>)
{
  result = sub_197A848C4(a1, a2, *a3, a3[1], a3[2], a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_197A84BA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_159_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960E38;
  v4 = OUTLINED_FUNCTION_81();

  return sub_197A71184(v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_116_5(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_123_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 176) = a12;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_173_1()
{
  v2 = *(v0 + 72);

  return sub_197A7A1AC(v2);
}

uint64_t OUTLINED_FUNCTION_179_2()
{

  return sub_197944528();
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return sub_197A87608();
}

unint64_t OUTLINED_FUNCTION_183_0()
{

  return sub_197A40900();
}

BOOL OUTLINED_FUNCTION_184_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_187()
{

  return sub_197A40E58();
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_189_0()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_193_0(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return sub_197A87608();
}

uint64_t OUTLINED_FUNCTION_215_0(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_217()
{

  return sub_197944528();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_197944528();
}

uint64_t OUTLINED_FUNCTION_221_0()
{
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return sub_197A40F3C();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_226_0()
{
}

uint64_t sub_197A84FC4()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_15(v1);

  return v5(v3);
}

uint64_t sub_197A85064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_197A85084, 0, 0);
}

uint64_t sub_197A85084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v12 = sub_197A87608();
  __swift_project_value_buffer(v12, qword_1ED880520);
  v13 = sub_197A875E8();
  v14 = sub_197A87D68();
  if (OUTLINED_FUNCTION_68_3(v14))
  {
    v15 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_16_13();
    *v15 = 136315138;
    *(v10 + 56) = type metadata accessor for InferenceProviderXPCRequest(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF4B340, &unk_197AA1BD0);
    v16 = sub_197A87988();
    OUTLINED_FUNCTION_22_8(v16, v17, v18, v19);
    OUTLINED_FUNCTION_21_10();
    *(v15 + 4) = v11;
    OUTLINED_FUNCTION_18_11(&dword_197941000, v20, v21, "Unhandled request requiring callback of type: %s");
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_0_28();
  v33 = v22;
  v23 = swift_task_alloc();
  *(v10 + 80) = v23;
  *v23 = v10;
  OUTLINED_FUNCTION_2_21(v23);
  OUTLINED_FUNCTION_117();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10);
}

uint64_t sub_197A85224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_197A85244, 0, 0);
}

uint64_t sub_197A85244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v12 = sub_197A87608();
  __swift_project_value_buffer(v12, qword_1ED880520);
  v13 = sub_197A875E8();
  v14 = sub_197A87D68();
  if (OUTLINED_FUNCTION_68_3(v14))
  {
    v15 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_16_13();
    *v15 = 136315138;
    *(v10 + 56) = type metadata accessor for InferenceProviderXPCRequest(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF4B340, &unk_197AA1BD0);
    v16 = sub_197A87988();
    OUTLINED_FUNCTION_22_8(v16, v17, v18, v19);
    OUTLINED_FUNCTION_21_10();
    *(v15 + 4) = v11;
    OUTLINED_FUNCTION_18_11(&dword_197941000, v20, v21, "Unhandled request requiring callback of type: %s");
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_0_28();
  v33 = v22;
  v23 = swift_task_alloc();
  *(v10 + 80) = v23;
  *v23 = v10;
  OUTLINED_FUNCTION_2_21(v23);
  OUTLINED_FUNCTION_117();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10);
}

uint64_t sub_197A853E4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[10] = *a1;
  return OUTLINED_FUNCTION_4(sub_197A8550C);
}

uint64_t sub_197A8550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v12 = sub_197A87608();
  __swift_project_value_buffer(v12, qword_1ED880520);
  v13 = sub_197A875E8();
  v14 = sub_197A87D68();
  if (OUTLINED_FUNCTION_68_3(v14))
  {
    v15 = v10[10];
    v16 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_16_13();
    *v16 = 136315138;
    v10[7] = *(v15 + 80);
    swift_getMetatypeMetadata();
    v17 = sub_197A87988();
    OUTLINED_FUNCTION_22_8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_21_10();
    *(v16 + 4) = v11;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v21, v22, "Unhandled request requiring callback of type: %s");
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_0_28();
  v34 = v23;
  v24 = swift_task_alloc();
  v10[11] = v24;
  *v24 = v10;
  OUTLINED_FUNCTION_2_21(v24);
  OUTLINED_FUNCTION_117();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10);
}

uint64_t sub_197A8569C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197A85784()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;

  return v4();
}

uint64_t sub_197A8582C()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_15(v1);

  return v5(v3);
}

uint64_t sub_197A858CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_197960FB0;

  return TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)(a1, a2, a3);
}

uint64_t sub_197A85978(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return TaskCancellablePeerHandler.handleIncomingRequest(_:)(a1);
}

uint64_t sub_197A85A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v12 = sub_197A87608();
  __swift_project_value_buffer(v12, qword_1ED880520);
  v13 = sub_197A875E8();
  v14 = sub_197A87D68();
  if (OUTLINED_FUNCTION_68_3(v14))
  {
    v15 = *(v10 + 24);
    v16 = OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_16_13();
    *v16 = 136315138;
    *(v10 + 16) = *(v15 + 80);
    swift_getMetatypeMetadata();
    v17 = sub_197A87988();
    OUTLINED_FUNCTION_22_8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_21_10();
    *(v16 + 4) = v11;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v21, v22, "Unhandled one-way request of type: %s");
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_44();
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_117();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_197A85B58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return TaskCancellablePeerHandler.handleCancellation()();
}

uint64_t dispatch thunk of TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:)()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_23();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_20(v9);
  *v10 = v11;
  v10[1] = sub_197960FB0;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v14 = v0 + 32;
  OUTLINED_FUNCTION_23();
  v15 = v1 + *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v3[1] = sub_197960FB0;
  OUTLINED_FUNCTION_117();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
}

uint64_t dispatch thunk of TaskCancellablePeerHandler.handleIncomingRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_197960FB0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TaskCancellablePeerHandler.handleCancellation()()
{
  OUTLINED_FUNCTION_23();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_15(v2);

  return v6(v4);
}

double sub_197A8606C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_197960638(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_197947C44(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_197A860D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_197A4099C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56) + 16 * v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  return v5;
}

uint64_t sub_197A8612C()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87D798);
  __swift_project_value_buffer(v0, qword_1ED87D798);
  return sub_197A875F8();
}

id sub_197A861AC()
{
  v14[1] = *MEMORY[0x1E69E9840];
  sub_1979863BC(0, &qword_1ED87D760, 0x1E69C7560);
  v0 = sub_197A86448(0xD000000000000010, 0x8000000197AA4E00, 0xD000000000000019, 0x8000000197AA4E20);
  v1 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A350, &qword_197A97A18);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_197AA1C00;
  *(v2 + 32) = v0;
  objc_allocWithZone(MEMORY[0x1E69C7548]);
  v3 = v0;
  v4 = sub_197A86BB4(0xD00000000000001BLL, 0x8000000197AA4DE0, v1, v2);
  v14[0] = 0;
  if ([v4 acquireWithError_])
  {
    v5 = qword_1ED87D790;
    v6 = v14[0];
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v7 = sub_197A87608();
    __swift_project_value_buffer(v7, qword_1ED87D798);
    v8 = sub_197A875E8();
    v9 = sub_197A87D78();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_197948834(0xD00000000000001BLL, 0x8000000197AA4DE0, v14);
      _os_log_impl(&dword_197941000, v8, v9, "Acquired RBSAssertion for self. Reason: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }
  }

  else
  {
    v12 = v14[0];
    sub_197A870E8();

    swift_willThrow();
  }

  return v4;
}

id sub_197A86448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_197A87928();

  v5 = sub_197A87928();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_197A864DC()
{
  v2 = v0;
  swift_beginAccess();
  result = sub_197A860D8(*(v0 + 112));
  if (!v4)
  {
    v10 = sub_197A861AC();
    if (v1)
    {
      return v1;
    }

    v11 = v10;
    OUTLINED_FUNCTION_3_23();
    swift_beginAccess();
    v7 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_16();
    v8 = 1;
LABEL_4:
    sub_197A25A28(v8, v7);
    *(v2 + 112) = v12;
    swift_endAccess();

    type metadata accessor for RunningBoardSelfAssertionToken();
    v9 = swift_allocObject();
    v1 = sub_197A86C5C(v2, v9);

    return v1;
  }

  v5 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v6 = v4;
    OUTLINED_FUNCTION_3_23();
    swift_beginAccess();
    v7 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_16();
    v8 = v5;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A86604(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_197A86694, v1, 0);
}

uint64_t sub_197A86694()
{
  v1 = v0[9];

  swift_beginAccess();
  v2 = sub_197A860D8(*(v1 + 112));
  if (!v3)
  {
    if (qword_1ED87D790 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v7 = sub_197A87608();
    __swift_project_value_buffer(v7, qword_1ED87D798);
    v8 = sub_197A875E8();
    v9 = sub_197A87D68();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v10 = 136315138;
      *(v10 + 4) = OUTLINED_FUNCTION_2_22("Finish Task Uninterruptable", v23);
      _os_log_impl(&dword_197941000, v8, v9, "Unbalanced RunningBoard assertion relinquish of type: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    goto LABEL_14;
  }

  v4 = v3;
  if (v2 >= 2)
  {
    v5 = v2 - 1;
    OUTLINED_FUNCTION_3_23();
    swift_beginAccess();
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v1 + 112);
    sub_197A25A28(v5, v6);
    *(v1 + 112) = v24;
    swift_endAccess();

LABEL_15:
    v20 = v0[1];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_3_23();
  swift_beginAccess();
  sub_197A4102C();
  v12 = v11;
  swift_endAccess();

  v0[5] = 0;
  v13 = [v4 invalidateSyncWithError_];
  v14 = v0[5];
  if (v13)
  {
    v15 = qword_1ED87D790;
    v16 = v14;
    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    v17 = sub_197A87608();
    __swift_project_value_buffer(v17, qword_1ED87D798);
    v8 = sub_197A875E8();
    v18 = sub_197A87D78();
    if (os_log_type_enabled(v8, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v19 = 136315138;
      *(v19 + 4) = OUTLINED_FUNCTION_2_22("Finish Task Uninterruptable", v23);
      _os_log_impl(&dword_197941000, v8, v18, "Relinquished RBSAssertion for self. Reason: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

LABEL_14:
    goto LABEL_15;
  }

  v22 = v14;
  sub_197A870E8();

  swift_willThrow();
  v20 = v0[1];
LABEL_16:

  return v20();
}

uint64_t sub_197A86A14()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A86A70(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_197A86A90, v3, 0);
}

uint64_t sub_197A86A90()
{
  v1 = sub_197A864DC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_197A86B0C(uint64_t a1)
{

  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197963948;

  return sub_197A86604(a1);
}

id sub_197A86BB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_197A87928();

  sub_1979863BC(0, &qword_1ED87D768, 0x1E69C7550);
  v7 = sub_197A87AE8();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

uint64_t sub_197A86C5C(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for RunningBoardSelfAssertions();
  v8 = &off_1F0C17F08;
  *&v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *(a2 + 56) = v4;
  sub_197961F10(&v6, a2 + 16);
  return a2;
}

uint64_t XPCSession.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_197A87668();
}

uint64_t sub_197A86DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_197A87658();
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A86E7C, 0, 0);
}

uint64_t sub_197A86E7C()
{
  v1 = sub_197A876C8();
  sub_197A878A8();
  sub_197A87648();
  v2 = sub_197A87618();
  v3 = *(v0 + 16);
  v3[3] = v1;
  v3[4] = &protocol witness table for XPCSession;
  *v3 = v2;

  v4 = *(v0 + 8);

  return v4();
}