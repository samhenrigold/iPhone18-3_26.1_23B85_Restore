uint64_t static Languages.availableLanguages.getter()
{
  if (qword_1ED9A8F40 != -1)
  {
    OUTLINED_FUNCTION_0_38(&qword_1ED9A8F40);
  }
}

unint64_t sub_1B1AC9204()
{
  result = qword_1ED9A9860;
  if (!qword_1ED9A9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9860);
  }

  return result;
}

uint64_t sub_1B1AC9258()
{
  if (qword_1ED9A9590 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED9A9643 == 1)
  {
    if (qword_1EB761468 != -1)
    {
      result = swift_once();
    }

    v0 = byte_1EB7612F0 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  byte_1EB76148D = v0 & 1;
  return result;
}

id sub_1B1AC9310(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_1B1AC934C()
{
  if (qword_1EB761460 != -1)
  {
    swift_once();
  }

  if (byte_1EB76121C)
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_self() isNaturalPlatform];
  }

  byte_1EB761479 = result;
  return result;
}

uint64_t sub_1B1AC93E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762798, &qword_1B1C38A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C38930;
  *(inited + 32) = 256;
  *(inited + 34) = 1;
  if (qword_1ED9A9590 != -1)
  {
    swift_once();
  }

  *(inited + 35) = byte_1ED9A9643;
  *(inited + 36) = 196610;
  *(inited + 40) = 4;
  if (qword_1EB761480 != -1)
  {
    swift_once();
  }

  *(inited + 41) = byte_1EB76148D;
  *(inited + 42) = 5;
  if (qword_1EB761470 != -1)
  {
    swift_once();
  }

  *(inited + 43) = byte_1EB761479;
  sub_1B1AC9534();
  return sub_1B1C2CAB8();
}

unint64_t sub_1B1AC9534()
{
  result = qword_1EB7613A0;
  if (!qword_1EB7613A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7613A0);
  }

  return result;
}

unint64_t sub_1B1AC958C()
{
  result = qword_1EB761398;
  if (!qword_1EB761398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761398);
  }

  return result;
}

void *sub_1B1AC960C()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  sub_1B1AC763C();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    sub_1B1AC8160();
  }

  return v3;
}

uint64_t sub_1B1AC965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 4);
  sub_1B1AA101C(a1, v11, &qword_1EB761DE0, &qword_1B1C352C0);

  sub_1B1A9EE20(v11, a2, a3);
  os_unfair_lock_unlock(v3 + 4);

  v7 = OUTLINED_FUNCTION_30_5();
  return sub_1B1A90C20(v7, v8, v9);
}

uint64_t sub_1B1AC9708()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1AC974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 45;
  v31 = 0xE100000000000000;
  v28 = 95;
  v29 = 0xE100000000000000;
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_4();
  v4 = sub_1B1C2D398();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 1634886004;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1851878753;
  *(inited + 56) = 0xE400000000000000;
  v32[0] = sub_1B1C2CBE8();
  v32[1] = v8;
  v27 = v32;
  v9 = sub_1B1ABAA5C(sub_1B1ABAB38, v26, inited);
  swift_setDeallocating();
  sub_1B1AC9708();

  if (!v9)
  {

    return 1;
  }

  v10 = v4 == 0x4E495F6E62 && v6 == 0xE500000000000000;
  if (v10 || (OUTLINED_FUNCTION_5_3(0x4E495F6E62) & 1) != 0)
  {

    if (qword_1EB761430 != -1)
    {
      swift_once();
    }

    return byte_1EB772CF0;
  }

  else
  {
    v12 = v4 == 0x4E495F7567 && v6 == 0xE500000000000000;
    if (v12 || (OUTLINED_FUNCTION_5_3(0x4E495F7567) & 1) != 0)
    {

      if (qword_1ED9A8FA8 != -1)
      {
        swift_once();
      }

      return byte_1ED9AA5BA;
    }

    else
    {
      v13 = v4 == 0x4E495F6968 && v6 == 0xE500000000000000;
      if (v13 || (OUTLINED_FUNCTION_5_3(0x4E495F6968) & 1) != 0)
      {

        if (qword_1ED9A8FA0 != -1)
        {
          swift_once();
        }

        return byte_1ED9AA5B9;
      }

      else
      {
        v14 = v4 == 0x4E495F6E6BLL && v6 == 0xE500000000000000;
        if (v14 || (OUTLINED_FUNCTION_5_3(0x4E495F6E6BLL) & 1) != 0)
        {

          if (qword_1EB761428 != -1)
          {
            swift_once();
          }

          return byte_1EB772CA8;
        }

        else
        {
          v15 = v4 == 0x4E495F6C6DLL && v6 == 0xE500000000000000;
          if (v15 || (OUTLINED_FUNCTION_5_3(0x4E495F6C6DLL) & 1) != 0)
          {

            if (qword_1EB761420 != -1)
            {
              swift_once();
            }

            return byte_1EB772E28;
          }

          else
          {
            v16 = v4 == 0x4E495F726DLL && v6 == 0xE500000000000000;
            if (v16 || (OUTLINED_FUNCTION_5_3(0x4E495F726DLL) & 1) != 0)
            {

              if (qword_1ED9A8F98 != -1)
              {
                swift_once();
              }

              return byte_1ED9AA5B8;
            }

            else
            {
              v17 = v4 == 0x4E495F6170 && v6 == 0xE500000000000000;
              if (v17 || (OUTLINED_FUNCTION_5_3(0x4E495F6170) & 1) != 0)
              {

                if (qword_1EB761410 != -1)
                {
                  swift_once();
                }

                return byte_1EB772D28;
              }

              else
              {
                v18 = v4 == 0x4E495F726FLL && v6 == 0xE500000000000000;
                if (v18 || (OUTLINED_FUNCTION_5_3(0x4E495F726FLL) & 1) != 0)
                {

                  if (qword_1EB761418 != -1)
                  {
                    swift_once();
                  }

                  return byte_1EB772E29;
                }

                else
                {
                  v19 = v4 == 0x4E495F6174 && v6 == 0xE500000000000000;
                  if (v19 || (OUTLINED_FUNCTION_5_3(0x4E495F6174) & 1) != 0)
                  {

                    if (qword_1EB761400 != -1)
                    {
                      swift_once();
                    }

                    return byte_1EB772E2A;
                  }

                  else
                  {
                    v20 = v4 == 0x4E495F6574 && v6 == 0xE500000000000000;
                    if (v20 || (OUTLINED_FUNCTION_5_3(0x4E495F6574) & 1) != 0)
                    {

                      if (qword_1EB7613F8 != -1)
                      {
                        swift_once();
                      }

                      return byte_1EB772E2B;
                    }

                    else
                    {
                      v21 = v4 == 0x4E495F7275 && v6 == 0xE500000000000000;
                      if (v21 || (OUTLINED_FUNCTION_5_3(0x4E495F7275) & 1) != 0)
                      {

                        if (qword_1EB7613F0 != -1)
                        {
                          swift_once();
                        }

                        return byte_1EB772E2C;
                      }

                      else
                      {
                        v22 = v4 == 0x4E495F7361 && v6 == 0xE500000000000000;
                        if (v22 || (OUTLINED_FUNCTION_5_3(0x4E495F7361) & 1) != 0)
                        {

                          if (qword_1EB761438 != -1)
                          {
                            swift_once();
                          }

                          return byte_1EB772E2D;
                        }

                        else
                        {
                          v23 = v4 == 0x4E495F696E6DLL && v6 == 0xE600000000000000;
                          if (v23 || (sub_1B1C2D7A8() & 1) != 0)
                          {

                            if (qword_1EB7613E0 != -1)
                            {
                              swift_once();
                            }

                            return byte_1EB772E2E;
                          }

                          else
                          {
                            if (v4 == 0x4E495F6E65 && v6 == 0xE500000000000000)
                            {
                            }

                            else
                            {
                              v25 = OUTLINED_FUNCTION_5_3(0x4E495F6E65);

                              result = 0;
                              if ((v25 & 1) == 0)
                              {
                                return result;
                              }
                            }

                            if (qword_1ED9A8FB8 != -1)
                            {
                              swift_once();
                            }

                            return byte_1ED9AA5BB;
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

char *sub_1B1AC9DF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

uint64_t sub_1B1AC9E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1B1C2D888();
  v5 = a3(a2);
  OUTLINED_FUNCTION_54(v5);

  return sub_1B1C2D8E8();
}

uint64_t sub_1B1AC9E94(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1B1C2D888();
  a2(a1);
  sub_1B1C2CC48();

  v5 = sub_1B1C2D8E8();

  return a3(a1, v5);
}

uint64_t sub_1B1AC9F5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1B1AC9F30(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

void sub_1B1AC9FA8()
{
  OUTLINED_FUNCTION_34_2();
  sub_1B1AA63F4(v1, v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

void *sub_1B1AC9FE4(unint64_t a1, char *a2)
{
  LOBYTE(v5) = sub_1B1C2D098();
  if (qword_1ED9A99B8 != -1)
  {
LABEL_137:
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v6 = qword_1ED9AA668;
  *&v210 = a2;
  if (os_log_type_enabled(qword_1ED9AA668, v5))
  {
    v7 = OUTLINED_FUNCTION_21_0();
    v8 = swift_slowAlloc();
    *&aBlock = v8;
    *v7 = 136446210;
    v9 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v10 = MEMORY[0x1B2738350](a1, v9);
    v12 = sub_1B1A930E4(v10, v11, &aBlock);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v5, "Listing asset types %{public}s through XPC service...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1AEF968();
  v13 = *(v2 + 4);
  if (v13)
  {
    v14 = sub_1B1A9547C();
    if (v14)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];
      swift_unknownObjectRetain();
      sub_1B1C2D5B8();
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v15 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B2738A20](v15, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        v18 = [v16 string];
        sub_1B1C2CB58();

        v19 = sub_1B1C2CBF8();

        xpc_string_create((v19 + 32));

        sub_1B1C2D588();
        v5 = *(aBlock + 16);
        sub_1B1C2D5C8();
        OUTLINED_FUNCTION_92();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      while (v14 != v15);
      v20 = aBlock;
      a2 = v210;
    }

    else
    {
      swift_unknownObjectRetain();
      v20 = MEMORY[0x1E69E7CC0];
    }

    v204 = v6;
    connection = v13;
    if (!(v20 >> 62))
    {
      v23 = v20 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v24 = v23 + 32;
      goto LABEL_18;
    }

    if (!OUTLINED_FUNCTION_10_11())
    {
      v24 = -8;
LABEL_18:
      v209 = xpc_array_create(v24, v14);
      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
      v223 = MEMORY[0x1E69E7CC0];
      v2 = a2 + 64;
      OUTLINED_FUNCTION_19_4();
      v27 = v26 & v25;
      v29 = (v28 + 63) >> 6;

      v30 = 0;
      v206 = MEMORY[0x1E69E7CC8];
      v31 = MEMORY[0x1E69E6158];
      v211 = a2 + 64;
      if (!v27)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v32 = v30;
LABEL_24:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v33 | (v32 << 6);
        v35 = *(*(a2 + 6) + 8 * v34);
        sub_1B1A93378(*(a2 + 7) + 32 * v34, v219);
        *&v220 = v35;
        sub_1B1A9EEE0(v219, (&v220 + 8));
LABEL_25:
        aBlock = v220;
        v216 = v221;
        v217 = v222;
        if (!v222)
        {

          sub_1B1A9547C();
          if (v14 >> 62)
          {
            v200 = sub_1B1C2D468();

            if (v200)
            {
              sub_1B1B37204(v14);
            }
          }

          else
          {
          }

          v165 = OUTLINED_FUNCTION_43_0();
          v167 = xpc_array_create(v165, v166);
          swift_unknownObjectRelease();
          type metadata accessor for TTSAsset();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762508, &qword_1B1C380B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B1C36280;
          *(inited + 32) = 1;
          *(inited + 40) = v209;
          *(inited + 48) = 2;
          *(inited + 56) = v167;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
          sub_1B1AE6CC8();
          sub_1B1C2CAB8();
          sub_1B1AEFB90();
          v170 = v169;

          v171 = sub_1B1C2D0A8();
          if (qword_1ED9A9500 != -1)
          {
            OUTLINED_FUNCTION_12_6(&qword_1ED9A9500);
          }

          v212 = qword_1ED9AA628;
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v173 = OUTLINED_FUNCTION_54_0(v172);
          v210 = xmmword_1B1C361C0;
          *(v173 + 16) = xmmword_1B1C361C0;
          if ([v170 respondsToSelector_])
          {
            v174 = [v170 debugDescription];
            v175 = sub_1B1C2CB58();
            v177 = v176;
          }

          else
          {
            v175 = 0;
            v177 = 0;
          }

          *(v173 + 56) = v31;
          v178 = sub_1B1AC9204();
          *(v173 + 64) = v178;
          if (v177)
          {
            v179 = v175;
          }

          else
          {
            v179 = 0;
          }

          v180 = 0xE000000000000000;
          if (v177)
          {
            v180 = v177;
          }

          *(v173 + 32) = v179;
          *(v173 + 40) = v180;

          sub_1B1C2C7C8(v171, &dword_1B1A8A000, v212, "-> %@", 5, 2, v173);

          v181 = xpc_connection_send_message_with_reply_sync(connection, v170);
          v182 = MEMORY[0x1B273A270]();
          v207 = v170;
          if (v182 == sub_1B1C2C8D8())
          {
            v203 = sub_1B1C2D0A8();
            v183 = OUTLINED_FUNCTION_54_0(v172);
            *(v183 + 16) = xmmword_1B1C361C0;
            v184 = [v181 description];
            v185 = sub_1B1C2CB58();
            v186 = v167;
            v188 = v187;

            *(v183 + 56) = v31;
            *(v183 + 64) = v178;
            *(v183 + 32) = v185;
            *(v183 + 40) = v188;
            v167 = v186;
            sub_1B1C2C7C8(v203, &dword_1B1A8A000, v212, "<- %@", 5, 2, v183);
          }

          swift_getObjectType();
          v189 = sub_1B1AE03A8(3);
          if (v189)
          {
            v14 = v189;
            a2 = v167;
            v190 = sub_1B1C2D0A8();
            v191 = OUTLINED_FUNCTION_54_0(v172);
            *(v191 + 16) = xmmword_1B1C361C0;
            count = xpc_array_get_count(v14);
            v193 = MEMORY[0x1E69E65A8];
            *(v191 + 56) = MEMORY[0x1E69E6530];
            *(v191 + 64) = v193;
            *(v191 + 32) = count;
            sub_1B1C2C7C8(v190, &dword_1B1A8A000, v212, "<- %d assets", v202);

            *&v220 = MEMORY[0x1E69E7CC0];
            v194 = swift_allocObject();
            *(v194 + 16) = &v220;
            a1 = swift_allocObject();
            *(a1 + 16) = sub_1B1AE5EF8;
            *(a1 + 24) = v194;
            v217 = sub_1B1AE5960;
            v218 = a1;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v216 = sub_1B1AE5908;
            *(&v216 + 1) = &block_descriptor_8;
            v5 = _Block_copy(&aBlock);

            v195 = OUTLINED_FUNCTION_30_4();
            xpc_array_apply(v195, v196);
            _Block_release(v5);
            LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

            if (v5)
            {
              goto LABEL_143;
            }

            if (v206[2])
            {
              v197 = v220;

              v22 = sub_1B1AB3170(v206, v197);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v22 = v220;
            }
          }

          else
          {

            v198 = sub_1B1C2D0B8();
            v22 = MEMORY[0x1E69E7CC0];
            sub_1B1C2C7C8(v198, &dword_1B1A8A000, v204, "Failed to get value from xpc reply, return empty results from proxy assets", 74, 2, MEMORY[0x1E69E7CC0]);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          return v22;
        }

        a1 = aBlock;
        sub_1B1A9EEE0((&aBlock + 8), &v220);
        xpc_int64_create(a1);
        MEMORY[0x1B2738320]();
        OUTLINED_FUNCTION_43_4();
        if (v37)
        {
          OUTLINED_FUNCTION_19_1(v36);
          sub_1B1C2CE98();
        }

        OUTLINED_FUNCTION_92();
        sub_1B1C2CEC8();
        v14 = v223;
        sub_1B1A93378(&v220, v219);
        LOBYTE(v5) = MEMORY[0x1E69E7CA0];
        v38 = swift_dynamicCast();
        if (v38)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_4_10(v38, v39, v40, v41, v42, v43, v44, v45, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
        if (swift_dynamicCast())
        {
          LOBYTE(v5) = value[1];
          v47 = sub_1B1C2CBF8();

          xpc_string_create((v47 + 32));

          goto LABEL_32;
        }

        v49 = sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
        OUTLINED_FUNCTION_4_10(v49, v50, v51, v49, v52, v53, v54, v55, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
        v56 = swift_dynamicCast();
        if (v56)
        {
          v64 = value[0];
          v65 = [value[0] string];
          sub_1B1C2CB58();

          v5 = sub_1B1C2CBF8();

          a1 = xpc_string_create((v5 + 32));

          MEMORY[0x1B2738320](v66);
          v67 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67 >> 1)
          {
            OUTLINED_FUNCTION_19_1(v67);
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();

          goto LABEL_35;
        }

        OUTLINED_FUNCTION_4_10(v56, v57, v58, v59, v60, v61, v62, v63, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
        if (swift_dynamicCast() || (type metadata accessor for TTSAssetVoiceGender(0), OUTLINED_FUNCTION_4_10(v68, v69, v70, v68, v71, v72, v73, v74, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]), v75 = swift_dynamicCast(), v75))
        {
LABEL_29:
          v46 = xpc_int64_create(value[0]);
        }

        else
        {
          OUTLINED_FUNCTION_4_10(v75, v76, v77, v78, v79, v80, v81, v82, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
          if (!swift_dynamicCast())
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
            OUTLINED_FUNCTION_4_10(v83, v84, v85, v83, v86, v87, v88, v89, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
            if (swift_dynamicCast())
            {
              v90 = value[0];
              a1 = *(value[0] + 16);
              if (a1)
              {
                OUTLINED_FUNCTION_33_1();
                v91 = v90 + 40;
                v92 = a1;
                do
                {
                  v93 = sub_1B1C2CBF8();

                  xpc_string_create((v93 + 32));

                  sub_1B1C2D588();
                  v5 = *(v213 + 16);
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5C8();
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v91 += 16;
                  --v92;
                }

                while (v92);

                v94 = v213;
                a2 = v210;
                v31 = MEMORY[0x1E69E6158];
              }

              else
              {

                v94 = MEMORY[0x1E69E7CC0];
              }

              if (v94 >> 62)
              {
                if (!OUTLINED_FUNCTION_10_11())
                {
                  v126 = -8;
                  goto LABEL_85;
                }

                v146 = sub_1B1B37204(v160);
                OUTLINED_FUNCTION_21_4();
                swift_bridgeObjectRelease_n();
LABEL_84:
                v126 = v146 + 32;
LABEL_85:
                v145 = a1;
LABEL_86:
                xpc_array_create(v126, v145);
                v46 = swift_unknownObjectRelease();
                goto LABEL_32;
              }

LABEL_83:
              v146 = v94 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_84;
            }

            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762518, &unk_1B1C380D0);
            OUTLINED_FUNCTION_4_10(v95, v96, v97, v95, v98, v99, v100, v101, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
            if (swift_dynamicCast())
            {
              v14 = value[0];
              if (value[0] >> 62)
              {
                v5 = sub_1B1C2D468();
              }

              else
              {
                v5 = *((value[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v102 = MEMORY[0x1E69E7CC0];
              v207 = v5;
              if (v5)
              {
                v213 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_27_4();
                sub_1B1C2D5B8();
                if (v5 < 0)
                {
                  goto LABEL_144;
                }

                v103 = 0;
                a1 = v14 & 0xC000000000000001;
                do
                {
                  if (a1)
                  {
                    v104 = MEMORY[0x1B2738A20](v103, v14);
                  }

                  else
                  {
                    v104 = *(v14 + 8 * v103 + 32);
                  }

                  v105 = v104;
                  ++v103;
                  v106 = [v104 string];
                  sub_1B1C2CB58();

                  v107 = sub_1B1C2CBF8();

                  xpc_string_create((v107 + 32));

                  sub_1B1C2D588();
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5C8();
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v5 = v207;
                  a2 = v210;
                  v31 = MEMORY[0x1E69E6158];
                }

                while (v207 != v103);

                v102 = v213;
              }

              else
              {
              }

              if (v102 >> 62)
              {
                if (OUTLINED_FUNCTION_10_11())
                {

                  v162 = sub_1B1B37204(v161);
                  OUTLINED_FUNCTION_21_4();
                  swift_bridgeObjectRelease_n();
                  v126 = (v162 + 4);
                }

                else
                {
                  v126 = -8;
                }

                a2 = v210;
                v31 = MEMORY[0x1E69E6158];
                v5 = v207;
              }

              else
              {
                v126 = (v102 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v145 = v5;
              goto LABEL_86;
            }

            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
            OUTLINED_FUNCTION_4_10(v108, v109, v110, v108, v111, v112, v113, v114, v202, v204, connection, v206, v208, v209, v210, *(&v210 + 1), v211, v213, value[0]);
            if (swift_dynamicCast())
            {
              v115 = value[0];
              a1 = *(value[0] + 16);
              if (a1)
              {
                OUTLINED_FUNCTION_33_1();
                v116 = 32;
                v117 = a1;
                do
                {
                  LOBYTE(v5) = xpc_int64_create(*(v115 + v116));
                  v118 = sub_1B1C2D588();
                  OUTLINED_FUNCTION_49_2(v118, v119, v120, v121, v122, v123, v124, v125, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213);
                  OUTLINED_FUNCTION_30_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v116 += 8;
                  --v117;
                }

                while (v117);
                goto LABEL_76;
              }

LABEL_81:

              v94 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762528, &unk_1B1C380E0);
              OUTLINED_FUNCTION_4_10(v127, v128, v129, v127, v130, v131, v132, v133, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213, value[0]);
              if (!swift_dynamicCast())
              {
                sub_1B1A93378(&v220, value);
                HIDWORD(v202) = swift_isUniquelyReferenced_nonNull_native();
                v213 = v206;
                v147 = sub_1B1AB2878(a1);
                v148 = v206[2];
                LODWORD(v207) = v149;
                v150 = (v149 & 1) == 0;
                LOBYTE(v5) = v148 + v150;
                if (__OFADD__(v148, v150))
                {
                  goto LABEL_145;
                }

                v151 = v147;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
                if (sub_1B1C2D628())
                {
                  v152 = sub_1B1AB2878(a1);
                  v154 = v207;
                  if ((v207 & 1) != (v153 & 1))
                  {
                    type metadata accessor for TTSAssetProperty(0);
                    result = sub_1B1C2D818();
                    __break(1u);
                    return result;
                  }

                  v151 = v152;
                }

                else
                {
                  v154 = v207;
                }

                LOBYTE(v5) = v206;
                if (v154)
                {
                  v155 = (v206[7] + 32 * v151);
                  __swift_destroy_boxed_opaque_existential_0(v155);
                  sub_1B1A9EEE0(value, v155);
                }

                else
                {
                  v206[(v151 >> 6) + 8] |= 1 << v151;
                  *(v206[6] + 8 * v151) = a1;
                  sub_1B1A9EEE0(value, (v206[7] + 32 * v151));
                  OUTLINED_FUNCTION_38_2();
                  if (v157)
                  {
                    goto LABEL_148;
                  }

                  v206[2] = v156;
                }

                v2 = v211;
                v5 = v14 >> 62;
                if (v14 >> 62)
                {
                  if (!sub_1B1C2D468())
                  {
                    goto LABEL_146;
                  }
                }

                else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_146;
                }

                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
                {
                  v14 = sub_1B1C00F10(v14);
                }

                v159 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v159)
                {
                  goto LABEL_147;
                }

                *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v159 - 1;
                swift_unknownObjectRelease();
                v223 = v14;
                __swift_destroy_boxed_opaque_existential_0(&v220);
                goto LABEL_36;
              }

              v134 = value[0];
              a1 = *(value[0] + 16);
              if (!a1)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_33_1();
              v135 = 32;
              v136 = a1;
              do
              {
                LOBYTE(v5) = xpc_int64_create(*(v134 + v135));
                v137 = sub_1B1C2D588();
                OUTLINED_FUNCTION_49_2(v137, v138, v139, v140, v141, v142, v143, v144, v202, v204, connection, v206, v207, v209, v210, *(&v210 + 1), v211, v213);
                OUTLINED_FUNCTION_30_4();
                sub_1B1C2D5D8();
                sub_1B1C2D598();
                v135 += 8;
                --v136;
              }

              while (v136);
LABEL_76:

              v94 = v213;
              a2 = v210;
              v31 = MEMORY[0x1E69E6158];
            }

            if (v94 >> 62)
            {
              if (OUTLINED_FUNCTION_10_11())
              {

                v164 = sub_1B1B37204(v163);
                OUTLINED_FUNCTION_21_4();
                swift_bridgeObjectRelease_n();
                v126 = (v164 + 4);
              }

              else
              {
                v126 = -8;
              }

              a2 = v210;
              v31 = MEMORY[0x1E69E6158];
              goto LABEL_85;
            }

            goto LABEL_83;
          }

          v46 = xpc_BOOL_create(value[0]);
        }

LABEL_32:
        MEMORY[0x1B2738320](v46);
        OUTLINED_FUNCTION_43_4();
        if (v37)
        {
          OUTLINED_FUNCTION_19_1(v48);
          sub_1B1C2CE98();
        }

        OUTLINED_FUNCTION_92();
        sub_1B1C2CEC8();
LABEL_35:
        __swift_destroy_boxed_opaque_existential_0(&v220);
        v14 = v223;
        v2 = v211;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(v219);
        if (!v27)
        {
LABEL_20:
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= v29)
            {
              v27 = 0;
              v222 = 0;
              v220 = 0u;
              v221 = 0u;
              goto LABEL_25;
            }

            v27 = *&v2[8 * v32];
            ++v30;
            if (v27)
            {
              v30 = v32;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_137;
        }
      }
    }

LABEL_149:

    v23 = sub_1B1B37204(v201);
    OUTLINED_FUNCTION_21_4();
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  v21 = sub_1B1C2D0B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B1C2C7C8(v21, &dword_1B1A8A000, v6, "Failed to establish connection, return empty result from proxy assets", 69, 2, MEMORY[0x1E69E7CC0]);
  return v22;
}

uint64_t sub_1B1ACB1D0(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0x656E6F685069;
      break;
    case 2:
      result = 1685016681;
      break;
    case 3:
      result = 3158381;
      break;
    case 4:
      result = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000;
      break;
    case 5:
      result = 0x6267385F333168;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B1ACB28C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x636972656E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x656E6F685069;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1685016681;
          break;
        case 3:
          v7 = 0xE300000000000000;
          v8 = 3158381;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x58416C617275656ELL;
          break;
        case 5:
          v8 = 0x6267385F333168;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x636972656E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1685016681;
          break;
        case 3:
          v9 = 0xE300000000000000;
          v10 = 3158381;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x58416C617275656ELL;
          break;
        case 5:
          v10 = 0x6267385F333168;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1B1C2D7A8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

id TTSAsset.init()()
{
  *&v0[OBJC_IVAR___TTSAsset_age] = 0;
  *&v0[OBJC_IVAR___TTSAsset_downloadSize] = 0;
  *&v0[OBJC_IVAR___TTSAsset_diskSize] = 0;
  *&v0[OBJC_IVAR___TTSAsset_bundle] = 0;
  v1 = &v0[OBJC_IVAR___TTSAsset____lazy_storage___brand];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TTSAsset();
  return objc_msgSendSuper2(&v3, sel_init);
}

const char *sub_1B1ACB580(char a1)
{
  result = "use_F25Voices_bnIN";
  switch(a1)
  {
    case 1:
      result = "use_F25Voices_guIN";
      break;
    case 2:
      result = "use_F25Voices_hiIN";
      break;
    case 3:
      result = "use_F25Voices_knIN";
      break;
    case 4:
      result = "use_F25Voices_mlIN";
      break;
    case 5:
      result = "use_F25Voices_mrIN";
      break;
    case 6:
      result = "use_F25Voices_paIN";
      break;
    case 7:
      result = "use_F25Voices_orIN";
      break;
    case 8:
      result = "use_F25Voices_taIN";
      break;
    case 9:
      result = "use_F25Voices_teIN";
      break;
    case 10:
      result = "use_F25Voices_urIN";
      break;
    case 11:
      result = "use_F25Voices_asIN";
      break;
    case 12:
      result = "use_F25Voices_mniIN";
      break;
    case 13:
      result = "use_F25Voices_enIN";
      break;
    case 14:
      result = "use_W25Voices_ptPT";
      break;
    case 15:
      result = "next_gen_voice";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1ACB6B8(uint64_t a1)
{
  result = MEMORY[0x1B2738440](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1B1ACB778(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1B1ACB778(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1B1C2D888();
  sub_1B1C2CC48();
  sub_1B1C2D8E8();
  OUTLINED_FUNCTION_1_6();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1B1C2D7A8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1B1ACB8C0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

unint64_t sub_1B1ACB8C0(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1B1E44C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1B1F664(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1B1C2D888();
      sub_1B1C2CC48();
      result = sub_1B1C2D8E8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B1C2D7A8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B1B1F12C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1B1ACBA28()
{
  OUTLINED_FUNCTION_21_1();
  if (v4)
  {
    OUTLINED_FUNCTION_3_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_33_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = OUTLINED_FUNCTION_39_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_35_2();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

uint64_t Asynchronous<>.wait()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v3();
  OUTLINED_FUNCTION_6_13();
  v5 = v4;
  OUTLINED_FUNCTION_19_5();

  [v2 lock];

  while (1)
  {
    v6 = OUTLINED_FUNCTION_2_20();
    v7 = *((v3)(v6) + 16);

    if (v7 != 1)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_2_20();
    (v3)(v8);
    OUTLINED_FUNCTION_6_13();
    v10 = v9;
    OUTLINED_FUNCTION_19_5();

    [v2 wait];
  }

  v11 = OUTLINED_FUNCTION_2_20();
  (v3)(v11);
  OUTLINED_FUNCTION_6_13();
  v13 = v12;
  OUTLINED_FUNCTION_19_5();

  [v2 unlock];

  v14 = OUTLINED_FUNCTION_2_20();
  v15 = *((v3)(v14) + 24);
  v16 = v15;

  if (v15)
  {

    v18 = OUTLINED_FUNCTION_2_20();
    v19 = *((v3)(v18) + 24);
    v20 = v19;

    if (v19)
    {
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static AudioData.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  return byte_1EB7614B0;
}

uint64_t AudioFile.init(outputURL:format:)(uint64_t a1, uint64_t a2)
{
  outAudioFile[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (sub_1B1C2C0C8() == 6709603 && v12 == 0xE300000000000000)
  {
  }

  else
  {
    v14 = sub_1B1C2D7A8();

    if ((v14 & 1) == 0)
    {
      sub_1B1C2C138();
      goto LABEL_9;
    }
  }

  (*(v7 + 16))(v11, a1, v5);
LABEL_9:
  v15 = sub_1B1C2C118();
  v16 = *(v7 + 8);
  v16(v11, v5);
  v17 = *(a2 + 16);
  *&inFormat.mSampleRate = *a2;
  *&inFormat.mBytesPerPacket = v17;
  *&inFormat.mBitsPerChannel = *(a2 + 32);
  outAudioFile[0] = 0;
  v18 = AudioFileCreateWithURL(v15, 0x63616666u, &inFormat, 1u, outAudioFile);
  if (v18 == sub_1B1C2C958())
  {
    v16(a1, v5);

    *(v2 + 16) = outAudioFile[0];
  }

  else
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD00000000000002FLL, 0x80000001B1C4F120);
    OUTLINED_FUNCTION_12_8();
    sub_1B1AADE74(v19, v20, MEMORY[0x1E6968FE0]);
    v21 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v21);

    MEMORY[0x1B27381B0](0x203A65646F63202CLL, 0xE800000000000000);
    v22 = sub_1B1B269CC(v18);
    MEMORY[0x1B27381B0](v22);

    v23 = sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34(&type metadata for TTSError, v23);
    *v24 = 1;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();

    v16(a1, v5);
  }

  return v2;
}

uint64_t sub_1B1ACC0CC(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = v1 + OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v3 + 16);
  v26[0] = *v3;
  v26[1] = v4;
  v27 = *(v3 + 32);
  v5 = MEMORY[0x1B27377A0](v26, 40);
  v7 = v6;
  v8 = sub_1B1C2C298();
  v9 = sub_1B1C2CB28();
  [a1 encodeObject:v8 forKey:v9];

  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_40();
  sub_1B1AA64DC(v10, v11);
  OUTLINED_FUNCTION_40();
  v12 = sub_1B1C2C298();
  v13 = OUTLINED_FUNCTION_40();
  sub_1B1A94524(v13, v14);
  v15 = sub_1B1C2CB28();
  [a1 encodeObject:v12 forKey:v15];

  v16 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = OUTLINED_FUNCTION_41();
  [a1 encodeInteger:v17 forKey:v18];

  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v19 = OUTLINED_FUNCTION_64_0();
  sub_1B1AA64DC(v19, v20);
  OUTLINED_FUNCTION_64_0();
  v21 = sub_1B1C2C298();
  v22 = OUTLINED_FUNCTION_64_0();
  sub_1B1A94524(v22, v23);
  OUTLINED_FUNCTION_75();
  v24 = sub_1B1C2CB28();
  [a1 encodeObject:v21 forKey:v24];

  return sub_1B1A94524(v5, v7);
}

uint64_t sub_1B1ACC308(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  }

  else
  {
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[0] = v1;
  v3[3] = a1;
  return sub_1B1AA5E5C(v3, 0x6E49676E696D6974, 0xEA00000000006F66);
}

void sub_1B1ACC380(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = OUTLINED_FUNCTION_3_19(a1, a2, a3, a4, a5, a6, a7, a8, v16[0], v16[1], v16[2], v16[3]);
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_65(a3 + 16, v16);
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = a2;

      if (Strong)
      {
        [Strong didGenerateAudioWithRequestId:(*((*MEMORY[0x1E69E7D40] & *v12) + 0x90))(v15) audio:v10];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1B1ACC500()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime;
  if (!*(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime))
  {
    *(v1 + v2) = mach_absolute_time();
  }
}

void sub_1B1ACC53C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime;
  if (!*(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime))
  {
    *(v1 + v2) = mach_absolute_time();
  }
}

void sub_1B1ACC580()
{
  OUTLINED_FUNCTION_12_17();
  v44 = v2;
  v45 = v1;
  v3 = v0;
  v42 = v4;
  v43 = v5;
  v48 = v6;
  v8 = v7;
  v9 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_132();
  v41[1] = v19;
  OUTLINED_FUNCTION_16_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v41 - v25;
  v27 = v3 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v28 = v24;
  v41[0] = *(v17 + 16);
  (v41[0])(v23, v27, v24);
  v46 = v8;
  v47 = v48;
  (*(v11 + 104))(v15, *MEMORY[0x1E6968F68], v9);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  (*(v11 + 8))(v15, v9);
  v29 = *(v17 + 8);
  v29(v23, v28);
  v30 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v31 = sub_1B1C2CB28();

  LODWORD(v23) = [v30 createFileAtPath:v31 contents:0 attributes:0];

  if (v23)
  {
    v32 = OUTLINED_FUNCTION_15();
    v33(v32);
    v34 = v42;
    v35 = v43;
    SynthesisCacheFile.init(writeFileURL:voice:resource:)();
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000032, 0x80000001B1C52AE0);
    v36 = sub_1B1C2C098();
    MEMORY[0x1B27381B0](v36);

    v37 = v46;
    v38 = v47;
    v39 = sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34(&type metadata for TTSError, v39);
    *v40 = 1;
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    swift_willThrow();
  }

  v29(v26, v28);
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1ACC8C8()
{
  sub_1B1C2CA38();
  OUTLINED_FUNCTION_7();
  v36 = v1;
  v37 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16();
  v4 = v3 - v2;
  v38 = sub_1B1C2CBC8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v35 = sub_1B1C2CA68();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  sub_1B1C2CA58();
  v17 = sub_1B1C2D538();
  sub_1B1ACCBE4(v17);
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  sub_1B1ACCD58(v18);
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.text.getter();
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  v19 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.pitch.getter(v19);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v20 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.rate.getter(v20);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v21 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.volume.getter(v21);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v22 = OUTLINED_FUNCTION_5_11();
  v23 = SynthesizingRequestProtocol.style.getter(v22);
  SynthesisContext.PromptStyle.description.getter(v23);
  OUTLINED_FUNCTION_10_10();

  sub_1B1C2CBB8();
  sub_1B1C2CB68();
  v25 = v24;
  result = (*(v6 + 8))(v10, v38);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA64DC(v27, v28);
    v29 = OUTLINED_FUNCTION_43_0();
    sub_1B1ACCEA4(v29, v30, v16);
    v31 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA9670(v31, v32);
    v33 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA9670(v33, v34);
    sub_1B1C2CA48();
    sub_1B1ACD0C0();
    (*(v36 + 8))(v4, v37);
    (*(v12 + 8))(v16, v35);
    return OUTLINED_FUNCTION_43_0();
  }

  return result;
}

uint64_t sub_1B1ACCBE4(uint64_t a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_26_2(a1, v19);
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;

  OUTLINED_FUNCTION_8_8();
  v5 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2(v6, v18);
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];
  }

  else
  {
    v8 = 0xE400000000000000;
    v7 = 1819047278;
  }

  MEMORY[0x1B27381B0](v7, v8);

  OUTLINED_FUNCTION_8_8();
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_type, v17);
  v10 = SynthesisVoice.VoiceType.description.getter(*(v2 + v9));
  MEMORY[0x1B27381B0](v10);

  OUTLINED_FUNCTION_8_8();
  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0], v16);
  v12 = SynthesisVoice.Footprint.description.getter(*(v2 + v11));
  MEMORY[0x1B27381B0](v12);

  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_version + v2, v15);
  v13 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v13);

  return v20;
}

uint64_t sub_1B1ACCD58(uint64_t a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR___SiriTTSSynthesisResource_language);
  OUTLINED_FUNCTION_26_2(a1, v8);
  v4 = v3[1];
  v9 = *v3;
  v10 = v4;

  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR___SiriTTSSynthesisResource_version, v7);
  v5 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v5);

  return v9;
}

float sub_1B1ACCE44(uint64_t a1, SEL *a2, void *a3)
{
  v5 = [v3 *a2];
  v6 = &v5[*a3];
  OUTLINED_FUNCTION_9_2(v5);
  v7 = *v6;

  return v7;
}

uint64_t sub_1B1ACCEA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_1B1ACCF50(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1B1B75630(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1B1ACCF40);
      }

      return result;
  }
}

uint64_t sub_1B1ACCF50(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C2BF08();
  if (!result || (result = sub_1B1C2BF38(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B1C2BF28();
      sub_1B1C2CA68();
      sub_1B1ACD078(&qword_1ED9A4F48, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1B1C2CA28();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1ACD030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1ACD078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B1ACD0C0()
{
  v1 = sub_1B1C2CA38();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  (*(v5 + 16))(v4 - v3, v0, v1);
  sub_1B1ACD26C();
  result = sub_1B1C2CE18();
  v7 = *(v15 + 16);
  if (v16 == v7)
  {
LABEL_6:

    return 0;
  }

  else
  {
    v8 = MEMORY[0x1E69E7508];
    v9 = MEMORY[0x1E69E7558];
    v10 = v16;
    while ((v16 & 0x8000000000000000) == 0)
    {
      if (v10 >= *(v15 + 16))
      {
        goto LABEL_8;
      }

      v11 = v10 + 1;
      v12 = *(v15 + 32 + v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B1C361C0;
      *(v13 + 56) = v8;
      *(v13 + 64) = v9;
      *(v13 + 32) = v12;
      v14 = sub_1B1C2CB98();
      MEMORY[0x1B27381B0](v14);

      v10 = v11;
      if (v7 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1ACD26C()
{
  result = qword_1ED9A4F50;
  if (!qword_1ED9A4F50)
  {
    sub_1B1C2CA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A4F50);
  }

  return result;
}

id sub_1B1ACD2C4(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C118();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B1C2C1C8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B1C2C058();

    swift_willThrow();
    v9 = sub_1B1C2C1C8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1B1ACD41C(uint64_t a1)
{
  v2 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B1ACD478(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v86 = *MEMORY[0x1E69E9840];
  if (qword_1ED9A5118 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9A5120;
  [qword_1ED9A5120 lock];
  v10 = *(v3 + 80);
  [v10 lock];
  outBuffer = 0;
  v11 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v12 = OUTLINED_FUNCTION_43_0();
  sub_1B1AA64DC(v12, v13);
  v14 = OUTLINED_FUNCTION_43_0();
  v15 = MEMORY[0x1B27377C0](v14);
  v16 = OUTLINED_FUNCTION_43_0();
  sub_1B1A94524(v16, v17);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (HIDWORD(v15))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_13:
    v21 = v5 - v4;
    v22 = sub_1B1C2C8A8();
    v23 = OUTLINED_FUNCTION_56(v22, qword_1ED9A9120);
    v24 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_23_6();
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v21;
      _os_log_impl(&dword_1B1A8A000, v23, v24, "Detected stalled audio generation, will enqueue %f silence frame to compensate.", v25, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        SiriTTSService_AudioQueueEnqueueSilence();
        *(v6 + 176) = v21 + *(v6 + 176);
        goto LABEL_19;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_1B1AD25A4(v3, v84);
  v18 = v85;
  if (*(v3 + 168))
  {
    if (v85)
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
    }

    else
    {
      v77 = v84[0];
      v78 = v84[1];
      v79 = v84[2];
      v80 = v84[3];
    }

    LOBYTE(__src) = 0;
    *(v3 + 104) = v77;
    *(v3 + 120) = v78;
    *(v3 + 136) = v79;
    *(v3 + 152) = v80;
    *(v3 + 168) = 0;
  }

  if ((v18 & 1) == 0)
  {
    v19 = *v84;
    v4 = *(v3 + 104);
    v20 = *(v3 + 176);
    if (v4 + v20 < *v84)
    {
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *(v3 + 16) = 1;
      v5 = v19 - v20;
      if (qword_1ED9A9288 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }
  }

LABEL_19:
  v26 = AudioQueueAllocateBuffer(*(v6 + 72), v15, &outBuffer);
  if (v26 == sub_1B1C2C958() && (v27 = outBuffer) != 0)
  {
    v75 = v10;
    v28 = *v11;
    v29 = *(v11 + 1);
    switch(v29 >> 62)
    {
      case 1uLL:
        v71 = 0;
        v72 = v9;
        if (v28 >> 32 < v28)
        {
          goto LABEL_44;
        }

        v39 = a1;
        v40 = OUTLINED_FUNCTION_48_2();
        sub_1B1AA64DC(v40, v41);
        v42 = OUTLINED_FUNCTION_72();
        sub_1B1AD2650(v42, v43, v44, v27, v39);
        v45 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v45, v46);

        v9 = v72;
        break;
      case 2uLL:
        v71 = 0;
        v73 = *(v28 + 16);
        v47 = *(v28 + 24);
        v48 = a1;
        v49 = OUTLINED_FUNCTION_48_2();
        sub_1B1AA64DC(v49, v50);
        sub_1B1AD2650(v73, v47, v29 & 0x3FFFFFFFFFFFFFFFLL, v27, v48);
        v51 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v51, v52);

        break;
      case 3uLL:
        goto LABEL_23;
      default:
        __src = v28;
        LOWORD(v82) = v29;
        BYTE2(v82) = BYTE2(v29);
        BYTE3(v82) = BYTE3(v29);
        BYTE4(v82) = BYTE4(v29);
        BYTE5(v82) = BYTE5(v29);
        memcpy(outBuffer->mAudioData, &__src, BYTE6(v29));
LABEL_23:
        v30 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v30, v31);
        break;
    }

    v27->mAudioDataByteSize = v15;
    type metadata accessor for AudioQueueInterface.AudioQueueBufferUserData();
    OUTLINED_FUNCTION_66();
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = a2;
    v53[4] = a3;
    v27->mUserData = v53;
    v54 = &a1[OBJC_IVAR___SiriTTSAudioData_asbd];
    OUTLINED_FUNCTION_4_0();
    swift_beginAccess();
    v10 = v75;
    if (*(v54 + 2) == 1819304813)
    {

      v55 = OUTLINED_FUNCTION_64_0();
      v57 = AudioQueueEnqueueBuffer(v55, v56, 0, 0);
    }

    else
    {
      v58 = &a1[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
      OUTLINED_FUNCTION_4_0();
      swift_beginAccess();
      v74 = v9;
      v60 = *v58;
      v59 = v58[1];
      v61 = a1;

      sub_1B1AA64DC(v60, v59);
      v57 = sub_1B1AD279C(v60, v59, v6, v27, v61);
      v62 = v60;
      v9 = v74;
      sub_1B1A94524(v62, v59);
    }

    if (v57 == sub_1B1C2C958())
    {
      if (!*(v6 + 88))
      {
        *(v6 + 88) = mach_absolute_time();
      }

      AudioData.duration.getter();
      *(v6 + 96) = v63 + *(v6 + 96);
      *(v6 + 176) = *(v6 + 176) + AudioData.sampleCount.getter();
    }

    else
    {
      sub_1B1C2D538();

      OUTLINED_FUNCTION_47();
      v64 = sub_1B1B269CC(v57);
      v66 = v65;
      MEMORY[0x1B27381B0](v64);

      sub_1B1A9EC9C();
      OUTLINED_FUNCTION_27();
      v67 = swift_allocError();
      OUTLINED_FUNCTION_50(v67, v68);
      v69();
    }
  }

  else
  {
    sub_1B1C2D538();

    OUTLINED_FUNCTION_47();
    __src = 0xD00000000000002CLL;
    v82 = v32;
    v33 = sub_1B1B269CC(v26);
    v35 = v34;
    MEMORY[0x1B27381B0](v33);

    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_50(v36, v37);
    v38();
  }

  [v10 unlock];
  return [v9 unlock];
}

uint64_t AudioData.sampleCount.getter()
{
  v1 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 < 1 || (v3 = v0 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions, OUTLINED_FUNCTION_4_0(), swift_beginAccess(), sub_1B1AA5F48(*v3, *(v3 + 8))))
  {
    v4 = (v0 + OBJC_IVAR___SiriTTSAudioData_audioData);
    OUTLINED_FUNCTION_4_0();
    swift_beginAccess();
    v2 = *v4;
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1AA64DC(v5, v6);
    v7 = OUTLINED_FUNCTION_51();
    v8 = MEMORY[0x1B27377C0](v7);
    v9 = OUTLINED_FUNCTION_51();
    sub_1B1A94524(v9, v10);
    v0 += OBJC_IVAR___SiriTTSAudioData_asbd;
    OUTLINED_FUNCTION_11_0();
    result = swift_beginAccess();
    v12 = *(v0 + 24);
    if (!v12)
    {
      __break(1u);
      goto LABEL_10;
    }

    result = v8 / v12;
    if (((v8 / v12) & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v13 = v0 + OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  result = v2 * *(v13 + 20);
  if ((v2 * *(v13 + 20)) >> 64 != result >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_1B1ACDC78(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a2;
  v9[4] = a1;
  v10 = *(v8 + 88);
  v11 = *(v10 + 40);
  v12 = *(v8 + 80);
  v13 = a2;

  v11(v13, sub_1B1AD39B0, v9, v12, v10);

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = v13;
  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218752;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2048;
    v19 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    swift_beginAccess();
    *(v18 + 14) = *&v15[v19];
    *(v18 + 22) = 2048;
    v20 = &v15[OBJC_IVAR___SiriTTSAudioData_audioData];
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = 0;
    switch(v22 >> 62)
    {
      case 1uLL:
        LODWORD(v23) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x1B1ACDF74);
        }

        v23 = v23;
LABEL_10:
        *(v18 + 24) = v23;
        *(v18 + 32) = 1024;
        v28 = &v15[OBJC_IVAR___SiriTTSAudioData_asbd];
        swift_beginAccess();
        *(v18 + 34) = *(v28 + 2) == 1869641075;

        _os_log_impl(&dword_1B1A8A000, v16, v17, "Enqueued audio buffer #%ld, packet count: %ld, bytes: %ld, isOpus: %{BOOL}d", v18, 0x26u);
        MEMORY[0x1B2739FD0](v18, -1, -1);

        break;
      case 2uLL:
        v26 = v21 + 16;
        v25 = *(v21 + 16);
        v24 = *(v26 + 8);
        v27 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (!v27)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_10;
      default:
        v23 = BYTE6(v22);
        goto LABEL_10;
    }
  }

  else
  {
  }

  if (a4)
  {

    a4(0);
    sub_1B1A949B4(a4, a5);
  }
}

uint64_t sub_1B1ACDF84()
{

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1B1ACDFC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65(a1 + 16, v13);
  if (*(a1 + 16) == 1)
  {
    OUTLINED_FUNCTION_65(a2 + 16, v12);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + 40);

      v11 = qword_1F28D9208;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = v6;
        swift_beginAccess();
        *(a1 + 16) = 0;
        OUTLINED_FUNCTION_65(a2 + 16, v10);
        if (swift_weakLoadStrong())
        {
          v8 = swift_unknownObjectWeakLoadStrong();

          if (v8)
          {
            [v8 didStartSpeakingWithRequestId_];
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

uint64_t sub_1B1ACE144()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  result = OUTLINED_FUNCTION_66_0(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime, v12);
  if (!*(v1 + v2))
  {
    *(v1 + v2) = mach_absolute_time();
    v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
    result = OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS, v11);
    if (*(v1 + v4))
    {
      if ((InstrumentationMetrics.customerPerceivedLatency.getter(), v5 >= 2.0) && (v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, &v9), *(v1 + v6) != 1) || (result = InstrumentationMetrics.customerPerceivedLatency.getter(), v7 > 0.5) && (v8 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, result = OUTLINED_FUNCTION_65(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, v10), *(v1 + v8) == 1))
      {
        if (qword_1ED9A4E28 != -1)
        {
          OUTLINED_FUNCTION_5_22(&qword_1ED9A4E28);
        }

        sub_1B1AC638C(qword_1ED9A4E30, 9, 0xD000000000000050, 0x80000001B1C4F990);
      }
    }
  }

  return result;
}

void sub_1B1ACE278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 96);
    v6 = v5;

    if (v5)
    {
      if (qword_1ED9A4D58 != -1)
      {
        swift_once();
      }

      [v6 postNotificationName:qword_1ED9A4D60 object:a3];
    }
  }
}

uint64_t sub_1B1ACE338(char *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
  OUTLINED_FUNCTION_67(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues, v10);

  sub_1B1AC69E8();
  v6 = *(*(v1 + v5) + 16);
  sub_1B1ACF958(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 24 * v6;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v1 + v5) = v7;
  return swift_endAccess();
}

void sub_1B1ACE3E0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, uint64_t a8, uint64_t a9, double *a10, uint64_t *a11)
{
  swift_beginAccess();
  *(a3 + 16) = 1;
  v77 = type metadata accessor for AudioData();
  v18 = [objc_allocWithZone(v77) init];
  v19 = &v18[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = a1;
  v19[1] = a2;
  sub_1B1A94524(v20, v21);
  sub_1B1AA64DC(a1, a2);
  [a4 asbd];
  v22 = &v18[OBJC_IVAR___SiriTTSAudioData_asbd];
  swift_beginAccess();
  *v22 = v83;
  *(v22 + 1) = v84;
  v22[4] = v85;
  v23 = MEMORY[0x1B27377C0](a1, a2);
  v24 = *(v22 + 4);
  if (!v24)
  {
    goto LABEL_53;
  }

  v25 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  v26 = v23 / v24;
  swift_beginAccess();
  v78 = v25;
  *&v18[v25] = v26;
  a2 = a5[6];
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_1ED9A4EA8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    [a2 postNotificationName:qword_1ED9A4EB0 object:v18];
    v26 = *&v18[v78];
LABEL_5:
    v27 = ceilf(v26 / 4800.0);
    if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_54;
    }

    if (v27 <= -9.2234e18)
    {
      goto LABEL_55;
    }

    if (v27 >= 9.2234e18)
    {
      goto LABEL_56;
    }

    v28 = v27;
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  if (v28)
  {
    v74 = v19;
    a2 = a10;
    v19 = a11;
    v75 = *(v22 + 4);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v70 = v28;
    v71 = v18;
    v73 = a5;
    v72 = a9;
    while (v29 != 0x6D3A06D3A06D4)
    {
      v31 = 4800 * v29;
      v32 = *&v18[v78];
      v33 = __OFSUB__(v32, 4800 * v29);
      v34 = v32 - 4800 * v29;
      if (v33)
      {
        goto LABEL_44;
      }

      a9 = v30;
      if (v34 >= 4800)
      {
        v35 = 4800;
      }

      else
      {
        v35 = v34;
      }

      v36 = v31 * *(v22 + 4);
      if ((v31 * *(v22 + 4)) >> 64 != v36 >> 63)
      {
        goto LABEL_45;
      }

      v37 = v35 * v75;
      if ((v35 * v75) >> 64 != (v35 * v75) >> 63)
      {
        goto LABEL_46;
      }

      a5 = (v36 + v37);
      if (__OFADD__(v36, v37))
      {
        goto LABEL_47;
      }

      v79 = v29;
      v38 = v22;
      v22 = v74;
      a2 = *v74;
      v39 = v74[1];
      sub_1B1AA64DC(*v74, v39);
      v18 = MEMORY[0x1B27377C0](a2, v39);
      sub_1B1A94524(a2, v39);
      if (v18 >= a5)
      {
        v40 = a5;
      }

      else
      {
        v40 = v18;
      }

      v41 = [objc_allocWithZone(v77) init];
      if (v40 < v36)
      {
        goto LABEL_48;
      }

      v42 = v41;
      v43 = *v74;
      v44 = v74[1];
      sub_1B1AA64DC(*v74, v44);
      v45 = sub_1B1C2C328();
      v47 = v46;
      sub_1B1A94524(v43, v44);
      v48 = &v42[OBJC_IVAR___SiriTTSAudioData_audioData];
      swift_beginAccess();
      v49 = *v48;
      v50 = v48[1];
      *v48 = v45;
      v48[1] = v47;
      sub_1B1A94524(v49, v50);
      v22 = v38;
      v80 = *v38;
      v81 = *(v38 + 1);
      v82 = v38[4];
      v51 = &v42[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      *v51 = v80;
      *(v51 + 1) = v81;
      *(v51 + 4) = v82;
      v52 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      *&v42[v52] = v35;
      type metadata accessor for DataContainer();
      v53 = swift_allocObject();
      v30 = a9;
      *(v53 + 16) = sub_1B1C2CAB8();
      v54 = v42;
      sub_1B1ACC2E4(v42);
      v55 = a6;
      sub_1B1ACFA84(a6);
      v58 = sub_1B1AA95A0(v56, v57);
      sub_1B1AA795C(v58);
      v59 = sub_1B1AA9644();
      sub_1B1AA9764(v59);
      a9 = v72;
      if (sub_1B1A9547C())
      {
      }

      else
      {
        v60 = v30;
      }

      a5 = v73;
      sub_1B1ACC308(v60);
      *(v72 + 16) = v30;

      sub_1B1AA81A8(v53);
      AudioData.duration.getter();
      a10[2] = v61 + a10[2];
      v62 = mach_absolute_time();
      v18 = v62;
      if (!a11[2])
      {
        a11[2] = v62;
      }

      a2 = v54;
      AudioData.duration.getter();
      v64 = v63;
      if (qword_1ED9A5270 != -1)
      {
        swift_once();
      }

      v65 = v64 / *&qword_1ED9AA500;
      if (COERCE__INT64(fabs(v64 / *&qword_1ED9AA500)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v65 <= -1.0)
      {
        goto LABEL_50;
      }

      if (v65 >= 1.84467441e19)
      {
        goto LABEL_51;
      }

      v66 = a11[2];
      if (__CFADD__(v66, v65))
      {
        goto LABEL_52;
      }

      a11[2] = v66 + v65;
      swift_beginAccess();
      swift_beginAccess();
      if (a7 > 0.0)
      {
        while (v18 < a11[2])
        {
          a2 = v73;
          if (sub_1B1ACFB08())
          {
            break;
          }

          v67 = a11[2];
          v68 = v67 >= v18;
          v69 = v67 - v18;
          if (!v68)
          {
            __break(1u);
            goto LABEL_43;
          }

          if (*&qword_1ED9AA500 * v69 <= a7)
          {
            break;
          }

          [objc_opt_self() sleepForTimeInterval_];
          v18 = mach_absolute_time();
        }
      }

      v29 = v79 + 1;
      v18 = v71;
      if (v79 + 1 == v70)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_42:
}

uint64_t sub_1B1ACEB4C()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
}

uint64_t sub_1B1ACEB88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1B1C2C2B8();
  v7 = v6;

  v3(v5, v7);
  sub_1B1A94524(v5, v7);
}

id AudioData.init()()
{
  v1 = &v0[OBJC_IVAR___SiriTTSAudioData_asbd];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR___SiriTTSAudioData_audioData] = xmmword_1B1C35270;
  *&v0[OBJC_IVAR___SiriTTSAudioData_packetCount] = 0;
  *&v0[OBJC_IVAR___SiriTTSAudioData_packetDescriptions] = xmmword_1B1C35270;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioData();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1B1ACECE0(unsigned __int8 *a1)
{
  sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v123 = v3;
  v124 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v122 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_1();
  v119 = v7 - v8;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v117 - v10;
  v127 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v121 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v117 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v20);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  v24 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_1();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v117 - v32;
  v125 = *a1;
  type metadata accessor for AudioDumpAction();
  static AudioDumpAction.DiagnosticsDir.getter(v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1B1A90C78(v23, &unk_1EB761F00, &qword_1B1C36480);
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v34 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v34, qword_1ED9A9120);
    v35 = sub_1B1C2C888();
    v36 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v36))
    {
      v37 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v37);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_9_1();
    }

    return;
  }

  v118 = v26;
  v43 = *(v26 + 32);
  v120 = v24;
  v43(v33, v23, v24);
  if (qword_1EB761158 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v6, qword_1EB772C70);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1AD04D4(v44, v11);
  v45 = v127;
  if (__swift_getEnumTagSinglePayload(v11, 1, v127) == 1)
  {
    v117 = v44;
    sub_1B1A90C78(v11, &qword_1EB761D88, &qword_1B1C36488);
    goto LABEL_17;
  }

  v46 = v121;
  (*(v121 + 4))(v19, v11, v45);
  sub_1B1C2C3E8();
  sub_1B1C2C368();
  v48 = v47;
  v49 = *(v46 + 1);
  v49(v16, v45);
  if (v48 >= 120.0)
  {
    v117 = v44;
    v49(v19, v45);
LABEL_17:
    v134 = *(v126 + 32);
    aBlock = sub_1B1C2D778();
    v129 = v61;
    MEMORY[0x1B27381B0](95, 0xE100000000000000);
    LOBYTE(v134) = v125;
    v62 = sub_1B1C2CBD8();
    MEMORY[0x1B27381B0](v62);

    MEMORY[0x1B27381B0](0x6970736C6961742ELL, 0xE90000000000006ELL);
    v64 = v122;
    v63 = v123;
    v65 = v124;
    (*(v123 + 104))(v122, *MEMORY[0x1E6968F68], v124);
    sub_1B1A8EDAC();
    v121 = v33;
    sub_1B1C2C1B8();
    (*(v63 + 8))(v64, v65);

    v66 = sub_1B1C2C098();
    v68 = v67;
    v69 = *(v118 + 8);
    v70 = v30;
    v71 = v120;
    v69(v70, v120);
    v72 = [objc_opt_self() defaultManager];
    OUTLINED_FUNCTION_13_2();
    v73 = sub_1B1C2CB28();
    LODWORD(v65) = [v72 createFileAtPath:v73 contents:0 attributes:0];

    if (v65)
    {
      sub_1B1AE5FC0();

      v74 = OUTLINED_FUNCTION_13_2();
      v76 = sub_1B1AE6004(v74, v75);
      if (v76)
      {
        v77 = v76;
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v78 = sub_1B1C2C8A8();
        OUTLINED_FUNCTION_12_1(v78, qword_1ED9A9120);
        v79 = v126;

        v80 = sub_1B1C2C888();
        v81 = sub_1B1C2D0D8();
        v82 = OUTLINED_FUNCTION_10_2(v81);
        v124 = v69;
        if (v82)
        {
          v83 = OUTLINED_FUNCTION_21_0();
          *v83 = 134217984;
          *(v83 + 4) = *(v79 + 32);

          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
          OUTLINED_FUNCTION_9_1();
        }

        else
        {
        }

        v104 = objc_opt_self();
        v105 = *(v79 + 32);
        v106 = swift_allocObject();
        v106[2] = v77;
        v106[3] = v66;
        v106[4] = v68;
        v132 = sub_1B1AD95E4;
        v133 = v106;
        aBlock = MEMORY[0x1E69E9820];
        v129 = 1107296256;
        v130 = sub_1B1A955E0;
        v131 = &block_descriptor_1;
        v107 = v79;
        v108 = _Block_copy(&aBlock);

        v109 = v77;

        [v104 collectTailspinToFile:v109 minTimestamp:v105 completion:v108];
        _Block_release(v108);
        if (v125 == 7 && *(v107 + 48) != 1)
        {
          v110 = *(v107 + 40);
          v111 = objc_opt_self();
          OUTLINED_FUNCTION_13_2();
          v112 = sub_1B1C2CB28();

          v113 = sub_1B1C2CB28();
          [v111 reportAnalytics:v110 tailspin:v112 reason:v113];
        }

        else
        {
        }

        v115 = v119;
        v114 = v120;
        sub_1B1C2C3E8();
        __swift_storeEnumTagSinglePayload(v115, 0, 1, v127);
        v116 = v117;
        swift_beginAccess();
        sub_1B1AE6068(v115, v116);
        swift_endAccess();

        v124(v121, v114);
        return;
      }

      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v99 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v99, qword_1ED9A9120);

      v90 = sub_1B1C2C888();
      v91 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_21_0();
        v93 = OUTLINED_FUNCTION_19_0();
        aBlock = v93;
        *v92 = 136446210;
        v100 = OUTLINED_FUNCTION_13_2();
        v103 = sub_1B1A930E4(v100, v101, v102);

        *(v92 + 4) = v103;
        v98 = "Unable to get tailspin file handle at %{public}s";
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v89 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v89, qword_1ED9A9120);

      v90 = sub_1B1C2C888();
      v91 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_21_0();
        v93 = OUTLINED_FUNCTION_19_0();
        aBlock = v93;
        *v92 = 136446210;
        v94 = OUTLINED_FUNCTION_13_2();
        v97 = sub_1B1A930E4(v94, v95, v96);

        *(v92 + 4) = v97;
        v98 = "Unable to create tailspin file at %{public}s";
LABEL_31:
        _os_log_impl(&dword_1B1A8A000, v90, v91, v98, v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_9_1();

LABEL_33:
        v69(v121, v71);
        return;
      }
    }

    goto LABEL_33;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v50 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v50, qword_1ED9A9120);
  v51 = sub_1B1C2C888();
  v52 = sub_1B1C2D098();
  v53 = OUTLINED_FUNCTION_10_2(v52);
  v54 = v120;
  if (v53)
  {
    v55 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_15_2(v55);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_9_1();
  }

  v49(v19, v45);
  (*(v118 + 8))(v33, v54);
}

void sub_1B1ACF86C()
{
  OUTLINED_FUNCTION_21_1();
  if (v4)
  {
    OUTLINED_FUNCTION_3_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BA0, &qword_1B1C35D38);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_13_3(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 24);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1B1ACF978(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LOBYTE(v13[0]) = v2;
    sub_1B1ACF9F4(v13, v6, v7, v8, v9, v10, v11, v12, v13[0], v3, v4, v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11]);
  }

  return result;
}

void sub_1B1ACF9F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *a1;
  if (*(v20 + 32))
  {
    v22 = v21 > 0xD;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    if (((1 << v21) & 0x3400) != 0)
    {

      sub_1B1B09A10(0xD000000000000014, 0x80000001B1C495E0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else if (((1 << v21) & 0x280) != 0)
    {
      v23 = *a1;
      sub_1B1ACECE0(&v23);
    }
  }
}

void sub_1B1ACFA84(void *ObjectType)
{
  v1 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
    v2 = v1;
  }

  else
  {
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  v4[0] = v2;
  v4[3] = ObjectType;
  v3 = v1;
  sub_1B1AA5E5C(v4, 0x74736575716572, 0xE700000000000000);
}

uint64_t sub_1B1ACFB08()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  [v2 lock];
  [v2 unlock];

  return v1;
}

void sub_1B1ACFBC4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1B1AA78A0(a1, a2);
  if (!v5)
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0xD00000000000002FLL;
    *(v10 + 16) = 0x80000001B1C4A840;
    swift_willThrow();
    return;
  }

  v6 = v5;
  swift_beginAccess();

  MEMORY[0x1B2738320](v7);
  sub_1B1B3E0D4(*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  swift_endAccess();
  v8 = &v6[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  if (!sub_1B1AA5F48(*v8, *(v8 + 1)) || (v9 = &v6[OBJC_IVAR___SiriTTSAudioData_asbd], swift_beginAccess(), !*(v9 + 2)))
  {
    if (sub_1B1AA5F48(*v8, *(v8 + 1)))
    {
      sub_1B1AD0004();
      if (*(v4 + 65) == 1 && *(v4 + 72))
      {
        if (qword_1ED9A4E28 != -1)
        {
          swift_once();
        }

        sub_1B1AC638C(qword_1ED9A4E30, 7, 0xD00000000000003CLL, 0x80000001B1C49620);
      }

      goto LABEL_27;
    }

    v11 = mach_absolute_time();
    AudioData.duration.getter();
    v13 = *(v4 + 48);
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v3 = v12;
      v16 = v15;
      if (qword_1ED9A5270 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_6();
    v30 = v29;
    swift_once();
    v16 = v30;
LABEL_14:
    v17 = *&qword_1ED9AA500 * v16;
    *(v4 + 48) = v11;
    if (qword_1ED9A9288 != -1)
    {
      v31 = v17;
      swift_once();
      v17 = v31;
    }

    v18 = v3 / v17;
    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "Current end-to-end RTF: %f", v22, 0xCu);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    if ((*(v4 + 64) & 1) == 0)
    {
      v23 = *(v4 + 56);
      v24 = v11 - v23;
      if (v11 > v23)
      {
        v25 = sub_1B1C2C888();
        v26 = sub_1B1C2D0B8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = *&qword_1ED9AA500 * v24;
          _os_log_impl(&dword_1B1A8A000, v25, v26, "!! Low synthesis RTF detected, will likely results in stuttering. Missing: %f", v27, 0xCu);
          MEMORY[0x1B2739FD0](v27, -1, -1);
        }

        *(v4 + 65) = 1;
      }
    }

    if (([*(v4 + 40) isLowPowerModeEnabled] & 1) != 0 && *(v4 + 66) != 1)
    {
      sub_1B1AD01A0();
      if ((1.0 - v18) * 2.05 >= v28)
      {
        goto LABEL_27;
      }
    }
  }

  sub_1B1AD0004();
LABEL_27:
}

uint64_t sub_1B1AD0004()
{
  sub_1B1AD01A0();
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 32);
  result = sub_1B1A9547C();
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = result;
  if (result >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2738A20](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      sub_1B1AA81A8(v7);
    }

LABEL_9:
    if (v2 <= 0.0)
    {
      if (*(v0 + 64))
      {
LABEL_20:
        *(v0 + 32) = MEMORY[0x1E69E7CC0];
      }
    }

    else if (*(v0 + 64))
    {
      result = mach_absolute_time();
      *(v0 + 56) = result;
      *(v0 + 64) = 0;
      *(v0 + 66) = 1;
    }

    v8 = *(v0 + 56);
    if (qword_1ED9A5270 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      result = swift_once();
    }

    v9 = v2 / *&qword_1ED9AA500;
    if (COERCE__INT64(fabs(v2 / *&qword_1ED9AA500)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 1.84467441e19)
      {
        if (!__CFADD__(v8, v9))
        {
          *(v0 + 56) = v8 + v9;
          *(v0 + 64) = 0;
          goto LABEL_20;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1B1AD01A0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = sub_1B1A9547C();

  v3 = 0;
  v4 = 0.0;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2738A20](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = sub_1B1AA78A0(v5, v6);
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = v7;

    AudioData.duration.getter();
    v10 = v9;

    v4 = v4 + v10;
    ++v3;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

char *sub_1B1AD02AC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    sub_1B1AD0338();
    if (a1 != 2 && (a1 & 1) != 0)
    {
      return 0;
    }
  }

  result = sub_1B1AA95A0(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    swift_beginAccess();
    v6 = *&v4[v5];

    return (v6 == 6);
  }

  return result;
}

void sub_1B1AD0338()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1136, v2);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1160);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1AD03C8()
{
  result = qword_1ED9A5248;
  if (!qword_1ED9A5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5248);
  }

  return result;
}

double Asynchronous<>.waitTimeout.getter()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0() + 32);

  return v1;
}

void sub_1B1AD0464(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_11_10(a1, a2);
  v4 = *(v3(v2) + 40);

  [v4 unlock];
}

uint64_t sub_1B1AD04D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AD0558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23_5();
  result = sub_1B1C2C1C8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void SynthesisCacheFile.init(writeFileURL:voice:resource:)()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v60 = *MEMORY[0x1E69E9840];
  v9 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v54 = v6;
  v55 = v11;
  v16 = *(v11 + 16);
  v16(v8, v6, v9);
  v17 = type metadata accessor for SynthesisCacheFile(0);
  v18 = v4;
  *(v8 + v17[6]) = v4;
  *(v8 + v17[7]) = v2;
  v19 = v2;
  v20 = sub_1B1A8E474(0, &qword_1ED9A4F20, 0x1E696AC00);
  v16(v15, v8, v9);
  v21 = v18;
  v22 = v19;
  v23 = v20;
  v24 = sub_1B1ACD2C4(v15);
  v25 = v0;
  v56 = v22;
  if (v0)
  {

    v26 = OUTLINED_FUNCTION_27_13();
    v20(v26, v9);
    v27 = v9;
    v28 = v8;
  }

  else
  {
    *(v8 + v17[5]) = v24;
    v29 = qword_1ED9A5138;
    v23 = v24;
    if (v29 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_1ED9A5138);
    }

    v30 = MEMORY[0x1B27377C0](qword_1ED9A5140, *algn_1ED9A5148);
    v58 = MEMORY[0x1B27377B0](v30);
    v59 = v31;
    sub_1B1AD03C8();
    sub_1B1C2D078();
    v27 = v9;

    sub_1B1A94524(v58, v59);
    v34 = objc_opt_self();
    v58 = 0;
    v35 = [v34 archivedDataWithRootObject:v21 requiringSecureCoding:0 error:&v58];

    v36 = v58;
    if (v35)
    {
      v53 = v34;
      v37 = sub_1B1C2C2B8();
      v39 = v38;

      v57 = MEMORY[0x1B27377C0](v37, v39);
      v58 = MEMORY[0x1B27377A0](&v57, 8);
      v59 = v40;
      OUTLINED_FUNCTION_30_10(v58, MEMORY[0x1E6969080]);
      v25 = 0;
      sub_1B1A94524(v58, v59);
      v58 = v37;
      v59 = v39;
      sub_1B1C2D078();
      v52 = v39;
      v51 = v37;
      v58 = 0;
      v43 = [v53 archivedDataWithRootObject:v56 requiringSecureCoding:0 error:&v58];

      v44 = v58;
      if (v43)
      {
        v45 = sub_1B1C2C2B8();
        v47 = v46;

        v57 = MEMORY[0x1B27377C0](v45, v47);
        v58 = MEMORY[0x1B27377A0](&v57, 8);
        v59 = v48;
        OUTLINED_FUNCTION_30_10(v58, MEMORY[0x1E6969080]);
        sub_1B1A94524(v58, v59);
        v58 = v45;
        v59 = v47;
        sub_1B1C2D078();
        (*(v55 + 8))(v54, v27);
        sub_1B1A94524(v51, v52);
        sub_1B1A94524(v45, v47);
        goto LABEL_10;
      }

      v49 = v44;
      sub_1B1C2C058();

      swift_willThrow();
      sub_1B1A94524(v37, v52);
      v50 = OUTLINED_FUNCTION_27_13();
      (v23)(v50, v27);
      v28 = v8;
    }

    else
    {
      v41 = v36;

      sub_1B1C2C058();
      swift_willThrow();
      v42 = OUTLINED_FUNCTION_1_39();
      (v23)(v42);
      v28 = v8;
      v25 = 0;
    }
  }

  (v23)(v28, v27);
  if (v25)
  {
    v33 = v21;
    v32 = v56;
  }

  else
  {
    v33 = *(v28 + v17[5]);

    v32 = v21;
  }

LABEL_10:
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AD0BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void SynthesisCache.encode(to:)()
{
  OUTLINED_FUNCTION_12_17();
  v3 = v2;
  v42 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764008, &qword_1B1C40AE0);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  v10 = v0[1];
  v38 = *v0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1B1AA9CD0();
  v11 = v4;
  sub_1B1C2D928();
  LOBYTE(v40) = 0;
  sub_1B1C2D6F8();
  if (v1)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v36[1] = v10;
    v37 = v6;
    v12 = objc_opt_self();
    v40 = 0;
    v13 = [v12 archivedDataWithRootObject:v38 requiringSecureCoding:0 error:&v40];
    v14 = v40;
    if (v13)
    {
      v15 = sub_1B1C2C2B8();
      v17 = v16;

      v40 = v15;
      v41 = v17;
      v39 = 1;
      v18 = sub_1B1AD11C8();
      OUTLINED_FUNCTION_17_18(v18, v19, v20, MEMORY[0x1E6969080]);
      v38 = v17;
      type metadata accessor for WordTimingInfo();
      v22 = sub_1B1C2CE68();
      v40 = 0;
      v23 = [v12 archivedDataWithRootObject:v22 requiringSecureCoding:0 error:&v40];

      v24 = v40;
      if (v23)
      {
        v25 = sub_1B1C2C2B8();
        v27 = v26;

        v40 = v25;
        v41 = v27;
        v39 = 2;
        OUTLINED_FUNCTION_17_18(v28, v29, v30, MEMORY[0x1E6969080]);
        v31 = OUTLINED_FUNCTION_16_19();
        v32(v31);
        sub_1B1A94524(v15, v38);
        sub_1B1A94524(v25, v27);
      }

      else
      {
        v33 = v24;
        sub_1B1C2C058();

        swift_willThrow();
        sub_1B1A94524(v15, v38);
        v34 = OUTLINED_FUNCTION_16_19();
        v35(v34);
      }
    }

    else
    {
      v21 = v14;
      sub_1B1C2C058();

      swift_willThrow();
      (*(v37 + 8))(v9, v11);
    }
  }

  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AD0F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SynthesisCacheFile.append(chunk:)(__int128 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_1B1C2C038();
  swift_allocObject();
  sub_1B1C2C028();
  v15 = *a1;
  sub_1B1AD1174();
  v3 = sub_1B1C2C018();
  v5 = v4;

  if (!v1)
  {
    v7 = OUTLINED_FUNCTION_15();
    v8 = MEMORY[0x1B27377C0](v7);
    if (v8 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v8 <= 0x7FFFFFFF)
    {
      v14 = v8;
      v9 = MEMORY[0x1B27377A0](&v14, 4);
      v11 = v10;
      type metadata accessor for SynthesisCacheFile(0);
      *&v15 = v9;
      *(&v15 + 1) = v11;
      sub_1B1AD03C8();
      sub_1B1C2D078();
      *&v15 = v3;
      *(&v15 + 1) = v5;
      sub_1B1C2D078();
      sub_1B1A94524(v9, v11);
      v12 = OUTLINED_FUNCTION_15();
      return sub_1B1A94524(v12, v13);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B1AD1174()
{
  result = qword_1ED9A5190;
  if (!qword_1ED9A5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5190);
  }

  return result;
}

unint64_t sub_1B1AD11C8()
{
  result = qword_1ED9A5258;
  if (!qword_1ED9A5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5258);
  }

  return result;
}

id sub_1B1AD121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

void *sub_1B1AD1294(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v12 = a4 + OBJC_IVAR___SiriTTSAudioData_asbd;
    swift_beginAccess();
    if (!*(v12 + 8))
    {
      v28 = 0;
      *a2 = 2;
      return v28;
    }
  }

  v47 = a2;
  swift_beginAccess();
  v13 = *(a5 + 16);
  v14 = *(a6 + 16);
  v15 = [v14 streamDescription];
  v16 = v13 * v15[6];
  if ((v13 * v15[6]) >> 64 != v16 >> 63)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = (a4 + OBJC_IVAR___SiriTTSAudioData_audioData);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  sub_1B1AA64DC(*v17, v19);
  v20 = MEMORY[0x1B27377C0](v18, v19);
  sub_1B1A94524(v18, v19);
  if (v16 >= v20)
  {
    v28 = 0;
    *v47 = 1;
    return v28;
  }

  v21 = *([*(a6 + 24) streamDescription] + 5) * a1;
  if ((v21 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v22 = *(a5 + 16);
  v23 = __OFSUB__(a3, v22);
  v24 = a3 - v22;
  if (v23)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = v21;
  if (v24 < v21)
  {
    v25 = v24;
  }

  if (v24 <= 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  if (v26 < 0)
  {
    goto LABEL_36;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v14 frameCapacity:v26];
  if (!v27)
  {
    if (qword_1ED9A9288 == -1)
    {
LABEL_28:
      v43 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v43, qword_1ED9A9120);
      v44 = sub_1B1C2C888();
      v45 = sub_1B1C2D0C8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1B1A8A000, v44, v45, "OpusEncoder: Unable to create input buffer", v46, 2u);
        MEMORY[0x1B2739FD0](v46, -1, -1);
      }

      v28 = 0;
      *v47 = 1;
      return v28;
    }

LABEL_44:
    swift_once();
    goto LABEL_28;
  }

  v28 = v27;
  [v27 setFrameLength_];
  v29 = [v14 streamDescription];
  v30 = v26 * v29[6];
  if ((v26 * v29[6]) >> 64 != v30 >> 63)
  {
    goto LABEL_37;
  }

  v31 = *v17;
  v32 = v17[1];
  sub_1B1AA64DC(*v17, v32);
  v33 = MEMORY[0x1B27377C0](v31, v32);
  sub_1B1A94524(v31, v32);
  if (__OFSUB__(v33, v16))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (((v33 - v16) & ~((v33 - v16) >> 63)) >= v30)
  {
    v34 = v30;
  }

  else
  {
    v34 = (v33 - v16) & ~((v33 - v16) >> 63);
  }

  if (__OFADD__(v16, v34))
  {
    goto LABEL_39;
  }

  if (v16 + v34 < v16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v35 = *v17;
  v36 = v17[1];
  sub_1B1AA64DC(*v17, v36);
  v48 = sub_1B1C2C288();
  v49 = v37;
  v38 = v28;
  result = [v38 mutableAudioBufferList];
  if (result[2])
  {
    sub_1B1A94524(v35, v36);
    sub_1B1AD03C8();
    sub_1B1C2BEB8();
    sub_1B1A94524(v48, v49);
    v40 = [v38 mutableAudioBufferList];
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v34 <= 0xFFFFFFFFLL)
      {
        v40[3] = v34;
        *v47 = 0;

        swift_beginAccess();
        v41 = *(a5 + 16);
        v23 = __OFADD__(v41, v26);
        v42 = v41 + v26;
        if (!v23)
        {
          *(a5 + 16) = v42;
          return v28;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void sub_1B1AD16A4(char *a1)
{
  v3 = v1;
  v104 = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C228();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 32);
  if (!v10 || (v11 = *(v3 + 40)) == 0)
  {
LABEL_24:
    a1;
    return;
  }

  v89 = v9;
  v90 = v7;
  v12 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v91 = v10;
  v96 = v11;
  sub_1B1AA64DC(v13, v14);
  v15 = MEMORY[0x1B27377C0](v13, v14);
  sub_1B1A94524(v13, v14);
  v16 = *([*(v3 + 16) streamDescription] + 6);
  if (!v16)
  {
    goto LABEL_31;
  }

  v94 = v15 / v16;
  if (!(v15 / v16))
  {
    v61 = &a1[OBJC_IVAR___SiriTTSAudioData_asbd];
    swift_beginAccess();
    if (*(v61 + 2))
    {
      v62 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
      OUTLINED_FUNCTION_4_28();

      v64 = &v62[OBJC_IVAR___SiriTTSAudioData_asbd];
      OUTLINED_FUNCTION_0_37(v65, &aBlock);
      OUTLINED_FUNCTION_5_30();
      *v64 = v66;
      *(v64 + 8) = xmmword_1B1C387F0;
      *(v64 + 24) = xmmword_1B1C38800;
      return;
    }
  }

  v85 = v2;
  v102 = xmmword_1B1C35270;
  v103 = xmmword_1B1C35270;
  v17 = swift_allocObject();
  v88 = 0;
  v18 = 0;
  v92 = 0;
  v19 = 0;
  v95 = v17;
  *(v17 + 16) = 0;
  v93 = v99;
  v87 = *MEMORY[0x1E6969010];
  v86 = (v6 + 104);
  v20 = 0x1FBFD2000;
  v21 = v91;
  while (!v18)
  {
    if (v19)
    {
      goto LABEL_26;
    }

    v22 = v20;
    v23 = swift_allocObject();
    v23[2] = v94;
    v23[3] = a1;
    v23[4] = v95;
    v23[5] = v3;
    v99[2] = sub_1B1AD1288;
    v99[3] = v23;
    aBlock = MEMORY[0x1E69E9820];
    v98 = 1107296256;
    v99[0] = sub_1B1AD121C;
    v99[1] = &block_descriptor_26;
    v24 = _Block_copy(&aBlock);
    OUTLINED_FUNCTION_4_28();
    v26 = v25;
    v27 = a1;

    aBlock = 0;
    v18 = [v21 convertToBuffer:v26 error:&aBlock withInputFromBlock:v24];
    _Block_release(v24);
    v19 = aBlock;
    v28 = aBlock;
    if (v18 > 1)
    {
      v18 = 1;
LABEL_17:
    }

    else
    {
      if (!OUTLINED_FUNCTION_3_26())
      {
        goto LABEL_17;
      }

      v29 = [v26 audioBufferList];

      v30 = v29[2];
      if (!v30)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v31 = [v26 audioBufferList];

      v84 = v31[3];
      v32 = v89;
      v83 = *v86;
      v83(v89, v87, v90);
      v33 = MEMORY[0x1B2737710](v30, v84, v32);
      v84 = v34;
      sub_1B1C2C318();
      sub_1B1A94524(v33, v84);
      v35 = 0;
      v36 = 16 * OUTLINED_FUNCTION_3_26();
      while (v36 != v35)
      {
        v37 = [v26 packetDescriptions];
        if (!v37)
        {
          goto LABEL_33;
        }

        v38 = *&v37[v35];
        v39 = __OFADD__(v38, v92);
        v40 = v38 + v92;
        if (v39)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
        }

        *&v37[v35] = v40;
        v35 += 16;
      }

      v41 = [v26 packetDescriptions];
      if (!v41)
      {
        goto LABEL_35;
      }

      v42 = v41;
      v92 = 16 * OUTLINED_FUNCTION_3_26();
      v43 = v89;
      v83(v89, v87, v90);
      v44 = MEMORY[0x1B2737710](v42, v92, v43);
      v92 = v45;
      sub_1B1C2C318();
      sub_1B1A94524(v44, v92);
      v46 = [v26 packetDescriptions];
      v21 = v91;
      if (!v46)
      {
        goto LABEL_36;
      }

      v47 = &v46[16 * OUTLINED_FUNCTION_3_26()];
      v48 = *(v47 - 2);
      v49 = *(v47 - 1);
      v92 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_32;
      }

      v50 = OUTLINED_FUNCTION_3_26();
      v39 = __OFADD__(v88, v50);
      v88 += v50;
      v20 = v22;
      if (v39)
      {
        __break(1u);
        goto LABEL_24;
      }
    }
  }

  if (v19)
  {
LABEL_26:
    aBlock = 0;
    v98 = 0xE000000000000000;
    sub_1B1C2D538();

    aBlock = 0xD00000000000002CLL;
    v98 = 0x80000001B1C52A80;
    v51 = [v19 localizedDescription];
    v52 = sub_1B1C2CB58();
    v54 = v53;

    MEMORY[0x1B27381B0](v52, v54);

    v55 = aBlock;
    v56 = v21;
    v57 = v98;
    v58 = sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34(&type metadata for TTSError, v58);
    *v59 = 1;
    *(v59 + 8) = v55;
    *(v59 + 16) = v57;
    swift_willThrow();
    OUTLINED_FUNCTION_4_28();

    sub_1B1A94524(v102, *(&v102 + 1));
    sub_1B1A94524(v103, *(&v103 + 1));

    return;
  }

  v67 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
  OUTLINED_FUNCTION_4_28();

  v69 = &v67[OBJC_IVAR___SiriTTSAudioData_asbd];
  OUTLINED_FUNCTION_0_37(v70, &aBlock);
  OUTLINED_FUNCTION_5_30();
  *v69 = v71;
  *(v69 + 8) = xmmword_1B1C387F0;
  *(v69 + 24) = xmmword_1B1C38800;
  v72 = v103;
  v73 = &v67[OBJC_IVAR___SiriTTSAudioData_audioData];
  OUTLINED_FUNCTION_0_37(v74, v101);
  v75 = *v73;
  v76 = v73[1];
  *v73 = v72;
  sub_1B1A94524(v75, v76);
  v77 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  v78 = swift_beginAccess();
  *&v67[v77] = v88;
  v79 = v102;
  v80 = &v67[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
  OUTLINED_FUNCTION_0_37(v78, v100);
  v81 = *v80;
  v82 = v80[1];
  *v80 = v79;
  sub_1B1A94524(v81, v82);
}

uint64_t sub_1B1AD1ED8()
{

  v1 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void _s14SiriTTSService12AsynchronousPA2A6BufferCRbzrlE12isProcessingSbvg_0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_12_7();
  v1();
  OUTLINED_FUNCTION_6_13();
  v3 = v2;
  OUTLINED_FUNCTION_89_0();

  [v0 lock];

  v4 = OUTLINED_FUNCTION_1_17();
  (v1)(v4);

  v5 = OUTLINED_FUNCTION_5_15();
  sub_1B1AD0464(v5, v6);
  OUTLINED_FUNCTION_22_4();
}

void *Asynchronous<>.waitDequeue()(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = v2;
  v51 = a1;
  v5 = sub_1B1C2C428();
  v47 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = v2[3];
  [v11 lock];
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 96);
  v14 = v12 + 96;
  v15 = v13();
  sub_1B1A95484(v15);
  OUTLINED_FUNCTION_89_0();

  if (v3)
  {
    v16 = (*(*v2 + 14))(&v52);
    v17 = sub_1B1AA87F0();
    v16(&v52, 0);
    v18 = v4;
LABEL_13:
    [v18[3] unlock];
    return v17;
  }

  else
  {
    v49 = v14;
    v50 = v13;
    ++v47;
    v48 = v11;
    v19 = v46;
    while (1)
    {
      Asynchronous<>.isProcessing.getter();
      v18 = v4;
      v20 = v50;
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v50();
      v3 = v22 >> 62 ? sub_1B1C2D468() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        break;
      }

      sub_1B1C2C3E8();
      v4 = v18;
      Asynchronous<>.waitTimeout.getter();
      sub_1B1C2C398();
      v23 = *v47;
      (*v47)(v8, v5);
      v24 = sub_1B1C2C378();
      v23(v10, v5);
      v3 = [v48 waitUntilDate_];

      if ((v3 & 1) == 0)
      {
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v28 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v28, qword_1ED9A9120);

        v29 = sub_1B1C2C888();
        v30 = sub_1B1C2D0C8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_21_0();
          v32 = OUTLINED_FUNCTION_19_0();
          v52 = v32;
          *v31 = 136315138;
          v54 = v4;

          v33 = sub_1B1C2CBD8();
          v35 = sub_1B1A930E4(v33, v34, &v52);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_1B1A8A000, v29, v30, "Workflow: waitDequeue timed out in %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
          v18 = v4;
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1B1C2D538();

        v52 = 0xD000000000000023;
        v53 = 0x80000001B1C4CDF0;
        v54 = v18;

        v42 = sub_1B1C2CBD8();
        MEMORY[0x1B27381B0](v42);

        v17 = v52;
        v43 = v53;
        sub_1B1A9EC9C();
        swift_allocError();
        *v44 = 2;
        *(v44 + 8) = v17;
        *(v44 + 16) = v43;
        swift_willThrow();
        goto LABEL_13;
      }
    }

    v25 = v20();
    sub_1B1A95484(v25);
    OUTLINED_FUNCTION_89_0();

    if (v3)
    {
      v26 = (*(*v18 + 14))(&v52);
      v17 = sub_1B1AA87F0();
      v26(&v52, 0);
      goto LABEL_13;
    }

    v52 = v18;
    v36 = v18;
    v37 = *(v19 + 8);
    v38 = v51;
    v17 = *(v37(v51, v19) + 24);
    v39 = v17;

    if (!v17)
    {
      v18 = v36;
      goto LABEL_13;
    }

    v52 = v36;
    v17 = v37(v38, v19);
    v40 = v17[3];
    v41 = v40;

    if (v40)
    {
      swift_willThrow();
      v18 = v36;
      goto LABEL_13;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1AD25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&outTimeStamp, 0, sizeof(outTimeStamp));
  result = AudioQueueGetCurrentTime(*(a1 + 72), 0, &outTimeStamp, 0);
  if (result)
  {
    v4 = 1;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v4 = 0;
    v8 = *&outTimeStamp.mSampleTime;
    v5 = *&outTimeStamp.mRateScalar;
    v6 = *&outTimeStamp.mSMPTETime.mSubframes;
    v7 = *&outTimeStamp.mSMPTETime.mHours;
  }

  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  return result;
}

void sub_1B1AD2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = sub_1B1C2BF08();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B1C2BF38();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_14;
    }

    v11 = (a1 - v10 + v9);
  }

  else
  {
    v11 = 0;
  }

  sub_1B1C2BF28();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *(a4 + 8);
  v13 = &a5[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = __OFSUB__(HIDWORD(v14), v14);
      v18 = HIDWORD(v14) - v14;
      if (v17)
      {
        goto LABEL_15;
      }

      v16 = v18;
LABEL_11:
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        JUMPOUT(0x1B1AD2768);
      }

LABEL_12:
      memmove(v12, v11, v16);

      return;
    case 2uLL:
      v21 = v14 + 16;
      v19 = *(v14 + 16);
      v20 = *(v21 + 8);
      v16 = v20 - v19;
      if (!__OFSUB__(v20, v19))
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    case 3uLL:
      goto LABEL_12;
    default:
      v16 = BYTE6(v15);
      goto LABEL_12;
  }
}

AudioQueueBuffer *sub_1B1AD279C(SInt64 a1, unint64_t a2, uint64_t a3, AudioQueueBuffer *a4, char *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      v20 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_17;
      }

      v21 = a1;

      v14 = a5;
      v15 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v21;
      v17 = v20;
      goto LABEL_11;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      *(&v23.mStartOffset + 6) = 0;
      v23.mStartOffset = 0;
      v9 = *(a3 + 72);
      v18 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      v11 = *&a5[v18];
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      if (HIDWORD(v11))
      {
        goto LABEL_18;
      }

LABEL_8:
      v19 = AudioQueueEnqueueBuffer(v9, a4, v11, &v23);
LABEL_13:
      a4 = v19;

      return a4;
    default:
      v23.mStartOffset = a1;
      LOWORD(v23.mVariableFramesInPacket) = a2;
      BYTE2(v23.mVariableFramesInPacket) = BYTE2(a2);
      HIBYTE(v23.mVariableFramesInPacket) = BYTE3(a2);
      LOBYTE(v23.mDataByteSize) = BYTE4(a2);
      BYTE1(v23.mDataByteSize) = BYTE5(a2);
      v9 = *(a3 + 72);
      v10 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      a1 = swift_beginAccess();
      v11 = *&a5[v10];
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (!HIDWORD(v11))
      {
        goto LABEL_8;
      }

      __break(1u);
LABEL_5:
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);

      v14 = a5;
      v15 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v12;
      v17 = v13;
LABEL_11:
      v19 = sub_1B1AD29D4(v16, v17, v15, a3, a4, v14);
      if (!v5)
      {
        goto LABEL_13;
      }

      return a4;
  }
}

const AudioStreamPacketDescription *sub_1B1AD29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, AudioQueueBuffer *a5, char *a6)
{
  result = sub_1B1C2BF08();
  v12 = result;
  if (result)
  {
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v12 = (v12 + a1 - result);
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1B1C2BF28();
  if (v12)
  {
    v13 = *(a4 + 72);
    v14 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    result = swift_beginAccess();
    v15 = *&a6[v14];
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v15))
      {
        v16 = AudioQueueEnqueueBuffer(v13, a5, v15, v12);

        return v16;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B1AD2ACC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AD2B24();
  }

  return result;
}

void sub_1B1AD2B24()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval;
  if (!*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval))
  {
    sub_1B1C2C7E8();
    v5 = sub_1B1C2C818();
    v6 = sub_1B1C2D188();
    if (sub_1B1C2D278())
    {
      v7 = OUTLINED_FUNCTION_20_0();
      *v7 = 0;
      v8 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v5, v6, v8, "TTSPlayback", "", v7, 2u);
      OUTLINED_FUNCTION_11();
    }

    v9 = OUTLINED_FUNCTION_11_5();
    v10(v9);
    sub_1B1C2C868();
    v11 = swift_allocObject();
    sub_1B1C2C858();
    v12 = OUTLINED_FUNCTION_16_8();
    v13(v12);
    *(v1 + v4) = v11;
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AD2CB0()
{
  OUTLINED_FUNCTION_59_5();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_28();
  v10 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v131);
  sub_1B1AADD60(v0 + v10, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v69)
  {
    sub_1B1AABFB0(v0);
LABEL_6:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  v11 = OUTLINED_FUNCTION_21_12();
  v12(v11);
  v13 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v14 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  OUTLINED_FUNCTION_66_0(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime, &v130);
  if (*(v13 + v14))
  {
LABEL_5:
    v15 = OUTLINED_FUNCTION_45_7();
    v16(v15);
    goto LABEL_6;
  }

  v116 = v1;
  *(v13 + v14) = mach_absolute_time();
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF7C8]) init];
  v117 = v17;
  if (v17)
  {
    InstrumentationMetrics.customerPerceivedLatency.getter();
    *&v18 = v18;
    [v17 setCustomerPerceivedLatencyInSecond_];
    v19 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
    OUTLINED_FUNCTION_65(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS, &v127);
    [v17 setSynthesisSource_];
    v20 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
    v21 = v17;
    v22 = [v20 init];
    [v21 setVoiceContext_];

    v23 = OUTLINED_FUNCTION_52_6();
    if (v23)
    {
      v24 = v23;
      v25 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v25)
      {
        v26 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_65(v25 + OBJC_IVAR___SiriTTSSynthesisVoice_type, &v126);
        v27 = *(v25 + v26);
        v17 = v117;
        v28 = sub_1B1AD3C90(v27);
      }

      else
      {
        v28 = 1;
      }

      [v24 setVoiceType_];
    }

    v29 = OUTLINED_FUNCTION_52_6();
    if (v29)
    {
      v30 = v29;
      v31 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v31)
      {
        v32 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
        OUTLINED_FUNCTION_65(v31 + OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0], &v125);
        v33 = *(v31 + v32);
        v17 = v117;
        v34 = sub_1B1AD3CB4(v33);
      }

      else
      {
        v34 = 1;
      }

      [v30 setVoiceFootprint_];
    }

    v35 = OUTLINED_FUNCTION_52_6();
    if (v35)
    {
      v36 = v35;
      v37 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v37)
      {
        v38 = (v37 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
        OUTLINED_FUNCTION_65(v37 + OBJC_IVAR___SiriTTSSynthesisVoice_name, &v124);
        v39 = v38[1];
        if (v39)
        {
          v40 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v38, v39);
        }

        else
        {
          v40 = 0;
        }

        v17 = v117;
      }

      else
      {
        v40 = 0;
      }

      [v36 setVoiceName_];
    }

    v41 = OUTLINED_FUNCTION_52_6();
    if (!v41)
    {
      goto LABEL_33;
    }

    v42 = v41;
    v43 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
    if (v43)
    {
      v44 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_version + v43, &v123);
      v45 = *(v44 + v43);
      if ((v45 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      v17 = v117;
      if (!HIDWORD(v45))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    v45 = 0;
LABEL_32:
    [v42 setVoiceVersion_];

LABEL_33:
    v46 = OUTLINED_FUNCTION_52_6();
    if (!v46)
    {
LABEL_40:
      [v21 setSynthesisEffect_];
      v51 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
      OUTLINED_FUNCTION_65(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState, &v121);
      [v21 setThermalState_];
      v52 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
      OUTLINED_FUNCTION_65(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel, &v120);
      [v21 setThermalLevel_];
      v53 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds);
      *&v53 = v53;
      [v21 setAssetSelectionLatencyInSecond_];
      v54 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
      OUTLINED_FUNCTION_65(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency, &v119);
      v55 = *(v13 + v54);
      *&v55 = v55;
      [v21 setAudioQueueLatencyInSecond_];
      v56 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
      OUTLINED_FUNCTION_65(v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, &v118);
      [v21 setIsWarmStart_];
      goto LABEL_41;
    }

    v47 = v46;
    v48 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
    if (!v48)
    {
      goto LABEL_38;
    }

    v49 = OBJC_IVAR___SiriTTSSynthesisResource_version;
    OUTLINED_FUNCTION_65(v48 + OBJC_IVAR___SiriTTSSynthesisResource_version, &v122);
    v50 = *(v48 + v49);
    if ((v50 & 0x8000000000000000) == 0)
    {
      v17 = v117;
      if (!HIDWORD(v50))
      {
LABEL_39:
        [v47 setResourceVersion_];

        goto LABEL_40;
      }

      __break(1u);
LABEL_38:
      v50 = 0;
      goto LABEL_39;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_41:
  v57 = (v13 + OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptStyle);
  OUTLINED_FUNCTION_65(v57, &v129);
  if (v17 && v57[1])
  {
    v58 = v17;
    OUTLINED_FUNCTION_34_11();

    v59 = SynthesisContext.PromptStyle.init(_:)();
    if ((v60 & 1) != 0 || v59 > 3)
    {
      v61 = 0;
    }

    else
    {
      v61 = (v59 + 1);
    }

    [v57 setLlmStylePrompt_];
  }

  v62 = v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo;
  v63 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo + 8);
  if (v63)
  {
    v64 = *v62;
    v65 = v17;
    v66 = *(v62 + 16);
    v114 = *(v62 + 24);
    v115 = *(v62 + 32);
    if (v65)
    {
      v67 = *(v62 + 40);

      LODWORD(v68) = v67;
      [v65 setVolume_];
    }

    else
    {
    }

    v69 = v64 == 0x6E49746C697542 && v63 == 0xE700000000000000;
    if (v69 || ((v70 = OUTLINED_FUNCTION_23_13(0x6E49746C697542, 0xE700000000000000), v64 == 0x72656B61657053) ? (v71 = v63 == 0xE700000000000000) : (v71 = 0), !v71 ? (v72 = 0) : (v72 = 1), (v70 & 1) != 0 || (v72 & 1) != 0 || (OUTLINED_FUNCTION_23_13(0x72656B61657053, 0xE700000000000000) & 1) != 0))
    {
      v17 = v117;
      if (v117)
      {
        v73 = 2;
        goto LABEL_67;
      }

LABEL_90:

      goto LABEL_105;
    }

    v86 = v64 == 0x6F69647541726143 && v63 == 0xEE0074757074754FLL;
    if (v86 || (OUTLINED_FUNCTION_23_13(0x6F69647541726143, 0xEE0074757074754FLL) & 1) != 0)
    {
      v17 = v117;
      if (!v117)
      {
        goto LABEL_90;
      }

      v73 = 7;
    }

    else
    {
      v87 = v64 == 0x79616C50726941 && v63 == 0xE700000000000000;
      if (v87 || (OUTLINED_FUNCTION_23_13(0x79616C50726941, 0xE700000000000000) & 1) != 0 || (v64 == 0x73656E7554726941 ? (v88 = v63 == 0xE800000000000000) : (v88 = 0), v88 || (OUTLINED_FUNCTION_23_13(0x73656E7554726941, 0xE800000000000000) & 1) != 0))
      {
        v17 = v117;
        if (!v117)
        {
          goto LABEL_90;
        }

        v73 = 8;
      }

      else
      {
        if ((v66 & 0x100) != 0)
        {
          if (v66)
          {
            if (!v117)
            {
              goto LABEL_103;
            }

            v73 = 3;
          }

          else
          {
            if (!v117)
            {
              goto LABEL_103;
            }

            v73 = 5;
          }
        }

        else if (v66)
        {
          if (!v117)
          {
            goto LABEL_103;
          }

          v73 = 4;
        }

        else
        {
          if (!v117)
          {
            goto LABEL_103;
          }

          v73 = 6;
        }

        v17 = v117;
      }
    }

LABEL_67:
    [v17 setAudioOutputRoute_];
    v74 = objc_allocWithZone(MEMORY[0x1E69CF778]);
    v75 = v17;
    v76 = [v74 init];
    OUTLINED_FUNCTION_35_11(v76, sel_setAudioInterface_);

    v77 = [v75 audioInterface];
    if (v77)
    {
      v78 = v77;
      v128 = v114;
      v79 = sub_1B1C2D778();
      sub_1B1AD55EC(v79, v80, v78, &selRef_setVendorId_);
    }

    v81 = [v75 audioInterface];
    if (v81)
    {
      v82 = v81;
      v128 = v115;
      v83 = sub_1B1C2D778();
      v85 = v84;

      sub_1B1AD55EC(v83, v85, v82, &selRef_setProductId_);

LABEL_104:
      v17 = v117;
      goto LABEL_105;
    }

LABEL_103:

    goto LABEL_104;
  }

LABEL_105:
  v89 = [objc_allocWithZone(MEMORY[0x1E69CF790]) init];
  [v89 setStartedOrChanged_];
  if (v89)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v7 + 16))(v116, v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v5);
    v90 = v89;
    v91 = sub_1B1AABA20(v116);
    OUTLINED_FUNCTION_35_11(v91, sel_setContextId_);
  }

  v92 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
  if (!v92)
  {
    v104 = OUTLINED_FUNCTION_45_7();
    v105(v104);

    goto LABEL_6;
  }

  v93 = v92;
  [v92 setSpeechContext_];
  sub_1B1AABABC();
  v95 = v94;
  OUTLINED_FUNCTION_35_11(v94, sel_setEventMetadata_);

  OUTLINED_FUNCTION_55_4();
  v97 = [v93 v96];
  if (v97)
  {
    v98 = v97;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_37_1();
    v99();
    v100 = sub_1B1AABA20(v116);
    [v98 setTtsId_];

    v95 = &off_1E7AF4000;
  }

  v101 = [v93 v95[441]];
  if (v101)
  {
    v102 = v101;
    if (*(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {

      v103 = sub_1B1C2CB28();
    }

    else
    {
      v103 = 0;
    }

    OUTLINED_FUNCTION_69_4(v101, sel_setClientId_);
  }

  sub_1B1AABE04(v93);
  v106 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v106 || (v107 = [v106 captureSnapshot]) == 0)
  {
    v112 = OUTLINED_FUNCTION_45_7();
    v113(v112);

    goto LABEL_6;
  }

  v108 = v107;
  v109 = [objc_opt_self() context];
  if (v109)
  {
    v110 = v109;
    v111 = sub_1B1C2C448();
    [v108 logWithEventContext:v110 ttsIdentifier:v111];

    goto LABEL_5;
  }

LABEL_123:
  __break(1u);
}

void sub_1B1AD3824(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3)
{
  if (qword_1ED9A5118 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9A5120;
  [qword_1ED9A5120 lock];
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1AD3948();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    mUserData = a3->mUserData;
    if (!mUserData)
    {
      __break(1u);
      return;
    }

    AudioQueueFreeBuffer(a2, a3);
    v8 = mUserData[3];

    v8(0);
  }

  [v5 unlock];
}

void sub_1B1AD3948()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 880, v2);
  v3 = *(v0 + 880);
  v4 = *(v0 + 904);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1AD39BC(void *a1, uint64_t a2, void *a3)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v6, qword_1ED9A9120);
  v7 = a3;
  v8 = sub_1B1C2C888();
  v9 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    *(v10 + 4) = a2;
    *(v10 + 12) = 2048;
    v11 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    swift_beginAccess();
    *(v10 + 14) = *&v7[v11];
    *(v10 + 22) = 2048;
    v12 = &v7[OBJC_IVAR___SiriTTSAudioData_audioData];
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = 0;
    switch(v14 >> 62)
    {
      case 1uLL:
        LODWORD(v15) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x1B1AD3BB0);
        }

        v15 = v15;
LABEL_12:
        *(v10 + 24) = v15;

        _os_log_impl(&dword_1B1A8A000, v8, v9, "Played audio buffer #%ld, packet count: %ld, bytes: %ld", v10, 0x20u);
        MEMORY[0x1B2739FD0](v10, -1, -1);

        if (!a1)
        {
          return;
        }

        goto LABEL_7;
      case 2uLL:
        v19 = v13 + 16;
        v18 = *(v13 + 16);
        v17 = *(v19 + 8);
        v20 = __OFSUB__(v17, v18);
        v15 = v17 - v18;
        if (!v20)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_12;
      default:
        v15 = BYTE6(v14);
        goto LABEL_12;
    }
  }

  if (a1)
  {
LABEL_7:
    v16 = a1;
    sub_1B1B02E5C();
  }
}

uint64_t sub_1B1AD3BC0()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B1AD3BF8(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_1B1C41554[a1];
  }
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t a1)
{

  return sub_1B1C2D628();
}

uint64_t sub_1B1AD3C90(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1B1C4153C[a1 - 1];
  }
}

uint64_t sub_1B1AD3CB4(unint64_t a1)
{
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F726161 && a2 == 0xE500000000000000;
  if (v3 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6E61646961 && a2 == 0xE500000000000000;
  if (v7 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 2;
  }

  v8 = a1 == 0x6873616B61 && a2 == 0xE500000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 3;
  }

  v9 = a1 == 0x6965736B656C61 && a2 == 0xE700000000000000;
  if (v9 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 4;
  }

  v10 = a1 == 1635150945 && a2 == 0xE400000000000000;
  if (v10 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 5;
  }

  v11 = a1 == 0x65696C656D61 && a2 == 0xE600000000000000;
  if (v11 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 6;
  }

  v12 = a1 == 0x6C65676E61 && a2 == 0xE500000000000000;
  if (v12 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 7;
  }

  v13 = a1 == 0x727568747261 && a2 == 0xE600000000000000;
  if (v13 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 8;
  }

  v14 = a1 == 1818589281 && a2 == 0xE400000000000000;
  if (v14 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 9;
  }

  v15 = a1 == 0x7A697274616562 && a2 == 0xE700000000000000;
  if (v15 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 10;
  }

  v16 = a1 == 0x6E656D726163 && a2 == 0xE600000000000000;
  if (v16 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 11;
  }

  v17 = a1 == 0x74696D726163 && a2 == 0xE600000000000000;
  if (v17 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 12;
  }

  v18 = a1 == 0x6E69726568746163 && a2 == 0xE900000000000065;
  if (v18 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 13;
  }

  v19 = a1 == 0x6E6168676E656863 && a2 == 0xE800000000000000;
  if (v19 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 14;
  }

  v20 = a1 == 0x746E6179616D6164 && a2 == 0xE900000000000069;
  if (v20 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 15;
  }

  v21 = a1 == 0x6E6F6D6164 && a2 == 0xE500000000000000;
  if (v21 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 16;
  }

  v22 = a1 == 0x6C65696E6164 && a2 == 0xE600000000000000;
  if (v22 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 17;
  }

  v23 = a1 == 0x432D45442D6564 && a2 == 0xE700000000000000;
  if (v23 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 18;
  }

  v24 = a1 == 0x442D45442D6564 && a2 == 0xE700000000000000;
  if (v24 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 19;
  }

  v25 = a1 == 1718185061 && a2 == 0xE400000000000000;
  if (v25 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 20;
  }

  v26 = a1 == 0x6E656C6C65 && a2 == 0xE500000000000000;
  if (v26 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 21;
  }

  v27 = a1 == 1702063205 && a2 == 0xE400000000000000;
  if (v27 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 22;
  }

  v28 = a1 == 0x432D42472D6E65 && a2 == 0xE700000000000000;
  if (v28 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 23;
  }

  v29 = a1 == 0x442D42472D6E65 && a2 == 0xE700000000000000;
  if (v29 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 24;
  }

  v30 = a1 == 0x637365636E617266 && a2 == 0xE900000000000061;
  if (v30 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 25;
  }

  v31 = a1 == 0x6E6F64726F67 && a2 == 0xE600000000000000;
  if (v31 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 26;
  }

  v32 = a1 == 0x432D55412D6E65 && a2 == 0xE700000000000000;
  if (v32 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 94;
  }

  v33 = a1 == 0x442D55412D6E65 && a2 == 0xE700000000000000;
  if (v33 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 95;
  }

  v34 = a1 == 0x69726F74746168 && a2 == 0xE700000000000000;
  if (v34 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 27;
  }

  v35 = a1 == 0x616E656C6568 && a2 == 0xE600000000000000;
  if (v35 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 28;
  }

  v36 = a1 == 1869769064 && a2 == 0xE400000000000000;
  if (v36 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 29;
  }

  v37 = a1 == 0x6E69796F68 && a2 == 0xE500000000000000;
  if (v37 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 30;
  }

  v38 = a1 == 0x646972676E69 && a2 == 0xE600000000000000;
  if (v38 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 31;
  }

  v39 = a1 == 1936614762 && a2 == 0xE400000000000000;
  if (v39 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 32;
  }

  v40 = a1 == 0x6F6F736E696ALL && a2 == 0xE600000000000000;
  if (v40 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 33;
  }

  v41 = a1 == 1851875691 && a2 == 0xE400000000000000;
  if (v41 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 34;
  }

  v42 = a1 == 0x61796E616BLL && a2 == 0xE500000000000000;
  if (v42 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 35;
  }

  v43 = a1 == 0x6E6179616BLL && a2 == 0xE500000000000000;
  if (v43 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 36;
  }

  v44 = a1 == 0x7261616C6BLL && a2 == 0xE500000000000000;
  if (v44 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 37;
  }

  v45 = a1 == 0x616E6F656CLL && a2 == 0xE500000000000000;
  if (v45 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 38;
  }

  v46 = a1 == 1970104684 && a2 == 0xE400000000000000;
  if (v46 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 39;
  }

  v47 = a1 == 0x6965666E696CLL && a2 == 0xE600000000000000;
  if (v47 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 40;
  }

  v48 = a1 == 0x616E616963756CLL && a2 == 0xE700000000000000;
  if (v48 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 41;
  }

  v49 = a1 == 0x617369756CLL && a2 == 0xE500000000000000;
  if (v49 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 42;
  }

  v50 = a1 == 0x657665616DLL && a2 == 0xE500000000000000;
  if (v50 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 43;
  }

  v51 = a1 == 0x646567616DLL && a2 == 0xE500000000000000;
  if (v51 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 44;
  }

  v52 = a1 == 0x656972616DLL && a2 == 0xE500000000000000;
  if (v52 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 45;
  }

  v53 = a1 == 0x432D52462D7266 && a2 == 0xE700000000000000;
  if (v53 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 98;
  }

  v54 = a1 == 0x442D52462D7266 && a2 == 0xE700000000000000;
  if (v54 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 99;
  }

  v55 = a1 == 0x73756972616DLL && a2 == 0xE600000000000000;
  if (v55 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 46;
  }

  v56 = a1 == 0x61687472616DLL && a2 == 0xE600000000000000;
  if (v56 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 47;
  }

  v57 = a1 == 0x6E697472616DLL && a2 == 0xE600000000000000;
  if (v57 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 48;
  }

  v58 = a1 == 0x61696A69656DLL && a2 == 0xE600000000000000;
  if (v58 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 49;
  }

  v59 = a1 == 0x696A6E696DLL && a2 == 0xE500000000000000;
  if (v59 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 50;
  }

  v60 = a1 == 0x6172696F6DLL && a2 == 0xE500000000000000;
  if (v60 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 51;
  }

  v61 = a1 == 0x412D594D2D736DLL && a2 == 0xE700000000000000;
  if (v61 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 86;
  }

  v62 = a1 == 0x422D594D2D736DLL && a2 == 0xE700000000000000;
  if (v62 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 87;
  }

  v63 = a1 == 0x6F646E616ELL && a2 == 0xE500000000000000;
  if (v63 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 52;
  }

  v64 = a1 == 0x796B63696ELL && a2 == 0xE500000000000000;
  if (v64 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 53;
  }

  v65 = a1 == 1634889582 && a2 == 0xE400000000000000;
  if (v65 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 54;
  }

  v66 = a1 == 1852142191 && a2 == 0xE400000000000000;
  if (v66 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 55;
  }

  v67 = a1 == 0x6F6C6F6170 && a2 == 0xE500000000000000;
  if (v67 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 56;
  }

  v68 = a1 == 0x432D54492D7469 && a2 == 0xE700000000000000;
  if (v68 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 96;
  }

  v69 = a1 == 0x442D54492D7469 && a2 == 0xE700000000000000;
  if (v69 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 97;
  }

  v70 = a1 == 0x616E696C756170 && a2 == 0xE700000000000000;
  if (v70 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 57;
  }

  v71 = a1 == 0x657272656970 && a2 == 0xE600000000000000;
  if (v71 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 58;
  }

  v72 = a1 == 0x726574656970 && a2 == 0xE600000000000000;
  if (v72 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 59;
  }

  v73 = a1 == 0x412D54502D7470 && a2 == 0xE700000000000000;
  if (v73 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 104;
  }

  v74 = a1 == 0x422D54502D7470 && a2 == 0xE700000000000000;
  if (v74 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 105;
  }

  v75 = a1 == 0x6E6E697571 && a2 == 0xE500000000000000;
  if (v75 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 60;
  }

  v76 = a1 == 1635346802 && a2 == 0xE400000000000000;
  if (v76 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 61;
  }

  v77 = a1 == 0x6172756B6173 && a2 == 0xE600000000000000;
  if (v77 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 62;
  }

  v78 = a1 == 0x72656D6173 && a2 == 0xE500000000000000;
  if (v78 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 63;
  }

  v79 = a1 == 0x6172646E6173 && a2 == 0xE600000000000000;
  if (v79 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 64;
  }

  v80 = a1 == 1634886003 && a2 == 0xE400000000000000;
  if (v80 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 65;
  }

  v81 = a1 == 1970561395 && a2 == 0xE400000000000000;
  if (v81 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 66;
  }

  v82 = a1 == 0x6E6566756873 && a2 == 0xE600000000000000;
  if (v82 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 67;
  }

  v83 = a1 == 0x656E6F6D6973 && a2 == 0xE600000000000000;
  if (v83 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 68;
  }

  v84 = a1 == 0x696A6E6973 && a2 == 0xE500000000000000;
  if (v84 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 69;
  }

  v85 = a1 == 1634234227 && a2 == 0xE400000000000000;
  if (v85 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 70;
  }

  v86 = a1 == 0x656968706F73 && a2 == 0xE600000000000000;
  if (v86 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 71;
  }

  v87 = a1 == 1769370995 && a2 == 0xE400000000000000;
  if (v87 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 72;
  }

  v88 = a1 == 0x6173736574 && a2 == 0xE500000000000000;
  if (v88 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 73;
  }

  v89 = a1 == 0x412D48542D6874 && a2 == 0xE700000000000000;
  if (v89 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 74;
  }

  v90 = a1 == 0x422D48542D6874 && a2 == 0xE700000000000000;
  if (v90 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 75;
  }

  v91 = a1 == 0x65646C6974 && a2 == 0xE500000000000000;
  if (v91 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 76;
  }

  v92 = a1 == 1768976244 && a2 == 0xE400000000000000;
  if (v92 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 77;
  }

  v93 = a1 == 0x746E65636E6976 && a2 == 0xE700000000000000;
  if (v93 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 78;
  }

  v94 = a1 == 0x412D4E562D6976 && a2 == 0xE700000000000000;
  if (v94 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 90;
  }

  v95 = a1 == 0x422D4E562D6976 && a2 == 0xE700000000000000;
  if (v95 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 91;
  }

  v96 = a1 == 0x432D4E562D6976 && a2 == 0xE700000000000000;
  if (v96 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 92;
  }

  v97 = a1 == 0x442D4E562D6976 && a2 == 0xE700000000000000;
  if (v97 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 93;
  }

  v98 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF412D74756F6B72;
  if (v98 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 100;
  }

  v99 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF422D74756F6B72;
  if (v99 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 101;
  }

  v100 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF432D74756F6B72;
  if (v100 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 102;
  }

  v101 = a1 == 0x7265646E6178 && a2 == 0xE600000000000000;
  if (v101 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 79;
  }

  v102 = a1 == 0x6E696D736179 && a2 == 0xE600000000000000;
  if (v102 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 80;
  }

  v103 = a1 == 0x61646C6579 && a2 == 0xE500000000000000;
  if (v103 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 81;
  }

  v104 = a1 == 0x616E656C6579 && a2 == 0xE600000000000000;
  if (v104 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 82;
  }

  v105 = a1 == 1634628985 && a2 == 0xE400000000000000;
  if (v105 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 83;
  }

  v106 = a1 == 0x7568737579 && a2 == 0xE500000000000000;
  if (v106 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 84;
  }

  v107 = a1 == 0x432D4E432D687ALL && a2 == 0xE700000000000000;
  if (v107 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 88;
  }

  v108 = a1 == 0x442D4E432D687ALL && a2 == 0xE700000000000000;
  if (v108 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 89;
  }

  v5 = 85;
  if (a1 != 7760250 || a2 != 0xE300000000000000)
  {
    if (sub_1B1C2D7A8())
    {
      return 85;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1B1AD55E0(unint64_t a1)
{
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1B1AD55EC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1B1C2CB28();

  [a3 *a4];
}

uint64_t sub_1B1AD5658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_56_0();
  v9 = (v4 + *v8);
  OUTLINED_FUNCTION_15_7(v10);
  v11 = *v9;
  v12 = v9[1];
  *v9 = v6;
  v9[1] = v5;
  return a4(v11, v12);
}

uint64_t sub_1B1AD5850()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AD588C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B1AD59BC(float a1)
{
  v3 = OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_rate);
  result = OUTLINED_FUNCTION_66_0(v3, v4);
  *v1 = a1;
  return result;
}

id SpeechRequest.init(text:voice:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_56_0();
  v6 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  *&v4[v6] = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  objc_allocWithZone(type metadata accessor for SynthesisContext());
  v7 = a3;
  v8 = OUTLINED_FUNCTION_33();
  *&v4[OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext] = SynthesisContext.init(text:voice:)(v8, v9, v7);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SpeechRequest(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id AudibleContext.init()()
{
  *&v0[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId] = 0;
  v0[OBJC_IVAR___SiriTTSAudibleContext_immediate] = 1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSAudibleContext_didStartSpeaking);
  *&v0[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume] = 1065353216;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudibleContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B1AD5C10()
{
  v1 = [v0 audibleContext];
  v2 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3;
}

uint64_t sub_1B1AD5CBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B1AD5CFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1B1AD5D94()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_20_5(v7, v8);
  sub_1B1A954B0(v9);
  OUTLINED_FUNCTION_1_14();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if (OUTLINED_FUNCTION_17_8(v15))
  {
    sub_1B1A954B0(v1);
    OUTLINED_FUNCTION_6_10();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  v18 = *v2;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v13) = v0;
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    sub_1B1B37BEC(v13, v1, v0, v18);
    OUTLINED_FUNCTION_26_1();
  }
}

void sub_1B1AD5EE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_51_0(v8 + OBJC_IVAR___SiriTTSAudibleContext_audioSessionId, a2, a3, a4, a5, a6, a7, a8);
  v10 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_25_1(v10, sel_encodeInt32_forKey_);

  OUTLINED_FUNCTION_40_0(v8 + OBJC_IVAR___SiriTTSAudibleContext_immediate, v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_25_1(v15, sel_encodeBool_forKey_);

  v16 = OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudibleContext_playbackVolume);
  OUTLINED_FUNCTION_65(v16, v17);
  v18 = *v8;
  v19 = OUTLINED_FUNCTION_78();
  LODWORD(v20) = v18;
  [a1 encodeFloat:v19 forKey:v20];
}

uint64_t static CacheStorage.sharedSynthesisCache.getter()
{
  if (qword_1ED9A5220 != -1)
  {
    swift_once();
  }
}

void sub_1B1AD6050()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 672, v2);
  v3 = *(v0 + 672);
  v4 = *(v0 + 696);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AD60B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_8_2(a1);
  *(v2 + v4) = a1;
}

uint64_t sub_1B1AD6108(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_privacySensitive;
  result = OUTLINED_FUNCTION_8_2(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1B1AD6190(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1C2C8A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1C2C828();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B1A95808;
  *(v19 + 24) = v18;
  aBlock = sub_1B1BFB48C;
  v78 = v19;
  _Block_copy(a3);
  v76 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v83 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v20 == 2 || (v20 & 1) == 0)
    {
      v69 = v6;
      v70 = a3;
      v30 = mach_absolute_time();
      v31 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *&a1[v31] = v30;
      v32 = sub_1B1A919FC();
      v34 = v33;
      v71 = a2;
      v35 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      *v35 = v32;
      *(v35 + 1) = v34;

      sub_1B1A91CD0(&v71[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v17, &qword_1EB761DF8, qword_1B1C40850);
      v36 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v17, &a1[v36]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v8, qword_1ED9A9120);
      (*(v9 + 16))(v11, v37, v8);
      sub_1B1C2C808();
      v38 = a1;
      v39 = v72;
      sub_1B1C2C7E8();
      v40 = sub_1B1C2C818();
      v41 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = *&a1[v31];

        v43 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v40, v41, v43, "TTSRequestReceived", "id %llu", v42, 0xCu);
        MEMORY[0x1B2739FD0](v42, -1, -1);
      }

      else
      {
      }

      (*(v75 + 8))(v39, v69);
      (*(v73 + 8))(v14, v74);
      v44 = v38;
      v45 = sub_1B1C2C888();
      v46 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v47 = 136446210;
        v49 = [v44 description];
        v50 = sub_1B1C2CB58();
        v52 = v51;

        v53 = sub_1B1A930E4(v50, v52, &aBlock);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_1B1A8A000, v45, v46, "Start #SpeechRequest %{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x1B2739FD0](v48, -1, -1);
        MEMORY[0x1B2739FD0](v47, -1, -1);
      }

      v54 = v71;
      v55 = sub_1B1AD6C0C();
      if (!v55)
      {
        v56 = [objc_opt_self() sharedInstance];
        [v56 opaqueSessionID];

        v55 = sub_1B1BCF6C4();
      }

      v57 = *&v54[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v58 = MEMORY[0x1EEE9AC00](v55);
      *(&v69 - 2) = v54;
      *(&v69 - 1) = v44;
      MEMORY[0x1EEE9AC00](v58);
      *(&v69 - 2) = sub_1B1BFB388;
      *(&v69 - 1) = v59;
      os_unfair_lock_lock(v57 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v57 + 4);
      v60 = sub_1B1A9CB84();
      v61 = swift_allocObject();
      v61[2] = v44;
      v61[3] = sub_1B1A95808;
      v62 = v76;
      v61[4] = v76;

      v63 = v44;
      v64 = sub_1B1A927C4(sub_1B1BFB3E0, v61);

      v65 = swift_allocObject();
      v65[2] = v63;
      v65[3] = v54;
      v65[4] = sub_1B1A95808;
      v65[5] = v62;
      v81 = sub_1B1BFB380;
      v82 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = sub_1B1A955E0;
      v80 = &block_descriptor_531;
      v66 = _Block_copy(&aBlock);

      v67 = v63;
      v68 = v54;

      [v64 speakWithSpeechRequest:v67 reply:v66];
      _Block_release(v66);

      swift_unknownObjectRelease();
      a3 = v70;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v21 = sub_1B1C2C888();
      v22 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B1A8A000, v21, v22, "Skipped #SpeechRequest: TTS is disabled.", v23, 2u);
        MEMORY[0x1B2739FD0](v23, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED9A9120);
    v24 = sub_1B1C2C888();
    v25 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B1A8A000, v24, v25, "speakWithSpeechRequest:didFinish: requires correct parameters", v26, 2u);
      MEMORY[0x1B2739FD0](v26, -1, -1);
    }

    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v29 = sub_1B1C2C048();
    (a3)[2](a3, v29);
  }

  _Block_release(a3);
}

uint64_t sub_1B1AD6C14(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_67(v2 + *a2, v4);
  sub_1B1A991E4();
  return swift_endAccess();
}

unint64_t sub_1B1AD6C78(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_1B1AD6CBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  OUTLINED_FUNCTION_52_0(a1, a2, a3);
  v6 = *&v5[v3];
  v7 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_13_5();

  v8 = OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext;
  OUTLINED_FUNCTION_35_3(v9, v10, v11, v12, v13, v14, v15, v16, v19);
  v17 = *&v8[v3];
  v18 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_11_2(v18);

  sub_1B1A99C9C(a1);
}

id SpeechRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v1 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  OUTLINED_FUNCTION_4_2();
  result = sub_1B1C2D1E8();
  if (result)
  {
    OUTLINED_FUNCTION_19_2(v0 + v1, v3);
    OUTLINED_FUNCTION_143();
    type metadata accessor for SynthesisContext();
    result = OUTLINED_FUNCTION_113();
    if (result)
    {
      OUTLINED_FUNCTION_124(result, OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext);
      return BaseRequest.init(coder:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id AudibleContext.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  *&v1[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId] = 0;
  v4 = OBJC_IVAR___SiriTTSAudibleContext_immediate;
  v1[OBJC_IVAR___SiriTTSAudibleContext_immediate] = 1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSAudibleContext_didStartSpeaking);
  v5 = &v1[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume];
  *&v1[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume] = 1065353216;
  v6 = OUTLINED_FUNCTION_79_0();
  v7 = OUTLINED_FUNCTION_63_1();
  v9 = [v7 v8];

  OUTLINED_FUNCTION_66_0(&v1[v3], v24);
  *&v1[v3] = v9;
  v10 = OUTLINED_FUNCTION_99();
  v11 = OUTLINED_FUNCTION_63_1();
  LOBYTE(v9) = [v11 v12];

  OUTLINED_FUNCTION_66_0(&v1[v4], v23);
  v1[v4] = v9;
  v13 = OUTLINED_FUNCTION_78();
  v14 = OUTLINED_FUNCTION_63_1();
  [v14 v15];
  v17 = v16;

  OUTLINED_FUNCTION_45_2(v18, v22);
  *v5 = v17;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for AudibleContext();
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

uint64_t static InlineStreamingStorage.shared.getter()
{
  if (qword_1ED9A4FF0 != -1)
  {
    swift_once();
  }
}

unint64_t static OS_dispatch_queue.appSynthesisPriority(request:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  v5 = v4;
  v6 = v3 == 0xD000000000000015 && 0x80000001B1C48370 == v4;
  if (v6 || (v7 = v3, (sub_1B1C2D7A8() & 1) != 0) || (v7 == 0xD00000000000002DLL ? (v8 = 0x80000001B1C43A80 == v5) : (v8 = 0), v8))
  {

    goto LABEL_15;
  }

  v9 = sub_1B1C2D7A8();

  if (v9)
  {
LABEL_15:
    v11 = 0;
    v12 = 46;
    return v12 | (v11 << 32);
  }

  v10 = SynthesizingRequestProtocol.synthesisPriority.getter(ObjectType);
  v11 = v10 != 1;
  v12 = 46;
  if (v10 != 1)
  {
    v12 = 0;
  }

  return v12 | (v11 << 32);
}

uint64_t static PreinstalledAudioStorage.shared.getter()
{
  if (qword_1ED9A4FC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B1AD7268()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_1_8();
  return sub_1B1B20E18(v0, v1, v2, v3);
}

void sub_1B1AD72D0(uint64_t a1)
{
  swift_getObjectType();

  sub_1B1AD8E8C();
}

id WordTimingInfo.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v2 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  *&v0[OBJC_IVAR___SiriTTSWordTimingInfo_startTime] = 0;
  v3 = &v0[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  OUTLINED_FUNCTION_61_1();
  v4 = sub_1B1C2CB28();
  [v1 decodeDoubleForKey_];
  v6 = v5;

  OUTLINED_FUNCTION_66_0(&v0[v2], v13);
  *&v0[v2] = v6;
  sub_1B1A8E474(0, &qword_1ED9A8D78, 0x1E696B098);
  v7 = sub_1B1C2D1E8();
  if (v7)
  {
    v8 = v7;
    [v7 rangeValue];
    OUTLINED_FUNCTION_42_3();
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  OUTLINED_FUNCTION_45_2(v7, v12);
  *v3 = v4;
  *(v3 + 1) = v2;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for WordTimingInfo();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_1B1AD7490(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v2 = &type metadata for InstrumentationMetrics.SourceOfTTS;
  }

  v4[0] = a1;
  v4[3] = v2;
  return sub_1B1AA5E5C(v4, 0x664F656372756F73, 0xEB00000000535454);
}

double SynthesisCacheFile.SynthesisCacheChunkIterator.next()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1B1C2D068();
  if (v3 >> 60 != 15)
  {
    v5 = sub_1B1AD765C(v2, v3);
    sub_1B1C2D068();
    if (v6 >> 60 == 15)
    {
      v7 = OUTLINED_FUNCTION_15();
    }

    else
    {
      if (MEMORY[0x1B27377C0]() == v5)
      {
        sub_1B1C2C008();
        swift_allocObject();
        sub_1B1C2BFF8();
        sub_1B1AD76E8();
        sub_1B1C2BFE8();
        v11 = OUTLINED_FUNCTION_42_0();
        sub_1B1AA9670(v11, v12);
        v13 = OUTLINED_FUNCTION_15();
        sub_1B1AA9670(v13, v14);

        result = *&v15;
        *a1 = v15;
        return result;
      }

      v9 = OUTLINED_FUNCTION_15();
      sub_1B1AA9670(v9, v10);
      v7 = OUTLINED_FUNCTION_42_0();
    }

    sub_1B1AA9670(v7, v8);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1B1AD765C(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1B1AD76D8);
      }

      v4 = a1;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a1 + 16);
LABEL_6:
      result = sub_1B1BDB9B8(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

unint64_t sub_1B1AD76E8()
{
  result = qword_1ED9A5188;
  if (!qword_1ED9A5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5188);
  }

  return result;
}

void SynthesisCache.init(from:)()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764010, &qword_1B1C40AE8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1B1AA9CD0();
  sub_1B1C2D918();
  if (v0)
  {
    goto LABEL_4;
  }

  LOBYTE(v38) = 0;
  v6 = sub_1B1C2D6D8();
  if (v6 != 12918 || v7 != 0xE200000000000000)
  {
    v16 = sub_1B1C2D7A8();

    if (v16)
    {
      goto LABEL_13;
    }

    v8 = OUTLINED_FUNCTION_35_10(v17);
    v9 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v8);
    OUTLINED_FUNCTION_7_23(v9, v10);
    OUTLINED_FUNCTION_32_11(v12, v11 | 1);
    v13 = OUTLINED_FUNCTION_15();
    v14(v13);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v2);
    goto LABEL_5;
  }

LABEL_13:
  sub_1B1AD7B44();
  OUTLINED_FUNCTION_14_17(MEMORY[0x1E6969080]);
  sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
  OUTLINED_FUNCTION_23_5();
  type metadata accessor for AudioData();
  v37 = sub_1B1C2D0E8();
  if (v37)
  {
    OUTLINED_FUNCTION_14_17(MEMORY[0x1E6969080]);
    type metadata accessor for WordTimingInfo();
    v27 = sub_1B1C2D0F8();
    v28 = v27;
    if (v27)
    {
      v29 = OUTLINED_FUNCTION_15();
      v30(v29);
      sub_1B1A94524(v38, v39);
      sub_1B1A94524(v38, v39);
      *v4 = v37;
      v4[1] = v28;
      v31 = v37;

      __swift_destroy_boxed_opaque_existential_0(v2);

      goto LABEL_5;
    }

    v32 = OUTLINED_FUNCTION_35_10(0);
    v33 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v32);
    OUTLINED_FUNCTION_7_23(v33, v34);
    OUTLINED_FUNCTION_32_11(v36, v35 + 6);
    sub_1B1A94524(v38, v39);
    v23 = v38;
    v24 = v39;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_35_10(0);
    v19 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v18);
    OUTLINED_FUNCTION_7_23(v19, v20);
    OUTLINED_FUNCTION_32_11(v21, v22);
    v23 = v38;
    v24 = v39;
  }

  sub_1B1A94524(v23, v24);
  v25 = OUTLINED_FUNCTION_15();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_0(v2);
  if (v37)
  {
  }

LABEL_5:
  OUTLINED_FUNCTION_13_23();
}

unint64_t sub_1B1AD7B44()
{
  result = qword_1ED9A5250;
  if (!qword_1ED9A5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5250);
  }

  return result;
}

void sub_1B1AD7B98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v106 - v3;
  v5 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1AA95C4();
  if (!v8)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v26 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v26, qword_1ED9A9120);
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v28))
    {
      v29 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v29);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_42_4();
    return;
  }

  v9 = v8;
  if (*(v0 + 56))
  {
    sub_1B1AC5D40();
    if (v10 != 2 && (v10 & 1) != 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v11 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v11, qword_1ED9A9120);
      v12 = sub_1B1C2C888();
      v13 = sub_1B1C2D098();
      if (!OUTLINED_FUNCTION_10_2(v13))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  if (!*(v0 + 40) || (swift_getObjectType(), v14 = v9, sub_1B1AD8E8C(), v16 = v15, v14, !v16))
  {
    if (!*(v1 + 32))
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v43 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v43, qword_1ED9A9120);
      v12 = sub_1B1C2C888();
      v44 = sub_1B1C2D0B8();
      if (!OUTLINED_FUNCTION_10_2(v44))
      {
        goto LABEL_43;
      }

LABEL_42:
      v45 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v45);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_29_1();
LABEL_43:

      OUTLINED_FUNCTION_42_4();
      return;
    }

    v109 = *(v1 + 32);

    v37 = sub_1B1AA95A0(v35, v36);
    if (!v37)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v52 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v52, qword_1ED9A9120);
      v53 = sub_1B1C2C888();
      v54 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_10_2(v54))
      {
        v55 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_39_3(v55);
        OUTLINED_FUNCTION_16_6();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      OUTLINED_FUNCTION_42_4();

      return;
    }

    v108 = v37;
    v38 = sub_1B1AA9644();
    if (!v38)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v61 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v61, qword_1ED9A9120);
      v62 = sub_1B1C2C888();
      v63 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_10_2(v63))
      {
        v64 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_39_3(v64);
        OUTLINED_FUNCTION_16_6();
        _os_log_impl(v65, v66, v67, v68, v69, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      OUTLINED_FUNCTION_42_4();

      v70 = v108;
      goto LABEL_69;
    }

    v107 = v38;
    swift_getObjectType();
    if (SynthesizingRequestProtocol.text.getter() == 0xD000000000000010 && 0x80000001B1C4A490 == v39)
    {
    }

    else
    {
      v41 = sub_1B1C2D7A8();

      if ((v41 & 1) == 0)
      {
        v42 = v9;
        sub_1B1ACC8C8();

        sub_1B1AEA43C();

        if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
        {
          sub_1B1A90C78(v4, &qword_1EB762088, &unk_1B1C371C0);
          OUTLINED_FUNCTION_42_4();
        }

        else
        {
          sub_1B1AEACB0(v4, v7);
          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
          }

          v80 = sub_1B1C2C8A8();
          OUTLINED_FUNCTION_12_1(v80, qword_1ED9A9120);
          v81 = v42;
          v82 = sub_1B1C2C888();
          v83 = sub_1B1C2D0D8();
          v106 = v81;

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            v86 = v106;
            *(v84 + 4) = v106;
            *v85 = v9;
            v87 = v86;
            OUTLINED_FUNCTION_16_6();
            _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
            sub_1B1A90C78(v85, &qword_1EB7625C0, &qword_1B1C37990);
            MEMORY[0x1B2739FD0](v85, -1, -1);
            OUTLINED_FUNCTION_29_1();
          }

          v93 = *(v1 + 48);
          if (v93)
          {
            if (qword_1ED9A4DF8 != -1)
            {
              OUTLINED_FUNCTION_32(&qword_1ED9A4DF8);
            }

            sub_1B1AEAD14();
          }

          v111 = *&v7[*(v5 + 20)];
          v94 = v111;
          v95 = 0.0;
          while (1)
          {
            SynthesisCacheFile.SynthesisCacheChunkIterator.next()(&v110);
            v96 = v110;
            if (!v110)
            {
              break;
            }

            type metadata accessor for DataContainer();
            v97 = swift_allocObject();
            *(v97 + 16) = sub_1B1C2CAB8();
            v98 = v96;
            sub_1B1ACC2E4(v96);

            v100 = sub_1B1ACC308(v99);
            v102 = sub_1B1ABF3B8(v100, v101);
            sub_1B1AD7464(v102);
            sub_1B1AD7490(8, 0);
            AudioData.duration.getter();
            v95 = v95 + v103;
            sub_1B1AA81A8(v97);
            if (v93)
            {
              if (qword_1ED9A4EA8 != -1)
              {
                OUTLINED_FUNCTION_26_3();
                swift_once();
              }

              [v93 postNotificationName:qword_1ED9A4EB0 object:v98];
              if (qword_1ED9A4DA0 != -1)
              {
                OUTLINED_FUNCTION_25_2();
                swift_once();
              }

              sub_1B1AC4DD4();

              v104 = OUTLINED_FUNCTION_13_2();
              sub_1B1AD8690(v104);
            }

            else
            {

              v105 = OUTLINED_FUNCTION_13_2();
              sub_1B1AD8690(v105);
            }
          }

          if (v93)
          {
            if (qword_1ED9A4E88 != -1)
            {
              OUTLINED_FUNCTION_31_1(&qword_1ED9A4E88);
            }

            sub_1B1ADED40(v95);

            sub_1B1ACD41C(v7);
            return;
          }

          sub_1B1ACD41C(v7);
        }

        goto LABEL_68;
      }
    }

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v71 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v71, qword_1ED9A9120);
    v72 = sub_1B1C2C888();
    v73 = sub_1B1C2D0D8();
    if (OUTLINED_FUNCTION_10_2(v73))
    {
      v74 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v74);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v75, v76, v77, v78, v79, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_42_4();
LABEL_68:

    v70 = v107;
LABEL_69:

    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v17 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v17, qword_1ED9A9120);
  v18 = v14;
  v19 = sub_1B1C2C888();
  v20 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v9;
    v23 = v18;
    _os_log_impl(&dword_1B1A8A000, v19, v20, "Preinstalled audio is found for request %@", v21, 0xCu);
    sub_1B1A90C78(v22, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v22, -1, -1);
    MEMORY[0x1B2739FD0](v21, -1, -1);
  }

  v24 = *(v1 + 48);
  if (v24)
  {
    if (qword_1ED9A4DF8 != -1)
    {
      OUTLINED_FUNCTION_32(&qword_1ED9A4DF8);
    }

    sub_1B1AEAD14();
  }

  v25 = v16;
  sub_1B1ACC2E4(v16);
  sub_1B1AD7490(8, 0);
  OUTLINED_FUNCTION_42_4();
  if (!sub_1B1AC5E20())
  {
    if (!v24)
    {
LABEL_50:

      return;
    }

LABEL_45:
    if (qword_1ED9A4EA8 != -1)
    {
      OUTLINED_FUNCTION_26_3();
      swift_once();
    }

    [v24 postNotificationName:qword_1ED9A4EB0 object:v25];
    if (qword_1ED9A4E88 != -1)
    {
      OUTLINED_FUNCTION_31_1(&qword_1ED9A4E88);
    }

    AudioData.duration.getter();
    sub_1B1ADED40(v51);
    goto LABEL_50;
  }

  if (v24)
  {
    if (qword_1ED9A4DA0 != -1)
    {
      OUTLINED_FUNCTION_25_2();
      swift_once();
    }

    sub_1B1AC4DD4();

    goto LABEL_45;
  }
}

void *sub_1B1AD8690(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1B1AD874C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for WordTimingInfo();
    v5 = sub_1B1C2CE68();
    [v4 didGenerateWordTimingsWithRequestId:a1 wordTimingInfo:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DaemonSession.didGenerateWordTimings(requestId:wordTimingInfo:)(Swift::UInt64 requestId, Swift::OpaquePointer wordTimingInfo)
{
  v5 = *(v2 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v42 = requestId;
  os_unfair_lock_lock(v5 + 4);
  OUTLINED_FUNCTION_117_1();
  sub_1B1BFB4AC(v6, v7);
  os_unfair_lock_unlock(v5 + 4);
  v16 = v45;
  if (!v45)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v21 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v21, qword_1ED9A9120);
    v16 = sub_1B1C2C888();
    v22 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v22))
    {
      v23 = OUTLINED_FUNCTION_21_0();
      *v23 = 134217984;
      *(v23 + 4) = requestId;
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      OUTLINED_FUNCTION_9_1();
    }

    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_101_2(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, sub_1B1BFB3A0, v41, v41[0], v41[1], v41[2], v42, v43, v44))
  {
    swift_getObjectType();
    Word = SynthesizingRequestProtocol.didGenerateWordTimings.getter();
    if (Word)
    {
      v19 = Word;
      v20 = v18;
      Word(wordTimingInfo._rawValue);

      sub_1B1A949B4(v19, v20);
      return;
    }

    goto LABEL_13;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v29 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v29, qword_1ED9A9120);
  v30 = v16;
  v31 = sub_1B1C2C888();
  v32 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_21_0();
    v33 = OUTLINED_FUNCTION_17_2();
    v16 = OUTLINED_FUNCTION_145(v33, 5.7779e-34);
    OUTLINED_FUNCTION_7_24();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_1B1A90CD8(v33, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_10_1();

LABEL_13:
    return;
  }
}

void sub_1B1AD8AA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WordTimingInfo();
  v3 = sub_1B1C2CE68();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1B1AD8B10(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6_4([v2 synthesisContext]);
  OUTLINED_FUNCTION_65(v4, v5);
  v6 = *&v2[a2];

  return v6;
}

uint64_t sub_1B1AD8B64(uint64_t a1, uint64_t a2)
{
  sub_1B1C2CA38();
  OUTLINED_FUNCTION_7();
  v43 = v4;
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v45 = sub_1B1C2CBC8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v42 = sub_1B1C2CA68();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  sub_1B1C2CA58();
  v48 = SynthesizingRequestProtocol.text.getter();
  v49 = v20;
  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v21 = SynthesizingRequestProtocol.voice.getter(a2);
  v22 = &v21[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_65(&v21[OBJC_IVAR___SiriTTSSynthesisVoice_language], v47);
  v23 = *v22;
  v24 = *(v22 + 1);

  MEMORY[0x1B27381B0](v23, v24);

  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v25 = SynthesizingRequestProtocol.voice.getter(a2);
  v26 = &v25[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_26_2(v25, v46);
  v28 = *v26;
  v27 = *(v26 + 1);

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v29, v30);

  sub_1B1C2CBB8();
  sub_1B1C2CB68();
  v32 = v31;
  result = (*(v9 + 8))(v13, v45);
  if (v32 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA64DC(v34, v35);
    v36 = OUTLINED_FUNCTION_9_9();
    sub_1B1ACCEA4(v36, v37, v19);
    v38 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA9670(v38, v39);
    v40 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA9670(v40, v41);
    sub_1B1C2CA48();
    sub_1B1ACD0C0();
    (*(v43 + 8))(v7, v44);
    (*(v15 + 8))(v19, v42);
    return OUTLINED_FUNCTION_43_0();
  }

  return result;
}

void sub_1B1AD8E8C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v56 = v2;
  v4 = v3;
  v57 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v54[0] = v14 - v15;
  OUTLINED_FUNCTION_16_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_24(v20, v21, v22, v23, v24, v25, v26, v27, v54[0]);
  v28 = SynthesizingRequestProtocol.voice.getter(v1);
  v29 = &v28[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_65(&v28[OBJC_IVAR___SiriTTSSynthesisVoice_language], &v59);
  v30 = *v29;
  v31 = v29[1];

  v60 = v30;
  v61 = v31;
  OUTLINED_FUNCTION_8_8();
  v32 = SynthesizingRequestProtocol.voice.getter(v1);
  v33 = &v32[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_65(&v32[OBJC_IVAR___SiriTTSSynthesisVoice_name], &v58);
  v34 = *v33;
  v35 = *(v33 + 1);

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (!v35)
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v36, v35);

  v38 = v60;
  v37 = v61;
  v60 = sub_1B1AD8B64(v4, v1);
  v61 = v39;

  OUTLINED_FUNCTION_4_29();

  v40 = v60;
  v41 = v61;
  v42 = &v56[OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL];
  v56 = *(v12 + 16);
  (v56)(v19, v42, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B1C36280;
  *(v43 + 32) = v38;
  *(v43 + 40) = v37;
  v44 = v10;
  *(v43 + 48) = v40;
  *(v43 + 56) = v41;
  v45 = v55;
  v46 = v57;
  (*(v55 + 104))(v9, *MEMORY[0x1E6968F68], v57);
  sub_1B1A8EDAC();
  v47 = v54[1];
  sub_1B1C2C1A8();

  (*(v45 + 8))(v9, v46);
  v48 = *(v12 + 8);
  v48(v19, v44);
  v49 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v50 = sub_1B1C2CB28();

  LODWORD(v40) = [v49 fileExistsAtPath_];

  if (v40)
  {
    type metadata accessor for AudioData();
    v51 = v54[0];
    (v56)(v54[0], v47, v44);
    v52 = AudioData.__allocating_init(audioFileURL:)(v51);
    v48(v47, v44);
    AudioData.duration.getter();
    if (v53 <= 0.0)
    {
    }
  }

  else
  {
    v48(v47, v44);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AD9298(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);
    v6 = a1;
    oslog = sub_1B1C2C888();
    v7 = sub_1B1C2D0B8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1B1C2D828();
      v12 = sub_1B1A930E4(v10, v11, v24);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B1A8A000, oslog, v7, "Error during tailspin dump, %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2739FD0](v9, -1, -1);
      MEMORY[0x1B2739FD0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v24[0] = 0;
    if ([a2 closeAndReturnError_])
    {
      v15 = v24[0];
    }

    else
    {
      v16 = v24[0];
      v17 = sub_1B1C2C058();

      swift_willThrow();
    }

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);

    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1B1A930E4(a3, a4, v24);
      _os_log_impl(&dword_1B1A8A000, v19, v20, "Dumped tailspin to %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B2739FD0](v22, -1, -1);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }
  }
}

uint64_t sub_1B1AD95F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1AD9650()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1AD96B0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1AD9710(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1B1AD9784(uint64_t a1, void (**a2)(void))
{
  a2[2](a2);

  _Block_release(a2);
}

uint64_t DelegateHandler.deinit()
{
  sub_1B1AD97C8();

  sub_1B1A97294(v0 + 32);

  return v0;
}

uint64_t DelegateHandler.__deallocating_deinit()
{
  DelegateHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DiagnosticService.__deallocating_deinit()
{
  DiagnosticService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

void sub_1B1AD9898()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + 48);
  if (v2)
  {
    OUTLINED_FUNCTION_19_2(v0 + 56, v1);
    if (*(*(v0 + 56) + 16))
    {
      v3 = v2;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v4);
    }

    *(v0 + 56) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t SignpostHandler.__deallocating_deinit()
{
  SignpostHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t IsNaturalVoiceCondition.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1AD9A3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AD9A74(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B1A95870;
    v7[3] = &block_descriptor_27;
    v6 = _Block_copy(v7);

    [v5 pingWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_1B1AD9B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = (v1 + 40);
    do
    {
      [v3 removeObserver:*(v4 - 1) name:*v4 object:0];
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  *(v0 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_23Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_20Tm()
{

  v1 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t CoreAnalyticsSynthesisHandler.deinit()
{
  sub_1B1AD97C8();

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t CoreAnalyticsSynthesisHandler.__deallocating_deinit()
{
  CoreAnalyticsSynthesisHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t SignpostHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_signposter;
  v2 = sub_1B1C2C828();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriAnalyticsHandler.deinit()
{
  sub_1B1AD97C8();

  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId);
  v1 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId;
  v2 = sub_1B1C2C478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId);

  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId);
  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId);
  return v0;
}

uint64_t SiriAnalyticsHandler.__deallocating_deinit()
{
  SiriAnalyticsHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DiagnosticService.deinit()
{
  sub_1B1AD9B5C();

  return v0;
}

uint64_t CacheReadingAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t CacheReadingAction.__deallocating_deinit()
{
  v0 = CacheReadingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1B1ADA078()
{
  Buffer.deinit();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = OUTLINED_FUNCTION_13_12();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t PassThroughAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t SynthesisEngineSelectionAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t SynthesisEngineSelectionAction.__deallocating_deinit()
{
  v0 = SynthesisEngineSelectionAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DeviceSynthesisAction.deinit()
{
  sub_1B1ADA1CC();
  v0 = Buffer.deinit();

  sub_1B1ADA260(v0 + 72);

  v1 = *(v0 + 144);
  return v0;
}

uint64_t DeviceSynthesisAction.__deallocating_deinit()
{
  v0 = DeviceSynthesisAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t AsynchronousContext.__deallocating_deinit()
{
  AsynchronousContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1ADA260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B0, &unk_1B1C37260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SynthesisBufferingAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t SynthesisBufferingAction.__deallocating_deinit()
{
  v0 = SynthesisBufferingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t OpusEncodingAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1B1ADA380()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + 96);
  if (v2)
  {
    OUTLINED_FUNCTION_19_2(v0 + 104, v1);
    if (*(*(v0 + 104) + 16))
    {
      v3 = v2;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v4);
    }

    *(v0 + 104) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

id *AudioPlaybackAction.deinit()
{
  sub_1B1ADA380();

  sub_1B1A90C78((v0 + 4), &qword_1EB763F90, &unk_1B1C40840);

  return v0;
}

uint64_t AudioPlaybackAction.__deallocating_deinit()
{
  AudioPlaybackAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t BufferedAudioPlayback.deinit()
{
  OUTLINED_FUNCTION_17_3();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_44();
  return v0;
}

uint64_t BufferedAudioPlayback.__deallocating_deinit()
{
  BufferedAudioPlayback.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AudioQueueInterface.__deallocating_deinit()
{
  AudioQueueInterface.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t AudioQueueInterface.deinit()
{
  v2 = v0;
  [*(v0 + 80) lock];
  v3 = AudioQueueDispose(*(v0 + 72), 1u);
  [*(v0 + 80) unlock];
  if (v3 != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v4 = sub_1B1C2C8A8();
    v5 = OUTLINED_FUNCTION_56(v4, qword_1ED9A9120);
    sub_1B1C2D0B8();
    v6 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_23_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v1 = 136315138;
      v9 = sub_1B1B269CC(v3);
      v11 = sub_1B1A930E4(v9, v10, &v20);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v18 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v18);
    }
  }

  return v2;
}

uint64_t sub_1B1ADA774()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x404E000000000000;
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  return v0;
}

uint64_t SynthesisBufferingAction.init(pool:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 65) = 0;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = mach_absolute_time();
  *(v1 + 40) = sub_1B1ADD9B0();
  *(v1 + 72) = sub_1B1AA1E5C();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

uint64_t IsNaturalVoiceCondition.init(pool:)(uint64_t a1)
{
  v2 = sub_1B1AA1C5C();

  *(v1 + 16) = v2;
  return v1;
}

uint64_t OpusEncodingAction.init(pool:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B1ADAAC8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1ADAB28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B1ADDD74(a1, a2, a3, a4, a5, a6);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1B1B36ED4();
  v10 = *(*(v6 + 24) + 16);
  sub_1B1B3DB74(v10);
  v11 = *(v6 + 24);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 16 * v10;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v6 + 24) = v11;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1ADAC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762918, &qword_1B1C39880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SynthesisCacheWritingAction.init(pool:)(uint64_t a1)
{
  v2 = v1;
  v23 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v10 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_16();
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v1 + 16) = sub_1B1ADA774();
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 32) = 0;
  v11 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
  v12 = type metadata accessor for SynthesisCacheFile(0);
  v13 = __swift_storeEnumTagSinglePayload(v2 + v11, 1, 1, v12);
  v14 = (v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = sub_1B1ADB340(v13);
  sub_1B1AA7918();
  sub_1B1C2C9C8();
  sub_1B1A979CC(&qword_1ED9A4EC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8048]);
  sub_1B1C2D958();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v23);
  *(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cachingQueue) = sub_1B1C2D158();
  *(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_internalSettings) = sub_1B1AA1C5C();
  *(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter) = sub_1B1AA1E5C();
  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_4_12(v15);

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1ED9A4E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_4_12(v16);

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1ED9A4E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_4_12(v17);
  v18 = OUTLINED_FUNCTION_0_17();
  sub_1B1ADC1C4(v18, v19, v20);

  if (qword_1ED9A4D68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_4_12(v21);

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();
  OUTLINED_FUNCTION_9_13();
  if (qword_1EB761020 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_4_12(v22);

  OUTLINED_FUNCTION_0_17();
  sub_1B1ADB4DC();

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1ADB30C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1B1ADB4DC()
{
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v3)
  {
    OUTLINED_FUNCTION_5_9(v3);
    OUTLINED_FUNCTION_0_15();
    v4 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    OUTLINED_FUNCTION_0(v0 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers, v5);
    swift_unknownObjectRetain();
    v6 = v2;
    sub_1B1B36ED4();
    v7 = *(*(v0 + v4) + 16);
    sub_1B1B3DB74(v7);
    OUTLINED_FUNCTION_1_12(v7 + 1);
    *(v0 + v4) = v8;
    swift_endAccess();

    swift_unknownObjectRelease();
  }
}

void *DelegateHandler.init(notificationCenter:delegate:request:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_1_25();

  return sub_1B1ADB5F4(v2, v3, v4, v5);
}

void *sub_1B1ADB5F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  a4[3] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  a4[2] = a1;
  swift_unknownObjectWeakAssign();
  a4[5] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = qword_1ED9A4D58;
  v9 = a1;
  v10 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;

  sub_1B1ADAB20();

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v13;
  v15 = v10;
  sub_1B1ADABD8();

  if (qword_1ED9A4DA0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9A4DA8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = v15;
  sub_1B1ADBB38(v16, sub_1B1AC52E8, v18);

  if (qword_1ED9A4C90 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED9A4C98;
  v21 = swift_allocObject();
  swift_weakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  v23 = v19;
  sub_1B1ADBB68(v20, sub_1B1AAFF04, v22);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  sub_1B1ADAC08();

  swift_unknownObjectRelease();

  return a4;
}

uint64_t sub_1B1ADB9D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1ADBA0C()
{

  v0 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1ADBA48()
{

  v1 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1ADBA84(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = NSNotificationCenter.addObserver(event:callback:)(a1, a2, a3);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1B1B36ED4();
  v7 = *(*(v3 + 24) + 16);
  sub_1B1B3DB74(v7);
  v8 = *(v3 + 24);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v3 + 24) = v8;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id InstrumentationMetrics.init()()
{
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance);
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_voice] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_resource] = 0;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_audioOutputRoute);
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_clientBundleIdentifier);
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_experimentIdentifier);
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback] = 0;
  v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState] = 0;
  *&v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel] = -1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptVoice);
  v1 = &v0[OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptStyle];
  v2 = type metadata accessor for InstrumentationMetrics();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AudioDumpAction.__deallocating_deinit()
{
  AudioDumpAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t AudioDumpAction.deinit()
{

  return v0;
}

uint64_t SynthesisCacheWritingAction.deinit(uint64_t a1, uint64_t a2)
{
  sub_1B1ADBF80(a1, a2);

  sub_1B1AAC0B0(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile);

  return v2;
}

uint64_t SynthesisCacheWritingAction.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  SynthesisCacheWritingAction.deinit(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B1ADBF80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    OUTLINED_FUNCTION_19_2(v2 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers, a2);
    v5 = *(v2 + v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v3;
      OUTLINED_FUNCTION_10_9();
      v8 = (v5 + 40);
      do
      {
        [v3 removeObserver:*(v8 - 1) name:*v8 object:0];
        v8 += 2;
        --v6;
      }

      while (v6);
    }

    *(v2 + v4) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t AudioHandler.deinit()
{
  sub_1B1AD97C8();

  sub_1B1A90C78(v0 + 40, &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C78(v0 + 80, &qword_1EB7618F8, &unk_1B1C352E0);
  return v0;
}

uint64_t AudioHandler.__deallocating_deinit()
{
  AudioHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t SynthesisEngineSelectionAction.init(pool:)(uint64_t a1)
{
  *(v1 + 32) = sub_1B1AA2740();
  *(v1 + 40) = sub_1B1AA1E5C();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

void *sub_1B1ADC1C4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_notificationCenter);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_1B1ADD940();
    v8 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_observers;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v9 = v5;
    sub_1B1B36ED4();
    v10 = *(*(v3 + v8) + 16);
    sub_1B1B3DB74(v10);
    v11 = *(v3 + v8);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 16 * v10;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    *(v3 + v8) = v11;
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2[10] = 0;
  v2[2] = a1;
  v2[3] = v5;
  sub_1B1ADAC5C(a2, &v38);
  if (v39)
  {
    sub_1B1A8D0E0(&v38, &v40);
  }

  else
  {
    v6 = type metadata accessor for CoreAnalyticsService();
    v7 = swift_allocObject();
    v41 = v6;
    v42 = &off_1F28B79F0;
    *&v40 = v7;
  }

  v8 = a1;
  sub_1B1A8D0E0(&v40, (v2 + 4));
  v2[9] = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  if (qword_1ED9A4E40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v9);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADACF0();

  if (qword_1ED9A4D80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v10);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4EB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v11);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADBDC4();

  if (qword_1ED9A4D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v12);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAD1C();

  if (qword_1ED9A4D48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v13);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4D90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v14);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAD54();

  if (qword_1ED9A4D58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v15);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADABD8();

  if (qword_1ED9A4DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v16);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4DF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v17);
  v18 = OUTLINED_FUNCTION_0_25();
  sub_1B1ADCDB0(v18);

  if (qword_1ED9A4E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v19);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAC08();

  if (qword_1ED9A4EA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v20);
  OUTLINED_FUNCTION_0_25();
  sub_1B1ADABD8();

  if (qword_1ED9A4CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v21);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4CF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v22);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v23);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4DB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v24);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1EB760FD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v25);
  v26 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A20(v26);

  if (qword_1EB760FC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v27);
  v28 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A20(v28);

  if (qword_1ED9A4D68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v29);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1EB761010 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v30);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A4E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v31);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();
  OUTLINED_FUNCTION_10_20();
  if (qword_1ED9A52D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v32);
  v33 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A54(v33);

  if (qword_1ED9A4E28 != -1)
  {
    OUTLINED_FUNCTION_5_22(&qword_1ED9A4E28);
  }

  OUTLINED_FUNCTION_17();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v34);
  v35 = OUTLINED_FUNCTION_0_25();
  sub_1B1AF3A54(v35);

  if (qword_1ED9A4E70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_1_28(v36);

  OUTLINED_FUNCTION_0_25();
  sub_1B1ADAB20();

  sub_1B1AF3A80(a2);

  return v2;
}

uint64_t sub_1B1ADCD74()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t CacheReadingAction.init(pool:)(uint64_t a1)
{
  v1[4] = sub_1B1ADB340(a1);
  v1[5] = sub_1B1B18EB4();
  v1[6] = sub_1B1AA1E5C();
  v1[7] = sub_1B1AA1C5C();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

uint64_t WorkflowNode.init(condition:)(void *a1)
{
  v2 = v1;
  sub_1B1A94FC4(a1, &v7);
  v4 = type metadata accessor for WorkflowNode.WorkflowCondition();
  v5 = swift_allocObject();
  sub_1B1A94FC4(&v7, v5 + 32);
  _s14SiriTTSService17PassThroughActionCACycfc_0();
  __swift_destroy_boxed_opaque_existential_0(&v7);
  v8 = v4;
  v9 = &off_1F28B8340;
  *&v7 = v5;
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_1B1A8D0E0(&v7, v2 + 16);
  return v2;
}

uint64_t DeviceSynthesisAction.init(pool:)()
{
  v1 = v0;
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v0 + 32) = sub_1B1ADA774();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 128) = 0;
  *(v0 + 136) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + 144) = 0;
  sub_1B1ADD1B8();
  sub_1B1ADD454(v14, v11);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v4 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if ((v4 & 0x100000000) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1ADA260(v11);
  }

  LODWORD(v4) = 0;
  v5 = 1;
LABEL_6:
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  if (qword_1ED9A4ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C9D8();
  v7 = __swift_project_value_buffer(v6, qword_1ED9A4ED8);
  LOBYTE(v11[0]) = v5;
  *(v1 + 40) = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(0xD000000000000015, 0x80000001B1C40970, v7, v4 | (v5 << 32));
  *(v1 + 48) = sub_1B1AA1E5C();
  *(v1 + 64) = sub_1B1AA1C5C();
  v8 = sub_1B1AA2740();
  v9 = v14[1];
  *(v1 + 72) = v14[0];
  *(v1 + 88) = v9;
  *(v1 + 104) = v15;
  *(v1 + 112) = v8;
  _s14SiriTTSService17PassThroughActionCACycfc_0();
  OUTLINED_FUNCTION_24();

  return v1;
}

uint64_t sub_1B1ADD1B8()
{
  OUTLINED_FUNCTION_18_2();
  v5 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762098, &qword_1B1C37240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620A0, &unk_1B1C37248);
  sub_1B1C2CBD8();
  OUTLINED_FUNCTION_65(v0 + 24, v67);
  OUTLINED_FUNCTION_36_1();
  v6 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v6, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620A8, &qword_1B1C37258);
  if (OUTLINED_FUNCTION_40_1(v9, v10, v11, v12, v13))
  {

    return OUTLINED_FUNCTION_49_0(v14, v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_27_2();
    sub_1B1A90C78(&v63, &qword_1EB7620B0, &unk_1B1C37260);
    OUTLINED_FUNCTION_65(v1 + 16, v62);
    OUTLINED_FUNCTION_37_3();
    v19 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_45_3();
    if (v2)
    {
      v23 = v2(v66, v22);
      v27 = OUTLINED_FUNCTION_43_2(v23, v24, v25, v26);
      if (v27)
      {
        OUTLINED_FUNCTION_49_0(v27, v28, v29, v30);
        v65 = v3;
        v63 = swift_allocObject();
        v31 = sub_1B1A94FC4(v5, v63 + 16);
        v39 = OUTLINED_FUNCTION_48_3(v31, v32, v33, v34, v35, v36, v37, v38, v61);
        OUTLINED_FUNCTION_47_1(v39, v40, v41, v42, v43, v44, v45, v46);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_27_2();
        sub_1B1A90C78(&v63, &qword_1EB7620B0, &unk_1B1C37260);
        OUTLINED_FUNCTION_30_2();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_1_4();
        v63 = v54;
        v64 = v53;
        v55 = OUTLINED_FUNCTION_15();
        MEMORY[0x1B27381B0](v55);

        v56 = sub_1B1A9EC9C();
        v57 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v56);
        OUTLINED_FUNCTION_7_4(v57, v58);
      }

      v59 = OUTLINED_FUNCTION_13_2();
      return sub_1B1A949B4(v59, v60);
    }

    else
    {
      OUTLINED_FUNCTION_30_2();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      v63 = v48;
      v64 = v47;
      v49 = OUTLINED_FUNCTION_15();
      MEMORY[0x1B27381B0](v49);

      v50 = sub_1B1A9EC9C();
      v51 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v50);
      return OUTLINED_FUNCTION_7_4(v51, v52);
    }
  }
}

uint64_t sub_1B1ADD41C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1ADD454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B0, &unk_1B1C37260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B1ADD4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_7();
  v23 = *(v20 + 96);
  if (v23)
  {
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0(v20 + 104, v24);
    swift_unknownObjectRetain();
    v22;
    sub_1B1B36ED4();
    v25 = *(*(v20 + 104) + 16);
    sub_1B1B3DB74(v25);
    OUTLINED_FUNCTION_1_12(v25 + 1);
    *(v20 + 104) = v26;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

id NSNotificationCenter.addObserver(event:callback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_2_16();
  v12[2] = v8;
  v12[3] = &block_descriptor_7;
  v9 = _Block_copy(v12);

  v10 = [v3 addObserverForName:a1 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  return v10;
}

uint64_t sub_1B1ADD63C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t AudioDumpAction.init(pool:)(uint64_t a1)
{
  v2 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v10 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_16();
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v1 + 16) = sub_1B1ADA774();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  sub_1B1AA7918();
  sub_1B1C2C9C8();
  sub_1B1AADE74(&qword_1ED9A4EC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8048]);
  sub_1B1C2D958();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v2);
  *(v1 + 24) = sub_1B1C2D158();
  *(v1 + 32) = sub_1B1AA1C5C();
  sub_1B1ADDB80();

  *(v1 + 40) = 0;
  return v1;
}