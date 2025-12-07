unint64_t *sub_1DAFC00F8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1DAFC011C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DAFC013C()
{
  *(v1 + 56) = v0;
  type metadata accessor for ODNAssessmentResult(0);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC01CC, v0, 0);
}

uint64_t sub_1DAFC01CC()
{
  v10 = v0;
  v1 = *(v0 + 56);
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v9);
    v2 = v9;
    v1 = *(v0 + 56);
  }

  *(v0 + 72) = v2;
  v3 = *(v1 + 120);
  *(v0 + 80) = v3;
  v4 = *(v1 + 128);
  *(v0 + 88) = v4;
  v5 = *(v1 + 144);
  *(v0 + 16) = 1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 49) = 1;

  sub_1DAF4ED88(v3, v4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1DAFC02EC;
  v7 = *(v0 + 64);

  return sub_1DAF7A2E4(v7, v0 + 16);
}

uint64_t sub_1DAFC02EC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC03FC, v1, 0);
}

uint64_t sub_1DAFC03FC()
{
  v10 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v5 = *(v4 + 192);
  v6 = *(v4 + 200);
  __swift_project_boxed_opaque_existential_1((v4 + 168), v5);
  v9 = 8;
  (*(v6 + 16))(0xD00000000000002CLL, 0x80000001DB0C6930, &v9, v5, v6);
  (*(v4 + 216))(v3);

  sub_1DAF4AC40(v2, v1);
  sub_1DAFC29BC(v3, type metadata accessor for ODNAssessmentResult);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAFC051C()
{
  sub_1DAF4AC40(v0[15], v0[16]);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFC0598(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 113);
  v3 = *(*a2 + 113);
  if (v2 == v3)
  {
    return *(*a1 + 112) < *(*a2 + 112);
  }

  else
  {
    return v3 & (v2 ^ 1u);
  }
}

uint64_t sub_1DAFC05F0()
{
  v3 = v2[5];
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = (v4 >> 62);
  if (v4 >> 62)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v0 = v4;
    }

    else
    {
      v0 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1DB09DD44())
    {
      v8 = sub_1DB09DD44();
      if (!v8)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (sub_1DB09DD44())
      {
LABEL_3:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x1E1280530](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v0 = *(v4 + 32);
        }

        v2[6] = v0;
        if (v5)
        {
          v8 = sub_1DB09DD44();
          if (!v8)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v8 = sub_1DB09DD44();
          if (v8 < 1)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v8 = sub_1DB09DD44();
        }

        else
        {
          v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v8)
          {
            goto LABEL_42;
          }
        }

        v1 = (v8 - 1);
        if (!__OFSUB__(v8, 1))
        {
          v9 = v2[5];
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *(v9 + 112) = v4;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (!v5)
            {
              v5 = (v4 & 0xFFFFFFFFFFFFFF8);
              if (v1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else if (!v5)
          {
LABEL_19:
            v11 = v2[5];
            v4 = sub_1DB09DE74();
            *(v11 + 112) = v4;
            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
LABEL_20:
            v1 = v5 + 4;

            if (!(v4 >> 62))
            {
              v12 = v5[2];
              v8 = memmove(v5 + 4, v5 + 5, 8 * v12 - 8);
              v13 = v12 - 1;
              if (!__OFSUB__(v12, 1))
              {
                goto LABEL_22;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_38:
            v8 = sub_1DB09DD44();
            if (__OFSUB__(v8, 1))
            {
LABEL_45:
              __break(1u);
              return MEMORY[0x1EEE6DFA0](v8, v6, v7);
            }

            memmove(v1, v5 + 5, 8 * (v8 - 1));
            v8 = sub_1DB09DD44();
            v13 = v8 - 1;
            if (!__OFSUB__(v8, 1))
            {
LABEL_22:
              v14 = v2[5];
              v5[2] = v13;
              *(v14 + 112) = v4;
              swift_endAccess();

              v8 = sub_1DAFC08E0;
              v6 = v0;
              v7 = 0;

              return MEMORY[0x1EEE6DFA0](v8, v6, v7);
            }

            goto LABEL_41;
          }

          sub_1DB09DD44();
          goto LABEL_19;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      __break(1u);
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1DAFC270C();
  swift_allocError();
  swift_willThrow();
  swift_endAccess();
  v15 = v2[1];

  return v15();
}

uint64_t sub_1DAFC08E0()
{
  v1 = *(v0 + 40);
  *(v0 + 56) = *(*(v0 + 48) + 208);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC0950, v1, 0);
}

uint64_t sub_1DAFC0950()
{
  if (*(v1 + 56))
  {
    v3 = *(v1 + 40);
    swift_beginAccess();
    v4 = *(v3 + 112);
    v5 = (v4 >> 62);
    if (v4 >> 62)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        v0 = v4;
      }

      else
      {
        v0 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_1DB09DD44())
      {
        v8 = sub_1DB09DD44();
        if (!v8)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (sub_1DB09DD44())
        {
LABEL_4:
          if ((v4 & 0xC000000000000001) != 0)
          {
            v0 = MEMORY[0x1E1280530](0, v4);
          }

          else
          {
            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_41;
            }

            v0 = *(v4 + 32);
          }

          *(v1 + 48) = v0;
          if (v5)
          {
            v8 = sub_1DB09DD44();
            if (!v8)
            {
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v8 = sub_1DB09DD44();
            if (v8 < 1)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            v8 = sub_1DB09DD44();
          }

          else
          {
            v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v8)
            {
              goto LABEL_46;
            }
          }

          v2 = (v8 - 1);
          if (!__OFSUB__(v8, 1))
          {
            v12 = *(v1 + 40);
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v12 + 112) = v4;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (!v5)
              {
                v5 = (v4 & 0xFFFFFFFFFFFFFF8);
                if (v2 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_24;
                }

                goto LABEL_23;
              }
            }

            else if (!v5)
            {
LABEL_23:
              v14 = *(v1 + 40);
              v4 = sub_1DB09DE74();
              *(v14 + 112) = v4;
              v5 = (v4 & 0xFFFFFFFFFFFFFF8);
LABEL_24:
              v2 = v5 + 4;

              if (!(v4 >> 62))
              {
                v15 = v5[2];
                v8 = memmove(v5 + 4, v5 + 5, 8 * v15 - 8);
                v16 = v15 - 1;
                if (!__OFSUB__(v15, 1))
                {
                  goto LABEL_26;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_42:
              v8 = sub_1DB09DD44();
              if (__OFSUB__(v8, 1))
              {
LABEL_49:
                __break(1u);
                return MEMORY[0x1EEE6DFA0](v8, v6, v7);
              }

              memmove(v2, v5 + 5, 8 * (v8 - 1));
              v8 = sub_1DB09DD44();
              v16 = v8 - 1;
              if (!__OFSUB__(v8, 1))
              {
LABEL_26:
                v17 = *(v1 + 40);
                v5[2] = v16;
                *(v17 + 112) = v4;
                swift_endAccess();

                v8 = sub_1DAFC08E0;
                v6 = v0;
                v7 = 0;

                return MEMORY[0x1EEE6DFA0](v8, v6, v7);
              }

              goto LABEL_45;
            }

            sub_1DB09DD44();
            goto LABEL_23;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        __break(1u);
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    sub_1DAFC270C();
    swift_allocError();
    swift_willThrow();
    swift_endAccess();

    v18 = *(v1 + 8);

    return v18();
  }

  else
  {
    v9 = *(v1 + 8);
    v10 = *(v1 + 48);

    return v9(v10);
  }
}

uint64_t sub_1DAFC0CC0()
{
  v16 = v0;
  v1 = v0[11];
  v2 = v1[20];
  v13[0] = v1[19];
  v13[1] = v2;
  v14 = 0;
  v15 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000026, 0x80000001DB0C6850);
  swift_beginAccess();
  v3 = v1[14];
  if (v3 >> 62)
  {
    v4 = sub_1DB09DD44();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[11];
  v0[8] = v4;
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C6880);
  v7 = v14;
  LOBYTE(v14) = 8;
  CoreODILogger.debug(_:category:)(v7, v15, &v14);

  if (*(v5 + 136) || (v8 = v0[11], (*(v8 + 144) & 1) != 0))
  {
    v9 = v1[20];
    v14 = v1[19];
    v15 = v9;
    LOBYTE(v13[0]) = 8;

    CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C6900, v13);

    v10 = v0[1];

    return v10();
  }

  else
  {
    *(v8 + 144) = 1;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFC0F04;

    return sub_1DAFC05D0();
  }
}

uint64_t sub_1DAFC0F04(uint64_t a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[11];
  if (v1)
  {
    v6 = sub_1DAFC1464;
  }

  else
  {
    v4[14] = a1;
    v6 = sub_1DAFC1040;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFC1040()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  *(v2 + 136) = v1;

  *(v2 + 144) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC10CC, v1, 0);
}

uint64_t sub_1DAFC10CC()
{
  *(*(v0 + 112) + 209) = 1;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFC1168;

  return sub_1DAFC013C();
}

uint64_t sub_1DAFC1168()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1278, v1, 0);
}

uint64_t sub_1DAFC1278()
{
  v5 = v0;
  v1 = *(v0 + 88);
  v4 = 8;

  CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0C68D0, &v4);

  *(v1 + 136) = 0;

  *(v1 + 144) = 0;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFC1370;

  return sub_1DAFC0CA0();
}

uint64_t sub_1DAFC1370()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAFC1464()
{
  v9 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  *(v2 + 136) = 0;

  *(v2 + 144) = 0;
  *(v0 + 72) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v4 = *(v0 + 104);

    sub_1DB09DE44();

    v8[0] = 0xD000000000000008;
    v8[1] = 0x80000001DB0C68A0;
    swift_getErrorValue();
    v5 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v5);

    CoreODILogger.error(_:category:)(0xD000000000000028, 0x80000001DB0C68A0, v8);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DAFC15D8(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(v43) = a7;
  v39 = a6;
  v40 = a4;
  v41 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *a2;
  v19 = *(a8 + 152);
  v20 = *(a8 + 160);
  v21 = *(v15 + 16);
  v22 = a3 & 1;
  v37 = v43 & 1;
  v38 = v18;
  v43 = *(a8 + 120);
  v21(v17, a1, v14);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v23, v17, v14);
  v45 = &type metadata for CoreODILogger;
  v46 = &protocol witness table for CoreODILogger;
  *&v44 = v19;
  *(&v44 + 1) = v20;
  type metadata accessor for ODNRequestTask();
  v25 = swift_allocObject();
  v26 = v39;

  swift_unknownObjectRetain();

  swift_defaultActor_initialize();
  *(v25 + 208) = 0;
  v27 = v37;
  *(v25 + 112) = v38;
  *(v25 + 113) = v22;
  v29 = v40;
  v28 = v41;
  *(v25 + 120) = v40;
  *(v25 + 128) = v28;
  *(v25 + 136) = v26;
  *(v25 + 144) = v27;
  *(v25 + 152) = v43;
  *(v25 + 216) = sub_1DAFC2760;
  *(v25 + 224) = v24;
  sub_1DAF96EAC(&v44, v25 + 168);
  swift_beginAccess();
  sub_1DAF4ED88(v29, v28);

  MEMORY[0x1E127FFD0](v30);
  if (*((*(a8 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DB09D954();
  }

  sub_1DB09D974();
  sub_1DAFC4960(sub_1DAFC0598, 0);
  swift_endAccess();
  v31 = sub_1DB09DA24();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v33 = sub_1DAFC27DC();
  v34 = swift_allocObject();
  v34[2] = a8;
  v34[3] = v33;
  v34[4] = a8;
  swift_retain_n();
  sub_1DAF4F0EC(0, 0, v32, &unk_1DB0ABEA8, v34);
}

uint64_t sub_1DAFC19B4(uint64_t a1)
{
  v2 = type metadata accessor for ODNAssessmentResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAFC28E4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ODNAssessmentResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFC1A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF62CC4;

  return sub_1DAFC0CA0();
}

uint64_t sub_1DAFC1AF8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1584) = v5;
  *(v6 + 1576) = a5;
  *(v6 + 1568) = a4;
  *(v6 + 1560) = a3;
  *(v6 + 1552) = a1;
  *(v6 + 1592) = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v6 + 1600) = swift_task_alloc();
  v8 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  *(v6 + 1608) = v8;
  *(v6 + 1616) = *(v8 - 8);
  *(v6 + 1624) = swift_task_alloc();
  *(v6 + 602) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1C04, v5, 0);
}

uint64_t sub_1DAFC1C04()
{
  v12 = v0;
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v1[20];
  v0[189] = v1[19];
  v0[190] = v4;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v0[191] = 0xD000000000000027;
  v0[192] = 0x80000001DB0C6990;
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v3, v5);

  v6 = v0[191];
  v7 = v0[192];
  LOBYTE(v11[0]) = 12;
  CoreODILogger.debug(_:category:)(v6, v7, v11);

  v0[204] = v1[15];
  swift_getObjectType();
  v9 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1D58, v9, v8);
}

uint64_t sub_1DAFC1D58()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1584);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1DE0, v2, 0);
}

uint64_t sub_1DAFC1DE0()
{
  v49 = *(v0 + 602);
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1568);
  v46 = *(v0 + 1576);
  v47 = *(v0 + 1560);
  v4 = *(v0 + 1552);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v51 = *(v0 + 32);
  v54 = *(v0 + 40);
  sub_1DAF8BFD0(v0 + 48, v0 + 1408);
  v7 = *(v0 + 184);
  v8 = *(v0 + 216);
  *(v0 + 976) = *(v0 + 200);
  *(v0 + 992) = v8;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  *(v0 + 912) = *(v0 + 136);
  *(v0 + 928) = v10;
  *(v0 + 944) = *(v0 + 168);
  *(v0 + 960) = v7;
  *(v0 + 880) = *(v0 + 104);
  *(v0 + 896) = v9;
  v11 = *(v0 + 272);
  *(v0 + 1216) = *(v0 + 256);
  *(v0 + 1232) = v11;
  v12 = *(v0 + 304);
  *(v0 + 1248) = *(v0 + 288);
  *(v0 + 1264) = v12;
  v13 = *(v0 + 448);
  *(v0 + 840) = *(v0 + 432);
  *(v0 + 856) = v13;
  v14 = *(v0 + 384);
  *(v0 + 776) = *(v0 + 368);
  *(v0 + 792) = v14;
  v15 = *(v0 + 416);
  *(v0 + 808) = *(v0 + 400);
  *(v0 + 824) = v15;
  v16 = *(v0 + 352);
  *(v0 + 744) = *(v0 + 336);
  *(v0 + 760) = v16;
  v17 = *(v0 + 504);
  *(v0 + 1152) = *(v0 + 488);
  *(v0 + 1168) = v17;
  v18 = *(v0 + 536);
  *(v0 + 1184) = *(v0 + 520);
  *(v0 + 1008) = *(v0 + 232);
  *(v0 + 872) = *(v0 + 464);
  *(v0 + 1200) = v18;
  v19 = v2[6];
  sub_1DAFC28E4(v4, &v1[v19], type metadata accessor for AssessmentTiming);
  v20 = type metadata accessor for AssessmentTiming(0);
  (*(*(v20 - 8) + 56))(&v1[v19], 0, 1, v20);
  v52 = v6;
  v53 = v5;
  *v1 = v6;
  *(v1 + 1) = v5;
  *(v1 + 2) = v3;
  *(v1 + 3) = v46;
  v1[v2[7]] = v49;
  *&v1[v2[8]] = v47;
  v21 = *(v0 + 992);
  *(v0 + 704) = *(v0 + 976);
  *(v0 + 720) = v21;
  *(v0 + 736) = *(v0 + 1008);
  v22 = *(v0 + 928);
  *(v0 + 640) = *(v0 + 912);
  *(v0 + 656) = v22;
  v23 = *(v0 + 960);
  *(v0 + 672) = *(v0 + 944);
  *(v0 + 688) = v23;
  v24 = *(v0 + 896);
  *(v0 + 608) = *(v0 + 880);
  *(v0 + 624) = v24;
  v25 = 0;
  v26 = 0;
  if (sub_1DAF8B9A8(v0 + 608) != 1)
  {
    v25 = *(v0 + 728);
    v26 = *(v0 + 736);
  }

  v27 = *(v0 + 856);
  *(v0 + 1112) = *(v0 + 840);
  *(v0 + 1128) = v27;
  *(v0 + 1144) = *(v0 + 872);
  v28 = *(v0 + 792);
  *(v0 + 1048) = *(v0 + 776);
  *(v0 + 1064) = v28;
  v29 = *(v0 + 824);
  *(v0 + 1080) = *(v0 + 808);
  *(v0 + 1096) = v29;
  v30 = *(v0 + 760);
  *(v0 + 1016) = *(v0 + 744);
  *(v0 + 1032) = v30;
  v48 = v26;
  if (sub_1DAF8B9A8(v0 + 1016) == 1)
  {
    v45 = 0;
    v31 = 0;
  }

  else
  {
    v45 = *(v0 + 1136);
    v31 = *(v0 + 1144);
  }

  v50 = *(v0 + 1632);
  v32 = *(v0 + 1624);
  v33 = *(v0 + 1616);
  v34 = *(v0 + 1608);
  v35 = *(v0 + 1600);
  v36 = *(v0 + 1592);
  sub_1DAF3523C(v0 + 1424, v35 + 376);
  v37 = *(v36 + 88);
  sub_1DAFC28E4(v32, v35 + v37, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  (*(v33 + 56))(v35 + v37, 0, 1, v34);
  *v35 = v51;
  *(v35 + 8) = v54;
  *(v35 + 16) = v52;
  *(v35 + 24) = v53;
  *(v35 + 32) = v25;
  *(v35 + 40) = v48;
  v38 = *(v0 + 1216);
  v39 = *(v0 + 1232);
  v40 = *(v0 + 1264);
  *(v35 + 80) = *(v0 + 1248);
  *(v35 + 96) = v40;
  *(v35 + 48) = v38;
  *(v35 + 64) = v39;
  *(v35 + 112) = v45;
  *(v35 + 120) = v31;
  v41 = *(v0 + 1152);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1200);
  *(v35 + 160) = *(v0 + 1184);
  *(v35 + 176) = v43;
  *(v35 + 128) = v41;
  *(v35 + 144) = v42;
  *(v35 + 192) = 0u;
  *(v35 + 208) = 0u;
  *(v35 + 224) = 0u;
  *(v35 + 240) = 0u;
  *(v35 + 256) = 0u;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0;
  *(v35 + 312) = 1;
  *(v35 + 320) = 2;
  *(v35 + 328) = 0;
  *(v35 + 336) = 0;
  *(v35 + 344) = 1;
  *(v35 + 352) = 0;
  *(v35 + 360) = 0;
  *(v35 + 368) = 1;
  *(v35 + 416) = 0;
  *(v35 + 424) = 1;
  swift_bridgeObjectRetain_n();

  sub_1DAFC294C(v0 + 1216, v0 + 1280);
  sub_1DAFC294C(v0 + 1152, v0 + 1344);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC21A8, v50, 0);
}

uint64_t sub_1DAFC21A8()
{
  __swift_project_boxed_opaque_existential_1((v0[204] + 208), *(v0[204] + 232));
  v1 = swift_task_alloc();
  v0[205] = v1;
  *v1 = v0;
  v1[1] = sub_1DAFC2254;
  v2 = v0[200];

  return sub_1DAFF9558(v2, 0);
}

uint64_t sub_1DAFC2254()
{
  v2 = *v1;
  *(*v1 + 1648) = v0;

  v3 = *(v2 + 1584);
  if (v0)
  {
    v4 = sub_1DAFC2438;
  }

  else
  {
    v4 = sub_1DAFC2380;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFC2380()
{
  v1 = v0[203];
  sub_1DAFC29BC(v0[200], type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  sub_1DAFC29BC(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  sub_1DAF8C02C((v0 + 176));
  sub_1DAF8B934((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAFC2438()
{
  v8 = v0;
  v1 = v0[206];
  v2 = v0[203];
  v3 = v0[200];

  sub_1DB09DE44();

  v7[0] = 0xD00000000000000CLL;
  v7[1] = 0x80000001DB0C69C0;
  swift_getErrorValue();
  v4 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v4);

  CoreODILogger.error(_:category:)(0xD00000000000001ALL, 0x80000001DB0C69C0, v7);

  sub_1DAFC29BC(v3, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  sub_1DAFC29BC(v2, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  sub_1DAF8C02C((v0 + 176));
  sub_1DAF8B934((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAFC25B8()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFC2660()
{
  result = qword_1ECC0EC10;
  if (!qword_1ECC0EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC10);
  }

  return result;
}

unint64_t sub_1DAFC26B8()
{
  result = qword_1ECC0EC18;
  if (!qword_1ECC0EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC18);
  }

  return result;
}

unint64_t sub_1DAFC270C()
{
  result = qword_1EE3011E0;
  if (!qword_1EE3011E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011E0);
  }

  return result;
}

uint64_t sub_1DAFC2760(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);

  return sub_1DAFC19B4(a1);
}

unint64_t sub_1DAFC27DC()
{
  result = qword_1EE3011E8;
  if (!qword_1EE3011E8)
  {
    type metadata accessor for ODNAtorQueueManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011E8);
  }

  return result;
}

uint64_t sub_1DAFC2830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF62CC4;

  return sub_1DAFC1A68();
}

uint64_t sub_1DAFC28E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAFC294C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A8, &unk_1DB0ABEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFC29BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAFC2A30()
{
  result = qword_1ECC0EC28;
  if (!qword_1ECC0EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC28);
  }

  return result;
}

unint64_t sub_1DAFC2A84(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (*&a1 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 > 0x44B82FA08)
  {
    return -1;
  }

  v1 = a1 * 1000000000.0;
  if (*&v1 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v1 > -1.0)
  {
    if (v1 < 1.84467441e19)
    {
      return v1;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DAFC2B3C(void *a1, unsigned int a2)
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1DB09E274();
    v7 = sub_1DB046540(v8, v9);
    if (v7 == 5)
    {
      v5 = a2;
    }

    else
    {
      v5 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v5;
}

uint64_t sub_1DAFC2C2C@<X0>(void *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1DB09E274();
    v7 = sub_1DB09E004();

    if (v7 >= 4)
    {
      v8 = a2;
    }

    else
    {
      v8 = v7;
    }

    *a3 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DAFC2D28@<X0>(void *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1DB09E274();
    AssessmentConfig.Sources.init(rawValue:)(v9);
    v7 = v11;
    if (v11 == 7)
    {
      v7 = a2;
    }

    *a3 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t DsidType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DAF3523C(a1, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1DB09E274();
    v6 = sub_1DB09E004();

    if (v6 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DAFC2F34()
{
  v0 = swift_allocObject();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC58, &unk_1DB0AC0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB0ABF90;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB0ABFA0;
  *(v3 + 32) = 0xE400000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1F56CA500;
  *(v3 + 40) = v4 | 0x1000000000000000;
  *(v3 + 48) = 0;
  *(v2 + 32) = v3 | 0x7000000000000000;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB0ABFB0;
  *(v5 + 32) = 0xE400000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1F56CA540;
  *(v5 + 40) = v6 | 0x1000000000000000;
  *(v5 + 48) = 0;
  *(v2 + 48) = v5 | 0x7000000000000000;
  *(v2 + 56) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB0ABFC0;
  *(v7 + 32) = 0xE400000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1F56CA580;
  *(v7 + 40) = v8 | 0x1000000000000000;
  *(v7 + 48) = 0;
  *(v2 + 64) = v7 | 0x7000000000000000;
  *(v2 + 72) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB0ABFD0;
  *(v9 + 32) = 0xE400000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1F56CA5C0;
  *(v9 + 40) = v10 | 0x1000000000000000;
  *(v9 + 48) = 0;
  *(v2 + 80) = v9 | 0x7000000000000000;
  *(v2 + 88) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB0ABFE0;
  *(v11 + 32) = 0xE400000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F56CA600;
  *(v11 + 40) = v12 | 0x1000000000000000;
  *(v11 + 48) = 0;
  *(v2 + 96) = v11 | 0x7000000000000000;
  *(v2 + 104) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB0ABFF0;
  *(v13 + 32) = 0xE400000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1F56CA640;
  *(v13 + 40) = v14 | 0x1000000000000000;
  *(v13 + 48) = 0;
  *(v2 + 112) = v13 | 0x7000000000000000;
  *(v2 + 120) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB0AC000;
  *(v15 + 32) = 0xE400000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1F56CA680;
  *(v15 + 40) = v16 | 0x1000000000000000;
  *(v15 + 48) = 0;
  *(v2 + 128) = v15 | 0x7000000000000000;
  *(v2 + 136) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB0AC010;
  *(v17 + 32) = 0xE400000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1F56CA6C0;
  *(v17 + 40) = v18 | 0x1000000000000000;
  *(v17 + 48) = 0;
  *(v2 + 144) = v17 | 0x7000000000000000;
  *(v2 + 152) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DB0AC020;
  *(v19 + 32) = 0xE400000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1F56CA700;
  *(v19 + 40) = v20 | 0x1000000000000000;
  *(v19 + 48) = 0;
  *(v2 + 160) = v19 | 0x7000000000000000;
  *(v2 + 168) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB0AC030;
  *(v21 + 32) = 0xE400000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1F56CA740;
  *(v21 + 40) = v22 | 0x1000000000000000;
  *(v21 + 48) = 0;
  *(v2 + 176) = v21 | 0x7000000000000000;
  *(v2 + 184) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DB0AC040;
  *(v23 + 32) = 0xE400000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1F56CA780;
  *(v23 + 40) = v24 | 0x1000000000000000;
  *(v23 + 48) = 0;
  *(v2 + 192) = v23 | 0x7000000000000000;
  *(v2 + 200) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DB0AC050;
  *(v25 + 32) = 0xE400000000000000;
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1F56CA7C0;
  *(v25 + 40) = v26 | 0x1000000000000000;
  *(v25 + 48) = 0;
  *(v2 + 208) = v25 | 0x7000000000000000;
  *(v2 + 216) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DB0AC060;
  *(v27 + 32) = 0xE400000000000000;
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1F56CA800;
  *(v27 + 40) = v28 | 0x1000000000000000;
  *(v27 + 48) = 0;
  *(v2 + 224) = v27 | 0x7000000000000000;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0x8000000000000030;
  *(v2 + 248) = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1 | 0x3000000000000000;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1DAFC3478()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC58, &unk_1DB0AC0B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB0A0500;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB0AC070;
  *(v2 + 32) = 0xE90000000000006ELL;
  *(v2 + 40) = 0x8000000000000008;
  *(v2 + 48) = 0;
  *(v1 + 32) = v2 | 0x6000000000000000;
  *(v1 + 40) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB0AC080;
  *(v3 + 32) = 0x80000001DB0C69E0;
  *(v3 + 40) = 0x8000000000000000;
  *(v3 + 48) = 0;
  *(v1 + 48) = v3 | 0x6000000000000000;
  *(v1 + 56) = 1;
  *(v0 + 16) = v1;
  return v0 | 0x1000000000000000;
}

uint64_t sub_1DAFC3580(void *a1)
{
  v3 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = a1;
  v5 = SecCertificateCopyExtensionValue();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_6;
    }

    sub_1DB09D024();
  }

LABEL_6:
  sub_1DAFC4300();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  return v1;
}

uint64_t sub_1DAFC3D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(a3 + 16);
  if (v7)
  {
    for (i = a3 + 32; ; i += 56)
    {
      sub_1DAFC41EC(i, &v13);
      v9 = *(&v13 + 1) == a1 && v14 == a2;
      if (v9 || (sub_1DB09E254() & 1) != 0)
      {
        break;
      }

      sub_1DAFC4248(&v13);
      if (!--v7)
      {
        return 0;
      }
    }

    v17 = v13;
    v18[0] = v14;
    v18[1] = v15;
    v19 = v16;
    sub_1DAF409DC(v18 + 8, v20);
    sub_1DAFC4248(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
    if (swift_dynamicCast())
    {
      v10 = *(v17 + 16);
      if (v10)
      {
        sub_1DAF409DC(v17 + 32 * v10, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
        if (swift_dynamicCast())
        {

          sub_1DB09D724();
          sub_1DAFC429C();
          v11 = sub_1DB09D6F4();
          swift_bridgeObjectRelease_n();
          return v11;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1DAFC3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = a3 + 32; ; i += 56)
  {
    sub_1DAFC41EC(i, &v10);
    v7 = *(&v10 + 1) == a1 && v11 == a2;
    if (v7 || (sub_1DB09E254() & 1) != 0)
    {
      break;
    }

    sub_1DAFC4248(&v10);
    if (!--v3)
    {
      return 0;
    }
  }

  v14 = v10;
  v15[0] = v11;
  v15[1] = v12;
  v16 = v13;
  sub_1DAF409DC(v15 + 8, v17);
  sub_1DAFC4248(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v14 + 16);
  if (!v8)
  {

    return 0;
  }

  sub_1DAF409DC(v14 + 32 * v8, &v14);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void sub_1DAFC40A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = sub_1DAFC3580(v4);
  if (v2)
  {
  }

  else
  {
    v8 = v5;
    v9 = v7;
    v26 = v6;
    v10 = sub_1DAFC3D58(1684628851, 0xE400000000000000, v5);
    v24 = v11;
    v25 = v10;
    v23 = sub_1DAFC3F50(1145652037, 0xE400000000000000, v8);
    v27 = v12 & 1;
    v13 = sub_1DAFC3D58(1835954803, 0xE400000000000000, v8);
    v21 = v14;
    v22 = v13;
    v15 = sub_1DAFC3D58(1684628597, 0xE400000000000000, v8);
    v17 = v16;
    v18 = sub_1DAFC3D58(1768254825, 0xE400000000000000, v8);
    v20 = v19;

    *a2 = v25;
    *(a2 + 8) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v27;
    *(a2 + 32) = v22;
    *(a2 + 40) = v21;
    *(a2 + 48) = v15;
    *(a2 + 56) = v17;
    *(a2 + 64) = v18;
    *(a2 + 72) = v20;
    *(a2 + 80) = v26;
    *(a2 + 88) = v9;
  }
}

unint64_t sub_1DAFC429C()
{
  result = qword_1ECC0EC38;
  if (!qword_1ECC0EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC38);
  }

  return result;
}

unint64_t sub_1DAFC4300()
{
  result = qword_1ECC0EC40;
  if (!qword_1ECC0EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC40);
  }

  return result;
}

unint64_t sub_1DAFC4354(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

uint64_t sub_1DAFC4428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1DAFC4484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAFC4504()
{
  result = qword_1ECC0EC60;
  if (!qword_1ECC0EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC60);
  }

  return result;
}

uint64_t sub_1DAFC4574()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 16) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC461C, v1, 0);
}

uint64_t sub_1DAFC461C()
{
  if (*(v0[2] + 168))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_1DAFC46E8;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFC46E8()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 16);

  return v2(v3);
}

uint64_t sub_1DAFC47F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DAFC48C8(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1DAFCD314(v6);
  }

  sub_1DAFCB5D4(a1, a2);
  return sub_1DB09DEF4();
}

uint64_t sub_1DAFC4960(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_1DAFCCFCC(v5);
  }

  result = sub_1DAFCB6F8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1DAFC49F0(uint64_t a1)
{
  type metadata accessor for ODIDeviceInfo();
  swift_allocObject();
  result = sub_1DAFC5668();
  qword_1EE3039B0 = result;
  return result;
}

uint64_t sub_1DAFC4A2C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = *(v1 + 184);
    v4 = *(v1 + 192);
  }

  else
  {
    *(v1 + 184) = xmmword_1DB0AC200;

    v4 = 0xE100000000000000;
    v3 = 45;
  }

  *a1 = v3;
  a1[1] = v4;
}

id sub_1DAFC4AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODIDeviceInfo.DeviceInfoHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAFC4B08()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_1DB09D1D4();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC4C5C, v0, 0);
}

uint64_t sub_1DAFC4C5C()
{
  v1 = v0[20];
  v2 = *(v1 + 224);
  v0[27] = v2;
  if (v2)
  {

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = *(v1 + 128);
    v0[18] = 0;
    v6 = [v5 getUserDefaultVoiceSubscriptionContext_];
    v7 = v0[18];
    if (v6)
    {
      v8 = v6;
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[21];
      v12 = v7;
      v13 = [v8 uuid];

      sub_1DB09D194();
      v0[2] = v0;
      v0[7] = v0 + 19;
      v0[3] = sub_1DAFC4FD8;
      swift_continuation_init();
      v0[17] = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      sub_1DAF4062C(0, &qword_1EE3009A0, 0x1E6965098);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1DAFC547C;
      v0[13] = &block_descriptor_68;
      [v5 getSubscriptionInfo_];
      (*(v10 + 8))(boxed_opaque_existential_0, v11);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    else
    {
      v15 = v7;
      sub_1DB09CE74();

      swift_willThrow();

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_1DAFC4FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1DAFC53A8;
  }

  else
  {
    v4 = sub_1DAFC5124;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFC5124()
{
  v21 = v0;
  v20 = *MEMORY[0x1E69E9840];
  v1 = v0[19];
  v2 = [v1 subscriptionsInUse];

  v3 = v0[26];
  if (v2)
  {
    sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
    v4 = sub_1DB09D934();

    sub_1DAFC552C(v4);

    v5 = swift_task_alloc();
    *(v5 + 16) = v3;

    v17 = sub_1DAFCD044(v6);
    sub_1DAFC48C8(sub_1DAFCD750, v5);
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    v12 = v0[20];

    v13 = v17;

    *(v12 + 224) = v17;

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v7 = v0[24];
    v8 = v0[25];
    sub_1DAFC4A2C(v16);
    v17 = v16[0];
    v18 = v16[1];
    v19[0] = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v19);

    (*(v8 + 8))(v3, v7);
    v13 = 0;
  }

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1DAFC53A8(uint64_t a1)
{
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[24];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

void sub_1DAFC547C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
    sub_1DB09D9A4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
    sub_1DB09D9B4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAFC552C(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DB09DD44())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E1280530](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 isSimHidden])
      {
      }

      else
      {
        sub_1DB09DEE4();
        sub_1DB09DF14();
        sub_1DB09DF24();
        sub_1DB09DEF4();
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAFC5668()
{
  v1 = v0;
  v2 = sub_1DB09DBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB09D4F4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DB09DBA4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_defaultActor_initialize();
  sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09DB94();
  sub_1DB09D4E4();
  v8 = *MEMORY[0x1E69E8090];
  v9 = *(v3 + 104);
  v9(v5, v8, v2);
  *(v0 + 112) = sub_1DB09DBE4();
  sub_1DB09DB94();
  sub_1DB09D4E4();
  v9(v5, v8, v2);
  v10 = sub_1DB09DBE4();
  *(v1 + 120) = v10;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 128) = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  return v1;
}

BOOL sub_1DAFC58D8(void **a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED20, &qword_1DB0AC380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v28 - v6;
  v7 = sub_1DB09D1D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = [v14 uuid];
  sub_1DB09D194();

  v17 = [v15 uuid];
  sub_1DB09D194();

  v18 = sub_1DB09D184();
  if ((v18 ^ sub_1DB09D184()))
  {
    if (v18)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v20 = [v14 slotID];
    v21 = (v20 == 1) ^ ([v15 slotID] != 1);
    if (v20 == 1)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }

    if (v21)
    {
      v32 = sub_1DB09D174();
      v33 = v22;
      v30 = sub_1DB09D174();
      v31 = v23;
      v24 = sub_1DB09D2A4();
      v25 = v29;
      (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
      sub_1DAF9C5EC();
      v19 = sub_1DB09DCC4();
      sub_1DAF40AEC(v25, &qword_1ECC0ED20, &qword_1DB0AC380);
    }
  }

  v26 = *(v8 + 8);
  v26(v11, v7);
  v26(v13, v7);
  return v19 == -1;
}

char *sub_1DAFC5BDC(char a1)
{
  v2 = v1[25];
  if (!v2 || (v3 = *(v2 + 16)) == 0)
  {
    sub_1DAFC4A2C(&v38);
    v36 = v38;
    v37 = v39;
    LOBYTE(v35[0]) = 5;
    v10 = 0x80000001DB0C6A00;
    v11 = 0xD00000000000001ALL;
    goto LABEL_9;
  }

  if (a1)
  {
    v4 = v1[27];
    if (v4)
    {
      v5 = v1[26];

      v6 = sub_1DAF72DB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_1DAF72DB4((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = v5;
      *(v9 + 5) = v4;
      return v6;
    }

    sub_1DAFC4A2C(&v38);
    v36 = v38;
    v37 = v39;
    LOBYTE(v35[0]) = 5;
    v11 = 0xD000000000000022;
    v10 = 0x80000001DB0C6A20;
LABEL_9:
    CoreODILogger.info(_:category:)(v11, v10, v35);

    return 0;
  }

  v12 = sub_1DAF9C5EC();
  v34 = 0;
  v32 = v2;
  v13 = (v2 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *v13;
    v38 = *(v13 - 1);
    v15 = v38;
    v39 = v14;
    v36 = 48;
    v37 = 0xE100000000000000;
    v35[0] = 0;
    v35[1] = 0xE000000000000000;

    v30 = v12;
    v31 = v12;
    v29[1] = v12;
    v29[0] = MEMORY[0x1E69E6158];
    v16 = sub_1DB09DCA4();
    v18 = v17;
    if (!v15 && v14 == 0xE000000000000000 || (v19 = v16, v20 = sub_1DB09E254(), (v20 & 1) != 0))
    {
    }

    else
    {
      v38 = v15;
      v39 = v14;
      MEMORY[0x1EEE9AC00](v20);
      v30 = &v38;
      v33 = v6;
      v21 = v6;
      v22 = v34;
      v23 = sub_1DAFC47F4(sub_1DAFCD328, v29, v21);
      v34 = v22;

      if (v23)
      {
        goto LABEL_25;
      }

      v24 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v24 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
LABEL_25:

        v6 = v33;
      }

      else
      {
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1DAF72DB4(0, *(v6 + 2) + 1, 1, v6);
        }

        v26 = *(v6 + 2);
        v25 = *(v6 + 3);
        if (v26 >= v25 >> 1)
        {
          v6 = sub_1DAF72DB4((v25 > 1), v26 + 1, 1, v6);
        }

        *(v6 + 2) = v26 + 1;
        v27 = &v6[16 * v26];
        *(v27 + 4) = v15;
        *(v27 + 5) = v14;
      }
    }

    v13 += 2;
    --v3;
  }

  while (v3);

  return v6;
}

uint64_t sub_1DAFC5F3C()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED50, &qword_1DB0AC3A8);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC6034, v0, 0);
}

uint64_t sub_1DAFC6034()
{
  v19 = v0;
  v18 = *MEMORY[0x1E69E9840];
  v1 = v0[27];
  sub_1DAFC4A2C(&v14);
  v16 = v14;
  v17 = v15;
  LOBYTE(v13[0]) = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000013, 0x80000001DB0C6EA0, v13);

  v2 = *(v1 + 128);
  v0[31] = v2;
  [v2 setDelegate_];
  v0[23] = 0;
  v3 = [v2 getUserDefaultVoiceSubscriptionContext_];
  v0[32] = v3;
  v4 = v0[23];
  if (v3)
  {
    v5 = v4;
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = sub_1DAFC62D4;

    return sub_1DAFC4B08();
  }

  else
  {
    v8 = v4;
    v9 = sub_1DB09CE74();

    swift_willThrow();
    sub_1DAFC4A2C(v13);
    v14 = v13[0];
    v15 = v13[1];
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1DB09DE44();

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001DB0C6EC0;
    swift_getErrorValue();
    v10 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v10);

    v11 = v16;
    LOBYTE(v16) = 5;
    CoreODILogger.debug(_:category:)(v11, v17, &v16);

    *(v0[27] + 168) = 1;

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DAFC62D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 216);
  if (v1)
  {
    v6 = sub_1DAFC6D24;
  }

  else
  {
    v6 = sub_1DAFC6434;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFC6434()
{
  v43 = v0;
  v42 = *MEMORY[0x1E69E9840];
  v1 = v0[34];
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DB09DD44())
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_1DAF5F4FC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v3 = 0;
      v4 = v0[34];
      v5 = v40;
      v34 = v4 & 0xFFFFFFFFFFFFFF8;
      v35 = v4 & 0xC000000000000001;
      while (1)
      {
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v35)
        {
          v7 = MEMORY[0x1E1280530](v3, v1);
        }

        else
        {
          if (v3 >= *(v34 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v9 = v0[31];
        v0[25] = 0;
        v10 = [v9 getPhoneNumber:v8 error:v0 + 25];
        v11 = v0[25];
        if (!v10)
        {
          v22 = v0[32];
          v23 = v11;

          v24 = sub_1DB09CE74();

          swift_willThrow();

          sub_1DAFC4A2C(v37);
          v38 = v37[0];
          v39 = v37[1];
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_1DB09DE44();

          v40 = 0xD00000000000001FLL;
          v41 = 0x80000001DB0C6EC0;
          swift_getErrorValue();
          v25 = sub_1DB09E324();
          MEMORY[0x1E127FE90](v25);

          v26 = v40;
          LOBYTE(v40) = 5;
          CoreODILogger.debug(_:category:)(v26, v41, &v40);

          goto LABEL_20;
        }

        v12 = v10;
        v13 = v11;
        v14 = [v12 number];

        v15 = sub_1DB09D6C4();
        v17 = v16;

        v40 = v5;
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1DAF5F4FC((v18 > 1), v19 + 1, 1);
          v5 = v40;
        }

        *(v5 + 16) = v19 + 1;
        v20 = v5 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        ++v3;
        if (v6 == i)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v29 = v0[31];
    v36 = v0[32];
    v31 = v0[29];
    v30 = v0[30];
    v32 = v0[28];
    *(v0[27] + 200) = v5;

    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1DAFC6994;
    swift_continuation_init();
    v0[17] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED58, &qword_1DB0AC3B0);
    sub_1DB09D994();
    (*(v31 + 32))(boxed_opaque_existential_0, v30, v32);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DAFC6E80;
    v0[13] = &block_descriptor_78;
    [v29 getPhoneNumberWithCompletion:v36 completion:v0 + 10];
    (*(v31 + 8))(boxed_opaque_existential_0, v32);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v21 = v0[32];
    sub_1DAFC4A2C(&v38);
    v40 = v38;
    v41 = v39;
    LOBYTE(v37[0]) = 14;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v37);

LABEL_20:

    *(v0[27] + 168) = 1;

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1DAFC6994()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC6AB4, v1, 0);
}

uint64_t sub_1DAFC6AB4()
{
  v25 = v0;
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = [v3 number];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  v1[26] = v5;
  v1[27] = v7;

  v8 = v1[25];
  if (!v8 || !v8[2])
  {

    goto LABEL_10;
  }

  if (v5 == v8[4] && v7 == v8[5])
  {
    goto LABEL_11;
  }

  v10 = sub_1DB09E254();

  if ((v10 & 1) == 0)
  {
LABEL_10:
    sub_1DAFC4A2C(&v20);
    v22 = v20;
    v23 = v21;
    LOBYTE(v19[0]) = 5;
    CoreODILogger.info(_:category:)(0xD000000000000033, 0x80000001DB0C6F30, v19);
LABEL_11:
  }

  v11 = *(v0 + 216);
  sub_1DAFC4A2C(v19);
  v20 = v19[0];
  v21 = v19[1];
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1DB09DE44();

  v22 = 0xD000000000000021;
  v23 = 0x80000001DB0C6F70;
  v12 = *(v11 + 200);
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = -1;
  }

  v14 = *(v0 + 256);
  *(v0 + 208) = v13;
  v15 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v15);

  v16 = v22;
  LOBYTE(v22) = 5;
  CoreODILogger.debug(_:category:)(v16, v23, &v22);

  *(*(v0 + 216) + 168) = 1;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DAFC6D24()
{
  v10 = v0;
  v9 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 280);
  sub_1DAFC4A2C(v6);
  v6[2] = v6[0];
  v6[3] = v6[1];
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1DB09DE44();

  v7 = 0xD00000000000001FLL;
  v8 = 0x80000001DB0C6EC0;
  swift_getErrorValue();
  v2 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v2);

  v3 = v7;
  LOBYTE(v7) = 5;
  CoreODILogger.debug(_:category:)(v3, v8, &v7);

  *(*(v0 + 216) + 168) = 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DAFC6E80(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v5 = a2;
  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED50, &qword_1DB0AC3A8);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFC6EF4()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_1DB09D1D4();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC7048, v0, 0);
}

uint64_t sub_1DAFC7048()
{
  v49 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v1 = *(v0[26] + 128);
  v0[23] = 0;
  v0[33] = v1;
  v2 = [v1 getUserDefaultVoiceSubscriptionContext_];
  v3 = v0[23];
  if (!v2)
  {
    v16 = v3;
    v17 = sub_1DB09CE74();

    swift_willThrow();
LABEL_7:
    sub_1DAFC4A2C(v43);
    v44 = v43[0];
    v45 = v43[1];
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1DB09DE44();

    v46 = 0xD000000000000018;
    v47 = 0x80000001DB0C6DF0;
    swift_getErrorValue();
    v22 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v22);

    v23 = v46;
    LOBYTE(v46) = 5;
    CoreODILogger.debug(_:category:)(v23, v47, &v46);

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v4 uuid];

  sub_1DB09D194();
  v0[25] = 0;
  v7 = [v1 getSubscriptionInfoWithError_];
  v8 = v0[25];
  if (!v7)
  {
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[30];
    v21 = v8;
    v17 = sub_1DB09CE74();

    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    goto LABEL_7;
  }

  v9 = v7;
  v10 = v8;
  v11 = [v9 subscriptionsInUse];

  v12 = v0[32];
  if (!v11)
  {
    v27 = v0[30];
    v28 = v0[31];
    sub_1DAFC4A2C(&v44);
    v46 = v44;
    v47 = v45;
    LOBYTE(v43[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v43);

    (*(v28 + 8))(v12, v27);
    goto LABEL_8;
  }

  sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
  v13 = sub_1DB09D934();

  sub_1DAFC552C(v13);

  v14 = swift_task_alloc();
  *(v14 + 16) = v12;

  v46 = sub_1DAFCD044(v15);
  sub_1DAFC48C8(sub_1DAFCD710, v14);

  v29 = v46;
  v0[34] = v46;

  if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
  {
    v38 = sub_1DB09DD44();
    v0[35] = v38;
    if (v38)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = *(v29 + 16);
    v0[35] = v30;
    if (v30)
    {
LABEL_16:
      v0[36] = MEMORY[0x1E69E7CC0];
      v31 = v0[34];
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E1280530](0);
      }

      else
      {
        if (!*(v31 + 16))
        {
          __break(1u);
        }

        v32 = *(v31 + 32);
      }

      v33 = v32;
      v0[37] = v32;
      v0[38] = 1;
      v42 = v0[33];
      v35 = v0[28];
      v34 = v0[29];
      v36 = v0[27];
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_1DAFC7688;
      swift_continuation_init();
      v0[17] = v36;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v35 + 32))(boxed_opaque_existential_0, v34, v36);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1DAFC7CEC;
      v0[13] = &block_descriptor_65;
      [v42 copySIMIdentity:v33 completion:v0 + 10];
      (*(v35 + 8))(boxed_opaque_existential_0, v36);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v40 = v0[31];
  v39 = v0[32];
  v41 = v0[30];

  (*(v40 + 8))(v39, v41);
  v24 = MEMORY[0x1E69E7CC0];
LABEL_9:

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_1DAFC7688()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = *(v1 + 208);

    v4 = sub_1DAFC7B5C;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 208);
    v4 = sub_1DAFC7808;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAFC7808()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 288);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DAF72DB4(0, *(v4 + 2) + 1, 1, *(v0 + 288));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1DAF72DB4((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 304);
  v8 = *(v0 + 280);

  *(v4 + 2) = v6 + 1;
  v9 = &v4[16 * v6];
  *(v9 + 4) = v1;
  *(v9 + 5) = v2;
  if (v7 == v8)
  {
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13(v4);
  }

  v15 = *(v0 + 304);
  *(v0 + 288) = v4;
  v16 = *(v0 + 272);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E1280530](v15);
  }

  else
  {
    if (v15 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    v17 = *(v16 + 8 * v15 + 32);
  }

  v18 = v17;
  *(v0 + 296) = v17;
  *(v0 + 304) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);
  v23 = *(v0 + 264);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1DAFC7688;
  swift_continuation_init();
  *(v0 + 136) = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v20 + 32))(boxed_opaque_existential_0, v19, v21);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAFC7CEC;
  *(v0 + 104) = &block_descriptor_65;
  [v23 copySIMIdentity:v18 completion:v0 + 80];
  (*(v20 + 8))(boxed_opaque_existential_0, v21);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DAFC7B5C(uint64_t a1)
{
  v15 = v1;
  v14 = *MEMORY[0x1E69E9840];
  v2 = v1[37];
  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[30];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v6 = v1[39];
  sub_1DAFC4A2C(v11);
  v11[2] = v11[0];
  v11[3] = v11[1];
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1DB09DE44();

  v12 = 0xD000000000000018;
  v13 = 0x80000001DB0C6DF0;
  swift_getErrorValue();
  v7 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v7);

  v8 = v12;
  LOBYTE(v12) = 5;
  CoreODILogger.debug(_:category:)(v8, v13, &v12);

  v9 = v1[1];

  return v9(0);
}

void sub_1DAFC7CEC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
    sub_1DB09D9A4();
  }

  else
  {
    sub_1DB09D6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAFC7D98()
{
  *(v1 + 56) = v0;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFC7E28;

  return sub_1DAFC4B08();
}

uint64_t sub_1DAFC7E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_1DAFC8284;
  }

  else
  {
    v5 = sub_1DAFC7F54;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAFC7F54()
{
  v15 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[7];
    v3 = *(v2 + 128);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    v6 = sub_1DAFCD4CC(&qword_1EE303990, v5, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v3;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1DAFC8138;
    v9 = MEMORY[0x1E69E6158];
    v17 = v4;
    v10 = MEMORY[0x1E69E6158];

    return MEMORY[0x1EEE6DD58](v0 + 6, v9, v4, v2, v6, &unk_1DB0AC350, v7, v10);
  }

  else
  {
    sub_1DAFC4A2C(v13);
    v13[2] = v13[0];
    v13[3] = v13[1];
    v14 = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, &v14);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1DAFC8138()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1DAFC839C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DAFC826C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFC8284()
{
  v9 = v0;
  v1 = *(v0 + 80);
  sub_1DAFC4A2C(v6);
  v6[2] = v6[0];
  v6[3] = v6[1];
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1DB09DE44();

  v7 = 0xD000000000000017;
  v8 = 0x80000001DB0C6D90;
  swift_getErrorValue();
  v2 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v2);

  v3 = v7;
  LOBYTE(v7) = 5;
  CoreODILogger.debug(_:category:)(v3, v8, &v7);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1DAFC839C()
{
  v9 = v0;

  v1 = *(v0 + 104);
  sub_1DAFC4A2C(v6);
  v6[2] = v6[0];
  v6[3] = v6[1];
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1DB09DE44();

  v7 = 0xD000000000000017;
  v8 = 0x80000001DB0C6D90;
  swift_getErrorValue();
  v2 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v2);

  v3 = v7;
  LOBYTE(v7) = 5;
  CoreODILogger.debug(_:category:)(v3, v8, &v7);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1DAFC84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE8, &qword_1DB0AC358);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC85DC, 0, 0);
}

uint64_t sub_1DAFC85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    v5 = sub_1DB09DD44();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09DA94();
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    v24 = sub_1DAF4AA8C(&unk_1EE300A08, &qword_1ECC0ECE8, &qword_1DB0AC358, MEMORY[0x1E69E8718]);
    v25 = swift_task_alloc();
    *(v3 + 168) = v25;
    *v25 = v3;
    v25[1] = sub_1DAFC89B0;
    a2 = *(v3 + 120);
    v5 = v3 + 72;
    a3 = v24;

    return MEMORY[0x1EEE6D8C8](v5, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v29 = **(v3 + 96);
    v30 = v5;
    v28 = v4 & 0xC000000000000001;
    v27 = *(v3 + 104) + 32;
    while (1)
    {
      if (v28)
      {
        v9 = MEMORY[0x1E1280530](v6, *(v3 + 104), a3);
      }

      else
      {
        v9 = *(v27 + 8 * v6);
      }

      v10 = v9;
      v12 = *(v3 + 144);
      v11 = *(v3 + 152);
      v13 = *(v3 + 112);
      v14 = sub_1DB09DA24();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v10;
      sub_1DAFCD688(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);
      v18 = v13;
      v19 = v10;
      v20 = *(v3 + 144);
      if (v11 == 1)
      {
        sub_1DAF40AEC(*(v3 + 144), &qword_1ECC0ECE0, &unk_1DB0A21D0);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1DB09DA14();
        (*(v15 + 8))(v20, v14);
        if (!*v17)
        {
LABEL_14:
          v21 = 0;
          v23 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_1DB09D984();
      v23 = v22;
      swift_unknownObjectRelease();
LABEL_15:

      if (v23 | v21)
      {
        v7 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v21;
        *(v3 + 40) = v23;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v3 + 152);
      *(v3 + 48) = 1;
      *(v3 + 56) = v7;
      *(v3 + 64) = v29;
      swift_task_create();

      sub_1DAF40AEC(v8, &qword_1ECC0ECE0, &unk_1DB0A21D0);
      if (v30 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v5, a2, a3);
}

uint64_t sub_1DAFC89B0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_1DAFC8CC4;
  }

  else
  {
    v3 = sub_1DAFC8AE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFC8AE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[20];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1DAF72DB4(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1DAF72DB4((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v1;
    v0[20] = v5;
    v9 = sub_1DAF4AA8C(&unk_1EE300A08, &qword_1ECC0ECE8, &qword_1DB0AC358, MEMORY[0x1E69E8718]);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1DAFC89B0;
    v11 = v0[15];

    return MEMORY[0x1EEE6D8C8](v0 + 9, v11, v9);
  }

  else
  {
    v12 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);
    *v12 = v3;

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1DAFC8CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFC8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC8E0C, 0, 0);
}

uint64_t sub_1DAFC8E0C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v1[21];
  v12 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1DAFC8FC8;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAFC7CEC;
  v1[13] = &block_descriptor_9;
  [v9 copyMobileSubscriberIdentity:v12 completion:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DAFC8FC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1DAFC9148;
  }

  else
  {
    v2 = sub_1DAFC90D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFC90D8()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAFC9148(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1DAFC91BC()
{
  v1[32] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC9288, v0, 0);
}

uint64_t sub_1DAFC9288()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 30;
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = [objc_allocWithZone(MEMORY[0x1E698DCC8]) init];
  v1[36] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAFC9470;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED40, &unk_1DB0AC398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAFC9994;
  v1[13] = &block_descriptor_73;
  [v7 appleIDHeadersWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAFC9470()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 256);
  if (v2)
  {
    v4 = sub_1DAFC991C;
  }

  else
  {
    v4 = sub_1DAFC9590;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFC9590()
{
  v1 = *(v0 + 240);

  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_1DAF35210(0x2D656C7070412D58, 0xEE004D2D444D2D49);
      if (v3)
      {
        v4 = (*(v1 + 56) + 16 * v2);
        v5 = *v4;
        v6 = v4[1];

        v7 = *(v0 + 8);

        return v7(v5, v6);
      }
    }
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v10 + 16))
  {
    v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v12)
    {
      sub_1DAF409DC(*(v10 + 56) + 32 * v11, v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 248);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
  }

  v14 = *(v9 + 2);
  v13 = *(v9 + 3);
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
  }

  *(v9 + 2) = v14 + 1;
  v15 = &v9[56 * v14];
  *(v15 + 4) = 0xD000000000000011;
  *(v15 + 5) = 0x80000001DB0C6E80;
  *(v15 + 6) = 0xD000000000000025;
  *(v15 + 7) = 0x80000001DB0C2440;
  *(v15 + 8) = 0x292844494D746567;
  *(v15 + 9) = 0xE800000000000000;
  *(v15 + 10) = 322;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 176) = v9;
  sub_1DAF40D20((v0 + 176), (v0 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 208), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v18 = sub_1DB09D6B4();
  v19 = sub_1DB09D604();
  [v17 initWithDomain:v18 code:-1110 userInfo:v19];

  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1DAFC991C(uint64_t a1)
{
  v2 = *(v1 + 288);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1DAFC9994(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
    sub_1DB09D9A4();
  }

  else
  {
    if (a2)
    {
      sub_1DB09D624();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAFC9A60()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  v20[0] = 0;
  v2 = [v1 getUserDefaultVoiceSubscriptionContext_];
  v3 = v20[0];
  if (!v2)
  {
    v14 = v20[0];
    v15 = sub_1DB09CE74();

    swift_willThrow();
    v16 = v15;
LABEL_6:

    v13 = 0;
    return v13 & 1;
  }

  v4 = v2;
  v20[0] = 0;
  v5 = v3;
  v6 = [v1 getSIMStatus:v4 error:v20];
  v7 = v20[0];
  if (!v6)
  {
    v17 = v20[0];
    v18 = sub_1DB09CE74();

    swift_willThrow();
    v16 = v18;
    goto LABEL_6;
  }

  v8 = v6;
  v9 = sub_1DB09D6C4();
  v11 = v10;
  v12 = v7;

  v13 = sub_1DAFC9BB4(v9, v11);

  return v13 & 1;
}

uint64_t sub_1DAFC9BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D6B4();
  v5 = v4;
  v6 = *MEMORY[0x1E6965470];
  if (!*MEMORY[0x1E6965470])
  {
    v10 = v4;
LABEL_5:
    v11 = *MEMORY[0x1E6965420];
    if (*MEMORY[0x1E6965420])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v12 = v11;
      v13 = sub_1DB09D414();

      if (v13)
      {
        goto LABEL_25;
      }
    }

    v14 = *MEMORY[0x1E6965490];
    if (*MEMORY[0x1E6965490])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v15 = v14;
      v16 = sub_1DB09D414();

      if (v16)
      {
        goto LABEL_25;
      }
    }

    v17 = *MEMORY[0x1E6965448];
    if (*MEMORY[0x1E6965448])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v18 = v17;
      v19 = sub_1DB09D414();

      if (v19)
      {
        goto LABEL_25;
      }
    }

    v20 = *MEMORY[0x1E6965450];
    if (*MEMORY[0x1E6965450])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v21 = v20;
      v22 = sub_1DB09D414();

      if (v22)
      {
        goto LABEL_25;
      }
    }

    v23 = *MEMORY[0x1E6965478];
    if (*MEMORY[0x1E6965478])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v24 = v23;
      v25 = sub_1DB09D414();

      if (v25)
      {
        goto LABEL_25;
      }
    }

    v26 = *MEMORY[0x1E6965468];
    if (*MEMORY[0x1E6965468])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v27 = v26;
      v28 = sub_1DB09D414();

      if (v28)
      {
        goto LABEL_25;
      }
    }

    v29 = *MEMORY[0x1E6965418];
    if (*MEMORY[0x1E6965418])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v30 = v29;
      v31 = sub_1DB09D414();

      if (v31)
      {
        goto LABEL_25;
      }
    }

    v32 = *MEMORY[0x1E6965430];
    if (*MEMORY[0x1E6965430])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v33 = v32;
      v34 = sub_1DB09D414();

      if (v34)
      {
        goto LABEL_25;
      }
    }

    v35 = *MEMORY[0x1E6965460];
    if (*MEMORY[0x1E6965460])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v36 = v35;
      v37 = sub_1DB09D414();

      if (v37)
      {
        goto LABEL_25;
      }
    }

    v38 = *MEMORY[0x1E6965458];
    if (*MEMORY[0x1E6965458])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v7 = v5;
      v39 = v38;
      v40 = sub_1DB09D414();

      if (v40)
      {
        goto LABEL_25;
      }
    }

    v42 = *MEMORY[0x1E6965440];
    if (*MEMORY[0x1E6965440] && (type metadata accessor for CFString(0), sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8), v43 = v5, v44 = v42, v45 = sub_1DB09D414(), v44, v43, (v45 & 1) != 0) || (v46 = *MEMORY[0x1E6965438]) != 0 && (type metadata accessor for CFString(0), sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8), v43 = v5, v47 = v46, v48 = sub_1DB09D414(), v47, v43, (v48 & 1) != 0) || (v49 = *MEMORY[0x1E6965488]) != 0 && (type metadata accessor for CFString(0), sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8), v43 = v5, v50 = v49, v51 = sub_1DB09D414(), v50, v43, (v51 & 1) != 0) || (v52 = *MEMORY[0x1E6965498]) != 0 && (type metadata accessor for CFString(0), sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8), v43 = v5, v53 = v52, v54 = sub_1DB09D414(), v53, v43, (v54 & 1) != 0) || (v55 = *MEMORY[0x1E6965428]) != 0 && (type metadata accessor for CFString(0), sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8), v43 = v5, v56 = v55, v57 = sub_1DB09D414(), v56, v43, (v57 & 1) != 0))
    {

      return 0;
    }

    v58 = *MEMORY[0x1E6965480];
    v59 = *MEMORY[0x1E6965480];

    if (v58)
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
      v60 = sub_1DB09D414();

      if (v60)
      {
        return 0;
      }
    }

    else
    {
    }

    sub_1DAFC4A2C(v62);
    v61[2] = v62[0];
    v61[3] = v62[1];
    sub_1DB09DE44();

    v61[0] = 0xD000000000000005;
    v61[1] = 0x80000001DB0C6D70;
    MEMORY[0x1E127FE90](a1, a2);
    CoreODILogger.info(_:category:)(0xD000000000000017, 0x80000001DB0C6D70, v61);

    return 0;
  }

  type metadata accessor for CFString(0);
  sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString, &unk_1DB0A04A8);
  v7 = v5;
  v8 = v6;
  v9 = sub_1DB09D414();

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_25:

  return 1;
}

uint64_t sub_1DAFCA5C4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFCA654, v1, 0);
}

uint64_t sub_1DAFCA654()
{
  v34 = v0;
  v33 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = v0[9];
  sub_1DAFC4A2C(&v27);
  v29 = v27;
  v30 = v28;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000045, 0x80000001DB0C6C60);
  v0[5] = [v1 slotID];
  v3 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v3);

  v4 = v31;
  LOBYTE(v31) = 5;
  CoreODILogger.info(_:category:)(v4, v32, &v31);

  v5 = *(v2 + 128);
  v0[6] = 0;
  v6 = [v5 getPhoneNumber:v1 error:v0 + 6];
  v7 = v0[6];
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = [v8 number];

    v11 = sub_1DB09D6C4();
    v13 = v12;

    v0[10] = v11;
    v0[11] = v13;
    sub_1DAFC4A2C(&v29);
    v15 = v29;
    v14 = v30;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DB09DE44();

    v31 = 0xD000000000000016;
    v32 = 0x80000001DB0C6D00;
    MEMORY[0x1E127FE90](v11, v13);
    v17 = v31;
    v16 = v32;
    if (qword_1EE3019A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DB09D4B4();
    v19 = __swift_project_value_buffer(v18, qword_1EE30A080);

    sub_1DB0163B8(v19, v15, v14, v17, v16);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_1DAFCAA50;

    return sub_1DAFC4B08();
  }

  else
  {
    v22 = v7;
    v23 = sub_1DB09CE74();

    swift_willThrow();
    sub_1DAFC4A2C(&v27);
    v29 = v27;
    v30 = v28;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0C6CB0);
    swift_getErrorValue();
    v24 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v24);

    v25 = v31;
    LOBYTE(v31) = 5;
    CoreODILogger.error(_:category:)(v25, v32, &v31);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1DAFCAA50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = sub_1DAFCAF8C;
  }

  else
  {
    v6 = sub_1DAFCABB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFCABB0()
{
  v16 = v0;
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[9];
  v3 = *(v2 + 200);
  if (v1)
  {
    v4 = v0[8];

    v5 = sub_1DAFCB0D8(v4, v1);
    v7 = v6;

    if ((v7 & 1) == 0 && (v5 & 0x8000000000000000) == 0)
    {
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1DAFCD030(v3);
        }

        if (v5 >= *(v3 + 2))
        {
          __break(1u);
        }

        v8 = v0[11];
        v9 = &v3[16 * v5];
        *(v9 + 4) = v0[10];
        *(v9 + 5) = v8;
      }

      *(v2 + 200) = v3;

      v12 = v0[1];

      return v12();
    }
  }

  else
  {
  }

  v0[15] = v3;

  sub_1DAFC4A2C(v13);
  v13[2] = v13[0];
  v13[3] = v13[1];
  v14 = 5;
  CoreODILogger.info(_:category:)(0xD000000000000040, 0x80000001DB0C6D20, &v14);

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1DAFCADC4;

  return sub_1DAFC5F3C();
}

uint64_t sub_1DAFCADC4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1DAFCAF00, v1, 0);
}

uint64_t sub_1DAFCAF00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFCAF8C()
{
  v10 = v0;
  v9 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 112);
  sub_1DAFC4A2C(v6);
  v6[2] = v6[0];
  v6[3] = v6[1];
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0C6CB0);
  swift_getErrorValue();
  v2 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v2);

  v3 = v7;
  LOBYTE(v7) = 5;
  CoreODILogger.error(_:category:)(v3, v8, &v7);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1DAFCB0D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1DB09DD44();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1280530](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
    v8 = sub_1DB09DC34();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id *ODIDeviceInfo.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIDeviceInfo.__deallocating_deinit()
{
  ODIDeviceInfo.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFCB298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFCB2BC, 0, 0);
}

uint64_t sub_1DAFCB2BC()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1DAFCB394;
    v2 = *(v0 + 32);

    return sub_1DAFCA5C4(v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1DAFCB394()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAFCB490, 0, 0);
}

void sub_1DAFCB5D4(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_1DB09E1C4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
        v9 = sub_1DB09D964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1DAFCBA0C(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1DAFCB80C(0, v5, 1, a1);
  }
}

uint64_t sub_1DAFCB6F8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1DB09E1C4();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ODNRequestTask();
        v9 = sub_1DB09D964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11[1] = v8;
      sub_1DAFCC0D8(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1DAFCB90C(0, v5, 1, a1);
  }

  return result;
}

void sub_1DAFCB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1DAFCB90C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_4:
    v16 = v8;
    v17 = a3;
    v10 = *(v7 + 8 * a3);
    v15 = v9;
    while (1)
    {
      v19 = v10;
      v18 = *v8;

      v11 = a4(&v19, &v18);

      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v12;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v17 + 1;
      v8 = v16 + 1;
      v9 = v15 - 1;
      if (v17 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1DAFCBA0C(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAF72EDC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1DAF72EDC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_1DAFCC7B4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1DAFCCF2C(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
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
  v12 = sub_1DAFCCFB8(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_1DAFCC7B4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DAFCCFB8(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1DAFCCF2C(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1DAFCC0D8(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v98 = result;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *v98;
    if (*v98)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v14 = *v9;
      v15 = *(*v9 + 8 * v13);
      v16 = v14;
      v7 = *(v14 + 8 * v11);
      v105 = v7;
      v106 = v15;

      v99 = a4(&v106, &v105);
      if (v6)
      {
LABEL_101:
      }

      v101 = a5;

      v90 = v10 - 1;
      v94 = v11;
      v96 = v10;
      v17 = v10 - 2;
      v18 = 8 * v11;
      v19 = (v16 + 8 * v11 + 16);
      while (v17 != v11)
      {
        v7 = *(v19 - 1);
        v20 = *v19;
        v105 = v7;
        v106 = v20;

        v21 = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v99 ^ v21))
        {
          v96 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v90;
LABEL_11:
      a5 = v101;
      v9 = a3;
      if (v99)
      {
        if (v96 < v94)
        {
          goto LABEL_123;
        }

        v22 = v94 <= v11;
        v11 = v94;
        if (v22)
        {
          v81 = v96;
          v82 = 8 * v96 - 8;
          v83 = v94;
          do
          {
            if (v83 != --v81)
            {
              v84 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v85 = *(v84 + v18);
              *(v84 + v18) = *(v84 + v82);
              *(v84 + v82) = v85;
            }

            ++v83;
            v82 -= 8;
            v18 += 8;
          }

          while (v83 < v81);
        }

        v13 = v96;
      }

      else
      {
        v11 = v94;
        v13 = v96;
      }
    }

    v23 = v9[1];
    if (v13 >= v23)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_119;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_132;
    }

    v24 = v11 + a6;
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v24 >= v23)
    {
      v24 = v9[1];
    }

    if (v24 < v11)
    {
      goto LABEL_122;
    }

    if (v13 == v24)
    {
LABEL_132:
      if (v13 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v71 = v9;
      v72 = a5;
      v73 = *v71;
      v74 = *v71 + 8 * v13 - 8;
      v95 = v11;
      v75 = v11 - v13;
      v91 = v24;
      do
      {
        v100 = v74;
        v103 = v13;
        v76 = *(v73 + 8 * v13);
        v97 = v75;
        do
        {
          v7 = *v74;
          v105 = *v74;
          v106 = v76;

          v77 = a4(&v106, &v105);
          if (v6)
          {
            goto LABEL_101;
          }

          v78 = v77;

          if ((v78 & 1) == 0)
          {
            break;
          }

          if (!v73)
          {
            goto LABEL_125;
          }

          v79 = *v74;
          v76 = *(v74 + 8);
          *v74 = v76;
          *(v74 + 8) = v79;
          v74 -= 8;
        }

        while (!__CFADD__(v75++, 1));
        v13 = v103 + 1;
        v74 = v100 + 8;
        v75 = v97 - 1;
      }

      while (v103 + 1 != v91);
      v13 = v91;
      a5 = v72;
      v9 = a3;
      v11 = v95;
      if (v91 < v95)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAF72EDC(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v26 = *(v12 + 2);
    v25 = *(v12 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1DAF72EDC((v25 > 1), v26 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v27;
    v28 = &v12[16 * v26];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    v102 = v13;
    if (v26)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v29 = v27 - 1;
    if (v27 >= 4)
    {
      v34 = &v12[16 * v27 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_105;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_106;
      }

      v41 = &v12[16 * v27];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_108;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_111;
      }

      if (v45 >= v37)
      {
        v63 = &v12[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_117;
        }

        if (v32 < v66)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v27 == 3)
    {
      v30 = *(v12 + 4);
      v31 = *(v12 + 5);
      v40 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      v33 = v40;
LABEL_44:
      if (v33)
      {
        goto LABEL_107;
      }

      v46 = &v12[16 * v27];
      v48 = *v46;
      v47 = *(v46 + 1);
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      v51 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v52 = &v12[16 * v29 + 32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v40 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v40)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v50, v55))
      {
        goto LABEL_114;
      }

      if (v50 + v55 >= v32)
      {
        if (v32 < v55)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v56 = &v12[16 * v27];
    v58 = *v56;
    v57 = *(v56 + 1);
    v40 = __OFSUB__(v57, v58);
    v50 = v57 - v58;
    v51 = v40;
LABEL_58:
    if (v51)
    {
      goto LABEL_109;
    }

    v59 = &v12[16 * v29];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    v40 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v40)
    {
      goto LABEL_112;
    }

    if (v62 < v50)
    {
      goto LABEL_3;
    }

LABEL_65:
    v67 = v29 - 1;
    if (v29 - 1 >= v27)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_124;
    }

    v68 = *&v12[16 * v67 + 32];
    v69 = *&v12[16 * v29 + 40];
    sub_1DAFCCB7C((*v9 + 8 * v68), (*v9 + 8 * *&v12[16 * v29 + 32]), (*v9 + 8 * v69), v7, a4);
    if (v6)
    {
    }

    if (v69 < v68)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v67 >= *(v12 + 2))
    {
      goto LABEL_104;
    }

    v70 = &v12[16 * v67];
    *(v70 + 4) = v68;
    *(v70 + 5) = v69;
    v107 = v12;
    result = sub_1DAFCCF2C(v29);
    v12 = v107;
    v27 = *(v107 + 2);
    if (v27 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
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
  result = sub_1DAFCCFB8(v12);
  v12 = result;
LABEL_92:
  v107 = v12;
  v86 = *(v12 + 2);
  if (v86 < 2)
  {
  }

  while (*v7)
  {
    v87 = *&v12[16 * v86];
    v88 = *&v12[16 * v86 + 24];
    sub_1DAFCCB7C((*v7 + 8 * v87), (*v7 + 8 * *&v12[16 * v86 + 16]), (*v7 + 8 * v88), v9, a4);
    if (v6)
    {
    }

    if (v88 < v87)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v86 - 2 >= *(v12 + 2))
    {
      goto LABEL_116;
    }

    v89 = &v12[16 * v86];
    *v89 = v87;
    *(v89 + 1) = v88;
    v107 = v12;
    result = sub_1DAFCCF2C(v86 - 1);
    v12 = v107;
    v86 = *(v107 + 2);
    if (v86 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1DAFCC7B4(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_1DAFCCB7C(char *__dst, char *a2, char *a3, unint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      v21 = a2;
      v22 = a4;
      memmove(a4, a2, 8 * v13);
      a4 = v22;
      a2 = v21;
    }

    v40 = a4;
    v42 = (a4 + 8 * v13);
    if (v11 < 8 || a2 <= v7)
    {
LABEL_53:
      v15 = v40;
      goto LABEL_54;
    }

    v23 = -a4;
    v37 = -a4;
    while (1)
    {
      v38 = a2;
      v39 = a2 - 8;
      v24 = v42;
      v25 = &v42[v23];
      v6 -= 8;
      while (1)
      {
        v26 = *(v24 - 1);
        v24 -= 8;
        v44 = v26;
        v43 = *v39;

        v27 = a5(&v44, &v43);
        if (v5)
        {

          if (v25 >= 0)
          {
            v33 = v25;
          }

          else
          {
            v33 = v25 + 7;
          }

          v34 = v40;
          v32 = v38;
          if (v38 >= v40 && v38 < v40 + (v33 & 0xFFFFFFFFFFFFFFF8) && v38 == v40)
          {
            return 1;
          }

          v31 = 8 * (v33 >> 3);
          goto LABEL_61;
        }

        v28 = v27;

        v29 = v6 + 8;
        if (v28)
        {
          break;
        }

        if (v29 != v42)
        {
          *v6 = *v24;
        }

        v25 -= 8;
        v6 -= 8;
        v42 = v24;
        if (v24 <= v40)
        {
          v42 = v24;
          a2 = v38;
          goto LABEL_53;
        }
      }

      a2 = v39;
      if (v29 != v38)
      {
        *v6 = *v39;
      }

      v15 = v40;
      v23 = v37;
      if (v42 <= v40 || v39 <= v7)
      {
LABEL_54:
        v35 = v42 - v15 + 7;
        if (v42 - v15 >= 0)
        {
          v35 = v42 - v15;
        }

        if (a2 >= v15 && a2 < &v15[v35 & 0xFFFFFFFFFFFFFFF8] && a2 == v15)
        {
          return 1;
        }

        v31 = 8 * (v35 >> 3);
        v32 = a2;
LABEL_60:
        v34 = v15;
LABEL_61:
        memmove(v32, v34, v31);
        return 1;
      }
    }
  }

  v14 = a2;
  v15 = a4;
  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v42 = &v15[8 * v10];
  if (v8 < 8 || v14 >= v6)
  {
LABEL_21:
    a2 = v7;
    goto LABEL_54;
  }

  v16 = v14;
  while (1)
  {
    v44 = *v16;
    v43 = *v15;

    v17 = a5(&v44, &v43);
    if (v5)
    {
      break;
    }

    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v19 = v15;
      v20 = v7 == v15;
      v15 += 8;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v19;
      goto LABEL_19;
    }

    v19 = v16;
    v20 = v7 == v16;
    v16 += 8;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 += 8;
    if (v15 >= v42 || v16 >= v6)
    {
      goto LABEL_21;
    }
  }

  v30 = v42 - v15 + 7;
  if (v42 - v15 >= 0)
  {
    v30 = v42 - v15;
  }

  if (v7 < v15 || v7 >= &v15[v30 & 0xFFFFFFFFFFFFFFF8] || v7 != v15)
  {
    v31 = 8 * (v30 >> 3);
    v32 = v7;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1DAFCCF2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DAFCCFB8(v3);
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

uint64_t sub_1DAFCCFCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DB09DD44();
  }

  return sub_1DB09DE74();
}

unint64_t sub_1DAFCD044(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1DB09DD44();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1DAFF7F70();
  sub_1DAFCD0D8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DAFCD0D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DB09DD44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DB09DD44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAF4AA8C(&qword_1ECC0ED18, &qword_1ECC0ED10, &qword_1DB0AC378, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED10, &qword_1DB0AC378);
            v9 = sub_1DAFCD28C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1DAFCD28C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1280530](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAFCD30C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFCD328(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254() & 1;
  }
}

uint64_t sub_1DAFCD40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFCB298(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFCD4CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAFCD514(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFC84C8(a1, a2, v7, v6);
}

uint64_t sub_1DAFCD5C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFC8D3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFCD688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String_optional __swiftcall ODIAssessmentResult.trainingSignalID()()
{
  v1 = v0;
  v2 = type metadata accessor for ODIAssessmentResult(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ODIAssessment(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAF6F9BC(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAFCD910(v4, type metadata accessor for ODIAssessmentResult);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_1DAFCD8AC(v4, v7);
    v8 = *v7;
    v9 = v7[1];

    sub_1DAFCD910(v7, type metadata accessor for ODIAssessment);
  }

  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_1DAFCD8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIAssessment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFCD910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL ODIAssessmentResult.isSuccessful.getter()
{
  v1 = type metadata accessor for ODIAssessmentResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 1;
  sub_1DAFCD910(v3, type metadata accessor for ODIAssessmentResult);
  return v4;
}

uint64_t sub_1DAFCDA24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DAFCDB2C(char a1)
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a1 & 1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCDB74(char a1)
{
  if (a1)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DAFCDBAC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = v4;
  v16[0] = v4;
  v16[1] = v13;
  type metadata accessor for ArmandDeviceDataField.CodingKeys(255, v16);
  swift_getWitnessTable();
  v5 = sub_1DB09E1A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[1];
  sub_1DB09E434();
  LOBYTE(v16[0]) = 0;
  v10 = v15;
  sub_1DB09E144();
  if (!v10)
  {
    LOBYTE(v16[0]) = *(v9 + *(a2 + 52));
    v17 = 1;
    sub_1DAFCF144();
    sub_1DB09E194();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAFCDD7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = sub_1DB09DC64();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v26 - v12;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for ArmandDeviceDataField.CodingKeys(255, &v36);
  swift_getWitnessTable();
  v31 = sub_1DB09E0E4();
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v26 - v13;
  v36 = a2;
  v37 = a3;
  v29 = a3;
  v38 = a4;
  v39 = a5;
  v15 = type metadata accessor for ArmandDeviceDataField(0, &v36);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  (*(*(a2 - 8) + 56))(&v26 - v16, 1, 1, a2);
  v18 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v32;
  sub_1DB09E414();
  if (v19)
  {
    v23 = v34;
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return (*(v23 + 8))(v17, v22);
  }

  else
  {
    v20 = v28;
    LOBYTE(v36) = 0;
    v21 = v30;
    sub_1DB09E074();
    (*(v34 + 40))(v17, v21, v35);
    v40 = 1;
    sub_1DAFCF0F0();
    sub_1DB09E0C4();
    (*(v20 + 8))(v14, v31);
    v17[*(v15 + 52)] = v36;
    v24 = v26;
    (*(v26 + 16))(v27, v17, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return (*(v24 + 8))(v17, v15);
  }
}

uint64_t sub_1DAFCE19C()
{
  sub_1DB09E3A4();
  sub_1DAFCDB04(v2, *v0);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAFCDA24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAFCE230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAF35018();
  *a1 = result;
  return result;
}

uint64_t sub_1DAFCE264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAFCE2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAFCE348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for AnyODIKnownBinding(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-v13];
  v15 = *v3;
  v16 = *(v4 + 8);
  if (v15 && *(v15 + 16) && (v17 = sub_1DAF35210(a1, a2), (v18 & 1) != 0))
  {
    sub_1DAF40458(*(v15 + 56) + *(v9 + 72) * v17, v12);
    sub_1DAF40398(v12, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    sub_1DB0559F0((inited + 48));
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((v16 + 45) >= 9u)
    {
      v20 = qword_1DB0AC5D8[v16 ^ 0x80u];
    }

    else
    {
      v20 = -(v16 + 45);
    }

    v25 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v25;
    *(inited + 104) = v20;
    ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
    return sub_1DAFCEB70(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1DB0A04E0;
    *(v21 + 32) = 0x646F43726F727265;
    *(v21 + 40) = 0xE900000000000065;
    if ((v16 + 45) >= 9u)
    {
      v22 = qword_1DB0AC5D8[v16 ^ 0x80u];
    }

    else
    {
      v22 = -(v16 + 45);
    }

    v23 = MEMORY[0x1E69E6540];
    *(v21 + 72) = MEMORY[0x1E69E6530];
    *(v21 + 80) = v23;
    *(v21 + 48) = v22;
    return ODIBindingsDict.init(dictionaryLiteral:)(v21, a3);
  }
}

uint64_t sub_1DAFCE5AC(uint64_t a1, uint64_t a2)
{
  sub_1DB09DC64();
  sub_1DB09DC74();
  v4 = *(v2 + *(a2 + 52));
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v5 = qword_1DB0AC5D8[v4 ^ 0x80u];
  }

  else
  {
    v5 = (v4 + 45);
  }

  return MEMORY[0x1E1280A80](v5);
}

uint64_t sub_1DAFCE638(uint64_t a1)
{
  sub_1DB09E3A4();
  sub_1DAFCE5AC(v3, a1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE688(uint64_t a1, uint64_t a2)
{
  sub_1DB09E3A4();
  sub_1DAFCE5AC(v4, a2);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB09DC64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v34 = v31 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = v31 - v17;
  v36[0] = a3;
  v36[1] = a4;
  v36[2] = a5;
  v36[3] = a6;
  v19 = *(type metadata accessor for ArmandDeviceDataField(0, v36) + 52);
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 > 214)
  {
    if (v20 <= 216)
    {
      if (v20 == 215)
      {
        if (v21 == 215)
        {
          goto LABEL_31;
        }
      }

      else if (v21 == 216)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    switch(v20)
    {
      case 0xD9:
        if (v21 == 217)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      case 0xDA:
        if (v21 == 218)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      case 0xDB:
        if (v21 == 219)
        {
          goto LABEL_31;
        }

LABEL_35:
        v25 = 0;
        return v25 & 1;
    }

LABEL_29:
    if ((v21 - 211) < 9 || qword_1DB0AC5D8[v20 ^ 0x80] != qword_1DB0AC5D8[v21 ^ 0x80])
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (v20 > 212)
  {
    if (v20 == 213)
    {
      if (v21 == 213)
      {
        goto LABEL_31;
      }
    }

    else if (v21 == 214)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (v20 == 211)
  {
    if (v21 == 211)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (v20 != 212)
  {
    goto LABEL_29;
  }

  if (v21 != 212)
  {
    goto LABEL_35;
  }

LABEL_31:
  v31[1] = a6;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v14 + 16);
  v23(v18, a1, v13);
  v23(&v18[v22], a2, v13);
  v24 = *(v35 + 48);
  if (v24(v18, 1, a3) == 1)
  {
    if (v24(&v18[v22], 1, a3) == 1)
    {
      v25 = 1;
    }

    else
    {
      v14 = v33;
      v13 = TupleTypeMetadata2;
      v25 = 0;
    }
  }

  else
  {
    v23(v34, v18, v13);
    if (v24(&v18[v22], 1, a3) == 1)
    {
      (*(v35 + 8))(v34, a3);
      v25 = 0;
      v14 = v33;
      v13 = TupleTypeMetadata2;
    }

    else
    {
      v26 = v35;
      v27 = v32;
      (*(v35 + 32))(v32, &v18[v22], a3);
      v28 = v34;
      v25 = sub_1DB09D6A4();
      v29 = *(v26 + 8);
      v29(v27, a3);
      v29(v28, a3);
    }
  }

  (*(v14 + 8))(v18, v13);
  return v25 & 1;
}

uint64_t sub_1DAFCEB70(uint64_t a1)
{
  v2 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAFCEBEC(uint64_t a1)
{
  result = sub_1DB09DC64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAFCEC64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x24)
  {
    v7 = 36;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v6 < 0x24)
      {
        v17 = *(a1 + v8);
        if (v17 >= 0xD3)
        {
          v18 = v17 - 210;
        }

        else
        {
          v18 = 0;
        }

        if (v18 >= 0xA)
        {
          return v18 - 9;
        }

        else
        {
          return 0;
        }
      }

      else
      {
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
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_20:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1DAFCEE0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x24)
  {
    v10 = 36;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + 1;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v11 != -1)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 < 0x24)
  {
    a1[v11] = a2 - 37;
  }

  else if (v9 >= a2)
  {
    v23 = *(v7 + 56);

    v23();
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v9 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

unint64_t sub_1DAFCF0F0()
{
  result = qword_1ECC0EDE8;
  if (!qword_1ECC0EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EDE8);
  }

  return result;
}

unint64_t sub_1DAFCF144()
{
  result = qword_1ECC0EDF0[0];
  if (!qword_1ECC0EDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC0EDF0);
  }

  return result;
}

id sub_1DAFCF218(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v36 = *a4;
  if (a1)
  {
    sub_1DB09DE44();

    *&v38 = a2;
    *(&v38 + 1) = a3;
    MEMORY[0x1E127FE90](0x727245666328202CLL, 0xED0000203D20726FLL);
    *&v37[0] = a1;
    type metadata accessor for CFError(0);
    sub_1DAFD2738(&qword_1EE3009F0, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
    v7 = sub_1DB09E324();
    v9 = v8;

    MEMORY[0x1E127FE90](v7, v9);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
    v10 = v38;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v15)
      {
        sub_1DAF409DC(*(v12 + 56) + 32 * v14, &v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v11 = *&v37[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAF72FF4(0, *(v11 + 2) + 1, 1, v11);
    }

    v17 = *(v11 + 2);
    v16 = *(v11 + 3);
    if (v17 >= v16 >> 1)
    {
      v11 = sub_1DAF72FF4((v16 > 1), v17 + 1, 1, v11);
    }

    *(v11 + 2) = v17 + 1;
    v18 = &v11[56 * v17];
    *(v18 + 2) = v10;
    *(v18 + 6) = 0xD000000000000029;
    *(v18 + 7) = 0x80000001DB0C70D0;
    *(v18 + 8) = 0xD000000000000018;
    *(v18 + 9) = 0x80000001DB0C7100;
    *(v18 + 10) = 378;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v38 = v11;
    sub_1DAF40D20(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v37, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v20 = -1;
    switch(v36)
    {
      case 1:
        v20 = -2;
        break;
      case 2:
        v20 = -3;
        break;
      case 3:
        v20 = -4;
        break;
      case 4:
        v20 = -5;
        break;
      case 5:
        v20 = -6;
        break;
      case 6:
        v20 = -7;
        break;
      case 7:
        v20 = -8;
        break;
      case 8:
        v20 = -9;
        break;
      case 9:
        v20 = -10;
        break;
      case 10:
        v20 = -11;
        break;
      case 11:
        v20 = -12;
        break;
      case 12:
        v20 = -13;
        break;
      case 13:
        v20 = -14;
        break;
      case 14:
        v20 = -15;
        break;
      case 15:
        v20 = -16;
        break;
      case 16:
        v20 = -17;
        break;
      case 17:
        v20 = -18;
        break;
      case 18:
        v20 = -19;
        break;
      case 19:
        v20 = -20;
        break;
      case 20:
        v20 = -21;
        break;
      case 21:
        v20 = -22;
        break;
      case 22:
        v20 = -28;
        break;
      case 23:
        v20 = -29;
        break;
      case 24:
        v20 = 200;
        break;
      case 25:
        v20 = 20000;
        break;
      case 26:
        v20 = 20001;
        break;
      case 27:
        v20 = 20100;
        break;
      case 28:
        v20 = 40000;
        break;
      case 29:
        v20 = 40010;
        break;
      case 30:
        v20 = 40011;
        break;
      case 31:
        v20 = 40012;
        break;
      case 32:
        v20 = 40013;
        break;
      case 33:
        v20 = 40014;
        break;
      case 34:
        v20 = 40015;
        break;
      case 35:
        v20 = 40020;
        break;
      case 36:
        v20 = 40021;
        break;
      case 37:
        v20 = 40022;
        break;
      case 38:
        v20 = 40023;
        break;
      case 39:
        v20 = 40024;
        break;
      case 40:
        v20 = 40025;
        break;
      case 41:
        v20 = 40026;
        break;
      case 42:
        v20 = 40027;
        break;
      case 43:
        v20 = 40028;
        break;
      case 44:
        v20 = 40029;
        break;
      case 45:
        v20 = 40030;
        break;
      case 46:
        v20 = 40101;
        break;
      case 47:
        v20 = 40102;
        break;
      case 48:
        v20 = 40200;
        break;
      case 49:
        v20 = 40201;
        break;
      case 50:
        v20 = 40205;
        break;
      case 51:
        v20 = 40401;
        break;
      case 52:
        v20 = 40402;
        break;
      case 53:
        v20 = 40403;
        break;
      case 54:
        v20 = 40404;
        break;
      case 55:
        v20 = 40500;
        break;
      case 56:
        v20 = 40600;
        break;
      case 57:
        v20 = 40601;
        break;
      case 58:
        v20 = 50000;
        break;
      case 59:
        v20 = 50001;
        break;
      case 60:
        v20 = 50002;
        break;
      case 61:
        v20 = 99991;
        break;
      case 62:
        v20 = 99992;
        break;
      case 63:
        v20 = 99993;
        break;
      case 64:
        v20 = -1101;
        break;
      case 65:
        v20 = -1102;
        break;
      case 66:
        v20 = -1103;
        break;
      case 67:
        v20 = -1104;
        break;
      case 68:
        v20 = -1105;
        break;
      case 69:
        v20 = -1106;
        break;
      case 70:
        v20 = -1107;
        break;
      case 71:
        v20 = -1108;
        break;
      case 72:
        v20 = -1109;
        break;
      case 73:
        v20 = -1201;
        break;
      case 74:
        v20 = -1202;
        break;
      case 75:
        v20 = -1203;
        break;
      case 76:
        v20 = -1204;
        break;
      case 77:
        v20 = -1401;
        break;
      case 78:
        v20 = -1402;
        break;
      case 79:
        v20 = -1403;
        break;
      case 80:
        v20 = -1404;
        break;
      case 81:
        v20 = -1405;
        break;
      case 82:
        v20 = -1406;
        break;
      case 83:
        v20 = -1407;
        break;
      case 84:
        v20 = -1301;
        break;
      case 85:
        v20 = -1302;
        break;
      case 86:
        v20 = -1303;
        break;
      case 87:
        v20 = -1304;
        break;
      case 88:
        v20 = -1305;
        break;
      case 89:
        v20 = -1306;
        break;
      case 90:
        v20 = -1307;
        break;
      case 91:
        v20 = -1308;
        break;
      case 92:
        v20 = -1309;
        break;
      case 93:
        v20 = -1310;
        break;
      case 94:
        v20 = -1311;
        break;
      case 95:
        v20 = -1314;
        break;
      case 96:
        v20 = -1315;
        break;
      case 97:
        v20 = -1316;
        break;
      case 98:
        v20 = -1317;
        break;
      case 99:
        v20 = -131600;
        break;
      case 100:
        v20 = -2101;
        break;
      case 101:
        v20 = -2102;
        break;
      case 102:
        v20 = -2103;
        break;
      case 103:
        v20 = -2104;
        break;
      case 104:
        v20 = -2105;
        break;
      case 105:
        v20 = -2106;
        break;
      case 106:
        v20 = -2107;
        break;
      case 107:
        v20 = -2108;
        break;
      case 108:
        v20 = -2109;
        break;
      case 109:
        v20 = -2110;
        break;
      case 110:
        v20 = -2111;
        break;
      case 111:
        v20 = -2112;
        break;
      case 112:
        v20 = -2113;
        break;
      case 113:
        v20 = -2114;
        break;
      case 114:
        v20 = -2115;
        break;
      case 115:
        v20 = -2116;
        break;
      case 116:
        v20 = -2117;
        break;
      case 117:
        v20 = -2118;
        break;
      case 118:
        v20 = -2119;
        break;
      case 119:
        v20 = -2120;
        break;
      case 120:
        v20 = -3101;
        break;
      case 121:
        v20 = -3102;
        break;
      case 122:
        v20 = -3103;
        break;
      case 123:
        v20 = -3104;
        break;
      case 124:
        v20 = -3105;
        break;
      case 125:
        v20 = -3106;
        break;
      case 126:
        v20 = -3107;
        break;
      case 127:
        v20 = -3108;
        break;
      case 128:
        v20 = -3109;
        break;
      case 129:
        v20 = -3110;
        break;
      case 130:
        v20 = -3111;
        break;
      case 131:
        v20 = -3112;
        break;
      case 132:
        v20 = -3113;
        break;
      case 133:
        v20 = -3151;
        break;
      case 134:
        v20 = -3152;
        break;
      case 135:
        v20 = -3153;
        break;
      case 136:
        v20 = -3154;
        break;
      case 137:
        v20 = -3155;
        break;
      case 138:
        v20 = -3156;
        break;
      case 139:
        v20 = -3157;
        break;
      case 140:
        v20 = -3158;
        break;
      case 141:
        v20 = -3159;
        break;
      case 142:
        v20 = -3161;
        break;
      case 143:
        v20 = -3162;
        break;
      case 144:
        v20 = -3163;
        break;
      case 145:
        v20 = -3164;
        break;
      case 146:
        v20 = -3165;
        break;
      case 147:
        v20 = -3166;
        break;
      case 148:
        v20 = -3167;
        break;
      case 149:
        v20 = -3200;
        break;
      case 150:
        v20 = -3201;
        break;
      case 151:
        v20 = -3202;
        break;
      case 152:
        v20 = -3203;
        break;
      case 153:
        v20 = -3171;
        break;
      case 154:
        v20 = -3172;
        break;
      case 155:
        v20 = -3173;
        break;
      case 156:
        v20 = -3174;
        break;
      case 157:
        v20 = -3175;
        break;
      case 158:
        v20 = -3176;
        break;
      case 159:
        v20 = -3177;
        break;
      case 160:
        v20 = -3178;
        break;
      case 161:
        v20 = -3300;
        break;
      case 162:
        v20 = -4101;
        break;
      case 163:
        v20 = -4102;
        break;
      case 164:
        v20 = -4103;
        break;
      case 165:
        v20 = -4104;
        break;
      case 166:
        v20 = -4105;
        break;
      case 167:
        v20 = -4106;
        break;
      case 168:
        v20 = -4107;
        break;
      case 169:
        v20 = -4108;
        break;
      case 170:
        v20 = -4109;
        break;
      case 171:
        v20 = -4110;
        break;
      case 172:
        v20 = -4111;
        break;
      case 173:
        v20 = -4112;
        break;
      case 174:
        v20 = -4113;
        break;
      case 175:
        v20 = -4114;
        break;
      case 176:
        v20 = -4115;
        break;
      case 177:
        v20 = -4116;
        break;
      case 178:
        v20 = -4117;
        break;
      case 179:
        v20 = -4118;
        break;
      case 180:
        v20 = -4119;
        break;
      case 181:
        v20 = -4120;
        break;
      case 182:
        v20 = -5101;
        break;
      case 183:
        v20 = -5102;
        break;
      case 184:
        v20 = -5103;
        break;
      case 185:
        v20 = -5104;
        break;
      case 186:
        v20 = -5105;
        break;
      case 187:
        v20 = -5106;
        break;
      case 188:
        v20 = -5107;
        break;
      case 189:
        v20 = -5201;
        break;
      case 190:
        v20 = -5202;
        break;
      case 191:
        v20 = -5203;
        break;
      case 192:
        v20 = -5204;
        break;
      case 193:
        v20 = -5205;
        break;
      case 194:
        v20 = -5206;
        break;
      case 195:
        v20 = -5207;
        break;
      case 196:
        v20 = -5208;
        break;
      case 197:
        v20 = -5209;
        break;
      case 198:
        v20 = -5210;
        break;
      case 199:
        v20 = -5211;
        break;
      case 200:
        v20 = -5212;
        break;
      case 201:
        v20 = -5213;
        break;
      case 202:
        v20 = -5214;
        break;
      case 203:
        v20 = -5215;
        break;
      case 204:
        v20 = -5216;
        break;
      case 205:
        v20 = -5217;
        break;
      case 206:
        v20 = -5218;
        break;
      case 207:
        v20 = -5219;
        break;
      case 208:
        v20 = -5301;
        break;
      case 209:
        v20 = -5401;
        break;
      case 210:
        v20 = -5501;
        break;
      case 211:
        v20 = -5601;
        break;
      case 212:
        v20 = -5602;
        break;
      case 213:
        v20 = -5701;
        break;
      case 214:
        v20 = -5702;
        break;
      case 215:
        v20 = -5901;
        break;
      case 216:
        v20 = -5902;
        break;
      case 217:
        v20 = -5903;
        break;
      case 218:
        v20 = -5904;
        break;
      case 219:
        v20 = -5905;
        break;
      case 220:
        v20 = -5906;
        break;
      case 221:
        v20 = -5907;
        break;
      case 222:
        v20 = -5908;
        break;
      case 223:
        v20 = -5909;
        break;
      case 224:
        v20 = -5910;
        break;
      case 225:
        v20 = -5911;
        break;
      case 226:
        v20 = -5912;
        break;
      case 227:
        v20 = -6001;
        break;
      case 228:
        v20 = -6002;
        break;
      case 229:
        v20 = -6003;
        break;
      case 230:
        v20 = -6004;
        break;
      case 231:
        v20 = -6005;
        break;
      case 232:
        v20 = -6006;
        break;
      case 233:
        v20 = -6007;
        break;
      case 234:
        v20 = -6008;
        break;
      case 235:
        v20 = -6009;
        break;
      case 236:
        v20 = -6010;
        break;
      case 237:
        v20 = -6101;
        break;
      case 238:
        v20 = -6102;
        break;
      case 239:
        v20 = -6103;
        break;
      case 240:
        v20 = -6104;
        break;
      case 241:
        v20 = -6105;
        break;
      case 242:
        v20 = -7000;
        break;
      case 243:
        v20 = -7001;
        break;
      case 244:
        v20 = -7002;
        break;
      case 245:
        v20 = -7003;
        break;
      case 246:
        v20 = -7004;
        break;
      case 247:
        v20 = -7005;
        break;
      case 248:
        v20 = -7006;
        break;
      case 249:
        v20 = -7007;
        break;
      case 250:
        v20 = -7008;
        break;
      case 251:
        v20 = -7009;
        break;
      case 252:
        v20 = -7010;
        break;
      case 253:
        v20 = -7011;
        break;
      case 254:
        v20 = -7012;
        break;
      case 255:
        v20 = -7013;
        break;
      case 256:
        v20 = -7014;
        break;
      case 257:
        v20 = -7015;
        break;
      case 258:
        v20 = -7016;
        break;
      case 259:
        v20 = -8001;
        break;
      case 260:
        v20 = -8301;
        break;
      case 261:
        v20 = -8304;
        break;
      case 262:
        v20 = -8400;
        break;
      case 263:
        v20 = -8401;
        break;
      case 264:
        v20 = -8403;
        break;
      case 265:
        v20 = -8404;
        break;
      case 266:
        v20 = -8428;
        break;
      case 267:
        v20 = -8429;
        break;
      case 268:
        v20 = -8433;
        break;
      case 269:
        v20 = -8434;
        break;
      case 270:
        v20 = -8500;
        break;
      case 271:
        v20 = -8501;
        break;
      case 272:
        v20 = -8502;
        break;
      case 273:
        v20 = -8503;
        break;
      case 274:
        v20 = -8504;
        break;
      case 275:
        v20 = -10000;
        break;
      case 276:
        v20 = -10001;
        break;
      case 277:
        v20 = -10002;
        break;
      case 278:
        v20 = -11001;
        break;
      case 279:
        v20 = -11002;
        break;
      case 280:
        v20 = -11003;
        break;
      case 281:
        v20 = -11004;
        break;
      case 282:
        v20 = -11005;
        break;
      case 283:
        v20 = -11006;
        break;
      case 284:
        v20 = -11007;
        break;
      case 285:
        v20 = -11008;
        break;
      case 286:
        v20 = -11009;
        break;
      case 287:
        v20 = -11010;
        break;
      case 288:
        v20 = -11011;
        break;
      case 289:
        v20 = -11012;
        break;
      case 290:
        v20 = -11013;
        break;
      case 291:
        v20 = -11014;
        break;
      case 292:
        v20 = -11015;
        break;
      case 293:
        v20 = -11016;
        break;
      case 294:
        v20 = -11017;
        break;
      case 295:
        v20 = -11018;
        break;
      case 296:
        v20 = -11019;
        break;
      case 297:
        v20 = -11020;
        break;
      case 298:
        v20 = -11021;
        break;
      case 299:
        v20 = -11022;
        break;
      case 300:
        v20 = -11023;
        break;
      case 301:
        v20 = -11024;
        break;
      case 302:
        v20 = -11025;
        break;
      case 303:
        v20 = -11026;
        break;
      case 304:
        v20 = -11027;
        break;
      case 305:
        v20 = -11028;
        break;
      case 306:
        v20 = -11029;
        break;
      case 307:
        v20 = -11030;
        break;
      case 308:
        v20 = -11031;
        break;
      case 309:
        v20 = -11032;
        break;
      case 310:
        v20 = -11033;
        break;
      case 311:
        v20 = -11034;
        break;
      case 312:
        v20 = -11035;
        break;
      case 313:
        v20 = -11101;
        break;
      case 314:
        v20 = -11102;
        break;
      case 315:
        v20 = -11103;
        break;
      case 316:
        v20 = -11104;
        break;
      case 317:
        v20 = -11105;
        break;
      case 318:
        v20 = -11106;
        break;
      case 319:
        v20 = -11107;
        break;
      case 320:
        v20 = -11108;
        break;
      case 321:
        v20 = -11109;
        break;
      case 322:
        v20 = -11150;
        break;
      case 323:
        v20 = -11151;
        break;
      case 324:
        v20 = -11152;
        break;
      case 325:
        v20 = -11153;
        break;
      case 326:
        v20 = -11154;
        break;
      case 327:
        v20 = -11155;
        break;
      case 328:
        v20 = -11156;
        break;
      case 329:
        v20 = -11157;
        break;
      case 330:
        v20 = -11158;
        break;
      case 331:
        v20 = -11201;
        break;
      case 332:
        v20 = -11202;
        break;
      case 333:
        v20 = -11207;
        break;
      case 334:
        v20 = -12000;
        break;
      case 335:
        v20 = -12001;
        break;
      case 336:
        v20 = -12002;
        break;
      case 337:
        v20 = -12003;
        break;
      case 338:
        v20 = -12005;
        break;
      case 339:
        v20 = -12007;
        break;
      case 340:
        v20 = -12008;
        break;
      case 341:
        v20 = -12009;
        break;
      case 342:
        v20 = -12010;
        break;
      case 343:
        v20 = -12011;
        break;
      case 344:
        v20 = -12012;
        break;
      case 345:
        v20 = -12013;
        break;
      case 346:
        v20 = -12014;
        break;
      case 347:
        v20 = -12015;
        break;
      case 348:
        v20 = -12016;
        break;
      case 349:
        v20 = -12017;
        break;
      case 350:
        v20 = -12018;
        break;
      case 351:
        v20 = -12019;
        break;
      case 352:
        v20 = -12020;
        break;
      case 353:
        v20 = -12021;
        break;
      case 354:
        v20 = -12022;
        break;
      case 355:
        v20 = -12023;
        break;
      case 356:
        v20 = -12024;
        break;
      case 357:
        v20 = -12025;
        break;
      case 358:
        v20 = -12026;
        break;
      case 359:
        v20 = -12027;
        break;
      case 360:
        v20 = -12028;
        break;
      case 361:
        v20 = -12029;
        break;
      case 362:
        v20 = -12030;
        break;
      case 363:
        v20 = -12031;
        break;
      case 364:
        v20 = -12032;
        break;
      case 365:
        v20 = -12033;
        break;
      case 366:
        v20 = -12034;
        break;
      case 367:
        v20 = -12035;
        break;
      case 368:
        v20 = -12036;
        break;
      case 369:
        v20 = -12037;
        break;
      case 370:
        v20 = -12038;
        break;
      case 371:
        v20 = -12039;
        break;
      case 372:
        v20 = -12040;
        break;
      case 373:
        v20 = -12041;
        break;
      case 374:
        v20 = -12042;
        break;
      case 375:
        v20 = -12043;
        break;
      case 376:
        v20 = -12044;
        break;
      case 377:
        v20 = -12045;
        break;
      case 378:
        v20 = -12046;
        break;
      case 379:
        v20 = -12047;
        break;
      case 380:
        v20 = -12048;
        break;
      case 381:
        v20 = -12049;
        break;
      case 382:
        v20 = -12050;
        break;
      case 383:
        v20 = -12052;
        break;
      case 384:
        v20 = -12053;
        break;
      case 385:
        v20 = -12054;
        break;
      case 386:
        v20 = -12055;
        break;
      case 387:
        v20 = -12056;
        break;
      case 388:
        v20 = -12057;
        break;
      case 389:
        v20 = -12058;
        break;
      case 390:
        v20 = -12059;
        break;
      case 391:
        v20 = -12060;
        break;
      case 392:
        v20 = -12061;
        break;
      case 393:
        v20 = -12062;
        break;
      case 394:
        v20 = -12064;
        break;
      case 395:
        v20 = -12065;
        break;
      case 396:
        v20 = -12066;
        break;
      case 397:
        v20 = -12067;
        break;
      case 398:
        v20 = -12068;
        break;
      case 399:
        v20 = -12069;
        break;
      case 400:
        v20 = -12070;
        break;
      case 401:
        v20 = -12071;
        break;
      case 402:
        v20 = -12072;
        break;
      case 403:
        v20 = -12073;
        break;
      case 404:
        v20 = -12074;
        break;
      case 405:
        v20 = -12075;
        break;
      case 406:
        v20 = -12076;
        break;
      case 407:
        v20 = -12077;
        break;
      case 408:
        v20 = -12078;
        break;
      case 409:
        v20 = -12079;
        break;
      case 410:
        v20 = -12080;
        break;
      case 411:
        v20 = -12081;
        break;
      case 412:
        v20 = -12082;
        break;
      case 413:
        v20 = -12083;
        break;
      case 414:
        v20 = -12084;
        break;
      case 415:
        v20 = -12085;
        break;
      case 416:
        v20 = -12086;
        break;
      case 417:
        v20 = -12087;
        break;
      case 418:
        v20 = -12088;
        break;
      case 419:
        v20 = -12089;
        break;
      case 420:
        v20 = -12090;
        break;
      case 421:
        v20 = -12091;
        break;
      case 422:
        v20 = -12092;
        break;
      case 423:
        v20 = -12093;
        break;
      case 424:
        v20 = -12094;
        break;
      case 425:
        v20 = -12095;
        break;
      case 426:
        v20 = -12096;
        break;
      case 427:
        v20 = -12097;
        break;
      case 428:
        v20 = -12098;
        break;
      case 429:
        v20 = -12099;
        break;
      case 430:
        v20 = -12100;
        break;
      case 431:
        v20 = -12101;
        break;
      case 432:
        v20 = -12102;
        break;
      case 433:
        v20 = -12103;
        break;
      case 434:
        v20 = -12104;
        break;
      case 435:
        v20 = -12105;
        break;
      case 436:
        v20 = -12106;
        break;
      case 437:
        v20 = -12107;
        break;
      case 438:
        v20 = -12108;
        break;
      case 439:
        v20 = -12109;
        break;
      case 440:
        v20 = -12110;
        break;
      case 441:
        v20 = -12111;
        break;
      case 442:
        v20 = -12112;
        break;
      case 443:
        v20 = -12113;
        break;
      case 444:
        v20 = -12116;
        break;
      case 445:
        v20 = -12117;
        break;
      case 446:
        v20 = -12118;
        break;
      case 447:
        v20 = -12119;
        break;
      case 448:
        v20 = -12120;
        break;
      case 449:
        v20 = -12121;
        break;
      case 450:
        v20 = -12122;
        break;
      case 451:
        v20 = -12123;
        break;
      case 452:
        v20 = -12124;
        break;
      case 453:
        v20 = -12125;
        break;
      case 454:
        v20 = -12051;
        break;
      case 455:
        v20 = -12063;
        break;
      case 456:
        v20 = -12200;
        break;
      case 457:
        v20 = -13000;
        break;
      case 458:
        v20 = -14000;
        break;
      case 459:
        v20 = -14001;
        break;
      case 460:
        v20 = -14002;
        break;
      case 461:
        v20 = -14003;
        break;
      default:
        break;
    }
  }

  else
  {
    sub_1DB09DE44();

    *&v38 = a2;
    *(&v38 + 1) = a3;
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C70B0);
    v21 = a3;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v24 = *(v23 + 16);

    if (v24)
    {
      v25 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v26)
      {
        sub_1DAF409DC(*(v23 + 56) + 32 * v25, &v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v22 = *&v37[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DAF72FF4(0, *(v22 + 2) + 1, 1, v22);
    }

    v28 = *(v22 + 2);
    v27 = *(v22 + 3);
    if (v28 >= v27 >> 1)
    {
      v22 = sub_1DAF72FF4((v27 > 1), v28 + 1, 1, v22);
    }

    *(v22 + 2) = v28 + 1;
    v29 = &v22[56 * v28];
    *(v29 + 4) = a2;
    *(v29 + 5) = v21;
    *(v29 + 6) = 0xD000000000000029;
    *(v29 + 7) = 0x80000001DB0C70D0;
    *(v29 + 8) = 0xD000000000000018;
    *(v29 + 9) = 0x80000001DB0C7100;
    *(v29 + 10) = 375;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v38 = v22;
    sub_1DAF40D20(&v38, v37);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v37, 0x636F766E49504944, 0xEE00736E6F697461, v30);
    v20 = -1;
    switch(v36)
    {
      case 1:
        v20 = -2;
        break;
      case 2:
        v20 = -3;
        break;
      case 3:
        v20 = -4;
        break;
      case 4:
        v20 = -5;
        break;
      case 5:
        v20 = -6;
        break;
      case 6:
        v20 = -7;
        break;
      case 7:
        v20 = -8;
        break;
      case 8:
        v20 = -9;
        break;
      case 9:
        v20 = -10;
        break;
      case 10:
        v20 = -11;
        break;
      case 11:
        v20 = -12;
        break;
      case 12:
        v20 = -13;
        break;
      case 13:
        v20 = -14;
        break;
      case 14:
        v20 = -15;
        break;
      case 15:
        v20 = -16;
        break;
      case 16:
        v20 = -17;
        break;
      case 17:
        v20 = -18;
        break;
      case 18:
        v20 = -19;
        break;
      case 19:
        v20 = -20;
        break;
      case 20:
        v20 = -21;
        break;
      case 21:
        v20 = -22;
        break;
      case 22:
        v20 = -28;
        break;
      case 23:
        v20 = -29;
        break;
      case 24:
        v20 = 200;
        break;
      case 25:
        v20 = 20000;
        break;
      case 26:
        v20 = 20001;
        break;
      case 27:
        v20 = 20100;
        break;
      case 28:
        v20 = 40000;
        break;
      case 29:
        v20 = 40010;
        break;
      case 30:
        v20 = 40011;
        break;
      case 31:
        v20 = 40012;
        break;
      case 32:
        v20 = 40013;
        break;
      case 33:
        v20 = 40014;
        break;
      case 34:
        v20 = 40015;
        break;
      case 35:
        v20 = 40020;
        break;
      case 36:
        v20 = 40021;
        break;
      case 37:
        v20 = 40022;
        break;
      case 38:
        v20 = 40023;
        break;
      case 39:
        v20 = 40024;
        break;
      case 40:
        v20 = 40025;
        break;
      case 41:
        v20 = 40026;
        break;
      case 42:
        v20 = 40027;
        break;
      case 43:
        v20 = 40028;
        break;
      case 44:
        v20 = 40029;
        break;
      case 45:
        v20 = 40030;
        break;
      case 46:
        v20 = 40101;
        break;
      case 47:
        v20 = 40102;
        break;
      case 48:
        v20 = 40200;
        break;
      case 49:
        v20 = 40201;
        break;
      case 50:
        v20 = 40205;
        break;
      case 51:
        v20 = 40401;
        break;
      case 52:
        v20 = 40402;
        break;
      case 53:
        v20 = 40403;
        break;
      case 54:
        v20 = 40404;
        break;
      case 55:
        v20 = 40500;
        break;
      case 56:
        v20 = 40600;
        break;
      case 57:
        v20 = 40601;
        break;
      case 58:
        v20 = 50000;
        break;
      case 59:
        v20 = 50001;
        break;
      case 60:
        v20 = 50002;
        break;
      case 61:
        v20 = 99991;
        break;
      case 62:
        v20 = 99992;
        break;
      case 63:
        v20 = 99993;
        break;
      case 64:
        v20 = -1101;
        break;
      case 65:
        v20 = -1102;
        break;
      case 66:
        v20 = -1103;
        break;
      case 67:
        v20 = -1104;
        break;
      case 68:
        v20 = -1105;
        break;
      case 69:
        v20 = -1106;
        break;
      case 70:
        v20 = -1107;
        break;
      case 71:
        v20 = -1108;
        break;
      case 72:
        v20 = -1109;
        break;
      case 73:
        v20 = -1201;
        break;
      case 74:
        v20 = -1202;
        break;
      case 75:
        v20 = -1203;
        break;
      case 76:
        v20 = -1204;
        break;
      case 77:
        v20 = -1401;
        break;
      case 78:
        v20 = -1402;
        break;
      case 79:
        v20 = -1403;
        break;
      case 80:
        v20 = -1404;
        break;
      case 81:
        v20 = -1405;
        break;
      case 82:
        v20 = -1406;
        break;
      case 83:
        v20 = -1407;
        break;
      case 84:
        v20 = -1301;
        break;
      case 85:
        v20 = -1302;
        break;
      case 86:
        v20 = -1303;
        break;
      case 87:
        v20 = -1304;
        break;
      case 88:
        v20 = -1305;
        break;
      case 89:
        v20 = -1306;
        break;
      case 90:
        v20 = -1307;
        break;
      case 91:
        v20 = -1308;
        break;
      case 92:
        v20 = -1309;
        break;
      case 93:
        v20 = -1310;
        break;
      case 94:
        v20 = -1311;
        break;
      case 95:
        v20 = -1314;
        break;
      case 96:
        v20 = -1315;
        break;
      case 97:
        v20 = -1316;
        break;
      case 98:
        v20 = -1317;
        break;
      case 99:
        v20 = -131600;
        break;
      case 100:
        v20 = -2101;
        break;
      case 101:
        v20 = -2102;
        break;
      case 102:
        v20 = -2103;
        break;
      case 103:
        v20 = -2104;
        break;
      case 104:
        v20 = -2105;
        break;
      case 105:
        v20 = -2106;
        break;
      case 106:
        v20 = -2107;
        break;
      case 107:
        v20 = -2108;
        break;
      case 108:
        v20 = -2109;
        break;
      case 109:
        v20 = -2110;
        break;
      case 110:
        v20 = -2111;
        break;
      case 111:
        v20 = -2112;
        break;
      case 112:
        v20 = -2113;
        break;
      case 113:
        v20 = -2114;
        break;
      case 114:
        v20 = -2115;
        break;
      case 115:
        v20 = -2116;
        break;
      case 116:
        v20 = -2117;
        break;
      case 117:
        v20 = -2118;
        break;
      case 118:
        v20 = -2119;
        break;
      case 119:
        v20 = -2120;
        break;
      case 120:
        v20 = -3101;
        break;
      case 121:
        v20 = -3102;
        break;
      case 122:
        v20 = -3103;
        break;
      case 123:
        v20 = -3104;
        break;
      case 124:
        v20 = -3105;
        break;
      case 125:
        v20 = -3106;
        break;
      case 126:
        v20 = -3107;
        break;
      case 127:
        v20 = -3108;
        break;
      case 128:
        v20 = -3109;
        break;
      case 129:
        v20 = -3110;
        break;
      case 130:
        v20 = -3111;
        break;
      case 131:
        v20 = -3112;
        break;
      case 132:
        v20 = -3113;
        break;
      case 133:
        v20 = -3151;
        break;
      case 134:
        v20 = -3152;
        break;
      case 135:
        v20 = -3153;
        break;
      case 136:
        v20 = -3154;
        break;
      case 137:
        v20 = -3155;
        break;
      case 138:
        v20 = -3156;
        break;
      case 139:
        v20 = -3157;
        break;
      case 140:
        v20 = -3158;
        break;
      case 141:
        v20 = -3159;
        break;
      case 142:
        v20 = -3161;
        break;
      case 143:
        v20 = -3162;
        break;
      case 144:
        v20 = -3163;
        break;
      case 145:
        v20 = -3164;
        break;
      case 146:
        v20 = -3165;
        break;
      case 147:
        v20 = -3166;
        break;
      case 148:
        v20 = -3167;
        break;
      case 149:
        v20 = -3200;
        break;
      case 150:
        v20 = -3201;
        break;
      case 151:
        v20 = -3202;
        break;
      case 152:
        v20 = -3203;
        break;
      case 153:
        v20 = -3171;
        break;
      case 154:
        v20 = -3172;
        break;
      case 155:
        v20 = -3173;
        break;
      case 156:
        v20 = -3174;
        break;
      case 157:
        v20 = -3175;
        break;
      case 158:
        v20 = -3176;
        break;
      case 159:
        v20 = -3177;
        break;
      case 160:
        v20 = -3178;
        break;
      case 161:
        v20 = -3300;
        break;
      case 162:
        v20 = -4101;
        break;
      case 163:
        v20 = -4102;
        break;
      case 164:
        v20 = -4103;
        break;
      case 165:
        v20 = -4104;
        break;
      case 166:
        v20 = -4105;
        break;
      case 167:
        v20 = -4106;
        break;
      case 168:
        v20 = -4107;
        break;
      case 169:
        v20 = -4108;
        break;
      case 170:
        v20 = -4109;
        break;
      case 171:
        v20 = -4110;
        break;
      case 172:
        v20 = -4111;
        break;
      case 173:
        v20 = -4112;
        break;
      case 174:
        v20 = -4113;
        break;
      case 175:
        v20 = -4114;
        break;
      case 176:
        v20 = -4115;
        break;
      case 177:
        v20 = -4116;
        break;
      case 178:
        v20 = -4117;
        break;
      case 179:
        v20 = -4118;
        break;
      case 180:
        v20 = -4119;
        break;
      case 181:
        v20 = -4120;
        break;
      case 182:
        v20 = -5101;
        break;
      case 183:
        v20 = -5102;
        break;
      case 184:
        v20 = -5103;
        break;
      case 185:
        v20 = -5104;
        break;
      case 186:
        v20 = -5105;
        break;
      case 187:
        v20 = -5106;
        break;
      case 188:
        v20 = -5107;
        break;
      case 189:
        v20 = -5201;
        break;
      case 190:
        v20 = -5202;
        break;
      case 191:
        v20 = -5203;
        break;
      case 192:
        v20 = -5204;
        break;
      case 193:
        v20 = -5205;
        break;
      case 194:
        v20 = -5206;
        break;
      case 195:
        v20 = -5207;
        break;
      case 196:
        v20 = -5208;
        break;
      case 197:
        v20 = -5209;
        break;
      case 198:
        v20 = -5210;
        break;
      case 199:
        v20 = -5211;
        break;
      case 200:
        v20 = -5212;
        break;
      case 201:
        v20 = -5213;
        break;
      case 202:
        v20 = -5214;
        break;
      case 203:
        v20 = -5215;
        break;
      case 204:
        v20 = -5216;
        break;
      case 205:
        v20 = -5217;
        break;
      case 206:
        v20 = -5218;
        break;
      case 207:
        v20 = -5219;
        break;
      case 208:
        v20 = -5301;
        break;
      case 209:
        v20 = -5401;
        break;
      case 210:
        v20 = -5501;
        break;
      case 211:
        v20 = -5601;
        break;
      case 212:
        v20 = -5602;
        break;
      case 213:
        v20 = -5701;
        break;
      case 214:
        v20 = -5702;
        break;
      case 215:
        v20 = -5901;
        break;
      case 216:
        v20 = -5902;
        break;
      case 217:
        v20 = -5903;
        break;
      case 218:
        v20 = -5904;
        break;
      case 219:
        v20 = -5905;
        break;
      case 220:
        v20 = -5906;
        break;
      case 221:
        v20 = -5907;
        break;
      case 222:
        v20 = -5908;
        break;
      case 223:
        v20 = -5909;
        break;
      case 224:
        v20 = -5910;
        break;
      case 225:
        v20 = -5911;
        break;
      case 226:
        v20 = -5912;
        break;
      case 227:
        v20 = -6001;
        break;
      case 228:
        v20 = -6002;
        break;
      case 229:
        v20 = -6003;
        break;
      case 230:
        v20 = -6004;
        break;
      case 231:
        v20 = -6005;
        break;
      case 232:
        v20 = -6006;
        break;
      case 233:
        v20 = -6007;
        break;
      case 234:
        v20 = -6008;
        break;
      case 235:
        v20 = -6009;
        break;
      case 236:
        v20 = -6010;
        break;
      case 237:
        v20 = -6101;
        break;
      case 238:
        v20 = -6102;
        break;
      case 239:
        v20 = -6103;
        break;
      case 240:
        v20 = -6104;
        break;
      case 241:
        v20 = -6105;
        break;
      case 242:
        v20 = -7000;
        break;
      case 243:
        v20 = -7001;
        break;
      case 244:
        v20 = -7002;
        break;
      case 245:
        v20 = -7003;
        break;
      case 246:
        v20 = -7004;
        break;
      case 247:
        v20 = -7005;
        break;
      case 248:
        v20 = -7006;
        break;
      case 249:
        v20 = -7007;
        break;
      case 250:
        v20 = -7008;
        break;
      case 251:
        v20 = -7009;
        break;
      case 252:
        v20 = -7010;
        break;
      case 253:
        v20 = -7011;
        break;
      case 254:
        v20 = -7012;
        break;
      case 255:
        v20 = -7013;
        break;
      case 256:
        v20 = -7014;
        break;
      case 257:
        v20 = -7015;
        break;
      case 258:
        v20 = -7016;
        break;
      case 259:
        v20 = -8001;
        break;
      case 260:
        v20 = -8301;
        break;
      case 261:
        v20 = -8304;
        break;
      case 262:
        v20 = -8400;
        break;
      case 263:
        v20 = -8401;
        break;
      case 264:
        v20 = -8403;
        break;
      case 265:
        v20 = -8404;
        break;
      case 266:
        v20 = -8428;
        break;
      case 267:
        v20 = -8429;
        break;
      case 268:
        v20 = -8433;
        break;
      case 269:
        v20 = -8434;
        break;
      case 270:
        v20 = -8500;
        break;
      case 271:
        v20 = -8501;
        break;
      case 272:
        v20 = -8502;
        break;
      case 273:
        v20 = -8503;
        break;
      case 274:
        v20 = -8504;
        break;
      case 275:
        v20 = -10000;
        break;
      case 276:
        v20 = -10001;
        break;
      case 277:
        v20 = -10002;
        break;
      case 278:
        v20 = -11001;
        break;
      case 279:
        v20 = -11002;
        break;
      case 280:
        v20 = -11003;
        break;
      case 281:
        v20 = -11004;
        break;
      case 282:
        v20 = -11005;
        break;
      case 283:
        v20 = -11006;
        break;
      case 284:
        v20 = -11007;
        break;
      case 285:
        v20 = -11008;
        break;
      case 286:
        v20 = -11009;
        break;
      case 287:
        v20 = -11010;
        break;
      case 288:
        v20 = -11011;
        break;
      case 289:
        v20 = -11012;
        break;
      case 290:
        v20 = -11013;
        break;
      case 291:
        v20 = -11014;
        break;
      case 292:
        v20 = -11015;
        break;
      case 293:
        v20 = -11016;
        break;
      case 294:
        v20 = -11017;
        break;
      case 295:
        v20 = -11018;
        break;
      case 296:
        v20 = -11019;
        break;
      case 297:
        v20 = -11020;
        break;
      case 298:
        v20 = -11021;
        break;
      case 299:
        v20 = -11022;
        break;
      case 300:
        v20 = -11023;
        break;
      case 301:
        v20 = -11024;
        break;
      case 302:
        v20 = -11025;
        break;
      case 303:
        v20 = -11026;
        break;
      case 304:
        v20 = -11027;
        break;
      case 305:
        v20 = -11028;
        break;
      case 306:
        v20 = -11029;
        break;
      case 307:
        v20 = -11030;
        break;
      case 308:
        v20 = -11031;
        break;
      case 309:
        v20 = -11032;
        break;
      case 310:
        v20 = -11033;
        break;
      case 311:
        v20 = -11034;
        break;
      case 312:
        v20 = -11035;
        break;
      case 313:
        v20 = -11101;
        break;
      case 314:
        v20 = -11102;
        break;
      case 315:
        v20 = -11103;
        break;
      case 316:
        v20 = -11104;
        break;
      case 317:
        v20 = -11105;
        break;
      case 318:
        v20 = -11106;
        break;
      case 319:
        v20 = -11107;
        break;
      case 320:
        v20 = -11108;
        break;
      case 321:
        v20 = -11109;
        break;
      case 322:
        v20 = -11150;
        break;
      case 323:
        v20 = -11151;
        break;
      case 324:
        v20 = -11152;
        break;
      case 325:
        v20 = -11153;
        break;
      case 326:
        v20 = -11154;
        break;
      case 327:
        v20 = -11155;
        break;
      case 328:
        v20 = -11156;
        break;
      case 329:
        v20 = -11157;
        break;
      case 330:
        v20 = -11158;
        break;
      case 331:
        v20 = -11201;
        break;
      case 332:
        v20 = -11202;
        break;
      case 333:
        v20 = -11207;
        break;
      case 334:
        v20 = -12000;
        break;
      case 335:
        v20 = -12001;
        break;
      case 336:
        v20 = -12002;
        break;
      case 337:
        v20 = -12003;
        break;
      case 338:
        v20 = -12005;
        break;
      case 339:
        v20 = -12007;
        break;
      case 340:
        v20 = -12008;
        break;
      case 341:
        v20 = -12009;
        break;
      case 342:
        v20 = -12010;
        break;
      case 343:
        v20 = -12011;
        break;
      case 344:
        v20 = -12012;
        break;
      case 345:
        v20 = -12013;
        break;
      case 346:
        v20 = -12014;
        break;
      case 347:
        v20 = -12015;
        break;
      case 348:
        v20 = -12016;
        break;
      case 349:
        v20 = -12017;
        break;
      case 350:
        v20 = -12018;
        break;
      case 351:
        v20 = -12019;
        break;
      case 352:
        v20 = -12020;
        break;
      case 353:
        v20 = -12021;
        break;
      case 354:
        v20 = -12022;
        break;
      case 355:
        v20 = -12023;
        break;
      case 356:
        v20 = -12024;
        break;
      case 357:
        v20 = -12025;
        break;
      case 358:
        v20 = -12026;
        break;
      case 359:
        v20 = -12027;
        break;
      case 360:
        v20 = -12028;
        break;
      case 361:
        v20 = -12029;
        break;
      case 362:
        v20 = -12030;
        break;
      case 363:
        v20 = -12031;
        break;
      case 364:
        v20 = -12032;
        break;
      case 365:
        v20 = -12033;
        break;
      case 366:
        v20 = -12034;
        break;
      case 367:
        v20 = -12035;
        break;
      case 368:
        v20 = -12036;
        break;
      case 369:
        v20 = -12037;
        break;
      case 370:
        v20 = -12038;
        break;
      case 371:
        v20 = -12039;
        break;
      case 372:
        v20 = -12040;
        break;
      case 373:
        v20 = -12041;
        break;
      case 374:
        v20 = -12042;
        break;
      case 375:
        v20 = -12043;
        break;
      case 376:
        v20 = -12044;
        break;
      case 377:
        v20 = -12045;
        break;
      case 378:
        v20 = -12046;
        break;
      case 379:
        v20 = -12047;
        break;
      case 380:
        v20 = -12048;
        break;
      case 381:
        v20 = -12049;
        break;
      case 382:
        v20 = -12050;
        break;
      case 383:
        v20 = -12052;
        break;
      case 384:
        v20 = -12053;
        break;
      case 385:
        v20 = -12054;
        break;
      case 386:
        v20 = -12055;
        break;
      case 387:
        v20 = -12056;
        break;
      case 388:
        v20 = -12057;
        break;
      case 389:
        v20 = -12058;
        break;
      case 390:
        v20 = -12059;
        break;
      case 391:
        v20 = -12060;
        break;
      case 392:
        v20 = -12061;
        break;
      case 393:
        v20 = -12062;
        break;
      case 394:
        v20 = -12064;
        break;
      case 395:
        v20 = -12065;
        break;
      case 396:
        v20 = -12066;
        break;
      case 397:
        v20 = -12067;
        break;
      case 398:
        v20 = -12068;
        break;
      case 399:
        v20 = -12069;
        break;
      case 400:
        v20 = -12070;
        break;
      case 401:
        v20 = -12071;
        break;
      case 402:
        v20 = -12072;
        break;
      case 403:
        v20 = -12073;
        break;
      case 404:
        v20 = -12074;
        break;
      case 405:
        v20 = -12075;
        break;
      case 406:
        v20 = -12076;
        break;
      case 407:
        v20 = -12077;
        break;
      case 408:
        v20 = -12078;
        break;
      case 409:
        v20 = -12079;
        break;
      case 410:
        v20 = -12080;
        break;
      case 411:
        v20 = -12081;
        break;
      case 412:
        v20 = -12082;
        break;
      case 413:
        v20 = -12083;
        break;
      case 414:
        v20 = -12084;
        break;
      case 415:
        v20 = -12085;
        break;
      case 416:
        v20 = -12086;
        break;
      case 417:
        v20 = -12087;
        break;
      case 418:
        v20 = -12088;
        break;
      case 419:
        v20 = -12089;
        break;
      case 420:
        v20 = -12090;
        break;
      case 421:
        v20 = -12091;
        break;
      case 422:
        v20 = -12092;
        break;
      case 423:
        v20 = -12093;
        break;
      case 424:
        v20 = -12094;
        break;
      case 425:
        v20 = -12095;
        break;
      case 426:
        v20 = -12096;
        break;
      case 427:
        v20 = -12097;
        break;
      case 428:
        v20 = -12098;
        break;
      case 429:
        v20 = -12099;
        break;
      case 430:
        v20 = -12100;
        break;
      case 431:
        v20 = -12101;
        break;
      case 432:
        v20 = -12102;
        break;
      case 433:
        v20 = -12103;
        break;
      case 434:
        v20 = -12104;
        break;
      case 435:
        v20 = -12105;
        break;
      case 436:
        v20 = -12106;
        break;
      case 437:
        v20 = -12107;
        break;
      case 438:
        v20 = -12108;
        break;
      case 439:
        v20 = -12109;
        break;
      case 440:
        v20 = -12110;
        break;
      case 441:
        v20 = -12111;
        break;
      case 442:
        v20 = -12112;
        break;
      case 443:
        v20 = -12113;
        break;
      case 444:
        v20 = -12116;
        break;
      case 445:
        v20 = -12117;
        break;
      case 446:
        v20 = -12118;
        break;
      case 447:
        v20 = -12119;
        break;
      case 448:
        v20 = -12120;
        break;
      case 449:
        v20 = -12121;
        break;
      case 450:
        v20 = -12122;
        break;
      case 451:
        v20 = -12123;
        break;
      case 452:
        v20 = -12124;
        break;
      case 453:
        v20 = -12125;
        break;
      case 454:
        v20 = -12051;
        break;
      case 455:
        v20 = -12063;
        break;
      case 456:
        v20 = -12200;
        break;
      case 457:
        v20 = -13000;
        break;
      case 458:
        v20 = -14000;
        break;
      case 459:
        v20 = -14001;
        break;
      case 460:
        v20 = -14002;
        break;
      case 461:
        v20 = -14003;
        break;
      default:
        break;
    }
  }

  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1DB09D6B4();
  v33 = sub_1DB09D604();
  v34 = [v31 initWithDomain:v32 code:v20 userInfo:v33];

  return v34;
}