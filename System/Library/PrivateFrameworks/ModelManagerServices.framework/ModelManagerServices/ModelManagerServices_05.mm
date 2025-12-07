void sub_1979BA6C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80));
  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
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
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_26;
      case 3:
        goto LABEL_38;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t DisabledUseCase.identifier.getter()
{
  v1 = *v0;
  sub_197A878A8();
  return v1;
}

uint64_t static DisabledUseCase.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_197A88218();
  }
}

uint64_t sub_1979BA930(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000197AA3370 == a2)
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

uint64_t sub_1979BA9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BA930(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1979BA9FC(uint64_t a1)
{
  v2 = sub_1979BABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BAA38(uint64_t a1)
{
  v2 = sub_1979BABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisabledUseCase.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496D0, &qword_197A90BF0);
  OUTLINED_FUNCTION_0_8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1979BABA0();
  sub_197A883D8();
  sub_197A880B8();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1979BABA0()
{
  result = qword_1ED87D0B0[0];
  if (!qword_1ED87D0B0[0])
  {
    result = swift_getWitnessTable(byte_197A90DB8, &type metadata for DisabledUseCase.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED87D0B0);
  }

  return result;
}

uint64_t DisabledUseCase.hashValue.getter()
{
  sub_197A882F8();
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t DisabledUseCase.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496D8, &qword_197A90BF8);
  OUTLINED_FUNCTION_0_8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1979BABA0();
  sub_197A883A8();
  if (!v2)
  {
    v11 = sub_197A87FA8();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1979BADB4(uint64_t a1)
{
  sub_197A882F8();
  sub_197A879B8();
  return sub_197A88358();
}

unint64_t sub_1979BAE00()
{
  result = qword_1EAF496E0;
  if (!qword_1EAF496E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisabledUseCase, &type metadata for DisabledUseCase, v0, v1);
    atomic_store(result, &qword_1EAF496E0);
  }

  return result;
}

uint64_t sub_1979BAE88(uint64_t a1, int a2)
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

uint64_t sub_1979BAEC8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DisabledUseCase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1979BAFC4()
{
  result = qword_1EAF496E8;
  if (!qword_1EAF496E8)
  {
    result = swift_getWitnessTable(byte_197A90D90, &type metadata for DisabledUseCase.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496E8);
  }

  return result;
}

unint64_t sub_1979BB01C()
{
  result = qword_1ED87D0A0;
  if (!qword_1ED87D0A0)
  {
    result = swift_getWitnessTable(byte_197A90D00, &type metadata for DisabledUseCase.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D0A0);
  }

  return result;
}

unint64_t sub_1979BB074()
{
  result = qword_1ED87D0A8;
  if (!qword_1ED87D0A8)
  {
    result = swift_getWitnessTable(asc_197A90D28, &type metadata for DisabledUseCase.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D0A8);
  }

  return result;
}

uint64_t StateDump.executionGroups.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_197A878A8();
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t StateDump.AssetState.inferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t StateDump.AssetState.foregroundSessions.getter()
{
  type metadata accessor for StateDump.AssetState(0);

  return sub_197A878A8();
}

void StateDump.AssetState.init(descriptor:path:cost:isCacheable:dynamicModeAllowed:useEnergyEfficientMode:inferenceProvider:loadState:isLocked:timeLastRequestEnded:timeLastForegroundSessionEnded:requiredByOtherAssets:foregroundSessions:executionGroups:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_90_0();
  v63 = v37;
  v64 = v38;
  v62 = v39;
  v61 = v40;
  v42 = v41;
  v44 = v43;
  v46 = *v45;
  v60 = *v47;
  v48 = *(v47 + 2);
  v49 = *(v47 + 3);
  v50 = *(v47 + 32);
  v51 = *a31;
  v52 = InferenceProviderAssetDescriptor.description.getter();
  v54 = v53;
  sub_1979C4088();
  *v44 = v52;
  *(v44 + 8) = v54;
  *(v44 + 16) = v42;
  *(v44 + 24) = v61;
  *(v44 + 32) = v46;
  *(v44 + 40) = v62;
  *(v44 + 41) = v63;
  *(v44 + 42) = v64;
  *(v44 + 48) = v60;
  *(v44 + 64) = v48;
  *(v44 + 72) = v49;
  *(v44 + 80) = v50;
  *(v44 + 81) = v51;
  *(v44 + 82) = a32;
  v55 = type metadata accessor for StateDump.AssetState(0);
  v56 = v55[13];
  v57 = sub_197A87258();
  OUTLINED_FUNCTION_6();
  v59 = *(v58 + 32);
  v59(v44 + v56, a33, v57);
  v59(v44 + v55[14], a34, v57);
  *(v44 + v55[15]) = a35;
  *(v44 + v55[16]) = a36;
  *(v44 + v55[17]) = a37;
  OUTLINED_FUNCTION_89_0();
}

void static StateDump.AssetState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v3 || (sub_197A88218() & 1) != 0)
  {
    v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
    if (v4 || (sub_197A88218()) && *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40) && *(v1 + 41) == *(v0 + 41) && *(v1 + 42) == *(v0 + 42))
    {
      v5 = *(v1 + 56);
      v6 = *(v1 + 64);
      v7 = *(v1 + 72);
      v8 = *(v1 + 80);
      v21[0] = *(v1 + 48);
      v21[1] = v5;
      v21[2] = v6;
      v21[3] = v7;
      v22 = v8;
      v9 = *(v0 + 56);
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = *(v0 + 80);
      v19[0] = *(v0 + 48);
      v19[1] = v9;
      v19[2] = v11;
      v19[3] = v10;
      v20 = v12;
      sub_197A878A8();
      sub_197A878A8();
      sub_197A878A8();
      sub_197A878A8();
      LOBYTE(v5) = static InferenceProviderDescriptor.== infix(_:_:)(v21, v19);

      if ((v5 & 1) != 0 && (sub_197949B70(*(v1 + 81), *(v0 + 81)) & 1) != 0 && *(v1 + 82) == *(v0 + 82))
      {
        v13 = type metadata accessor for StateDump.AssetState(0);
        OUTLINED_FUNCTION_82_2(v13[13]);
        if (sub_197A87228())
        {
          OUTLINED_FUNCTION_82_2(v13[14]);
          if (sub_197A87228())
          {
            v14 = OUTLINED_FUNCTION_58_3(v13[15]);
            if (sub_19799F5B0(v14, v15))
            {
              v16 = OUTLINED_FUNCTION_58_3(v13[16]);
              sub_19799F764(v16, v17);
              if (v18)
              {
                OUTLINED_FUNCTION_58_3(v13[17]);

                sub_19799FA20();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1979BB5C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1752457584 && a2 == 0xE400000000000000;
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
        v8 = a1 == 0x6165686361437369 && a2 == 0xEB00000000656C62;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000197AA33B0 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x8000000197AA33D0 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000197AA33F0 == a2;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000197AA3410 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001ELL && 0x8000000197AA3430 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000197AA3450 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x8000000197AA3470 == a2;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6F69747563657865 && a2 == 0xEF7370756F72476ELL)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_197A88218();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1979BBA08(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 1953722211;
      break;
    case 3:
      result = 0x6165686361437369;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x7461745364616F6CLL;
      break;
    case 8:
      result = 0x64656B636F4C7369;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6F69747563657865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979BBBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BB5C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BBBE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979BBA00();
  *a1 = result;
  return result;
}

uint64_t sub_1979BBC08(uint64_t a1)
{
  v2 = sub_1979C3C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BBC44(uint64_t a1)
{
  v2 = sub_1979C3C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateDump.AssetState.encode(to:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496F0, &unk_197A90E20);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_13_1();
  sub_1979C3C80();
  sub_197A883D8();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_39_2();
  sub_197A880B8();
  if (v1)
  {
    return (*(v5 + 8))(v8, v3);
  }

  LOBYTE(v17) = 1;
  OUTLINED_FUNCTION_39_2();
  sub_197A880B8();
  v17 = *(v0 + 32);
  OUTLINED_FUNCTION_59_3();
  sub_1979C3CD4();
  OUTLINED_FUNCTION_27_0();
  sub_197A880E8();
  LOBYTE(v17) = 3;
  OUTLINED_FUNCTION_27_0();
  sub_197A880C8();
  LOBYTE(v17) = 4;
  OUTLINED_FUNCTION_27_0();
  sub_197A880C8();
  LOBYTE(v17) = 5;
  OUTLINED_FUNCTION_27_0();
  sub_197A880C8();
  v9 = *(v0 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v17 = *(v2 + 48);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = 6;
  sub_1979518CC();
  OUTLINED_FUNCTION_79_1();
  sub_197A878A8();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();

  LOBYTE(v17) = *(v2 + 81);
  v22 = 7;
  sub_19796976C();
  OUTLINED_FUNCTION_27_0();
  sub_197A880E8();
  LOBYTE(v17) = 8;
  OUTLINED_FUNCTION_27_0();
  sub_197A880C8();
  v16 = v5;
  v13 = type metadata accessor for StateDump.AssetState(0);
  LOBYTE(v17) = 9;
  sub_197A87258();
  OUTLINED_FUNCTION_12_3();
  sub_1979C3E8C(v14);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();
  LOBYTE(v17) = 10;
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();
  v17 = *(v2 + v13[15]);
  v22 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
  OUTLINED_FUNCTION_6_5(&qword_1ED87F958, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();
  v17 = *(v2 + v13[16]);
  v22 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496F8, &unk_197A90E30);
  sub_1979C3D28();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();
  v17 = *(v2 + v13[17]);
  v22 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49700, &qword_197A90E40);
  sub_1979C3DD8();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_2();
  sub_197A880E8();
  return (*(v16 + 8))(v8, v3);
}

void StateDump.AssetState.hash(into:)(uint64_t a1)
{
  sub_197A879B8();
  sub_197A879B8();
  MEMORY[0x19A8EB600](*(v1 + 32));
  sub_197A88328();
  sub_197A88328();
  sub_197A88328();
  v2 = *(v1 + 72);
  sub_197A879B8();
  if (v2)
  {
    MEMORY[0x19A8EB5D0](1);
    OUTLINED_FUNCTION_69_0();
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  sub_197A879B8();

  sub_197A88328();
  type metadata accessor for StateDump.AssetState(0);
  sub_197A87258();
  OUTLINED_FUNCTION_12_3();
  sub_1979C3E8C(v3);
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  v4 = OUTLINED_FUNCTION_74_3();
  sub_1979A7584(v4, v5);
  v6 = OUTLINED_FUNCTION_74_3();
  sub_1979A7940(v6, v7);
  OUTLINED_FUNCTION_74_3();

  sub_1979A7770();
}

void StateDump.AssetState.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  v34 = sub_197A87258();
  OUTLINED_FUNCTION_2();
  v37 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49708, &qword_197A90E48);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_29_1();
  v36 = type metadata accessor for StateDump.AssetState(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v38 = (v17 - v16);
  v18 = v2[3];
  v35 = v2;
  OUTLINED_FUNCTION_113_0(v2, v18);
  sub_1979C3C80();
  OUTLINED_FUNCTION_73_2();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    v30 = v9;
    v31 = v11;
    v29[1] = v4;
    v32 = v13;
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_35_1();
    v19 = sub_197A87FA8();
    v20 = v38;
    *v38 = v19;
    v20[1] = v21;
    OUTLINED_FUNCTION_11_2(1);
    v20[2] = sub_197A87FA8();
    v20[3] = v22;
    OUTLINED_FUNCTION_59_3();
    sub_1979C3ED0();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_67_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    v20[4] = v39;
    OUTLINED_FUNCTION_11_2(3);
    *(v20 + 40) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_11_2(4);
    *(v20 + 41) = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_11_2(5);
    *(v20 + 42) = sub_197A87FB8() & 1;
    sub_19795F8C8();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_67_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    v23 = v40;
    v24 = v42;
    v20[6] = v39;
    v20[7] = v23;
    *(v20 + 4) = v41;
    *(v20 + 80) = v24;
    sub_19796BA5C();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_67_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    *(v20 + 81) = v39;
    OUTLINED_FUNCTION_11_2(8);
    *(v20 + 82) = sub_197A87FB8() & 1;
    LOBYTE(v39) = 9;
    OUTLINED_FUNCTION_12_3();
    sub_1979C3E8C(v25);
    OUTLINED_FUNCTION_67_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    v26 = *(v37 + 32);
    v26(v38 + v36[13], v31, v34);
    LOBYTE(v39) = 10;
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    v26(v38 + v36[14], v30, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_7_5(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_27_3();
    *(v38 + v36[15]) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496F8, &unk_197A90E30);
    sub_1979C3F24();
    OUTLINED_FUNCTION_27_3();
    *(v38 + v36[16]) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49700, &qword_197A90E40);
    sub_1979C3FD4();
    OUTLINED_FUNCTION_27_3();
    v27 = OUTLINED_FUNCTION_41_3();
    v28(v27);
    *(v38 + v36[17]) = v39;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

int *StateDump.SessionState.init(identifier:supportedAssets:useCaseIdentifier:onBehalfOfPID:createdByPID:requests:isCancelled:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  sub_19794B118();
  result = type metadata accessor for StateDump.SessionState(0);
  *(a8 + result[5]) = a1;
  v17 = (a8 + result[6]);
  *v17 = a2;
  v17[1] = a3;
  *(a8 + result[7]) = a4;
  *(a8 + result[8]) = a5;
  *(a8 + result[9]) = a6;
  *(a8 + result[10]) = a7;
  return result;
}

uint64_t static StateDump.SessionState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) != 0 && (type metadata accessor for StateDump.SessionState(0), OUTLINED_FUNCTION_76_2(), v4 = OUTLINED_FUNCTION_58_3(v3), (sub_19799F5B0(v4, v5)) && ((OUTLINED_FUNCTION_42_2(v2[6]), v8) ? (v8 = v6 == v7) : (v8 = 0), (v8 || (sub_197A88218()) && *(v1 + v2[7]) == *(v0 + v2[7]) && *(v1 + v2[8]) == *(v0 + v2[8]) && (v9 = OUTLINED_FUNCTION_58_3(v2[9]), sub_19799F750(v9, v10), (v11)))
  {
    v12 = *(v1 + v2[10]) ^ *(v0 + v2[10]) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1979BCBE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574726F70707573 && a2 == 0xEF73746573734164;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000197AA25B0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4264657461657263 && a2 == 0xEC00000044495079;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6C65636E61437369 && a2 == 0xEB0000000064656CLL)
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

unint64_t sub_1979BCE38(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6574726F70707573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x666C616865426E6FLL;
      break;
    case 4:
      result = 0x4264657461657263;
      break;
    case 5:
      result = 0x7374736575716572;
      break;
    case 6:
      result = 0x6C65636E61437369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979BCF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BCBE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BCF64(uint64_t a1)
{
  v2 = sub_1979C40FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BCFA0(uint64_t a1)
{
  v2 = sub_1979C40FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateDump.SessionState.encode(to:)()
{
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49720, &qword_197A90E50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_1979C40FC();
  OUTLINED_FUNCTION_39_0(&type metadata for StateDump.SessionState.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1_6();
  sub_197954254(v6);
  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    v7 = type metadata accessor for StateDump.SessionState(0);
    OUTLINED_FUNCTION_66_3(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v8 = OUTLINED_FUNCTION_6_5(&qword_1ED87F958, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_20_5(v8);
    OUTLINED_FUNCTION_58();
    sub_197A880B8();
    OUTLINED_FUNCTION_24_4();
    sub_197A880F8();
    OUTLINED_FUNCTION_24_4();
    sub_197A880F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49728, &unk_197A90E58);
    v9 = sub_1979C4150();
    OUTLINED_FUNCTION_20_5(v9);
    OUTLINED_FUNCTION_24_4();
    sub_197A880C8();
  }

  v10 = OUTLINED_FUNCTION_61();
  return v11(v10);
}

uint64_t StateDump.SessionState.hash(into:)()
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v2);
  OUTLINED_FUNCTION_52_2();
  sub_197A878F8();
  v3 = type metadata accessor for StateDump.SessionState(0);
  sub_1979A7584(v0, *(v1 + *(v3 + 20)));
  sub_197A879B8();
  sub_197A88338();
  sub_197A88338();
  v4 = OUTLINED_FUNCTION_74_3();
  sub_1979A7570(v4, v5);
  return sub_197A88328();
}

void StateDump.SessionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49730, &qword_197A90E68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_29_1();
  v25 = type metadata accessor for StateDump.SessionState(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v26 = v12;
  OUTLINED_FUNCTION_113_0(v12, v12[3]);
  sub_1979C40FC();
  OUTLINED_FUNCTION_73_2();
  sub_197A883A8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC80);
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    sub_19794B118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_7_5(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    *(v18 + v25[5]) = a10;
    OUTLINED_FUNCTION_19_4(2);
    v19 = sub_197A87FA8();
    v20 = (v18 + v25[6]);
    *v20 = v19;
    v20[1] = v21;
    OUTLINED_FUNCTION_19_4(3);
    *(v18 + v25[7]) = sub_197A87FE8();
    OUTLINED_FUNCTION_19_4(4);
    *(v18 + v25[8]) = sub_197A87FE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49728, &unk_197A90E58);
    sub_1979C4200();
    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_35_1();
    sub_197A87FD8();
    *(v18 + v25[9]) = a10;
    OUTLINED_FUNCTION_19_4(6);
    v22 = sub_197A87FB8();
    v23 = OUTLINED_FUNCTION_23_2();
    v24(v23);
    *(v18 + v25[10]) = v22 & 1;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

double StateDump.RemoteRequestState.init(sessionID:requestID:interface:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_19794B118();
  v8 = type metadata accessor for StateDump.RemoteRequestState(0);
  sub_19794B118();
  v9 = a2 + *(v8 + 24);
  result = *a1;
  *v9 = *a1;
  *(v9 + 8) = v4;
  *(v9 + 12) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  return result;
}

uint64_t static StateDump.RemoteRequestState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) != 0 && (type metadata accessor for StateDump.RemoteRequestState(0), OUTLINED_FUNCTION_76_2(), OUTLINED_FUNCTION_82_2(v3), (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0()))
  {
    v4 = (v1 + *(v2 + 24));
    v5 = *(v4 + 2);
    v6 = *(v4 + 12);
    v8 = v4[2];
    v7 = v4[3];
    v21 = *v4;
    v22 = v5;
    v23 = v6;
    v24 = v8;
    v25 = v7;
    v9 = (v0 + *(v2 + 24));
    v10 = *(v9 + 2);
    v11 = *(v9 + 12);
    v12 = v9[2];
    v13 = v9[3];
    v16 = *v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    sub_197A878A8();
    sub_197A878A8();
    v14 = static RemoteInterfaceInformation.== infix(_:_:)(&v21, &v16);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1979BD944(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6361667265746E69 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

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

uint64_t sub_1979BDA60(char a1)
{
  if (!a1)
  {
    return 0x496E6F6973736573;
  }

  if (a1 == 1)
  {
    return 0x4974736575716572;
  }

  return 0x6361667265746E69;
}

uint64_t sub_1979BDAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BD944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BDAE8(uint64_t a1)
{
  v2 = sub_1979C4328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BDB24(uint64_t a1)
{
  v2 = sub_1979C4328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StateDump.RemoteRequestState.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49740, &qword_197A90E70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_1979C4328();
  OUTLINED_FUNCTION_39_0(&type metadata for StateDump.RemoteRequestState.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1_6();
  sub_197954254(v6);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for StateDump.RemoteRequestState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_1_6();
    sub_197954254(v7);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    OUTLINED_FUNCTION_59_3();
    sub_1979C437C();
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  v8 = OUTLINED_FUNCTION_61();
  v9(v8);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t StateDump.RemoteRequestState.hash(into:)()
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v2);
  sub_197A878F8();
  v3 = type metadata accessor for StateDump.RemoteRequestState(0);
  sub_197A878F8();
  v4 = *(v1 + *(v3 + 24) + 12);
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(v0, v4);
  OUTLINED_FUNCTION_69_0();

  return sub_197A879B8();
}

uint64_t StateDump.RemoteRequestState.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v1);
  sub_197A878F8();
  v2 = type metadata accessor for StateDump.RemoteRequestState(0);
  sub_197A878F8();
  v3 = *(v0 + *(v2 + 24) + 12);
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(v5, v3);
  sub_197A879B8();
  return sub_197A88358();
}

void StateDump.RemoteRequestState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_92();
  v49 = v23;
  v27 = v26;
  v47[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  v47[4] = v47 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49758, &qword_197A90E78);
  OUTLINED_FUNCTION_2();
  v47[2] = v33;
  v47[3] = v32;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_88_0();
  v36 = type metadata accessor for StateDump.RemoteRequestState(v35);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v38 = v27[3];
  v50 = v27;
  OUTLINED_FUNCTION_113_0(v27, v38);
  sub_1979C4328();
  v48 = v25;
  v39 = v49;
  sub_197A883A8();
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC80);
    sub_197A87FD8();
    sub_19794B118();
    LOBYTE(v51) = 1;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC90);
    sub_197A87FD8();
    sub_19794B118();
    OUTLINED_FUNCTION_59_3();
    sub_1979C43D0();
    sub_197A87FD8();
    v40 = OUTLINED_FUNCTION_50_3();
    v41(v40);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v24 + *(v36 + 24);
    *v46 = v51;
    *(v46 + 8) = v42;
    *(v46 + 12) = v43;
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979BE324(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A87298();
  sub_1979C3E8C(&qword_1ED880FE0);
  sub_197A878F8();
  sub_197A878F8();
  v4 = *(v2 + *(a2 + 24) + 12);
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(v6, v4);
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t StateDump.RequestState.asset.getter()
{
  type metadata accessor for StateDump.RequestState(0);

  return sub_197A878A8();
}

double StateDump.RequestState.init(identifier:session:asset:inferenceProvider:priority:requestVersion:)@<D0>(uint64_t a1@<X2>, __int128 *a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v17 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 32);
  v11 = *a3;
  v12 = *(a4 + 8);
  sub_19794B118();
  v13 = type metadata accessor for StateDump.RequestState(0);
  sub_19794B118();
  *(a5 + v13[6]) = a1;
  v14 = a5 + v13[7];
  *v14 = v17;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(a5 + v13[8]) = v11;
  v15 = a5 + v13[9];
  result = *a4;
  *v15 = *a4;
  *(v15 + 8) = v12;
  return result;
}

BOOL static StateDump.RequestState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StateDump.RequestState(0);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_82_2(v3);
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_58_3(v2[6]);
  if ((sub_19799F5B0(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = v1 + v2[7];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 32);
  v29[0] = v7;
  v29[1] = v8;
  v29[2] = v9;
  v29[3] = v10;
  v30 = v6;
  v11 = (v0 + v2[7]);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  LOBYTE(v11) = *(v11 + 32);
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v15;
  v27[3] = v14;
  v28 = v11;
  sub_197A878A8();
  sub_197A878A8();
  sub_197A878A8();
  sub_197A878A8();
  LOBYTE(v8) = static InferenceProviderDescriptor.== infix(_:_:)(v29, v27);

  if ((v8 & 1) == 0 || (sub_1979577EC(*(v1 + v2[8]), *(v0 + v2[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v2[9];
  v17 = *(v1 + v16);
  v18 = *(v1 + v16 + 4);
  v19 = *(v1 + v16 + 8);
  v20 = (v0 + v16);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  return v17 == v21 && v18 == v22 && v19 == v23;
}

uint64_t sub_1979BE6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000197AA33F0 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x5674736575716572 && a2 == 0xEE006E6F69737265)
          {

            return 5;
          }

          else
          {
            v11 = sub_197A88218();

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

unint64_t sub_1979BE8D0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 0x7465737361;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x797469726F697270;
      break;
    case 5:
      result = 0x5674736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979BE99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BE6CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BE9C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979BE8C8();
  *a1 = result;
  return result;
}

uint64_t sub_1979BE9EC(uint64_t a1)
{
  v2 = sub_1979C4444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BEA28(uint64_t a1)
{
  v2 = sub_1979C4444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StateDump.RequestState.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49768, &qword_197A90E80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_1979C4444();
  OUTLINED_FUNCTION_39_0(&type metadata for StateDump.RequestState.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1_6();
  sub_197954254(v6);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for StateDump.RequestState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_1_6();
    sub_197954254(v7);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    OUTLINED_FUNCTION_59_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_6_5(&qword_1ED87F958, MEMORY[0x1E69E6160]);
    v8 = OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_33_3(v8, v9, v10, v11, v12);
    OUTLINED_FUNCTION_85_0();
    sub_1979518CC();
    OUTLINED_FUNCTION_79_1();
    sub_197A878A8();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();

    OUTLINED_FUNCTION_84_0();
    sub_1979A6BD0();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_24_4();
    sub_197A880E8();
    sub_1979552D0();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_24_4();
    sub_197A880E8();
  }

  v13 = OUTLINED_FUNCTION_61();
  v14(v13);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t StateDump.RequestState.hash(into:)()
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v2);
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  v3 = type metadata accessor for StateDump.RequestState(0);
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  v4 = OUTLINED_FUNCTION_74_3();
  sub_1979A7584(v4, v5);
  v6 = *(v1 + *(v3 + 28) + 24);
  sub_197A879B8();
  if (v6)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  sub_19799E8BC(v0, *(v1 + *(v3 + 32)));
  sub_197A88338();
  sub_197A88338();
  return sub_197A88338();
}

uint64_t sub_1979BEE68(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_145();
  a1(v3);
  return sub_197A88358();
}

void StateDump.RequestState.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v24[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_29_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49778, &qword_197A90E88);
  OUTLINED_FUNCTION_2();
  v24[1] = v7;
  v24[2] = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v25 = type metadata accessor for StateDump.RequestState(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = v2[3];
  v27 = v2;
  OUTLINED_FUNCTION_113_0(v2, v15);
  sub_1979C4444();
  v26 = v10;
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC90);
    sub_197A87FD8();
    sub_19794B118();
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC80);
    sub_197A87FD8();
    v16 = v25;
    sub_19794B118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_59_3();
    OUTLINED_FUNCTION_7_5(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_49_3();
    sub_197A87FD8();
    *(v14 + v16[6]) = v28;
    OUTLINED_FUNCTION_85_0();
    sub_19795F8C8();
    OUTLINED_FUNCTION_46_2(&type metadata for InferenceProviderDescriptor);
    v17 = v29;
    v18 = v31;
    v19 = v14 + v16[7];
    *v19 = v28;
    *(v19 + 8) = v17;
    *(v19 + 16) = v30;
    *(v19 + 32) = v18;
    OUTLINED_FUNCTION_84_0();
    sub_197978D10();
    OUTLINED_FUNCTION_46_2(&type metadata for RequestPriority);
    *(v14 + v16[8]) = v28;
    sub_19795F5C4();
    OUTLINED_FUNCTION_46_2(&type metadata for Version);
    v20 = OUTLINED_FUNCTION_71_2();
    v21(v20);
    v22 = v29;
    v23 = v14 + v16[9];
    *v23 = v28;
    *(v23 + 8) = v22;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979BF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_197A882F8();
  a4(v6);
  return sub_197A88358();
}

ModelManagerServices::StateDump::ExecutionGroupsState __swiftcall StateDump.ExecutionGroupsState.init(active:pendingForeground:pendingBackground:)(Swift::OpaquePointer active, Swift::OpaquePointer pendingForeground, Swift::OpaquePointer pendingBackground)
{
  v3->_rawValue = active._rawValue;
  v3[1]._rawValue = pendingForeground._rawValue;
  v3[2]._rawValue = pendingBackground._rawValue;
  result.pendingBackground = pendingBackground;
  result.pendingForeground = pendingForeground;
  result.active = active;
  return result;
}

void static StateDump.ExecutionGroupsState.== infix(_:_:)()
{
  sub_1979A6C24();
  if (v0)
  {
    sub_1979A6C24();
    if (v1)
    {
      OUTLINED_FUNCTION_22();

      sub_1979A6C24();
    }
  }
}

uint64_t sub_1979BF4E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000197AA3490 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000197AA34B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

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

uint64_t sub_1979BF604(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1979BF668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BF4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BF690(uint64_t a1)
{
  v2 = sub_1979C4498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BF6CC(uint64_t a1)
{
  v2 = sub_1979C4498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StateDump.ExecutionGroupsState.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49780, &qword_197A90E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_113_0(v1, v1[3]);
  v3 = sub_1979C4498();
  sub_197A878A8();
  sub_197A883D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49788, &qword_197A90E98);
  sub_1979C44EC();
  OUTLINED_FUNCTION_36_1();

  if (!v3)
  {
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
  }

  v4 = OUTLINED_FUNCTION_61();
  v5(v4);
  OUTLINED_FUNCTION_93();
}

void StateDump.ExecutionGroupsState.hash(into:)()
{
  sub_1979A7DBC();
  sub_1979A7DBC();
  OUTLINED_FUNCTION_22();

  sub_1979A7DBC();
}

uint64_t StateDump.ExecutionGroupsState.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  sub_1979A7DBC();
  sub_1979A7DBC();
  sub_1979A7DBC();
  return sub_197A88358();
}

void StateDump.ExecutionGroupsState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49790, &qword_197A90EA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_113_0(v12, v12[3]);
  sub_1979C4498();
  sub_197A883A8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49788, &qword_197A90E98);
    sub_1979C45C0();
    OUTLINED_FUNCTION_21_2();
    sub_197A87FD8();
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_21_2();
    sub_197A87FD8();
    OUTLINED_FUNCTION_21_2();
    sub_197A87FD8();
    v16 = OUTLINED_FUNCTION_72_2();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979BFB58(uint64_t a1)
{
  sub_197A882F8();
  sub_1979A7DBC();
  sub_1979A7DBC();
  sub_1979A7DBC();
  return sub_197A88358();
}

int *StateDump.ExecutionGroupState.init(id:assets:requests:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v12 + 32))(a6, a1);
  result = type metadata accessor for StateDump.ExecutionGroupState(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t static StateDump.ExecutionGroupState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StateDump.ExecutionGroupState(0);
  OUTLINED_FUNCTION_76_2();
  v2 = OUTLINED_FUNCTION_58_3(v1);
  if ((sub_19799F5B0(v2, v3) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_3(*(v0 + 24));
  sub_1979A701C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(*(v0 + 28));
  v7 = v7 && v5 == v6;
  if (v7)
  {
    return 1;
  }

  return sub_197A88218();
}

uint64_t sub_1979BFD28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

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

uint64_t sub_1979BFE70(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x737465737361;
      break;
    case 2:
      result = 0x7374736575716572;
      break;
    case 3:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979BFEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979BFD28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979BFF10(uint64_t a1)
{
  v2 = sub_1979C4674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979BFF4C(uint64_t a1)
{
  v2 = sub_1979C4674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateDump.ExecutionGroupState.encode(to:)()
{
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497A8, &qword_197A90EA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v3 = sub_1979C4674();
  OUTLINED_FUNCTION_39_0(&type metadata for StateDump.ExecutionGroupState.CodingKeys, v4, v3);
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v5);
  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_33_3(v1, v6, v7, v8, v9);
  if (!v0)
  {
    v10 = type metadata accessor for StateDump.ExecutionGroupState(0);
    OUTLINED_FUNCTION_66_3(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v11 = OUTLINED_FUNCTION_6_5(&qword_1ED87F958, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_20_5(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497B8, &qword_197A90EB0);
    v12 = sub_1979C46C8();
    OUTLINED_FUNCTION_20_5(v12);
    OUTLINED_FUNCTION_58();
    sub_197A880B8();
  }

  v13 = OUTLINED_FUNCTION_61();
  return v14(v13);
}

uint64_t StateDump.ExecutionGroupState.hash(into:)()
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v2);
  OUTLINED_FUNCTION_52_2();
  sub_197A878F8();
  type metadata accessor for StateDump.ExecutionGroupState(0);
  OUTLINED_FUNCTION_76_2();
  sub_1979A7584(v0, *(v1 + v3));
  sub_1979A7F04();

  return sub_197A879B8();
}

uint64_t StateDump.ExecutionGroupState.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v1);
  sub_197A878F8();
  v2 = type metadata accessor for StateDump.ExecutionGroupState(0);
  sub_1979A7584(__src, *(v0 + *(v2 + 20)));
  sub_1979A7F04();
  sub_197A879B8();
  return sub_197A88358();
}

void StateDump.ExecutionGroupState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  v23 = v22;
  v24 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v42 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_0();
  v43 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497C8, &qword_197A90EB8);
  OUTLINED_FUNCTION_2();
  v44 = v30;
  v45 = v29;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_83_1();
  v32 = type metadata accessor for StateDump.ExecutionGroupState(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_113_0(v23, v23[3]);
  sub_1979C4674();
  sub_197A883A8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_0_9();
    sub_1979C3E8C(v37);
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_61_4();
    sub_197A87FD8();
    (*(v42 + 32))(v36, v43, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_7_5(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_52_3();
    sub_197A87FD8();
    *(v36 + v32[5]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497B8, &qword_197A90EB0);
    sub_1979C4778();
    OUTLINED_FUNCTION_52_3();
    sub_197A87FD8();
    *(v36 + v32[6]) = a10;
    v38 = sub_197A87FA8();
    v40 = v39;
    (*(v44 + 8))(v21, v45);
    v41 = (v36 + v32[7]);
    *v41 = v38;
    v41[1] = v40;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979C06CC(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A87298();
  sub_1979C3E8C(&qword_1ED880FE0);
  sub_197A878F8();
  sub_1979A7584(__src, *(v2 + *(a2 + 20)));
  sub_1979A7F04();
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t StateDump.InferenceProviderState.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t StateDump.InferenceProviderState.ActiveRequest.init(request:priority:)@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_19794B118();
  result = OUTLINED_FUNCTION_91_0();
  *(a2 + v5) = v3;
  return result;
}

uint64_t static StateDump.InferenceProviderState.ActiveRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91_0();
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);

  return sub_1979577EC(v6, v5);
}

uint64_t sub_1979C08EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t sub_1979C09B4(char a1)
{
  if (a1)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1979C09F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979C08EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979C0A1C(uint64_t a1)
{
  v2 = sub_1979C4848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979C0A58(uint64_t a1)
{
  v2 = sub_1979C4848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateDump.InferenceProviderState.ActiveRequest.encode(to:)()
{
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497D8, &qword_197A90EC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_1979C4848();
  OUTLINED_FUNCTION_39_0(&type metadata for StateDump.InferenceProviderState.ActiveRequest.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1_6();
  sub_197954254(v6);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(0);
    sub_1979A6BD0();
    OUTLINED_FUNCTION_24_4();
    sub_197A880E8();
  }

  v7 = OUTLINED_FUNCTION_61();
  return v8(v7);
}

uint64_t StateDump.InferenceProviderState.ActiveRequest.hash(into:)()
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v2);
  OUTLINED_FUNCTION_52_2();
  sub_197A878F8();
  OUTLINED_FUNCTION_91_0();
  v4 = *(v1 + v3);

  return sub_19799E8BC(v0, v4);
}

uint64_t StateDump.InferenceProviderState.ActiveRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v1);
  sub_197A878F8();
  OUTLINED_FUNCTION_91_0();
  sub_19799E8BC(v4, *(v0 + v2));
  return sub_197A88358();
}

void StateDump.InferenceProviderState.ActiveRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_92();
  v27 = v26;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  v46 = &v43 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497E8, &qword_197A90EC8);
  OUTLINED_FUNCTION_2();
  v44 = v32;
  v45 = v31;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_88_0();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(v34);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_113_0(v27, v27[3]);
  sub_1979C4848();
  sub_197A883A8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v40 = v39;
    v41 = v44;
    OUTLINED_FUNCTION_4_4(&qword_1ED87FC90);
    v42 = v45;
    sub_197A87FD8();
    sub_19794B118();
    sub_197978D10();
    sub_197A87FD8();
    (*(v41 + 8))(v25, v42);
    *(v40 + *(active + 20)) = a13;
    sub_1979C42B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_1979C4088();
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979C0FC8(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A87298();
  OUTLINED_FUNCTION_0_9();
  sub_1979C3E8C(v4);
  sub_197A878F8();
  sub_19799E8BC(v6, *(v2 + *(a2 + 20)));
  return sub_197A88358();
}

__n128 StateDump.InferenceProviderState.init(pid:descriptor:activeRequests:activePriority:loadingCount:)@<Q0>(int a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2->n128_u64[0];
  v7 = a2->n128_u64[1];
  v8 = a2[2].n128_u8[0];
  v9 = *a4;
  *a6 = a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  result = a2[1];
  *(a6 + 24) = result;
  *(a6 + 40) = v8;
  *(a6 + 48) = a3;
  *(a6 + 56) = v9;
  *(a6 + 64) = a5;
  return result;
}

void static StateDump.InferenceProviderState.== infix(_:_:)(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_90_0();
    a29 = v30;
    a30 = v31;
    v33 = *(v32 + 56);
    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v38 = *(v34 + 24);
    v37 = *(v34 + 32);
    v39 = *(v34 + 8);
    v40 = *(v34 + 16);
    v41 = *(v32 + 40);
    v42 = *(v32 + 24);
    v43 = *(v32 + 32);
    v44 = *(v32 + 16);
    a14 = *(v32 + 8);
    a15 = v44;
    a16 = v42;
    a17 = v43;
    a18 = v41;
    a9 = v39;
    a10 = v40;
    a11 = v38;
    a12 = v37;
    a13 = v36;
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    LOBYTE(v40) = static InferenceProviderDescriptor.== infix(_:_:)(&a14, &a9);

    if (v40)
    {
      sub_19799FD2C();
      if (v45)
      {
        sub_1979577EC(v33, v35);
      }
    }

    OUTLINED_FUNCTION_89_0();
  }
}

uint64_t sub_1979C11D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6552657669746361 && a2 == 0xEE00737473657571;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7250657669746361 && a2 == 0xEE00797469726F69;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x43676E6964616F6CLL && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_1979C1394(char a1)
{
  result = 6580592;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x6552657669746361;
      break;
    case 3:
      result = 0x7250657669746361;
      break;
    case 4:
      result = 0x43676E6964616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979C1454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979C11D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979C147C(uint64_t a1)
{
  v2 = sub_1979C489C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979C14B8(uint64_t a1)
{
  v2 = sub_1979C489C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StateDump.InferenceProviderState.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497F0, &qword_197A90ED0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_1979C489C();
  sub_197A883D8();
  OUTLINED_FUNCTION_55();
  sub_197A880F8();
  if (!v0)
  {
    sub_1979518CC();
    OUTLINED_FUNCTION_79_1();
    sub_197A878A8();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();

    OUTLINED_FUNCTION_59_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497F8, &qword_197A90ED8);
    sub_1979C48F0();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    OUTLINED_FUNCTION_85_0();
    sub_1979A6BD0();
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    OUTLINED_FUNCTION_55();
    sub_197A880D8();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_93();
}

uint64_t StateDump.InferenceProviderState.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_70_1();
  sub_197A88338();
  sub_197A879B8();
  if (v3)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  sub_1979A7B7C();
  sub_19799E8BC(a1, v2);
  return MEMORY[0x19A8EB5D0](v1);
}

void StateDump.InferenceProviderState.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_90_0();
  a29 = v33;
  a30 = v34;
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_145();
  sub_197A88338();
  sub_197A879B8();
  if (v32)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  sub_1979A7B7C();
  sub_19799E8BC(&a10, v31);
  MEMORY[0x19A8EB5D0](v30);
  sub_197A88358();
  OUTLINED_FUNCTION_89_0();
}

void StateDump.InferenceProviderState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_92();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49800, &qword_197A90EE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_113_0(v26, v26[3]);
  sub_1979C489C();
  OUTLINED_FUNCTION_73_2();
  sub_197A883A8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    LOBYTE(v41) = 0;
    v30 = sub_197A87FE8();
    sub_19795F8C8();
    OUTLINED_FUNCTION_62_3();
    sub_197A87FD8();
    v31 = v42;
    v37 = v41;
    v38 = v43;
    v39 = v44;
    v50 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF497F8, &qword_197A90ED8);
    sub_1979C49A4();
    OUTLINED_FUNCTION_43_3();
    sub_197A87FD8();
    v36 = v30;
    v32 = v41;
    sub_197978D10();
    OUTLINED_FUNCTION_62_3();
    sub_197A87FD8();
    OUTLINED_FUNCTION_84_0();
    v33 = sub_197A87FC8();
    v34 = OUTLINED_FUNCTION_40_2();
    v35(v34);
    LODWORD(v40[0]) = v36;
    v40[1] = v41;
    v40[2] = v42;
    v40[3] = v43;
    v40[4] = v44;
    LOBYTE(v40[5]) = v45;
    v40[6] = v41;
    LOBYTE(v40[7]) = 0;
    v40[8] = v33;
    memcpy(v28, v40, 0x48uLL);
    sub_1979C4A58(v40, &v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    LODWORD(v41) = v36;
    v42 = v37;
    v43 = v31;
    v44 = v38;
    v45 = v39;
    v46 = v50;
    v47 = v32;
    v48 = 0;
    v49 = v33;
    sub_1979C4A90(&v41);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979C1C28(uint64_t a1)
{
  sub_197A882F8();
  StateDump.InferenceProviderState.hash(into:)(v2);
  return sub_197A88358();
}

__n128 StateDump.init(assertions:currentPolicy:assets:sessions:requests:runningRequests:remoteRequests:executionGroups:inferenceProviders:disabledUseCases:trials:budget:transactions:)@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  v19 = *(a8 + 16);
  *a9 = a1;
  memcpy((a9 + 8), a2, 0x51uLL);
  *(a9 + 96) = a3;
  *(a9 + 104) = a4;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  *(a9 + 128) = a7;
  *(a9 + 136) = *a8;
  *(a9 + 152) = v19;
  result = a11;
  *(a9 + 160) = a10;
  *(a9 + 176) = a11;
  *(a9 + 192) = a12;
  return result;
}

uint64_t sub_1979C1D64()
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1979C1E34;
  v2 = *(v0 + 16);

  return ModelServiceClient.dumpState()(v2);
}

uint64_t sub_1979C1E34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t StateDump.dataValue.getter()
{
  sub_197A87978();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = sub_197A86FB8();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v6 = sub_197A86F98();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  memcpy(v11, v0, sizeof(v11));
  sub_197A86FF8();
  swift_allocObject();
  sub_197A86FE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49818, &qword_197A90EF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_197A90E10;
  sub_197A86F78();
  sub_197A86F68();
  sub_197A86F88();
  v10[0] = v7;
  sub_1979C3E8C(&unk_1EAF49820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49828, &unk_197A90EF8);
  sub_197954254(&unk_1EAF49830);
  sub_197A87DF8();
  sub_197A86FA8();
  *v1 = sub_1979C234C;
  v1[1] = 0;
  (*(v4 + 104))(v1, *MEMORY[0x1E6967FB8], v9);
  sub_197A86FC8();
  memcpy(v10, v11, sizeof(v10));
  sub_1979C4AC0();
  sub_197A86FD8();

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_1979C234C(uint64_t a1, void *a2)
{
  v27 = a1;
  v3 = sub_197A87208();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_197A871E8();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_197A871C8();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_197A871D8();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_197A872B8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_197A87218();
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_197A883C8();
  sub_197A872A8();
  (*(v9 + 104))(v11, *MEMORY[0x1E6969360], v17);
  (*(v7 + 104))(v18, *MEMORY[0x1E6969358], v19);
  (*(v22 + 104))(v20, *MEMORY[0x1E6969370], v23);
  (*(v25 + 104))(v24, *MEMORY[0x1E6969380], v26);
  sub_197A871F8();
  sub_1979C3E8C(&unk_1EAF49998);
  sub_197A87248();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_197A88248();
  (*(v21 + 8))(v15, v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_1979C27D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69747265737361 && a2 == 0xEA0000000000736ELL;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x50746E6572727563 && a2 == 0xED00007963696C6FLL;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x52676E696E6E7572 && a2 == 0xEF73747365757165;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x655265746F6D6572 && a2 == 0xEE00737473657571;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69747563657865 && a2 == 0xEF7370756F72476ELL;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000197AA34D0 == a2;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000197AA34F0 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x736C61697274 && a2 == 0xE600000000000000;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x746567647562 && a2 == 0xE600000000000000;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_197A88218();

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

unint64_t sub_1979C2BF0(char a1)
{
  result = 0x6F69747265737361;
  switch(a1)
  {
    case 1:
      result = 0x50746E6572727563;
      break;
    case 2:
      result = 0x737465737361;
      break;
    case 3:
      result = 0x736E6F6973736573;
      break;
    case 4:
      result = 0x7374736575716572;
      break;
    case 5:
      result = 0x52676E696E6E7572;
      break;
    case 6:
      result = 0x655265746F6D6572;
      break;
    case 7:
      result = 0x6F69747563657865;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x736C61697274;
      break;
    case 11:
      result = 0x746567647562;
      break;
    case 12:
      result = 0x746361736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979C2D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979C27D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979C2DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979C2BE8();
  *a1 = result;
  return result;
}

uint64_t sub_1979C2DE0(uint64_t a1)
{
  v2 = sub_1979C4B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979C2E1C(uint64_t a1)
{
  v2 = sub_1979C4B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StateDump.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49838, &qword_197A90F08);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_29_1();
  v7 = *v0;
  v18 = v0[13];
  v19 = v0[12];
  v16 = v0[15];
  v17 = v0[14];
  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[16];
  v11 = v0[20];
  v10 = v0[21];
  v9 = v0[22];
  v8 = v0[24];
  OUTLINED_FUNCTION_13_1();
  sub_1979C4B14();
  sub_197A878A8();
  OUTLINED_FUNCTION_73_2();
  sub_197A883D8();
  v20[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49840, &qword_197A90F10);
  sub_1979C4B68();
  OUTLINED_FUNCTION_48_2();
  sub_197A880E8();

  if (!v1)
  {
    memcpy(v20, v0 + 1, 0x51uLL);
    sub_1979C4C1C();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v19;
    OUTLINED_FUNCTION_59_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49848, &qword_197A90F18);
    sub_1979C4C70();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v18;
    OUTLINED_FUNCTION_85_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49850, &qword_197A90F20);
    sub_1979C4D24();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v17;
    OUTLINED_FUNCTION_84_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49858, &qword_197A90F28);
    sub_1979C4DD8();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49728, &unk_197A90E58);
    sub_1979C4150();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49860, &qword_197A90F30);
    sub_1979C4E8C();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = v14;
    sub_1979C4F40();
    OUTLINED_FUNCTION_79_1();
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();

    v20[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49868, &qword_197A90F38);
    sub_1979C4F94(&unk_1EAF48228);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    OUTLINED_FUNCTION_6_5(&qword_1ED87F958, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v20[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49870, &qword_197A90F40);
    sub_1979C5598(&unk_1EAF482B8);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    LOBYTE(v20[0]) = 11;
    sub_197A88128();
    v20[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49878, &qword_197A90F48);
    sub_1979C505C();
    OUTLINED_FUNCTION_5_4();
    sub_197A880E8();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_93();
}

void StateDump.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v5 = v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49880, &qword_197A90F50);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_1();
  v9 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_1979C4B14();
  OUTLINED_FUNCTION_73_2();
  sub_197A883A8();
  if (v0)
  {
    OUTLINED_FUNCTION_31_2();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    if (v9)
    {

      if ((v1 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v1)
    {
LABEL_5:
      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v7)
    {
LABEL_6:

      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v26)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49840, &qword_197A90F10);
  sub_1979C5118();
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_43_3();
  sub_197A87FD8();
  v25 = v28;
  v46 = 1;
  sub_1979C51CC();
  OUTLINED_FUNCTION_62_3();
  sub_197A87FD8();
  memcpy(v49, v47, sizeof(v49));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49848, &qword_197A90F18);
  sub_1979C5220();
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v24 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49850, &qword_197A90F20);
  sub_1979C52D4();
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v23 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49858, &qword_197A90F28);
  sub_1979C5388();
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v22 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49728, &unk_197A90E58);
  sub_1979C4200();
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v21 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49860, &qword_197A90F30);
  sub_1979C543C();
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v20 = v28;
  sub_1979C54F0();
  OUTLINED_FUNCTION_62_3();
  sub_197A87FD8();
  v17 = v28;
  v18 = *v29;
  v19 = *&v29[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49868, &qword_197A90F38);
  sub_1979C4F94(&unk_1EAF498E0);
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v16 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
  OUTLINED_FUNCTION_7_5(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
  OUTLINED_FUNCTION_2_8();
  sub_197A87FD8();
  v15 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49870, &qword_197A90F40);
  LOBYTE(v27[0]) = 10;
  sub_1979C5598(&unk_1EAF498F0);
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_43_3();
  sub_197A87FD8();
  v14 = v28;
  LOBYTE(v28) = 11;
  v10 = sub_197A88018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49878, &qword_197A90F48);
  v44 = 12;
  sub_1979C5618();
  OUTLINED_FUNCTION_43_3();
  sub_197A87FD8();
  v11 = OUTLINED_FUNCTION_51_2();
  v12(v11);
  v13 = v45;
  v27[0] = v25;
  memcpy(&v27[1], v49, 0x51uLL);
  v27[12] = v24;
  v27[13] = v23;
  v27[14] = v22;
  v27[15] = v21;
  v27[16] = v20;
  v27[17] = v17;
  v27[18] = v18;
  v27[19] = v19;
  v27[20] = v16;
  v27[21] = v15;
  v27[22] = v14;
  v27[23] = v10;
  v27[24] = v45;
  memcpy(v5, v27, 0xC8uLL);
  sub_1979C56D4(v27, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v28 = v25;
  memcpy(v29, v49, sizeof(v29));
  *v30 = *v48;
  *&v30[3] = *&v48[3];
  v31 = v24;
  v32 = v23;
  v33 = v22;
  v34 = v21;
  v35 = v20;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v16;
  v40 = v15;
  v41 = v14;
  v42 = v10;
  v43 = v13;
  sub_1979C570C(&v28);
LABEL_12:
  OUTLINED_FUNCTION_93();
}

unint64_t sub_1979C3C80()
{
  result = qword_1EAF48458;
  if (!qword_1EAF48458)
  {
    result = swift_getWitnessTable(a1, &type metadata for StateDump.AssetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48458);
  }

  return result;
}

unint64_t sub_1979C3CD4()
{
  result = qword_1EAF48538;
  if (!qword_1EAF48538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCost, &type metadata for AssetCost, v0, v1);
    atomic_store(result, &qword_1EAF48538);
  }

  return result;
}

unint64_t sub_1979C3D28()
{
  result = qword_1EAF48248;
  if (!qword_1EAF48248)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF496F8, &unk_197A90E30);
    v4[0] = sub_197954254(&qword_1ED87FC88);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48248);
  }

  return result;
}

unint64_t sub_1979C3DD8()
{
  result = qword_1EAF48268;
  if (!qword_1EAF48268)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49700, &qword_197A90E40);
    v4[0] = sub_1979C3E8C(&qword_1ED881010);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48268);
  }

  return result;
}

unint64_t sub_1979C3E8C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1979C3ED0()
{
  result = qword_1ED87CBC0;
  if (!qword_1ED87CBC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCost, &type metadata for AssetCost, v0, v1);
    atomic_store(result, &qword_1ED87CBC0);
  }

  return result;
}

unint64_t sub_1979C3F24()
{
  result = qword_1EAF49710;
  if (!qword_1EAF49710)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF496F8, &unk_197A90E30);
    v4[0] = sub_197954254(&qword_1ED87FC80);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF49710);
  }

  return result;
}

unint64_t sub_1979C3FD4()
{
  result = qword_1EAF49718;
  if (!qword_1EAF49718)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49700, &qword_197A90E40);
    v4[0] = sub_1979C3E8C(&qword_1ED880270);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF49718);
  }

  return result;
}

uint64_t sub_1979C4088()
{
  v1 = OUTLINED_FUNCTION_97();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1979C40FC()
{
  result = qword_1EAF48400;
  if (!qword_1EAF48400)
  {
    result = swift_getWitnessTable(byte_197A92038, &type metadata for StateDump.SessionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48400);
  }

  return result;
}

unint64_t sub_1979C4150()
{
  result = qword_1EAF48258;
  if (!qword_1EAF48258)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49728, &unk_197A90E58);
    v4[0] = sub_197954254(&qword_1ED87FC98);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48258);
  }

  return result;
}

unint64_t sub_1979C4200()
{
  result = qword_1EAF49738;
  if (!qword_1EAF49738)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49728, &unk_197A90E58);
    v4[0] = sub_197954254(&qword_1ED87FC90);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF49738);
  }

  return result;
}

uint64_t sub_1979C42B0()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

unint64_t sub_1979C4328()
{
  result = qword_1EAF49748;
  if (!qword_1EAF49748)
  {
    result = swift_getWitnessTable(aSW_2, &type metadata for StateDump.RemoteRequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49748);
  }

  return result;
}

unint64_t sub_1979C437C()
{
  result = qword_1EAF49750;
  if (!qword_1EAF49750)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation, &type metadata for RemoteInterfaceInformation, v0, v1);
    atomic_store(result, &qword_1EAF49750);
  }

  return result;
}

unint64_t sub_1979C43D0()
{
  result = qword_1EAF49760;
  if (!qword_1EAF49760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation, &type metadata for RemoteInterfaceInformation, v0, v1);
    atomic_store(result, &qword_1EAF49760);
  }

  return result;
}

unint64_t sub_1979C4444()
{
  result = qword_1EAF49770;
  if (!qword_1EAF49770)
  {
    result = swift_getWitnessTable(asc_197A91F98, &type metadata for StateDump.RequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49770);
  }

  return result;
}

unint64_t sub_1979C4498()
{
  result = qword_1EAF484C0;
  if (!qword_1EAF484C0)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for StateDump.ExecutionGroupsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF484C0);
  }

  return result;
}

unint64_t sub_1979C44EC()
{
  result = qword_1EAF48288;
  if (!qword_1EAF48288)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49788, &qword_197A90E98);
    v4[0] = sub_1979C3E8C(&unk_1EAF484D8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EAF48288);
  }

  return result;
}

unint64_t sub_1979C45C0()
{
  result = qword_1EAF49798;
  if (!qword_1EAF49798)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49788, &qword_197A90E98);
    v4[0] = sub_1979C3E8C(&unk_1EAF497A0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EAF49798);
  }

  return result;
}

unint64_t sub_1979C4674()
{
  result = qword_1EAF497B0;
  if (!qword_1EAF497B0)
  {
    result = swift_getWitnessTable(byte_197A91EF8, &type metadata for StateDump.ExecutionGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF497B0);
  }

  return result;
}

unint64_t sub_1979C46C8()
{
  result = qword_1EAF497C0;
  if (!qword_1EAF497C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF497B8, &qword_197A90EB0);
    v4[0] = sub_197954254(&qword_1ED87FC98);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EAF497C0);
  }

  return result;
}

unint64_t sub_1979C4778()
{
  result = qword_1EAF497D0;
  if (!qword_1EAF497D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF497B8, &qword_197A90EB0);
    v4[0] = sub_197954254(&qword_1ED87FC90);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EAF497D0);
  }

  return result;
}

unint64_t sub_1979C4848()
{
  result = qword_1EAF497E0;
  if (!qword_1EAF497E0)
  {
    result = swift_getWitnessTable(byte_197A91EA8, &type metadata for StateDump.InferenceProviderState.ActiveRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF497E0);
  }

  return result;
}

unint64_t sub_1979C489C()
{
  result = qword_1EAF484A0;
  if (!qword_1EAF484A0)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for StateDump.InferenceProviderState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF484A0);
  }

  return result;
}

unint64_t sub_1979C48F0()
{
  result = qword_1EAF48230;
  if (!qword_1EAF48230)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF497F8, &qword_197A90ED8);
    v4[0] = sub_1979C3E8C(&unk_1EAF48488);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48230);
  }

  return result;
}

unint64_t sub_1979C49A4()
{
  result = qword_1EAF49808;
  if (!qword_1EAF49808)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF497F8, &qword_197A90ED8);
    v4[0] = sub_1979C3E8C(&unk_1EAF49810);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF49808);
  }

  return result;
}

unint64_t sub_1979C4AC0()
{
  result = qword_1EAF483B0;
  if (!qword_1EAF483B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump, &type metadata for StateDump, v0, v1);
    atomic_store(result, &qword_1EAF483B0);
  }

  return result;
}

unint64_t sub_1979C4B14()
{
  result = qword_1EAF483C8;
  if (!qword_1EAF483C8)
  {
    result = swift_getWitnessTable(byte_197A91E08, &type metadata for StateDump.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF483C8);
  }

  return result;
}

unint64_t sub_1979C4B68()
{
  result = qword_1EAF48298;
  if (!qword_1EAF48298)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49840, &qword_197A90F10);
    v4[0] = sub_1979C3E8C(&unk_1ED87E918);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EAF48298);
  }

  return result;
}

unint64_t sub_1979C4C1C()
{
  result = qword_1EAF48550;
  if (!qword_1EAF48550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Policy, &type metadata for Policy, v0, v1);
    atomic_store(result, &qword_1EAF48550);
  }

  return result;
}

unint64_t sub_1979C4C70()
{
  result = qword_1EAF48220;
  if (!qword_1EAF48220)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49848, &qword_197A90F18);
    v4[0] = sub_1979C3E8C(&unk_1EAF48440);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48220);
  }

  return result;
}

unint64_t sub_1979C4D24()
{
  result = qword_1EAF48210;
  if (!qword_1EAF48210)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49850, &qword_197A90F20);
    v4[0] = sub_1979C3E8C(&unk_1EAF483E8);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48210);
  }

  return result;
}

unint64_t sub_1979C4DD8()
{
  result = qword_1EAF48218;
  if (!qword_1EAF48218)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49858, &qword_197A90F28);
    v4[0] = sub_1979C3E8C(&unk_1EAF48420);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48218);
  }

  return result;
}

unint64_t sub_1979C4E8C()
{
  result = qword_1EAF48238;
  if (!qword_1EAF48238)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49860, &qword_197A90F30);
    v4[0] = sub_1979C3E8C(&unk_1EAF484F8);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EAF48238);
  }

  return result;
}

unint64_t sub_1979C4F40()
{
  result = qword_1EAF484A8;
  if (!qword_1EAF484A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.ExecutionGroupsState, &type metadata for StateDump.ExecutionGroupsState, v0, v1);
    atomic_store(result, &qword_1EAF484A8);
  }

  return result;
}

unint64_t sub_1979C4F94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49868, &qword_197A90F38);
    v8 = v6();
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1979C5008()
{
  result = qword_1EAF48468;
  if (!qword_1EAF48468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.InferenceProviderState, &type metadata for StateDump.InferenceProviderState, v0, v1);
    atomic_store(result, &qword_1EAF48468);
  }

  return result;
}

unint64_t sub_1979C505C()
{
  result = qword_1EAF482C0;
  if (!qword_1EAF482C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49878, &qword_197A90F48);
    v4[0] = sub_1979C3E8C(&qword_1ED881010);
    v4[1] = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EAF482C0);
  }

  return result;
}

unint64_t sub_1979C5118()
{
  result = qword_1EAF49888;
  if (!qword_1EAF49888)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49840, &qword_197A90F10);
    v4[0] = sub_1979C3E8C(&unk_1EAF48540);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EAF49888);
  }

  return result;
}

unint64_t sub_1979C51CC()
{
  result = qword_1EAF49890;
  if (!qword_1EAF49890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Policy, &type metadata for Policy, v0, v1);
    atomic_store(result, &qword_1EAF49890);
  }

  return result;
}

unint64_t sub_1979C5220()
{
  result = qword_1EAF49898;
  if (!qword_1EAF49898)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49848, &qword_197A90F18);
    v4[0] = sub_1979C3E8C(&unk_1EAF498A0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF49898);
  }

  return result;
}

unint64_t sub_1979C52D4()
{
  result = qword_1EAF498A8;
  if (!qword_1EAF498A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49850, &qword_197A90F20);
    v4[0] = sub_1979C3E8C(&unk_1EAF498B0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF498A8);
  }

  return result;
}

unint64_t sub_1979C5388()
{
  result = qword_1EAF498B8;
  if (!qword_1EAF498B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49858, &qword_197A90F28);
    v4[0] = sub_1979C3E8C(&unk_1EAF498C0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF498B8);
  }

  return result;
}

unint64_t sub_1979C543C()
{
  result = qword_1EAF498C8;
  if (!qword_1EAF498C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49860, &qword_197A90F30);
    v4[0] = sub_1979C3E8C(&unk_1EAF498D0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EAF498C8);
  }

  return result;
}

unint64_t sub_1979C54F0()
{
  result = qword_1EAF498D8;
  if (!qword_1EAF498D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.ExecutionGroupsState, &type metadata for StateDump.ExecutionGroupsState, v0, v1);
    atomic_store(result, &qword_1EAF498D8);
  }

  return result;
}

unint64_t sub_1979C5544()
{
  result = qword_1EAF498E8;
  if (!qword_1EAF498E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.InferenceProviderState, &type metadata for StateDump.InferenceProviderState, v0, v1);
    atomic_store(result, &qword_1EAF498E8);
  }

  return result;
}

unint64_t sub_1979C5598(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49870, &qword_197A90F40);
    v10[0] = v7;
    v10[1] = v8();
    result = swift_getWitnessTable(v6, v9, v10);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1979C5618()
{
  result = qword_1EAF498F8;
  if (!qword_1EAF498F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49878, &qword_197A90F48);
    v4[0] = sub_1979C3E8C(&qword_1ED880270);
    v4[1] = MEMORY[0x1E69E6190];
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v3, v4);
    atomic_store(result, &qword_1EAF498F8);
  }

  return result;
}

unint64_t sub_1979C5860()
{
  result = qword_1EAF49900;
  if (!qword_1EAF49900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.ExecutionGroupsState, &type metadata for StateDump.ExecutionGroupsState, v0, v1);
    atomic_store(result, &qword_1EAF49900);
  }

  return result;
}

unint64_t sub_1979C5948()
{
  result = qword_1EAF48460;
  if (!qword_1EAF48460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateDump.InferenceProviderState, &type metadata for StateDump.InferenceProviderState, v0, v1);
    atomic_store(result, &qword_1EAF48460);
  }

  return result;
}

uint64_t sub_1979C59A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1979C59E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1979C5A8C(uint64_t a1)
{
  sub_197A87258();
  if (v1 <= 0x3F)
  {
    sub_19797352C();
    if (v2 <= 0x3F)
    {
      sub_1979C5D60(319, &qword_1EAF48250, &qword_1EAF49130, &qword_197A969C0, &qword_1ED87FE60);
      if (v3 <= 0x3F)
      {
        sub_1979C5BA8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1979C5BA8(uint64_t a1)
{
  if (!qword_1EAF48270)
  {
    sub_197A87298();
    sub_1979C3E8C(&qword_1ED880FE0);
    v1 = sub_197A87D08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF48270);
    }
  }
}

void sub_1979C5C64(uint64_t a1)
{
  sub_1979C5EF8(319, &qword_1ED880248, type metadata accessor for Session, &protocol witness table for Session);
  if (v1 <= 0x3F)
  {
    sub_19797352C();
    if (v2 <= 0x3F)
    {
      sub_1979C5D60(319, &qword_1EAF48260, &qword_1EAF49128, &unk_197A8CE70, &unk_1ED87D600);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1979C5D60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_197954254(a5);
    v7 = sub_197A87D08();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1979C5E24(uint64_t a1)
{
  sub_1979C5EF8(319, &qword_1ED880248, type metadata accessor for Session, &protocol witness table for Session);
  if (v1 <= 0x3F)
  {
    sub_1979C5EF8(319, &qword_1ED87FE68, type metadata accessor for RequestMetadata, &protocol witness table for RequestMetadata);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1979C5EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for UUIDIdentifier(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1979C5F84(uint64_t a1)
{
  sub_1979C5EF8(319, &qword_1ED87FE68, type metadata accessor for RequestMetadata, &protocol witness table for RequestMetadata);
  if (v1 <= 0x3F)
  {
    sub_1979C5EF8(319, &qword_1ED880248, type metadata accessor for Session, &protocol witness table for Session);
    if (v2 <= 0x3F)
    {
      sub_19797352C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1979C6098(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1979C60D8(uint64_t result, int a2, int a3)
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

void sub_1979C6150(uint64_t a1)
{
  sub_197A87298();
  if (v1 <= 0x3F)
  {
    sub_19797352C();
    if (v2 <= 0x3F)
    {
      sub_1979C61F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1979C61F4(uint64_t a1)
{
  if (!qword_1EAF482B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49128, &unk_197A8CE70);
    v1 = sub_197A87B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF482B0);
    }
  }
}

uint64_t sub_1979C6260(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1979C62A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1979C6328(uint64_t a1)
{
  sub_1979C5EF8(319, &qword_1ED87FE68, type metadata accessor for RequestMetadata, &protocol witness table for RequestMetadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for StateDump.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.InferenceProviderState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.InferenceProviderState.ActiveRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.ExecutionGroupState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateDump.RequestState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StateDump.RequestState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1979C68A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StateDump.SessionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StateDump.AssetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StateDump.AssetState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979C6BC4()
{
  result = qword_1EAF49910;
  if (!qword_1EAF49910)
  {
    result = swift_getWitnessTable(aVW_0, &type metadata for StateDump.AssetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49910);
  }

  return result;
}

unint64_t sub_1979C6C1C()
{
  result = qword_1EAF49918;
  if (!qword_1EAF49918)
  {
    result = swift_getWitnessTable(aQuWM, &type metadata for StateDump.SessionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49918);
  }

  return result;
}

unint64_t sub_1979C6C74()
{
  result = qword_1EAF49920;
  if (!qword_1EAF49920)
  {
    result = swift_getWitnessTable(byte_197A91990, &type metadata for StateDump.RemoteRequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49920);
  }

  return result;
}

unint64_t sub_1979C6CCC()
{
  result = qword_1EAF49928;
  if (!qword_1EAF49928)
  {
    result = swift_getWitnessTable(byte_197A91A48, &type metadata for StateDump.RequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49928);
  }

  return result;
}

unint64_t sub_1979C6D24()
{
  result = qword_1EAF49930;
  if (!qword_1EAF49930)
  {
    result = swift_getWitnessTable(aIsW, &type metadata for StateDump.ExecutionGroupsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49930);
  }

  return result;
}

unint64_t sub_1979C6D7C()
{
  result = qword_1EAF49938;
  if (!qword_1EAF49938)
  {
    result = swift_getWitnessTable(byte_197A91BB8, &type metadata for StateDump.ExecutionGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49938);
  }

  return result;
}

unint64_t sub_1979C6DD4()
{
  result = qword_1EAF49940;
  if (!qword_1EAF49940)
  {
    result = swift_getWitnessTable(byte_197A91C70, &type metadata for StateDump.InferenceProviderState.ActiveRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49940);
  }

  return result;
}

unint64_t sub_1979C6E2C()
{
  result = qword_1EAF49948;
  if (!qword_1EAF49948)
  {
    result = swift_getWitnessTable(aQW, &type metadata for StateDump.InferenceProviderState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49948);
  }

  return result;
}

unint64_t sub_1979C6E84()
{
  result = qword_1EAF49950;
  if (!qword_1EAF49950)
  {
    result = swift_getWitnessTable(aIpW, &type metadata for StateDump.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49950);
  }

  return result;
}

unint64_t sub_1979C6EDC()
{
  result = qword_1EAF483B8;
  if (!qword_1EAF483B8)
  {
    result = swift_getWitnessTable(byte_197A91D50, &type metadata for StateDump.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF483B8);
  }

  return result;
}

unint64_t sub_1979C6F34()
{
  result = qword_1EAF483C0;
  if (!qword_1EAF483C0)
  {
    result = swift_getWitnessTable(byte_197A91D78, &type metadata for StateDump.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF483C0);
  }

  return result;
}

unint64_t sub_1979C6F8C()
{
  result = qword_1EAF48490;
  if (!qword_1EAF48490)
  {
    result = swift_getWitnessTable(aYW, &type metadata for StateDump.InferenceProviderState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48490);
  }

  return result;
}

unint64_t sub_1979C6FE4()
{
  result = qword_1EAF48498;
  if (!qword_1EAF48498)
  {
    result = swift_getWitnessTable(aQzWH, &type metadata for StateDump.InferenceProviderState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48498);
  }

  return result;
}

unint64_t sub_1979C703C()
{
  result = qword_1EAF49958;
  if (!qword_1EAF49958)
  {
    result = swift_getWitnessTable(byte_197A91BE0, &type metadata for StateDump.InferenceProviderState.ActiveRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49958);
  }

  return result;
}

unint64_t sub_1979C7094()
{
  result = qword_1EAF49960;
  if (!qword_1EAF49960)
  {
    result = swift_getWitnessTable(aWI, &type metadata for StateDump.InferenceProviderState.ActiveRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49960);
  }

  return result;
}

unint64_t sub_1979C70EC()
{
  result = qword_1EAF49968;
  if (!qword_1EAF49968)
  {
    result = swift_getWitnessTable(byte_197A91B28, &type metadata for StateDump.ExecutionGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49968);
  }

  return result;
}

unint64_t sub_1979C7144()
{
  result = qword_1EAF49970;
  if (!qword_1EAF49970)
  {
    result = swift_getWitnessTable(byte_197A91B50, &type metadata for StateDump.ExecutionGroupState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49970);
  }

  return result;
}

unint64_t sub_1979C719C()
{
  result = qword_1EAF484B0;
  if (!qword_1EAF484B0)
  {
    result = swift_getWitnessTable(byte_197A91A70, &type metadata for StateDump.ExecutionGroupsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF484B0);
  }

  return result;
}

unint64_t sub_1979C71F4()
{
  result = qword_1EAF484B8;
  if (!qword_1EAF484B8)
  {
    result = swift_getWitnessTable(byte_197A91A98, &type metadata for StateDump.ExecutionGroupsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF484B8);
  }

  return result;
}

unint64_t sub_1979C724C()
{
  result = qword_1EAF49978;
  if (!qword_1EAF49978)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for StateDump.RequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49978);
  }

  return result;
}

unint64_t sub_1979C72A4()
{
  result = qword_1EAF49980;
  if (!qword_1EAF49980)
  {
    result = swift_getWitnessTable(aQW_0, &type metadata for StateDump.RequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49980);
  }

  return result;
}

unint64_t sub_1979C72FC()
{
  result = qword_1EAF49988;
  if (!qword_1EAF49988)
  {
    result = swift_getWitnessTable(byte_197A91900, &type metadata for StateDump.RemoteRequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49988);
  }

  return result;
}

unint64_t sub_1979C7354()
{
  result = qword_1EAF49990;
  if (!qword_1EAF49990)
  {
    result = swift_getWitnessTable(aW_14, &type metadata for StateDump.RemoteRequestState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49990);
  }

  return result;
}

unint64_t sub_1979C73AC()
{
  result = qword_1EAF483F0;
  if (!qword_1EAF483F0)
  {
    result = swift_getWitnessTable(byte_197A91848, &type metadata for StateDump.SessionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF483F0);
  }

  return result;
}

unint64_t sub_1979C7404()
{
  result = qword_1EAF483F8;
  if (!qword_1EAF483F8)
  {
    result = swift_getWitnessTable(byte_197A91870, &type metadata for StateDump.SessionState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF483F8);
  }

  return result;
}

unint64_t sub_1979C745C()
{
  result = qword_1EAF48448;
  if (!qword_1EAF48448)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for StateDump.AssetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48448);
  }

  return result;
}

unint64_t sub_1979C74B4()
{
  result = qword_1EAF48450;
  if (!qword_1EAF48450)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for StateDump.AssetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48450);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_197A87FD8();
}

uint64_t sub_1979C7540()
{
  type metadata accessor for RunningBoardProvider(0);
  swift_allocObject();
  result = sub_197985568();
  qword_1ED8817D8 = result;
  return result;
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:)()
{
  OUTLINED_FUNCTION_67();
  v121 = v0;
  v2 = v1;
  v129 = v3;
  v5 = v4;
  v126 = v6;
  v8 = v7;
  v128 = v9;
  v125 = v10;
  v12 = v11;
  v13 = type metadata accessor for ModelManagerError(0);
  v14 = OUTLINED_FUNCTION_28(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v16);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v23);
  v123 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v124 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v110 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v30 = OUTLINED_FUNCTION_10_7(v29, v138);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v37 = OUTLINED_FUNCTION_28(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_35();
  v40 = v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14_6(v42, v43, v44, v45, v46, v47, v48, v49, v110);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v50 = OUTLINED_FUNCTION_74_4(v113);
  v112 = xmmword_197A88E50;
  *(v50 + 16) = xmmword_197A88E50;
  *(v50 + 32) = sub_197A870F8();
  *(v50 + 40) = v51;
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v127 = v8;
    if (v8 <= 0x7FFFFFFF)
    {
      v132 = v34;
      v115 = v21;
      v116 = v19;
      v118 = v12;
      v117 = v2;
      sub_1979444C8(v2, v133, &qword_1EAF499A8, &qword_197A92B00);
      if (qword_1ED8803B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v52 = qword_1ED880258;
  v138[12] = &type metadata for VoucherProvider;
  v138[13] = &off_1F0C11F50;

  v53 = v131;
  v54 = v5;
  v55 = v5;
  v56 = v129;
  sub_197945194(v50, v54, v129);

  sub_1979444C8(v53, v132, &qword_1EAF499A0, &qword_197A920D8);
  v57 = OUTLINED_FUNCTION_58_4();
  v58 = v40;
  sub_1979444C8(v57, v40, v59, v60);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v138[2] = &type metadata for VoucherProvider;
  v138[3] = &off_1F0C11F50;
  v61 = OUTLINED_FUNCTION_37_2();
  __swift_mutable_project_boxed_opaque_existential_1(&v137, &type metadata for VoucherProvider);
  v136[0] = type metadata accessor for ModelServiceClient();
  v136[1] = &protocol witness table for ModelServiceClient;
  v134[4] = &off_1F0C11F50;
  v135[0] = v52;
  v134[3] = &type metadata for VoucherProvider;
  sub_197947C44(v135, v61 + 16);
  v62 = (v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v63 = v128;
  *v62 = v125;
  v62[1] = v63;
  *(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v126;
  v64 = (v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  v121 = v55;
  *v64 = v55;
  v64[1] = v56;
  sub_197A878A8();
  sub_197A878A8();
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v65 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v66 = v124;
  v67 = *(v124 + 32);
  OUTLINED_FUNCTION_83_2();
  v67();
  OUTLINED_FUNCTION_40_3(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v68 = v127;
  v69 = v119;
  if (v127 == -1)
  {
    v70 = OUTLINED_FUNCTION_24_5();
    v111 = v65;
    if (v66)
    {
      v68 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v71 = sub_197A87608();
      v72 = OUTLINED_FUNCTION_80_2(v71, qword_1ED87D2E8);
      v73 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v73))
      {
        v28 = OUTLINED_FUNCTION_65_2();
        *v28 = 67109120;
        *(v28 + 1) = v68;
        _os_log_impl(&dword_197941000, v72, v73, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v28, 8u);
        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_44();
      }
    }

    else
    {
      v68 = v70;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v74 = sub_197A87608();
      v72 = OUTLINED_FUNCTION_80_2(v74, qword_1ED87D2E8);
      v75 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v75))
      {
        v76 = OUTLINED_FUNCTION_65_2();
        *v76 = 67109120;
        *(v76 + 4) = v68;
        _os_log_impl(&dword_197941000, v72, v75, "No onBehalfOfPID specified, using originator PID: %d", v76, 8u);
        OUTLINED_FUNCTION_44();
      }
    }

    v66 = v124;
    v65 = v111;
  }

  *(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v68;
  sub_1979444C8(v58, v69, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v28);
  v78 = v120;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v69, &qword_1EAF499A8, &qword_197A92B00);
    (*(v66 + 16))(v130, v65 + v61, v28);
  }

  else
  {
    v79 = OUTLINED_FUNCTION_104_0();
    (v67)(v79, v69, v28);
  }

  v80 = v116;
  v81 = v115;
  v82 = v132;
  sub_1979444C8(v132, v78, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    OUTLINED_FUNCTION_12_4();
    v83 = v80;
    v84 = v114;
    sub_19794B170(v78, v114, v85);
    sub_197947A40(v58, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v82, &qword_1EAF499A0, &qword_197A920D8);
    (*(v66 + 8))(v130, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    *(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    v86 = v84;
    v80 = v83;
    sub_19794B170(v86, v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v87 = *(v81 + 32);
    v127 = v68;
    v124 = v58;
    v88 = v122;
    v87();
    v89 = v65;
    v90 = OUTLINED_FUNCTION_74_4(v113);
    *(v90 + 16) = v112;
    v91 = sub_197A870F8();
    *(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v90;
    *(v90 + 32) = v91;
    *(v90 + 40) = v92;
    v93 = v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v81 + 16))(v61 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v88, v80);
    v94 = type metadata accessor for Session.Metadata(0);
    v95 = *(v66 + 16);
    v95(v93 + v94[9], &v89[v61], v28);
    v96 = v130;
    v95(v93 + v94[10], v130, v28);
    OUTLINED_FUNCTION_34_2((v93 + v94[5]));
    *(v93 + v94[6]) = v127;
    OUTLINED_FUNCTION_46_3(v94[7]);
    OUTLINED_FUNCTION_34_2(v97);
    OUTLINED_FUNCTION_40_3(v93 + v94[11]);
    *(v93 + v94[12]) = 0;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1(v98);
    sub_197A87C08();
    v99 = OUTLINED_FUNCTION_101_0(v135);
    OUTLINED_FUNCTION_21_3(v99, v100, v101, v102);
    OUTLINED_FUNCTION_53_3();
    v103 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v103);
    *(v93 + 72) = v61;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v124, &qword_1EAF499A8, &qword_197A92B00);
    v104 = OUTLINED_FUNCTION_71_3();
    sub_197947A40(v104, v105, v106);
    (*(v81 + 8))(v122, v80);
    (*(v66 + 8))(v96, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v134);
  OUTLINED_FUNCTION_48_3(v136);
  (*(v81 + 8))(v118, v80);
  v107 = OUTLINED_FUNCTION_72_3();
  sub_197947A40(v107, v108, v109);
  OUTLINED_FUNCTION_48_3(&v139);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:)()
{
  OUTLINED_FUNCTION_67();
  v111 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_84_1(v5, v6, v7, v132);
  v9 = v8;
  v122 = v10;
  v13 = OUTLINED_FUNCTION_109_0(v11, v12, &v131);
  v14 = OUTLINED_FUNCTION_28(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v16);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_29_1();
  v18 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v106 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v31 = OUTLINED_FUNCTION_10_7(v30, &v130);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v38 = OUTLINED_FUNCTION_28(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_26_4();
  if (v9 < v41)
  {
    __break(1u);
  }

  else
  {
    v110 = v9;
    if (v9 <= 0x7FFFFFFF)
    {
      v125 = v35;
      v102 = v2;
      v103 = v23;
      v104 = v18;
      v42 = *(v26 + 16);
      v109 = v4;
      v108 = v26 + 16;
      v107 = v42;
      v42(v0, v4, v24);
      __swift_storeEnumTagSinglePayload(v0, 0, 1, v24);
      if (qword_1ED8803B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v43 = qword_1ED880258;
  v132[0] = &type metadata for VoucherProvider;
  v132[1] = &off_1F0C11F50;

  v44 = v124;
  v45 = v120;
  v46 = v123;
  sub_197945194(v112, v120, v123);

  sub_1979444C8(v44, v125, &qword_1EAF499A0, &qword_197A920D8);
  v112 = v0;
  v47 = v121;
  sub_1979444C8(v0, v121, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v129[3] = &type metadata for VoucherProvider;
  v129[4] = &off_1F0C11F50;
  v48 = OUTLINED_FUNCTION_37_2();
  __swift_mutable_project_boxed_opaque_existential_1(v129, &type metadata for VoucherProvider);
  v128[3] = type metadata accessor for ModelServiceClient();
  v128[4] = &protocol witness table for ModelServiceClient;
  v127[2] = &off_1F0C11F50;
  v128[0] = v43;
  v49 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v49, v48 + 16);
  v50 = (v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v51 = v122;
  *v50 = v118;
  v50[1] = v51;
  *(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v119;
  v52 = (v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v52 = v45;
  v52[1] = v46;
  sub_197A878A8();
  sub_197A878A8();
  v53 = v113;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v54 = *(v26 + 32);
  v111 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v54(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v53, v24);
  OUTLINED_FUNCTION_40_3(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v55 = v110;
  v56 = v26;
  v57 = v116;
  v58 = v24;
  if (v110 == -1)
  {
    v59 = OUTLINED_FUNCTION_24_5();
    if (v24)
    {
      v113 = v54;
      v55 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v60 = sub_197A87608();
      v61 = OUTLINED_FUNCTION_80_2(v60, qword_1ED87D2E8);
      v62 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v62))
      {
        v63 = OUTLINED_FUNCTION_65_2();
        *v63 = 67109120;
        *(v63 + 4) = v55;
        _os_log_impl(&dword_197941000, v61, v62, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v63, 8u);
        v58 = v24;
        OUTLINED_FUNCTION_44();
      }

      v54 = v113;
    }

    else
    {
      v55 = v59;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v64 = sub_197A87608();
      v61 = OUTLINED_FUNCTION_80_2(v64, qword_1ED87D2E8);
      v65 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v65))
      {
        v66 = OUTLINED_FUNCTION_65_2();
        *v66 = 67109120;
        v66[1] = v55;
        OUTLINED_FUNCTION_38_2(&dword_197941000, v67, v68, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_44();
      }
    }

    v47 = v121;
  }

  *(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v55;
  v69 = v114;
  sub_1979444C8(v47, v114, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v58);
  v71 = v115;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v69, &qword_1EAF499A8, &qword_197A92B00);
    v107(v57, v48 + v111, v58);
  }

  else
  {
    v54(v57, v69, v58);
  }

  v72 = v125;
  v73 = v57;
  sub_1979444C8(v125, v71, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_12_4();
    v74 = v105;
    sub_19794B170(v71, v105, v75);
    sub_197947A40(v47, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v72, &qword_1EAF499A0, &qword_197A920D8);
    v76 = *(v56 + 8);
    v76(v73, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    *(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v74, v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v117 = v58;
    v114 = v56;
    v77 = v106;
    v78 = v103;
    OUTLINED_FUNCTION_102();
    v79();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v81 = v55;
    v82 = OUTLINED_FUNCTION_74_4(v80);
    *(v82 + 16) = xmmword_197A88E50;
    v83 = sub_197A870F8();
    *(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v82;
    *(v82 + 32) = v83;
    *(v82 + 40) = v84;
    v85 = v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v77 + 16))(v48 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v78, v58);
    v86 = type metadata accessor for Session.Metadata(0);
    v87 = v107;
    v107(v85 + v86[9], v48 + v111, v117);
    v87(v85 + v86[10], v73, v117);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_34_2(v88);
    *(v85 + v86[6]) = v81;
    OUTLINED_FUNCTION_46_3(v86[7]);
    OUTLINED_FUNCTION_34_2(v89);
    OUTLINED_FUNCTION_40_3(v85 + v86[11]);
    *(v85 + v86[12]) = 0;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1(v90);
    sub_197A87C08();
    v91 = OUTLINED_FUNCTION_101_0(v127);
    OUTLINED_FUNCTION_21_3(v91, v92, v93, v94);
    OUTLINED_FUNCTION_53_3();
    v95 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v95);
    *(v85 + 72) = v48;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v121, &qword_1EAF499A8, &qword_197A92B00);
    v96 = OUTLINED_FUNCTION_58_4();
    sub_197947A40(v96, v97, v98);
    (*(v77 + 8))(v78, v58);
    v76 = *(v114 + 8);
    v76(v73, v117);
    v58 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  v76(v109, v58);
  v99 = OUTLINED_FUNCTION_71_3();
  sub_197947A40(v99, v100, v101);
  sub_197947A40(v112, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_106_0(v3, &v105);
  v99 = v4;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_109_0(v7, v8, v106);
  v10 = OUTLINED_FUNCTION_28(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v12);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v14);
  sub_197A87118();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v23 = OUTLINED_FUNCTION_10_7(v22, &v104);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_6(v26, v27, v28, v29, v30, v31, v32, v33, v89);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v35 = OUTLINED_FUNCTION_28(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_26_4();
  if (v6 < v38)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    v92 = v6;
    OUTLINED_FUNCTION_27_4(v103);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v39 = qword_1ED880258;
  v106[3] = &type metadata for VoucherProvider;
  v106[4] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  sub_1979444C8(v16, v98, &qword_1EAF499A0, &qword_197A920D8);
  sub_1979444C8(v0, v97, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v103[2] = &type metadata for VoucherProvider;
  v103[3] = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_88_1();
  v102[3] = type metadata accessor for ModelServiceClient();
  v102[4] = &protocol witness table for ModelServiceClient;
  v101[4] = &off_1F0C11F50;
  v102[0] = v39;
  v40 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v40, v2 + 16);
  OUTLINED_FUNCTION_44_5((v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v99;
  v41 = (v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v41 = v6;
  v41[1] = v1;
  sub_197A878A8();
  v42 = sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v42);
  v43 = (v100 + 32);
  v96 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v93 = *(v100 + 32);
  v93(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v6, v18);
  OUTLINED_FUNCTION_40_3(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v44 = v92;
  if (v92 == -1)
  {
    v45 = OUTLINED_FUNCTION_24_5();
    if (v1)
    {
      v46 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v47 = sub_197A87608();
      v48 = OUTLINED_FUNCTION_80_2(v47, qword_1ED87D2E8);
      v49 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v49))
      {
        v50 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v50, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v51, v52, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v46 = v45;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v53 = sub_197A87608();
      v48 = OUTLINED_FUNCTION_80_2(v53, qword_1ED87D2E8);
      v54 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v54))
      {
        v55 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v55, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v56, v57, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2();
      }
    }

    v44 = v46;
  }

  *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v44;
  sub_1979444C8(v97, v94, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_39_3();
  if (v58)
  {
    sub_197947A40(v94, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v59 = OUTLINED_FUNCTION_50_4();
    v60(v59);
  }

  else
  {
    v61 = OUTLINED_FUNCTION_43_4();
    (v93)(v61);
  }

  sub_1979444C8(v98, v95, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v95, v90, v62);
    sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v98, &qword_1EAF499A0, &qword_197A920D8);
    v63 = OUTLINED_FUNCTION_75_4();
    v64(v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0(v65);
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v66();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v68 = OUTLINED_FUNCTION_74_4(v67);
    v69 = OUTLINED_FUNCTION_87_1(v68, xmmword_197A88E50);
    *(v2 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v68;
    v68[2].n128_u64[0] = v69;
    v68[2].n128_u64[1] = v70;
    v71 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v72(v71);
    v73 = type metadata accessor for Session.Metadata(0);
    v74 = OUTLINED_FUNCTION_30_4(v73);
    v43(v74, v2 + v96, v18);
    v75 = OUTLINED_FUNCTION_45_3();
    (v43)(v75);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v76);
    *(v44 + v77) = v99;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v78);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2(v79);
    v80 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v91, v81, v82, v80);
    OUTLINED_FUNCTION_53_3();
    v83 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v83);
    *(v44 + 72) = v2;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v98, &qword_1EAF499A0, &qword_197A920D8);
    (*(v18 + 8))();
    v84 = OUTLINED_FUNCTION_32_3();
    v85(v84);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  v86 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v86, v87, v88);
  sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v9 = OUTLINED_FUNCTION_59_4(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_28(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v12);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v14);
  sub_197A87118();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v22 = OUTLINED_FUNCTION_10_7(v21, v105);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_6(v25, v26, v27, v28, v29, v30, v31, v32, v94);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v34 = OUTLINED_FUNCTION_28(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26_4();
  if (v1 < v37)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_27_4(v104);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v38 = qword_1ED880258;
  v105[7] = &type metadata for VoucherProvider;
  v105[8] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  v41 = OUTLINED_FUNCTION_107_0(v39, v40, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_79_5(v41, v42, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v104[1] = &type metadata for VoucherProvider;
  v104[2] = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_88_1();
  v103[3] = type metadata accessor for ModelServiceClient();
  v103[4] = &protocol witness table for ModelServiceClient;
  v102[4] = &off_1F0C11F50;
  v103[0] = v38;
  v43 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v43, v3 + 16);
  OUTLINED_FUNCTION_44_5((v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = 0;
  OUTLINED_FUNCTION_108_0(OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  v44 = sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v44);
  v45 = OUTLINED_FUNCTION_36_2(OBJC_IVAR____TtC20ModelManagerServices7Session_uuid);
  v46(v45);
  OUTLINED_FUNCTION_40_3(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  OUTLINED_FUNCTION_99_0(OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations);
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_24_5();
    if (v5)
    {
      OUTLINED_FUNCTION_81_1();
      v2 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v49 = sub_197A87608();
      v50 = OUTLINED_FUNCTION_80_2(v49, qword_1ED87D2E8);
      v51 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v51))
      {
        v52 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v52, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v53, v54, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v2 = v48;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v55 = sub_197A87608();
      v50 = OUTLINED_FUNCTION_80_2(v55, qword_1ED87D2E8);
      v56 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v56))
      {
        OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_67_4(v57, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v58, v59, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2();
      }
    }

    v1 = v2;
  }

  *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v1;
  OUTLINED_FUNCTION_83_2();
  sub_1979444C8(v60, v2, v61, v62);
  OUTLINED_FUNCTION_39_3();
  if (v47)
  {
    sub_197947A40(v2, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v63 = OUTLINED_FUNCTION_50_4();
    v64(v63);
  }

  else
  {
    v65 = OUTLINED_FUNCTION_43_4();
    v98(v65);
  }

  sub_1979444C8(v16, v99, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v99, v95, v66);
    sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v16, &qword_1EAF499A0, &qword_197A920D8);
    v67 = OUTLINED_FUNCTION_75_4();
    v68(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0(v69);
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v70();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v72 = OUTLINED_FUNCTION_74_4(v71);
    v73 = OUTLINED_FUNCTION_87_1(v72, xmmword_197A88E50);
    *(v3 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v72;
    v72[2].n128_u64[0] = v73;
    v72[2].n128_u64[1] = v74;
    v75 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v76(v75);
    v77 = type metadata accessor for Session.Metadata(0);
    OUTLINED_FUNCTION_30_4(v77);
    OUTLINED_FUNCTION_73_3();
    (off_1F0C11F50)();
    v78 = OUTLINED_FUNCTION_45_3();
    (off_1F0C11F50)(v78);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v79);
    *(v1 + v80) = 0;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v81);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2(v82);
    v83 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v96, v84, v85, v83);
    OUTLINED_FUNCTION_53_3();
    v86 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v86);
    *(v1 + 72) = v3;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v100, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v101, &qword_1EAF499A0, &qword_197A920D8);
    v87 = OUTLINED_FUNCTION_105_1();
    v88(v87);
    v89 = OUTLINED_FUNCTION_32_3();
    v90(v89);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  v91 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v91, v92, v93);
  sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void Session.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:containsSensitiveData:loggingIdentifier:)()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_106_0(v5, v106);
  v9 = OUTLINED_FUNCTION_59_4(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_28(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v12);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v14);
  sub_197A87118();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v22 = OUTLINED_FUNCTION_10_7(v21, &v105);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_6(v25, v26, v27, v28, v29, v30, v31, v32, v94);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v34 = OUTLINED_FUNCTION_28(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26_4();
  if (v1 < v37)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_27_4(v104);
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
LABEL_4:
  v38 = qword_1ED880258;
  v106[5] = &type metadata for VoucherProvider;
  v106[6] = &off_1F0C11F50;

  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_28_2();

  v41 = OUTLINED_FUNCTION_107_0(v39, v40, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_79_5(v41, v42, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v104[1] = &type metadata for VoucherProvider;
  v104[2] = &off_1F0C11F50;
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_88_1();
  v103[3] = type metadata accessor for ModelServiceClient();
  v103[4] = &protocol witness table for ModelServiceClient;
  v102[4] = &off_1F0C11F50;
  v103[0] = v38;
  v43 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v43, v4 + 16);
  OUTLINED_FUNCTION_44_5((v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID));
  *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = 0;
  OUTLINED_FUNCTION_108_0(OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  v44 = sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v44);
  v45 = OUTLINED_FUNCTION_36_2(OBJC_IVAR____TtC20ModelManagerServices7Session_uuid);
  v46(v45);
  OUTLINED_FUNCTION_40_3(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  OUTLINED_FUNCTION_99_0(OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations);
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_24_5();
    if (v2)
    {
      OUTLINED_FUNCTION_81_1();
      v3 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v49 = sub_197A87608();
      v50 = OUTLINED_FUNCTION_80_2(v49, qword_1ED87D2E8);
      v51 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v51))
      {
        v52 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_67_4(v52, 1.5047e-36);
        OUTLINED_FUNCTION_62_4(&dword_197941000, v53, v54, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d");
        OUTLINED_FUNCTION_49_4();
      }
    }

    else
    {
      v3 = v48;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v55 = sub_197A87608();
      v50 = OUTLINED_FUNCTION_80_2(v55, qword_1ED87D2E8);
      v56 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v56))
      {
        OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_67_4(v57, 1.5047e-36);
        OUTLINED_FUNCTION_38_2(&dword_197941000, v58, v59, "No onBehalfOfPID specified, using originator PID: %d");
        OUTLINED_FUNCTION_56_2();
      }
    }

    v1 = v3;
  }

  *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v1;
  OUTLINED_FUNCTION_83_2();
  sub_1979444C8(v60, v3, v61, v62);
  OUTLINED_FUNCTION_39_3();
  if (v47)
  {
    sub_197947A40(v3, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_97_0();
    v63 = OUTLINED_FUNCTION_50_4();
    v64(v63);
  }

  else
  {
    v65 = OUTLINED_FUNCTION_43_4();
    v98(v65);
  }

  sub_1979444C8(v16, v99, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_72_3();

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_5_5();
    sub_19794B170(v99, v95, v66);
    sub_197947A40(v0, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v16, &qword_1EAF499A0, &qword_197A920D8);
    v67 = OUTLINED_FUNCTION_75_4();
    v68(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_89_1();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_92_0(v69);
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_102();
    v70();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
    v72 = OUTLINED_FUNCTION_74_4(v71);
    v73 = OUTLINED_FUNCTION_87_1(v72, xmmword_197A88E50);
    *(v4 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v72;
    v72[2].n128_u64[0] = v73;
    v72[2].n128_u64[1] = v74;
    v75 = OUTLINED_FUNCTION_23_3(OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata);
    v76(v75);
    v77 = type metadata accessor for Session.Metadata(0);
    OUTLINED_FUNCTION_30_4(v77);
    OUTLINED_FUNCTION_73_3();
    (off_1F0C11F50)();
    v78 = OUTLINED_FUNCTION_45_3();
    (off_1F0C11F50)(v78);
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_17_5(v79);
    *(v1 + v80) = 0;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_13_5(v81);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2(v82);
    v83 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v96, v84, v85, v83);
    OUTLINED_FUNCTION_53_3();
    v86 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v86);
    *(v1 + 72) = v4;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v100, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v101, &qword_1EAF499A0, &qword_197A920D8);
    v87 = OUTLINED_FUNCTION_105_1();
    v88(v87);
    v89 = OUTLINED_FUNCTION_32_3();
    v90(v89);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  v91 = OUTLINED_FUNCTION_58_4();
  sub_197947A40(v91, v92, v93);
  sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

void CustomAssetConfiguration.init(instanceID:templateID:assetData:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v56 = v2;
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v57 = v8;
  v60 = type metadata accessor for CustomAssetConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  v13 = sub_197A877A8();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_5();
  v58 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v54 = v15;
  v55 = v1;
  v19 = *(v15 + 16);
  v59 = &v46 - v20;
  v52 = v19;
  v19();
  v21 = getpid();
  if (qword_1ED87DF08 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED8817D8;
  v71 = type metadata accessor for RunningBoardProvider(0);
  v72 = &off_1F0C0D3E0;
  v70[0] = v22;
  __swift_project_boxed_opaque_existential_1(v70, v71);

  sub_1979859AC(v21, &v63);
  v23 = v65;
  if (v65 == 1)
  {
    goto LABEL_4;
  }

  v50 = v13;
  v47 = v21;
  v49 = v5;
  v29 = v63;
  v5 = v64;
  v30 = v66;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  sub_197A878A8();
  sub_197A878A8();
  v48 = v30;
  v51 = v33;
  sub_1979CADF0(v29, v5, v23);
  if (v31)
  {
    v24 = v49;
    v63 = v7;
    v64 = v49;
    sub_197A878A8();
    OUTLINED_FUNCTION_94_0();
    v34 = OUTLINED_FUNCTION_76_3();
    v35 = v56;
    MEMORY[0x19A8EAC80](v34, v56);
    OUTLINED_FUNCTION_94_0();
    MEMORY[0x19A8EAC80](v48, v31);
    v26 = v35;

    v28 = v64;
    v51 = v63;
    v13 = v50;
    goto LABEL_8;
  }

  v5 = v49;
  LODWORD(v21) = v47;
  v13 = v50;
  if (!v51)
  {
LABEL_4:
    v63 = v7;
    v64 = v5;
    sub_197A878A8();
    OUTLINED_FUNCTION_94_0();
    v24 = v5;
    v25 = OUTLINED_FUNCTION_76_3();
    v26 = v56;
    MEMORY[0x19A8EAC80](v25, v56);
    OUTLINED_FUNCTION_94_0();
    LODWORD(v61) = v21;
    v27 = sub_197A88148();
    MEMORY[0x19A8EAC80](v27);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v63 = v7;
    v64 = v49;
    sub_197A878A8();
    v43 = v32;
    OUTLINED_FUNCTION_94_0();
    v24 = v5;
    v44 = OUTLINED_FUNCTION_76_3();
    v45 = v56;
    MEMORY[0x19A8EAC80](v44, v56);
    OUTLINED_FUNCTION_94_0();
    MEMORY[0x19A8EAC80](v43, v51);
    v26 = v45;
  }

  v28 = v64;
  v51 = v63;
LABEL_8:
  v36 = v58;
  v37 = v52;
  (v52)(v58, v59, v13);
  *v12 = v7;
  v12[1] = v24;
  v12[2] = v5;
  v12[3] = v26;
  (v37)(v12 + *(v60 + 24), v36, v13);
  v63 = v5;
  v64 = v26;
  v61 = 2037278052;
  v62 = 0xE400000000000000;
  sub_1979CAD9C();
  sub_197A878A8();
  if (OUTLINED_FUNCTION_90_1(&v61, MEMORY[0x1E69E6158]) & 1) != 0 || (v63 = v5, v64 = v26, v61 = 0x797465666173, v62 = 0xE600000000000000, (OUTLINED_FUNCTION_90_1(&v61, MEMORY[0x1E69E6158])))
  {

    v38 = *(v54 + 8);
    v38(v55, v13);
    v38(v58, v13);
    v38(v59, v13);
  }

  else
  {
    v63 = v5;
    v64 = v26;
    v61 = 0x656469727265766FLL;
    v62 = 0xE800000000000000;
    OUTLINED_FUNCTION_90_1(&v61, MEMORY[0x1E69E6158]);
    v39 = *(v54 + 8);
    v39(v55, v13);
    v39(v58, v13);
    v39(v59, v13);
  }

  v40 = v60;
  v41 = v12 + *(v60 + 28);
  *v41 = 0u;
  *(v41 + 1) = 0u;
  v41[32] = 1;
  v42 = (v12 + *(v40 + 32));
  *v42 = v51;
  v42[1] = v28;
  sub_19794B170(v12, v57, type metadata accessor for CustomAssetConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979CAD10()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_7(v1);
  OUTLINED_FUNCTION_112();

  return sub_19794BAB4(v3, v4, v5, v6, v7);
}

unint64_t sub_1979CAD9C()
{
  result = qword_1EAF499C0;
  if (!qword_1EAF499C0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EAF499C0);
  }

  return result;
}

uint64_t sub_1979CADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v3;
  *(v5 - 368) = v2;

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
}

uint64_t OUTLINED_FUNCTION_108_0@<X0>(uint64_t a2@<X8>)
{
  v7 = (v4 + a2);
  *(v5 - 496) = v2;
  *v7 = v2;
  v7[1] = v3;

  return sub_197A878A8();
}

uint64_t sub_1979CAE90()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DD88);
  v1 = __swift_project_value_buffer(v0, qword_1ED87DD88);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1979CAFA0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1979CB038()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  result = sub_1979CC05C(0, 0, v2, &unk_197A92398, v4);
  qword_1EAF499C8 = result;
  return result;
}

uint64_t sub_1979CB108(uint64_t a1)
{
  v1[8] = a1;
  v1[9] = type metadata accessor for InferenceError.Context(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = sub_197A87508();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_197A874C8();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v4 = sub_197A874A8();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v5 = sub_197A874E8();
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979CB3C8, 0, 0);
}

uint64_t sub_1979CB3C8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_197A87488();
  sub_197A874D8();
  sub_197A874B8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1979CB4BC;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEDC09B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1979CB4BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v4;
  *(v2 + 296) = v0;

  if (v0)
  {
    v5 = sub_1979CBEE8;
  }

  else
  {
    v5 = sub_1979CB5C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1979CB5C0()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 168);
    v4 = *(v1 + 16);
    while (v4 != v2)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v5 = *(v3 + 16);
      v5(*(v0 + 184), v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, *(v0 + 160));
      v6 = sub_197A874F8();
      if (*(v6 + 16) && (v7 = sub_197A407F0(0xD00000000000001BLL, 0x8000000197AA3510), (v8 & 1) != 0))
      {
        sub_197949604(*(v6 + 56) + 32 * v7, v0 + 16);
      }

      else
      {
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          if (*(v0 + 48) == 0xD000000000000031 && 0x8000000197AA3620 == *(v0 + 56))
          {

LABEL_38:

            v79 = *(v0 + 256);
            v80 = *(v0 + 272);
            v77 = *(v0 + 248);
            v78 = *(v0 + 264);
            v67 = *(v0 + 240);
            v69 = *(v0 + 192);
            v68 = *(v0 + 200);
            v75 = *(v0 + 176);
            v76 = *(v0 + 232);
            v70 = *(v0 + 160);
            v71 = *(*(v0 + 168) + 32);
            v71(v69);
            (v71)(v68, v69, v70);
            v5(v75, v68, v70);
            sub_197A87478();
            v72 = OUTLINED_FUNCTION_1();
            v73(v72);
            (*(v67 + 8))(v77, v76);
            (*(v78 + 8))(v80, v79);

            OUTLINED_FUNCTION_15();
            goto LABEL_39;
          }

          v10 = sub_197A88218();

          if (v10)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_197947900(v0 + 16, &qword_1EAF49120);
      }

      (*(v3 + 8))(*(v0 + 184), *(v0 + 160));
      ++v2;
    }

    if (qword_1ED87DD80 == -1)
    {
      goto LABEL_20;
    }

LABEL_43:
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
LABEL_20:
    v11 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v11, qword_1ED87DD88);
    v12 = sub_197A875E8();
    v13 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_65_3();
      _os_log_impl(v15, v16, v17, v18, v14, 2u);
      OUTLINED_FUNCTION_44();
    }

    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 88);

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_64_4();
    v25 = sub_197955EBC(v23, v24, protocol conformance descriptor for InferenceError);
    OUTLINED_FUNCTION_82_3(v25, v25);
    v81 = v26;
    v27 = sub_197A87898();
    sub_197A87258();
    OUTLINED_FUNCTION_41_4();
    sub_197947900(v19, &qword_1EAF48B20);
    OUTLINED_FUNCTION_41_4();
    v28 = OUTLINED_FUNCTION_100_0();
    sub_1979671F8(v28, v29, &qword_1EAF48B20, &qword_197A89620);
    *v22 = 0xD000000000000034;
    *(v22 + 8) = 0x8000000197AA3660;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0xE000000000000000;
    *(v22 + 32) = 0;
    *(v22 + 40) = v27;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    v30 = OUTLINED_FUNCTION_1();
    sub_1979671F8(v30, v31, &qword_1EAF48B20, &qword_197A89620);
    LODWORD(v21) = OUTLINED_FUNCTION_123_0(v21);
    sub_197947900(v20, &qword_1EAF48B20);
    sub_197947900(v19, &qword_1EAF48B20);
    v32 = *(v0 + 128);
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_41_4();
      if (OUTLINED_FUNCTION_123_0(v32) != 1)
      {
        sub_197947900(*(v0 + 128), &qword_1EAF48B20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      v55 = OUTLINED_FUNCTION_100_0();
      v56(v55);
      OUTLINED_FUNCTION_145_0();
    }

    v57 = *(v0 + 136);
    v58 = *(v0 + 88);
  }

  else
  {
    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    v34 = sub_197A875E8();
    v35 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      OUTLINED_FUNCTION_65_3();
      _os_log_impl(v37, v38, v39, v40, v36, 2u);
      OUTLINED_FUNCTION_44();
    }

    v42 = *(v0 + 112);
    v41 = *(v0 + 120);
    v43 = *(v0 + 96);
    v44 = *(v0 + 80);

    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_64_4();
    v47 = sub_197955EBC(v45, v46, protocol conformance descriptor for InferenceError);
    OUTLINED_FUNCTION_82_3(v47, v47);
    v81 = v48;
    v49 = sub_197A87898();
    sub_197A87258();
    OUTLINED_FUNCTION_41_4();
    sub_197947900(v41, &qword_1EAF48B20);
    OUTLINED_FUNCTION_41_4();
    v50 = OUTLINED_FUNCTION_100_0();
    sub_1979671F8(v50, v51, &qword_1EAF48B20, &qword_197A89620);
    *v44 = 0xD000000000000028;
    *(v44 + 8) = 0x8000000197AA35F0;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0xE000000000000000;
    *(v44 + 32) = 0;
    *(v44 + 40) = v49;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    v52 = OUTLINED_FUNCTION_1();
    sub_1979671F8(v52, v53, &qword_1EAF48B20, &qword_197A89620);
    LODWORD(v49) = OUTLINED_FUNCTION_123_0(v43);
    sub_197947900(v42, &qword_1EAF48B20);
    sub_197947900(v41, &qword_1EAF48B20);
    v54 = *(v0 + 96);
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_41_4();
      if (OUTLINED_FUNCTION_123_0(v54) != 1)
      {
        sub_197947900(*(v0 + 96), &qword_1EAF48B20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      v59 = OUTLINED_FUNCTION_100_0();
      v60(v59);
      OUTLINED_FUNCTION_145_0();
    }

    v57 = *(v0 + 104);
    v58 = *(v0 + 80);
  }

  sub_19798F508(v57, v58 + *(*(v0 + 72) + 40));
  sub_19794B1D0(v58, v81, type metadata accessor for InferenceError.Context);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v62 = *(v0 + 264);
  v61 = *(v0 + 272);
  v64 = *(v0 + 248);
  v63 = *(v0 + 256);
  OUTLINED_FUNCTION_113_2();
  (*(v65 + 8))(v64);
  (*(v62 + 8))(v61, v63);

  OUTLINED_FUNCTION_13();
LABEL_39:

  return v66();
}

uint64_t sub_1979CBEE8()
{
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_113_2();
  (*(v2 + 8))(v1);
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_1979CC05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1979671F8(a3, v21 - v9, &qword_1EAF48AB0, &unk_197A89150);
  v11 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v10, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_197A87B58();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a2;
      v17 = sub_197A879A8() + 32;
      sub_197A87468();

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_197947900(a3, &qword_1EAF48AB0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_197947900(a3, &qword_1EAF48AB0);
  sub_197A87468();
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1979CC2F8()
{
  OUTLINED_FUNCTION_131_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v6, v7, &qword_1EAF48AB0, &unk_197A89150);
  v8 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v1, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0();
    (*(v10 + 8))(v1, v8);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(v3, &qword_1EAF48AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  v12 = swift_task_create();

  sub_197947900(v3, &qword_1EAF48AB0);

  return v12;
}

uint64_t sub_1979CC584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v15, v16, &qword_1EAF48AB0, &unk_197A89150);
  v17 = sub_197A87C08();
  OUTLINED_FUNCTION_123_0(v7);
  OUTLINED_FUNCTION_63_2();

  if (&qword_1EAF48AB0 == 1)
  {
    sub_197947900(v7, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0();
    (*(v18 + 8))(v7, v17);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(a3, &qword_1EAF48AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v20 = swift_task_create();

  sub_197947900(a3, &qword_1EAF48AB0);

  return v20;
}

uint64_t sub_1979CC804()
{
  OUTLINED_FUNCTION_131_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_56_3();
  sub_1979671F8(v6, v7, &qword_1EAF48AB0, &unk_197A89150);
  v8 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947900(v1, &qword_1EAF48AB0);
  }

  else
  {
    sub_197A87BF8();
    OUTLINED_FUNCTION_36_0();
    (*(v10 + 8))(v1, v8);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947900(v3, &qword_1EAF48AB0);
    return OUTLINED_FUNCTION_151();
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();

  v12 = OUTLINED_FUNCTION_151();

  sub_197947900(v3, &qword_1EAF48AB0);

  return v12;
}

uint64_t static InferenceProviderXPCSender.builtInInferenceProviderExtensionIdentityCache.getter()
{
  if (qword_1EAF48938 != -1)
  {
    swift_once();
  }
}

uint64_t InferenceProviderXPCSender.__allocating_init(builtInProvider:session:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  InferenceProviderXPCSender.init(builtInProvider:session:)(v3, a2);
  return v3;
}

uint64_t InferenceProviderXPCSender.init(builtInProvider:session:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v4);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  swift_defaultActor_initialize();
  sub_197947C44(a2, v15);
  v8 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_1979671F8(v15, v13, &qword_1EAF499D0, &qword_197A92130);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = v13[1];
  *(v9 + 32) = v13[0];
  *(v9 + 48) = v10;
  *(v9 + 64) = v14;
  v11 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_197947900(v15, &qword_1EAF499D0);
  *(v2 + 112) = v11;
  return v2;
}

uint64_t sub_1979CCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a4;
  v4[12] = type metadata accessor for ModelManagerError(0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for InferenceProviderXPCRequest(0);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979CCD5C, 0, 0);
}

uint64_t sub_1979CCD5C()
{
  OUTLINED_FUNCTION_49_0();
  v19 = v0;
  sub_197947C44(v0[11], (v0 + 2));
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v2 = sub_197A87608();
  v0[20] = __swift_project_value_buffer(v2, qword_1ED87DD88);
  v3 = sub_197A875E8();
  v4 = sub_197A87D38();
  if (OUTLINED_FUNCTION_65(v4))
  {
    v5 = OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_93_0();
    v18 = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_136_0();
    *(v5 + 4) = sub_197948834(v7, 0xE700000000000000, &v18);
    OUTLINED_FUNCTION_65_3();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_44();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_9_4();
  v12 = swift_task_alloc();
  v0[21] = v12;
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v13, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v12 = v14;
  v12[1] = sub_1979CCF3C;
  v20 = v15;
  OUTLINED_FUNCTION_117();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979CCF3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_1979CD450;
  }

  else
  {
    v7 = sub_1979CD038;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1979CD038()
{
  v48 = v0;
  sub_1979671F8(v0[17], v0[16], &qword_1EAF499F8, &unk_197A92360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_135_0();
    v1 = v0[17];
    v2 = v0[13];
    v3 = v0[14];
    sub_19794B1D0(v0[16], v2, type metadata accessor for ModelManagerError);
    sub_197967254(v2, v3, type metadata accessor for ModelManagerError);
    OUTLINED_FUNCTION_1_8();
    v6 = sub_197955EBC(v4, v5, protocol conformance descriptor for ModelManagerError);
    swift_willThrowTypedImpl();
    sub_19796F6D0(v2, type metadata accessor for ModelManagerError);
    v7 = OUTLINED_FUNCTION_1();
    v9 = OUTLINED_FUNCTION_88(v7, v8);
    sub_19794B1D0(v3, v10, type metadata accessor for ModelManagerError);
    sub_197947900(v1, &qword_1EAF499F8);
    MEMORY[0x19A8EBBD0](v9);
    v11 = sub_197A875E8();
    sub_197A87D58();

    if (OUTLINED_FUNCTION_96_1())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_50_1();
      v12 = OUTLINED_FUNCTION_61_0();
      v47[0] = v12;
      *type metadata accessor for ModelManagerError = 136315394;
      v13 = OUTLINED_FUNCTION_138_0();
      v16 = sub_197948834(v13, v14, v15);
      OUTLINED_FUNCTION_148(v16);
      *(&loc_1979436F8 + 2) = _swift_stdlib_bridgeErrorToNSError();
      *v6 = *(&loc_1979436F8 + 2);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      sub_197947900(v6, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    v22 = v0[19];
    v45 = v0[14];
    v46 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v23 = OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_128_0(v23, v24, v25, v26, v27, v28, v29, v30, v45, v46, v47[0], v47[1]);
    OUTLINED_FUNCTION_154();
    v31 = OUTLINED_FUNCTION_138_0();
    MEMORY[0x19A8EAC80](v31);
    OUTLINED_FUNCTION_91_2();
    v0[9] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    sub_197A87EA8();
    v32 = OUTLINED_FUNCTION_77_4();
    v33(v32);

    swift_willThrow();
    OUTLINED_FUNCTION_18_4();
    sub_19796F6D0(v22, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_107_1();
  }

  else
  {
    v36 = sub_197A875E8();
    v37 = sub_197A87D38();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[19];
    v40 = v0[17];
    if (v38)
    {
      v41 = OUTLINED_FUNCTION_56();
      v47[0] = OUTLINED_FUNCTION_93_0();
      *v41 = 136315138;
      v42 = OUTLINED_FUNCTION_136_0();
      *(v41 + 4) = sub_197948834(v42, 0xE700000000000000, v47);
      OUTLINED_FUNCTION_115_1(&dword_197941000, v36, v37, "Configure request for: %s returned");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    sub_197947900(v40, &qword_1EAF499F8);
    OUTLINED_FUNCTION_18_4();
    sub_19796F6D0(v39, v43);
    sub_197947C44((v0 + 2), v0[10]);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_107_1();
  }

  return v35();
}

uint64_t sub_1979CD450()
{
  OUTLINED_FUNCTION_135_0();
  v3 = v0[22];
  MEMORY[0x19A8EBBD0](v3);
  v4 = sub_197A875E8();
  sub_197A87D58();

  if (OUTLINED_FUNCTION_96_1())
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_50_1();
    v32 = OUTLINED_FUNCTION_61_0();
    *v1 = 136315394;
    v5 = OUTLINED_FUNCTION_138_0();
    v8 = sub_197948834(v5, v6, v7);
    OUTLINED_FUNCTION_148(v8);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v9;
    *v2 = v9;
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    sub_197947900(v2, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = v0[19];
  v30 = v0[14];
  v31 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_128_0(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33);
  OUTLINED_FUNCTION_154();
  v24 = OUTLINED_FUNCTION_138_0();
  MEMORY[0x19A8EAC80](v24);
  OUTLINED_FUNCTION_91_2();
  v0[9] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  sub_197A87EA8();
  v25 = OUTLINED_FUNCTION_77_4();
  v26(v25);

  swift_willThrow();
  OUTLINED_FUNCTION_18_4();
  sub_19796F6D0(v15, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_107_1();

  return v28();
}

uint64_t sub_1979CD684()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[10];
  OUTLINED_FUNCTION_153_0();
  v0[11] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[12] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v2 = v0;
  v2[1] = sub_1979CD770;
  v3 = OUTLINED_FUNCTION_132_0();

  return MEMORY[0x1EEE6DA10](v3);
}

uint64_t sub_1979CD770()
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
    v7 = *(v3 + 80);

    v8 = sub_1979CD948;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 80);
    v8 = sub_1979CD894;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1979CD894()
{
  OUTLINED_FUNCTION_18();

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(0x6164696C61766E49, 0xEB00000000646574, v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979CD98C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  v3 = *v2;
  v4 = *(v2 + 2);
  OUTLINED_FUNCTION_17(&unk_197A92158);
  v9 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v6;
  *v6 = v7;
  v6[1] = sub_1979CDA40;

  return v9(v1 + 40, v3, v4);
}

uint64_t sub_1979CDA40()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    v9 = sub_1979CDB6C;
  }

  else
  {
    v9 = sub_1979CDB50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_1979CDB88()
{
  OUTLINED_FUNCTION_9();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(0);
  OUTLINED_FUNCTION_28(v3);
  v1[6] = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CDC00()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_69_3();
  sub_197967254(v1, v2, v3);
  OUTLINED_FUNCTION_17(&unk_197A92168);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v5;
  *v5 = v6;
  v5[1] = sub_1979CDCAC;
  v7 = *(v0 + 48);

  return v9(v0 + 16, v7);
}

uint64_t sub_1979CDCAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CDDE8()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1979CDE54()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979CDEB0()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979CDF0C()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.EndOfStreamNotification(v2);
  OUTLINED_FUNCTION_28(v3);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v4);
  v0[5] = OUTLINED_FUNCTION_78_0();
  v5 = type metadata accessor for RequestKey(0);
  v0[6] = v5;
  OUTLINED_FUNCTION_28(v5);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1979CDFFC()
{
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v2 = v0[10];
  v3 = v0[2];
  v4 = sub_197A87608();
  v5 = __swift_project_value_buffer(v4, qword_1ED87DD88);
  v0[11] = v5;
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v3, v2, v6);
  v7 = OUTLINED_FUNCTION_100();
  sub_197967254(v7, v8, v1);
  v9 = v5;
  v10 = sub_197A875E8();
  v11 = sub_197A87D78();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_149();
    v34 = OUTLINED_FUNCTION_93_0();
    *v14 = 136315394;
    v15 = OUTLINED_FUNCTION_140();
    sub_1979671F8(v15, v16, v17, v18);
    v19 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v21 = v20;
    sub_197947900(v9, &qword_1EAF49128);
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v13, v22);
    v23 = sub_197948834(v19, v21, &v34);

    OUTLINED_FUNCTION_92_1();
    *(v14 + 14) = v23;
    OUTLINED_FUNCTION_147_0(&dword_197941000, v24, v25, "Sending InferenceProvider EndOfStream message for %s, subrequest %u");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    sub_19796F6D0(v0[9], type metadata accessor for RequestKey);

    v26 = OUTLINED_FUNCTION_140();
    sub_19796F6D0(v26, v27);
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v28, v29, v30);
  OUTLINED_FUNCTION_17(&unk_197A921A0);
  v31 = swift_task_alloc();
  v0[12] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_112_1(v31);
  OUTLINED_FUNCTION_142();

  __asm { BR              X1 }
}

uint64_t sub_1979CE218()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1979CE39C()
{
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[2];
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v4, v5, v6);
  sub_197967254(v4, v3, v1);
  MEMORY[0x19A8EBBD0](v2);
  v7 = sub_197A875E8();
  v8 = sub_197A87D58();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    OUTLINED_FUNCTION_150();
    v35 = OUTLINED_FUNCTION_50_1();
    v36 = OUTLINED_FUNCTION_93_0();
    *v4 = 136315650;
    v13 = OUTLINED_FUNCTION_134_1();
    sub_1979671F8(v13, v14, &qword_1EAF49128, &unk_197A8CE70);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v12, v15);
    v16 = OUTLINED_FUNCTION_100();
    v19 = sub_197948834(v16, v17, v18);

    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_118_0();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 20) = v20;
    *v35 = v20;
    OUTLINED_FUNCTION_116_1(&dword_197941000, v21, v22, "Error occurred while sending EndOfStream message for %s, subrequest %u: %@", v23, v24, v25, v26, v32, v33, v34);
    sub_197947900(v35, &qword_1EAF48A90);
    OUTLINED_FUNCTION_44();
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v11, v27);

    v28 = OUTLINED_FUNCTION_134_1();
    sub_19796F6D0(v28, v29);
  }

  OUTLINED_FUNCTION_13();

  return v30();
}

uint64_t sub_1979CE5BC()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.ClientTerminatedNotification(v2);
  OUTLINED_FUNCTION_28(v3);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v4);
  v0[5] = OUTLINED_FUNCTION_78_0();
  v5 = type metadata accessor for RequestKey(0);
  v0[6] = v5;
  OUTLINED_FUNCTION_28(v5);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1979CE6AC()
{
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v2 = v0[10];
  v3 = v0[2];
  v4 = sub_197A87608();
  v5 = __swift_project_value_buffer(v4, qword_1ED87DD88);
  v0[11] = v5;
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v3, v2, v6);
  v7 = OUTLINED_FUNCTION_100();
  sub_197967254(v7, v8, v1);
  v9 = v5;
  v10 = sub_197A875E8();
  v11 = sub_197A87D78();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_149();
    v34 = OUTLINED_FUNCTION_93_0();
    *v14 = 136315394;
    v15 = OUTLINED_FUNCTION_140();
    sub_1979671F8(v15, v16, v17, v18);
    v19 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v21 = v20;
    sub_197947900(v9, &qword_1EAF49128);
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v13, v22);
    v23 = sub_197948834(v19, v21, &v34);

    OUTLINED_FUNCTION_92_1();
    *(v14 + 14) = v23;
    OUTLINED_FUNCTION_147_0(&dword_197941000, v24, v25, "Sending InferenceProvider ClientTerminated message for%s, subrequest %u");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    sub_19796F6D0(v0[9], type metadata accessor for RequestKey);

    v26 = OUTLINED_FUNCTION_140();
    sub_19796F6D0(v26, v27);
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v28, v29, v30);
  OUTLINED_FUNCTION_17(&unk_197A921B8);
  v31 = swift_task_alloc();
  v0[12] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_112_1(v31);
  OUTLINED_FUNCTION_142();

  __asm { BR              X1 }
}

uint64_t sub_1979CE8C8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_112();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1979CEA4C()
{
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[2];
  OUTLINED_FUNCTION_10_8();
  sub_197967254(v4, v5, v6);
  sub_197967254(v4, v3, v1);
  MEMORY[0x19A8EBBD0](v2);
  v7 = sub_197A875E8();
  v8 = sub_197A87D58();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    OUTLINED_FUNCTION_150();
    v35 = OUTLINED_FUNCTION_50_1();
    v36 = OUTLINED_FUNCTION_93_0();
    *v4 = 136315650;
    v13 = OUTLINED_FUNCTION_134_1();
    sub_1979671F8(v13, v14, &qword_1EAF49128, &unk_197A8CE70);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v12, v15);
    v16 = OUTLINED_FUNCTION_100();
    v19 = sub_197948834(v16, v17, v18);

    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_118_0();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 20) = v20;
    *v35 = v20;
    OUTLINED_FUNCTION_116_1(&dword_197941000, v21, v22, "Error occurred while sending ClientTerminated message for %s, subrequest %u: %@", v23, v24, v25, v26, v32, v33, v34);
    sub_197947900(v35, &qword_1EAF48A90);
    OUTLINED_FUNCTION_44();
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_6_6();
    sub_19796F6D0(v11, v27);

    v28 = OUTLINED_FUNCTION_134_1();
    sub_19796F6D0(v28, v29);
  }

  OUTLINED_FUNCTION_13();

  return v30();
}

uint64_t sub_1979CEC6C()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v1[5] = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979CECE8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v1, v2, v3);
  OUTLINED_FUNCTION_17(&unk_197A921C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v4;
  *v4 = v5;
  v4[1] = sub_1979CED8C;
  v6 = OUTLINED_FUNCTION_104_1();

  return v7(v6);
}

uint64_t sub_1979CED8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 40), type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979CEECC()
{
  OUTLINED_FUNCTION_9();
  if (sub_1979CF328())
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_137_1(v1);

    return sub_1979CDF0C();
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v3();
  }
}

uint64_t sub_1979CEFA0()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1979CF0A8()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_137_1(v1);

  return sub_1979CDF0C();
}

uint64_t sub_1979CF12C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979CF224()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_1_8();
  v5 = sub_197955EBC(v3, v4, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_88(v2, v5);
  v7 = v6;
  MEMORY[0x19A8EBBD0](v1);
  ModelManagerError.init(wrapping:)(v1, v7);
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v8();
}

BOOL sub_1979CF328()
{
  OUTLINED_FUNCTION_114_0();
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1979671F8(v3, &v16 - v10, v2, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1 || (sub_1979671F8(v11, v9, v2, v0), v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348), , LODWORD(v13) = v9[*(v13 + 64)], sub_19796F6D0(v9, type metadata accessor for ClientData), v13 == 1))
    {
      v14 = 1;
    }
  }

  sub_197947900(v11, v2);
  return v14;
}

uint64_t sub_1979CF470()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_28(v6);
  *(v1 + 56) = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979CF4F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);
  OUTLINED_FUNCTION_69_3();
  sub_197967254(v6, &v1[v5], v7);
  OUTLINED_FUNCTION_70_3();
  sub_197967254(v3, &v1[v8], v9);
  v10 = *(type metadata accessor for InferenceProviderRequestConfiguration(0) + 28);
  v11 = *(v2 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v12 + 16))(&v1[v11], v3 + v10);
  *v1 = v4;
  OUTLINED_FUNCTION_17(&unk_197A921D8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 64) = v13;
  *v13 = v14;
  v13[1] = sub_19797B7D4;
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_112();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1979CF60C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979CF668()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_28(v6);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979CF6EC()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  sub_197967254(v0[4], &v1[*(v2 + 20)], type metadata accessor for RequestMetadata);
  OUTLINED_FUNCTION_70_3();
  sub_197967254(v3, &v1[v5], v6);
  v7 = *(type metadata accessor for InferenceProviderRequestConfiguration(0) + 28);
  v8 = *(v2 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v9 + 16))(&v1[v8], v3 + v7);
  *v1 = v4;
  sub_197A878A8();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[9] = v10;
  *v10 = v11;
  v10[1] = sub_1979CF828;
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_112();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1979CF828()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1979CF97C, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

uint64_t sub_1979CF97C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979CF9D8()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CFA4C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_98_1();
  sub_1979671F8(v0, v1, &qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_17(&unk_197A921F8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_139(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_38_3(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_1979CFAEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CFC28()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CFC9C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v0, v1, v2);
  OUTLINED_FUNCTION_17(&unk_197A92208);
  v16 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_139(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_38_3(v5, v7, v8, v9, v10, v11, v12, v13, v16);

  return v14();
}

uint64_t sub_1979CFD30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979CFE6C()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_87_2(v3);
  v5 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v4);
  v0[4] = v5;
  OUTLINED_FUNCTION_28(v5);
  v6 = OUTLINED_FUNCTION_78_0();
  v7 = *v2;
  v0[5] = v6;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979CFEEC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v4, v1, v5);
  *(v1 + *(v3 + 20)) = v2;
  sub_1979D559C(v2);
  OUTLINED_FUNCTION_17(&unk_197A92218);
  v9 = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1979CFFB8;

  return v9();
}

uint64_t sub_1979CFFB8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D00F4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1979D014C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D01A8()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D021C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_7_6();
  sub_197967254(v0, v1, v2);
  OUTLINED_FUNCTION_17(&unk_197A92228);
  v16 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_139(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_38_3(v5, v7, v8, v9, v10, v11, v12, v13, v16);

  return v14();
}

uint64_t sub_1979D02B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  v3 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_52_5();
  v6 = *(v0 + 24);
  if (v1)
  {

    OUTLINED_FUNCTION_124_1();
    v7 = sub_1979D6DE8;
  }

  else
  {
    sub_19796F6D0(*(v5 + 32), type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest);
    v7 = sub_1979D0418;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1979D0418()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D0470(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 176) = a3;
  *(v4 + 64) = a1;
  *(v4 + 88) = type metadata accessor for ModelManagerError(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = type metadata accessor for InferenceProviderXPCRequest(0);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
  *(v4 + 136) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v4 + 144) = v5;
  *v5 = v4;
  v5[1] = sub_1979D05B8;

  return sub_197967424(v4 + 16);
}

uint64_t sub_1979D05B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D06CC()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 176);
  v4 = *(v0 + 72);
  OUTLINED_FUNCTION_9_4();
  *v1 = v4;
  *(v1 + 8) = v3;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v5);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v6, v2, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6B88();
  OUTLINED_FUNCTION_57_2();
  *v1 = v7;
  OUTLINED_FUNCTION_2_9(v8);

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D07D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9AD4();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A30);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  v20 = sub_197955EBC(v18, v19, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_28_3(v20);
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v21, v22);
  sub_197947900(v17, &qword_1EAF49A30);
  OUTLINED_FUNCTION_81_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5(v23))
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1979D0BFC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D0D40;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D0D40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D0E54()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D69DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D0F44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9BE8();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A10);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  v20 = sub_197955EBC(v18, v19, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_28_3(v20);
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v21, v22);
  sub_197947900(v17, &qword_1EAF49A10);
  OUTLINED_FUNCTION_81_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5(v23))
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}