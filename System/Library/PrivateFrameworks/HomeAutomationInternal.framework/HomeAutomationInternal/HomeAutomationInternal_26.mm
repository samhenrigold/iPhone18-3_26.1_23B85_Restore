uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B0F0EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationSemantic.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

HomeAutomationInternal::ConfirmationSemantic_optional __swiftcall ConfirmationSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B0F1E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252B0F2C0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B0F34C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252B0F3C4(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B0F458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252B0F4A4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (*a2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (v2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252B0F594(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252B0F684(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (*a2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (v2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252B0F820(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B0FAEC();
  v5 = sub_252B0FB40();
  v6 = sub_252B0FB94();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal20ConfirmationSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252B0F970()
{
  result = qword_27F543370;
  if (!qword_27F543370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F543370);
  }

  return result;
}

unint64_t sub_252B0F9C8()
{
  result = qword_27F543378;
  if (!qword_27F543378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F543378);
  }

  return result;
}

unint64_t sub_252B0FA20()
{
  result = qword_27F543380;
  if (!qword_27F543380)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543388, &qword_252E4B6D0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F543380);
  }

  return result;
}

unint64_t sub_252B0FA88()
{
  result = qword_27F543390;
  if (!qword_27F543390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F543390);
  }

  return result;
}

unint64_t sub_252B0FAEC()
{
  result = qword_27F543398;
  if (!qword_27F543398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F543398);
  }

  return result;
}

unint64_t sub_252B0FB40()
{
  result = qword_27F5433A0;
  if (!qword_27F5433A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F5433A0);
  }

  return result;
}

unint64_t sub_252B0FB94()
{
  result = qword_27F5433A8;
  if (!qword_27F5433A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F5433A8);
  }

  return result;
}

char *sub_252B0FC00(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = *(v1 + 2);

  if (v2)
  {
    v39 = v2;
    v3 = 0;
    v4 = v1 + 32;
    v40 = v1 + 32;
    do
    {
      memcpy(__dst, &v4[504 * v3], 0x1F8uLL);
      if (*(__dst[16] + 16))
      {
        v5 = v1;
        v6 = __dst[47];
        v7 = *(__dst[47] + 16);
        sub_2529353AC(__dst, v47);
        v8 = (v6 + 32);

        while (2)
        {
          if (v7)
          {
            v9 = "noMatchingEntities";
            switch(*v8)
            {
              case 6:
                goto LABEL_8;
              case 0xA:
                v9 = "Home";
LABEL_8:
                if (0x8000000252E67960 != (v9 | 0x8000000000000000))
                {
                  goto LABEL_9;
                }

                goto LABEL_13;
              default:
LABEL_9:
                v10 = sub_252E37DB4();

                ++v8;
                --v7;
                if ((v10 & 1) == 0)
                {
                  continue;
                }

LABEL_13:
                sub_252935408(__dst);

                v11 = 0;
                v1 = v5;
                v12 = v2;
                v13 = v40;
                break;
            }

            while (1)
            {
              if (v11 == v2)
              {
                goto LABEL_80;
              }

              memcpy(v47, &v13[504 * v11], sizeof(v47));
              if (*(v47[16] + 16))
              {
                v14 = v47[47];
                v15 = *(v47[47] + 16);
                sub_2529353AC(v47, v46);
                v16 = (v14 + 32);

                while (2)
                {
                  if (v15)
                  {
                    switch(*v16)
                    {
                      case 7:

                        break;
                      default:
                        v17 = sub_252E37DB4();

                        ++v16;
                        --v15;
                        if ((v17 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }

                    sub_252935408(v47);

                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_81;
                    }

LABEL_24:
                    v18 = sub_252E36AD4();
                    __swift_project_value_buffer(v18, qword_27F544E08);
                    sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E7BDF0, 0xD00000000000009ELL, 0x8000000252E7BE40);
                    v19 = 0;
                    v20 = v40;
                    do
                    {
                      result = memcpy(v46, &v20[504 * v19], sizeof(v46));
                      if (*(v46[16] + 16))
                      {
                        v22 = v46[47];
                        v23 = *(v46[47] + 16);
                        sub_2529353AC(v46, v45);
                        v24 = (v22 + 32);

                        while (2)
                        {
                          if (v23)
                          {
                            switch(*v24)
                            {
                              case 7:

                                break;
                              default:
                                v25 = sub_252E37DB4();

                                ++v24;
                                --v23;
                                if ((v25 & 1) == 0)
                                {
                                  continue;
                                }

                                break;
                            }

                            sub_252935408(v46);

                            v12 = v19 + 1;
                            if (__OFADD__(v19, 1))
                            {
                              goto LABEL_85;
                            }

                            if (v12 == v39)
                            {
                              goto LABEL_35;
                            }

                            if ((v12 & 0x8000000000000000) == 0)
                            {
                              v29 = (v1 + 16);
                              while (v12 < *(v1 + 2))
                              {
                                v30 = v1 + 32;
                                v31 = &v1[504 * v12 + 32];
                                result = memcpy(v45, v31, sizeof(v45));
                                if (*(v45[16] + 16))
                                {
                                  v39 = &v1[504 * v12 + 32];
                                  v40 = v1;
                                  v32 = v45[47];
                                  v33 = *(v45[47] + 16);
                                  sub_2529353AC(v45, __src);
                                  v34 = (v32 + 32);

                                  while (2)
                                  {
                                    if (v33)
                                    {
                                      switch(*v34)
                                      {
                                        case 7:

                                          break;
                                        default:
                                          v35 = sub_252E37DB4();

                                          ++v34;
                                          --v33;
                                          if ((v35 & 1) == 0)
                                          {
                                            continue;
                                          }

                                          break;
                                      }

                                      sub_252935408(v45);

                                      v1 = v40;
                                      v38 = __OFADD__(v12++, 1);
                                      if (v38)
                                      {
                                        goto LABEL_73;
                                      }

                                      goto LABEL_68;
                                    }

                                    break;
                                  }

                                  sub_252935408(v45);

                                  v1 = v40;
                                  v31 = v39;
                                }

                                if (v19 != v12)
                                {
                                  if (v19 < 0)
                                  {
                                    goto LABEL_76;
                                  }

                                  v36 = *v29;
                                  if (v19 >= v36)
                                  {
                                    goto LABEL_77;
                                  }

                                  memcpy(v43, &v30[504 * v19], sizeof(v43));
                                  if (v12 >= v36)
                                  {
                                    goto LABEL_78;
                                  }

                                  memcpy(__src, v31, sizeof(__src));
                                  sub_2529353AC(v43, v42);
                                  sub_2529353AC(__src, v42);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v1 = sub_252D57AC0(v1);
                                  }

                                  v37 = v1 + 32;
                                  memcpy(v41, &v1[504 * v19 + 32], sizeof(v41));
                                  memcpy(&v1[504 * v19 + 32], __src, 0x1F8uLL);
                                  sub_252935408(v41);
                                  if (v12 >= *(v1 + 2))
                                  {
                                    goto LABEL_79;
                                  }

                                  memcpy(v42, &v37[504 * v12], sizeof(v42));
                                  memcpy(&v37[504 * v12], v43, 0x1F8uLL);
                                  result = sub_252935408(v42);
                                }

                                v38 = __OFADD__(v19++, 1);
                                if (v38)
                                {
                                  goto LABEL_74;
                                }

                                v38 = __OFADD__(v12++, 1);
                                if (v38)
                                {
                                  goto LABEL_73;
                                }

LABEL_68:
                                if (v12 == *(v1 + 2))
                                {
                                  goto LABEL_35;
                                }

                                v29 = (v1 + 16);
                              }

                              __break(1u);
LABEL_73:
                              __break(1u);
LABEL_74:
                              __break(1u);
                            }

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
LABEL_81:
                            swift_once();
                            goto LABEL_24;
                          }

                          break;
                        }

                        sub_252935408(v46);

                        v20 = v40;
                      }

                      ++v19;
                    }

                    while (v19 != v12);
                    v19 = v12;
LABEL_35:
                    v26 = *(v1 + 2);
                    if (v19 > v26)
                    {
                      __break(1u);
                    }

                    else if ((v19 & 0x8000000000000000) == 0)
                    {
                      if (!__OFADD__(v26, v19 - v26))
                      {
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v46[0] = v1;
                        if (!isUniquelyReferenced_nonNull_native || v19 > *(v1 + 3) >> 1)
                        {
                          if (v26 <= v19)
                          {
                            v28 = v19;
                          }

                          else
                          {
                            v28 = v26;
                          }

                          v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v28, 1, v1);
                          v46[0] = v1;
                        }

                        sub_252B7B280(v19, v26, 0);
                        return v1;
                      }

LABEL_84:
                      __break(1u);
LABEL_85:
                      __break(1u);
                      return result;
                    }

                    __break(1u);
                    goto LABEL_84;
                  }

                  break;
                }

                sub_252935408(v47);

                v13 = v40;
              }

              if (++v11 == v2)
              {
                return v1;
              }
            }
          }

          break;
        }

        sub_252935408(__dst);

        v1 = v5;
        v4 = v40;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return v1;
}

unint64_t sub_252B107EC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_65;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v38 = isUniquelyReferenced_nonNull_bridgeObject;
    v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_27F542000;
    v5 = MEMORY[0x277D84F90];
    v39 = v1;
    while (1)
    {
      if (v42)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v38);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v3 >= *(v41 + 16))
        {
          goto LABEL_59;
        }

        v6 = *(v40 + 8 * v3);

        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
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
          v37 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v37;
          goto LABEL_3;
        }
      }

      if (qword_27F53F320 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v8 = v4[425];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v10 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v11 = v4[425];
        v4[425] = v10;
        v9 = v10;
      }

      sub_252E37614();
      v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v13 = *&v9[v12];
      if (v13 >> 62)
      {
        v20 = sub_252E378C4();

        if (!v20)
        {
LABEL_27:

          v19 = v2;
          goto LABEL_28;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v14)
        {
          goto LABEL_27;
        }
      }

      sub_252E37604();
      v15 = v4[425];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v18 = v4[425];
        v4[425] = v17;
        v16 = v17;
      }

      sub_252E37614();
      v19 = sub_252AC0F68(v6);

      if (!v19)
      {
        v19 = v2;
      }

LABEL_28:
      v21 = v19 >> 62;
      if (v19 >> 62)
      {
        v22 = sub_252E378C4();
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v22;
      v7 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v22);
      v24 = isUniquelyReferenced_nonNull_bridgeObject + v22;
      if (v7)
      {
        goto LABEL_60;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v23)
        {
          goto LABEL_40;
        }

LABEL_39:
        sub_252E378C4();
        goto LABEL_40;
      }

      if (v23)
      {
        goto LABEL_39;
      }

      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v24 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = v5;
        goto LABEL_41;
      }

LABEL_40:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v43 = isUniquelyReferenced_nonNull_bridgeObject;
      v25 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_41:
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v21)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v28 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_45:
          if (((v27 >> 1) - v26) < v45)
          {
            goto LABEL_62;
          }

          v29 = v25 + 8 * v26 + 32;
          if (v21)
          {
            if (v28 < 1)
            {
              goto LABEL_64;
            }

            sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
            for (i = 0; i != v28; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
              v31 = sub_2529FBD80(v44, i, v19);
              v33 = *v32;
              (v31)(v44, 0);
              *(v29 + 8 * i) = v33;
            }
          }

          else
          {
            type metadata accessor for HomeAttributeTargetArea();
            swift_arrayInitWithCopy();
          }

          v1 = v39;
          v2 = MEMORY[0x277D84F90];
          v4 = &qword_27F542000;
          v5 = v43;
          if (v45 >= 1)
          {
            v34 = *(v25 + 16);
            v7 = __OFADD__(v34, v45);
            v35 = v34 + v45;
            if (v7)
            {
              goto LABEL_63;
            }

            *(v25 + 16) = v35;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_45;
        }
      }

      v4 = &qword_27F542000;
      v5 = v43;
      if (v45 > 0)
      {
        goto LABEL_61;
      }

LABEL_6:
      if (v3 == v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252B10C8C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_65;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v38 = isUniquelyReferenced_nonNull_bridgeObject;
    v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &unk_27F542000;
    v5 = MEMORY[0x277D84F90];
    v39 = v1;
    while (1)
    {
      if (v42)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v38);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v3 >= *(v41 + 16))
        {
          goto LABEL_59;
        }

        v6 = *(v40 + 8 * v3);

        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
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
          v37 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v37;
          goto LABEL_3;
        }
      }

      if (qword_27F53F320 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v8 = v4[425];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v10 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v11 = v4[425];
        v4[425] = v10;
        v9 = v10;
      }

      sub_252E37614();
      v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v13 = *&v9[v12];
      if (v13 >> 62)
      {
        v20 = sub_252E378C4();

        if (!v20)
        {
LABEL_27:

          v19 = v2;
          goto LABEL_28;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v14)
        {
          goto LABEL_27;
        }
      }

      sub_252E37604();
      v15 = v4[425];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
        v18 = v4[425];
        v4[425] = v17;
        v16 = v17;
      }

      sub_252E37614();
      v19 = sub_252AC11C8(v6);

      if (!v19)
      {
        v19 = v2;
      }

LABEL_28:
      v21 = v19 >> 62;
      if (v19 >> 62)
      {
        v22 = sub_252E378C4();
      }

      else
      {
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v22;
      v7 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v22);
      v24 = isUniquelyReferenced_nonNull_bridgeObject + v22;
      if (v7)
      {
        goto LABEL_60;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v23)
        {
          goto LABEL_40;
        }

LABEL_39:
        sub_252E378C4();
        goto LABEL_40;
      }

      if (v23)
      {
        goto LABEL_39;
      }

      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v24 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = v5;
        goto LABEL_41;
      }

LABEL_40:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v43 = isUniquelyReferenced_nonNull_bridgeObject;
      v25 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_41:
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v21)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v28 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_45:
          if (((v27 >> 1) - v26) < v45)
          {
            goto LABEL_62;
          }

          v29 = v25 + 8 * v26 + 32;
          if (v21)
          {
            if (v28 < 1)
            {
              goto LABEL_64;
            }

            sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
            for (i = 0; i != v28; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
              v31 = sub_2529FBD80(v44, i, v19);
              v33 = *v32;
              (v31)(v44, 0);
              *(v29 + 8 * i) = v33;
            }
          }

          else
          {
            type metadata accessor for HomeAttributeTargetMap();
            swift_arrayInitWithCopy();
          }

          v1 = v39;
          v2 = MEMORY[0x277D84F90];
          v4 = &unk_27F542000;
          v5 = v43;
          if (v45 >= 1)
          {
            v34 = *(v25 + 16);
            v7 = __OFADD__(v34, v45);
            v35 = v34 + v45;
            if (v7)
            {
              goto LABEL_63;
            }

            *(v25 + 16) = v35;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_45;
        }
      }

      v4 = &unk_27F542000;
      v5 = v43;
      if (v45 > 0)
      {
        goto LABEL_61;
      }

LABEL_6:
      if (v3 == v1)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252B1112C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v24);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_42;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      v5 = sub_252D523AC();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v7;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v8)
      {
        goto LABEL_19;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = v14;
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v12 >> 1) - v11) < v31)
          {
            goto LABEL_44;
          }

          v15 = v10 + 8 * v11 + 32;
          v26 = v10;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_46;
            }

            sub_252A00B04(&qword_27F5433F0, &qword_27F5433E8, &unk_252E4B830);
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433E8, &unk_252E4B830);
              v17 = sub_2529FBE00(v30, i, v5);
              v19 = *v18;

              (v17)(v30, 0);
              *(v15 + 8 * i) = v19;
            }
          }

          else
          {
            type metadata accessor for Zone(0);
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v20 = *(v26 + 16);
            v4 = __OFADD__(v20, v31);
            v21 = v20 + v31;
            if (v4)
            {
              goto LABEL_45;
            }

            *(v26 + 16) = v21;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v22 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B11488()
{
  result = sub_252C759A0(&unk_2864ACBF8);
  qword_27F575820 = result;
  return result;
}

uint64_t sub_252B114B0()
{
  result = sub_252C759A0(&unk_2864ACC30);
  qword_27F575828 = result;
  return result;
}

uint64_t sub_252B114D8()
{
  result = sub_252C759A0(&unk_2864ACC98);
  qword_27F575830 = result;
  return result;
}

uint64_t sub_252B11500(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 outerDeviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 outerDeviceName];
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_252E36F34();
  v13 = v12;

  if (!v8)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  if (!v13)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v6 == v11 && v8 == v13)
  {
LABEL_25:

    goto LABEL_31;
  }

  v15 = sub_252E37DB4();

  if (v15)
  {
    goto LABEL_31;
  }

LABEL_17:
  v16 = [v3 homeEntityName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a2 homeEntityName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_252E36F34();
    v25 = v24;

    if (v20)
    {
      if (!v25)
      {
        goto LABEL_41;
      }

      if (v18 == v23 && v20 == v25)
      {
        goto LABEL_25;
      }

      v26 = sub_252E37DB4();

      if ((v26 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v25)
    {
      goto LABEL_58;
    }
  }

  else if (v20)
  {
    goto LABEL_41;
  }

LABEL_31:
  v27 = [v3 roomName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a2 roomName];
  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v33 = v32;
  v34 = sub_252E36F34();
  v36 = v35;

  if (!v31)
  {
    if (v36)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  if (!v36)
  {
LABEL_41:
    v37 = 0;
LABEL_59:

    return v37 & 1;
  }

  if (v29 == v34 && v31 == v36)
  {

    goto LABEL_45;
  }

  v38 = sub_252E37DB4();

  if (v38)
  {
LABEL_45:
    v39 = [v3 homeName];
    if (v39)
    {
      v40 = v39;
      v41 = sub_252E36F34();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = [a2 homeName];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;

      if (v43)
      {
        if (v48)
        {
          if (v41 == v46 && v43 == v48)
          {

            v37 = 1;
          }

          else
          {
            v37 = sub_252E37DB4();
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      if (v48)
      {
LABEL_58:
        v37 = 0;
        goto LABEL_59;
      }
    }

    else if (v43)
    {
LABEL_55:
      v37 = 0;
      goto LABEL_59;
    }

    v37 = 1;
    return v37 & 1;
  }

LABEL_56:
  v37 = 0;
  return v37 & 1;
}

BOOL sub_252B118A8()
{
  if (qword_27F53F368 != -1)
  {
    swift_once();
  }

  return (sub_252DB4F4C() & 1) == 0;
}

uint64_t *sub_252B11920@<X0>(uint64_t *result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = 0;
  v8 = *result;
  v7 = result[1];
  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v14.n128_f64[0] = HomeFilter.Builder.init()();
        v16 = (*(*v15 + 752))(a3, v14);

        v17 = (*(*v16 + 608))(0, 0);

        v13 = (*(*v17 + 576))(v8, v7);
      }

      else
      {
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v22.n128_f64[0] = HomeFilter.Builder.init()();
        v24 = (*(*v23 + 752))(a3, v22);

        v13 = (*(*v24 + 664))(v8, v7);
      }

      goto LABEL_23;
    }

    if (a2 == 2)
    {
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v25.n128_f64[0] = HomeFilter.Builder.init()();
      v27 = (*(*v26 + 752))(a3, v25);

      v28 = (*(*v27 + 576))(0, 0);

      v13 = (*(*v28 + 608))(v8, v7);
      goto LABEL_23;
    }

    if (a2 != 3)
    {
      goto LABEL_24;
    }

    v42 = *(result + 16);
    result = sub_252A47F84(&v42);
    if ((v18 & 1) == 0)
    {
LABEL_21:
      v33 = result;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v34.n128_f64[0] = HomeFilter.Builder.init()();
      v36 = (*(*v35 + 752))(a3, v34);

      v13 = (*(*v36 + 624))(v33);
      goto LABEL_23;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_24;
  }

  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v29.n128_f64[0] = HomeFilter.Builder.init()();
        v31 = (*(*v30 + 752))(a3, v29);

        v13 = (*(*v31 + 648))(v8, v7);
        goto LABEL_23;
      case 7u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v37.n128_f64[0] = HomeFilter.Builder.init()();
        v39 = (*(*v38 + 752))(a3, v37);

        v13 = (*(*v39 + 632))(v8, v7);
        goto LABEL_23;
      case 8u:
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        v9.n128_f64[0] = HomeFilter.Builder.init()();
        v11 = (*(*v10 + 752))(a3, v9);

        v12 = (*(*v11 + 576))(v8, v7);

        v13 = (*(*v12 + 592))(5);
LABEL_23:
        v40 = v13;

        v6 = (*(*v40 + 760))(v41);

        goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (a2 == 4)
  {
    v43 = *(result + 16);
    result = sub_252A47F84(&v43);
    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (a2 == 5)
  {
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v19.n128_f64[0] = HomeFilter.Builder.init()();
    v21 = (*(*v20 + 752))(a3, v19);

    v13 = (*(*v21 + 680))(v8, v7);
    goto LABEL_23;
  }

LABEL_24:
  *a4 = v6;
  return result;
}

uint64_t sub_252B120A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a4;
  v30 = a3;
  v29 = a2;
  v25 = sub_252E36324();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v23 = a5;
    v24 = v6;
    v6 = 0;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 & 0xC000000000000001;
    v13 = v9 + 1;
    while (1)
    {
      if (v28)
      {
        v14 = MEMORY[0x2530ADF00](v6, a1);
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v6 + 32);
      }

      v9 = v14;
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_252A6D400(v29, v14);
      if (v16)
      {
        sub_252E37024();

        v17 = sub_252E36304();
        v19 = v18;
        (*v13)(v11, v25);
        if (v17 == v30 && v19 == v26)
        {

LABEL_16:
          v21 = *v23;
          *v23 = v9;

          return 1;
        }

        a5 = sub_252E37DB4();

        if (a5)
        {
          goto LABEL_16;
        }
      }

      ++v6;
      if (v15 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

void *sub_252B122D4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = sub_252E36324();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v9 = 0;
    v39 = a1 & 0xC000000000000001;
    v33 = i;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a2;
    v28 = (v6 + 8);
    v24 = "Attempting to resolve filters";
    v25 = 0x8000000252E7C200;
    v23 = "ference resolution for ";
    v26 = a1;
    while (1)
    {
      if (v39)
      {
        v13 = MEMORY[0x2530ADF00](v9, a1);
      }

      else
      {
        if (v9 >= *(v34 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a1 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = sub_252A6D400(a2, v13);
      if (v17)
      {
        v18 = v29;
        sub_252E37024();

        v19 = sub_252E36304();
        v21 = v20;
        (*v28)(v18, v30);

        v6 = sub_252B120A0(v31, a2, v19, v21, v32);
        swift_bridgeObjectRelease_n();
        if (v6)
        {
          return v14;
        }
      }

      else
      {
        if (qword_27F53F488 != -1)
        {
          swift_once();
        }

        v10 = sub_252E36AD4();
        v11 = __swift_project_value_buffer(v10, qword_27F544C40);
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_252E379F4();

        v37 = 0xD00000000000001ELL;
        v38 = v25;
        v35 = v16;
        v36 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v12 = sub_252E36F94();
        MEMORY[0x2530AD570](v12);

        v6 = v11;
        sub_252CC4050(v37, v38, 0xD00000000000008DLL, v24 | 0x8000000000000000, 0xD000000000000019, v23 | 0x8000000000000000, 490);

        a1 = v26;
        a2 = v27;
      }

      ++v9;
      if (v15 == v33)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_252B1260C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    v5 = v2 + 56;
    result = sub_252E37834();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v29 = v2 + 64;
    v30 = v3;
    v31 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v33 = v7;
      v11 = v5;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = v2;
      v15 = *v12;
      v14 = v12[1];
      type metadata accessor for HomeFilter.Builder();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 7;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 128) = 0u;
      *(v16 + 144) = 0u;
      *(v16 + 160) = 0u;
      *(v16 + 175) = 0;

      v17 = sub_252B72040(a2);

      v18 = v15;
      v2 = v13;
      v19 = (*(*v17 + 712))(v18, v14);

      v21 = (*(*v19 + 760))(v20);

      [v21 setOuterDeviceName_];
      [v21 setTargetArea_];

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      result = sub_252E37AA4();
      v9 = 1 << *(v13 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v11 + 8 * v10);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v11;
      v8 = v31;
      if (v31 != *(v13 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_252ACBF38(v6, v31, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_252ACBF38(v6, v31, 0);
      }

LABEL_4:
      v7 = v33 + 1;
      v6 = v9;
      if (v33 + 1 == v30)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_252B12950(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = (a2 + 56);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v10 = *(v7 - 8);
      v11 = *(v7 - 2);
      v16[0] = *(v7 - 3);
      v16[1] = v11;
      v17 = v10;
      v18 = v9;
      v19 = v8;

      sub_252B11920(v16, a3, a1, &v15);

      if (v15)
      {
        MEMORY[0x2530AD700](v12);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v20;
      }

      v7 += 32;
      --v4;
    }

    while (v4);
  }

  v13 = sub_252DF9B0C(v3);

  return v13;
}

unint64_t sub_252B12A98(void *a1, unint64_t a2)
{
  v25 = MEMORY[0x277D84F90];
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_27:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_28:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(a2 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType);
      if (v9 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        type metadata accessor for HomeFilter.Builder();
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 7;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0u;
        *(v15 + 96) = 0u;
        *(v15 + 112) = 0u;
        *(v15 + 128) = 0u;
        *(v15 + 144) = 0u;
        *(v15 + 160) = 0u;
        *(v15 + 175) = 0;
        v16 = sub_252B72040(a1);

        v14 = (*(*v16 + 632))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

      if (v9 == 2)
      {
        type metadata accessor for HomeFilter.Builder();
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
        *(v12 + 40) = 7;
        *(v12 + 48) = 0u;
        *(v12 + 64) = 0u;
        *(v12 + 80) = 0u;
        *(v12 + 96) = 0u;
        *(v12 + 112) = 0u;
        *(v12 + 128) = 0u;
        *(v12 + 144) = 0u;
        *(v12 + 160) = 0u;
        *(v12 + 175) = 0;
        v13 = sub_252B72040(a1);

        v14 = (*(*v13 + 648))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

LABEL_5:

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }

    if (v9 != 3)
    {
      if (v9 == 7)
      {
        type metadata accessor for HomeFilter.Builder();
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        *(v10 + 40) = 7;
        *(v10 + 48) = 0u;
        *(v10 + 64) = 0u;
        *(v10 + 80) = 0u;
        *(v10 + 96) = 0u;
        *(v10 + 112) = 0u;
        *(v10 + 128) = 0u;
        *(v10 + 144) = 0u;
        *(v10 + 160) = 0u;
        *(v10 + 175) = 0;
        v11 = sub_252B72040(a1);

        v14 = (*(*v11 + 608))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        goto LABEL_21;
      }

      goto LABEL_5;
    }

    type metadata accessor for HomeFilter.Builder();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 7;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 175) = 0;
    v18 = sub_252B72040(a1);

    v14 = (*(*v18 + 680))(*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
LABEL_21:
    v19 = v14;

    (*(*v19 + 760))(v20);

    MEMORY[0x2530AD700](v21);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v6 = v25;
  }

  while (v5 != v4);
LABEL_29:
  v22 = sub_252DF9B0C(v6);

  return v22;
}

uint64_t sub_252B12F3C(unint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 104);
  v6 = *(a2 + 392);
  v7 = *(a2 + 448);
  v55 = *(a2 + 432);
  v56 = v7;
  v57 = *(a2 + 464);
  v58 = *(a2 + 480);
  v8 = *(a2 + 416);
  v53 = *(a2 + 400);
  v54 = v8;
  if (!sub_252C5CF44())
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C40);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v52 = v46;
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E7CA80);
    v48 = v55;
    v49 = v56;
    v50 = v57;
    v51 = v58;
    v46 = v53;
    v47 = v54;
    sub_252E37AE4();
    sub_252CC3D90(v52, *(&v52 + 1), 0xD00000000000008DLL, 0x8000000252E7BF00);

    v3 = sub_252C5DF3C();
    v10 = sub_252C5E778(v3);
    v2 = v10;
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      v12 = *(v10 + 52);
      if (*(v10 + 56) <= 1u && *(v10 + 56))
      {
      }

      else
      {
        v14 = sub_252E37DB4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v12 > 0.22)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_30:
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E7CB30);
      sub_252E37384();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);

      if (!(a1 >> 62))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
LABEL_69:
          v19 = 0;
          goto LABEL_70;
        }

LABEL_32:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x2530ADF00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v19 = *(a1 + 32);
        }

LABEL_70:
        a1 = sub_252B12950(v19, v2, v3);

        if (a1 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_72;
          }
        }

        else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_72:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x2530ADF00](0, a1);
            goto LABEL_75;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(a1 + 32);
LABEL_75:
            v34 = v33;

LABEL_78:
            v31 = v41;
            type metadata accessor for ControlHomeFiltersResolutionResult();
            v32 = sub_252E2B160(v34);

            v41[4] = v32;
            goto LABEL_79;
          }

          goto LABEL_96;
        }

        v34 = 0;
        goto LABEL_78;
      }

LABEL_68:
      if (sub_252E378C4() <= 0)
      {
        goto LABEL_69;
      }

      goto LABEL_32;
    }

    sub_252CC3D90(0xD000000000000029, 0x8000000252E7CB00, 0xD00000000000008DLL, 0x8000000252E7BF00);
    if (a1 >> 62)
    {
      if (sub_252E378C4() > 0)
      {
LABEL_11:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2530ADF00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_64;
          }

          v13 = *(a1 + 32);
        }

LABEL_46:
        type metadata accessor for ControlHomeFiltersResolutionResult();
        v23 = sub_252B12950(v13, v2, v3);

        v24 = sub_252E2B068(v23);

        v42 = v24;
        v15 = MEMORY[0x277D84F90];
        *&v46 = MEMORY[0x277D84F90];
        if (v24)
        {
          v25 = v24;
          MEMORY[0x2530AD700]();
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v15 = v46;
        }

        v26 = &v42;
        goto LABEL_91;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_11;
    }

    v13 = 0;
    goto LABEL_46;
  }

LABEL_19:
  if (*(v5 + 16))
  {
    return 0;
  }

  if (v6 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16 == 1)
    {
LABEL_23:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544C40);
      sub_252CC3D90(0xD000000000000023, 0x8000000252E7CAD0, 0xD00000000000008DLL, 0x8000000252E7BF00);
      if (a1 >> 62)
      {
        if (sub_252E378C4() > 0)
        {
LABEL_27:
          if ((a1 & 0xC000000000000001) == 0)
          {
            if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v18 = *(a1 + 32);
LABEL_53:

            v28 = sub_252A5F490(v27);
            a1 = sub_252B12A98(v18, v28);

            if (a1 >> 62)
            {
              if (sub_252E378C4())
              {
                goto LABEL_55;
              }
            }

            else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_55:
              if ((a1 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x2530ADF00](0, a1);
                goto LABEL_58;
              }

              if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v29 = *(a1 + 32);
LABEL_58:
                v30 = v29;

LABEL_61:
                v31 = &v43;
                type metadata accessor for ControlHomeFiltersResolutionResult();
                v32 = sub_252E2B160(v30);

                v44 = v32;
LABEL_79:
                v15 = MEMORY[0x277D84F90];
                *&v46 = MEMORY[0x277D84F90];
                if (v32)
                {
                  v35 = v32;
                  MEMORY[0x2530AD700]();
                  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  v15 = v46;
                }

                v26 = (v31 + 32);
LABEL_91:
                sub_252B1C554(v26);
                return v15;
              }

              goto LABEL_67;
            }

            v30 = 0;
            goto LABEL_61;
          }

LABEL_64:
          v18 = MEMORY[0x2530ADF00](0, a1);
          goto LABEL_53;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_27;
      }

      v18 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 == 1)
    {
      goto LABEL_23;
    }
  }

  if (v16 < 2)
  {
    return 0;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544C40);
  sub_252CC3D90(0xD000000000000025, 0x8000000252E7CAA0, 0xD00000000000008DLL, 0x8000000252E7BF00);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 0)
    {
      goto LABEL_41;
    }

LABEL_85:
    v22 = 0;
    goto LABEL_86;
  }

  result = sub_252E378C4();
  if (result <= 0)
  {
    goto LABEL_85;
  }

LABEL_41:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_97:
    v22 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_86;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a1 + 32);
LABEL_86:
    type metadata accessor for ControlHomeFiltersResolutionResult();

    v37 = sub_252A5F490(v36);
    v38 = sub_252B12A98(v22, v37);

    v39 = sub_252E2B068(v38);

    v45 = v39;
    v15 = MEMORY[0x277D84F90];
    *&v46 = MEMORY[0x277D84F90];
    if (v39)
    {
      v40 = v39;
      MEMORY[0x2530AD700]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v15 = v46;
    }

    v26 = &v45;
    goto LABEL_91;
  }

  __break(1u);
  return result;
}

void *sub_252B138C8(void *result, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
    return v2;
  }

  v4 = result;
  v24 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    result = sub_252E378C4();
    v5 = result;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v19 = v4;
    v2 = MEMORY[0x277D84F90];
LABEL_17:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544C40);
    sub_252E379F4();

    v21 = type metadata accessor for HomeFilter();
    v22 = MEMORY[0x2530AD730](v2, v21);
    MEMORY[0x2530AD570](v22);

    sub_252CC3D90(0xD000000000000020, 0x8000000252E7CA50, 0xD00000000000008DLL, 0x8000000252E7BF00);

    return v2;
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v23 = v4;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544C40);
      sub_252E379F4();

      v10 = [v8 description];
      v11 = sub_252E36F34();
      v13 = v12;

      MEMORY[0x2530AD570](v11, v13);

      MEMORY[0x2530AD570](0x74736E6961676120, 0xE900000000000020);
      v14 = [v23 description];
      v15 = sub_252E36F34();
      v17 = v16;

      MEMORY[0x2530AD570](v15, v17);

      sub_252CC3D90(0xD000000000000018, 0x8000000252E7CA30, 0xD00000000000008DLL, 0x8000000252E7BF00);

      v18 = sub_252A20280(v8);
      MEMORY[0x2530AD700]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      ++v6;
      sub_252E372D4();
    }

    while (v5 != v6);
    v2 = v24;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B13C7C(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 488);
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_252E378C4() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544C40);
    sub_252CC4050(0xD000000000000043, 0x8000000252E7C9B0, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD00000000000002CLL, 0x8000000252E7CA00, 263);
    return 0;
  }

  if (*(v3 + 16) < 2uLL)
  {
    return 0;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544C40);
  sub_252E379F4();

  v17 = 0xD00000000000002ELL;
  v18 = 0x8000000252E7C980;
  sub_252ABC210();
  v8 = sub_252E373B4();
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E7C980, 0xD00000000000008DLL, 0x8000000252E7BF00);

  v9 = sub_252A38B98(v3);
  if (v4)
  {
    result = sub_252E378C4();
    if (result <= 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v11 = *(a1 + 32);
    }

    v10 = v11;
    goto LABEL_19;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
LABEL_19:
  type metadata accessor for ControlHomeFiltersResolutionResult();
  v12 = sub_252B138C8(v10, v9);

  v13 = sub_252E2B068(v12);

  v16 = v13;
  v17 = MEMORY[0x277D84F90];
  if (v13)
  {
    v14 = v13;
    MEMORY[0x2530AD700]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v15 = v17;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252B1C554(&v16);
  return v15;
}

id sub_252B13FB0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v102 = sub_252E32E84();
  v6 = *(v102 - 8);
  v7 = MEMORY[0x28223BE20](v102);
  v9 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v94 - v10;
  if (a1 >> 62)
  {
    v12 = sub_252E378C4();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_80:
  v20 = sub_252E378C4();
LABEL_13:
  v103 = v12;
  v100 = a1;
  if (!v20)
  {
    v99 = v11;
    if (!v12)
    {
      goto LABEL_52;
    }

    v38 = 0;
    v11 = (a1 & 0xC000000000000001);
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v11)
      {
        v39 = MEMORY[0x2530ADF00](v38, a1);
      }

      else
      {
        if (v38 >= *(v6 + 16))
        {
          goto LABEL_77;
        }

        v39 = *(a1 + 8 * v38 + 32);
      }

      v9 = v39;
      v12 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_76;
      }

      v40 = [v39 outerDeviceName];
      if (v40)
      {
        break;
      }

      v40 = [v9 homeEntityName];
      if (v40)
      {
        break;
      }

      v41 = [v9 entityIdentifiers];
      if (v41)
      {
        v42 = v41;
        a3 = a1;
        v43 = sub_252E37264();

        v44 = *(v43 + 16);
        a1 = a3;

        if (v44)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      ++v38;
      if (v12 == v103)
      {
        goto LABEL_52;
      }
    }

    v45 = v40;

LABEL_47:
    v46 = type metadata accessor for HomeStore(0);
    v47 = static HomeStore.shared.getter(v46);
    v48 = sub_2529D8DC0();

    if (v48 >> 62)
    {
      goto LABEL_137;
    }

    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

  a2 = 0;
  v21 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v6 = a3 & 0xC000000000000001;
  a1 = a3 & 0xFFFFFFFFFFFFFF8;
  v101 += 4;
  do
  {
    v12 = a2;
    while (1)
    {
      if (v6)
      {
        v11 = MEMORY[0x2530ADF00](v12, a3);
        a2 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v11 = *(a3 + 8 * v12 + 32);

        a2 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
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
LABEL_78:
          v13 = MEMORY[0x2530ADF00](0, a1);
LABEL_6:
          v14 = v13;
          v15 = [v13 homeName];

          if (v15)
          {
            v16 = sub_252E36F34();
            v18 = v17;

            if (qword_27F53F488 != -1)
            {
              swift_once();
            }

            v19 = sub_252E36AD4();
            __swift_project_value_buffer(v19, qword_27F544C40);
            v104 = 0;
            v105 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000004BLL, 0x8000000252E7C930);
            MEMORY[0x2530AD570](v16, v18);

            sub_252CC3D90(v104, v105, 0xD00000000000008DLL, 0x8000000252E7BF00);
LABEL_122:

            return 0;
          }

LABEL_11:
          v101 = v6;
          if (!(a3 >> 62))
          {
            v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_13;
          }

          goto LABEL_80;
        }
      }

      v22 = [*&v11[OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate] home];
      if (v22)
      {
        break;
      }

      ++v12;
      if (a2 == v20)
      {
        goto LABEL_83;
      }
    }

    v23 = v22;
    type metadata accessor for Home(0);
    v96 = swift_allocObject();
    *(v96 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v23;
    v24 = v23;
    v25 = [v24 uniqueIdentifier];
    v99 = v9;
    sub_252E32E64();

    v26 = [v24 name];
    v27 = sub_252E36F34();
    v97 = v28;
    v98 = v27;

    v29 = [v24 assistantIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_252E36F34();
      v33 = v32;
    }

    else
    {

      v31 = 0;
      v33 = 0;
    }

    v11 = v96;
    v9 = v99;
    v34 = (*v101)(v96 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v99, v102);
    v35 = &v11[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v36 = v97;
    *v35 = v98;
    *(v35 + 1) = v36;
    *&v11[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType] = 1;
    v37 = &v11[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier];
    *v37 = v31;
    v37[1] = v33;
    MEMORY[0x2530AD700](v34);
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v21 = v104;
  }

  while (a2 != v20);
  while (1)
  {
LABEL_83:
    v69 = sub_252C758E0(v21);

    v70 = type metadata accessor for HomeStore(0);
    v71 = static HomeStore.shared.getter(v70);
    v72 = sub_2529D8DC0();

    v73 = v72 >> 62 ? sub_252E378C4() : *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if ((v69 & 0xC000000000000001) != 0)
    {
      if (sub_252E378C4() != 1)
      {
        goto LABEL_114;
      }
    }

    else if (*(v69 + 16) != 1)
    {
      goto LABEL_114;
    }

    if (v73 < 2)
    {
      goto LABEL_114;
    }

    v74 = sub_252DA089C(v69);
    if (!v74)
    {
      goto LABEL_114;
    }

    a2 = v74;
    v75 = static HomeStore.shared.getter(v74);
    v76 = sub_2529D9114();

    if (!v76)
    {
      goto LABEL_98;
    }

    if ((sub_252E32E54() & 1) == 0 || *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {
      break;
    }

    if (*(v76 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
    {
    }

    else
    {
      v84 = sub_252E37DB4();

      if ((v84 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

LABEL_114:
    if ((v69 & 0xC000000000000001) != 0)
    {
      v85 = sub_252E378C4();
    }

    else
    {
      v85 = *(v69 + 16);
    }

    v86 = v100;
    if (v85 < 2)
    {
      goto LABEL_122;
    }

    *(sub_252B680FC(v85) + 73) = 1;

    if (v103 <= 0)
    {
      v87 = 0;
      goto LABEL_125;
    }

    if ((v86 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x2530ADF00](0, v86);
LABEL_125:
      v89 = sub_2529A3930(v69);

      if ((v89 & 0x8000000000000000) != 0 || (v89 & 0x4000000000000000) != 0)
      {
        type metadata accessor for Entity(0);

        v90 = sub_252E37B14();
      }

      else
      {

        sub_252E37DD4();
        type metadata accessor for Entity(0);
        v90 = v89;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      v91 = sub_252B12A98(v87, v90);

      v92 = sub_252E2B068(v91);

      return v92;
    }

    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v87 = *(v86 + 32);
      goto LABEL_125;
    }

    __break(1u);
LABEL_137:
    v49 = sub_252E378C4();
LABEL_49:

    if (v49 == 1)
    {
      if (qword_27F53F488 == -1)
      {
LABEL_51:
        v50 = sub_252E36AD4();
        __swift_project_value_buffer(v50, qword_27F544C40);
        sub_252CC3D90(0xD00000000000006FLL, 0x8000000252E7C8C0, 0xD00000000000008DLL, 0x8000000252E7BF00);
        return 0;
      }

LABEL_142:
      swift_once();
      goto LABEL_51;
    }

LABEL_52:
    v104 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      a3 = sub_252E378C4();
      if (a3)
      {
        goto LABEL_54;
      }

LABEL_82:
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a3)
      {
        goto LABEL_82;
      }

LABEL_54:
      v11 = 0;
      a1 = a2 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v51 = v101 + 4;
      v9 = &off_279711000;
      do
      {
        v12 = v11;
        while (1)
        {
          if (a1)
          {
            v6 = MEMORY[0x2530ADF00](v12, a2);
            v11 = (v12 + 1);
            if (__OFADD__(v12, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v6 = *(a2 + 8 * v12 + 32);

            v11 = (v12 + 1);
            if (__OFADD__(v12, 1))
            {
              goto LABEL_74;
            }
          }

          v52 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          if (v52)
          {
            break;
          }

          ++v12;
          if (v11 == a3)
          {
            goto LABEL_83;
          }
        }

        v101 = v51;
        v53 = v52;
        type metadata accessor for Home(0);
        v96 = swift_allocObject();
        *(v96 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v53;
        v54 = v53;
        v55 = [v54 uniqueIdentifier];
        sub_252E32E64();

        v56 = [v54 name];
        v57 = sub_252E36F34();
        v97 = v58;
        v98 = v57;

        v59 = [v54 assistantIdentifier];
        if (v59)
        {
          v60 = v59;
          v95 = sub_252E36F34();
          v62 = v61;

          v63 = v62;
          v64 = v95;
        }

        else
        {

          v64 = 0;
          v63 = 0;
        }

        v51 = v101;
        v6 = v96;
        v65 = (*v101)(v96 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v99, v102);
        v66 = (v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v67 = v97;
        *v66 = v98;
        v66[1] = v67;
        *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v68 = (v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v68 = v64;
        v68[1] = v63;
        MEMORY[0x2530AD700](v65);
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v51 = v101;
        }

        sub_252E372D4();
        v21 = v104;
      }

      while (v11 != a3);
    }
  }

LABEL_98:

LABEL_99:
  if (v103 <= 0)
  {
    v77 = 0;
    goto LABEL_104;
  }

  if ((v100 & 0xC000000000000001) != 0)
  {
    v77 = MEMORY[0x2530ADF00](0);
    goto LABEL_104;
  }

  if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_141;
  }

  v77 = *(v100 + 32);
LABEL_104:
  v78 = sub_2529A3930(v69);

  if ((v78 & 0x8000000000000000) != 0 || (v78 & 0x4000000000000000) != 0)
  {
    type metadata accessor for Entity(0);

    v79 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v79 = v78;
  }

  v80 = sub_252B12A98(v77, v79);

  if (v80 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_132;
    }

LABEL_109:
    if ((v80 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x2530ADF00](0, v80);
      goto LABEL_112;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v81 = *(v80 + 32);
LABEL_112:
      v82 = v81;

      goto LABEL_133;
    }

LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_109;
  }

LABEL_132:

  v82 = 0;
LABEL_133:
  *(sub_252B680FC(v83) + 74) = 1;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  v93 = sub_252E2B160(v82);

  return v93;
}

id sub_252B14D40(unint64_t a1, unint64_t a2)
{
  v111 = a1;
  v115 = *MEMORY[0x277D85DE8];
  v3 = sub_252E36AD4();
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x28223BE20](v3);
  v107 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_126;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v7 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v7, a2);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_117;
      }

LABEL_8:
      v10 = (*(*v8 + 256))();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2529F7B8C(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_2529F7B8C((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
      ++v7;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_118;
    }

    v8 = *(a2 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_8;
    }

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
    ;
  }

LABEL_17:
  v13 = sub_252C759A0(v6);

  v14 = MEMORY[0x277D84F90];
  v113 = MEMORY[0x277D84F90];
  if (!i)
  {
    goto LABEL_28;
  }

  v15 = 0;
  while (2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2530ADF00](v15, a2);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      goto LABEL_22;
    }

    if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_119;
    }

    v16 = *(a2 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
LABEL_22:
      v18 = (*(*v16 + 272))();

      sub_25297AEDC(v18);
      ++v15;
      if (v17 == i)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:
  v14 = v113;
LABEL_28:
  v19 = sub_252C759A0(v14);

  v20 = sub_2529F2308(v19, v13);
  v21 = v20;
  v22 = *(v20 + 32);
  v23 = ((1 << v22) + 63) >> 6;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_29;
  }

  v96 = v21;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_29:
    v105 = &v105;
    v106 = v23;
    MEMORY[0x28223BE20](v20);
    v110 = &v105 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v110, v24);
    v112 = 0;
    v25 = 0;
    v26 = 1 << *(v21 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v21 + 56);
    v29 = (v26 + 63) >> 6;
    while (v28)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_40:
      v33 = v30 | (v25 << 6);
      v34 = *(*(v21 + 48) + 8 * v33);
      if (qword_27F53F368 != -1)
      {
        swift_once();
      }

      v35 = qword_27F575830;
      if (*(qword_27F575830 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v34), v36 = sub_252E37F14(), v37 = -1 << *(v35 + 32), v38 = v36 & ~v37, ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (*(*(v35 + 48) + 8 * v38) != v34)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        *&v110[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v112++, 1))
        {
          goto LABEL_121;
        }
      }
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        v41 = sub_252C53500(v110, v106, v112, v21);
        v112 = 0;
        goto LABEL_51;
      }

      v32 = *(v21 + 56 + 8 * v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v97 = swift_slowAlloc();

  v41 = sub_252C54758(v97, v23, v96, sub_252B1C5BC);
  v112 = 0;
  swift_bridgeObjectRelease_n();
  MEMORY[0x2530AED00](v97, -1, -1);
LABEL_51:
  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v41 + 56);
  v46 = (v43 + 63) >> 6;

  for (j = 0; ; j = v49)
  {
    v48 = &unk_27F575000;
    if (!v45)
    {
      break;
    }

    v49 = j;
LABEL_60:
    v50 = *(*(v41 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v45)))));
    if (qword_27F53F358 != -1)
    {
      swift_once();
      v48 = &unk_27F575000;
    }

    v51 = v48[260];
    if (!*(v51 + 16) || (sub_252E37EC4(), MEMORY[0x2530AE390](v50), v52 = sub_252E37F14(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0))
    {
LABEL_69:

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      v56 = v109;
      v57 = __swift_project_value_buffer(v109, qword_27F544C40);
      (*(v108 + 16))(v107, v57, v56);
      v113 = 0;
      v114 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7C7B0);
      v58 = 1 << *(v41 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v41 + 56);
      v61 = (v58 + 63) >> 6;

      v62 = 0;
      v63 = MEMORY[0x277D84F90];
      if (v60)
      {
        goto LABEL_78;
      }

      while (1)
      {
        do
        {
          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_116;
          }

          if (v64 >= v61)
          {

            v70 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
            v72 = v71;

            MEMORY[0x2530AD570](v70, v72);

            v73 = v107;
            sub_252CC3D90(v113, v114, 0xD00000000000008DLL, 0x8000000252E7BF00);

            (*(v108 + 8))(v73, v109);
            return 0;
          }

          v60 = *(v42 + 8 * v64);
          ++v62;
        }

        while (!v60);
        v62 = v64;
        do
        {
LABEL_78:
          v65 = HomeDeviceType.description.getter(*(*(v41 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v60))))));
          a2 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
          }

          v68 = *(v63 + 2);
          v67 = *(v63 + 3);
          if (v68 >= v67 >> 1)
          {
            v63 = sub_2529F7A80((v67 > 1), v68 + 1, 1, v63);
          }

          v60 &= v60 - 1;
          *(v63 + 2) = v68 + 1;
          v69 = &v63[16 * v68];
          *(v69 + 4) = v65;
          *(v69 + 5) = a2;
        }

        while (v60);
      }
    }

    v45 &= v45 - 1;
    v55 = ~v53;
    while (*(*(v51 + 48) + 8 * v54) != v50)
    {
      v54 = (v54 + 1) & v55;
      if (((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  while (1)
  {
    v49 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_120;
    }

    if (v49 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v49);
    ++j;
    if (v45)
    {
      goto LABEL_60;
    }
  }

  v75 = v111;
  if (!(v111 >> 62))
  {
    v76 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v76)
    {
      goto LABEL_131;
    }

    goto LABEL_88;
  }

  v76 = sub_252E378C4();
  v75 = v111;
  if (v76)
  {
LABEL_88:
    v77 = 0;
    v78 = v75 & 0xC000000000000001;
    v79 = v75 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v78)
      {
        v80 = MEMORY[0x2530ADF00](v77, v75);
      }

      else
      {
        if (v77 >= *(v79 + 16))
        {
          goto LABEL_123;
        }

        v80 = *(v75 + 8 * v77 + 32);
      }

      v81 = v80;
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_122;
      }

      v83 = [v80 outerDeviceName];
      if (v83)
      {
        break;
      }

      v84 = [v81 homeEntityName];
      if (v84)
      {
        goto LABEL_99;
      }

      ++v77;
      v75 = v111;
      if (v82 == v76)
      {
        v88 = 0;
        while (1)
        {
          if (v78)
          {
            v89 = MEMORY[0x2530ADF00](v88, v75);
          }

          else
          {
            if (v88 >= *(v79 + 16))
            {
              goto LABEL_125;
            }

            v89 = *(v75 + 8 * v88 + 32);
          }

          v90 = v89;
          v91 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_124;
          }

          v92 = [v89 entityIdentifiers];
          if (v92)
          {
            v93 = v92;
            v94 = sub_252E37264();

            v95 = *(v94 + 16);

            if (v95)
            {
              if (qword_27F53F488 == -1)
              {
                goto LABEL_114;
              }

              goto LABEL_147;
            }
          }

          else
          {
          }

          ++v88;
          v75 = v111;
          if (v91 == v76)
          {
            goto LABEL_131;
          }
        }
      }
    }

    v85 = v83;
    v84 = v81;
    v81 = v85;
LABEL_99:

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v109, qword_27F544C40);
    v86 = "r requested deviceTypes ";
    v87 = 0xD000000000000053;
    goto LABEL_102;
  }

LABEL_131:
  v98 = sub_252B1112C(a2);
  v99 = sub_252C766E8(v98);

  if ((v99 & 0xC000000000000001) == 0)
  {
    if (*(v99 + 16) < 2)
    {
      goto LABEL_138;
    }

LABEL_133:
    if (v76 <= 0)
    {
      v100 = 0;
    }

    else
    {
      if ((v111 & 0xC000000000000001) == 0)
      {
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v100 = *(v111 + 32);
          goto LABEL_140;
        }

        __break(1u);
LABEL_147:
        swift_once();
LABEL_114:
        __swift_project_value_buffer(v109, qword_27F544C40);
        v86 = "name in the filter)";
        v87 = 0xD000000000000058;
LABEL_102:
        sub_252CC3D90(v87, v86 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
        return 0;
      }

      v100 = MEMORY[0x2530ADF00](0);
    }

LABEL_140:
    v101 = sub_2529A395C(v99);

    if ((v101 & 0x8000000000000000) != 0 || (v101 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity(0);

      v102 = sub_252E37B14();
    }

    else
    {

      sub_252E37DD4();
      type metadata accessor for Entity(0);
      v102 = v101;
    }

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v103 = sub_252B12A98(v100, v102);

    v104 = sub_252E2B068(v103);

    return v104;
  }

  if (sub_252E378C4() >= 2)
  {
    goto LABEL_133;
  }

LABEL_138:

  return 0;
}

id sub_252B15A8C(uint64_t a1, unint64_t a2)
{
  v144 = *MEMORY[0x277D85DE8];
  v129 = sub_252E32E84();
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v131 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_252E36AD4();
  v128 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F360 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v6 = qword_27F575828;
    v7 = qword_27F53F358;

    if (v7 != -1)
    {
      swift_once();
    }

    v136 = sub_2529F2308(v8, v6);
    v9 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v139 = a1;
    v10 = MEMORY[0x277D84F90];
    v135 = MEMORY[0x277D84F90];
    if (!v9)
    {
      break;
    }

    a1 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](a1, a2);
      v12 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_62;
      }

LABEL_11:
      v13 = (*(*v11 + 256))();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2529F7B8C(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = sub_2529F7B8C((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      *&v10[8 * v15 + 32] = v13;
      ++a1;
      if (v12 == v9)
      {
        goto LABEL_20;
      }
    }

    if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 8 * a1 + 32);

    v12 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_11;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_20:
  a1 = sub_252C759A0(v10);

  v16 = MEMORY[0x277D84F90];
  v143 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_31;
  }

  v17 = 0;
  while (2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2530ADF00](v17, a2);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      goto LABEL_25;
    }

    if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v18 = *(a2 + 8 * v17 + 32);

    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
LABEL_25:
      v20 = (*(*v18 + 272))();

      sub_25297AEDC(v20);
      ++v17;
      if (v19 == v9)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:
  v16 = v143;
LABEL_31:
  v21 = sub_252C759A0(v16);

  v22 = sub_2529F2308(v21, a1);
  v23 = v22;
  v24 = *(v22 + 32);
  v25 = ((1 << v24) + 63) >> 6;
  v138 = a2;
  v140 = v9;
  if ((v24 & 0x3Fu) > 0xD)
  {

    v45 = v23;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_185;
    }
  }

  v133 = &v127;
  v134 = v25;
  MEMORY[0x28223BE20](v22);
  v137 = &v127 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v137, v26);
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(v23 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v23 + 56);
  a1 = (v29 + 63) >> 6;
  while (v31)
  {
    v32 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_44:
    v35 = v32 | (v28 << 6);
    v36 = *(*(v23 + 48) + 8 * v35);
    if (qword_27F53F368 != -1)
    {
      swift_once();
    }

    v37 = qword_27F575830;
    if (*(qword_27F575830 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v36), v38 = sub_252E37F14(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
    {
      v41 = ~v39;
      while (*(*(v37 + 48) + 8 * v40) != v36)
      {
        v40 = (v40 + 1) & v41;
        if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      a2 = v138;
    }

    else
    {
LABEL_51:
      a2 = v138;
      *&v137[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
      if (__OFADD__(v27++, 1))
      {
        goto LABEL_65;
      }
    }
  }

  v33 = v28;
  while (1)
  {
    v28 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v28 >= a1)
    {
      break;
    }

    v34 = *(v23 + 56 + 8 * v28);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v31 = (v34 - 1) & v34;
      goto LABEL_44;
    }
  }

  v43 = sub_252C53500(v137, v134, v27, v23);
  while (1)
  {
    v44 = v139;
    v45 = v136;
    v137 = 0;
    if (v139 >> 62)
    {
      v25 = sub_252E378C4();
      if (!v25)
      {
LABEL_71:
        v48 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v25 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_71;
      }
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      goto LABEL_183;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_185:
    v126 = swift_slowAlloc();

    v43 = sub_252C54758(v126, v25, v45, sub_252B1C5BC);
    swift_bridgeObjectRelease_n();
    MEMORY[0x2530AED00](v126, -1, -1);
  }

  v46 = *(v44 + 32);
  while (2)
  {
    v47 = v46;
    v48 = [(__objc2_class *)v46 deviceType];

LABEL_72:
    if (sub_252DB4F4C())
    {

      if (!v25)
      {
        goto LABEL_137;
      }

      goto LABEL_110;
    }

    v134 = v48;
    v49 = 0;
    v44 = v43;
    v50 = v43 + 56;
    v51 = 1 << *(v43 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & *(v43 + 56);
    v54 = (v51 + 63) >> 6;
    v55 = v45 + 7;
    if (!v53)
    {
LABEL_80:
      while (1)
      {
        v43 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v43 >= v54)
        {

          v44 = v139;
          goto LABEL_109;
        }

        v53 = *(v50 + 8 * v43);
        ++v49;
        if (v53)
        {
          goto LABEL_83;
        }
      }

LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    while (1)
    {
      v43 = v49;
LABEL_83:
      v45 = v136;
      if (!*(v136 + 16))
      {
        break;
      }

      v56 = *(*(v44 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v53)))));
      sub_252E37EC4();
      MEMORY[0x2530AE390](v56);
      v57 = sub_252E37F14();
      v58 = -1 << *(v45 + 32);
      v59 = v57 & ~v58;
      if (((*(v55 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        break;
      }

      v53 &= v53 - 1;
      v60 = ~v58;
      while (*(&v45[6]->isa + v59) != v56)
      {
        v59 = (v59 + 1) & v60;
        if (((*(v55 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v49 = v43;
      a2 = v138;
      if (!v53)
      {
        goto LABEL_80;
      }
    }

LABEL_91:

    v62 = sub_252B680FC(v61);
    swift_beginAccess();
    v63 = *(v62 + 16);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = *(v63 + 504 * v64 - 86);

      a2 = v138;
      v44 = v139;
      if (v65 != 1)
      {
        if (qword_27F53F488 == -1)
        {
LABEL_94:
          v45 = 0xD00000000000008DLL;
          v66 = v132;
          v67 = __swift_project_value_buffer(v132, qword_27F544C40);
          (*(v128 + 16))(v127, v67, v66);
          v141 = 0;
          v142 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7C6A0);
          v68 = HomeDeviceType.description.getter(v134);
          MEMORY[0x2530AD570](v68);

          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E7C480);
          if (v140)
          {
            v25 = 0;
            v69 = a2 & 0xC000000000000001;
            v70 = a2 & 0xFFFFFFFFFFFFFF8;
            v71 = MEMORY[0x277D84F90];
            a2 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
            while (1)
            {
              if (v69)
              {
                v43 = MEMORY[0x2530ADF00](v25, v138);
                v45 = (v25 + 1);
                if (__OFADD__(v25, 1))
                {
                  goto LABEL_181;
                }
              }

              else
              {
                if (v25 >= *(v70 + 16))
                {
                  goto LABEL_182;
                }

                v43 = *(v138 + 8 * v25 + 32);

                v45 = (v25 + 1);
                if (__OFADD__(v25, 1))
                {
                  goto LABEL_181;
                }
              }

              v73 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v72 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v71 = sub_2529F7A80(0, *(v71 + 2) + 1, 1, v71);
              }

              v44 = *(v71 + 2);
              v74 = *(v71 + 3);
              v43 = v44 + 1;
              if (v44 >= v74 >> 1)
              {
                v71 = sub_2529F7A80((v74 > 1), v44 + 1, 1, v71);
              }

              *(v71 + 2) = v43;
              v75 = &v71[16 * v44];
              *(v75 + 4) = v73;
              *(v75 + 5) = v72;
              ++v25;
              if (v45 == v140)
              {
                goto LABEL_172;
              }
            }
          }

          v71 = MEMORY[0x277D84F90];
LABEL_172:
          v122 = MEMORY[0x2530AD730](v71, MEMORY[0x277D837D0]);
          v124 = v123;

          MEMORY[0x2530AD570](v122, v124);

          v125 = v127;
          sub_252CC3D90(v141, v142, 0xD00000000000008DLL, 0x8000000252E7BF00);

          (*(v128 + 8))(v125, v132);
          return 0;
        }

LABEL_189:
        swift_once();
        goto LABEL_94;
      }

LABEL_109:
      if (!v25)
      {
        goto LABEL_137;
      }

LABEL_110:
      v76 = 0;
      v77 = v44 & 0xC000000000000001;
      v78 = v44 & 0xFFFFFFFFFFFFFF8;
      v45 = &off_279711000;
      do
      {
        if (v77)
        {
          v79 = MEMORY[0x2530ADF00](v76, v44);
        }

        else
        {
          if (v76 >= *(v78 + 16))
          {
            goto LABEL_177;
          }

          v79 = *(v44 + 8 * v76 + 32);
        }

        v43 = v79;
        v44 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v80 = [(__objc2_class *)v79 outerDeviceName];
        if (v80)
        {
          v83 = v80;
          v81 = v43;
          v43 = v83;
LABEL_122:

          if (qword_27F53F488 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v132, qword_27F544C40);
          v84 = "r an intent with device type ";
          v85 = 0xD000000000000053;
LABEL_125:
          sub_252CC3D90(v85, v84 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
          return 0;
        }

        v81 = [v43 homeEntityName];
        if (v81)
        {
          goto LABEL_122;
        }

        ++v76;
        v82 = v44 == v25;
        v44 = v139;
      }

      while (!v82);
      v86 = 0;
      v45 = &off_279711000;
      while (1)
      {
        if (v77)
        {
          v87 = MEMORY[0x2530ADF00](v86, v44);
        }

        else
        {
          if (v86 >= *(v78 + 16))
          {
            goto LABEL_180;
          }

          v87 = *(v44 + 8 * v86 + 32);
        }

        v88 = v87;
        v43 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        v89 = [(__objc2_class *)v87 entityIdentifiers];
        if (v89)
        {
          v90 = v89;
          v91 = sub_252E37264();

          v92 = *(v91 + 16);
          a2 = v138;

          if (v92)
          {
            if (qword_27F53F488 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v132, qword_27F544C40);
            v84 = "name in the filter)";
            v85 = 0xD000000000000058;
            goto LABEL_125;
          }
        }

        else
        {
        }

        ++v86;
        v44 = v139;
        if (v43 == v25)
        {
          goto LABEL_137;
        }
      }

LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      v46 = MEMORY[0x2530ADF00](0, v44);
      continue;
    }

    break;
  }

  a2 = v138;
  v44 = v139;
  if (v25)
  {
    goto LABEL_110;
  }

LABEL_137:
  v141 = MEMORY[0x277D84F90];
  if (v140)
  {
    v93 = 0;
    v94 = a2 & 0xC000000000000001;
    v95 = a2 & 0xFFFFFFFFFFFFFF8;
    v135 = MEMORY[0x277D84F90];
    v45 = (v130 + 32);
    do
    {
      v43 = v93;
      v44 = &off_279711000;
      while (1)
      {
        if (v94)
        {
          v96 = MEMORY[0x2530ADF00](v43, a2);
          v93 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_174;
          }
        }

        else
        {
          if (v43 >= *(v95 + 16))
          {
            goto LABEL_175;
          }

          v96 = *(a2 + 8 * v43 + 32);

          v93 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }
        }

        v97 = [*(v96 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        if (v97)
        {
          break;
        }

        ++v43;
        if (v93 == v140)
        {
          v44 = v139;
          goto LABEL_155;
        }
      }

      v136 = v45;
      v98 = v97;
      type metadata accessor for Room(0);
      v99 = swift_allocObject();
      *(v99 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v98;
      v43 = v98;
      v100 = [v43 uniqueIdentifier];
      sub_252E32E64();

      v101 = [v43 name];
      v102 = sub_252E36F34();
      v134 = v103;
      v135 = v102;

      v104 = [v43 assistantIdentifier];
      if (v104)
      {
        v105 = v104;
        v106 = sub_252E36F34();
        v108 = v107;

        v109 = v106;
      }

      else
      {

        v109 = 0;
        v108 = 0;
      }

      a2 = v138;
      v45 = v136;
      v110 = (*v136)(v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v131, v129);
      v111 = (v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v112 = v134;
      *v111 = v135;
      v111[1] = v112;
      *(v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v113 = (v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v113 = v109;
      v113[1] = v108;
      MEMORY[0x2530AD700](v110);
      v114 = v99;
      v44 = v139;
      if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = v114;
        sub_252E372A4();
        v45 = v136;
      }

      sub_252E372D4();
      v135 = v141;
    }

    while (v93 != v140);
  }

LABEL_155:
  v115 = sub_252C7600C(v135);

  if ((v115 & 0xC000000000000001) == 0)
  {
    if (*(v115 + 16) < 2)
    {
      goto LABEL_162;
    }

LABEL_157:
    if (v25 <= 0)
    {
      v116 = 0;
    }

    else if ((v44 & 0xC000000000000001) != 0)
    {
      v116 = MEMORY[0x2530ADF00](0, v44);
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_189;
      }

      v116 = *(v44 + 32);
    }

    v117 = sub_2529A3988(v115);

    if ((v117 & 0x8000000000000000) != 0 || (v117 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity(0);

      v118 = sub_252E37B14();
    }

    else
    {

      v118 = v117;
      sub_252E37DD4();
      type metadata accessor for Entity(0);
    }

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v119 = sub_252B12A98(v116, v118);

    v120 = sub_252E2B068(v119);

    return v120;
  }

  if (sub_252E378C4() >= 2)
  {
    goto LABEL_157;
  }

LABEL_162:

  return 0;
}

uint64_t sub_252B16CB8(void *a1, unint64_t a2, unint64_t a3)
{
  v169 = a1;
  v175 = sub_252E36AD4();
  v5 = *(v175 - 1);
  MEMORY[0x28223BE20](v175);
  v7 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_252E32E84();
  v8 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &off_279711000;
  v11 = &off_279711000;
  if ((sub_2529C77E4() & 1) == 0 || (v12 = [a2 value]) == 0 || (v13 = v12, v14 = objc_msgSend(v12, sel_cleaningJob), v13, !v14))
  {
LABEL_54:
    if (qword_27F53F488 != -1)
    {
      goto LABEL_134;
    }

    goto LABEL_55;
  }

  v15 = [v14 targetAreas];
  if (!v15)
  {

    goto LABEL_54;
  }

  v16 = v15;
  v154 = v14;
  type metadata accessor for HomeAttributeTargetArea();
  v17 = sub_252E37264();

  v181 = MEMORY[0x277D84F90];
  v153 = a3;
  if (a3 >> 62)
  {
    goto LABEL_142;
  }

  v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v18 = MEMORY[0x277D84F90];
    if (v7)
    {
      v19 = 0;
      v167 = v153 & 0xFFFFFFFFFFFFFF8;
      v168 = v153 & 0xC000000000000001;
      v165 = v153 + 32;
      v166 = (v8 + 8);
      v155 = "Modified user task: ";
      v161 = "tity with accessoryID ";
      v160 = ". Returning .robotVacuumCleaner";
      v159 = "MatterAccessory.swift";
      v158 = "for accessoryID ";
      v157 = "MatterAccessoryManager.swift";
      v156 = "deviceEntity(for:)";
      v163 = v17;
      v164 = a2;
      v162 = v7;
      while (1)
      {
        if (v168)
        {
          v5 = MEMORY[0x2530ADF00](v19, v153);
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v19 >= *(v167 + 16))
          {
            goto LABEL_131;
          }

          v5 = *(v165 + 8 * v19);

          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_130;
          }
        }

        v172 = v21;
        v22 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
        v23 = v170;
        sub_252E32E64();

        v17 = sub_252E32E24();
        v176 = v24;
        v25 = (*v166)(v23, v171);
        v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v25);
        v7 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v173 = v5;
        v174 = v26;
        v8 = *&v26[v7];
        v27 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v27)
        {
          break;
        }

        a2 = 0;
        v5 = v8 & 0xC000000000000001;
        v11 = (v8 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v5)
          {
            MEMORY[0x2530ADF00](a2, v8);
            v10 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (a2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_129;
            }

            v10 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              swift_once();
LABEL_55:
              v31 = v175;
              v32 = __swift_project_value_buffer(v175, qword_27F544C40);
              (*(v5 + 16))(v7, v32, v31);
              v179 = 0;
              v180 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E7C610);
              v33 = sub_2529C77E4();
              v34 = (v33 & 1) == 0;
              if (v33)
              {
                v35 = 1702195828;
              }

              else
              {
                v35 = 0x65736C6166;
              }

              if (v34)
              {
                v36 = 0xE500000000000000;
              }

              else
              {
                v36 = 0xE400000000000000;
              }

              MEMORY[0x2530AD570](v35, v36);

              MEMORY[0x2530AD570](0x6E696E61656C630ALL, 0xEE00203A626F4A67);
              v37 = [a2 *(v10 + 1648)];
              v38 = [v37 v11[207]];

              v177 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
              v39 = sub_252E36F94();
              MEMORY[0x2530AD570](v39);

              MEMORY[0x2530AD570](0x417465677261740ALL, 0xEE00203A73616572);
              v40 = [a2 *(v10 + 1648)];
              if (!v40)
              {
                goto LABEL_65;
              }

              v41 = v40;
              v42 = [v40 v11[207]];

              if (!v42)
              {
                goto LABEL_66;
              }

              v43 = [v42 targetAreas];

              if (v43)
              {
                type metadata accessor for HomeAttributeTargetArea();
                v42 = sub_252E37264();
              }

              else
              {
LABEL_65:
                v42 = 0;
              }

LABEL_66:
              v177 = v42;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D0, &qword_252E4B820);
              v44 = sub_252E36F94();
              MEMORY[0x2530AD570](v44);

              sub_252CC4050(v179, v180, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD000000000000030, 0x8000000252E7C660, 636);

              (*(v5 + 8))(v7, v175);
              return 0;
            }
          }

          sub_252E36744();

          if (v178)
          {
            if (v177 == v17 && v178 == v176)
            {

              goto LABEL_36;
            }

            v7 = sub_252E37DB4();

            if (v7)
            {
              break;
            }
          }

          ++a2;
          if (v10 == v27)
          {
            goto LABEL_30;
          }
        }

LABEL_36:

        v28 = sub_252BF8258();
        a2 = v164;
        v5 = 0xD00000000000001FLL;
        if (!v28)
        {
          goto LABEL_43;
        }

        if (!*(v28 + 2))
        {

LABEL_43:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v175, qword_27F544CB8);
          v177 = 0;
          v178 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v155 | 0x8000000000000000);
          MEMORY[0x2530AD570](v17, v176);

          MEMORY[0x2530AD570](0xD00000000000001FLL, v161 | 0x8000000000000000);
          sub_252CC4050(v177, v178, 0xD000000000000075, v160 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_46:

          v17 = v163;
          goto LABEL_47;
        }

        v29 = v28;

        if (!*(v29 + 2))
        {
          goto LABEL_141;
        }

        v30 = *(v29 + 4);

        v17 = v163;
        if (v30 != 46)
        {
          if (sub_252D50560(a2))
          {
            goto LABEL_48;
          }

          goto LABEL_9;
        }

LABEL_47:
        if (sub_25292AB64(a2))
        {
LABEL_48:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_10;
        }

LABEL_9:

LABEL_10:
        v7 = v162;
        v19 = v172;
        if (v172 == v162)
        {
          v18 = v181;
          goto LABEL_69;
        }
      }

LABEL_30:

      if (qword_27F53F560 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v175, qword_27F544EC8);
      v5 = 0xE000000000000000;
      v177 = 0;
      v178 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000040, v159 | 0x8000000000000000);
      v11 = v176;
      MEMORY[0x2530AD570](v17, v176);
      sub_252CC4050(v177, v178, 0xD00000000000007CLL, v158 | 0x8000000000000000, 0xD000000000000012, v157 | 0x8000000000000000, 375);

      a2 = v164;
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v175, qword_27F544CB8);
      v177 = 0;
      v178 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000027, v156 | 0x8000000000000000);
      MEMORY[0x2530AD570](v17, v11);

      MEMORY[0x2530AD570](0xD00000000000001FLL, v161 | 0x8000000000000000);
      sub_252CC4050(v177, v178, 0xD000000000000075, v160 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
      goto LABEL_46;
    }

LABEL_69:
    v176 = v18;
    if (v17 >> 62)
    {
      v7 = sub_252E378C4();
      if (v7)
      {
LABEL_71:
        v46 = 0;
        v10 = v17 & 0xC000000000000001;
        a2 = &off_279711000;
        do
        {
          if (v10)
          {
            v47 = MEMORY[0x2530ADF00](v46, v17);
          }

          else
          {
            if (v46 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_133;
            }

            v47 = *(v17 + 8 * v46 + 32);
          }

          v48 = v47;
          v5 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_132;
          }

          [v47 areaID];
          if (v49 == -2.0)
          {
            [v48 mapID];
            v51 = v50;

            if (v51 == -2.0)
            {
              v8 = 0;
              v177 = MEMORY[0x277D84F90];
              do
              {
                if (v10)
                {
                  v52 = MEMORY[0x2530ADF00](v8, v17);
                }

                else
                {
                  if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_140;
                  }

                  v52 = *(v17 + 8 * v8 + 32);
                }

                v5 = v52;
                v53 = v8 + 1;
                if (__OFADD__(v8, 1))
                {
                  __break(1u);
                  goto LABEL_136;
                }

                [v52 areaID];
                if (v54 == -2.0 && ([v5 mapID], v55 == -2.0))
                {
                  sub_252E37A94();
                  v11 = *(v177 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                else
                {
                }

                ++v8;
              }

              while (v53 != v7);

              v56 = v177;
              if ((v177 & 0x8000000000000000) == 0 && (v177 & 0x4000000000000000) == 0)
              {
                v8 = *(v177 + 16);
                goto LABEL_95;
              }

              goto LABEL_188;
            }
          }

          else
          {
          }

          ++v46;
        }

        while (v5 != v7);
      }
    }

    else
    {
      v7 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_71;
      }
    }

    v77 = [v154 cleanModes];
    v78 = sub_252E37264();

    LOBYTE(v77) = sub_2529A6C5C(14, v78);

    if (v77)
    {
LABEL_145:

      v79 = v176;
      if ((v176 & 0x8000000000000000) != 0 || (v176 & 0x4000000000000000) != 0)
      {
        goto LABEL_186;
      }

      v80 = *(v176 + 16);
      goto LABEL_148;
    }

    v92 = 0;
    v79 = v17 & 0xC000000000000001;
    v11 = &off_279711000;
    while (1)
    {
      if (v7 == v92)
      {

        v97 = v154;
        v98 = [v154 targetMap];
        if (v98)
        {
          v99 = v98;
          [v98 mapID];
          if (v100 == -2.0)
          {
            if ((v176 & 0x8000000000000000) == 0 && (v176 & 0x4000000000000000) == 0)
            {
              v101 = *(v176 + 16);
              goto LABEL_172;
            }

            goto LABEL_251;
          }
        }

        return 0;
      }

      if (v79)
      {
        v93 = MEMORY[0x2530ADF00](v92, v17);
      }

      else
      {
        if (v92 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        v93 = *(v17 + 8 * v92 + 32);
      }

      v94 = v93;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      [v93 areaID];
      v96 = v95;

      ++v92;
      if (v96 == -2.0)
      {
        goto LABEL_145;
      }
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    v80 = sub_252E378C4();
LABEL_148:
    if (!v80)
    {

LABEL_166:

      return MEMORY[0x277D84F90];
    }

    v177 = MEMORY[0x277D84F90];
    v56 = &v177;
    sub_252E37AB4();
    if ((v80 & 0x8000000000000000) == 0)
    {
      v81 = 0;
      v82 = v79;
      v83 = v79 & 0xC000000000000001;
      do
      {
        if (v83)
        {
          v84 = MEMORY[0x2530ADF00](v81);
        }

        else
        {
          v84 = *(v82 + 8 * v81 + 32);
        }

        ++v81;
        v85 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v86 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        type metadata accessor for HomeFilter.Builder();
        v87 = swift_allocObject();
        *(v87 + 16) = 0;
        *(v87 + 24) = 0;
        *(v87 + 32) = 0;
        *(v87 + 40) = 7;
        *(v87 + 48) = 0u;
        *(v87 + 64) = 0u;
        *(v87 + 80) = 0u;
        *(v87 + 96) = 0u;
        *(v87 + 112) = 0u;
        *(v87 + 128) = 0u;
        *(v87 + 144) = 0u;
        *(v87 + 160) = 0u;
        *(v87 + 175) = 0;
        v88 = sub_252B72040(v169);

        v89 = (*(*v88 + 608))(v85, v86);

        v91 = (*(*v89 + 760))(v90);

        [v91 setTargetArea_];
        [v91 setTargetMap_];

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v82 = v176;
      }

      while (v80 != v81);
LABEL_164:

      return v177;
    }

    __break(1u);
LABEL_188:
    v8 = sub_252E378C4();
LABEL_95:
    v17 = &off_279711000;
    if (v8)
    {
      v57 = 0;
      v175 = MEMORY[0x277D84F90];
LABEL_97:
      v5 = v57;
      while (1)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x2530ADF00](v5, v56);
        }

        else
        {
          if (v5 >= *(v56 + 16))
          {
            goto LABEL_137;
          }

          v58 = *(v56 + 8 * v5 + 32);
        }

        v10 = v58;
        v57 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v59 = [(SEL *)v58 name];
        if (v59)
        {
          v60 = v59;
          v61 = sub_252E36F34();
          v11 = v62;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = sub_2529F7A80(0, *(v175 + 2) + 1, 1, v175);
          }

          v64 = *(v175 + 2);
          v63 = *(v175 + 3);
          v10 = v64 + 1;
          if (v64 >= v63 >> 1)
          {
            v175 = sub_2529F7A80((v63 > 1), v64 + 1, 1, v175);
          }

          v65 = v175;
          *(v175 + 2) = v10;
          v66 = &v65[16 * v64];
          *(v66 + 4) = v61;
          *(v66 + 5) = v11;
          if (v57 != v8)
          {
            goto LABEL_97;
          }

          goto LABEL_113;
        }

        ++v5;
        if (v57 == v8)
        {
          goto LABEL_113;
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
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      v7 = sub_252E378C4();
      continue;
    }

    break;
  }

  v175 = MEMORY[0x277D84F90];
LABEL_113:

  v8 = 0;
  v67 = sub_252B107EC(v176);
  v5 = v67;
  v181 = MEMORY[0x277D84F90];
  if (v67 >> 62)
  {
    v68 = sub_252E378C4();
    if (v68)
    {
LABEL_115:
      v10 = 0;
      v173 = v5 & 0xFFFFFFFFFFFFFF8;
      v174 = (v5 & 0xC000000000000001);
      do
      {
        if (v174)
        {
          v69 = MEMORY[0x2530ADF00](v10, v5);
        }

        else
        {
          if (v10 >= *(v173 + 16))
          {
            goto LABEL_139;
          }

          v69 = *(v5 + 8 * v10 + 32);
        }

        v70 = v69;
        v71 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_138;
        }

        v11 = v17;
        v72 = [v69 *(v17 + 1600)];
        if (v72)
        {
          v73 = v72;
          v74 = sub_252E36F34();
          v76 = v75;
        }

        else
        {
          v74 = 0;
          v76 = 0xE000000000000000;
        }

        v177 = v74;
        v178 = v76;
        MEMORY[0x28223BE20](v72);
        *(&v153 - 2) = &v177;
        a2 = sub_2529ED970(sub_25296A69C, (&v153 - 4), v175);

        if (a2)
        {
          sub_252E37A94();
          a2 = *(v181 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v17 = v11;
        ++v10;
      }

      while (v71 != v68);
    }
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_115;
    }
  }

  v97 = v181;
  if ((v181 & 0x8000000000000000) == 0 && (v181 & 0x4000000000000000) == 0)
  {
    v99 = *(v181 + 16);
    if (v99)
    {
      goto LABEL_193;
    }

LABEL_203:

    v113 = MEMORY[0x277D84F90];
LABEL_204:
    v120 = sub_252C75AFC(v113);

    v121 = sub_252B10C8C(v176);
    v175 = 0;

    v177 = MEMORY[0x277D84F90];
    if (v121 >> 62)
    {
      goto LABEL_224;
    }

    for (i = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v123 = 0;
      v124 = v121 & 0xC000000000000001;
      v17 = v121 & 0xFFFFFFFFFFFFFF8;
      v176 = v121;
      v121 += 32;
      v125 = v120 + 56;
      while (1)
      {
        if (v124)
        {
          v126 = MEMORY[0x2530ADF00](v123, v176);
        }

        else
        {
          if (v123 >= *(v17 + 16))
          {
            goto LABEL_223;
          }

          v126 = *(v121 + 8 * v123);
        }

        v127 = v126;
        v20 = __OFADD__(v123++, 1);
        if (v20)
        {
          break;
        }

        [v126 mapID];
        if (*(v120 + 16) && (v129 = v128, v130 = sub_252E37EB4(), v131 = -1 << *(v120 + 32), v132 = v130 & ~v131, ((*(v125 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) != 0))
        {
          v133 = ~v131;
          while (*(*(v120 + 48) + 8 * v132) != v129)
          {
            v132 = (v132 + 1) & v133;
            if (((*(v125 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
            {
              goto LABEL_207;
            }
          }

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v123 == i)
          {
LABEL_221:
            v134 = v177;
            v17 = 0x279711000;
            goto LABEL_226;
          }
        }

        else
        {
LABEL_207:

          if (v123 == i)
          {
            goto LABEL_221;
          }
        }
      }

      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      ;
    }

    v134 = MEMORY[0x277D84F90];
LABEL_226:

    if (v134 < 0 || (v134 & 0x4000000000000000) != 0)
    {
LABEL_247:
      v135 = sub_252E378C4();
      if (v135)
      {
        goto LABEL_229;
      }
    }

    else
    {
      v135 = *(v134 + 16);
      if (v135)
      {
LABEL_229:
        v136 = 0;
        v137 = MEMORY[0x277D84F90];
        do
        {
          v138 = v136;
          while (1)
          {
            if ((v134 & 0xC000000000000001) != 0)
            {
              v139 = MEMORY[0x2530ADF00](v138, v134);
            }

            else
            {
              if (v138 >= *(v134 + 16))
              {
                goto LABEL_246;
              }

              v139 = *(v134 + 8 * v138 + 32);
            }

            v140 = v139;
            v136 = v138 + 1;
            if (__OFADD__(v138, 1))
            {
              __break(1u);
LABEL_246:
              __break(1u);
              goto LABEL_247;
            }

            v141 = [v139 *(v17 + 1600)];
            if (v141)
            {
              break;
            }

            ++v138;
            if (v136 == v135)
            {
              goto LABEL_249;
            }
          }

          v142 = v141;
          v143 = sub_252E36F34();
          v145 = v144;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_2529F7A80(0, *(v137 + 2) + 1, 1, v137);
          }

          v147 = *(v137 + 2);
          v146 = *(v137 + 3);
          if (v147 >= v146 >> 1)
          {
            v137 = sub_2529F7A80((v146 > 1), v147 + 1, 1, v137);
          }

          *(v137 + 2) = v147 + 1;
          v148 = &v137[16 * v147];
          *(v148 + 4) = v143;
          *(v148 + 5) = v145;
        }

        while (v136 != v135);
        goto LABEL_249;
      }
    }

    v137 = MEMORY[0x277D84F90];
LABEL_249:

    v149 = sub_252C75848(v137);

    v150 = v169;
    v151 = v169;
    v152 = sub_252B1260C(v149, v150);

    return v152;
  }

  v99 = sub_252E378C4();
  if (!v99)
  {
    goto LABEL_203;
  }

LABEL_193:
  v177 = MEMORY[0x277D84F90];
  sub_2529AA660(0, v99 & ~(v99 >> 63), 0);
  if ((v99 & 0x8000000000000000) == 0)
  {
    v112 = 0;
    v113 = v177;
    do
    {
      if ((v97 & 0xC000000000000001) != 0)
      {
        v114 = MEMORY[0x2530ADF00](v112, v97);
      }

      else
      {
        v114 = *(v97 + 8 * v112 + 32);
      }

      v115 = v114;
      [v114 mapID];
      v117 = v116;

      v177 = v113;
      v119 = *(v113 + 16);
      v118 = *(v113 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_2529AA660((v118 > 1), v119 + 1, 1);
        v113 = v177;
      }

      ++v112;
      *(v113 + 16) = v119 + 1;
      *(v113 + 8 * v119 + 32) = v117;
    }

    while (v99 != v112);

    goto LABEL_204;
  }

  __break(1u);
LABEL_251:
  v101 = sub_252E378C4();
LABEL_172:
  if (!v101)
  {

    goto LABEL_166;
  }

  v175 = v99;
  v177 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v101 & 0x8000000000000000) == 0)
  {
    v102 = 0;
    v103 = v176 & 0xC000000000000001;
    do
    {
      if (v103)
      {
        v104 = MEMORY[0x2530ADF00](v102, v176);
      }

      else
      {
        v104 = *(v176 + 8 * v102 + 32);
      }

      ++v102;
      v105 = *(v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v106 = *(v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      type metadata accessor for HomeFilter.Builder();
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      *(v107 + 32) = 0;
      *(v107 + 40) = 7;
      *(v107 + 48) = 0u;
      *(v107 + 64) = 0u;
      *(v107 + 80) = 0u;
      *(v107 + 96) = 0u;
      *(v107 + 112) = 0u;
      *(v107 + 128) = 0u;
      *(v107 + 144) = 0u;
      *(v107 + 160) = 0u;
      *(v107 + 175) = 0;
      v108 = sub_252B72040(v169);

      v109 = (*(*v108 + 608))(v105, v106);

      v111 = (*(*v109 + 760))(v110);

      [v111 setTargetArea_];
      [v111 setTargetMap_];

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v101 != v102);

    goto LABEL_164;
  }

  __break(1u);
  return result;
}

id sub_252B18600(void *a1, void *a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_9;
    }
  }

  else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C40);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E7C550);
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E7C590);
    if (v5)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 == 0;
    if (v15)
    {
      v17 = 0x65736C6166;
    }

    else
    {
      v17 = 1702195828;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v17, v18);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD00000000000002DLL, 0x8000000252E7C5B0, 616);
    goto LABEL_20;
  }

  v7 = a1;
  v8 = sub_252B16CB8(a2, v7, a3);
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  if (v8 >> 62)
  {
    if (sub_252E378C4() > 1)
    {
      goto LABEL_7;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
LABEL_7:
    type metadata accessor for ControlHomeFiltersResolutionResult();
    v10 = sub_252E2B068(v9);

    return v10;
  }

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C40);
  sub_252E379F4();

  v20 = type metadata accessor for HomeFilter();
  v21 = MEMORY[0x2530AD730](v9, v20);
  v23 = v22;

  MEMORY[0x2530AD570](v21, v23);

  sub_252CC3D90(0xD000000000000021, 0x8000000252E7C5E0, 0xD00000000000008DLL, 0x8000000252E7BF00);

LABEL_20:

  return 0;
}

id sub_252B18964(unint64_t a1, unint64_t a2, char *a3)
{
  v6 = sub_252E36AD4();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 62;
  if (a3)
  {
    v9 = [a3 value];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 cleaningJob];

      if (v11)
      {

        if (qword_27F53F488 != -1)
        {
          goto LABEL_121;
        }

        goto LABEL_5;
      }
    }
  }

  if (qword_27F53F360 != -1)
  {
    goto LABEL_71;
  }

LABEL_12:
  v13 = qword_27F575828;
  v14 = qword_27F53F358;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_2529F2308(v15, v13);
  if (v8)
  {
    v40 = v16;
    v17 = sub_252E378C4();
    v16 = v40;
    if (!v17)
    {
LABEL_73:
      v39 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_73;
    }
  }

  v76 = a2;
  v77 = v16;
  v18 = a1 & 0xC000000000000001;
  v80 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2530ADF00](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }

    v19 = *(a1 + 32);
  }

  v20 = v19;
  v75 = [v19 deviceType];

  v6 = 0;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  a2 = &off_279711000;
  do
  {
    if (v18)
    {
      v21 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v21 = *(a1 + 8 * v6 + 32);
    }

    v22 = v21;
    v23 = v6 + 1;
    if (__OFADD__(v6, 1))
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
      swift_once();
      goto LABEL_12;
    }

    v24 = [v21 outerDeviceName];
    if (v24)
    {
      v26 = v24;

      v22 = v26;
      goto LABEL_31;
    }

    v25 = [v22 homeEntityName];
    if (v25)
    {
      v27 = v25;

LABEL_31:
      v16 = v80;
      if (qword_27F53F488 == -1)
      {
LABEL_32:
        __swift_project_value_buffer(v16, qword_27F544C40);
        v28 = "accessoryResolutionCandidates ";
        v29 = 0xD000000000000057;
        goto LABEL_33;
      }

LABEL_118:
      v66 = v16;
      swift_once();
      v16 = v66;
      goto LABEL_32;
    }

    ++v6;
  }

  while (v23 != v17);
  v6 = 0;
  do
  {
    if (v18)
    {
      v30 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v30 = *(a1 + 8 * v6 + 32);
    }

    a2 = v30;
    v31 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_69;
    }

    v32 = [v30 entityIdentifiers];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E37264();

      v35 = *(v34 + 16);

      if (v35)
      {

        if (qword_27F53F488 == -1)
        {
LABEL_64:
          __swift_project_value_buffer(v80, qword_27F544C40);
          v28 = "ory name in the filter)";
          v29 = 0xD00000000000005CLL;
LABEL_33:
          sub_252CC3D90(v29, v28 | 0x8000000000000000, 0xD00000000000008DLL, 0x8000000252E7BF00);
          return 0;
        }

LABEL_131:
        swift_once();
        goto LABEL_64;
      }
    }

    else
    {
    }

    ++v6;
  }

  while (v31 != v17);
  v39 = v75;
  a2 = v76;
  v6 = v80;
LABEL_74:
  v41 = sub_252DB4F4C();

  if (v41)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544C40);
    v83[0] = 0;
    v83[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E7C440);
    v43 = HomeDeviceType.description.getter(v39);
    MEMORY[0x2530AD570](v43);

    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E7C4D0);
    sub_252CC3D90(v83[0], v83[1], 0xD00000000000008DLL, 0x8000000252E7BF00);

    return 0;
  }

  v44 = sub_252B680FC(v42);
  swift_beginAccess();
  v45 = *(v44 + 16);
  v46 = *(v45 + 16);
  if (!v46)
  {

    if (!(a2 >> 62))
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

  memcpy(v83, (v45 + 504 * v46 - 472), sizeof(v83));
  sub_2529353AC(v83, v82);

  if (v17)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x2530ADF00](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_131;
      }

      v47 = *(a1 + 32);
    }

    v48 = v47;
    v49 = [v47 outerDeviceName];

    if (v49)
    {

      goto LABEL_103;
    }
  }

  if (!v39)
  {
    memcpy(v82, v83, sizeof(v82));
    if (sub_252A169C8())
    {
      if (qword_27F53F488 == -1)
      {
        goto LABEL_88;
      }

      goto LABEL_134;
    }
  }

LABEL_103:
  sub_252935408(v83);
  if (a2 >> 62)
  {
LABEL_110:
    if (sub_252E378C4() < 2)
    {
      return 0;
    }

    goto LABEL_105;
  }

LABEL_104:
  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return 0;
  }

LABEL_105:
  if (v17 <= 0)
  {
    v10 = 0;
    goto LABEL_113;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x2530ADF00](0, a1);
    goto LABEL_113;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
LABEL_113:

    v61 = sub_252A5F4BC(v60);
    if (v61 >> 62)
    {
      goto LABEL_128;
    }

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v62 = v61;
    goto LABEL_115;
  }

  __break(1u);
LABEL_134:
  swift_once();
LABEL_88:
  v8 = 0xD00000000000008DLL;
  v50 = __swift_project_value_buffer(v6, qword_27F544C40);
  (*(v79 + 16))(v78, v50, v6);
  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E7C440);
  v51 = HomeDeviceType.description.getter(0);
  v10 = v52;
  MEMORY[0x2530AD570](v51);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E7C480);
  if (!(a2 >> 62))
  {
    v53 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_90;
    }

LABEL_136:
    a3 = MEMORY[0x277D84F90];
LABEL_137:
    v69 = MEMORY[0x2530AD730](a3, MEMORY[0x277D837D0]);
    v71 = v70;

    MEMORY[0x2530AD570](v69, v71);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E7C4A0);
    v81 = sub_252B1F8D4(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C0, &qword_252E4B810);
    v72 = sub_252E36F94();
    MEMORY[0x2530AD570](v72);

    v73 = v78;
    sub_252CC3D90(v82[0], v82[1], 0xD00000000000008DLL, 0x8000000252E7BF00);
    sub_252935408(v83);

    (*(v79 + 8))(v73, v6);
    return 0;
  }

  v53 = sub_252E378C4();
  if (!v53)
  {
    goto LABEL_136;
  }

LABEL_90:
  v54 = 0;
  v77 = a2 & 0xC000000000000001;
  v75 = (a2 & 0xFFFFFFFFFFFFFF8);
  a3 = MEMORY[0x277D84F90];
  v80 = v6;
  v74 = v53;
  while (2)
  {
    if (v77)
    {
      v10 = a2;
      a2 = MEMORY[0x2530ADF00](v54, a2);
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      goto LABEL_94;
    }

    if (v54 >= v75[2])
    {
      goto LABEL_120;
    }

    v10 = a2;
    a2 = *(a2 + 8 * v54 + 32);

    v55 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
LABEL_94:
      v56 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v57 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_2529F7A80(0, *(a3 + 2) + 1, 1, a3);
      }

      v8 = *(a3 + 2);
      v58 = *(a3 + 3);
      if (v8 >= v58 >> 1)
      {
        a3 = sub_2529F7A80((v58 > 1), v8 + 1, 1, a3);
      }

      *(a3 + 2) = v8 + 1;
      v59 = &a3[16 * v8];
      *(v59 + 4) = v56;
      *(v59 + 5) = v57;
      ++v54;
      a2 = v10;
      v6 = v80;
      if (v55 == v74)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  swift_once();
LABEL_5:
  __swift_project_value_buffer(v6, qword_27F544C40);
  sub_252CC3D90(0xD000000000000037, 0x8000000252E7C510, 0xD00000000000008DLL, 0x8000000252E7BF00);
  if (v8)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 <= 0)
  {
    v80 = 0;
    goto LABEL_45;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v80 = MEMORY[0x2530ADF00](0, a1);
LABEL_45:
    v83[0] = MEMORY[0x277D84F90];
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      a1 = sub_252E378C4();
      if (a1)
      {
LABEL_47:
        v36 = 0;
        v6 = a2;
        v37 = a2 & 0xC000000000000001;
        v38 = MEMORY[0x277D84F90];
        do
        {
          a2 = v36;
          while (1)
          {
            if (v37)
            {
              MEMORY[0x2530ADF00](a2, v6);
              v36 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (a2 >= *(v8 + 16))
              {
                goto LABEL_68;
              }

              v36 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                goto LABEL_67;
              }
            }

            type metadata accessor for MatterAccessory(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++a2;
            if (v36 == a1)
            {
              goto LABEL_125;
            }
          }

          MEMORY[0x2530AD700]();
          if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v79 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v38 = v83[0];
        }

        while (v36 != a1);
        goto LABEL_125;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_47;
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_125:
    v67 = v80;
    v68 = sub_252B18600(a3, v80, v38);

    return v68;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v80 = *(a1 + 32);
    goto LABEL_45;
  }

  __break(1u);
LABEL_128:
  type metadata accessor for Entity(0);
  v62 = sub_252E37B14();
LABEL_115:

  type metadata accessor for ControlHomeFiltersResolutionResult();
  v63 = sub_252B12A98(v10, v62);

  v64 = sub_252E2B068(v63);

  return v64;
}

char *sub_252B1968C(unint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v102 = a4;
  v82 = a3;
  v98 = a1;
  v96 = sub_252E32E84();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F488 != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v10 = __swift_project_value_buffer(v6, qword_27F544C40);
    v101 = v7;
    v11 = *(v7 + 16);
    v83 = v10;
    v11(v9);
    v107[0] = 0;
    v107[1] = 0xE000000000000000;
    sub_252E379F4();

    v107[0] = 0xD000000000000022;
    v107[1] = 0x8000000252E7C2F0;
    v12 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v100 = v9;
    v97 = v6;
    v7 = MEMORY[0x277D84F90];
    v103 = v12;
    v104 = a2;
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v6 = a2 & 0xC000000000000001;
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
    while (v6)
    {
      a2 = MEMORY[0x2530ADF00](v13, a2);
      v9 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_96;
      }

LABEL_9:
      v15 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v16 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7A80(0, *(v7 + 16) + 1, 1, v7);
      }

      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_2529F7A80((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v13;
      a2 = v104;
      if (v9 == v103)
      {
        goto LABEL_18;
      }
    }

    if (v13 >= *(v14 + 16))
    {
      goto LABEL_97;
    }

    a2 = *(a2 + 8 * v13 + 32);

    v9 = (v13 + 1);
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

LABEL_18:
  v20 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  v23 = v100;
  sub_252CC3D90(v107[0], v107[1], 0xD00000000000008DLL, 0x8000000252E7BF00);

  v24 = (v101)[1](v23, v97);
  v25 = sub_252B680FC(v24);
  swift_beginAccess();
  v26 = *(v25 + 16);
  v27 = *(v26 + 16);
  if (!v27)
  {

    v6 = v102;
    v30 = v103;
    goto LABEL_22;
  }

  memcpy(v107, (v26 + 504 * v27 - 472), sizeof(v107));
  sub_2529353AC(v107, v106);

  memcpy(v106, v107, sizeof(v106));
  v28 = v98;
  v29 = sub_252B12F3C(v98, v106);
  v6 = v102;
  if (v29)
  {
    v9 = v29;
    sub_252935408(v107);
    return v9;
  }

  memcpy(v106, v107, sizeof(v106));
  v9 = sub_252B13C7C(v28, v106);
  sub_252935408(v107);
  v30 = v103;
  if (v9)
  {
    return v9;
  }

LABEL_22:
  if (v6 >> 62)
  {
    v31 = sub_252E378C4();
  }

  else
  {
    v31 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v98;
  v33 = MEMORY[0x277D84F90];
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B0, &qword_252E4B800);
    v34 = swift_allocObject();
    v35 = sub_252B13FB0(v32, v33, v6);
    *(v34 + 32) = v35;
    v36 = v34 + 32;
    v107[0] = v33;
    if (v35)
    {
      v37 = v35;
      MEMORY[0x2530AD700]();
      if (*((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_106;
      }

      goto LABEL_27;
    }

    v9 = v33;
LABEL_47:
    swift_setDeallocating();
    sub_252B1C554(v36);
    swift_deallocClassInstance();
    return v9;
  }

  v79 = "Attempting to resolve filters";
  v107[0] = MEMORY[0x277D84F90];
  if (v30)
  {
    v38 = 0;
    v6 = a2 & 0xC000000000000001;
    v39 = MEMORY[0x277D84F90];
    do
    {
      v7 = v38;
      while (1)
      {
        if (v6)
        {
          v9 = MEMORY[0x2530ADF00](v7, a2);
          v38 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v9 = *(a2 + 8 * v7 + 32);

          v38 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_98;
          }
        }

        type metadata accessor for MatterAccessory(0);
        v40 = swift_dynamicCastClass();
        if (v40)
        {
          break;
        }

        ++v7;
        if (v38 == v30)
        {
          goto LABEL_49;
        }
      }

      v9 = v40;
      MEMORY[0x2530AD700]();
      if (*((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v39 = v107[0];
    }

    while (v38 != v30);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

LABEL_49:
  v105 = v33;
  v80 = v39;
  if (v39 >> 62)
  {
    v41 = sub_252E378C4();
    v7 = v98;
    if (!v41)
    {
      goto LABEL_108;
    }

LABEL_51:
    v42 = 0;
    v93 = v80 & 0xFFFFFFFFFFFFFF8;
    v94 = v80 & 0xC000000000000001;
    v91 = v80 + 32;
    v92 = (v99 + 8);
    v81 = "Modified user task: ";
    v88 = ". Returning .robotVacuumCleaner";
    v89 = "tity with accessoryID ";
    v86 = "for accessoryID ";
    v87 = "MatterAccessory.swift";
    v84 = "deviceEntity(for:)";
    v85 = "MatterAccessoryManager.swift";
    v90 = v41;
    while (1)
    {
      if (v94)
      {
        v43 = MEMORY[0x2530ADF00](v42, v80);
        v44 = __OFADD__(v42, 1);
        v45 = v42 + 1;
        if (v44)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v42 >= *(v93 + 16))
        {
          goto LABEL_101;
        }

        v44 = __OFADD__(v42, 1);
        v45 = v42 + 1;
        if (v44)
        {
          goto LABEL_100;
        }
      }

      v100 = v45;
      v99 = v43;
      v46 = [*(v43 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v47 = v95;
      sub_252E32E64();

      v102 = sub_252E32E24();
      v103 = v48;
      v49 = (*v92)(v47, v96);
      v50 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v49);
      v7 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v101 = v50;
      a2 = *&v50[v7];
      v51 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v51)
      {
        break;
      }

      v36 = 0;
      v9 = (a2 & 0xC000000000000001);
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v9)
        {
          MEMORY[0x2530ADF00](v36, a2);
          v53 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v36 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_95;
          }

          v53 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }
        }

        sub_252E36744();

        v7 = v106[1];
        if (v106[1])
        {
          if (v106[0] == v102 && v106[1] == v103)
          {

            goto LABEL_77;
          }

          v52 = sub_252E37DB4();

          if (v52)
          {
            break;
          }
        }

        ++v36;
        if (v53 == v51)
        {
          goto LABEL_71;
        }
      }

LABEL_77:

      v57 = sub_252BF8258();
      a2 = v104;
      if (!v57)
      {
        goto LABEL_83;
      }

      if (!*(v57 + 2))
      {

LABEL_83:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v9 = __swift_project_value_buffer(v97, qword_27F544CB8);
        v106[0] = 0;
        v106[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v81 | 0x8000000000000000);
        MEMORY[0x2530AD570](v102, v103);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v89 | 0x8000000000000000);
        sub_252CC4050(v106[0], v106[1], 0xD000000000000075, v88 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

LABEL_86:

        v6 = v90;
LABEL_87:
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_88;
      }

      v58 = v57;

      if (!*(v58 + 2))
      {
        __break(1u);
LABEL_106:
        sub_252E372A4();
LABEL_27:
        sub_252E372D4();
        v9 = v107[0];
        goto LABEL_47;
      }

      v59 = *(v58 + 4);

      v6 = v90;
      if (v59 == 46)
      {
        goto LABEL_87;
      }

LABEL_88:
      v7 = v98;
      v42 = v100;
      if (v100 == v6)
      {
        goto LABEL_108;
      }
    }

LABEL_71:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v54 = v97;
    __swift_project_value_buffer(v97, qword_27F544EC8);
    v106[0] = 0;
    v106[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v87 | 0x8000000000000000);
    v56 = v102;
    v55 = v103;
    MEMORY[0x2530AD570](v102, v103);
    sub_252CC4050(v106[0], v106[1], 0xD00000000000007CLL, v86 | 0x8000000000000000, 0xD000000000000012, v85 | 0x8000000000000000, 375);

    a2 = v104;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v54, qword_27F544CB8);
    v106[0] = 0;
    v106[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v84 | 0x8000000000000000);
    MEMORY[0x2530AD570](v56, v55);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v89 | 0x8000000000000000);
    sub_252CC4050(v106[0], v106[1], 0xD000000000000075, v88 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    goto LABEL_86;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v98;
  if (v41)
  {
    goto LABEL_51;
  }

LABEL_108:

  v9 = MEMORY[0x277D84F90];
  v60 = sub_252B13FB0(v7, a2, MEMORY[0x277D84F90]);
  v61 = sub_252B14D40(v7, a2);
  if (!v61)
  {
    v61 = sub_252B15A8C(v7, a2);
  }

  v62 = sub_252B18964(v7, a2, v82);
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  sub_252E379F4();

  v106[0] = 0xD000000000000019;
  v106[1] = 0x8000000252E7C320;
  v105 = v60;
  v104 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B8, &qword_252E4B808);
  v103 = v60;
  v63 = sub_252E36F94();
  MEMORY[0x2530AD570](v63);

  v64 = v79;
  sub_252CC3D90(v106[0], v106[1], 0xD00000000000008DLL, v79 | 0x8000000000000000);

  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  sub_252E379F4();

  v106[0] = 0xD00000000000001FLL;
  v106[1] = 0x8000000252E7C340;
  v105 = v61;
  v102 = v61;
  v65 = sub_252E36F94();
  MEMORY[0x2530AD570](v65);

  sub_252CC3D90(v106[0], v106[1], 0xD00000000000008DLL, v64 | 0x8000000000000000);

  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  sub_252E379F4();

  v106[0] = 0xD00000000000001ELL;
  v106[1] = 0x8000000252E7C360;
  v105 = v62;
  v66 = v62;
  v67 = sub_252E36F94();
  MEMORY[0x2530AD570](v67);

  sub_252CC3D90(v106[0], v106[1], 0xD00000000000008DLL, v64 | 0x8000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B0, &qword_252E4B800);
  v68 = swift_allocObject();
  v69 = v104;
  v68[4] = v103;
  v68[5] = v61;
  v68[6] = v62;
  v106[0] = v9;
  v70 = v69;
  v71 = v102;
  result = v66;
  v73 = result;
  v74 = 0;
LABEL_111:
  v75 = 3;
  if (v74 > 3)
  {
    v75 = v74;
  }

  while (1)
  {
    if (v74 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      return v9;
    }

    if (v75 == v74)
    {
      break;
    }

    v76 = v68[v74++ + 4];
    if (v76)
    {
      v77 = v76;
      MEMORY[0x2530AD700]();
      if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v104 = *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v9 = v106[0];
      goto LABEL_111;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252B1A674(void *a1)
{
  v2 = [a1 disambiguationItems];
  v3 = sub_252E37264();

  v4 = sub_252A9E238(v3);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C130;
    *(v7 + 32) = v11;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_25297A8D8(v7);
  v8 = [a1 resolvedValue];
  sub_252E377F4();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_252E3C130;
    *(v9 + 32) = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_25297A8D8(v9);
  return v5;
}

id sub_252B1A838(unint64_t a1, unint64_t a2, char *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v114 = a5;
  v16 = sub_252E36974();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E36984();
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v109 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_252B680FC(v20) + 128) = 0;

  v22 = sub_252B1968C(a1, a2, a3, a4);
  if (v22 >> 62)
  {
    v25 = a1;
    v26 = v22;
    v27 = sub_252E378C4();
    v22 = v26;
    a1 = v25;
    v108 = v18;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v108 = v18;
    if (v23)
    {
LABEL_3:
      if ((v22 & 0xC000000000000001) != 0)
      {
LABEL_69:
        v24 = MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v24 = v22[4];
      }

      v8 = v24;

      if (!a6)
      {
        goto LABEL_71;
      }

      goto LABEL_10;
    }
  }

  v8 = 0;
  if (!a6)
  {
    goto LABEL_71;
  }

LABEL_10:
  if (!(a6 >> 62))
  {
    if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_71:
    if (v8)
    {
      if (qword_27F53F488 == -1)
      {
LABEL_73:
        v87 = sub_252E36AD4();
        __swift_project_value_buffer(v87, qword_27F544C40);
        v115 = 0;
        v116 = 0xE000000000000000;
        sub_252E379F4();

        v115 = 0xD000000000000023;
        v116 = 0x8000000252E7C240;
        v88 = [v8 description];
        v89 = sub_252E36F34();
        v91 = v90;

        MEMORY[0x2530AD570](v89, v91);

        sub_252CC3D90(v115, v116, 0xD00000000000008DLL, 0x8000000252E7BF00);
        goto LABEL_74;
      }

LABEL_83:
      swift_once();
      goto LABEL_73;
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v92 = sub_252E36AD4();
    __swift_project_value_buffer(v92, qword_27F544C40);
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_252E379F4();

    v115 = 0xD000000000000015;
    v116 = 0x8000000252E7C220;
    v93 = type metadata accessor for HomeFilter();
    v94 = MEMORY[0x2530AD730](a1, v93);
    MEMORY[0x2530AD570](v94);

    sub_252CC3D90(v115, v116, 0xD00000000000008DLL, 0x8000000252E7BF00);
  }

  if (!sub_252E378C4())
  {
    goto LABEL_71;
  }

LABEL_12:
  if (v8)
  {
    sub_252B1C504(v114, a6, a7, a8);
    v28 = v8;
    v29 = sub_252B1A674(v28);
    goto LABEL_22;
  }

  if (a1 >> 62)
  {
    result = sub_252E378C4();
    if (result > 0)
    {
LABEL_16:
      if ((a1 & 0xC000000000000001) != 0)
      {

        v31 = a1;
        v33 = MEMORY[0x2530ADF00](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v31 = a1;
        v32 = *(a1 + 32);
        sub_252B1C504(v114, a6, a7, a8);
        v33 = v32;
      }

      v28 = v33;
      if (!(a2 >> 62))
      {
        goto LABEL_20;
      }

LABEL_86:
      type metadata accessor for Entity(0);

      v95 = sub_252E37B14();

      a2 = v95;
      goto LABEL_21;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 0)
    {
      goto LABEL_16;
    }
  }

  v31 = a1;

  v28 = 0;
  if (a2 >> 62)
  {
    goto LABEL_86;
  }

LABEL_20:

  sub_252E37DD4();
  type metadata accessor for Entity(0);
LABEL_21:
  a1 = v31;
  v29 = sub_252B12A98(v28, a2);

LABEL_22:

  v115 = v29;

  sub_25297A8D8(v34);
  v106 = v115;
  v96[1] = a1;
  if (a6 >> 62)
  {
    v35 = sub_252E378C4();
    if (!v35)
    {
LABEL_55:

      if (v8)
      {
        if (a8)
        {
          v63 = v112;
          v64 = v109;
          (*(v112 + 104))(v109, *MEMORY[0x277D5FC78], v113);
          v66 = v110;
          v65 = v111;
          v67 = v108;
          (*(v110 + 104))(v108, *MEMORY[0x277D5FC58], v111);
          sub_252936298(v64, v67);

          (*(v66 + 8))(v67, v65);
          (*(v63 + 8))(v64, v113);
          return v8;
        }

LABEL_74:

        return v8;
      }

      if (a8)
      {
        v82 = v112;
        v81 = v113;
        v83 = v109;
        (*(v112 + 104))(v109, *MEMORY[0x277D5FC70], v113);
        v85 = v110;
        v84 = v111;
        v86 = v108;
        (*(v110 + 104))(v108, *MEMORY[0x277D5FC58], v111);
        sub_252936298(v83, v86);

        (*(v85 + 8))(v86, v84);
        (*(v82 + 8))(v83, v81);
      }

      else
      {
      }
    }
  }

  else
  {
    v35 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_55;
    }
  }

  v36 = 0;
  a2 = 0;
  v37 = a6 & 0xC000000000000001;
  v38 = a6 & 0xFFFFFFFFFFFFFF8;
  v39 = a6 + 32;
  if (v29 < 0)
  {
    v40 = v29;
  }

  else
  {
    v40 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v96[0] = v40;
  a1 = v29 & 0xC000000000000001;
  v41 = v29 >> 62;
  v104 = a7;
  v105 = a6;
  v107 = a8;
  v103 = v8;
  v100 = a6 & 0xC000000000000001;
  v101 = v35;
  v98 = a6 + 32;
  v99 = a6 & 0xFFFFFFFFFFFFFF8;
  v97 = v29 >> 62;
  while (2)
  {
    if (v37)
    {
      v42 = MEMORY[0x2530ADF00](v36, a6);
    }

    else
    {
      if (v36 >= *(v38 + 16))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v42 = *(v39 + 8 * v36);
    }

    v8 = v42;
    v43 = __OFADD__(v36, 1);
    v44 = v36 + 1;
    if (v43)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v102 = v44;
    if (v41)
    {
      a6 = sub_252E378C4();
      if (a6)
      {
LABEL_36:
        a7 = 0;
        while (1)
        {
          if (a1)
          {
            v45 = MEMORY[0x2530ADF00](a7, v29);
          }

          else
          {
            if (a7 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }

            v45 = *(v29 + 8 * a7 + 32);
          }

          v46 = v45;
          v47 = a7 + 1;
          if (__OFADD__(a7, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v115 = v45;
          a8 = sub_252B11500(&v115, v8);

          if (a8)
          {
            break;
          }

          ++a7;
          if (v47 == a6)
          {
            goto LABEL_49;
          }
        }

        v36 = v102;
        a6 = v105;
        a8 = v107;
        v8 = v103;
        v38 = v99;
        v37 = v100;
        v41 = v97;
        v39 = v98;
        if (v102 != v101)
        {
          continue;
        }

        goto LABEL_55;
      }
    }

    else
    {
      a6 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a6)
      {
        goto LABEL_36;
      }
    }

    break;
  }

LABEL_49:

  if (v114)
  {
    v48 = v103;
    if (v107)
    {
      v50 = v112;
      v49 = v113;
      v51 = v109;
      (*(v112 + 104))(v109, *MEMORY[0x277D5FC78], v113);
      v52 = v110;
      v53 = v108;
      v54 = v48;
      v55 = v111;
      (*(v110 + 104))(v108, *MEMORY[0x277D5FC50], v111);
      sub_252936298(v51, v53);
      v56 = v55;
      v48 = v54;
      (*(v52 + 8))(v53, v56);
      (*(v50 + 8))(v51, v49);
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v57 = sub_252E36AD4();
    __swift_project_value_buffer(v57, qword_27F544C40);
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E7C2A0);
    v58 = type metadata accessor for HomeFilter();
    v59 = v106;
    v60 = MEMORY[0x2530AD730](v106, v58);
    MEMORY[0x2530AD570](v60);

    MEMORY[0x2530AD570](41, 0xE100000000000000);
    sub_252CC3D90(v115, v116, 0xD00000000000008DLL, 0x8000000252E7BF00);

    *(sub_252B680FC(v61) + 128) = 1;

    type metadata accessor for ControlHomeFiltersResolutionResult();
    v62 = sub_252E2B068(v59);

    return v62;
  }

  else
  {

    v68 = v103;
    if (v107)
    {
      v70 = v112;
      v69 = v113;
      v71 = v109;
      (*(v112 + 104))(v109, *MEMORY[0x277D5FC70], v113);
      v73 = v110;
      v72 = v111;
      v74 = v108;
      (*(v110 + 104))(v108, *MEMORY[0x277D5FC50], v111);
      sub_252936298(v71, v74);
      (*(v73 + 8))(v74, v72);
      (*(v70 + 8))(v71, v69);
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v75 = sub_252E36AD4();
    __swift_project_value_buffer(v75, qword_27F544C40);
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_252E379F4();

    v115 = 0xD000000000000029;
    v116 = 0x8000000252E7C270;
    v76 = type metadata accessor for HomeFilter();
    v77 = v105;
    v78 = MEMORY[0x2530AD730](v105, v76);
    MEMORY[0x2530AD570](v78);

    sub_252CC3D90(v115, v116, 0xD00000000000008DLL, 0x8000000252E7BF00);

    v80 = sub_252B680FC(v79);

    *(v80 + 128) = 1;

    return v77;
  }
}

id sub_252B1B500(unint64_t a1, void *a2)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C40);
  sub_252E379F4();

  v46 = 0xD000000000000027;
  v47 = 0x8000000252E7C0B0;
  v4 = [a2 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000027, 0x8000000252E7C0B0, 0xD00000000000008DLL, 0x8000000252E7BF00);

  v8 = [a2 disambiguationItems];
  v9 = sub_252E37264();

  v10 = sub_252A9E238(v9);

  if (!v10)
  {
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD00000000000008DLL, 0x8000000252E7BF00, 0xD000000000000019, 0x8000000252E7C0E0, 469);

    return a2;
  }

  v11 = sub_252A6D8E8(v10);
  sub_252A6E17C(a1);
  v13 = v12;
  v45 = 0;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_16;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_16;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_43:
      v21 = MEMORY[0x2530ADF00](0, v13);
      goto LABEL_25;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;
  v17 = [v15 homeEntityName];
  if (v17 || (v17 = [v16 outerDeviceName]) != 0)
  {
    v18 = v17;

    sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E7C1B0, 0xD00000000000008DLL, 0x8000000252E7BF00);
    type metadata accessor for ControlHomeFiltersResolutionResult();
    v19 = sub_252E2B004(v16);

    return v19;
  }

LABEL_16:
  if ((v11 | 2) != 3)
  {

LABEL_27:

    v10 = v13;
    goto LABEL_28;
  }

  if (v14)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_28;
    }
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_28;
    }
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v21 = *(v13 + 32);
LABEL_25:
  v22 = v21;
  v23 = [v21 homeEntityName];

  if (v23)
  {

    goto LABEL_27;
  }

LABEL_28:

  v24 = sub_252B122D4(v10, v11, v13, &v45);

  swift_bridgeObjectRelease_n();
  if (!v24)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E7C100);
    v38 = [a2 description];
    v39 = sub_252E36F34();
    v41 = v40;

    MEMORY[0x2530AD570](v39, v41);

    sub_252CC3D90(v46, v47, 0xD00000000000008DLL, 0x8000000252E7BF00);

    v42 = v45;
    v19 = a2;

    return v19;
  }

  v25 = v24;
  v26 = v25;
  if (![v25 deviceType])
  {
    v26 = v25;
    if (v45)
    {
      v27 = v45;
      v26 = sub_252A20280(v27);
    }
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000058, 0x8000000252E7C150);
  v28 = [v26 description];
  v29 = sub_252E36F34();
  v31 = v30;

  MEMORY[0x2530AD570](v29, v31);

  sub_252CC3D90(v46, v47, 0xD00000000000008DLL, 0x8000000252E7BF00);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252E3C130;
  *(v32 + 32) = v26;
  v33 = v26;
  v34 = sub_252A7564C(v32);
  v36 = v35;

  type metadata accessor for ControlHomeFiltersResolutionResult();
  if (v36)
  {
    v37 = sub_252E2B004(v33);
  }

  else
  {
    v37 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  }

  v43 = v37;

  return v43;
}

uint64_t sub_252B1BB50(unint64_t a1, void *a2, char *a3, void *a4, unint64_t a5, unint64_t a6, char *a7, unint64_t a8)
{
  if (qword_27F53F488 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544C40);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E7BEE0, 0xD00000000000008DLL, 0x8000000252E7BF00);
    v17 = sub_252B1A838(a1, a2, a3, a4, a5, a6, a7, a8);
    a8 = v17;
    if (v18)
    {
      v19 = v17;
      v20 = sub_252B680FC(v19);
      swift_beginAccess();
      v21 = *(v20 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = *(v21 + 504 * v22 - 86);

        if (v23 == 1)
        {
          v25 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v24);
          sub_252929E74((v25 + 288), &v74);

          v26 = v76;
          v27 = v77;
          __swift_project_boxed_opaque_existential_1(&v74, v76);
          v28 = (*(v27 + 152))(v26, v27);
          v24 = __swift_destroy_boxed_opaque_existential_1(&v74);
          if ((v28 & 1) == 0)
          {
            v29 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v24);
            sub_252929E74((v29 + 368), &v74);

            v30 = _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(&v74);
            __swift_destroy_boxed_opaque_existential_1(&v74);
            if (v30 >> 62)
            {
              v31 = sub_252E378C4();
            }

            else
            {
              v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v31)
            {
              sub_252CC3D90(0xD000000000000046, 0x8000000252E7C030, 0xD00000000000008DLL, 0x8000000252E7BF00);
              v32 = type metadata accessor for HomeFilter();
              v33 = MEMORY[0x2530AD730](v30, v32);
              sub_252CC3D90(v33, v34, 0xD00000000000008DLL, 0x8000000252E7BF00);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v35 = swift_allocObject();
              *(v35 + 16) = xmmword_252E3C130;
              v36 = sub_252B1B500(v30, v19);

              *(v35 + 32) = v36;
LABEL_36:
              sub_252B1C4F8(a8, 1);
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
      }

      v41 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v24);
      sub_252929E74((v41 + 288), &v74);

      v42 = v76;
      v43 = v77;
      __swift_project_boxed_opaque_existential_1(&v74, v76);
      v44 = (*(v43 + 8))(v42, v43);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      if (v44)
      {
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E7BFB0);
        v45 = [v19 description];
        v46 = sub_252E36F34();
        v48 = v47;

        MEMORY[0x2530AD570](v46, v48);

        sub_252CC3D90(v74, v75, 0xD00000000000008DLL, 0x8000000252E7BF00);

        type metadata accessor for SiriRemembersProvider();
        inited = swift_initStackObject();
        strcpy((inited + 16), "HomeAutomation");
        *(inited + 31) = -18;
        *(inited + 32) = 0xD00000000000001DLL;
        *(inited + 40) = 0x8000000252E73EE0;
        *(inited + 48) = 0xD000000000000011;
        *(inited + 56) = 0x8000000252E73F00;
        v50 = sub_252E144A4(v19);
        if (v50)
        {
          v51 = v50;
          v74 = 0;
          v75 = 0xE000000000000000;
          sub_252E379F4();

          v74 = 0xD000000000000020;
          v75 = 0x8000000252E7C000;
          v52 = [v51 description];
          v53 = sub_252E36F34();
          v55 = v54;

          MEMORY[0x2530AD570](v53, v55);

          sub_252CC3D90(v74, v75, 0xD00000000000008DLL, 0x8000000252E7BF00);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_252E3C130;
          *(v35 + 32) = v51;
          v56 = v51;
          sub_252B1C4F8(a8, 1);
          sub_252B1C4F8(a8, 1);

          swift_setDeallocating();

          return v35;
        }

        swift_setDeallocating();
      }

      v57 = v19;
      if ([v57 resolutionResultCode] == 3)
      {
        v58 = [v57 itemToConfirm];
        sub_252B1C4F8(a8, 1);
        sub_252E377F4();
        swift_unknownObjectRelease();
        type metadata accessor for HomeFilter();
        if (swift_dynamicCast())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_252E3C130;
          *(v59 + 32) = v73;
          v60 = v73;
          v61 = sub_252A7564C(v59);
          v63 = v62;

          if ((v63 & 1) == 0)
          {
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_252E3C130;
            type metadata accessor for ControlHomeFiltersResolutionResult();
            *(v35 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];

            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_252B1C4F8(a8, 1);
      }

      v74 = 0;
      v75 = 0xE000000000000000;
      sub_252E379F4();

      v74 = 0xD00000000000001BLL;
      v75 = 0x8000000252E7BF90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_252E3C130;
      *(v64 + 32) = v57;
      v65 = type metadata accessor for ControlHomeFiltersResolutionResult();
      v66 = v57;
      v67 = MEMORY[0x2530AD730](v64, v65);
      v69 = v68;

      MEMORY[0x2530AD570](v67, v69);

      sub_252CC3D90(v74, v75, 0xD00000000000008DLL, 0x8000000252E7BF00);

      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_252E3C130;
      *(v35 + 32) = v66;
LABEL_37:
      v70 = a8;
      v71 = 1;
      goto LABEL_45;
    }

    sub_252CC3D90(0xD000000000000026, 0x8000000252E7C080, 0xD00000000000008DLL, 0x8000000252E7BF00);
    v37 = sub_252A7564C(a1);
    if ((v38 & 1) == 0)
    {
      break;
    }

    v74 = MEMORY[0x277D84F90];
    a6 = a8 & 0xFFFFFFFFFFFFFF8;
    if (a8 >> 62)
    {
      a2 = sub_252E378C4();
      if (!a2)
      {
LABEL_43:
        v35 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      a2 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        goto LABEL_43;
      }
    }

    a1 = 0;
    a5 = a8 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v39 = MEMORY[0x2530ADF00](a1, a8);
      }

      else
      {
        if (a1 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v39 = *(a8 + 8 * a1 + 32);
      }

      a7 = v39;
      a4 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      a3 = sub_252E2B004(a7);

      MEMORY[0x2530AD700]();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a7 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++a1;
      if (a4 == a2)
      {
        v35 = v74;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v40 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_252E3C130;
  type metadata accessor for ControlHomeFiltersResolutionResult();
  *(v35 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_44:
  v70 = a8;
  v71 = 0;
LABEL_45:
  sub_252B1C4F8(v70, v71);
  return v35;
}

void sub_252B1C4F8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252B1C504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_252B1C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433B8, &qword_252E4B808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252B1C61C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyGetCarbonDetectedHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_252B1C650(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

    return;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    v12 = v9;
    v13 = 1;
LABEL_48:
    sub_252929F10(v12, v13);
    return;
  }

  if (v9 >> 62)
  {
    v14 = sub_252E378C4();
    if (!v14)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_47;
    }
  }

  v15 = [a1 userTask];
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = v15;
  if ([v15 taskType] == 4)
  {

    goto LABEL_13;
  }

  v17 = [v16 taskType];

  if (v17 != 5)
  {
LABEL_47:
    v12 = v9;
    v13 = 0;
    goto LABEL_48;
  }

LABEL_13:
  v18 = [a1 userTask];
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = v18;
  v20 = [v18 attribute];

  if (v20 == 32)
  {
    v21 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2530ADF00](v21, v9);
        v23 = __OFADD__(v21++, 1);
        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v22 = *(v9 + 32 + 8 * v21);

        v23 = __OFADD__(v21++, 1);
        if (v23)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          sub_252C515AC();
          break;
        }
      }

      v24 = (*(*v22 + 336))();
      v25 = *(v24 + 16);
      v26 = 32;
      while (v25)
      {
        v27 = *(v24 + v26);
        v26 += 8;
        --v25;
        if (v27 == 33)
        {
LABEL_45:

          sub_252929F10(v9, 0);
          return;
        }
      }
    }

    while (v21 != v14);
  }

  v28 = [a1 userTask];
  if (!v28)
  {
    goto LABEL_44;
  }

  v29 = v28;
  v30 = [v28 attribute];

  if (v30 != 35)
  {
    goto LABEL_47;
  }

  v31 = 0;
  while ((v9 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x2530ADF00](v31, v9);
    v23 = __OFADD__(v31++, 1);
    if (v23)
    {
      goto LABEL_43;
    }

LABEL_35:
    v33 = (*(*v32 + 336))();
    v34 = *(v33 + 16);
    v35 = 32;
    while (v34)
    {
      v36 = *(v33 + v35);
      v35 += 8;
      --v34;
      if (v36 == 36)
      {
        goto LABEL_45;
      }
    }

    if (v31 == v14)
    {
      goto LABEL_47;
    }
  }

  if (v31 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  v32 = *(v9 + 32 + 8 * v31);

  v23 = __OFADD__(v31++, 1);
  if (!v23)
  {
    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  sub_252929F10(v9, 0);
  sub_252C515AC();
}

id sub_252B1C9FC(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v11 = sub_252D6CA80(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    if (v14 == 32)
    {
      if (v11)
      {
        v11[3] = 33;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v2, qword_27F544DA8);
      (*(v3 + 16))(v8, v15, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E7CC90);
      if (v11)
      {
        v16 = v11[3];
      }

      else
      {
        v16 = 0;
      }

      v30 = v16;
      v31 = v11 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
      v17 = sub_252E36F94();
      MEMORY[0x2530AD570](v17);

      sub_252CC3D90(v32, v33, 0xD000000000000097, 0x8000000252E7CBF0);

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    sub_252C515AC();
  }

  v18 = [a1 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 attribute];

    if (v20 == 35)
    {
      if (v11)
      {
        v11[3] = 36;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v2, qword_27F544DA8);
      (*(v3 + 16))(v6, v21, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E7CBB0);
      if (v11)
      {
        v22 = v11[3];
      }

      else
      {
        v22 = 0;
      }

      v30 = v22;
      v31 = v11 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
      v24 = sub_252E36F94();
      MEMORY[0x2530AD570](v24);

      sub_252CC3D90(v32, v33, 0xD000000000000097, 0x8000000252E7CBF0);

      (*(v3 + 8))(v6, v2);
      if (!v11)
      {
        goto LABEL_28;
      }

LABEL_25:

      v23 = sub_252D6CB58();

      goto LABEL_29;
    }
  }

  else
  {
    sub_252C515AC();
  }

  if (v11)
  {
    goto LABEL_25;
  }

LABEL_28:
  v23 = 0;
LABEL_29:
  v25 = [a1 filters];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for HomeFilter();
    v27 = sub_252E37264();
  }

  else
  {
    v27 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v28 = sub_252D473EC(v23, v27);

  return v28;
}

uint64_t AutomateHomeRCHStrategy.__allocating_init(locationService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v10 = *(a1 + 24);
  v3 = v10;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  *(v2 + 40) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_0, v7, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void *AutomateHomeRCHStrategy.init(locationService:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_252B1D948(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_252B1D0E0()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v4 = sub_2529C8644(v3);
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

uint64_t sub_252B1D1D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252B1DA08(a1);
}

uint64_t sub_252B1D278(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return sub_252B1DD88(a1, a2);
}

uint64_t AutomateHomeRCHStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_252B1D384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252B1DA08(a1);
}

uint64_t sub_252B1D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AutomateHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252B1D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_252B1D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_252B1D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_252B1D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252B1D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252B1D894(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252B1DD88(a1, a2);
}

void *sub_252B1D948(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
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

uint64_t sub_252B1DA28()
{
  sub_252AB3FEC(v0[191], 0, v0 + 65);
  memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    v1 = v0[191];
    sub_2529515FC(3, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for AutomateHomeError(0);
    sub_252B1E3C0(&qword_27F543410, 255, type metadata accessor for AutomateHomeError, aU_24);
    swift_allocError();
    v3 = v2;
    v4 = sub_252E34164();
    (*(*(v4 - 8) + 16))(v3, v1, v4);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    memcpy(v0 + 128, v0 + 2, 0x1F8uLL);
    v7 = swift_task_alloc();
    v0[192] = v7;
    *v7 = v0;
    v7[1] = sub_252B1DC20;

    return sub_252B5D2B0();
  }
}

uint64_t sub_252B1DC20(uint64_t a1)
{
  *(*v1 + 1544) = a1;

  return MEMORY[0x2822009F8](sub_252B1DD20, 0, 0);
}

uint64_t sub_252B1DD20()
{
  sub_25299F5D4(v0 + 520);
  v1 = *(v0 + 8);
  v2 = *(v0 + 1544);

  return v1(v2);
}

uint64_t sub_252B1DD88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B1DE48, 0, 0);
}

uint64_t sub_252B1DE48()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E7CD20, 0xD00000000000007FLL, 0x8000000252E7CD50);
  v6 = objc_allocWithZone(type metadata accessor for AutomateHomeIntentHandler());

  [v6 init];
  type metadata accessor for AutomateHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t dispatch thunk of AutomateHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25294B7BC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AutomateHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25296BC70;

  return v8(a1, a2);
}

uint64_t type metadata accessor for AutomateHomeError(uint64_t a1)
{
  result = qword_27F543418;
  if (!qword_27F543418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B1E3C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}