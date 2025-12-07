unint64_t sub_2176D3330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD10;
  if (!qword_27CB2CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD10);
  }

  return result;
}

void sub_2176D33F4()
{
  static URL.valueForQueryItem(named:extractedFrom:)();
  if (v1)
  {
    v2 = v1;
    v3 = HIBYTE(v1) & 0xF;
    v4 = v0 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_2175B1ECC();
        goto LABEL_64;
      }

      if ((v2 & 0x2000000000000000) != 0)
      {
        v31[0] = v0;
        v31[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v0 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v20 = 0;
              v21 = v31 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_72;
        }

        if (v0 != 45)
        {
          if (v3)
          {
            v27 = 0;
            v28 = v31;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v3)
        {
          if (--v3)
          {
            v12 = 0;
            v13 = v31 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = sub_217752B88();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v16 = 0;
              if (v6)
              {
                v17 = v6 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_62;
                  }

                  v19 = 10 * v16;
                  if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v16 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_62;
                  }

                  ++v17;
                  if (!--v3)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v24 = 0;
            if (v6)
            {
              while (1)
              {
                v25 = *v6 - 48;
                if (v25 > 9)
                {
                  goto LABEL_62;
                }

                v26 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  goto LABEL_62;
                }

                v24 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  goto LABEL_62;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          LOBYTE(v3) = 1;
          goto LABEL_63;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_62;
                }

                v11 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_62;
                }

                v8 = v11 - v10;
                if (__OFSUB__(v11, v10))
                {
                  goto LABEL_62;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v3) = 0;
LABEL_63:
            v32 = v3;
LABEL_64:

            return;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }
  }
}

uint64_t MusicCatalogSearchIncrementalLoader.nextItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 1336) = v0;
  *(v1 + 1328) = v2;
  *(v1 + 1320) = v3;
  *(v1 + 1233) = v4;
  *(v1 + 1312) = v5;
  *(v1 + 1304) = v6;
  sub_217751908();
  *(v1 + 1344) = swift_task_alloc();
  v7 = sub_217751928();
  *(v1 + 1352) = v7;
  *(v1 + 1360) = *(v7 - 8);
  *(v1 + 1368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2176D37FC, 0, 0);
}

uint64_t sub_2176D37FC(uint64_t a1)
{
  v2 = *(v1 + 1336);
  v3 = v2[4];
  if (v3)
  {
    v19 = v2[3];
    if (v2[1])
    {
      v18 = *v2;
      v4 = v2[1];
    }

    else
    {
      v18 = 0;
      v4 = 0xE000000000000000;
    }

    v10 = *(v1 + 1233);
    v11 = *(v1 + 1312);
    v12 = v2[2];
    *(v1 + 1152) = 0;
    *(v1 + 1160) = 1;
    *(v1 + 1161) = 0;
    swift_beginAccess();
    v13 = off_280BEBCD0;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    (v13)(v14);

    v15 = *(v1 + 1264);
    v16 = *(v1 + 1272);
    __swift_project_boxed_opaque_existential_1((v1 + 1240), v15);
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v15, v16, v1 + 1168);
    __swift_destroy_boxed_opaque_existential_1((v1 + 1240));
    *(v1 + 1120) = v18;
    *(v1 + 1128) = v4;
    *(v1 + 1208) = v19;
    *(v1 + 1216) = v3;
    *(v1 + 1224) = v12;
    *(v1 + 1232) = 1;
    sub_21725EE54((v2 + 5), v1 + 1168);
    *(v1 + 1136) = v11;
    *(v1 + 1144) = v10 & 1;
    v17 = swift_task_alloc();
    *(v1 + 1376) = v17;
    *v17 = v1;
    v17[1] = sub_2176D3AA4;

    return sub_2173B2474();
  }

  else
  {
    v5 = *(v1 + 1368);
    v6 = *(v1 + 1360);
    v7 = *(v1 + 1352);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();

    OUTLINED_FUNCTION_20_0();

    return v8();
  }
}

uint64_t sub_2176D3AA4()
{
  OUTLINED_FUNCTION_10();
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v2 = sub_2176D3C54;
  }

  else
  {
    v2 = sub_2176D3BB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2176D3BB4()
{
  sub_2175F289C(*(v0 + 1320), *(v0 + 1328), *(v0 + 1304));
  sub_2173B8174(v0 + 16);
  sub_2176D4848(v0 + 1120);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2176D3C54()
{
  OUTLINED_FUNCTION_10();
  sub_2176D4848(v0 + 1120);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t static MusicCatalogSearchIncrementalLoader.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_217270BE0();
  if (v7)
  {
    v8 = a1[4];
    v9 = a2[4];
    if (v8)
    {
      if (v9)
      {
        v10 = a1[3] == a2[3] && v8 == v9;
        if (v10 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v9)
    {
LABEL_18:
      v11 = a1[8];
      v12 = a1[9];
      __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
      v13 = *(v12 + 112);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      return v13(a2 + 5, v14, v11, v12) & 1;
    }
  }

  return 0;
}

uint64_t MusicCatalogSearchIncrementalLoader.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_21727D7C8();
  if (v2[4])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  v4 = v2[8];
  v5 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

uint64_t MusicCatalogSearchIncrementalLoader.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchIncrementalLoader.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176D3EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21725E0A8;

  return MusicCatalogSearchIncrementalLoader.nextItemBatch<A>(limit:)();
}

uint64_t sub_2176D3FB4(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchIncrementalLoader.hash(into:)(v2);
  return sub_217753238();
}

void MusicCatalogSearchIncrementalLoader.attemptMerging<A>(with:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v76 = 0u;
  memset(v77, 0, sizeof(v77));
  v75 = 0u;
  (*(v18 + 16))(v17 - v16, v5, v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v73, 0, sizeof(v73));
    sub_2171F06D8(v73, &qword_27CB2ABE8, &unk_217797100);
    goto LABEL_32;
  }

  memcpy(v74, v73, sizeof(v74));
  v20 = *v1;
  v19 = v1[1];
  if (v19)
  {
    if (!v74[1])
    {
      goto LABEL_19;
    }

    v21 = v20 == v74[0] && v19 == v74[1];
    if (!v21 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v74[1])
  {
LABEL_19:
    sub_2175F6FDC(v74);
    goto LABEL_32;
  }

  v70 = v19;
  sub_2176D33F4();
  v23 = v22;
  sub_2176D33F4();
  if (v23 != v24)
  {
    goto LABEL_19;
  }

  v64 = v20;
  v66 = v10;
  *&v73[0] = v1[2];
  sub_217751DE8();
  v25 = sub_217751DE8();
  sub_217543D94(v25);
  sub_2173DB0E4(*&v73[0]);
  v63 = v26;

  v27 = v1[4];
  v65 = v1;
  v62 = v1[3];
  static URL.resourceTypes(extractedFrom:)();
  v29 = v28;
  static URL.resourceTypes(extractedFrom:)();
  *&v73[0] = v29;
  sub_21754365C(v30);
  sub_2173DAE08(*&v73[0]);
  v32 = v31;

  v37 = *(v32 + 16);
  v67 = v14;
  if (v37)
  {
    v61 = v27;
    v68 = v8;
    *&v73[0] = MEMORY[0x277D84F90];
    sub_217275C90(0, v37, 0, v33, v34, v35, v36);
    v38 = *&v73[0];
    v39 = (v32 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      *&v73[0] = v38;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      sub_217751DE8();
      if (v43 >= v42 >> 1)
      {
        sub_217275C90(v42 > 1, v43 + 1, 1, v44, v45, v46, v47);
        v38 = *&v73[0];
      }

      *(v38 + 16) = v43 + 1;
      v48 = v38 + 16 * v43;
      *(v48 + 32) = v40;
      *(v48 + 40) = v41;
      v39 += 3;
      --v37;
    }

    while (v37);

    v8 = v68;
    v27 = v61;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  *&v73[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0, MEMORY[0x277D83958]);
  sub_217751ED8();

  sub_2177513F8();

  static URL.modifiedRelativeURLLocation(byApplying:to:)();
  v69 = v50;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    sub_217751DE8();
    if (v27)
    {
      v52 = v62;
    }

    else
    {
      v52 = 0;
    }

    v69 = v52;
    if (v27)
    {
      v51 = v27;
    }

    else
    {
      v51 = 0xE000000000000000;
    }
  }

  v53 = v64;
  sub_2172CA838((v65 + 5), v71);
  v54 = v70;
  if (!v70)
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_5_102();
    static URL.valueForQueryItem(named:extractedFrom:)();
    v53 = v55;
    v54 = v56;
  }

  v57 = *(v66 + 8);
  sub_217751DE8();
  v57(v67, v8);
  sub_2171F06D8(&v75, &qword_27CB2ABE8, &unk_217797100);
  v73[0] = v71[0];
  v73[1] = v71[1];
  *&v73[2] = v72;
  sub_2175F6FDC(v74);
  *&v75 = v53;
  *(&v75 + 1) = v54;
  *&v76 = v63;
  *(&v76 + 1) = v69;
  v77[0] = v51;
  *&v77[1] = v73[0];
  *&v77[3] = v73[1];
  v77[5] = *&v73[2];
LABEL_32:
  sub_2174A87A0(&v75, v74, &qword_27CB2ABE8, &unk_217797100);
  if (v74[2])
  {
    v58 = swift_allocObject();
    memcpy((v58 + 16), v74, 0x50uLL);
    sub_2171F06D8(&v75, &qword_27CB2ABE8, &unk_217797100);
    v59 = &protocol witness table for MusicCatalogSearchIncrementalLoader;
    v60 = &type metadata for MusicCatalogSearchIncrementalLoader;
  }

  else
  {
    sub_2171F06D8(&v75, &qword_27CB2ABE8, &unk_217797100);
    sub_2171F06D8(v74, &qword_27CB2ABE8, &unk_217797100);
    v58 = 0;
    v60 = 0;
    v59 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *v7 = v58;
  v7[3] = v60;
  v7[4] = v59;
  OUTLINED_FUNCTION_13();
}

unint64_t sub_2176D45C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21722E1EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2176D45F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722E238(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2176D4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21722E1EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176D464C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176D3330(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176D4688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176D3330(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176D46F4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AC80, &unk_2177973B0);
  v2 = sub_217752D68();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2174A87A0(v6, &v15, &qword_27CB24578, &qword_217786880);
    v7 = v15;
    v8 = v16;
    result = sub_2176D489C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2172124CC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2176D489C(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  sub_217751FF8();
  v4 = sub_217753238();

  return sub_217632AEC(a1, a2, v4);
}

uint64_t sub_2176D4918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2176D4958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogSearchIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176D4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD20;
  if (!qword_27CB2CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD20);
  }

  return result;
}

unint64_t sub_2176D4AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD28;
  if (!qword_27CB2CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD28);
  }

  return result;
}

unint64_t sub_2176D4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD30;
  if (!qword_27CB2CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD30);
  }

  return result;
}

void *MusicPlayer.Queue.Entry.Item.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C6EC(v1, &v32);
  if (v38)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    sub_2176CAB9C(qword_280C022F8, v10, v11, v12, v13, v14, v15, v16, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, v38, __src[0], __src[1], __src[2]);
    sub_217283C08(&v25);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    sub_2176CAA38(qword_280C028C0, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, v38, __src[0], __src[1], __src[2]);
    sub_217283B58(&v25);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t MusicPlayer.Queue.Entry.Item.id.getter()
{
  MusicPlayer.Queue.Entry.Item.innerItem.getter();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

double MusicPlayer.Queue.Entry.Item.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C6EC(v1, v7);
  if (v10)
  {
    v2 = &type metadata for MusicVideo;
  }

  else
  {
    v2 = &type metadata for Song;
  }

  if (v10)
  {
    v3 = &protocol witness table for MusicVideo;
  }

  else
  {
    v3 = &protocol witness table for Song;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21729C6EC(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283B58(&v14);
  }
}

uint64_t static MusicPlayer.Queue.Entry.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21729C6EC(a1, v47);
  sub_21729C6EC(a2, &v48);
  if (v47[56])
  {
    v3 = sub_21729C6EC(v47, v45);
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v46;
        v15 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283C08(&v38);
        if (v19)
        {
          sub_217283C08(v45);
LABEL_21:
          sub_21729C748(v47);
          return 1;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v45);
LABEL_26:
      sub_21729C748(v47);
      return 0;
    }

    sub_217283C08(v45);
  }

  else
  {
    v20 = sub_21729C6EC(v47, v45);
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v46;
        v32 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283B58(&v38);
        if (v36)
        {
          sub_217283B58(v45);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v45);
      goto LABEL_26;
    }

    sub_217283B58(v45);
  }

  sub_2176D5B44(v47);
  return 0;
}

uint64_t MusicPlayer.Queue.Entry.Item.hash(into:)(uint64_t a1)
{
  v2 = sub_21729C6EC(v1, &v25);
  if (v30)
  {
    v10 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](1, v10);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v11 = OUTLINED_FUNCTION_3_4();
    v12(v11);
    return sub_217283C08(&v17);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](0, v14);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v15 = OUTLINED_FUNCTION_3_4();
    v16(v15);
    return sub_217283B58(&v17);
  }
}

uint64_t MusicPlayer.Queue.Entry.Item.hashValue.getter()
{
  sub_2177531E8();
  MusicPlayer.Queue.Entry.Item.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176D51B4(uint64_t a1)
{
  sub_2177531E8();
  MusicPlayer.Queue.Entry.Item.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2176D51F0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.Entry.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1);
  sub_2177528F8();
  OUTLINED_FUNCTION_0_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_64();
  if (v20)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v6, v7, v8, v9);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    MusicVideo.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v15, v16, v17, v18);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    Song.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v3;
  }

  return v13(v12, v14, v1);
}

{
  OUTLINED_FUNCTION_17_42(a1);
  sub_2177528F8();
  OUTLINED_FUNCTION_0_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_64();
  if (v20)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v6, v7, v8, v9);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v15, v16, v17, v18);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v3;
  }

  return v13(v12, v14, v1);
}

void *MusicPlayer.Queue.Entry.Item.subscript.getter@<X0>(void *a1@<X8>)
{
  sub_21729C6EC(v1, v13);
  if (v13[56])
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v4, v10, __src[0], *&__src[1], __src[3]);
    v5 = OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2(v5);
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter();
    v6 = v2;
    sub_217283C08(v12);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v7, v10, __src[0], *&__src[1], __src[3]);
    v8 = OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2(v8);
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter();
    v6 = v2;
    sub_217283B58(v12);
  }

  if (!v6)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.cloudEndpointKind.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C6EC(v1, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_2175AFAA4();
    result = sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_2175AFAA4();
    result = sub_217283B58(&v14);
  }

  *v0 = v13;
  return result;
}

double MusicPlayer.Queue.Entry.Item.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2171FF30C(a1, v9);
  sub_2171FF30C(v9, &v8);
  sub_2172EE918();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v6 = v14;
    v7 = v11;
    *a2 = v10;
    *(a2 + 16) = v7;
    result = *&v12;
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v6 & 1;
  }

  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.encode(to:)(uint64_t a1)
{
  sub_21729C6EC(v1, v4);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v4[2];
  v8 = v5;
  v9 = v6;
  sub_2172EF864(a1);
  return sub_21727576C(v7);
}

unint64_t MusicPlayer.Queue.Entry.Item.description.getter()
{
  v1 = sub_21729C6EC(v0, &v25);
  if (v30)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v9 = MusicVideo.description.getter();
    MEMORY[0x21CEA23B0](v9);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000, v10);
    v11 = 0xD000000000000028;
    sub_217283C08(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v12 = Song.description.getter();
    MEMORY[0x21CEA23B0](v12);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000, v13);
    v11 = 0xD000000000000022;
    sub_217283B58(&v17);
  }

  return v11;
}

unint64_t MusicPlayer.Queue.Entry.Item.debugDescription.getter()
{
  sub_21729C6EC(v0, v51);
  if (v51[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v1 = MusicVideo.debugDescription.getter();
    v9 = OUTLINED_FUNCTION_21_1(v1, v2, v3, v4, v5, v6, v7, v8, v43, v46);
    v16 = OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v44, v47, v49);
    v18 = v17;

    MEMORY[0x21CEA23B0](v16, v18, v19);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v20);
    v21 = 0xD00000000000002BLL;
    sub_217283C08(v50);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v22 = Song.debugDescription.getter();
    v30 = OUTLINED_FUNCTION_21_1(v22, v23, v24, v25, v26, v27, v28, v29, v43, v46);
    v37 = OUTLINED_FUNCTION_6_2(v30, v31, v32, v33, v34, v35, MEMORY[0x277D837D0], v36, v45, v48, v49);
    v39 = v38;

    MEMORY[0x21CEA23B0](v37, v39, v40);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v41);
    v21 = 0xD000000000000025;
    sub_217283B58(v50);
  }

  return v21;
}

uint64_t sub_2176D5B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD40, &qword_2177973C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176D5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD48;
  if (!qword_27CB2CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_64()
{

  return sub_21729C6EC(v0, v1 - 144);
}

uint64_t sub_2176D5C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (a1 + 56);
  while (v8 != v7)
  {
    v10 = *(v9 - 1) == a4 && *v9 == a5;
    if (v10 || (sub_217753058() & 1) != 0)
    {
      v11 = v7;
      goto LABEL_11;
    }

    ++v7;
    v9 += 4;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

void MusicLibrarySearchRequest.init(term:types:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = a4;
  v32 = 0;
  v31 = 1;
  v8 = *(a3 + 16);
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_217276E20(0, v8, 0);
    v9 = 0;
    v10 = 32;
    v11 = v30;
    while (v9 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v10), *(a3 + v10), &protocol descriptor for MusicItemTypeValueProviding))
      {
        goto LABEL_12;
      }

      (*(v12 + 8))(&v27);
      v13 = v27;
      v15 = v28;
      v14 = v29;
      v30 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        v23 = v27;
        sub_217276E20(v16 > 1, v17 + 1, 1);
        v13 = v23;
        v11 = v30;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 32 * v17;
      *(v18 + 32) = v13;
      ++v9;
      *(v18 + 48) = v15;
      *(v18 + 56) = v14;
      v10 += 16;
      if (v8 == v9)
      {

        v19 = v32;
        v20 = v31;
        v5 = a2;
        v7 = a4;
        v6 = a1;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v21 = sub_217753348();
    MEMORY[0x21CEA23B0](v21);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AADF0, v22);
    OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  else
  {

    v19 = 0;
    v11 = MEMORY[0x277D84F90];
    v20 = 1;
LABEL_10:
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = v19;
    *(v7 + 24) = xmmword_217797640;
    *(v7 + 40) = v20;
    *(v7 + 48) = v11;
  }
}

uint64_t MusicLibrarySearchRequest.term.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t MusicLibrarySearchRequest.types.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v23 = MEMORY[0x277D84F90];
  sub_217277044(0, v2, 0);
  v4 = 0;
  v3 = v23;
  v5 = v1 + 56;
  while (v4 < *(v1 + 16))
  {
    v6 = dynamic_cast_existential_1_conditional(*(v5 - 24), *(v5 - 24), &protocol descriptor for MusicLibrarySearchable);
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = v6;
    v9 = v7;
    v11 = *(v23 + 16);
    v10 = *(v23 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_217277044(v10 > 1, v11 + 1, 1);
    }

    *(v23 + 16) = v11 + 1;
    v12 = v23 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    ++v4;
    v5 += 32;
    if (v2 == v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
  sub_217751DE8();
  sub_217285954(1);
  v14 = sub_217752918();
  v16 = v15;

  MEMORY[0x21CEA23B0](v14, v16, v17);

  sub_217751DE8();
  v22 = sub_2172857F8(1uLL);
  sub_217285A70(v22, v18, v19);
  sub_217751DE8();
  sub_217752048();

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v20);

  MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177AAE20, v21);
  result = OUTLINED_FUNCTION_4_0("Fatal error");
  __break(1u);
  return result;
}

uint64_t MusicLibrarySearchRequest._topResultsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MusicLibrarySearchRequest.response()(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *(v2 + 16) = *v1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = *(v1 + 24);
  *(v2 + 56) = v6;
  *(v2 + 64) = v7;
  v8 = swift_task_alloc();
  *(v2 + 72) = v8;
  *v8 = v2;
  v8[1] = sub_2176D6320;

  return MusicLibrarySearchRequest.response(revisionID:)(a1, 0);
}

uint64_t sub_2176D6320()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2176D6454, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t MusicLibrarySearchRequest.response(revisionID:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1632) = a2;
  *(v3 + 1624) = a1;
  v4 = *(v2 + 8);
  *(v3 + 1640) = *v2;
  *(v3 + 1648) = v4;
  *(v3 + 1712) = *(v2 + 16);
  *(v3 + 1656) = *(v2 + 24);
  *(v3 + 1713) = *(v2 + 40);
  *(v3 + 1672) = *(v2 + 48);
  return MEMORY[0x2822009F8](sub_2176D64C0, 0, 0);
}

uint64_t sub_2176D64C0()
{
  v24 = v0;
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse, &type metadata for MusicLibrarySearchResponse, &protocol descriptor for MusicLibrarySearchExtendedResponse))
  {
    v23[0] = *(v0 + 1672);
    v2 = *(v1 + 16);
    sub_217751DE8();
    OUTLINED_FUNCTION_709();
    v2();
  }

  v23[0] = *(v0 + 1672);
  v3 = v23[0];
  sub_217751DE8();
  v4 = sub_2176D713C(v23);

  v23[0] = v3;
  sub_217751DE8();
  *(v0 + 1680) = sub_2176D7A04(v23, v5, v6);

  v7 = *(v4 + 16);
  if (v7)
  {
    v23[0] = MEMORY[0x277D84F90];
    sub_217752BF8();
    v8 = 32;
    do
    {
      [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibrarySearchScope) initWithModelObjectType_];
      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      ++v8;
      --v7;
    }

    while (v7);

    v9 = v23[0];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v0 + 1712);
  *(v0 + 1552) = v9;
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_self();
  sub_217503F84();
  v12 = sub_217752288();
  v13 = [v11 scopeForTopResultsWithSpecificModelObjectTypeScopes_];

  sub_2176D9528(0, v9);
  v14 = sub_2171F63F0(v9);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = sub_217204DD0(v9);
  v16 = __OFADD__(v15, 1);
  v14 = v15 + 1;
  if (v16)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x282200938](v14);
  }

  sub_21721524C(v14, 1);
  sub_217503C58(0, 0, 1, v13);
  v9 = *(v0 + 1552);
LABEL_12:
  *(v0 + 1688) = v9;
  v17 = *(v0 + 1656);
  v18 = *(v0 + 1648);
  v19 = *(v0 + 1640);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibrarySearchRequest);
  sub_217751DE8();
  sub_217751DE8();
  v20 = sub_2176D92A4(v19, v18, v9, v17);
  *(v0 + 1696) = v20;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 776;
  *(v0 + 24) = sub_2176D687C;
  v21 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD58, &qword_217797660);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2172AB494;
  *(v0 + 104) = &block_descriptor_17;
  *(v0 + 112) = v21;
  [v20 performWithCompletionHandler_];
  v14 = v0 + 16;

  return MEMORY[0x282200938](v14);
}

uint64_t sub_2176D687C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1704) = v1;
  if (v1)
  {

    v2 = sub_2176D7088;
  }

  else
  {
    v2 = sub_2176D69A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2176D69A0()
{
  v79 = v0;
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1713);
  v3 = *(v0 + 1664);
  v4 = MEMORY[0x277D84F90];
  v5 = *(v0 + 776);
  *(v0 + 1560) = MEMORY[0x277D84F90];
  *(v0 + 1568) = v4;
  *(v0 + 1576) = v4;
  *(v0 + 1584) = v4;
  *(v0 + 1592) = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2CD68, &qword_217797668);
  sub_2176D9354(v7, v8, v9);
  *(v0 + 1600) = sub_217751DC8();

  if (v2)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v3;
  }

  *(v0 + 1608) = v4;
  *(v0 + 1616) = v4;
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v6;
  v11[4] = v0 + 1560;
  v11[5] = v0 + 1568;
  v11[6] = v0 + 1576;
  v11[7] = v0 + 1584;
  v11[8] = v0 + 1592;
  v11[9] = v0 + 1616;
  v11[10] = v10;
  v11[11] = v0 + 1608;
  v11[12] = v0 + 1600;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2176D93A8;
  *(v12 + 24) = v11;
  *(v0 + 112) = sub_2176D93DC;
  *(v0 + 120) = v12;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2176D8D48;
  *(v0 + 104) = &block_descriptor_8;
  v71 = (v0 + 80);
  v13 = _Block_copy((v0 + 80));
  v14 = v6;

  [v14 enumerateSectionLegacyObjectTypesUsingBlock_];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v68 = v14;
    v17 = *(v0 + 1672);
    v18 = *(v0 + 1648);
    v19 = *(v0 + 1640);
    v20 = *(v0 + 1608);
    v21 = *(v0 + 1560);
    v22 = *(v0 + 1568);
    v23 = *(v0 + 1576);
    v24 = *(v0 + 1584);
    v69 = *(v0 + 1592);
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    *(v0 + 808) = 0;
    v73 = v19;
    v74 = v18;
    v75 = v17;
    sub_217751DE8();
    v25 = (v0 + 1472);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA6A4(v20);
    sub_2174AA1AC(v21);
    sub_2174AA180(v22);
    sub_2174AA128(v23);
    sub_2174AA0FC(v24);
    sub_2174AA078(v69);
    sub_2176D9404(v0 + 776, v0 + 1472);
    if (*(v0 + 1496))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 1472), *(v0 + 1496));
      OUTLINED_FUNCTION_2_130();
      sub_2171F06D8(v0 + 776, &qword_27CB2CD78, &unk_217797670);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1472));
    }

    else
    {
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v26, v27, v28);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v29, v30, v31);
      v76 = 0u;
      v77 = 0u;
      v78 = 0;
    }

    OUTLINED_FUNCTION_0_144(*(v0 + 1632));
    memcpy(v71, v32, 0x2B8uLL);
    *(v0 + 1504) = 0;
    *v25 = 0u;
    *(v0 + 1488) = 0u;
    v70 = (v0 + 1512);
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse, &type metadata for MusicLibrarySearchResponse, &protocol descriptor for MusicLibrarySearchExtendedResponse))
    {
      v34 = (*(v33 + 8))();
      v36 = v35;
      sub_2176D94C8(v71, v0 + 776);
      v37 = *(v0 + 1616);
      v72[0] = *(v0 + 1600);
      v72[1] = v37;
      v38 = *(v36 + 8);
      *(v0 + 1536) = v34;
      *(v0 + 1544) = v36;
      __swift_allocate_boxed_opaque_existential_0((v0 + 1512));
      sub_217751DE8();
      sub_217751DE8();
      v38(v0 + 776, v72, v34, v36);
      sub_2171F06D8(v0 + 1472, &qword_27CB2CD78, &unk_217797670);
      v39 = *(v0 + 1528);
      *v25 = *v70;
      *(v0 + 1488) = v39;
      *(v0 + 1504) = *(v0 + 1544);
    }

    v40 = *(v0 + 1672);
    v41 = *(v0 + 1648);
    v42 = *(v0 + 1640);
    v43 = *(v0 + 1608);
    v44 = *(v0 + 1560);
    v45 = *(v0 + 1568);
    v46 = *(v0 + 1576);
    v47 = *(v0 + 1584);
    v67 = *(v0 + 1592);
    sub_2176D9404(v0 + 1472, v0 + 776);
    v73 = v42;
    v74 = v41;
    v75 = v40;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA6A4(v43);
    sub_2174AA1AC(v44);
    sub_2174AA180(v45);
    sub_2174AA128(v46);
    sub_2174AA0FC(v47);
    sub_2174AA078(v67);
    sub_2176D9404(v0 + 776, v70);
    v48 = *(v0 + 1696);
    if (*(v0 + 1536))
    {
      __swift_project_boxed_opaque_existential_1(v70, *(v0 + 1536));
      OUTLINED_FUNCTION_2_130();

      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v49, v50, v51);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v52, v53, v54);
      sub_2176D9474(v71);
      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    else
    {

      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v55, v56, v57);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v58, v59, v60);
      sub_2176D9474(v71);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v61, v62, v63);
      v76 = 0u;
      v77 = 0u;
      v78 = 0;
    }

    OUTLINED_FUNCTION_0_144(*(v0 + 1632));
    memcpy(v64, v65, 0x2B8uLL);

    v66 = *(v0 + 8);

    return v66();
  }

  return result;
}

uint64_t sub_2176D7088(uint64_t a1)
{
  v2 = v1[213];
  v3 = v1[212];
  v4 = swift_willThrow();
  sub_21728FC9C(v4, v5, v6);
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_2176D713C(void *a1)
{
  v1 = *a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2177643C0;
  if (qword_280BEB138 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v3 = xmmword_280BEB150;
    inited[2] = xmmword_280BEB140;
    inited[3] = v3;
    v4 = qword_280BE6378;
    sub_217751DE8();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = xmmword_280BE6390;
    inited[4] = xmmword_280BE6380;
    inited[5] = v5;
    v6 = qword_280BE62A0;
    sub_217751DE8();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = xmmword_280BE62B8;
    inited[6] = xmmword_280BE62A8;
    inited[7] = v7;
    sub_217751DE8();
    sub_217261AA8(inited);
    v9 = v8;
    v10 = sub_2172C93E4(v1);
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v9 + 56;
    v14 = MEMORY[0x277D84F90];
    v83 = xmmword_2177586E0;
    v89 = v9 + 56;
    v90 = v9;
    while (1)
    {
      v15 = v10[4];
      v91 = v10[5];
      v92 = v15;
      v17 = v10[6];
      v16 = v10[7];
      sub_217751DE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > v10[3] >> 1)
      {
        sub_2172B1AC0(isUniquelyReferenced_nonNull_native, v11, 1, v10);
        v10 = v19;
      }

      sub_2176D96F0((v10 + 4));
      v20 = v10[2];
      memmove(v10 + 4, v10 + 8, 32 * v20 - 32);
      v10[2] = v20 - 1;
      v106 = v10;
      v21 = v91;
      v22 = v92;
      if (sub_2174FC700(v92, v91, v17, v16, v9))
      {
        break;
      }

      if (!dynamic_cast_existential_1_conditional(v22, v22, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding))
      {
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_217752AA8();
        v105[0] = v99;
        v105[1] = v100;
        MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
        sub_217751DE8();
        sub_217285954(1);
        v71 = sub_217752918();
        v73 = v72;

        v99 = 46;
        v100 = 0xE100000000000000;
        MEMORY[0x21CEA23B0](v71, v73, v74);

        v75 = v99;
        v76 = v100;
        sub_217751DE8();
        v77 = sub_2172857F8(1uLL);
        v103 = v75;
        v104 = v76;
        v99 = v77;
        v100 = v78;
        v101 = v79;
        v102 = v80;
        sub_217285A70(v77, v78, v79);
        sub_217751DE8();
        sub_217752048();

        MEMORY[0x21CEA23B0](v103, v104, v81);

        MEMORY[0x21CEA23B0](0xD00000000000003DLL, 0x80000002177B29D0, v82);
        result = sub_217752D08();
        __break(1u);
        return result;
      }

      (*(v53 + 8))(&v99);

      v54 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
        v14 = v64;
      }

      v56 = *(v14 + 16);
      v55 = *(v14 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_2172B35FC(v55 > 1, v56 + 1, 1, v14);
        v14 = v65;
      }

      *(v14 + 16) = v56 + 1;
      *(v14 + v56 + 32) = v54;
LABEL_64:
      v10 = v106;
      v11 = v106[2];
      if (!v11)
      {

        goto LABEL_67;
      }
    }

    v87 = v14;
    v23 = swift_initStackObject();
    v24 = v21;
    v25 = v23;
    *(v23 + 16) = v83;
    *(v23 + 32) = v22;
    *(v23 + 40) = v24;
    v85 = v17;
    v86 = v16;
    *(v23 + 48) = v17;
    *(v23 + 56) = v16;
    sub_217751DE8();
    sub_217261AA8(v25);
    v105[0] = v26;
    v27 = 1 << *(v9 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v9 + 56);
    v1 = ((v27 + 63) >> 6);
    v30 = sub_217751DE8();
    v31 = 0;
    inited = v12;
    for (i = v1; v29; v1 = i)
    {
LABEL_20:
      v98 = &v83;
      v33 = (*(v9 + 48) + ((v31 << 11) | (32 * __clz(__rbit64(v29)))));
      v34 = *v33;
      v35 = v33[1];
      v37 = v33[2];
      v36 = v33[3];
      v38 = v106;
      v99 = *v33;
      v100 = v35;
      v101 = v37;
      v102 = v36;
      MEMORY[0x28223BE20](v30);
      sub_217751DE8();
      if (sub_2173DDBE4())
      {
        sub_217751DE8();
        v1 = v105;
        sub_217500C88(&v99, v34, v35, v37, v36);

        sub_217751DE8();
        v98 = v37;
        v39 = sub_2176D5C38(v38, v34, v35, v37, v36);
        if (v40)
        {
          v41 = *(v38 + 16);
          v42 = v41;
        }

        else
        {
          v41 = v39;
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_74;
          }

          v88 = inited;
          inited = (32 * v39);
          v43 = v98;
          while (1)
          {
            v44 = *(v38 + 16);
            if (v42 == v44)
            {
              break;
            }

            if (v42 >= v44)
            {
              __break(1u);
              goto LABEL_69;
            }

            v1 = (inited + v38);
            if (*(inited + v38 + 80) != v43 || *(inited + v38 + 88) != v36)
            {
              if (sub_217753058())
              {
                v43 = v98;
              }

              else
              {
                if (v42 != v41)
                {
                  if (v41 >= v44)
                  {
                    goto LABEL_70;
                  }

                  v46 = v38 + 32 + 32 * v41;
                  v95 = *v46;
                  v47 = *(v46 + 24);
                  v94 = *(v46 + 16);
                  v97 = *(v1 + 4);
                  v48 = v1[10];
                  v1 = v1[11];
                  v96 = v48;
                  v49 = v47;
                  sub_217751DE8();
                  sub_217751DE8();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_2175036E8();
                    v38 = v52;
                  }

                  if (v41 >= *(v38 + 16))
                  {
                    goto LABEL_71;
                  }

                  v50 = v38 + 32 * v41;
                  *(v50 + 32) = v97;
                  *(v50 + 48) = v96;
                  *(v50 + 56) = v1;

                  if (v42 >= *(v38 + 16))
                  {
                    goto LABEL_72;
                  }

                  v51 = inited + v38;
                  *(v51 + 4) = v95;
                  *(v51 + 10) = v94;
                  *(v51 + 11) = v49;

                  v106 = v38;
                }

                v43 = v98;
                ++v41;
              }
            }

            ++v42;
            inited += 2;
          }

          inited = v88;
          if (v42 < v41)
          {
            goto LABEL_73;
          }
        }

        sub_2175B152C(v41, v42);
      }

      v29 &= v29 - 1;

      v13 = v89;
      v9 = v90;
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v1)
      {

        v57 = *(v105[0] + 16);

        if (v57 == 1)
        {
          v58 = inited;
          v99 = v92;
          v100 = v91;
          v101 = v85;
          v102 = v86;
          MusicItemTypeValue.underlyingLegacyModelObjectType.getter();

          v59 = v103;
          v14 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
            v14 = v66;
          }

          v61 = *(v14 + 16);
          v60 = *(v14 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_2172B35FC(v60 > 1, v61 + 1, 1, v14);
            v14 = v67;
          }

          *(v14 + 16) = v61 + 1;
          *(v14 + v61 + 32) = v59;
        }

        else
        {

          v14 = v87;
          v58 = inited;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
            v14 = v68;
          }

          v63 = *(v14 + 16);
          v62 = *(v14 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2172B35FC(v62 > 1, v63 + 1, 1, v14);
            v14 = v69;
          }

          *(v14 + 16) = v63 + 1;
          *(v14 + v63 + 32) = 28;
        }

        v12 = v58;
        goto LABEL_64;
      }

      v29 = *(v13 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_20;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_67:

  return v14;
}

uint64_t sub_2176D7A04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_2176D9354(a1, a2, a3);
  v4 = sub_217751DC8();
  v59 = *(v3 + 16);
  sub_217751DE8();
  v5 = 0;
  v61 = v3;
  v6 = (v3 + 56);
  while (v59 != v5)
  {
    if (v5 >= *(v61 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(v6 - 3);
    v7 = *(v6 - 2);
    v9 = *v6;
    v63 = v5;
    v64 = *(v6 - 1);
    v10 = dynamic_cast_existential_1_conditional(v8, v8, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
    if (!v10)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      swift_bridgeObjectRetain_n();
      sub_217752AA8();
      v71 = v65;
      v72 = v66;
      MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
      sub_217751DE8();
      sub_217285954(1);
      v43 = sub_217752918();
      v45 = v44;

      v65 = 46;
      v66 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v43, v45, v46);

      v47 = v65;
      v48 = v66;
      sub_217751DE8();
      v49 = sub_2172857F8(1uLL);
      v69 = v47;
      v70 = v48;
      v65 = v49;
      v66 = v50;
      v67 = v51;
      v68 = v52;
      sub_217285A70(v49, v50, v51);
      sub_217751DE8();
      sub_217752048();

      MEMORY[0x21CEA23B0](v69, v70, v53);

      MEMORY[0x21CEA23B0](0xD00000000000003DLL, 0x80000002177B29D0, v54);
      sub_217752D08();
      __break(1u);
LABEL_23:
      result = sub_217753178();
      __break(1u);
      return result;
    }

    v12 = v10;
    v13 = v11;
    v14 = *(v11 + 8);
    v15 = v9;
    sub_217751DE8();
    v14(&v65, v12, v13);
    v16 = v65;
    swift_isUniquelyReferenced_nonNull_native();
    v65 = v4;
    v17 = sub_217632AB4();
    v19 = v4[2];
    v20 = (v18 & 1) == 0;
    v4 = (v19 + v20);
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v17;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F88, &unk_21775ABD0);
    if (sub_217752CB8())
    {
      v23 = sub_217632AB4();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v21 = v23;
    }

    v4 = v65;
    if (v22)
    {
      v25 = (*(v65 + 56) + 32 * v21);
      *v25 = v8;
      v25[1] = v7;
      v25[2] = v64;
      v25[3] = v15;
    }

    else
    {
      *(v65 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(v4[6] + v21) = v16;
      v26 = (v4[7] + 32 * v21);
      *v26 = v8;
      v26[1] = v7;
      v26[2] = v64;
      v26[3] = v15;
      v27 = v4[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v4[2] = v29;
    }

    v6 += 4;
    v5 = v63 + 1;
  }

  if (qword_280BE62A0 == -1)
  {
    goto LABEL_15;
  }

LABEL_21:
  swift_once();
LABEL_15:
  v30 = xmmword_280BE62A8;
  v31 = xmmword_280BE62B8;
  sub_217751DE8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v4;
  sub_2172C896C(v30, *(&v30 + 1), v31, *(&v31 + 1), 28, isUniquelyReferenced_nonNull_native, v33, v34, v55, v57, v59, v61);
  v35 = v65;
  if (qword_280BE6318 != -1)
  {
    swift_once();
  }

  v36 = xmmword_280BE6320;
  v37 = qword_280BE6330;
  v38 = unk_280BE6338;
  sub_217751DE8();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v35;
  sub_2172C896C(v36, *(&v36 + 1), v37, v38, 9, v39, v40, v41, v56, v58, v60, v62);
  return v65;
}

uint64_t sub_2176D7E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2173AAFE8(a2, &aBlock);
  v17 = aBlock;
  if (*(a4 + 16))
  {
    v18 = sub_217632AB4();
    if (v19)
    {
      v20 = (*(a4 + 56) + 32 * v18);
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      aBlock = *v20;
      v21 = aBlock;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      sub_217751DE8();
      v25 = MusicItemTypeValue.underlyingLegacyModelObjectConvertibleType.getter();
      v27 = v26;
      v33 = [a5 results];
      v28 = swift_allocObject();
      *(v28 + 16) = a1;
      *(v28 + 24) = v21;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      *(v28 + 48) = v24;
      *(v28 + 56) = a5;
      *(v28 + 64) = v25;
      *(v28 + 72) = v27;
      *(v28 + 80) = v17;
      *(v28 + 88) = a6;
      *(v28 + 96) = a7;
      *(v28 + 104) = a8;
      *(v28 + 112) = a9;
      *(v28 + 120) = a10;
      *(v28 + 128) = a11;
      *(v28 + 136) = a12;
      *(v28 + 144) = a13;
      *(v28 + 152) = a14;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_2176D95E8;
      *(v29 + 24) = v28;
      v41 = sub_21728FE64;
      v42 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_2174EDE10;
      v40 = &block_descriptor_18_0;
      v30 = _Block_copy(&aBlock);
      v31 = a5;

      v17 = v33;
      [v33 enumerateItemIdentifiersInSectionAtIndex:a1 usingBlock:v30];

      _Block_release(v30);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if ((v30 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  aBlock = 0;
  v38 = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000057, 0x80000002177B5720);
  v43[0] = v17;
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176D81A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, unsigned __int8 a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t *a20, uint64_t *a21)
{
  v89 = a1;
  v90 = a4;
  v87 = a12;
  v86 = a11;
  v88 = a10;
  v84 = a9;
  v26 = sub_217751968();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_217759200;
  v34 = v89;
  *(v33 + 32) = v90;
  *(v33 + 40) = v34;
  MEMORY[0x21CEA1CB0]();
  *&v96 = a5;
  *(&v96 + 1) = a6;
  *&v97 = a7;
  *(&v97 + 1) = a8;
  *&v93 = &unk_282960118;
  LOBYTE(v91[0]) = 4;
  swift_unknownObjectRetain();
  sub_217751DE8();
  sub_2172B6904(a2, &v96, &v93, v91, &v100);
  v89 = v27;
  v90 = v26;
  v35 = *(v27 + 16);
  v85 = v32;
  v35(v29, v32, v26);
  v36 = [v84 results];
  v37 = [v36 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v37;
  *&v98[0] = 0;
  v96 = 0u;
  v97 = 0u;
  *&v93 = a5;
  *(&v93 + 1) = a6;
  *&v94 = a7;
  *(&v94 + 1) = a8;
  LOBYTE(v91[0]) = 1;
  v38 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  v39 = MEMORY[0x277D84F90];
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v101 + 1) = v38;
  *&v102[0] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  v40 = v87;
  LOBYTE(v96) = v87;
  v41 = v86;
  v42 = *(v86 + 24);
  v43 = v88;
  v99[3] = v88;
  v99[4] = v86;
  *&v100 = v44;
  __swift_allocate_boxed_opaque_existential_0(v99);

  v42(&v100, &v96, v43, v41);
  sub_2171FF30C(v99, &v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v45 = a13;
    v100 = v96;
    v101 = v97;
    v102[0] = v98[0];
    *&v102[1] = *&v98[1];
    sub_21725CF0C(&v100, &v96);
    sub_21770B6E4();
    v46 = *(*a13 + 16);
    sub_21770BA14(v46);

    sub_21725CE44(&v100);
    (*(v89 + 8))(v85, v90);
LABEL_12:
    v50 = *v45;
    *(v50 + 16) = v46 + 1;
    v51 = v50 + 56 * v46;
    v52 = v96;
    v53 = v97;
    v54 = v98[0];
    v55 = *&v98[1];
    goto LABEL_13;
  }

  v47 = v89;
  v48 = v90;
  v49 = v85;
  v97 = 0u;
  memset(v98, 0, 24);
  v96 = 0u;
  sub_2171F06D8(&v96, &unk_27CB275E0, &qword_2177589D0);
  sub_2171FF30C(v99, &v93);
  if (swift_dynamicCast())
  {
    v45 = a14;
    v100 = v96;
    v101 = v97;
    v102[0] = v98[0];
    *&v102[1] = *&v98[1];
    sub_21725CF68(&v100, &v96);
    sub_21770B6B4();
    v46 = *(*a14 + 16);
    sub_21770B9E4(v46);

    sub_217284498(&v100);
LABEL_11:
    (*(v47 + 8))(v49, v48);
    goto LABEL_12;
  }

  v45 = a15;
  v97 = 0u;
  memset(v98, 0, 24);
  v96 = 0u;
  sub_2171F06D8(&v96, &qword_27CB2CD90, &unk_21775A2C0);
  sub_2171FF30C(v99, &v93);
  if (swift_dynamicCast())
  {
    v100 = v96;
    v101 = v97;
    v102[0] = v98[0];
    *&v102[1] = *&v98[1];
    sub_217283BAC(&v100, &v96);
    sub_21770B66C();
    v46 = *(*a15 + 16);
    sub_21770B99C(v46);

    sub_217283C08(&v100);
    goto LABEL_11;
  }

  v97 = 0u;
  memset(v98, 0, 24);
  v96 = 0u;
  sub_2171F06D8(&v96, &qword_27CB24550, &qword_217758A58);
  sub_2171FF30C(v99, &v93);
  if (swift_dynamicCast())
  {
    v45 = a16;
    v100 = v96;
    v101 = v97;
    v102[0] = v98[0];
    *&v102[1] = *&v98[1];
    sub_2172757C0(&v100, &v96);
    sub_21770B63C();
    v46 = *(*a16 + 16);
    sub_21770B96C(v46);

    sub_21726B8C4(&v100);
    goto LABEL_11;
  }

  v97 = 0u;
  memset(v98, 0, 24);
  v96 = 0u;
  sub_2171F06D8(&v96, &unk_27CB28A90, &qword_217758F90);
  sub_2171FF30C(v99, &v93);
  if (swift_dynamicCast())
  {
    v100 = v96;
    v101 = v97;
    v102[0] = v98[0];
    *&v102[1] = *&v98[1];
    sub_217283AFC(&v100, &v96);
    v45 = a17;
    sub_21770B5DC();
    v46 = *(*a17 + 16);
    sub_21770B90C(v46);

    sub_217283B58(&v100);
    goto LABEL_11;
  }

  v97 = 0u;
  memset(v98, 0, 24);
  v96 = 0u;
  sub_2171F06D8(&v96, &qword_27CB277F0, &unk_21775A2B0);
  sub_2171FF30C(v99, &v93);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v97 = 0u;
    memset(v98, 0, 24);
    v96 = 0u;
    BYTE8(v98[1]) = -1;
    sub_2171F06D8(&v96, &unk_27CB28AA0, &qword_21775A020);
    sub_2171FF30C(v99, &v93);
    if (swift_dynamicCast())
    {
      v100 = v96;
      v101 = v97;
      v102[0] = v98[0];
      *(v102 + 9) = *(v98 + 9);
      if (*(*a18 + 16) < a19)
      {
        sub_21770B894();
        v59 = *(*a18 + 16);
        sub_21770BBC4(v59);
        v60 = *a18;
        *(v60 + 16) = v59 + 1;
        sub_21753DFEC(&v100, v60 + (v59 << 6) + 32);
      }

      if (*(*a20 + 16) < a19)
      {
        sub_21753DFEC(&v100, v91);
        MusicLibrarySearchResponse.TopResult.init(_:)(v91, &v93);
        if (BYTE8(v95[1]) == 255)
        {

          sub_217541740(&v100);
          (*(v47 + 8))(v49, v48);
          sub_2171F06D8(&v93, &qword_27CB2CDA0, &qword_21775A310);
          return __swift_destroy_boxed_opaque_existential_1(v99);
        }

        v96 = v93;
        v97 = v94;
        v98[0] = v95[0];
        *(v98 + 9) = *(v95 + 9);
        sub_2172843E8(&v96, &v93);
        sub_21770B87C();
        v61 = *(*a20 + 16);
        sub_21770BBAC(v61);

        sub_217284444(&v96);
        sub_217541740(&v100);
        (*(v47 + 8))(v49, v48);
        v62 = *a20;
        *(v62 + 16) = v61 + 1;
        v51 = v62 + (v61 << 6);
        v52 = v93;
        v53 = v94;
        v54 = v95[0];
        *(v51 + 73) = *(v95 + 9);
        goto LABEL_14;
      }

      sub_217541740(&v100);
    }

    else
    {
      v97 = 0u;
      memset(v98, 0, 24);
      v96 = 0u;
      BYTE8(v98[1]) = -1;
      sub_2171F06D8(&v96, &qword_27CB2CD98, &unk_217797768);
      v88 = a21;
      v64 = sub_2173ACC74(v40, *a21);
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = v39;
      }

      sub_2171FF30C(v99, &v100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v96 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172B2E28();
        v65 = v81;
        *&v96 = v81;
      }

      v67 = *(v65 + 16);
      if (v67 >= *(v65 + 24) >> 1)
      {
        sub_2172B2E28();
        v65 = v82;
        *&v96 = v82;
      }

      v68 = *(&v101 + 1);
      v86 = *&v102[0];
      v69 = __swift_mutable_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      v84 = &v83;
      v70 = MEMORY[0x28223BE20](v69);
      v72 = &v83 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v73 + 16))(v72, v70);
      sub_2176D9658(v67, v72, &v96, v68, v86);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      v74 = v88;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v100 = *v74;
      sub_2172C8A84(v65, v40, v75, v76, v77, v78, v79, v80, v83, v84);
      *v74 = v100;
    }

    (*(v47 + 8))(v49, v48);
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v100 = v96;
  v101 = v97;
  v102[0] = v98[0];
  *(v102 + 9) = *(v98 + 9);
  sub_217275710(&v100, &v96);
  v57 = (v47 + 8);
  v93 = v96;
  v94 = v97;
  v95[0] = v98[0];
  *&v95[1] = *&v98[1];
  if (BYTE8(v98[1]))
  {
    sub_217283BAC(&v93, v91);
    sub_21770B66C();
    v58 = *(*a15 + 16);
    sub_21770B99C(v58);

    sub_217283C08(&v93);
  }

  else
  {
    sub_217283AFC(&v93, v91);
    v45 = a17;
    sub_21770B5DC();
    v58 = *(*a17 + 16);
    sub_21770B90C(v58);

    sub_217283B58(&v93);
  }

  sub_21727576C(&v100);
  (*v57)(v49, v48);
  v63 = *v45;
  *(v63 + 16) = v58 + 1;
  v51 = v63 + 56 * v58;
  v52 = v91[0];
  v53 = v91[1];
  v54 = v91[2];
  v55 = v92;
LABEL_13:
  *(v51 + 80) = v55;
LABEL_14:
  *(v51 + 48) = v53;
  *(v51 + 64) = v54;
  *(v51 + 32) = v52;
  return __swift_destroy_boxed_opaque_existential_1(v99);
}

void static MusicLibrarySearchRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6 || v4 != v8)
    {
      return;
    }
  }

  else if ((sub_217753058() & 1) == 0 || v2 != v6 || v4 != v8)
  {
    return;
  }

  if (v5)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v3 == v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
LABEL_21:

    sub_217270BE0();
  }
}

void MusicLibrarySearchRequest.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_217751FF8();
  sub_217753208();
  MEMORY[0x21CEA3550](v3);
  sub_217753208();
  if (v4 != 1)
  {
    MEMORY[0x21CEA3550](v2);
  }

  sub_21727D7C8();
}

uint64_t MusicLibrarySearchRequest.hashValue.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2177531E8();
  sub_217751FF8();
  sub_217753208();
  MEMORY[0x21CEA3550](v2);
  sub_217753208();
  if (v3 != 1)
  {
    MEMORY[0x21CEA3550](v1);
  }

  sub_21727D7C8();
  return sub_217753238();
}

uint64_t sub_2176D8FD8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = v3;
  v9 = *(v1 + 24);
  v10 = v4;
  v11 = v5;
  sub_2177531E8();
  MusicLibrarySearchRequest.hash(into:)(v7);
  return sub_217753238();
}

uint64_t static MusicLibrarySearchRequest.supportedTypeValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(inited + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6278);
  *(inited + 80) = v5;
  *(inited + 88) = v4;
  v6 = qword_280BE6378;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(inited + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6380);
  *(inited + 112) = v8;
  *(inited + 120) = v7;
  v9 = qword_280BE6220;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  *(inited + 128) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(inited + 144) = v11;
  *(inited + 152) = v10;
  v12 = qword_280BEB138;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = xmmword_280BEB150;
  *(inited + 160) = xmmword_280BEB140;
  *(inited + 176) = v13;
  v14 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse, &type metadata for MusicLibrarySearchResponse, &protocol descriptor for MusicLibrarySearchExtendedResponse);
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v15 + 8);
    sub_217751DE8();
    v18(v16, v17);
    v20 = (*(v19 + 32))();
    sub_217543D94(v20);
  }

  else
  {
    sub_217751DE8();
  }

  sub_2173DB0FC(inited);
  v22 = v21;

  return v22;
}

id sub_2176D92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217751F18();

  sub_217503F84();
  v7 = sub_217752288();
  v8 = [v4 initWithSearchTerm:v6 scopes:v7 limit:{a4, }];

  return v8;
}

unint64_t sub_2176D9354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E90[0];
  if (!qword_280BE2E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE2E90);
  }

  return result;
}

uint64_t sub_2176D9404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD78, &unk_217797670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2176D9528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_217752D38();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_2176D9584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CD80;
  if (!qword_27CB2CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD80);
  }

  return result;
}

uint64_t block_copy_helper_16_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2176D9658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_21726B918(&v12, v10 + 40 * a1 + 32);
}

uint64_t CodingUserInfoKey.init(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA8, &qword_217797888);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - v7;
  sub_217751DE8();
  sub_217752C98();
  v9 = sub_217752CA8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2176D98E8(v8);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B57B0);
    MEMORY[0x21CEA23B0](a1, a2);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {

    return (*(*(v9 - 8) + 32))(a3, v8, v9, v10);
  }

  return result;
}

uint64_t sub_2176D98E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA8, &qword_217797888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.propertyProvider.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_5_103(v3);
  v5(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v1, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 40))(v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

void static LegacyModelInternalPolymorphicMusicItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v35[0] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v35[1] = v13;
  v15 = type metadata accessor for LegacyModelInternalPolymorphicMusicItem(255, v14, v13, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v19 = (v35 - v18);
  v21 = *(v20 + 56);
  v22 = *(*(v15 - 8) + 16);
  v22(v35 - v18, v5, v15, v17);
  (v22)(v19 + v21, v3, v15);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v5 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21726B918(v19, v37);
      sub_21726B918((v19 + v21), v36);
      v24 = v38;
      v25 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v26 = *(v25 + 48);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293E8, &unk_217776CE0);
      v26(v36, v27, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v37);
      goto LABEL_10;
    }

    sub_21726B918(v19, v37);
    v30 = v7;
    (*(v7 + 32))(v12, v19 + v21, v1);
LABEL_8:
    v31 = v38;
    v32 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v32 + 48))(v12, v1, v31, v32);
    (*(v30 + 8))(v12, v1);
    goto LABEL_9;
  }

  v28 = *(v7 + 32);
  v28(v12, v19, v1);
  v29 = EnumCaseMultiPayload == 1;
  v30 = v7;
  if (v29)
  {
    sub_21726B918((v19 + v21), v37);
    goto LABEL_8;
  }

  v33 = v35[0];
  v28(v35[0], (v19 + v21), v1);
  sub_217751F08();
  v34 = *(v30 + 8);
  v34(v33, v1);
  v34(v12, v1);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

void LegacyModelInternalPolymorphicMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v35 = v8;
  v36 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  memcpy(v40, v11, 0x161uLL);
  if (dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked))
  {
    OUTLINED_FUNCTION_4_126();
    v19 = v18();
    v21 = v20;
    memcpy(v38, v11, 0x161uLL);
    sub_21736C814(v7, v37);
    v22 = *(v21 + 16);
    v23 = *(v22 + 16);
    v39[3] = v19;
    v39[4] = v21;
    __swift_allocate_boxed_opaque_existential_0(v39);
    v23(v38, v35, v37, v5, v19, v22);
    sub_217638634(v7);
    sub_2171FF30C(v39, v36);
    OUTLINED_FUNCTION_113();
    type metadata accessor for LegacyModelInternalPolymorphicMusicItem(v24, v25, v26, v27);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {

    v28 = v40[0];
    v29 = v40[1];
    v30 = *(v1 + 40);
    sub_217751DE8();
    v30(v28, v29, v3, v1);
    swift_unknownObjectRelease();
    sub_217269F50(v40);
    sub_217638634(v7);
    (*(v13 + 32))(v36, v17, v3);
    OUTLINED_FUNCTION_113();
    type metadata accessor for LegacyModelInternalPolymorphicMusicItem(v31, v32, v33, v34);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_13();
}

void LegacyModelInternalPolymorphicMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v36 = v7;
  v37 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v16 = type metadata accessor for LegacyModelInternalPolymorphicMusicItem(0, v14, v15, v15);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v22 = *v5;
  if (dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked))
  {
    OUTLINED_FUNCTION_4_126();
    v24 = v23();
    v26 = v25;
    sub_2171FF30C(v37, v39);
    v38 = v22;
    v27 = *(v26 + 16);
    v28 = *(v27 + 24);
    v40[3] = v24;
    v40[4] = v26;
    __swift_allocate_boxed_opaque_existential_0(v40);
    v28(v39, &v38, v24, v27);
    sub_2171FF30C(v40, v21);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v35 = v1;
    v29 = v9;
    v31 = v37[3];
    v30 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v31);
    (*(v30 + 24))(v40, v31, v30);
    v32 = v40[0];
    v33 = v40[1];
    sub_217751DE8();
    sub_217269F50(v40);
    (*(v35 + 40))(v32, v33, v3);
    (*(v29 + 32))(v21, v13, v3);
    swift_storeEnumTagMultiPayload();
  }

  (*(v18 + 32))(v36, v21, v16);
  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelInternalPolymorphicMusicItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  (*(v5 + 16))(v8 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v9, v14 + 1);
    v11 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1((v14 + 1), v15);
    (*(*(v10 + 16) + 32))(v14, v11);
    v12 = v14[0];
    result = __swift_destroy_boxed_opaque_existential_1((v14 + 1));
  }

  else
  {
    (*(*(a1 + 24) + 48))((v14 + 1));
    v12 = BYTE1(v14[0]);
    result = (*(v5 + 8))(v9, a1);
  }

  *a2 = v12;
  return result;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.convertToRawDictionary(for:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_75();
  v8 = (v6 - v7);
  v10 = *v9;
  (*(v4 + 16))(v6 - v7, v11, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v8, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16 = v10;
    v14 = (*(*(v13 + 16) + 40))(&v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = sub_217751DC8();
    (*(v4 + 8))(v8, a2);
  }

  return v14;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.innerItem.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_5_103(v6);
  v8(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v2, v15);
    v10 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(*(*(v9 + 8) + 8) + 8))(v10);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    a2[3] = v13;
    a2[4] = *(v12 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(*(v13 - 8) + 32))(boxed_opaque_existential_0, v2, v13);
  }
}

void LegacyModelInternalPolymorphicMusicItemStorage<>.isEqual<A>(to:)()
{
  OUTLINED_FUNCTION_12();
  v25[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  (*(v23 + 16))(v16, v6, v2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
    OUTLINED_FUNCTION_113();
    v24();
    sub_217751F08();
    (*(v18 + 8))(v22, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v4);
    (*(v9 + 8))(v12, v7);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelInternalPolymorphicMusicItem.id.getter(uint64_t a1)
{
  LegacyModelInternalPolymorphicMusicItem.innerItem.getter(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  if (dynamic_cast_existential_1_conditional(v15, v15, &protocol descriptor for LegacyModelInternalPolymorphicMusicItemStorageBacked))
  {
    OUTLINED_FUNCTION_4_126();
    v17 = v16();
    v19 = v18;
    sub_2171FF30C(a1, v23);
    v24[3] = v17;
    v24[4] = v19;
    __swift_allocate_boxed_opaque_existential_0(v24);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v4)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v24);
    }

    else
    {
      sub_2171FF30C(v24, a4);
      type metadata accessor for LegacyModelInternalPolymorphicMusicItem(0, a2, a3, v22);
      swift_storeEnumTagMultiPayload();
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    sub_2171FF30C(a1, v24);
    sub_217752608();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v4)
    {
      (*(v10 + 32))(a4, v14, a2);
      type metadata accessor for LegacyModelInternalPolymorphicMusicItem(0, a2, a3, v21);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_3_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_75();
  v9 = v7 - v8;
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_75();
  v13 = (v11 - v12);
  (*(v14 + 16))(v11 - v12, v15, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v13, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_217751E88();
    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t LegacyModelInternalPolymorphicMusicItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_3_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_75();
  v10 = v8 - v9;
  OUTLINED_FUNCTION_3_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_75();
  v14 = (v12 - v13);
  (*(v15 + 16))(v12 - v13, v16, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v14, v21);
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v18 + 56))(a1, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    OUTLINED_FUNCTION_113();
    v20();
    sub_217751EB8();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t LegacyModelInternalPolymorphicMusicItem.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelInternalPolymorphicMusicItem.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_2176DAF80(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  LegacyModelInternalPolymorphicMusicItem.hash(into:)(v4, a2);
  return sub_217753238();
}

uint64_t sub_2176DB0A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2176DB404();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2176DB11C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2176DB240(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_2176DB404()
{
  result = qword_280BE7128;
  if (!qword_280BE7128)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280BE7128);
  }

  return result;
}

uint64_t sub_2176DB460()
{
  type metadata accessor for LanguageTagCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for LanguageTagCache.Entry();
  result = sub_217751DC8();
  *(v0 + 112) = result;
  qword_280C01FD8 = v0;
  return result;
}

uint64_t sub_2176DB4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2176DB4E8, v3, 0);
}

uint64_t sub_2176DB4E8()
{
  OUTLINED_FUNCTION_10();
  v0[6] = sub_2176DB76C(v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2176DB58C;

  return sub_2176DB934();
}

uint64_t sub_2176DB58C()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  v6[8] = v0;

  if (v0)
  {
    v10 = sub_2176DB710;
  }

  else
  {
    v6[9] = v3;
    v6[10] = v5;
    v10 = sub_2176DB6AC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2176DB6AC()
{
  OUTLINED_FUNCTION_10();

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_2176DB710()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2176DB76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  sub_217751DE8();
  v7 = sub_21763246C(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for LanguageTagCache.Entry();
    v9 = swift_allocObject();
    sub_217751DE8();
    sub_2176DB8F4(a1, a2);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 112);
    sub_2172C7D2C();
    *(v3 + 112) = v11;
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_2176DB88C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2176DB8F4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[15] = a2;
  v2[16] = 0;
  v2[14] = a1;
  return v2;
}

uint64_t sub_2176DB934()
{
  OUTLINED_FUNCTION_10();
  v1[11] = v2;
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v1[13] = OUTLINED_FUNCTION_28_7();

  return MEMORY[0x2822009F8](sub_2176DB9C4, v0, 0);
}

uint64_t sub_2176DB9C4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 96);
  v2 = *(v1 + 128);
  *(v0 + 112) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    *v3 = v0;
    v3[1] = sub_2176DBBF8;
    v6 = MEMORY[0x277D84950];
    v7 = v0 + 72;
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = sub_217752538();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    sub_2171FF30C(v9, v0 + 16);
    v11 = sub_2176DD3FC();
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    sub_2171F3F0C((v0 + 16), (v12 + 5));
    swift_retain_n();
    v2 = sub_2176DC4E0(0, 0, v8, &unk_217797B60, v12);
    *(v0 + 136) = v2;
    *(v1 + 128) = v2;

    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    *v13 = v0;
    v13[1] = sub_2176DBD7C;
    v6 = MEMORY[0x277D84950];
    v7 = v0 + 56;
  }

  return MEMORY[0x282200430](v7, v2, v4, v5, v6);
}

uint64_t sub_2176DBBF8()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_2176DBF00;
  }

  else
  {
    v6 = sub_2176DBD18;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2176DBD18()
{
  OUTLINED_FUNCTION_10();

  v0 = OUTLINED_FUNCTION_6_105();

  return v1(v0);
}

uint64_t sub_2176DBD7C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_2176DBF64;
  }

  else
  {
    v6 = sub_2176DBE9C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2176DBE9C()
{
  OUTLINED_FUNCTION_10();

  v0 = OUTLINED_FUNCTION_6_105();

  return v1(v0);
}

uint64_t sub_2176DBF00()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2176DBF64()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2176DBFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2176DBFEC, a4, 0);
}

uint64_t sub_2176DBFEC()
{
  v11 = v0;
  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
  }

  v1 = sub_217751AF8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_280C023A8);

  v2 = sub_217751AD8();
  v3 = sub_217752828();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21729C0E8(*(v4 + 112), *(v4 + 120), &v10);
    _os_log_impl(&dword_2171EE000, v2, v3, "Fetching preferred language tag for %{public}s...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  v7 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 48) = *(v7 + 112);
  *(v0 + 56) = *(v7 + 120);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_2176DC1C0;

  return sub_2176DC770();
}

uint64_t sub_2176DC1C0()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *v8 = *v1;
  v7[9] = v0;

  v9 = v6[3];
  if (v0)
  {
    v10 = sub_2176DC328;
  }

  else
  {
    v7[10] = v3;
    v7[11] = v5;
    v10 = sub_2176DC2F4;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2176DC2F4()
{
  *v0[1].i64[0] = vextq_s8(v0[5], v0[5], 8uLL);
  OUTLINED_FUNCTION_20_0();
  return v1();
}

uint64_t sub_2176DC328()
{
  v16 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = sub_217751AD8();
  v4 = sub_217752808();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_21729C0E8(v7, v6, &v15);
    *(v8 + 12) = 2114;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_2171EE000, v3, v4, "Unable to get preferred language tag for %{public}s: %{public}@.", v8, 0x16u);
    sub_2172CB34C(v9, &qword_27CB29E08, &qword_21777BFF8);
    OUTLINED_FUNCTION_28_4();
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  *(v0[3] + 128) = 0;

  swift_willThrow();
  OUTLINED_FUNCTION_20_0();

  return v13();
}

uint64_t sub_2176DC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2172B6210(a3, v21 - v9);
  v11 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2172CB34C(v10, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_217752498();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_217751FB8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2172CB34C(a3, &qword_27CB24D78, &qword_217759EA0);

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

  sub_2172CB34C(a3, &qword_27CB24D78, &qword_217759EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2176DC770()
{
  OUTLINED_FUNCTION_10();
  v1[54] = v2;
  v1[55] = v0;
  v1[52] = v3;
  v1[53] = v4;
  v1[50] = v5;
  v1[51] = v6;
  v7 = sub_2177516D8();
  v1[56] = v7;
  v1[57] = *(v7 - 8);
  v1[58] = OUTLINED_FUNCTION_28_7();
  v8 = sub_2177512F8();
  v1[59] = v8;
  v1[60] = *(v8 - 8);
  v1[61] = OUTLINED_FUNCTION_28_7();
  v1[62] = type metadata accessor for MusicDataRequest(0);
  v1[63] = OUTLINED_FUNCTION_28_7();
  type metadata accessor for MusicAPI.Endpoint(0);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2176DC8EC, v0, 0);
}

uint64_t sub_2176DC8EC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 480);
  v16 = *(v0 + 472);
  v17 = *(v0 + 496);
  v7 = *(v0 + 456);
  v8 = *(v0 + 464);
  v9 = *(v0 + 448);
  v18 = *(v0 + 424);
  v19 = *(v0 + 432);
  sub_2174B54B4();
  sub_2172CB230(v1, v2);
  sub_2172CB230(v2, v4);
  (*(v7 + 16))(v8, v4, v9);
  sub_2177512B8();
  sub_2172CB294(v4, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v6 + 16))(v3, v5, v16);
  v10 = *(v17 + 20);
  *(v0 + 552) = v10;
  swift_beginAccess();
  v11 = off_280BEBCD0;

  (v11)(v12);

  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v13);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v13, v14, v3 + v10);
  (*(v6 + 8))(v5, v16);
  sub_2172CB294(v2, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v18, v19, v0 + 312);
  sub_2172CA894(v0 + 312, v3 + v10);

  return MEMORY[0x2822009F8](sub_2176DCB04, 0, 0);
}

uint64_t sub_2176DCB04()
{
  OUTLINED_FUNCTION_209();
  v1 = (*(v0 + 504) + *(v0 + 552));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 104) + **(v3 + 104));
  v4 = swift_task_alloc();
  *(v0 + 536) = v4;
  *v4 = v0;
  v4[1] = sub_2176DCC38;
  v5 = *(v0 + 504);

  return v7(v0 + 376, v5, v2, v3);
}

uint64_t sub_2176DCC38()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 544) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = sub_2176DD1D8;
  }

  else
  {
    v6 = sub_2176DCD58;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2176DCD58()
{
  v48 = v0;
  v1 = *(v0 + 544);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 392);
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v3, v2, v47);
  JSONDecoder.dataRequestConfiguration.setter(v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDB0, &unk_217797B48);
  sub_2176DD324();
  sub_217751308();
  if (v1)
  {
    v5 = *(v0 + 528);

    OUTLINED_FUNCTION_12_67();

    OUTLINED_FUNCTION_1_17();
    sub_2172CB294(v5, v6);
    v7 = *(v0 + 504);
    OUTLINED_FUNCTION_21();
    sub_2172CB294(v7, v8);

    OUTLINED_FUNCTION_20_0();

    return v9();
  }

  v11 = *(v0 + 32);
  if (*(v11 + 16))
  {
    v46 = v4;
    v12 = *(v11 + 32);
    v13 = *(v11 + 48);
    v14 = *(v11 + 80);
    *(v0 + 176) = *(v11 + 64);
    *(v0 + 192) = v14;
    *(v0 + 144) = v12;
    *(v0 + 160) = v13;
    v15 = objc_opt_self();
    sub_2176AD1A8(v0 + 144, v0 + 208);
    v16 = [v15 mainBundle];
    v17 = sub_2174F11C8();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = sub_2176AB3E8(v17, v19, v21, v23);
    v26 = v25;

    sub_2176AD1E0(v0 + 144);
    if (v26)
    {
      v27 = qword_280BE73E0;
      sub_217751DE8();
      if (v27 != -1)
      {
        OUTLINED_FUNCTION_4_1(&qword_280BE73E0);
      }

      v28 = sub_217751AF8();
      __swift_project_value_buffer(v28, qword_280C023A8);
      sub_217751DE8();
      v29 = sub_217751AD8();
      v30 = sub_217752828();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 528);
      if (v31)
      {
        v33 = swift_slowAlloc();
        v45 = v32;
        v34 = swift_slowAlloc();
        v47[0] = v34;
        *v33 = 136446210;
        v44 = v30;
        v35 = sub_21729C0E8(v24, v26, v47);

        *(v33 + 4) = v35;
        v36 = v24;
        _os_log_impl(&dword_2171EE000, v29, v44, "Using preferred language tag: %{public}s.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_28_4();

        OUTLINED_FUNCTION_12_67();
        OUTLINED_FUNCTION_1_17();
        sub_2172CB294(v45, v37);
      }

      else
      {

        OUTLINED_FUNCTION_12_67();

        OUTLINED_FUNCTION_1_17();
        sub_2172CB294(v32, v40);
        v36 = v24;
      }

      goto LABEL_15;
    }

    v4 = v46;
    v36 = v24;
  }

  else
  {
    v36 = 0;
  }

  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v38, v39);

  OUTLINED_FUNCTION_12_67();

  v26 = 0;
LABEL_15:
  v41 = *(v0 + 504);
  sub_2172CB34C(v0 + 16, &qword_27CB2CDB0, &unk_217797B48);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v41, v42);

  v43 = *(v0 + 8);

  return v43(v36, v26);
}

uint64_t sub_2176DD1D8()
{
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v1, v2);
  v3 = *(v0 + 504);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v3, v4);

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2176DD2A4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2176DD2D4()
{
  sub_2176DD2A4();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2176DD324()
{
  result = qword_280BE3768;
  if (!qword_280BE3768)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2CDB0, &unk_217797B48);
    sub_2176DD3A8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3768);
  }

  return result;
}

unint64_t sub_2176DD3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5400;
  if (!qword_280BE5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5400);
  }

  return result;
}

unint64_t sub_2176DD3FC()
{
  result = qword_27CB2CDB8;
  if (!qword_27CB2CDB8)
  {
    type metadata accessor for LanguageTagCache.Entry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDB8);
  }

  return result;
}

uint64_t sub_2176DD450()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21725B86C;

  return sub_2176DBFC8(v3, v4, v5, v6, (v0 + 5));
}

void sub_2176DD510(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 48);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 24;
    v7 = *v4;
    v8 = *(v4 - 1);
    v9[0] = *(v4 - 2);
    v9[1] = v8;
    v10 = v7;
    sub_217751DE8();
    sub_2176E430C(v9, a2);

    v4 = v6;
  }

  while (!v2);
}

void sub_2176DD598()
{
  OUTLINED_FUNCTION_171();
  v2 = OUTLINED_FUNCTION_59_26();
  v3 = type metadata accessor for CloudStation(v2);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_6_106(v5, v47);
  type metadata accessor for CloudPersonalRecommendation.Item(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28688, &unk_217798ED0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_129_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_120(v12, v48);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_53(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  OUTLINED_FUNCTION_31_45();
  while (v53 != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66();
    v24 = v52 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v0;
    v25 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v28, v29, &unk_217798ED0);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v51, type metadata accessor for CloudStation);
      v30 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v10);
    }

    else
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v33);
    }

    v34 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v34, v35, v10) == 1)
    {
      v36 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v36, v37, &unk_217798ED0);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_11_79();
        sub_2172B21E4(v39, v40, v41, v42);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v24;
      if (v38)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B21E4(v43, v44, v45, v46);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v10 = v50;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DD918()
{
  OUTLINED_FUNCTION_171();
  v2 = OUTLINED_FUNCTION_59_26();
  v3 = type metadata accessor for CloudPlaylist(v2);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_6_106(v5, v47);
  type metadata accessor for CloudPersonalRecommendation.Item(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_129_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_120(v12, v48);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_53(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  OUTLINED_FUNCTION_31_45();
  while (v53 != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66();
    v24 = v52 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v0;
    v25 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v28, v29, &qword_21775D770);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v51, type metadata accessor for CloudPlaylist);
      v30 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v10);
    }

    else
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v33);
    }

    v34 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v34, v35, v10) == 1)
    {
      v36 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v36, v37, &qword_21775D770);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_11_79();
        sub_2172B2220(v39, v40, v41, v42);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v24;
      if (v38)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B2220(v43, v44, v45, v46);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v10 = v50;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DDC98()
{
  OUTLINED_FUNCTION_171();
  v3 = OUTLINED_FUNCTION_59_26();
  v4 = type metadata accessor for CloudAlbum(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_6_106(v6, v58);
  type metadata accessor for CloudPersonalRecommendation.Item(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_129_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_120(v13, v59);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_53(v15, v16, v17, v18, v19, v20, v21, v22, v60);
  v23 = 0;
  v61 = v1;
  v69 = *(v0 + 16);
  while (v69 != v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66();
    v71 = v23;
    v26 = v0 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v25 + 72) * v23;
    v27 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v30);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v31, v32, &unk_21775D5D0);
      sub_2176E674C();
      sub_2176E67A4();
      v33 = v26 + v11[9];
      v34 = *v33;
      v64 = *(v33 + 8);
      v65 = *(v33 + 16);
      v35 = (v26 + v11[10]);
      v36 = v35[1];
      v66 = v34;
      v67 = *v35;
      v37 = v11[11];
      memcpy(v70, (v26 + v37), sizeof(v70));
      v38 = *(v26 + v11[12]);
      v39 = *(v26 + v11[14]);
      v62 = *(v26 + v11[15]);
      v63 = *(v26 + v11[13]);
      v40 = v2 + v11[9];
      *v40 = v66;
      *(v40 + 8) = v64;
      *(v40 + 16) = v65;
      v41 = (v2 + v11[10]);
      *v41 = v67;
      v41[1] = v36;
      memcpy((v2 + v11[11]), (v26 + v37), 0x180uLL);
      *(v2 + v11[12]) = v38;
      *(v2 + v11[13]) = v63;
      *(v2 + v11[14]) = v39;
      *(v2 + v11[15]) = v62;
      v1 = v61;
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v68, type metadata accessor for CloudAlbum);
      v42 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v11);
    }

    v45 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v45, v46, v11) == 1)
    {
      v47 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v47, v48, &unk_21775D5D0);
      v23 = v71 + 1;
    }

    else
    {
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_11_79();
        sub_2172B225C(v50, v51, v52, v53);
      }

      OUTLINED_FUNCTION_19_48();
      if (v49)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B225C(v54, v55, v56, v57);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v23 = v71;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DE128()
{
  OUTLINED_FUNCTION_171();
  v2 = OUTLINED_FUNCTION_59_26();
  v3 = type metadata accessor for CloudPersonalRecommendation.Item(v2);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_6_106(v5, v48);
  type metadata accessor for CloudPersonalRecommendation.Content(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D010, &qword_217798EC8);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_129_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_120(v12, v49);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_53(v14, v15, v16, v17, v18, v19, v20, v21, v50);
  OUTLINED_FUNCTION_31_45();
  while (v54 != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
    OUTLINED_FUNCTION_15_66();
    v24 = v53 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v0;
    v25 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
    OUTLINED_FUNCTION_43_32();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v28, v29, &qword_217798EC8);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_0_145();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v52, v30);
      v31 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v10);
    }

    else
    {
      OUTLINED_FUNCTION_42_40();
      sub_2176E67FC(v1, v34);
    }

    v35 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v35, v36, v10) == 1)
    {
      v37 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v37, v38, &qword_217798EC8);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_11_79();
        sub_2172B2298(v40, v41, v42, v43);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v24;
      if (v39)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B2298(v44, v45, v46, v47);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v10 = v51;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DE488()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v49 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v60 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  OUTLINED_FUNCTION_0_0();
  v47 = v6;
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v44 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v13 = *(v1 + 16);
  v50 = v1;
  v51 = v13;
  v46 = v8;
  while (v51 != v11)
  {
    v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
    v15 = v50 + ((*(*v14 + 80) + 32) & ~*(*v14 + 80));
    v16 = *(*v14 + 72);
    v58 = v11;
    v17 = v15 + v16 * v11;
    OUTLINED_FUNCTION_0_145();
    sub_2176E67A4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43_32();
    v57 = v12;
    v18 = v45;
    sub_2176E67A4();
    v19 = v14[12];
    v20 = (v17 + v14[11]);
    v21 = *v20;
    v54 = v20[1];
    v55 = *(v20 + 16);
    v22 = *(v17 + v19 + 8);
    v56 = *(v17 + v19);
    v23 = v14[13];
    memcpy(v59, (v17 + v23), sizeof(v59));
    v24 = *(v17 + v14[14]);
    v25 = *(v17 + v14[15]);
    v26 = v14[17];
    v27 = *(v17 + v14[16]);
    v52 = *(v17 + v26);
    v53 = v25;
    v28 = v48;
    v29 = &v18[v48[9]];
    *v29 = v21;
    *(v29 + 1) = v54;
    v29[16] = v55;
    v30 = &v18[v28[10]];
    *v30 = v56;
    *(v30 + 1) = v22;
    memcpy(&v18[v28[11]], (v17 + v23), 0x180uLL);
    *&v18[v28[12]] = v24;
    v31 = v52;
    *&v18[v28[13]] = v53;
    *&v18[v28[14]] = v27;
    *&v18[v28[15]] = v31;
    sub_217751DE8();
    sub_217751DE8();
    sub_217284868();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_42_40();
    sub_2176E67FC(v60, v32);
    v12 = v57;
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_75_19();
      sub_2172B2C14(v34, v35, v36, v37);
      v12 = v38;
    }

    v33 = *(v12 + 16);
    if (v33 >= *(v12 + 24) >> 1)
    {
      OUTLINED_FUNCTION_75_19();
      sub_2172B2C14(v39, v40, v41, v42);
      v12 = v43;
    }

    *(v12 + 16) = v33 + 1;
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    v11 = v58 + 1;
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176DE844(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_217751DE8();
  v3 = MEMORY[0x277D84F90];
  v4 = 32;
  if (v2)
  {
    while (dynamic_cast_existential_1_conditional(*(a1 + v4), *(a1 + v4), &protocol descriptor for CatalogMusicItemRepresentable))
    {
      v6 = (*(v5 + 8))();
      v7 = *(v6 + 16);
      v8 = *(v3 + 16);
      if (__OFADD__(v8, v7))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v9 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v8 + v7 > *(v3 + 24) >> 1)
      {
        sub_2172B199C();
        v3 = v10;
      }

      if (*(v9 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v7)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v4 += 32;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    sub_217752AA8();

    v17 = sub_217753348();
    MEMORY[0x21CEA23B0](v17);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v18);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_2173DAE08(v3);
    v15 = v14;

    return v15;
  }

  return result;
}

double MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:additionalQueryItems:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v206 = a6;
  v215 = a5;
  v216 = a4;
  v211 = a7;
  v212 = a3;
  v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_120(v12, v198);
  MEMORY[0x28223BE20](v13);
  v208 = &v198 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v198 - v16;
  sub_21733C5F0(a1, v237);
  v18 = v237[5];
  v19 = v237[2];
  v20 = v237[3];
  sub_217751DE8();
  sub_217751DE8();
  sub_2176E3E18(v18, v19, v20, v225);
  v209 = LOBYTE(v225[0]);
  if (v242 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v241;
  }

  if (v242 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v242;
  }

  *&v225[0] = v21;
  *(&v225[0] + 1) = v22;
  sub_2171FB568(v241, v242);
  v253.value.rawValue._countAndFlagsBits = v225;
  MusicPersonalRecommendation._DisplayKind.init(_:)(v253);
  v210 = v228;
  v236 = MEMORY[0x277D84F90];
  if (v249)
  {
    sub_2176DD510(v249, &v236);
  }

  sub_217284868();
  v217 = a1;
  v213 = v17;
  v214 = a2;
  v23 = v216;
  if (v227 == 1)
  {
    sub_2171F0738(v226, &qword_27CB244B0, &unk_21776DB80);
  }

  else
  {
    sub_217284868();
    sub_21728373C(v226);
    if (*&v225[1])
    {
      v25 = *(&v225[0] + 1);
      v24 = *&v225[0];
      OUTLINED_FUNCTION_69_22();
      sub_2176DE128();
      v207 = 0;
      v204 = *(&v225[1] + 1);
      v205 = v26;
      v27 = *(&v225[2] + 1);
      v28 = *&v225[2];
      v29 = *(&v225[3] + 1);
      v30 = *&v225[3];
      v31 = *&v225[4];
      OUTLINED_FUNCTION_97_14();
      v228 = __PAIR128__(v25, v24);
      v23 = v216;
      *&v229 = v205;
      *(&v229 + 1) = v204;
      v230 = __PAIR128__(v27, v28);
      v9 = v207;
      v231 = __PAIR128__(v29, v30);
      *&v232 = v31;
      v235 = v225[7];
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v17 = v213;
      sub_217751DE8();
      sub_2171F0738(v225, &qword_27CB244C0, &qword_21775D9C0);
      a2 = v214;
      v32 = v215;
      goto LABEL_15;
    }

    sub_2171F0738(v225, &qword_27CB244B8, &unk_217758990);
    a2 = v214;
  }

  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v32 = v215;
LABEL_15:
  v224 = v23;
  memcpy(v225, v217 + 44, sizeof(v225));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v225) == 1)
  {
    v33 = v9;
    sub_217751DE8();
    v34 = v23;
  }

  else
  {
    v33 = v9;
    if (*(&v225[22] + 1))
    {
      sub_217751DE8();
      v35 = sub_217751DE8();
      sub_21754383C(v35);
      v34 = v224;
    }

    else
    {
      sub_217751DE8();
      v34 = v23;
    }
  }

  v36 = v236;
  v37 = *(v236 + 16);
  v38 = sub_2173C2FA0();
  v207 = v34;
  if (v38 != 1)
  {
    sub_217284868();
    if (!v227)
    {

      sub_2171F0738(v226, &qword_27CB25938, &unk_21775D9B0);
      sub_2174AA410(MEMORY[0x277D84F90]);
      v33 = v32;
      v32 = v217;
LABEL_51:
      v72 = 3;
LABEL_52:
      LODWORD(v206) = v72;
      goto LABEL_56;
    }

    sub_217284868();
    v33 = v32;
    if (v222[2])
    {
      v41 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      v43 = OUTLINED_FUNCTION_90_18();
      v44 = v206;
      sub_2174BE7E4(v43, v32, v206, v45);

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v46, v47, v48);
    }

    else
    {

      sub_2171F0738(v222, &qword_27CB25938, &unk_21775D9B0);
      v218 = 0u;
      v219 = 0u;
      v220 = 0;
      v44 = v206;
    }

    v32 = v217;
    v62 = OUTLINED_FUNCTION_16_0();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
    v67 = sub_2176E42B8(v64, v65, v66);
    v197 = v44;
    v68 = a2;
LABEL_50:
    CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v68, v212, &v218, &type metadata for MusicPersonalRecommendation.Item, v33, v67, &protocol witness table for MusicPersonalRecommendation.Item, v222, v197);
    sub_2171F0738(&v218, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v69, v70, v71);
    memcpy(v223, v222, sizeof(v223));
    goto LABEL_51;
  }

  if (v37)
  {
    v17 = *(v36 + 48);
    v36 = *(v36 + 56);
    v39 = qword_280BE62F0;
    sub_217751DE8();
    if (v39 == -1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_23:
  v40 = xmmword_280BE6308 == v17 && *(&xmmword_280BE6308 + 1) == v36;
  if (!v40 && (OUTLINED_FUNCTION_16_9(xmmword_280BE6308, *(&xmmword_280BE6308 + 1)) & 1) == 0)
  {
    v33 = v32;
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v61 = xmmword_280BE6238 == v17 && *(&xmmword_280BE6238 + 1) == v36;
    v32 = v217;
    if (v61 || (OUTLINED_FUNCTION_16_9(xmmword_280BE6238, *(&xmmword_280BE6238 + 1)) & 1) != 0)
    {

      OUTLINED_FUNCTION_83_19();
      if (v222[2])
      {
        OUTLINED_FUNCTION_69_22();
        sub_2176DD918();
        OUTLINED_FUNCTION_17_61();
        OUTLINED_FUNCTION_97_14();
        OUTLINED_FUNCTION_7_85();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v222, &qword_27CB25930, &unk_217797B70);
      }

      else
      {
        sub_2171F0738(v222, &qword_27CB25938, &unk_21775D9B0);
        OUTLINED_FUNCTION_32_49();
      }

      sub_217284868();
      if (v222[2])
      {
        sub_217284868();
        if (v219)
        {
          v129 = OUTLINED_FUNCTION_16_0();
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(v129, v130);
          OUTLINED_FUNCTION_23_55(v131);

          OUTLINED_FUNCTION_36();
          sub_2171F0738(v132, v133, v134);
        }

        else
        {

          sub_2171F0738(&v218, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_57_27();
        }

        v152 = OUTLINED_FUNCTION_16_0();
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(v152, v153);
        sub_2172E208C(v154, v155, v156);
        OUTLINED_FUNCTION_88_19();
        OUTLINED_FUNCTION_22_60(v157, v158, v159, v160, &type metadata for Playlist, v161, v162, &protocol witness table for Playlist, v198);
        sub_2171F0738(v221, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v226, &qword_27CB242C0, &unk_21775D650);
        OUTLINED_FUNCTION_36();
        sub_2171F0738(v163, v164, v165);
        OUTLINED_FUNCTION_81_18();
      }

      else
      {

        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v135, v136, v137);
        sub_2174AA0FC(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v138, v139, v140);
      }

      v72 = 1;
      goto LABEL_52;
    }

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    v141 = xmmword_280BE6260 == v17 && *(&xmmword_280BE6260 + 1) == v36;
    v142 = v206;
    if (v141)
    {
    }

    else
    {
      v143 = OUTLINED_FUNCTION_16_9(xmmword_280BE6260, *(&xmmword_280BE6260 + 1));

      if ((v143 & 1) == 0)
      {
        sub_217284868();
        if (!v227)
        {

          sub_2171F0738(v226, &qword_27CB25938, &unk_21775D9B0);
          sub_2174AA410(MEMORY[0x277D84F90]);
          goto LABEL_51;
        }

        sub_217284868();
        v144 = v214;
        if (v222[2])
        {
          v145 = OUTLINED_FUNCTION_16_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v145, v146);
          v147 = OUTLINED_FUNCTION_90_18();
          sub_2174BE7E4(v147, v33, v142, v148);

          OUTLINED_FUNCTION_36();
          sub_2171F0738(v149, v150, v151);
        }

        else
        {

          sub_2171F0738(v222, &qword_27CB25938, &unk_21775D9B0);
          v218 = 0u;
          v219 = 0u;
          v220 = 0;
        }

        v192 = OUTLINED_FUNCTION_16_0();
        v194 = __swift_instantiateConcreteTypeFromMangledNameV2(v192, v193);
        sub_2176E42B8(v194, v195, v196);
        OUTLINED_FUNCTION_88_19();
        v68 = v144;
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_83_19();
    if (v222[2])
    {
      OUTLINED_FUNCTION_69_22();
      sub_2176DD598();
      OUTLINED_FUNCTION_17_61();
      OUTLINED_FUNCTION_97_14();
      OUTLINED_FUNCTION_7_85();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v222, &qword_27CB25930, &unk_217797B70);
    }

    else
    {
      sub_2171F0738(v222, &qword_27CB25938, &unk_21775D9B0);
      OUTLINED_FUNCTION_32_49();
    }

    sub_217284868();
    if (v222[2])
    {
      sub_217284868();
      if (v219)
      {
        v166 = OUTLINED_FUNCTION_16_0();
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(v166, v167);
        OUTLINED_FUNCTION_23_55(v168);

        OUTLINED_FUNCTION_36();
        sub_2171F0738(v169, v170, v171);
      }

      else
      {

        sub_2171F0738(&v218, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_57_27();
      }

      v178 = OUTLINED_FUNCTION_16_0();
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(v178, v179);
      sub_2173692A0(v180, v181, v182);
      OUTLINED_FUNCTION_88_19();
      OUTLINED_FUNCTION_22_60(v183, v184, v185, v186, &type metadata for Station, v187, v188, &protocol witness table for Station, v198);
      sub_2171F0738(v221, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v226, &qword_27CB242F0, &unk_217797B80);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v189, v190, v191);
      OUTLINED_FUNCTION_81_18();
    }

    else
    {

      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v172, v173, v174);
      sub_2174AA04C(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v175, v176, v177);
    }

    v72 = 2;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_83_19();
  if (v222[2])
  {
    OUTLINED_FUNCTION_69_22();
    sub_2176DDC98();
    OUTLINED_FUNCTION_17_61();
    OUTLINED_FUNCTION_97_14();
    OUTLINED_FUNCTION_7_85();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v222, &qword_27CB25930, &unk_217797B70);
  }

  else
  {
    v33 = v32;
    sub_2171F0738(v222, &qword_27CB25938, &unk_21775D9B0);
    OUTLINED_FUNCTION_32_49();
    v32 = v217;
  }

  sub_217284868();
  if (v222[2])
  {
    sub_217284868();
    if (v219)
    {
      v49 = OUTLINED_FUNCTION_16_0();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_23_55(v51);

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v52, v53, v54);
    }

    else
    {

      sub_2171F0738(&v218, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_57_27();
    }

    v73 = OUTLINED_FUNCTION_16_0();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
    sub_2172E2038(v75, v76, v77);
    OUTLINED_FUNCTION_88_19();
    OUTLINED_FUNCTION_22_60(v78, v79, v80, v81, &type metadata for Album, v82, v83, &protocol witness table for Album, v198);
    sub_2171F0738(v221, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(v226, &qword_27CB24270, &unk_21775D640);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v84, v85, v86);
    OUTLINED_FUNCTION_81_18();
  }

  else
  {

    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v55, v56, v57);
    sub_2174AA1AC(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v58, v59, v60);
  }

  LODWORD(v206) = 0;
LABEL_56:
  v87 = v237[0];
  v88 = *(v32 + 344);
  v205 = *(v32 + 336);
  v215 = v88;
  v216 = v237[1];
  if (v248)
  {
    v203 = v246;
    v204 = v247;
    sub_217751DE8();
  }

  else
  {
    v203 = 0;
    v204 = 0;
  }

  v89 = v208;
  if (v245)
  {
    v202 = v243;
    v208 = v244;
    sub_217751DE8();
  }

  else
  {
    v202 = 0;
    v208 = 0;
  }

  v90 = qword_280BE8910;
  sub_217751DE8();
  sub_217751DE8();
  if (v90 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v91 = type metadata accessor for CloudFormatter(0);
  v92 = __swift_project_value_buffer(v91, qword_280BE8918);
  v93 = v239;
  v94 = sub_2177517D8();
  v95 = OUTLINED_FUNCTION_29_45();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
  if (v93)
  {
    v200 = v87;
    v98 = *(v92 + *(v91 + 24));
    v99 = sub_217751F18();
    v100 = [v98 dateFromString_];

    if (v100)
    {
      sub_2177517C8();
    }

    v105 = v214;
    sub_2171F0738(v89, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_75_19();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    v87 = v200;
  }

  else
  {
    sub_2171F0738(v89, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_75_19();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
    v105 = v214;
  }

  (*(*(v33 - 8) + 8))(v105, v33);
  sub_2171F0738(&v228, &qword_27CB25938, &unk_21775D9B0);
  v214 = v250;
  v110 = v251;
  v111 = v252;
  if (v252 == 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = v250;
  }

  if (v252 == 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = v251;
  }

  if (v252 == 1)
  {
    v114 = 0;
  }

  else
  {
    v114 = v252;
  }

  LODWORD(v198) = v238;
  HIDWORD(v198) = v240;
  v115 = v236;
  v116 = v217;
  v117 = v217[93];
  v199 = v217[92];
  v200 = v117;
  v201 = v217[94];
  v212 = v217[95];
  v118 = v211;
  v119 = v216;
  *v211 = v87;
  v118[1] = v119;
  v120 = v215;
  v118[2] = v205;
  v118[3] = v120;
  v118[4] = v207;
  *(v118 + 40) = v209;
  v121 = v204;
  v118[6] = v203;
  v118[7] = v121;
  v122 = v208;
  v118[8] = v202;
  v118[9] = v122;
  v123 = type metadata accessor for MusicPersonalRecommendation(0);
  sub_2174BFD48();
  *(v118 + v123[11]) = v210;
  v124 = v198;
  *(v118 + v123[12]) = BYTE4(v198);
  v125 = (v118 + v123[13]);
  *v125 = v112;
  v125[1] = v113;
  v125[2] = v114;
  *(v118 + v123[14]) = v124;
  *(v118 + v123[15]) = v115;
  v126 = v118 + v123[16];
  memcpy(v126, v223, 0x68uLL);
  v126[104] = v206;
  v127 = v200;
  *(v118 + v123[17]) = v199;
  *(v118 + v123[18]) = v127;
  *(v118 + v123[19]) = v201;
  *(v118 + v123[20]) = v212;
  sub_21733C6A8(v214, v110, v111);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v116, &qword_27CB244A8, &unk_217758980);
  sub_217269D5C(v237);
}

uint64_t sub_2176DFD20@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2176DFE6C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2176DFEAC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPersonalRecommendation.Attributes.DisplayInfo.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudPersonalRecommendation.Attributes.DisplayInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2176DFFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E4F54(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E0028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E4F54(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.Attributes.DisplayInfo.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDE0, &qword_217797B90);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E4F54(v7, v8, v9);
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  OUTLINED_FUNCTION_22();
  v10 = sub_2177532F8();
  sub_2176E4FA8(v10, v11, v12);
  sub_217752F38();

  (*(v5 + 8))(v0, v3, v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_217753208();
  }

  sub_217753208();
  OUTLINED_FUNCTION_16_0();

  return sub_217751FF8();
}

uint64_t CloudPersonalRecommendation.Attributes.DisplayInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Attributes.DisplayInfo.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDF8, &qword_217797B98);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E4F54(v6, v7, v8);
  OUTLINED_FUNCTION_22();
  v9 = sub_2177532C8();
  if (!v0)
  {
    sub_2176E4FFC(v9, v10, v11);
    sub_217752E58();
    v12 = OUTLINED_FUNCTION_25_0();
    v13(v12);
    *v4 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

BOOL static CloudPersonalRecommendation.Attributes.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a1 + 56);
  v10 = a1[8];
  v9 = a1[9];
  v11 = a1[10];
  v12 = a1[11];
  v13 = a1[12];
  v145 = a1[13];
  v14 = a1[14];
  v15 = a1[15];
  v144 = a1[16];
  v16 = *(a2 + 8);
  v148 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  v25 = *(a2 + 80);
  v24 = *(a2 + 88);
  v26 = *(a2 + 96);
  v147 = *(a2 + 104);
  v146 = *(a2 + 112);
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v141 = a1[2];
    if (*a1 != *a2 || v3 != v16)
    {
      v123 = a1[5];
      v125 = *(a2 + 72);
      v112 = a1[15];
      v114 = *(a2 + 128);
      v134 = *(a2 + 88);
      v137 = *(a2 + 80);
      v30 = a1[14];
      v130 = *(a2 + 96);
      v127 = a1[11];
      v31 = *(a2 + 120);
      v32 = a1[10];
      v110 = *(a2 + 40);
      v111 = a1[12];
      v33 = a1[9];
      v117 = *(a1 + 32);
      v119 = *(a1 + 56);
      v34 = *(a2 + 64);
      v35 = *(a2 + 56);
      v121 = a1[6];
      v36 = *(a2 + 48);
      v37 = sub_217753058();
      v20 = v110;
      v13 = v111;
      v19 = v36;
      v7 = v121;
      v6 = v123;
      v21 = v35;
      v23 = v34;
      v5 = v117;
      v8 = v119;
      v9 = v33;
      v11 = v32;
      v26 = v130;
      v27 = v31;
      v22 = v125;
      v12 = v127;
      v14 = v30;
      v24 = v134;
      v25 = v137;
      v15 = v112;
      v28 = v114;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v141 = a1[2];
    if (v16)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v17)
    {
      return 0;
    }

    if (v141 != v148 || v4 != v17)
    {
      v124 = v6;
      v128 = v12;
      v142 = v14;
      v39 = v27;
      v149 = v11;
      v132 = v10;
      v135 = v24;
      v138 = v25;
      v40 = v13;
      v41 = v9;
      v126 = v22;
      v42 = v23;
      v118 = v5;
      v120 = v8;
      v43 = v21;
      v122 = v7;
      v44 = v19;
      v45 = v20;
      v46 = sub_217753058();
      v20 = v45;
      v5 = v118;
      v8 = v120;
      v19 = v44;
      v7 = v122;
      v6 = v124;
      v21 = v43;
      v23 = v42;
      v22 = v126;
      v12 = v128;
      v9 = v41;
      v13 = v40;
      v24 = v135;
      v25 = v138;
      v10 = v132;
      v11 = v149;
      v27 = v39;
      v14 = v142;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v5 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v18 == 2 || ((v18 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v6 != v20 || v7 != v19)
    {
      v129 = v12;
      v131 = v26;
      v115 = v28;
      v49 = v15;
      v50 = v14;
      v51 = v27;
      v52 = v11;
      v133 = v10;
      v136 = v24;
      v139 = v25;
      v53 = v13;
      v54 = v9;
      v55 = v22;
      v56 = v23;
      v57 = v8;
      v58 = v21;
      v59 = sub_217753058();
      v21 = v58;
      v8 = v57;
      v23 = v56;
      v22 = v55;
      v9 = v54;
      v13 = v53;
      v24 = v136;
      v25 = v139;
      v26 = v131;
      v10 = v133;
      v11 = v52;
      v27 = v51;
      v14 = v50;
      v15 = v49;
      v28 = v115;
      v12 = v129;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v8 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }

LABEL_38:
    if (v9 == 1)
    {
      v60 = v23;
      v61 = v13;
      v150 = v11;
      v140 = v27;
      v143 = v14;
      v116 = v28;
      v62 = v22;
      sub_2171FB568(v10, 1);
      if (v62 == 1)
      {
        v63 = v12;
        v113 = v15;
        sub_2171FB568(v60, 1);
        sub_217283988(v10, 1);
        goto LABEL_46;
      }

      sub_2171FB568(v60, v62);
      v64 = 1;
    }

    else
    {
      v152[0] = v10;
      v152[1] = v9;
      if (v22 != 1)
      {
        v61 = v13;
        v150 = v11;
        v151[0] = v23;
        v63 = v12;
        v140 = v27;
        v143 = v14;
        v113 = v15;
        v116 = v28;
        v151[1] = v22;
        v65 = v9;
        sub_2171FB568(v10, v9);
        v66 = OUTLINED_FUNCTION_93();
        sub_2171FB568(v66, v67);
        sub_2171FB568(v10, v65);
        v68 = static CloudPersonalRecommendation.Attributes.DisplayInfo.== infix(_:_:)(v152, v151);

        sub_217283988(v10, v65);
        if ((v68 & 1) == 0)
        {
          return 0;
        }

LABEL_46:
        if (v61)
        {
          if (v26)
          {
            OUTLINED_FUNCTION_849();
            sub_2172E1074(v69, v70, v71);
            v72 = OUTLINED_FUNCTION_53_29();
            sub_2172E1074(v72, v73, v74);
            OUTLINED_FUNCTION_849();
            v75 = sub_2172AA364();
            v76 = OUTLINED_FUNCTION_53_29();
            sub_2172E141C(v76, v77, v78);
            OUTLINED_FUNCTION_849();
            sub_2172E141C(v79, v80, v81);
            if ((v75 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_53;
          }
        }

        else if (!v26)
        {
          sub_2172E1074(v150, v63, 0);
          sub_2172E1074(v25, v24, 0);
          sub_2172E141C(v150, v63, 0);
LABEL_53:
          if (v113)
          {
            v94 = v143;
            if (v140)
            {
              sub_2172E1074(v145, v143, v113);
              v95 = OUTLINED_FUNCTION_50_34();
              sub_2172E1074(v95, v96, v97);
              OUTLINED_FUNCTION_80_3();
              v98 = sub_2172AA364();
              v99 = OUTLINED_FUNCTION_50_34();
              sub_2172E141C(v99, v100, v101);
              OUTLINED_FUNCTION_80_3();
              sub_2172E141C(v102, v103, v104);
              if ((v98 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_63;
            }
          }

          else
          {
            v94 = v143;
            if (!v140)
            {
              sub_2172E1074(v145, v143, 0);
              sub_2172E1074(v147, v146, 0);
              sub_2172E141C(v145, v143, 0);
LABEL_63:
              if (v144)
              {
                if (!v116)
                {
                  return 0;
                }

                sub_2172705FC();
                return (v109 & 1) != 0;
              }

              return !v116;
            }
          }

          v105 = v94;
          sub_2172E1074(v145, v94, v113);
          v106 = OUTLINED_FUNCTION_50_34();
          sub_2172E1074(v106, v107, v108);
          sub_2172E141C(v145, v105, v113);
          v91 = OUTLINED_FUNCTION_50_34();
LABEL_59:
          sub_2172E141C(v91, v92, v93);
          return 0;
        }

        OUTLINED_FUNCTION_849();
        sub_2172E1074(v82, v83, v84);
        v85 = OUTLINED_FUNCTION_53_29();
        sub_2172E1074(v85, v86, v87);
        OUTLINED_FUNCTION_849();
        sub_2172E141C(v88, v89, v90);
        v91 = OUTLINED_FUNCTION_53_29();
        goto LABEL_59;
      }

      v64 = v9;
      v62 = 1;
      v60 = v23;
      sub_2171FB568(v10, v9);
      sub_2171FB568(v60, 1);
      sub_2171FB568(v10, v64);
    }

    sub_217283988(v10, v64);
    sub_217283988(v60, v62);
    return 0;
  }

  result = 0;
  if (v21 != 2 && ((v21 ^ v8) & 1) == 0)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2176E0A04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xED0000646E694B6CLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000002177B5910 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616470557478656ELL && a2 == 0xEE00657461446574;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C41656553736168 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656372756F736572 && a2 == 0xED00007365707954)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_217753058();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2176E0CE4(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x616470557478656ELL;
      break;
    case 4:
      result = 0x6C41656553736168;
      break;
    case 5:
      result = 0x79616C70736964;
      break;
    case 6:
      result = 0x6E6F73616572;
      break;
    case 7:
      result = 0x656C746974;
      break;
    case 8:
      result = 0x656372756F736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E0E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176E0A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176E0E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5050(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E0E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5050(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE08, &qword_217797BA0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_111();
  v29 = v0[8];
  v30 = v0[9];
  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[12];
  v23 = v0[13];
  v24 = v0[14];
  v25 = v0[15];
  v9 = OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_2176E5050(v9, v10, v11);
  sub_217751DE8();
  OUTLINED_FUNCTION_40_32();
  v12 = sub_2177532F8();
  sub_2176E50A4(v12, v13, v14);
  OUTLINED_FUNCTION_16_72();
  sub_217752F38();
  if (v1)
  {
  }

  else
  {

    sub_2176E50F8(v16, v17, v18);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_217752F08();
    OUTLINED_FUNCTION_19_1();
    sub_217752EF8();
    sub_217752F08();
    v19 = sub_2171FB568(v29, v30);
    sub_2176E514C(v19, v20, v21);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_217283988(v29, v30);
    sub_2172E1074(v26, v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_41_40();
    sub_2176E529C(v22);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_2172E141C(v26, v27, v28);
    sub_2172E1074(v23, v24, v25);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
    sub_2172E141C(v23, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
    sub_2176E5300(&unk_27CB2CE30);
    OUTLINED_FUNCTION_16_72();
    sub_217752F38();
  }

  (*(v7 + 8))(v2, v5, v15);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Attributes.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v2 + 72);
  v8 = *(v2 + 96);
  v12 = *(v2 + 88);
  v13 = *(v2 + 112);
  v10 = *(v2 + 120);
  v9 = *(v2 + 128);
  if (*(v2 + 8))
  {
    sub_217753208();
    sub_217751FF8();
    if (v4)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_217753208();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_217753208();
LABEL_6:
  if (v5 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  sub_217753208();
  if (v6)
  {
    sub_217751FF8();
  }

  if (v7 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v11 == 1 || (sub_217753208(), !v11))
  {
    sub_217753208();
    if (!v8)
    {
LABEL_15:
      sub_217753208();
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_22:
      sub_217753208();
      sub_217753208();
      if (v13)
      {
        sub_217751FF8();
      }

      sub_217751DE8();
      sub_217265A08(a1, v10);

      if (!v9)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  sub_217753208();
  sub_217753208();
  if (v12)
  {
    sub_217751FF8();
  }

  sub_217751DE8();
  sub_217265A08(a1, v8);

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_217753208();
  if (!v9)
  {
LABEL_17:
    sub_217753208();
    return;
  }

LABEL_25:
  sub_217753208();

  sub_217281A54();
}

uint64_t CloudPersonalRecommendation.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPersonalRecommendation.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudPersonalRecommendation.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE38, &qword_217797BA8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  v16 = OUTLINED_FUNCTION_160(v12, v12[3]);
  sub_2176E5050(v16, v17, v18);
  v19 = sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2176E51A0(v19, v20, v21);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    v22 = sub_217752E58();
    v23 = v49;
    v47 = v50;
    sub_2176E51F4(v22, v24, v25);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v26 = v49;
    v46 = v50;
    OUTLINED_FUNCTION_27_50(2);
    v37 = sub_217752E28();
    OUTLINED_FUNCTION_27_50(3);
    v36 = sub_217752E18();
    v45 = v27;
    OUTLINED_FUNCTION_27_50(4);
    v28 = sub_217752E28();
    v34 = v28;
    sub_2176E5248(v28, v29, v30);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v44 = v49;
    v35 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_39_32();
    sub_2176E529C(v31);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v43 = v50;
    v41 = v49;
    v42 = v51;
    LOBYTE(v48[0]) = 7;
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v39 = v50;
    v40 = v49;
    v38 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
    v66 = 8;
    sub_2176E5300(&unk_27CB2CE58);
    OUTLINED_FUNCTION_51_26();
    sub_217752E58();
    v32 = OUTLINED_FUNCTION_14_65();
    v33(v32);
    v48[0] = v23;
    v48[1] = v47;
    v48[2] = v26;
    v48[3] = v46;
    LOBYTE(v48[4]) = v37;
    v48[5] = v36;
    v48[6] = v45;
    LOBYTE(v48[7]) = v34;
    v48[8] = v44;
    v48[9] = v35;
    v48[10] = v41;
    v48[11] = v43;
    v48[12] = v42;
    v48[13] = v40;
    v48[14] = v39;
    v48[15] = v38;
    v48[16] = a10;
    memcpy(v14, v48, 0x88uLL);
    sub_21733C64C(v48, &v49);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v49 = v23;
    v50 = v47;
    v51 = v26;
    v52 = v46;
    v53 = v37;
    v54 = v36;
    v55 = v45;
    v56 = v34;
    v57 = v44;
    v58 = v35;
    v59 = v41;
    v60 = v43;
    v61 = v42;
    v62 = v40;
    v63 = v39;
    v64 = v38;
    v65 = a10;
    sub_21733C7EC(&v49);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E1B24(uint64_t a1)
{
  sub_2177531E8();
  CloudPersonalRecommendation.Attributes.hash(into:)(v2);
  return sub_217753238();
}

void CloudPersonalRecommendation.Relationships.CodingKeys.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

void CloudPersonalRecommendation.Relationships.CodingKeys.init(stringValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

uint64_t sub_2176E1CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738BF64(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E1CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738BF64(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPersonalRecommendation.Relationships.== infix(_:_:)()
{
  sub_217284868();
  sub_217284868();
  if (v11)
  {
    sub_217284868();
    if (v12[2])
    {
      memcpy(v8, v12, sizeof(v8));
      v0 = sub_2172DE0B8(v9, v8);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v1, v2, v3);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v4, v5, v6);
      sub_2171F0738(v10, &qword_27CB244B8, &unk_217758990);
      return (v0 & 1) != 0;
    }

    sub_2171F0738(v9, &qword_27CB244C0, &qword_21775D9C0);
  }

  else if (!v12[2])
  {
    sub_2171F0738(v10, &qword_27CB244B8, &unk_217758990);
    return 1;
  }

  sub_2171F0738(v10, &qword_27CB2CE60, &qword_217797BB0);
  return 0;
}

uint64_t CloudPersonalRecommendation.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE68, &unk_217797BB8);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738BF64(v7, v8, v9);
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C0, &qword_21775D9C0);
  sub_2176E5410(&unk_27CB2CE70);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudPersonalRecommendation.Relationships.hash(into:)(uint64_t a1)
{
  sub_217284868();
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v3, __src, sizeof(v3));
  OUTLINED_FUNCTION_24();
  sub_2172DE4B4(a1);
  return sub_2171F0738(v3, &qword_27CB244C0, &qword_21775D9C0);
}

uint64_t CloudPersonalRecommendation.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4B4(v3);
    sub_2171F0738(__dst, &qword_27CB244C0, &qword_21775D9C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v14 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE78, &qword_217797BC8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36_34();
  v9 = OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21738BF64(v9, v10, v11);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C0, &qword_21775D9C0);
    sub_2176E5410(&unk_27CB2CE80);
    sub_217752E58();
    (*(v7 + 8))(v1, v5);
    memcpy(v13, v12, sizeof(v13));
    memcpy(v14, v13, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E231C(uint64_t a1)
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4B4(v4);
    sub_2171F0738(__dst, &qword_27CB244C0, &qword_21775D9C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2176E23CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5490(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E2408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5490(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPersonalRecommendation.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE88, &qword_217797BD0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2176E5490(v7, v8, v9);
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudPersonalRecommendation.Metadata.metrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2172E1074(v2, v3, v4);
}

BOOL static CloudPersonalRecommendation.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 16);
  if (a1[2])
  {
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_35_39();
      sub_2172E1074(v5, v6, v7);
      v8 = OUTLINED_FUNCTION_240();
      sub_2172E1074(v8, v9, v4);
      OUTLINED_FUNCTION_35_39();
      v10 = sub_2172AA364();
      v11 = OUTLINED_FUNCTION_240();
      sub_2172E141C(v11, v12, v4);
      v13 = OUTLINED_FUNCTION_35_39();
      sub_2172E141C(v13, v14, v15);
      return (v10 & 1) != 0;
    }

LABEL_6:
    v16 = OUTLINED_FUNCTION_35_39();
    sub_2172E1074(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_240();
    sub_2172E1074(v19, v20, v4);
    v21 = OUTLINED_FUNCTION_35_39();
    sub_2172E141C(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_240();
    sub_2172E141C(v24, v25, v4);
    return 0;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  sub_2172E1074(*a1, v2, 0);
  v27 = OUTLINED_FUNCTION_240();
  sub_2172E1074(v27, v28, 0);
  sub_2172E141C(v3, v2, 0);
  return 1;
}

uint64_t sub_2176E26FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2176E2790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176E26FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176E27BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E54E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E27F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E54E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CE98, &unk_217797BD8);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  v10 = sub_2172E1074(v7, v8, v9);
  sub_2176E54E4(v10, v11, v12);
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29AE8, &qword_217779EE0);
  OUTLINED_FUNCTION_41_40();
  sub_2176E55E0(v13);
  sub_217752F38();
  v14 = sub_2172E141C(v7, v8, v9);
  (*(v5 + 8))(v1, v15, v14);
  OUTLINED_FUNCTION_170();
}

double CloudPersonalRecommendation.Metadata.hash(into:)(const void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 8);
    sub_217753208();
    sub_217753208();
    if (v4)
    {
      OUTLINED_FUNCTION_36();
      sub_217751FF8();
    }

    sub_217751DE8();
    sub_217265A08(a1, v3);
  }

  else
  {
    sub_217753208();
  }

  return result;
}

uint64_t CloudPersonalRecommendation.Metadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_238();
  if (v2)
  {
    sub_217753208();
    sub_217753208();
    if (v1)
    {
      OUTLINED_FUNCTION_36();
      sub_217751FF8();
    }

    sub_217751DE8();
    sub_217265A08(v4, v2);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPersonalRecommendation.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CEC0, &qword_217797BE8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E54E4(v11, v12, v13);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29AE8, &qword_217779EE0);
    OUTLINED_FUNCTION_39_32();
    sub_2176E55E0(v14);
    sub_217752E58();
    (*(v7 + 8))(v10, v5);
    v15 = v17;
    *v4 = v16;
    *(v4 + 16) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E2CA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_2177531E8();
  sub_217753208();
  if (v4)
  {
    sub_2172DE88C(v6, v2, v3, v4);
  }

  return sub_217753238();
}

uint64_t CloudPersonalRecommendation.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_95_18(v5);
  memcpy(a1, (v1 + 16), 0x88uLL);
  return sub_21733C64C(v5, v4);
}

double static CloudPersonalRecommendation.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB2CDC0 = a1;
}

uint64_t sub_2176E2EB0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB2CDC0;
  return sub_217751DE8();
}

double sub_2176E2F00(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB2CDC0 = v1;
  sub_217751DE8();
}

uint64_t CloudPersonalRecommendation.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[36];
  v3 = v1[37];
  v4 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21733C6A8(v2, v3, v4);
}

uint64_t sub_2176E2FBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4AB0 != -1)
  {
    OUTLINED_FUNCTION_47_33(&qword_280BE4AB0);
  }

  v1 = unk_280BE4AC0;
  v2 = byte_280BE4AC8;
  *(v0 + 32) = qword_280BE4AB8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_27CB2CDD0 = v0;

  return sub_217751DE8();
}

BOOL static CloudPersonalRecommendation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v3 || (v4 = sub_217753058(), result = 0, (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_95_18(v58);
    OUTLINED_FUNCTION_95_18(v55);
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    memcpy(__src, (v0 + 16), sizeof(__src));
    sub_21733C64C(v58, v56);
    sub_21733C64C(__dst, v56);
    v6 = static CloudPersonalRecommendation.Attributes.== infix(_:_:)(v55, __src);
    memcpy(v60, __src, sizeof(v60));
    sub_21733C7EC(v60);
    memcpy(v61, v55, sizeof(v61));
    sub_21733C7EC(v61);
    if (!v6)
    {
      return 0;
    }

    sub_217284868();
    sub_217284868();
    if (*&v55[16] == 1)
    {
      if (*&v55[144] == 1)
      {
        sub_2171F0738(v55, &qword_27CB244B0, &unk_21776DB80);
LABEL_14:
        if (*(v1 + 280) == *(v0 + 280))
        {
          v9 = *(v1 + 288);
          v8 = *(v1 + 296);
          v10 = *(v1 + 304);
          v12 = *(v0 + 288);
          v11 = *(v0 + 296);
          v13 = *(v0 + 304);
          if (v10 == 1)
          {
            v14 = OUTLINED_FUNCTION_240();
            sub_21733C6A8(v14, v15, 1);
            if (v13 == 1)
            {
              v16 = OUTLINED_FUNCTION_25_0();
              sub_21733C6A8(v16, v17, 1);
              v18 = OUTLINED_FUNCTION_240();
              sub_21733C6CC(v18, v19, 1);
              return 1;
            }

            v31 = OUTLINED_FUNCTION_25_0();
            sub_21733C6A8(v31, v32, v13);
          }

          else
          {
            *v55 = v9;
            *&v55[8] = v8;
            *&v55[16] = v10;
            if (v13 != 1)
            {
              __src[0] = v12;
              __src[1] = v11;
              __src[2] = v13;
              v38 = OUTLINED_FUNCTION_6_8();
              sub_21733C6A8(v38, v39, v40);
              v41 = OUTLINED_FUNCTION_25_0();
              sub_21733C6A8(v41, v42, v13);
              v43 = OUTLINED_FUNCTION_6_8();
              sub_21733C6A8(v43, v44, v45);
              v46 = static CloudPersonalRecommendation.Metadata.== infix(_:_:)(v55, __src);
              v47 = OUTLINED_FUNCTION_25_0();
              sub_2172E141C(v47, v48, v13);
              v49 = OUTLINED_FUNCTION_6_8();
              sub_2172E141C(v49, v50, v51);
              v52 = OUTLINED_FUNCTION_6_8();
              sub_21733C6CC(v52, v53, v54);
              return v46;
            }

            v20 = OUTLINED_FUNCTION_6_8();
            sub_21733C6A8(v20, v21, v22);
            v23 = OUTLINED_FUNCTION_25_0();
            sub_21733C6A8(v23, v24, 1);
            v25 = OUTLINED_FUNCTION_6_8();
            sub_21733C6A8(v25, v26, v27);
            v28 = OUTLINED_FUNCTION_6_8();
            sub_2172E141C(v28, v29, v30);
          }

          v33 = OUTLINED_FUNCTION_6_8();
          sub_21733C6CC(v33, v34, v35);
          v36 = OUTLINED_FUNCTION_25_0();
          sub_21733C6CC(v36, v37, v13);
        }

        return 0;
      }
    }

    else
    {
      sub_217284868();
      if (*&v55[144] != 1)
      {
        memcpy(v56, &v55[128], 0x80uLL);
        v7 = static CloudPersonalRecommendation.Relationships.== infix(_:_:)();
        sub_21728373C(v56);
        sub_21728373C(__src);
        sub_2171F0738(v55, &qword_27CB244B0, &unk_21776DB80);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_14;
      }

      sub_21728373C(__src);
    }

    sub_2171F0738(v55, &qword_27CB2CED0, &qword_217797BF0);
    return 0;
  }

  return result;
}

uint64_t sub_2176E338C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176E3474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5644(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E34B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E5644(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v27 = v24;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CED8, &qword_217797BF8);
  OUTLINED_FUNCTION_0_0();
  v32 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_111();
  v34 = OUTLINED_FUNCTION_160(v29, v29[3]);
  sub_2176E5644(v34, v35, v36);
  OUTLINED_FUNCTION_40_32();
  OUTLINED_FUNCTION_22();
  v37 = sub_2177532F8();
  v38 = v27[1];
  v60 = *v27;
  v61 = v38;
  sub_2172E1B18(v37, v39, v40);
  OUTLINED_FUNCTION_16_72();
  sub_217752F88();
  if (!v25)
  {
    memcpy(v59, v27 + 2, sizeof(v59));
    memcpy(v58, v27 + 2, sizeof(v58));
    v42 = sub_21733C64C(v59, v57);
    sub_21733C798(v42, v43, v44);
    OUTLINED_FUNCTION_34_40();
    sub_217752F88();
    memcpy(v57, v58, sizeof(v57));
    v45 = sub_21733C7EC(v57);
    sub_21733C744(v45, v46, v47);
    OUTLINED_FUNCTION_34_40();
    v48 = sub_217752F38();
    sub_21733C6F0(v48, v49, v50);
    OUTLINED_FUNCTION_34_40();
    sub_217752F38();
    v54 = v27[36];
    v55 = v27[37];
    v56 = v27[38];
    v51 = sub_21733C6A8(v54, v55, v56);
    sub_2174D7728(v51, v52, v53);
    OUTLINED_FUNCTION_34_40();
    sub_217752F38();
    v41.n128_f64[0] = sub_21733C6CC(v54, v55, v56);
  }

  (*(v32 + 8))(v26, v30, v41);
  OUTLINED_FUNCTION_170();
}

double CloudPersonalRecommendation.hash(into:)(const void *a1)
{
  sub_217751FF8();
  OUTLINED_FUNCTION_95_18(__src);
  CloudPersonalRecommendation.Attributes.hash(into:)(a1);
  sub_217284868();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_217284868();
    if (v7[2])
    {
      memcpy(v6, v7, sizeof(v6));
      OUTLINED_FUNCTION_24();
      sub_2172DE4B4(a1);
      sub_2171F0738(v6, &qword_27CB244C0, &qword_21775D9C0);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_21728373C(__dst);
  }

  sub_217753208();
  v3 = *(v1 + 304);
  if (v3 == 1 || (v4 = *(v1 + 296), OUTLINED_FUNCTION_24(), !v3))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    if (v4)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    sub_217265A08(a1, v3);
  }

  return result;
}

uint64_t CloudPersonalRecommendation.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPersonalRecommendation.hash(into:)(v1);
  return sub_217753238();
}

void CloudPersonalRecommendation.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CEE8, &unk_217797C00);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36_34();
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2176E5644(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v26[0]) = 0;
    sub_2172E1C68(v9, v10, v11);
    v12 = sub_217752EA8();
    v29[0] = v28[0];
    v29[1] = v28[1];
    v27 = 1;
    sub_2176E5698(v12, v13, v14);
    sub_217752EA8();
    v15 = memcpy(v30, v28, sizeof(v30));
    sub_2176E56EC(v15, v16, v17);
    OUTLINED_FUNCTION_30_44();
    sub_217752E58();
    v18 = memcpy(v31, v26, 0x80uLL);
    sub_2176E5740(v18, v19, v20);
    OUTLINED_FUNCTION_30_44();
    v21 = sub_217752E58();
    v31[128] = v26[0];
    sub_2176E5794(v21, v22, v23);
    OUTLINED_FUNCTION_30_44();
    sub_217752E58();
    v24 = OUTLINED_FUNCTION_82();
    v25(v24);
    v32 = v26[0];
    v33 = *&v26[1];
    sub_21733C5F0(v29, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217269D5C(v29);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E3C90(uint64_t a1)
{
  sub_2177531E8();
  CloudPersonalRecommendation.hash(into:)(v2);
  return sub_217753238();
}

uint64_t MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  sub_217284868();
  (*(v13 + 16))(v6, a2, a4);
  v14 = MusicPersonalRecommendation.init<A>(_:configuration:sharedRelatedItemStore:additionalQueryItems:)(v16, v6, a3, MEMORY[0x277D84F90], a4, a5, a6);
  (*(v13 + 8))(a2, a4, v14);
  return sub_2171F0738(a1, &qword_27CB244A8, &unk_217758980);
}

void sub_2176E3E18(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (!a4)
  {
    if (a2)
    {
      v13 = OUTLINED_FUNCTION_21_49();
      if (v15 == v13 && a2 == v14)
      {
LABEL_21:

        goto LABEL_22;
      }

      v17 = sub_217753058();

      if (v17)
      {
LABEL_22:
        v12 = 6;
        goto LABEL_23;
      }
    }

    goto LABEL_14;
  }

  if (a3 != 0x7661662D72756F79 || a4 != 0xEE0073657469726FLL)
  {
    v10 = OUTLINED_FUNCTION_25_0();
    if ((OUTLINED_FUNCTION_0_99(v10, v11) & 1) == 0)
    {
      OUTLINED_FUNCTION_44_10();
      v19 = a3 == 0xD000000000000011 && v18 == a4;
      if (v19 || (OUTLINED_FUNCTION_0_99(0xD000000000000011, v18) & 1) != 0)
      {

        v12 = 1;
        goto LABEL_23;
      }

      v20 = OUTLINED_FUNCTION_80_18();
      v22 = a3 == v20 && a4 == v21;
      if (v22 || (OUTLINED_FUNCTION_0_99(v20, v21) & 1) != 0)
      {

        v12 = 2;
        goto LABEL_23;
      }

      v23 = OUTLINED_FUNCTION_85_17();
      v25 = a3 == v23 && a4 == v24;
      if (v25 || (OUTLINED_FUNCTION_0_99(v23, v24) & 1) != 0)
      {

        v12 = 3;
        goto LABEL_23;
      }

      v26 = OUTLINED_FUNCTION_79_21();
      v28 = a3 == v26 && a4 == v27;
      if (v28 || (OUTLINED_FUNCTION_0_99(v26, v27) & 1) != 0)
      {

        v12 = 4;
        goto LABEL_23;
      }

      v29 = a3 == 0x656C65722D77656ELL && a4 == 0xEC00000073657361;
      if (v29 || (OUTLINED_FUNCTION_0_99(0x656C65722D77656ELL, 0xEC00000073657361) & 1) != 0)
      {

        v12 = 5;
        goto LABEL_23;
      }

      v30 = OUTLINED_FUNCTION_21_49();
      v32 = a3 == v30 && a4 == v31;
      if (v32 || (OUTLINED_FUNCTION_0_99(v30, v31) & 1) != 0)
      {
        goto LABEL_21;
      }

      v33 = a3 == 0x6D2D79616C706572 && a4 == 0xEC00000073657869;
      if (v33 || (OUTLINED_FUNCTION_0_99(0x6D2D79616C706572, 0xEC00000073657869) & 1) != 0)
      {

        v12 = 7;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_44_10();
      v35 = a3 == 0xD000000000000010 && v34 == a4;
      if (v35 || (OUTLINED_FUNCTION_0_99(0xD000000000000010, v34) & 1) != 0)
      {

        v12 = 8;
        goto LABEL_23;
      }

      if (a3 == 0x6B6369702D706F74 && a4 == 0xE900000000000073)
      {

LABEL_73:
        v12 = 9;
        goto LABEL_23;
      }

      v37 = OUTLINED_FUNCTION_0_99(0x6B6369702D706F74, 0xE900000000000073);

      if (v37)
      {
        goto LABEL_73;
      }

LABEL_14:
      v12 = 10;
      goto LABEL_23;
    }
  }

  v12 = 0;
LABEL_23:
  *a5 = v12;
}

MusicKit::MusicPersonalRecommendation::_DisplayKind_optional __swiftcall MusicPersonalRecommendation._DisplayKind.init(_:)(MusicKit::CloudPersonalRecommendation::Attributes::DisplayInfo::Kind_optional a1)
{
  v2 = v1;
  v3 = *(a1.value.rawValue._countAndFlagsBits + 8);
  if (!v3)
  {
    goto LABEL_43;
  }

  v4 = *a1.value.rawValue._countAndFlagsBits;
  v5 = *a1.value.rawValue._countAndFlagsBits == 0x766F43636973754DLL && v3 == 0xEF666C6568537265;
  if (!v5 && (OUTLINED_FUNCTION_0_99(0x766F43636973754DLL, 0xEF666C6568537265) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_10();
    v8 = v4 == 0xD000000000000013 && v7 == v3;
    if (v8 || (OUTLINED_FUNCTION_0_99(0xD000000000000013, v7) & 1) != 0)
    {

      v6 = 1;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v10 = v4 == 0xD000000000000013 && v9 == v3;
    if (v10 || (OUTLINED_FUNCTION_0_99(0xD000000000000013, v9) & 1) != 0)
    {

      v6 = 2;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v12 = v4 == 0xD00000000000001BLL && v11 == v3;
    if (v12 || (OUTLINED_FUNCTION_0_99(0xD00000000000001BLL, v11) & 1) != 0)
    {

      v6 = 3;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    v14 = v4 == 0xD000000000000014 && v13 == v3;
    if (v14 || (OUTLINED_FUNCTION_0_99(0xD000000000000014, v13) & 1) != 0)
    {

      v6 = 4;
      goto LABEL_44;
    }

    v15 = v4 == 0x726143636973754DLL && v3 == 0xEE00666C65685364;
    if (v15 || (OUTLINED_FUNCTION_0_99(0x726143636973754DLL, 0xEE00666C65685364) & 1) != 0)
    {

      v6 = 5;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_44_10();
    if (v4 == 0xD000000000000019 && v16 == v3)
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_0_99(0xD000000000000019, v16);

      if ((v18 & 1) == 0)
      {
LABEL_43:
        v6 = 7;
        goto LABEL_44;
      }
    }

    v6 = 6;
    goto LABEL_44;
  }

  v6 = 0;
LABEL_44:
  *v2 = v6;
  return a1.value.rawValue._countAndFlagsBits;
}

unint64_t sub_2176E42B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CDD8;
  if (!qword_27CB2CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDD8);
  }

  return result;
}

uint64_t sub_2176E430C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280BE8A90 == v3 && *(&xmmword_280BE8A90 + 1) == v4;
  if (v5 || (sub_217753058() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  v6 = qword_280BE8AF0 == v3 && *algn_280BE8AF8 == v4;
  if (v6 || (sub_217753058() & 1) != 0)
  {
LABEL_15:
    if (qword_280BE62F0 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE62F8;
LABEL_18:
    v17 = *v7;
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    sub_217751DE8();
    sub_21770B7BC();
    v10 = *(*a2 + 16);
    result = sub_21770BAEC(v10);
    v12 = *a2;
    *(v12 + 16) = v10 + 1;
    v13 = v12 + 32 * v10;
    *(v13 + 32) = v17;
    *(v13 + 48) = v9;
    *(v13 + 56) = v8;
    return result;
  }

  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  v14 = qword_280BE8A40 == v3 && *algn_280BE8A48 == v4;
  if (v14 || (sub_217753058() & 1) != 0)
  {
    goto LABEL_34;
  }

  if (qword_280BE8AA8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BE8AB0 == v3 && *algn_280BE8AB8 == v4;
  if (v15 || (sub_217753058() & 1) != 0)
  {
LABEL_34:
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE6228;
    goto LABEL_18;
  }

  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  v16 = qword_280BE8A68 == v3 && unk_280BE8A70 == v4;
  if (v16 || (result = sub_217753058(), (result & 1) != 0))
  {
    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_280BE6250;
    goto LABEL_18;
  }

  return result;
}

uint64_t MusicPersonalRecommendation.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v84 = a2;
  v85 = a3;
  v83 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *(v4 + 40);
  if (v20 != 10)
  {
    LOBYTE(v112[0]) = *(v4 + 40);
    sub_2176E4CF8();
    v19 = 0x80000002177ABB10;
    v18 = 0x796C746E65636572;
    if (v20 == 6)
    {
      v19 = 0xEF646579616C702DLL;
    }

    else
    {
      v18 = 0xD000000000000015;
    }
  }

  v86 = v19;
  v87 = v18;
  v88 = v17;
  v89 = v16;
  v21 = type metadata accessor for MusicPersonalRecommendation(0);
  v82 = *(v4 + v21[14]);
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v22 = type metadata accessor for CloudFormatter(0);
  v23 = __swift_project_value_buffer(v22, qword_280BE8918);
  sub_217284868();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2171F0738(v11, &qword_27CB241C0, &qword_217759480);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    (*(v14 + 32))(v5, v11, v12);
    v24 = *(v23 + *(v22 + 24));
    v25 = sub_2177517A8();
    v26 = [v24 stringFromDate_];

    v27 = sub_217751F48();
    v80 = v28;
    v81 = v27;

    (*(v14 + 8))(v5, v12);
  }

  v29 = v21[11];
  v79 = *(v6 + v21[12]);
  if (*(v6 + v29) == 7)
  {
    v78 = 0;
    v30 = 1;
  }

  else
  {
    v111[0] = *(v6 + v29);
    MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()();
    v78 = v112[0];
    v30 = v112[1];
  }

  v77 = v30;
  v31 = v6[9];
  if (v31)
  {
    v76 = v6[8];
    v75 = sub_217751DC8();
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v32 = v6[7];
  v90 = a4;
  v72 = v31;
  if (v32)
  {
    v74 = v6[6];
    sub_217751DE8();
    v73 = sub_217751DC8();
  }

  else
  {
    sub_217751DE8();
    v73 = 0;
    v74 = 0;
  }

  v33 = *(v6 + v21[15]);
  sub_217751DE8();
  v71 = sub_2176DE844(v33);
  v34 = MusicPersonalRecommendation.items.getter();
  sub_2176E42B8(v34, v35, v36);
  v70 = v32;
  sub_217230490(v110);
  LOBYTE(v91[0]) = v110[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25928, &unk_21775D9A0);
  v69 = v21;
  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
  sub_2171F0738(v111, &qword_27CB25928, &unk_21775D9A0);
  v37 = v112[0];
  v38 = v112[1];
  sub_2171FB568(v112[0], v112[1]);
  sub_2176DE488();
  v84 = v112[3];
  v85 = v39;
  v40 = v112[4];
  v83 = v112[5];
  v41 = v112[6];
  v42 = v112[7];
  v43 = v112[8];
  sub_217284868();
  v44 = v6;
  v109[0] = v37;
  v109[1] = v38;
  v109[2] = v85;
  v109[3] = v84;
  v109[4] = v40;
  v109[5] = v83;
  v109[6] = v41;
  v109[7] = v42;
  v109[8] = v43;
  v109[14] = v112[14];
  v109[15] = v112[15];
  v45 = v69;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v112, &qword_27CB25930, &unk_217797B70);
  v46 = (v6 + v45[13]);
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v50 = *v6;
  v51 = v6[1];
  sub_21733C840(v109, v105);
  v91[0] = v50;
  v91[1] = v51;
  v91[2] = v88;
  v91[3] = v89;
  v91[4] = v87;
  v91[5] = v86;
  v92 = v82;
  v93 = v81;
  v94 = v80;
  v95 = v79;
  v96 = v78;
  v97 = v77;
  v98 = v76;
  v99 = v72;
  v100 = v75;
  v101 = v74;
  v102 = v70;
  v103 = v73;
  v104 = v71;
  v105[128] = 1;
  v106 = v47;
  v107 = v48;
  v108 = v49;
  OUTLINED_FUNCTION_36();
  sub_2172E1074(v52, v53, v54);
  v55 = v44;
  sub_217751DE8();
  sub_2176EF244();
  nullsub_1();
  v56 = v44[4];
  memcpy(v111, v110, 0x161uLL);
  v57 = v90;
  sub_21733C5F0(v91, v90);
  v58 = qword_280BE4AB0;
  sub_217751DE8();
  if (v58 != -1)
  {
    OUTLINED_FUNCTION_47_33(&qword_280BE4AB0);
  }

  v59 = unk_280BE4AC0;
  v89 = qword_280BE4AB8;
  LODWORD(v88) = byte_280BE4AC8;
  sub_217751DE8();
  sub_217269D5C(v91);
  sub_21728373C(v109);
  v61 = v55[2];
  v60 = v55[3];
  memcpy(v112, v111, 0x168uLL);
  v112[47] = 0;
  v112[45] = v56;
  v112[46] = 0;
  nullsub_1();
  v62 = *(v55 + v45[17]);
  v63 = *(v55 + v45[18]);
  v64 = v45[20];
  v65 = *(v55 + v45[19]);
  v66 = *(v55 + v64);
  *(v57 + 312) = v89;
  *(v57 + 320) = v59;
  *(v57 + 328) = v88;
  *(v57 + 336) = v61;
  *(v57 + 344) = v60;
  memcpy((v57 + 352), v112, 0x180uLL);
  *(v57 + 736) = v62;
  *(v57 + 744) = v63;
  *(v57 + 752) = v65;
  *(v57 + 760) = v66;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_2176E4CF8()
{
  switch(*v0)
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_44_10();
      break;
    case 2:
      OUTLINED_FUNCTION_80_18();
      break;
    case 3:
      OUTLINED_FUNCTION_85_17();
      break;
    case 4:
      OUTLINED_FUNCTION_79_21();
      break;
    case 6:
      OUTLINED_FUNCTION_21_49();
      break;
    default:
      return;
  }
}

MusicKit::CloudPersonalRecommendation::Attributes::DisplayInfo_optional __swiftcall MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()()
{
  v2 = 0xEF666C6568537265;
  v3 = 0x766F43636973754DLL;
  switch(*v1)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = "MusicNotesHeroShelf";
      goto LABEL_5;
    case 2:
      v3 = 0xD000000000000013;
      v4 = "MusicSuperHeroShelf";
LABEL_5:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
    case 3:
      v2 = 0x80000002177B58B0;
      v3 = 0xD00000000000001BLL;
      break;
    case 4:
      v2 = 0x80000002177B58D0;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v2 = 0xEE00666C65685364;
      v3 = 0x726143636973754DLL;
      break;
    case 6:
      v2 = 0x80000002177B58F0;
      v3 = 0xD000000000000019;
      break;
    default:
      break;
  }

  *v0 = v3;
  v0[1] = v2;
  return result;
}

unint64_t sub_2176E4F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CDE8;
  if (!qword_27CB2CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDE8);
  }

  return result;
}

unint64_t sub_2176E4FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CDF0;
  if (!qword_27CB2CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDF0);
  }

  return result;
}

unint64_t sub_2176E4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE00;
  if (!qword_27CB2CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE00);
  }

  return result;
}

unint64_t sub_2176E5050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE10;
  if (!qword_27CB2CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE10);
  }

  return result;
}

unint64_t sub_2176E50A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE18;
  if (!qword_27CB2CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE18);
  }

  return result;
}

unint64_t sub_2176E50F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE20;
  if (!qword_27CB2CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE20);
  }

  return result;
}

unint64_t sub_2176E514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE28;
  if (!qword_27CB2CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE28);
  }

  return result;
}

unint64_t sub_2176E51A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE40;
  if (!qword_27CB2CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE40);
  }

  return result;
}

unint64_t sub_2176E51F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE48;
  if (!qword_27CB2CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE48);
  }

  return result;
}

unint64_t sub_2176E5248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE50;
  if (!qword_27CB2CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE50);
  }

  return result;
}

unint64_t sub_2176E529C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    v6 = sub_2172E1594(v3, v4, v5);
    v9 = sub_2172E15E8(v6, v7, v8);
    result = OUTLINED_FUNCTION_20_2(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5300(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5374(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24210, &unk_21776DB90);
    sub_21750EA2C(&unk_27CB28CE8);
    v3 = sub_21750EA2C(&unk_27CB28CF0);
    result = OUTLINED_FUNCTION_20_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5410(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244C0, &qword_21775D9C0);
    v3 = OUTLINED_FUNCTION_240();
    sub_2176E5374(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CE90;
  if (!qword_27CB2CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CE90);
  }

  return result;
}

unint64_t sub_2176E54E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEA0;
  if (!qword_27CB2CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEA0);
  }

  return result;
}

unint64_t sub_2176E5538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEB0;
  if (!qword_27CB2CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEB0);
  }

  return result;
}

unint64_t sub_2176E558C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEB8;
  if (!qword_27CB2CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEB8);
  }

  return result;
}

unint64_t sub_2176E55E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29AE8, &qword_217779EE0);
    v6 = sub_2176E5538(v3, v4, v5);
    v9 = sub_2176E558C(v6, v7, v8);
    result = OUTLINED_FUNCTION_20_2(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176E5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEE0;
  if (!qword_27CB2CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEE0);
  }

  return result;
}

unint64_t sub_2176E5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEF0;
  if (!qword_27CB2CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEF0);
  }

  return result;
}

unint64_t sub_2176E56EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CEF8;
  if (!qword_27CB2CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CEF8);
  }

  return result;
}

unint64_t sub_2176E5740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF00;
  if (!qword_27CB2CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF00);
  }

  return result;
}

unint64_t sub_2176E5794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF08;
  if (!qword_27CB2CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF08);
  }

  return result;
}

unint64_t sub_2176E57EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF10;
  if (!qword_27CB2CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF10);
  }

  return result;
}

unint64_t sub_2176E5844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF18;
  if (!qword_27CB2CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF18);
  }

  return result;
}

unint64_t sub_2176E589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF20;
  if (!qword_27CB2CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF20);
  }

  return result;
}

unint64_t sub_2176E58F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF28;
  if (!qword_27CB2CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF28);
  }

  return result;
}

unint64_t sub_2176E594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF30;
  if (!qword_27CB2CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF30);
  }

  return result;
}

unint64_t sub_2176E59A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF38;
  if (!qword_27CB2CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF38);
  }

  return result;
}

unint64_t sub_2176E59FC()
{
  result = qword_27CB2CF40;
  if (!qword_27CB2CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2CF48, &qword_217797F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF40);
  }

  return result;
}

unint64_t sub_2176E5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF50;
  if (!qword_27CB2CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF50);
  }

  return result;
}

unint64_t sub_2176E5ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF58;
  if (!qword_27CB2CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF58);
  }

  return result;
}

unint64_t sub_2176E5B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF60;
  if (!qword_27CB2CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF60);
  }

  return result;
}

unint64_t sub_2176E5B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF68;
  if (!qword_27CB2CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF68);
  }

  return result;
}

unint64_t sub_2176E5BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF70;
  if (!qword_27CB2CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF70);
  }

  return result;
}

uint64_t sub_2176E5C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_2176E5C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176E5D18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2176E5D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendation.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2176E6024(_BYTE *result, int a2, int a3)
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

unint64_t sub_2176E60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF78;
  if (!qword_27CB2CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF78);
  }

  return result;
}

unint64_t sub_2176E612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF80;
  if (!qword_27CB2CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF80);
  }

  return result;
}

unint64_t sub_2176E6184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF88;
  if (!qword_27CB2CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF88);
  }

  return result;
}

unint64_t sub_2176E61DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF90;
  if (!qword_27CB2CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF90);
  }

  return result;
}

unint64_t sub_2176E6234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CF98;
  if (!qword_27CB2CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CF98);
  }

  return result;
}

unint64_t sub_2176E628C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFA0;
  if (!qword_27CB2CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFA0);
  }

  return result;
}

unint64_t sub_2176E62E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFA8;
  if (!qword_27CB2CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFA8);
  }

  return result;
}

unint64_t sub_2176E633C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFB0;
  if (!qword_27CB2CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFB0);
  }

  return result;
}

unint64_t sub_2176E6394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFB8;
  if (!qword_27CB2CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFB8);
  }

  return result;
}