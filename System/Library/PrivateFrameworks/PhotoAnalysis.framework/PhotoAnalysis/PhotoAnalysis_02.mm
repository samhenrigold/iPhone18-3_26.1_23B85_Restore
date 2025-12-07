uint64_t sub_22FA5E428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22FA5E448, 0, 0);
}

uint64_t sub_22FA5E448()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v6 = v5;
  v0[4] = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_22FA5E524;

  return sub_22FB2E4FC(v4, v6);
}

uint64_t sub_22FA5E524()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FA5E658()
{
  v1 = v0[29];
  v2 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x6574617453;
  *(inited + 40) = 0xE500000000000000;
  v5 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state);
  if (v5 <= 1)
  {
    if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state))
    {
      v6 = 0xE700000000000000;
      v7 = 0x676E696E6E7552;
    }

    else
    {
      v6 = 0xEC000000676E697ALL;
      v7 = 0x696C616974696E49;
    }
  }

  else
  {
    if (v5 == 2)
    {
      v7 = 0x6574656C706D6F43;
    }

    else
    {
      if (v5 == 3)
      {
        v6 = 0xEA0000000000676ELL;
        v7 = 0x696C6C65636E6143;
        goto LABEL_11;
      }

      v7 = 0x656C6C65636E6143;
    }

    v6 = 0xE900000000000064;
  }

LABEL_11:
  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000022FCE02A0;
  v9 = *(v2 + 16);
  v10 = MEMORY[0x277D83B88];
  *(inited + 96) = v9;
  *(inited + 120) = v10;
  strcpy((inited + 128), "Task submitted");
  *(inited + 143) = -18;
  v11 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = MEMORY[0x277D84F90];

    sub_22FA86EA8(0, v9, 0);
    v11 = v25;
    v12 = v2 + 32;
    do
    {
      sub_22FA2D328(v12, (v0 + 24));
      v13 = v0[27];
      v14 = v0[28];
      __swift_project_boxed_opaque_existential_1(v0 + 24, v13);
      v26 = (*(v14 + 40))(v13, v14);
      v27 = v15;
      MEMORY[0x231907FA0](10272, 0xE200000000000000);
      v16 = v0[27];
      v17 = v0[28];
      __swift_project_boxed_opaque_existential_1(v0 + 24, v16);
      v18 = (*(v17 + 48))(v16, v17);
      MEMORY[0x231907FA0](v18);

      MEMORY[0x231907FA0](41, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_0(v0 + 24);
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22FA86EA8((v19 > 1), v20 + 1, 1);
      }

      *(v25 + 16) = v20 + 1;
      v21 = v25 + 16 * v20;
      *(v21 + 32) = v26;
      *(v21 + 40) = v27;
      v12 += 40;
      --v9;
    }

    while (v9);
  }

  *(v4 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
  *(v4 + 144) = v11;
  v22 = sub_22FA4DAB0(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  swift_arrayDestroy();
  v23 = v0[1];

  return v23(v22);
}

uint64_t getEnumTagSinglePayload for StateHolder.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateHolder.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FA5EB1C()
{
  result = qword_27DAD7440;
  if (!qword_27DAD7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7440);
  }

  return result;
}

uint64_t sub_22FA5EB70()
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FA5EBDC(uint64_t a1)
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FA5EC2C(void *a1, uint64_t *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier) && v2[1] == *(*a2 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FA5EC9C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FB0F660(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22FCC96B4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22FCC8C74();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22FA60470(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22FA5EDD0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_22FA4D998(MEMORY[0x277D84F90]);
  v4 = v3;
  v79 = v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v3;
    v4 = a1 + 32;
    while (1)
    {
      sub_22FA2D328(v4, v76);
      sub_22FA2D328(v76, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7458, &qword_22FCD24B8);
      v7 = swift_allocObject();
      *(v7 + 56) = v2;
      sub_22FA2CF78(v75, v7 + 16);

      MEMORY[0x231908070](v8);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
        v2 = MEMORY[0x277D84F90];
      }

      sub_22FCC8C84();
      v9 = v79;
      v10 = v77;
      v11 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v12 = (*(v11 + 88))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v76);
      *&v75[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320, &unk_22FCD8BA0);
      v13 = sub_22FCC8AE4();
      v15 = v14;
      if (v6[2])
      {

        v16 = sub_22FA2DB54(v13, v15);
        if (v17)
        {
          v2 = *(v6[7] + 8 * v16);
        }
      }

      *&v75[0] = v2;

      MEMORY[0x231908070](v18);
      if (*((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      sub_22FCC8C84();
      v19 = *&v75[0];
      v20 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_22FA2DB54(v13, v15);
      v24 = v20[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
LABEL_77:
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
        v36 = sub_22FCC92C4();
        v35 = v19;
        if (!v36)
        {
          goto LABEL_84;
        }

LABEL_27:
        v69 = v35 & 0xC000000000000001;
        v64 = v35 + 32;
        v65 = v35 & 0xFFFFFFFFFFFFFF8;

        v37 = v19;
        v38 = 0;
        v39 = MEMORY[0x277D84F90];
        v67 = v36;
        v68 = v19;
        v71 = v4;
        do
        {
          if (v69)
          {
            v40 = MEMORY[0x231908810](v38, v37);
            v26 = __OFADD__(v38++, 1);
            if (v26)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (v38 >= *(v65 + 16))
            {
              goto LABEL_82;
            }

            v40 = *(v64 + 8 * v38);

            v26 = __OFADD__(v38++, 1);
            if (v26)
            {
              goto LABEL_80;
            }
          }

          v41 = v40[5];
          v42 = v40[6];
          __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
          v19 = *((*(v42 + 80))(v41, v42) + 16);

          if (v19)
          {
            v70 = v38;
            v43 = v40[5];
            v44 = v40[6];
            __swift_project_boxed_opaque_existential_1(v40 + 2, v43);
            v45 = (*(v44 + 80))(v43, v44);
            v46 = v45;
            v74 = *(v45 + 16);
            if (v74)
            {
              v66 = v39;
              v47 = 0;
              v19 = 0;
              v72 = v45;
              v73 = v45 + 32;
              do
              {
                if (v19 >= *(v46 + 16))
                {
                  goto LABEL_76;
                }

                v76[0] = *(v73 + 8 * v19);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320, &unk_22FCD8BA0);
                v48 = sub_22FCC8AE4();
                if (*(v4 + 16))
                {
                  v50 = sub_22FA2DB54(v48, v49);
                  v52 = v51;

                  if (v52)
                  {
                    v53 = *(*(v4 + 56) + 8 * v50);
                    if (v53 >> 62)
                    {
                      v54 = sub_22FCC92C4();
                      if (v54)
                      {
LABEL_48:
                        if ((v53 & 0xC000000000000001) != 0)
                        {
                          if (v54 < 1)
                          {
                            goto LABEL_78;
                          }

                          v55 = 0;
                          while (1)
                          {
                            v56 = MEMORY[0x231908810](v55, v53);
                            swift_beginAccess();

                            MEMORY[0x231908070](v57);
                            v4 = *((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
                            if (v4 >= *((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_22FCC8C64();
                            }

                            sub_22FCC8C84();
                            swift_endAccess();
                            swift_unknownObjectRelease();
                            if (v47 == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              break;
                            }

                            ++v55;
                            ++v47;
                            if (v54 == v55)
                            {

                              v4 = v71;
                              goto LABEL_41;
                            }
                          }

                          __break(1u);
                        }

                        else
                        {
                          if (v54 < 1)
                          {
                            goto LABEL_81;
                          }

                          v58 = 32;
                          while (1)
                          {
                            v59 = *(v53 + v58);
                            swift_beginAccess();

                            MEMORY[0x231908070](v60);
                            if (*((*(v59 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v59 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_22FCC8C64();
                              v4 = v71;
                            }

                            sub_22FCC8C84();
                            swift_endAccess();

                            if (v47 == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              break;
                            }

                            ++v47;
                            v58 += 8;
                            if (!--v54)
                            {

                              goto LABEL_41;
                            }
                          }
                        }

                        __break(1u);
LABEL_76:
                        __break(1u);
                        goto LABEL_77;
                      }
                    }

                    else
                    {
                      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v54)
                      {
                        goto LABEL_48;
                      }
                    }
                  }

LABEL_41:
                  v46 = v72;
                }

                else
                {
                }

                ++v19;
              }

              while (v19 != v74);

              if (!v47)
              {
                goto LABEL_70;
              }

              v39 = v66;
              v36 = v67;
            }

            else
            {

LABEL_70:

              MEMORY[0x231908070](v62);
              if (*((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v19 = *((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22FCC8C64();
              }

              sub_22FCC8C84();

              v39 = *&v75[0];
              v36 = v67;
            }

            v38 = v70;
          }

          else
          {

            MEMORY[0x231908070](v61);
            if (*((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v19 = *((*&v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22FCC8C64();
            }

            sub_22FCC8C84();

            v39 = *&v75[0];
          }

          v37 = v68;
        }

        while (v38 != v36);

        goto LABEL_85;
      }

      v28 = v23;
      if (v20[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v34 = v22;
      sub_22FA70344();
      v22 = v34;
      v30 = v20;
      if (v28)
      {
LABEL_3:
        v6 = v30;
        *(v30[7] + 8 * v22) = v19;

        goto LABEL_4;
      }

LABEL_19:
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v30[6] + 16 * v22);
      *v31 = v13;
      v31[1] = v15;
      *(v30[7] + 8 * v22) = v19;
      v32 = v30[2];
      v26 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v26)
      {
        goto LABEL_79;
      }

      v6 = v30;
      v30[2] = v33;

LABEL_4:
      v4 += 40;
      --v5;
      v2 = MEMORY[0x277D84F90];
      if (!v5)
      {
        v4 = v6;
        v35 = v9;
        goto LABEL_25;
      }
    }

    sub_22FA6BE64(v27, isUniquelyReferenced_nonNull_native);
    v22 = sub_22FA2DB54(v13, v15);
    if ((v28 & 1) != (v29 & 1))
    {
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }

LABEL_18:
    v30 = v20;
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

  v35 = v2;
LABEL_25:
  *&v75[0] = v2;
  v19 = v35;
  if (v35 >> 62)
  {
    goto LABEL_83;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    goto LABEL_27;
  }

LABEL_84:
  v39 = MEMORY[0x277D84F90];
LABEL_85:

  return v39;
}

unint64_t sub_22FA5F640(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_22FCC92C4();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_22FB07334(v6);
    }

    v16 = v6[2];
    v18[0] = (v6 + 4);
    v18[1] = v16;
    sub_22FA60268(v18, (a2 + 16));
    v17 = sub_22FA590EC(v6);

    return v17;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231908810](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22FCD1F90;
      *(v8 + 32) = v7;
      v18[0] = v8;
      swift_beginAccess();
      v9 = *(v7 + 56);
      if (v9 >> 62)
      {
        if (sub_22FCC92C4() < 1)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_12;
      }

      v11 = sub_22FA5F640(v10, a2);

      sub_22FA688C8(v11, v12);
LABEL_13:
      v13 = v18[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22FAC2398(0, v6[2] + 1, 1, v6);
      }

      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v6 = sub_22FAC2398((v14 > 1), v15 + 1, 1, v6);
      }

      ++v5;

      v6[2] = v15 + 1;
      v6[v15 + 4] = v13;
      if (v4 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FA5F89C(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v3 = a2;
    v118 = sub_22FCC92C4();
    a2 = v3;
    v5 = v118;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v127 = a2;
  if (v5)
  {
    v128 = MEMORY[0x277D84F90];
    sub_22FA8719C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

    v7 = 0;
    v6 = v128;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x231908810](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8[5];
      v10 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
      v11 = (*(v10 + 72))(v9, v10);

      v128 = v6;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_22FA8719C((v12 > 1), v13 + 1, 1);
        v6 = v128;
      }

      ++v7;
      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v11;
    }

    while (v5 != v7);
    a2 = v127;
  }

  v124 = v5;
  if (a2 >> 62)
  {
    v119 = a2;
    v120 = sub_22FCC92C4();
    a2 = v119;
    v3 = v120;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v126 = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v15 = a2;
  v128 = MEMORY[0x277D84F90];
  sub_22FA8719C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v16 = 0;
  v14 = v128;
  a2 = v15;
  v17 = v15 & 0xC000000000000001;
  do
  {
    if (v17)
    {
      v18 = MEMORY[0x231908810](v16, a2);
    }

    else
    {
      v18 = *(a2 + 8 * v16 + 32);
    }

    v20 = v18[5];
    v19 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v20);
    v21 = (*(v19 + 72))(v20, v19);

    v128 = v14;
    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      sub_22FA8719C((v22 > 1), v23 + 1, 1);
      v14 = v128;
    }

    ++v16;
    *(v14 + 2) = v23 + 1;
    *&v14[8 * v23 + 32] = v21;
    a2 = v127;
  }

  while (v126 != v16);
LABEL_24:
  v24 = *(v6 + 2);
  if (!v24)
  {
    v27 = a2;
    v25 = 0;
    goto LABEL_37;
  }

  v25 = *(v6 + 4);
  v26 = v24 - 1;
  if (v24 == 1)
  {
    v27 = a2;
    goto LABEL_37;
  }

  if (v24 >= 5)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v29 = vdupq_n_s64(v25);
    v30 = (v6 + 56);
    v31 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = v29;
    do
    {
      v29 = vbslq_s8(vcgtq_s64(v29, v30[-1]), v29, v30[-1]);
      v32 = vbslq_s8(vcgtq_s64(v32, *v30), v32, *v30);
      v30 += 2;
      v31 -= 4;
    }

    while (v31);
    v27 = a2;
    v33 = vbslq_s8(vcgtq_s64(v29, v32), v29, v32);
    v34 = vextq_s8(v33, v33, 8uLL).u64[0];
    v25 = vbsl_s8(vcgtd_s64(v33.i64[0], v34), *v33.i8, v34);
    if (v26 == (v26 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v27 = a2;
    v28 = 1;
  }

  v35 = v24 - v28;
  v36 = &v6[8 * v28 + 32];
  do
  {
    v38 = *v36++;
    v37 = v38;
    if (v25 <= v38)
    {
      v25 = v37;
    }

    --v35;
  }

  while (v35);
LABEL_37:

  v39 = *(v14 + 2);
  if (!v39)
  {

    v42 = v122;
    if (!v25)
    {
      goto LABEL_51;
    }

    v40 = 0;
LABEL_60:
    v66 = v40 < v25;
    return v66 & 1;
  }

  v40 = *(v14 + 4);
  v41 = v39 - 1;
  v42 = v122;
  if (v39 != 1)
  {
    if (v39 >= 5)
    {
      v43 = v41 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v44 = vdupq_n_s64(v40);
      v45 = (v14 + 56);
      v46 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = v44;
      do
      {
        v44 = vbslq_s8(vcgtq_s64(v44, v45[-1]), v44, v45[-1]);
        v47 = vbslq_s8(vcgtq_s64(v47, *v45), v47, *v45);
        v45 += 2;
        v46 -= 4;
      }

      while (v46);
      v48 = vbslq_s8(vcgtq_s64(v44, v47), v44, v47);
      v49 = vextq_s8(v48, v48, 8uLL).u64[0];
      v40 = vbsl_s8(vcgtd_s64(v48.i64[0], v49), *v48.i8, v49);
      if (v41 == (v41 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v43 = 1;
    }

    v50 = v39 - v43;
    v51 = &v14[8 * v43 + 32];
    do
    {
      v53 = *v51++;
      v52 = v53;
      if (v40 <= v53)
      {
        v40 = v52;
      }

      --v50;
    }

    while (v50);
  }

LABEL_50:

  if (v25 != v40)
  {
    goto LABEL_60;
  }

LABEL_51:
  v54 = sub_22FA58EC8(a1, a3);
  v55 = sub_22FA58EC8(v27, a3);
  v56 = *(v54 + 2);
  if (v56)
  {
    v57 = *(v54 + 4);
    v58 = v56 - 1;
    v59 = v124;
    if (v56 != 1)
    {
      v60 = (v54 + 40);
      do
      {
        v61 = *v60++;
        v62 = v61;
        if (v57 < v61)
        {
          v57 = v62;
        }

        --v58;
      }

      while (v58);
    }

    v64 = (v55 + 16);
    v63 = *(v55 + 2);
    if (!v63)
    {
      if (v57 != 0.0)
      {

        v65 = 0.0;
LABEL_101:
        v66 = v65 < v57;
        return v66 & 1;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v64 = (v55 + 16);
    v63 = *(v55 + 2);
    v59 = v124;
    if (!v63)
    {
LABEL_72:
      v71 = v55;

      v57 = 0.0;
      goto LABEL_80;
    }

    v57 = 0.0;
  }

  v65 = *(v55 + 4);
  v67 = v63 - 1;
  if (v67)
  {
    v68 = (v55 + 40);
    do
    {
      v69 = *v68++;
      v70 = v69;
      if (v65 < v69)
      {
        v65 = v70;
      }

      --v67;
    }

    while (v67);
  }

  if (v57 != v65)
  {

    goto LABEL_101;
  }

LABEL_69:
  if (!v56)
  {
    goto LABEL_72;
  }

  if (v56 > 3)
  {
    v72 = v56 & 0x7FFFFFFFFFFFFFFCLL;
    v73 = (v54 + 48);
    v57 = 0.0;
    v74 = v56 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v57 = v57 + *(v73 - 2) + *(v73 - 1) + *v73 + v73[1];
      v73 += 4;
      v74 -= 4;
    }

    while (v74);
    v71 = v55;
    if (v56 == v72)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v71 = v55;
    v72 = 0;
    v57 = 0.0;
  }

  v75 = v56 - v72;
  v76 = &v54[8 * v72 + 32];
  do
  {
    v77 = *v76++;
    v57 = v57 + v77;
    --v75;
  }

  while (v75);
LABEL_79:

LABEL_80:
  v78 = *v64;
  if (*v64)
  {
    v3 = v127;
    if (v78 > 3)
    {
      v79 = v78 & 0x7FFFFFFFFFFFFFFCLL;
      v80 = (v71 + 48);
      v65 = 0.0;
      v81 = v78 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v65 = v65 + *(v80 - 2) + *(v80 - 1) + *v80 + v80[1];
        v80 += 4;
        v81 -= 4;
      }

      while (v81);
      if (v78 == v79)
      {
LABEL_90:

        if (v57 != v65)
        {
          goto LABEL_101;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v79 = 0;
      v65 = 0.0;
    }

    v82 = v78 - v79;
    v83 = &v71[8 * v79 + 32];
    do
    {
      v84 = *v83++;
      v65 = v65 + v84;
      --v82;
    }

    while (v82);
    goto LABEL_90;
  }

  v3 = v127;
  if (v57 != 0.0)
  {
    v65 = 0.0;
    goto LABEL_101;
  }

LABEL_91:
  v85 = MEMORY[0x277D84F90];
  if (!v59)
  {
    v96 = v3;
    goto LABEL_103;
  }

  v123 = v42;
  v128 = MEMORY[0x277D84F90];
  sub_22FA86EA8(0, v59 & ~(v59 >> 63), 0);
  if (v59 < 0)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v86 = 0;
  v85 = v128;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x231908810](v86, a1);
    }

    else
    {
      v87 = *(a1 + 8 * v86 + 32);
    }

    v88 = v87[5];
    v89 = v87[6];
    __swift_project_boxed_opaque_existential_1(v87 + 2, v88);
    v90 = (*(v89 + 40))(v88, v89);
    v92 = v91;

    v128 = v85;
    v94 = *(v85 + 2);
    v93 = *(v85 + 3);
    if (v94 >= v93 >> 1)
    {
      sub_22FA86EA8((v93 > 1), v94 + 1, 1);
      v85 = v128;
    }

    ++v86;
    *(v85 + 2) = v94 + 1;
    v95 = &v85[16 * v94];
    *(v95 + 4) = v90;
    *(v95 + 5) = v92;
  }

  while (v124 != v86);
  v42 = v123;
  v96 = v127;
LABEL_103:
  v128 = v85;

  sub_22FA31B18(&v128);
  v3 = v42;
  if (!v42)
  {

    v125 = v128;
    v97 = MEMORY[0x277D84F90];
    if (!v126)
    {
LABEL_113:
      v128 = v97;

      sub_22FA31B18(&v128);

      v110 = v128;
      v128 = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
      sub_22FA2CF90(&qword_28147AF28, &qword_27DAD7448, &qword_22FCD2C50, MEMORY[0x277D83958]);
      v111 = sub_22FCC8A24();
      v113 = v112;

      v128 = v110;
      v114 = sub_22FCC8A24();
      v116 = v115;

      if (v114 == v111 && v116 == v113)
      {

        v66 = 0;
      }

      else
      {
        v66 = sub_22FCC9704();
      }

      return v66 & 1;
    }

    v128 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v126 & ~(v126 >> 63), 0);
    if ((v126 & 0x8000000000000000) == 0)
    {
      v98 = 0;
      v97 = v128;
      v99 = v96;
      v100 = v96 & 0xC000000000000001;
      do
      {
        if (v100)
        {
          v101 = MEMORY[0x231908810](v98, v99);
        }

        else
        {
          v101 = *(v99 + 8 * v98 + 32);
        }

        v102 = v101[5];
        v103 = v101[6];
        __swift_project_boxed_opaque_existential_1(v101 + 2, v102);
        v104 = (*(v103 + 40))(v102, v103);
        v106 = v105;

        v128 = v97;
        v108 = *(v97 + 2);
        v107 = *(v97 + 3);
        if (v108 >= v107 >> 1)
        {
          sub_22FA86EA8((v107 > 1), v108 + 1, 1);
          v97 = v128;
        }

        ++v98;
        *(v97 + 2) = v108 + 1;
        v109 = &v97[16 * v108];
        *(v109 + 4) = v104;
        *(v109 + 5) = v106;
        v99 = v127;
      }

      while (v126 != v98);
      goto LABEL_113;
    }

    goto LABEL_123;
  }

LABEL_124:

  __break(1u);
  return result;
}

uint64_t sub_22FA60268(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_22FCC96B4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B0, &unk_22FCD6400);
        v7 = sub_22FCC8C74();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_22FA609BC(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_22FA6037C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_22FA6037C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v17 = v10;
    v18 = v9;
    while (1)
    {
      v12 = *v9;

      v13 = sub_22FA5F89C(v11, v12, a5);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v14 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v14;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 1;
      v10 = v17 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_22FA60470(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22FB0EF2C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22FA61038((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FAC21FC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_22FAC21FC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22FA61038((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_22FA609BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v92 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v6 = *v92;
    if (*v92)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_20;
    }

    v93 = v7;
    v11 = *a3;
    v12 = *(*a3 + 8 * v8);
    v13 = *(*a3 + 8 * v10);

    v14 = sub_22FA5F89C(v12, v13, a5);
    if (v5)
    {
LABEL_100:
    }

    v15 = v14;

    v16 = v10 + 2;
    v90 = v10;
    v17 = 8 * v10;
    v6 = v11 + v17 + 16;
    while (1)
    {
      v8 = v93;
      if (v93 == v16)
      {
        break;
      }

      v18 = *(v6 - 8);
      v19 = *v6;

      v20 = sub_22FA5F89C(v19, v18, a5);

      ++v16;
      v6 += 8;
      if ((v15 ^ v20))
      {
        v8 = v16 - 1;
        break;
      }
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_18;
    }

    v21 = v90;
    if (v8 < v90)
    {
      goto LABEL_123;
    }

    if (v90 < v8)
    {
      v22 = 8 * v8 - 8;
      v23 = v8;
      do
      {
        if (v21 != --v23)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v25 = *(v24 + v17);
          *(v24 + v17) = *(v24 + v22);
          *(v24 + v22) = v25;
        }

        ++v21;
        v22 -= 8;
        v17 += 8;
      }

      while (v21 < v23);
LABEL_18:
      v10 = v90;
      goto LABEL_20;
    }

    v10 = v90;
LABEL_20:
    v26 = a3[1];
    if (v8 >= v26)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_119;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_132;
    }

    v27 = v10 + a4;
    if (__OFADD__(v10, a4))
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

    if (v27 >= v26)
    {
      v27 = a3[1];
    }

    if (v27 < v10)
    {
      goto LABEL_122;
    }

    if (v8 == v27)
    {
LABEL_132:
      if (v8 < v10)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v6 = *a3;
      v74 = *a3 + 8 * v8 - 8;
      v91 = v10;
      v75 = v10 - v8;
      v87 = v27;
      do
      {
        v76 = *(v6 + 8 * v8);
        v88 = v75;
        v94 = v74;
        v77 = v74;
        do
        {
          v78 = *v77;

          v79 = sub_22FA5F89C(v76, v78, a5);
          if (v5)
          {
            goto LABEL_100;
          }

          v80 = v79;

          if ((v80 & 1) == 0)
          {
            break;
          }

          if (!v6)
          {
            goto LABEL_125;
          }

          v81 = *v77;
          v76 = v77[1];
          *v77 = v76;
          v77[1] = v81;
          --v77;
        }

        while (!__CFADD__(v75++, 1));
        ++v8;
        v74 = v94 + 8;
        v75 = v88 - 1;
      }

      while (v8 != v87);
      v8 = v87;
      v10 = v91;
      if (v87 < v91)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FAC21FC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_22FAC21FC((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    if (v30 >= 4)
    {
      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_105;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_106;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_108;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v30 == 3)
    {
      v34 = *(v9 + 4);
      v35 = *(v9 + 5);
      v44 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      v37 = v44;
LABEL_48:
      if (v37)
      {
        goto LABEL_107;
      }

      v50 = &v9[16 * v30];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      v55 = v53;
      if (v53)
      {
        goto LABEL_110;
      }

      v56 = &v9[16 * v33 + 32];
      v58 = *v56;
      v57 = *(v56 + 1);
      v44 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v44)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v54, v59))
      {
        goto LABEL_114;
      }

      if (v54 + v59 >= v36)
      {
        if (v36 < v59)
        {
          v33 = v30 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v60 = &v9[16 * v30];
    v62 = *v60;
    v61 = *(v60 + 1);
    v44 = __OFSUB__(v61, v62);
    v54 = v61 - v62;
    v55 = v44;
LABEL_62:
    if (v55)
    {
      goto LABEL_109;
    }

    v63 = &v9[16 * v33];
    v65 = *(v63 + 4);
    v64 = *(v63 + 5);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_112;
    }

    if (v66 < v54)
    {
      goto LABEL_3;
    }

LABEL_69:
    v71 = v33 - 1;
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v72 = *&v9[16 * v71 + 32];
    v6 = *&v9[16 * v33 + 40];
    sub_22FA6122C((*a3 + 8 * v72), (*a3 + 8 * *&v9[16 * v33 + 32]), (*a3 + 8 * v6), v32, a5);
    if (v5)
    {
    }

    if (v6 < v72)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FB0EF2C(v9);
    }

    if (v71 >= *(v9 + 2))
    {
      goto LABEL_104;
    }

    v73 = &v9[16 * v71];
    *(v73 + 4) = v72;
    *(v73 + 5) = v6;
    result = sub_22FB0EEA0(v33);
    v30 = *(v9 + 2);
    if (v30 <= 1)
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
  result = sub_22FB0EF2C(v9);
  v9 = result;
LABEL_91:
  v83 = *(v9 + 2);
  if (v83 < 2)
  {
  }

  while (*a3)
  {
    v84 = *&v9[16 * v83];
    v85 = *&v9[16 * v83 + 24];
    sub_22FA6122C((*a3 + 8 * v84), (*a3 + 8 * *&v9[16 * v83 + 16]), (*a3 + 8 * v85), v6, a5);
    if (v5)
    {
    }

    if (v85 < v84)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FB0EF2C(v9);
    }

    if (v83 - 2 >= *(v9 + 2))
    {
      goto LABEL_116;
    }

    v86 = &v9[16 * v83];
    *v86 = v84;
    *(v86 + 1) = v85;
    result = sub_22FB0EEA0(v83 - 1);
    v83 = *(v9 + 2);
    if (v83 <= 1)
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

uint64_t sub_22FA61038(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_22FA6122C(char *__dst, uint64_t *a2, char *a3, unint64_t a4, uint64_t *a5)
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
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v18 = *v17;
      v19 = *v15;

      v20 = sub_22FA5F89C(v18, v19, a5);
      if (v5)
      {

        v36 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v36 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v36 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v37 = 8 * (v36 >> 3);
          v38 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v17;
      v23 = v7 == v17++;
      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v22 = v15;
    v23 = v7 == v15++;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v22;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v24 = a2;
    v25 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v25;
    a2 = v24;
  }

  v46 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v26 = -a4;
  v44 = -a4;
LABEL_28:
  v45 = a2;
  v27 = (a2 - 1);
  v28 = v16 + v26;
  v6 -= 8;
  v47 = v16;
  v29 = v16;
  while (1)
  {
    v30 = *--v29;
    v31 = v27;
    v32 = *v27;

    v33 = sub_22FA5F89C(v30, v32, a5);

    if (v5)
    {
      break;
    }

    v34 = (v6 + 8);
    if (v33)
    {
      v35 = v31;
      if (v34 != v45)
      {
        *v6 = *v31;
      }

      v15 = v46;
      v16 = v47;
      if (v47 <= v46 || (a2 = v35, v26 = v44, v35 <= v7))
      {
        a2 = v35;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v34 != v47)
    {
      *v6 = *v29;
    }

    v28 -= 8;
    v6 -= 8;
    v47 = v29;
    v27 = v31;
    if (v29 <= v46)
    {
      v16 = v29;
      a2 = v45;
      v15 = v46;
LABEL_54:
      v42 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v42 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v42 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        return 1;
      }

      v37 = 8 * (v42 >> 3);
      v38 = a2;
LABEL_60:
      v41 = v15;
LABEL_61:
      memmove(v38, v41, v37);
      return 1;
    }
  }

  if (v28 >= 0)
  {
    v39 = v28;
  }

  else
  {
    v39 = v28 + 7;
  }

  v40 = v39 >> 3;
  v38 = v45;
  v41 = v46;
  if (v45 < v46 || v45 >= (v46 + (v39 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v45, v46, 8 * v40);
    return 1;
  }

  if (v45 != v46)
  {
    v37 = 8 * v40;
    goto LABEL_61;
  }

  return 1;
}

uint64_t sub_22FA615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v6 = *(a3 - 8);
  v4[10] = v6;
  v4[11] = swift_task_alloc();
  (*(v6 + 16))();

  return MEMORY[0x2822009F8](sub_22FA616C0, a2, 0);
}

uint64_t sub_22FA616C0()
{
  if ((*(v0[9] + 112))(v0[8]))
  {
    (*(v0[9] + 32))(v0[8]);
    v1 = v0[5];
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v3 = (*(v2 + 56))(v1, v2);
    v0[12] = v3;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    return MEMORY[0x2822009F8](sub_22FA6180C, v3, 0);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[8]);

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_22FA6180C()
{
  v1 = *(v0 + 56);
  *(v0 + 104) = sub_22FC36DC0(*(v0 + 88), *(v0 + 96), *(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_22FA61884, v1, 0);
}

uint64_t sub_22FA61884()
{

  v1 = *(v0 + 104);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22FA61910(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC8684() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22FA2C030;

  return sub_22FA5DABC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_22FA61A4C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FA2C21C;

  return sub_22FA5E048(a1, a2, v7, v6);
}

uint64_t sub_22FA61B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA5E428(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FA61BC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivitySession(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FA61C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FC1C8D8(a1, v4, v1 + 24);
}

unint64_t sub_22FA61CB0()
{
  result = qword_281480D18;
  if (!qword_281480D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281480D18);
  }

  return result;
}

uint64_t sub_22FA61D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD83A0, &qword_22FCD1AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FA61D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FA59958();
}

void *sub_22FA61E28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21[3] = a5;
  v21[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  swift_defaultActor_initialize();
  a4[14] = MEMORY[0x277D84F90];
  sub_22FCC8674();
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state) = 0;
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskSubmissionTask) = 0;
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_cancellationTask) = 0;
  v12 = a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  sub_22FA2D328(v21, (a4 + 15));
  a4[20] = a2;
  a4[21] = a3;

  v19 = sub_22FCC9904();
  v20 = v13;
  MEMORY[0x231907FA0](46, 0xE100000000000000);
  sub_22FA2D328((a4 + 15), v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v14 = sub_22FCC9904();
  MEMORY[0x231907FA0](v14);

  v15 = v20;
  v16 = (a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier);
  *v16 = v19;
  v16[1] = v15;
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state) = 1;
  if (qword_281480D28 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return a4;
}

void *sub_22FA62068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v21 - v16;
  (*(v10 + 32))(&v21 - v16, v15);
  type metadata accessor for ActivitySession(0);
  v18 = swift_allocObject();
  (*(v10 + 16))(v12, v17, a5);
  v19 = sub_22FA61E28(v12, a2, a3, v18, a5, a6);
  (*(v10 + 8))(v17, a5);
  return v19;
}

unint64_t sub_22FA621E4()
{
  result = qword_27DAD7468;
  if (!qword_27DAD7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7468);
  }

  return result;
}

void sub_22FA62250()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_22FCC8A54();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    v4 = sub_22FCC89D4();

    sub_22FC14E20(v4);
    v6 = v5;

    if (v6)
    {
      sub_22FA624EC(v6);
      v7 = [v0 standardUserDefaults];
      v8 = sub_22FCC8A54();
      [v7 removeObjectForKey_];

      oslog = sub_22FCC8664();
      v9 = sub_22FCC8F34();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
        v12 = sub_22FCC89E4();
        v14 = v13;

        v15 = sub_22FA2F600(v12, v14, &v17);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_22FA28000, oslog, v9, "Successfully migrated legacy store with: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23190A000](v11, -1, -1);
        MEMORY[0x23190A000](v10, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_22FA624EC(uint64_t a1)
{
  v44 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v44, v2);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v42 = &v31 - v6;
  v41 = sub_22FCC6524();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22FCC65F4();
  MEMORY[0x28223BE20](v38, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v39 = &v31 - v16;
  v17 = *(a1 + 64);
  v32 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v37 = *MEMORY[0x277CC91C0];
  v35 = (v15 + 56);
  v36 = (v7 + 104);
  v33 = (v15 + 8);
  v34 = (v15 + 16);
  v45 = a1;

  v22 = 0;
  v23 = v39;
  if (v20)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      sub_22FA631E8();
      return;
    }

    v20 = *(v32 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      do
      {
LABEL_9:
        v20 &= v20 - 1;
        (*v36)(v40, v37, v41);
        v25 = v38;
        (*v35)(v42, 1, 1, v38);

        sub_22FCC65D4();
        v26 = *v34;
        (*v34)(v12, v23, v25);
        v27 = v43;
        v26(&v43[*(v44 + 20)], v12, v25);
        v28 = objc_opt_self();
        v29 = sub_22FCC6564();
        LOBYTE(v28) = [v28 isSystemPhotoLibraryURL_];

        v30 = *v33;
        (*v33)(v12, v25);
        *v27 = v28;
        sub_22FA9EFB8(v27, v46);
        sub_22FA64AB0(v27);
        v30(v23, v25);
      }

      while (v20);
      continue;
    }
  }

  __break(1u);
}

void sub_22FA628FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v51 = &v41 - v4;
  v49 = sub_22FCC6524();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22FCC65F4();
  MEMORY[0x28223BE20](v52, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v15 = &v41 - v14;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v48 = (v13 + 56);
  v45 = *MEMORY[0x277CC91D8];
  v47 = (v5 + 104);
  v44 = *MEMORY[0x277CC91C0];
  v46 = (v13 + 16);
  v43 = (v13 + 8);

  v20 = 0;
  while (v18)
  {
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(a1 + 56) + ((v20 << 9) | (8 * v22)));
    if (*(v23 + 16))
    {

      v24 = sub_22FA2DB54(0x6E6F6973726576, 0xE700000000000000);
      if ((v25 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_22FA2F7D8(*(v23 + 56) + 32 * v24, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v57 != 1)
      {
        goto LABEL_4;
      }

      if (!*(v23 + 16))
      {
        goto LABEL_4;
      }

      v26 = sub_22FA2DB54(0x656372756F736572, 0xEC00000068746150);
      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_22FA2F7D8(*(v23 + 56) + 32 * v26, v54);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v42 = v58;
      if (!*(v23 + 16) || (v41 = v57, v28 = sub_22FA2DB54(0x656372756F736572, 0xEC00000065707954), (v29 & 1) == 0))
      {

        goto LABEL_4;
      }

      sub_22FA2F7D8(*(v23 + 56) + 32 * v28, v54);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v30 = sub_22FCC9554();

      if (v30)
      {
        if (v30 == 1)
        {
          (*v48)(v51, 1, 1, v52);
          (*v47)(v50, v45, v49);
          v31 = type metadata accessor for MomentGraphResource(0);
          v55 = v31;
          v56 = sub_22FA64A48(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
          sub_22FCC65D4();
          *(boxed_opaque_existential_1 + *(v31 + 20)) = 1;
          goto LABEL_26;
        }

LABEL_4:
      }

      else
      {
        (*v47)(v50, v44, v49);
        (*v48)(v51, 1, 1, v52);
        sub_22FCC65D4();
        v33 = *v46;
        (*v46)(v10, v15, v52);
        v34 = type metadata accessor for PhotoLibraryResource(0);
        v55 = v34;
        v56 = sub_22FA64A48(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
        v42 = __swift_allocate_boxed_opaque_existential_1(v54);
        v33(v42 + *(v34 + 20), v10, v52);
        v35 = objc_opt_self();
        v36 = sub_22FCC6564();
        LODWORD(v41) = [v35 isSystemPhotoLibraryURL_];

        v37 = *v43;
        (*v43)(v10, v52);
        *v42 = v41;
        v37(v15, v52);
LABEL_26:
        v38 = v55;
        v39 = v56;
        v40 = __swift_project_boxed_opaque_existential_1(v54, v55);
        sub_22FA644F8(v40, v53, v38, v39);
        __swift_destroy_boxed_opaque_existential_0(v54);
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      sub_22FA631E8();
      return;
    }

    v18 = *(a1 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22FA62F5C(char a1)
{
  v2 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  if (a1 == 2)
  {
    swift_beginAccess();

    return;
  }

  swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v4 + 16);

  if (!v5)
  {
LABEL_32:

    return;
  }

  v6 = 0;
  v7 = v4 + 32;
  v8 = (a1 & 1) == 0;
  if (a1)
  {
    v9 = 0x7247746E656D6F6DLL;
  }

  else
  {
    v9 = 0x62694C6F746F6870;
  }

  if (v8)
  {
    v10 = 0xEC00000079726172;
  }

  else
  {
    v10 = 0xEB00000000687061;
  }

  v11 = MEMORY[0x277D84F90];
  while (v6 < *(v4 + 16))
  {
    sub_22FA2D328(v7, &v24);
    v12 = v25;
    v13 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v14 = (*(v13 + 24))(v12, v13);
    v15 = (v14 & 1) == 0;
    if (v14)
    {
      v16 = 0x7247746E656D6F6DLL;
    }

    else
    {
      v16 = 0x62694C6F746F6870;
    }

    if (v15)
    {
      v17 = 0xEC00000079726172;
    }

    else
    {
      v17 = 0xEB00000000687061;
    }

    if (v16 == v9 && v17 == v10)
    {

LABEL_27:
      sub_22FA2CF78(&v24, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22FA870BC(0, *(v11 + 16) + 1, 1);
        v11 = v27;
      }

      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FA870BC((v21 > 1), v22 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v22 + 1;
      sub_22FA2CF78(v23, v11 + 40 * v22 + 32);
      goto LABEL_12;
    }

    v19 = sub_22FCC9704();

    if (v19)
    {
      goto LABEL_27;
    }

    __swift_destroy_boxed_opaque_existential_0(&v24);
LABEL_12:
    ++v6;
    v7 += 40;
    if (v5 == v6)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
}

void sub_22FA631E8()
{
  v70 = sub_22FCC65F4();
  v1 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v2);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  swift_beginAccess();
  v5 = *(*(v0 + v4) + 16);

  v68 = v5;
  if (!v5)
  {
LABEL_27:

    v63 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
    v64 = sub_22FCC89C4();

    v65 = sub_22FCC8A54();
    [v63 setValue:v64 forKey:v65];

    return;
  }

  v7 = 0;
  v8 = v6 + 32;
  v67 = (v1 + 8);
  v9 = MEMORY[0x277D84F98];
  v66 = v6;
  while (v7 < *(v6 + 16))
  {
    v71 = v8;
    sub_22FA2D328(v8, v85);
    v10 = v86;
    v11 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v72 = (*(v11 + 16))(v10, v11);
    v13 = v12;
    v76[0] = 0x6E6F6973726576;
    v76[1] = 0xE700000000000000;
    v76[2] = 1;
    v76[5] = MEMORY[0x277D83B88];
    strcpy(v77, "resourcePath");
    HIBYTE(v77[6]) = 0;
    v77[7] = -5120;
    v14 = v86;
    v15 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v16 = v69;
    (*(v15 + 32))(v14, v15);
    v17 = sub_22FCC65B4();
    v19 = v18;
    (*v67)(v16, v70);
    v78 = v17;
    v79 = v19;
    v20 = MEMORY[0x277D837D0];
    v80 = MEMORY[0x277D837D0];
    strcpy(v81, "resourceType");
    HIBYTE(v81[6]) = 0;
    v81[7] = -5120;
    v21 = v86;
    v22 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v23 = (*(v22 + 24))(v21, v22);
    v24 = 0x62694C6F746F6870;
    if (v23)
    {
      v24 = 0x7247746E656D6F6DLL;
    }

    v84 = v20;
    v25 = 0xEC00000079726172;
    if (v23)
    {
      v25 = 0xEB00000000687061;
    }

    v82 = v24;
    v83 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338, &unk_22FCD1C70);
    v26 = sub_22FCC9524();

    sub_22FA649D8(v76, &v73);
    v27 = v73;
    v28 = v74;
    v29 = sub_22FA2DB54(v73, v74);
    if (v30)
    {
      goto LABEL_28;
    }

    v31 = v26 + 8;
    *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    v32 = (v26[6] + 16 * v29);
    *v32 = v27;
    v32[1] = v28;
    sub_22FA4FE00(v75, (v26[7] + 32 * v29));
    v33 = v26[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_29;
    }

    v26[2] = v35;
    sub_22FA649D8(v77, &v73);
    v36 = v73;
    v37 = v74;
    v38 = sub_22FA2DB54(v73, v74);
    if (v39)
    {
      goto LABEL_28;
    }

    *(v31 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v40 = (v26[6] + 16 * v38);
    *v40 = v36;
    v40[1] = v37;
    sub_22FA4FE00(v75, (v26[7] + 32 * v38));
    v41 = v26[2];
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_29;
    }

    v26[2] = v42;
    sub_22FA649D8(v81, &v73);
    v43 = v73;
    v44 = v74;
    v45 = sub_22FA2DB54(v73, v74);
    if (v46)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    *(v31 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v47 = (v26[6] + 16 * v45);
    *v47 = v43;
    v47[1] = v44;
    sub_22FA4FE00(v75, (v26[7] + 32 * v45));
    v48 = v26[2];
    v34 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v34)
    {
      goto LABEL_29;
    }

    v26[2] = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v9;
    v51 = v72;
    v53 = sub_22FA2DB54(v72, v13);
    v54 = v9[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_31;
    }

    v57 = v52;
    if (v9[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v73;
        if (v52)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_22FA7052C();
        v9 = v73;
        if (v57)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_22FA6C184(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_22FA2DB54(v51, v13);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_33;
      }

      v53 = v58;
      v9 = v73;
      if (v57)
      {
LABEL_3:
        *(v9[7] + 8 * v53) = v26;

        goto LABEL_4;
      }
    }

    v9[(v53 >> 6) + 8] |= 1 << v53;
    v60 = (v9[6] + 16 * v53);
    *v60 = v51;
    v60[1] = v13;
    *(v9[7] + 8 * v53) = v26;
    v61 = v9[2];
    v34 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v34)
    {
      goto LABEL_32;
    }

    v9[2] = v62;
LABEL_4:
    ++v7;
    __swift_destroy_boxed_opaque_existential_0(v85);
    v8 = v71 + 40;
    v6 = v66;
    if (v68 == v7)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_22FCC9774();
  __break(1u);
}

uint64_t sub_22FA63868(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22FCC9704();
  }

  return v12 & 1;
}

uint64_t sub_22FA63954(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7470, &qword_22FCD25D8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v61 - v4;
  v6 = sub_22FCC6524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC65F4();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v65 = &v61 - v20;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if ((*(v21 + 24))(v22, v21))
  {
    v23 = sub_22FCC9704();

    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v63 = v6;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = *(v25 + 32);
  v64 = a1;
  v27 = v65;
  v26(v24, v25);
  (*(v7 + 104))(v10, *MEMORY[0x277CC91C0], v63);
  v28 = v66;
  (*(v66 + 56))(v5, 1, 1, v11);
  sub_22FCC65D4();
  sub_22FA64A48(&qword_281482558, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v29 = sub_22FCC8A44();
  v30 = *(v28 + 8);
  v30(v17, v11);
  v31 = v27;
  a1 = v64;
  v30(v31, v11);
  if (v29)
  {
    sub_22FA2D328(a1, v68);
    v32 = sub_22FCC8664();
    v33 = sub_22FCC8F34();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v67 = v35;
    *v34 = 136315138;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v36 = sub_22FCC96C4();
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_0(v68);
    v39 = sub_22FA2F600(v36, v38, &v67);

    *(v34 + 4) = v39;
    v40 = "Skipping library resource %s";
    goto LABEL_19;
  }

LABEL_8:
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  if ((*(v42 + 24))(v41, v42))
  {
    v43 = sub_22FCC9704();

    if ((v43 & 1) == 0)
    {
LABEL_15:
      v53 = a1[3];
      v54 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v53);
      v55 = v62;
      (*(v54 + 32))(v53, v54);
      LOBYTE(v53) = sub_22FCC6584();
      (*(v66 + 8))(v55, v11);
      if (v53)
      {
        return 1;
      }

      sub_22FA2D328(a1, v68);
      v32 = sub_22FCC8664();
      v33 = sub_22FCC8F34();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v67 = v35;
        *v34 = 136315138;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v57 = sub_22FCC96C4();
        v59 = v58;
        __swift_destroy_boxed_opaque_existential_0(v68);
        v60 = sub_22FA2F600(v57, v59, &v67);

        *(v34 + 4) = v60;
        v40 = "Skipping unreachable resource %s";
        goto LABEL_19;
      }

LABEL_20:

      __swift_destroy_boxed_opaque_existential_0(v68);
      return 0;
    }
  }

  else
  {
  }

  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = v65;
  (*(v45 + 32))(v44, v45);
  v47 = [objc_opt_self() wellKnownPhotoLibraryURLForIdentifier_];
  sub_22FCC65A4();

  sub_22FA64A48(&qword_281482558, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LOBYTE(v47) = sub_22FCC8A44();
  v48 = *(v66 + 8);
  v48(v17, v11);
  v48(v46, v11);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22FA2D328(a1, v68);
  v32 = sub_22FCC8664();
  v33 = sub_22FCC8F34();
  if (!os_log_type_enabled(v32, v33))
  {
    goto LABEL_20;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v67 = v35;
  *v34 = 136315138;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v49 = sub_22FCC96C4();
  v51 = v50;
  __swift_destroy_boxed_opaque_existential_0(v68);
  v52 = sub_22FA2F600(v49, v51, &v67);

  *(v34 + 4) = v52;
  v40 = "Skipping syndication library resource %s";
LABEL_19:
  _os_log_impl(&dword_22FA28000, v32, v33, v40, v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v35);
  MEMORY[0x23190A000](v35, -1, -1);
  MEMORY[0x23190A000](v34, -1, -1);

  return 0;
}

uint64_t sub_22FA64374()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for KnownResources(uint64_t a1)
{
  result = qword_281480F58;
  if (!qword_281480F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA64450(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t sub_22FA644F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  if ((sub_22FA63954(v43) & 1) == 0)
  {
    sub_22FA2D328(v43, &v41);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136446210;
      __swift_project_boxed_opaque_existential_1(&v41, v42);
      v22 = sub_22FCC96C4();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_0(&v41);
      v25 = sub_22FA2F600(v22, v24, v40);

      *(v15 + 4) = v25;
      v21 = "Skipping invalid resource: %{public}s";
      goto LABEL_7;
    }

LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(&v41);
    return __swift_destroy_boxed_opaque_existential_0(v43);
  }

  v8 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  v9 = swift_beginAccess();
  v10 = *(a2 + v8);
  MEMORY[0x28223BE20](v9, v11);

  sub_22FA90EF8(sub_22FA64A90, v10, &v41);

  v12 = v42;
  sub_22FA2B420(&v41, &unk_27DAD7B20, &unk_22FCD25E0);
  if (v12)
  {
    sub_22FA2D328(v43, &v41);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39[0] = v16;
      *v15 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v41, v42);
      v17 = sub_22FCC96C4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(&v41);
      v20 = sub_22FA2F600(v17, v19, v39);

      *(v15 + 4) = v20;
      v21 = "Skipping duplicate resource %s";
LABEL_7:
      _os_log_impl(&dword_22FA28000, v13, v14, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);

      return __swift_destroy_boxed_opaque_existential_0(v43);
    }

    goto LABEL_8;
  }

  sub_22FA2D328(v43, &v41);
  v26 = sub_22FCC8664();
  v27 = sub_22FCC8EF4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39[0] = v29;
    *v28 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    v30 = sub_22FCC96C4();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    v33 = sub_22FA2F600(v30, v32, v39);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22FA28000, v26, v27, "Adding resource %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23190A000](v29, -1, -1);
    MEMORY[0x23190A000](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  sub_22FA2D328(v43, &v41);
  swift_beginAccess();
  v34 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_22FAC23BC(0, v34[2] + 1, 1, v34);
    *(a2 + v8) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_22FAC23BC((v36 > 1), v37 + 1, 1, v34);
  }

  v34[2] = v37 + 1;
  sub_22FA2CF78(&v41, &v34[5 * v37 + 4]);
  *(a2 + v8) = v34;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t sub_22FA649D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FA64A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FA64AB0(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22FA64B58()
{
  v1 = v0[1];
  v76 = *v0;
  v77 = v1;
  v78 = v0[2];
  v2 = PromptSuggestionSafetyValidationDiagnosticContext.dictionary.getter();
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v73 = v2;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v69 = v7;
  v71 = v3;
  while (v6)
  {
    v11 = v8;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = (*(v73 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v73 + 56) + 8 * v12);
    v75[1] = 0x800000022FCE0520;

    MEMORY[0x231907FA0](v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v9;
    v18 = sub_22FA2DB54(0xD000000000000010, 0x800000022FCE0520);
    v20 = v9[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_52;
    }

    v24 = v19;
    if (v9[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_22FA6F95C();
        v18 = v29;
      }
    }

    else
    {
      sub_22FA6AEC8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_22FA2DB54(0xD000000000000010, 0x800000022FCE0520);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_54;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v10 = v18;

      v9 = v75[0];
      *(*(v75[0] + 56) + 8 * v10) = v16;
    }

    else
    {
      v9 = v75[0];
      *(v75[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v26 = (v9[6] + 16 * v18);
      *v26 = 0xD000000000000010;
      v26[1] = 0x800000022FCE0520;
      *(v9[7] + 8 * v18) = v16;

      v27 = v9[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_53;
      }

      v9[2] = v28;
    }

    v8 = v11;
    v7 = v69;
    v3 = v71;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v30 = *v67;

      v31 = *(v30 + 16);
      sub_22FA7291C(v67, v75);
      v70 = v31;
      if (!v31)
      {
LABEL_46:
        sub_22FA72954(v67);
        return v9;
      }

      v32 = 0;
      v68 = v30 + 32;
LABEL_23:
      v33 = (v68 + 40 * v32);
      v72 = v32 + 1;
      v34 = v33[3];
      v35 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v36 = (*(v35 + 40))(v34, v35);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v36;
      v75[0] = v9;
      v38 = v36 + 64;
      v39 = -1 << *(v36 + 32);
      if (-v39 < 64)
      {
        v40 = ~(-1 << -v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(v36 + 64);
      v42 = (63 - v39) >> 6;

      for (i = 0; ; i = v49)
      {
        if (!v41)
        {
          v50 = i;
          while (1)
          {
            v49 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v49 >= v42)
            {
              break;
            }

            v41 = *(v38 + 8 * v49);
            ++v50;
            if (v41)
            {
              v47 = v9;
              v48 = v37;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v74);

          v32 = v72;
          if (v72 == v70)
          {
            goto LABEL_46;
          }

          goto LABEL_23;
        }

        v47 = v9;
        v48 = v37;
        v49 = i;
LABEL_37:
        v51 = __clz(__rbit64(v41)) | (v49 << 6);
        v52 = (*(v74 + 48) + 16 * v51);
        v54 = *v52;
        v53 = v52[1];
        v55 = *(*(v74 + 56) + 8 * v51);

        v56 = sub_22FA2DB54(v54, v53);
        v58 = v47[2];
        v59 = (v57 & 1) == 0;
        v22 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v22)
        {
          break;
        }

        v61 = v57;
        if (v47[3] >= v60)
        {
          if ((v48 & 1) == 0)
          {
            v65 = v56;
            sub_22FA6F95C();
            v56 = v65;
          }
        }

        else
        {
          sub_22FA6AEC8(v60, v48 & 1);
          v56 = sub_22FA2DB54(v54, v53);
          if ((v61 & 1) != (v62 & 1))
          {
            goto LABEL_54;
          }
        }

        v41 &= v41 - 1;
        v9 = v75[0];
        if (v61)
        {
          v63 = v56;
          v64 = *(*(v75[0] + 56) + 8 * v56);

          if (__OFADD__(v64, v55))
          {
            goto LABEL_51;
          }

          *(v9[7] + 8 * v63) = v64 + v55;
        }

        else
        {
          *(v75[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
          v44 = (v9[6] + 16 * v56);
          *v44 = v54;
          v44[1] = v53;
          *(v9[7] + 8 * v56) = v55;
          v45 = v9[2];
          v22 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v22)
          {
            goto LABEL_50;
          }

          v9[2] = v46;
        }

        v37 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA65054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = aPrioritization[1];
  v76 = aPrioritization[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = a2;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x800000022FCE05F0;
  *(inited + 72) = a3;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x800000022FCE0610;
  *(inited + 96) = a4;
  v79 = v7;

  v9 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v77 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v73 = v14;
  v74 = v10;
  while (v13)
  {
    v18 = v15;
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v18 << 6);
    v20 = (*(v77 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v77 + 56) + 8 * v19);

    MEMORY[0x231907FA0](v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v16;
    v25 = sub_22FA2DB54(v76, v79);
    v27 = v16[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_52;
    }

    v31 = v26;
    if (v16[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v25;
        sub_22FA6F95C();
        v25 = v36;
      }
    }

    else
    {
      sub_22FA6AEC8(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_22FA2DB54(v76, v79);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_54;
      }
    }

    v13 &= v13 - 1;
    if (v31)
    {
      v17 = v25;

      v16 = v81;
      *(v81[7] + 8 * v17) = v23;
    }

    else
    {
      v16 = v81;
      v81[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v81[6] + 16 * v25);
      *v33 = v76;
      v33[1] = v79;
      *(v81[7] + 8 * v25) = v23;

      v34 = v81[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_53;
      }

      v81[2] = v35;
    }

    v15 = v18;
    v14 = v73;
    v10 = v74;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v75 = *(a1 + 16);
      if (!v75)
      {
        return v16;
      }

      v37 = 0;
LABEL_23:
      v38 = (a1 + 32 + 40 * v37);
      v78 = v37 + 1;
      v39 = v38[3];
      v40 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v41 = (*(v40 + 40))(v39, v40);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v41;
      v82 = v16;
      v43 = v41 + 64;
      v44 = -1 << *(v41 + 32);
      if (-v44 < 64)
      {
        v45 = ~(-1 << -v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(v41 + 64);
      v47 = (63 - v44) >> 6;

      for (i = 0; ; i = v54)
      {
        if (!v46)
        {
          v55 = i;
          while (1)
          {
            v54 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v54 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v54);
            ++v55;
            if (v46)
            {
              v52 = v16;
              v53 = v42;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v80);

          v37 = v78;
          if (v78 == v75)
          {
            return v16;
          }

          goto LABEL_23;
        }

        v52 = v16;
        v53 = v42;
        v54 = i;
LABEL_37:
        v56 = __clz(__rbit64(v46)) | (v54 << 6);
        v57 = (*(v80 + 48) + 16 * v56);
        v59 = *v57;
        v58 = v57[1];
        v60 = *(*(v80 + 56) + 8 * v56);

        v61 = sub_22FA2DB54(v59, v58);
        v63 = v52[2];
        v64 = (v62 & 1) == 0;
        v29 = __OFADD__(v63, v64);
        v65 = v63 + v64;
        if (v29)
        {
          break;
        }

        v66 = v62;
        if (v52[3] >= v65)
        {
          if ((v53 & 1) == 0)
          {
            v70 = v61;
            sub_22FA6F95C();
            v61 = v70;
          }
        }

        else
        {
          sub_22FA6AEC8(v65, v53 & 1);
          v61 = sub_22FA2DB54(v59, v58);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_54;
          }
        }

        v46 &= v46 - 1;
        v16 = v82;
        if (v66)
        {
          v68 = v61;
          v69 = *(v82[7] + 8 * v61);

          if (__OFADD__(v69, v60))
          {
            goto LABEL_51;
          }

          *(v82[7] + 8 * v68) = v69 + v60;
        }

        else
        {
          v82[(v61 >> 6) + 8] |= 1 << v61;
          v49 = (v82[6] + 16 * v61);
          *v49 = v59;
          v49[1] = v58;
          *(v82[7] + 8 * v61) = v60;
          v50 = v82[2];
          v29 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v29)
          {
            goto LABEL_50;
          }

          v82[2] = v51;
        }

        v42 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA655F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = aProcessing[1];
  v76 = aProcessing[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000022FCE0450;
  *(inited + 48) = a2;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022FCDF930;
  *(inited + 72) = a3;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022FCE04B0;
  *(inited + 96) = a4;
  v79 = v7;

  v9 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v77 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v73 = v14;
  v74 = v10;
  while (v13)
  {
    v18 = v15;
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v18 << 6);
    v20 = (*(v77 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v77 + 56) + 8 * v19);

    MEMORY[0x231907FA0](v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v16;
    v25 = sub_22FA2DB54(v76, v79);
    v27 = v16[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_52;
    }

    v31 = v26;
    if (v16[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v25;
        sub_22FA6F95C();
        v25 = v36;
      }
    }

    else
    {
      sub_22FA6AEC8(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_22FA2DB54(v76, v79);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_54;
      }
    }

    v13 &= v13 - 1;
    if (v31)
    {
      v17 = v25;

      v16 = v81;
      *(v81[7] + 8 * v17) = v23;
    }

    else
    {
      v16 = v81;
      v81[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v81[6] + 16 * v25);
      *v33 = v76;
      v33[1] = v79;
      *(v81[7] + 8 * v25) = v23;

      v34 = v81[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_53;
      }

      v81[2] = v35;
    }

    v15 = v18;
    v14 = v73;
    v10 = v74;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v75 = *(a1 + 16);
      if (!v75)
      {
        return v16;
      }

      v37 = 0;
LABEL_23:
      v38 = (a1 + 32 + 40 * v37);
      v78 = v37 + 1;
      v39 = v38[3];
      v40 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v41 = (*(v40 + 40))(v39, v40);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v41;
      v82 = v16;
      v43 = v41 + 64;
      v44 = -1 << *(v41 + 32);
      if (-v44 < 64)
      {
        v45 = ~(-1 << -v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(v41 + 64);
      v47 = (63 - v44) >> 6;

      for (i = 0; ; i = v54)
      {
        if (!v46)
        {
          v55 = i;
          while (1)
          {
            v54 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v54 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v54);
            ++v55;
            if (v46)
            {
              v52 = v16;
              v53 = v42;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v80);

          v37 = v78;
          if (v78 == v75)
          {
            return v16;
          }

          goto LABEL_23;
        }

        v52 = v16;
        v53 = v42;
        v54 = i;
LABEL_37:
        v56 = __clz(__rbit64(v46)) | (v54 << 6);
        v57 = (*(v80 + 48) + 16 * v56);
        v59 = *v57;
        v58 = v57[1];
        v60 = *(*(v80 + 56) + 8 * v56);

        v61 = sub_22FA2DB54(v59, v58);
        v63 = v52[2];
        v64 = (v62 & 1) == 0;
        v29 = __OFADD__(v63, v64);
        v65 = v63 + v64;
        if (v29)
        {
          break;
        }

        v66 = v62;
        if (v52[3] >= v65)
        {
          if ((v53 & 1) == 0)
          {
            v70 = v61;
            sub_22FA6F95C();
            v61 = v70;
          }
        }

        else
        {
          sub_22FA6AEC8(v65, v53 & 1);
          v61 = sub_22FA2DB54(v59, v58);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_54;
          }
        }

        v46 &= v46 - 1;
        v16 = v82;
        if (v66)
        {
          v68 = v61;
          v69 = *(v82[7] + 8 * v61);

          if (__OFADD__(v69, v60))
          {
            goto LABEL_51;
          }

          *(v82[7] + 8 * v68) = v69 + v60;
        }

        else
        {
          v82[(v61 >> 6) + 8] |= 1 << v61;
          v49 = (v82[6] + 16 * v61);
          *v49 = v59;
          v49[1] = v58;
          *(v82[7] + 8 * v61) = v60;
          v50 = v82[2];
          v29 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v29)
          {
            goto LABEL_50;
          }

          v82[2] = v51;
        }

        v42 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA65BA8()
{
  v69 = *aRanking;
  v72 = unk_27DAD7508;

  v64 = v0;
  v1 = sub_22FA69954();
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v70 = v1;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v65 = v6;
  v67 = v2;
  while (v5)
  {
    v10 = v7;
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v12 = (*(v70 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v70 + 56) + 8 * v11);

    MEMORY[0x231907FA0](v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v8;
    v17 = sub_22FA2DB54(v69, v72);
    v19 = v8[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_52;
    }

    v23 = v18;
    if (v8[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_22FA6F95C();
        v17 = v28;
      }
    }

    else
    {
      sub_22FA6AEC8(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_22FA2DB54(v69, v72);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_54;
      }
    }

    v5 &= v5 - 1;
    if (v23)
    {
      v9 = v17;

      v8 = v74;
      *(v74[7] + 8 * v9) = v15;
    }

    else
    {
      v8 = v74;
      v74[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v74[6] + 16 * v17);
      *v25 = v69;
      v25[1] = v72;
      *(v74[7] + 8 * v17) = v15;

      v26 = v74[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_53;
      }

      v74[2] = v27;
    }

    v7 = v10;
    v6 = v65;
    v2 = v67;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v68 = *(*v64 + 16);
      if (!v68)
      {
        return v8;
      }

      v29 = 0;
      v66 = *v64 + 32;
LABEL_23:
      v30 = (v66 + 40 * v29);
      v71 = v29 + 1;
      v31 = v30[3];
      v32 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v33 = (*(v32 + 40))(v31, v32);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v33;
      v75 = v8;
      v35 = v33 + 64;
      v36 = -1 << *(v33 + 32);
      if (-v36 < 64)
      {
        v37 = ~(-1 << -v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v33 + 64);
      v39 = (63 - v36) >> 6;

      for (i = 0; ; i = v46)
      {
        if (!v38)
        {
          v47 = i;
          while (1)
          {
            v46 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v46 >= v39)
            {
              break;
            }

            v38 = *(v35 + 8 * v46);
            ++v47;
            if (v38)
            {
              v44 = v8;
              v45 = v34;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v73);

          v29 = v71;
          if (v71 == v68)
          {
            return v8;
          }

          goto LABEL_23;
        }

        v44 = v8;
        v45 = v34;
        v46 = i;
LABEL_37:
        v48 = __clz(__rbit64(v38)) | (v46 << 6);
        v49 = (*(v73 + 48) + 16 * v48);
        v51 = *v49;
        v50 = v49[1];
        v52 = *(*(v73 + 56) + 8 * v48);

        v53 = sub_22FA2DB54(v51, v50);
        v55 = v44[2];
        v56 = (v54 & 1) == 0;
        v21 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v21)
        {
          break;
        }

        v58 = v54;
        if (v44[3] >= v57)
        {
          if ((v45 & 1) == 0)
          {
            v62 = v53;
            sub_22FA6F95C();
            v53 = v62;
          }
        }

        else
        {
          sub_22FA6AEC8(v57, v45 & 1);
          v53 = sub_22FA2DB54(v51, v50);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_54;
          }
        }

        v38 &= v38 - 1;
        v8 = v75;
        if (v58)
        {
          v60 = v53;
          v61 = *(v75[7] + 8 * v53);

          if (__OFADD__(v61, v52))
          {
            goto LABEL_51;
          }

          *(v75[7] + 8 * v60) = v61 + v52;
        }

        else
        {
          v75[(v53 >> 6) + 8] |= 1 << v53;
          v41 = (v75[6] + 16 * v53);
          *v41 = v51;
          v41[1] = v50;
          *(v75[7] + 8 * v53) = v52;
          v42 = v75[2];
          v21 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v21)
          {
            goto LABEL_50;
          }

          v75[2] = v43;
        }

        v34 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA66080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = qword_27DAD74F8;
  v76 = qword_27DAD74F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = a2;
  *(inited + 56) = 0xD00000000000001DLL;
  *(inited + 64) = 0x800000022FCE04D0;
  *(inited + 72) = a3;
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x800000022FCE04F0;
  *(inited + 96) = a4;
  v79 = v7;

  v9 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v77 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v73 = v14;
  v74 = v10;
  while (v13)
  {
    v18 = v15;
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v18 << 6);
    v20 = (*(v77 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v77 + 56) + 8 * v19);

    MEMORY[0x231907FA0](v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v16;
    v25 = sub_22FA2DB54(v76, v79);
    v27 = v16[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_52;
    }

    v31 = v26;
    if (v16[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v25;
        sub_22FA6F95C();
        v25 = v36;
      }
    }

    else
    {
      sub_22FA6AEC8(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_22FA2DB54(v76, v79);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_54;
      }
    }

    v13 &= v13 - 1;
    if (v31)
    {
      v17 = v25;

      v16 = v81;
      *(v81[7] + 8 * v17) = v23;
    }

    else
    {
      v16 = v81;
      v81[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v81[6] + 16 * v25);
      *v33 = v76;
      v33[1] = v79;
      *(v81[7] + 8 * v25) = v23;

      v34 = v81[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_53;
      }

      v81[2] = v35;
    }

    v15 = v18;
    v14 = v73;
    v10 = v74;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v75 = *(a1 + 16);
      if (!v75)
      {
        return v16;
      }

      v37 = 0;
LABEL_23:
      v38 = (a1 + 32 + 40 * v37);
      v78 = v37 + 1;
      v39 = v38[3];
      v40 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v41 = (*(v40 + 40))(v39, v40);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v41;
      v82 = v16;
      v43 = v41 + 64;
      v44 = -1 << *(v41 + 32);
      if (-v44 < 64)
      {
        v45 = ~(-1 << -v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(v41 + 64);
      v47 = (63 - v44) >> 6;

      for (i = 0; ; i = v54)
      {
        if (!v46)
        {
          v55 = i;
          while (1)
          {
            v54 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v54 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v54);
            ++v55;
            if (v46)
            {
              v52 = v16;
              v53 = v42;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v80);

          v37 = v78;
          if (v78 == v75)
          {
            return v16;
          }

          goto LABEL_23;
        }

        v52 = v16;
        v53 = v42;
        v54 = i;
LABEL_37:
        v56 = __clz(__rbit64(v46)) | (v54 << 6);
        v57 = (*(v80 + 48) + 16 * v56);
        v59 = *v57;
        v58 = v57[1];
        v60 = *(*(v80 + 56) + 8 * v56);

        v61 = sub_22FA2DB54(v59, v58);
        v63 = v52[2];
        v64 = (v62 & 1) == 0;
        v29 = __OFADD__(v63, v64);
        v65 = v63 + v64;
        if (v29)
        {
          break;
        }

        v66 = v62;
        if (v52[3] >= v65)
        {
          if ((v53 & 1) == 0)
          {
            v70 = v61;
            sub_22FA6F95C();
            v61 = v70;
          }
        }

        else
        {
          sub_22FA6AEC8(v65, v53 & 1);
          v61 = sub_22FA2DB54(v59, v58);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_54;
          }
        }

        v46 &= v46 - 1;
        v16 = v82;
        if (v66)
        {
          v68 = v61;
          v69 = *(v82[7] + 8 * v61);

          if (__OFADD__(v69, v60))
          {
            goto LABEL_51;
          }

          *(v82[7] + 8 * v68) = v69 + v60;
        }

        else
        {
          v82[(v61 >> 6) + 8] |= 1 << v61;
          v49 = (v82[6] + 16 * v61);
          *v49 = v59;
          v49[1] = v58;
          *(v82[7] + 8 * v61) = v60;
          v50 = v82[2];
          v29 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v29)
          {
            goto LABEL_50;
          }

          v82[2] = v51;
        }

        v42 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA66638()
{
  v1 = v0[1];
  v78 = *v0;
  v79 = v1;
  v80 = *(v0 + 4);
  swift_beginAccess();
  v72 = aFetching[0];
  v75 = aFetching[1];

  Diagnostic = PromptSuggestionFetchDiagnosticContext.dictionary.getter();
  v3 = Diagnostic + 64;
  v4 = 1 << *(Diagnostic + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(Diagnostic + 64);
  v7 = (v4 + 63) >> 6;
  v73 = Diagnostic;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v68 = v7;
  v70 = v3;
  while (v6)
  {
    v11 = v8;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = (*(v73 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v73 + 56) + 8 * v12);
    v77[1] = v75;

    MEMORY[0x231907FA0](v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v9;
    v18 = sub_22FA2DB54(v72, v75);
    v20 = v9[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_52;
    }

    v24 = v19;
    if (v9[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_22FA6F95C();
        v18 = v29;
      }
    }

    else
    {
      sub_22FA6AEC8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_22FA2DB54(v72, v75);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_54;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v10 = v18;

      v9 = v77[0];
      *(*(v77[0] + 56) + 8 * v10) = v16;
    }

    else
    {
      v9 = v77[0];
      *(v77[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v26 = (v9[6] + 16 * v18);
      *v26 = v72;
      v26[1] = v75;
      *(v9[7] + 8 * v18) = v16;

      v27 = v9[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_53;
      }

      v9[2] = v28;
    }

    v8 = v11;
    v7 = v68;
    v3 = v70;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v30 = *(v67 + 32);

      v31 = *(v30 + 16);
      sub_22FA72984(v67, v77);
      v71 = v31;
      if (!v31)
      {
LABEL_46:
        sub_22FA729BC(v67);
        return v9;
      }

      v32 = 0;
      v69 = v30 + 32;
LABEL_23:
      v33 = (v69 + 40 * v32);
      v74 = v32 + 1;
      v34 = v33[3];
      v35 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v36 = (*(v35 + 40))(v34, v35);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v36;
      v77[0] = v9;
      v38 = v36 + 64;
      v39 = -1 << *(v36 + 32);
      if (-v39 < 64)
      {
        v40 = ~(-1 << -v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(v36 + 64);
      v42 = (63 - v39) >> 6;

      for (i = 0; ; i = v49)
      {
        if (!v41)
        {
          v50 = i;
          while (1)
          {
            v49 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v49 >= v42)
            {
              break;
            }

            v41 = *(v38 + 8 * v49);
            ++v50;
            if (v41)
            {
              v47 = v9;
              v48 = v37;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v76);

          v32 = v74;
          if (v74 == v71)
          {
            goto LABEL_46;
          }

          goto LABEL_23;
        }

        v47 = v9;
        v48 = v37;
        v49 = i;
LABEL_37:
        v51 = __clz(__rbit64(v41)) | (v49 << 6);
        v52 = (*(v76 + 48) + 16 * v51);
        v54 = *v52;
        v53 = v52[1];
        v55 = *(*(v76 + 56) + 8 * v51);

        v56 = sub_22FA2DB54(v54, v53);
        v58 = v47[2];
        v59 = (v57 & 1) == 0;
        v22 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v22)
        {
          break;
        }

        v61 = v57;
        if (v47[3] >= v60)
        {
          if ((v48 & 1) == 0)
          {
            v65 = v56;
            sub_22FA6F95C();
            v56 = v65;
          }
        }

        else
        {
          sub_22FA6AEC8(v60, v48 & 1);
          v56 = sub_22FA2DB54(v54, v53);
          if ((v61 & 1) != (v62 & 1))
          {
            goto LABEL_54;
          }
        }

        v41 &= v41 - 1;
        v9 = v77[0];
        if (v61)
        {
          v63 = v56;
          v64 = *(*(v77[0] + 56) + 8 * v56);

          if (__OFADD__(v64, v55))
          {
            goto LABEL_51;
          }

          *(v9[7] + 8 * v63) = v64 + v55;
        }

        else
        {
          *(v77[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
          v44 = (v9[6] + 16 * v56);
          *v44 = v54;
          v44[1] = v53;
          *(v9[7] + 8 * v56) = v55;
          v45 = v9[2];
          v22 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v22)
          {
            goto LABEL_50;
          }

          v9[2] = v46;
        }

        v37 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA66B4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v69 = *aEmpty;
  v70 = qword_27DAD74A8;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v72 = a1;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v66 = v7;
  v67 = a1 + 64;
  while (v6)
  {
    v11 = v8;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = (*(v72 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v72 + 56) + 8 * v12);

    MEMORY[0x231907FA0](v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v9;
    v18 = sub_22FA2DB54(v69, v70);
    v20 = v9[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_52;
    }

    v24 = v19;
    if (v9[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_22FA6F95C();
        v18 = v29;
      }
    }

    else
    {
      sub_22FA6AEC8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_22FA2DB54(v69, v70);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_54;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v10 = v18;

      v9 = v74;
      *(v74[7] + 8 * v10) = v16;
    }

    else
    {
      v9 = v74;
      v74[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v74[6] + 16 * v18);
      *v26 = v69;
      v26[1] = v70;
      *(v74[7] + 8 * v18) = v16;

      v27 = v74[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_53;
      }

      v74[2] = v28;
    }

    v8 = v11;
    v7 = v66;
    v3 = v67;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v68 = *(a2 + 16);
      if (!v68)
      {
        return v9;
      }

      v30 = 0;
LABEL_23:
      v31 = (a2 + 32 + 40 * v30);
      v71 = v30 + 1;
      v32 = v31[3];
      v33 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v34 = (*(v33 + 40))(v32, v33);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v34;
      v75 = v9;
      v36 = v34 + 64;
      v37 = -1 << *(v34 + 32);
      if (-v37 < 64)
      {
        v38 = ~(-1 << -v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v34 + 64);
      v40 = (63 - v37) >> 6;

      for (i = 0; ; i = v47)
      {
        if (!v39)
        {
          v48 = i;
          while (1)
          {
            v47 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v47 >= v40)
            {
              break;
            }

            v39 = *(v36 + 8 * v47);
            ++v48;
            if (v39)
            {
              v45 = v9;
              v46 = v35;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v73);

          v30 = v71;
          if (v71 == v68)
          {
            return v9;
          }

          goto LABEL_23;
        }

        v45 = v9;
        v46 = v35;
        v47 = i;
LABEL_37:
        v49 = __clz(__rbit64(v39)) | (v47 << 6);
        v50 = (*(v73 + 48) + 16 * v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = *(*(v73 + 56) + 8 * v49);

        v54 = sub_22FA2DB54(v52, v51);
        v56 = v45[2];
        v57 = (v55 & 1) == 0;
        v22 = __OFADD__(v56, v57);
        v58 = v56 + v57;
        if (v22)
        {
          break;
        }

        v59 = v55;
        if (v45[3] >= v58)
        {
          if ((v46 & 1) == 0)
          {
            v63 = v54;
            sub_22FA6F95C();
            v54 = v63;
          }
        }

        else
        {
          sub_22FA6AEC8(v58, v46 & 1);
          v54 = sub_22FA2DB54(v52, v51);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_54;
          }
        }

        v39 &= v39 - 1;
        v9 = v75;
        if (v59)
        {
          v61 = v54;
          v62 = *(v75[7] + 8 * v54);

          if (__OFADD__(v62, v53))
          {
            goto LABEL_51;
          }

          *(v75[7] + 8 * v61) = v62 + v53;
        }

        else
        {
          v75[(v54 >> 6) + 8] |= 1 << v54;
          v42 = (v75[6] + 16 * v54);
          *v42 = v52;
          v42[1] = v51;
          *(v75[7] + 8 * v54) = v53;
          v43 = v75[2];
          v22 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v22)
          {
            goto LABEL_50;
          }

          v75[2] = v44;
        }

        v35 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA67028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = qword_27DAD7188;
  v74 = qword_27DAD7180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = a2;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = a3;
  v77 = v5;

  v7 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v75 = v7;

  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v71 = v12;
  v72 = v8;
  while (v11)
  {
    v16 = v13;
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v16 << 6);
    v18 = (*(v75 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(*(v75 + 56) + 8 * v17);

    MEMORY[0x231907FA0](v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v14;
    v23 = sub_22FA2DB54(v74, v77);
    v25 = v14[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_52;
    }

    v29 = v24;
    if (v14[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_22FA6F95C();
        v23 = v34;
      }
    }

    else
    {
      sub_22FA6AEC8(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22FA2DB54(v74, v77);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_54;
      }
    }

    v11 &= v11 - 1;
    if (v29)
    {
      v15 = v23;

      v14 = v79;
      *(v79[7] + 8 * v15) = v21;
    }

    else
    {
      v14 = v79;
      v79[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v79[6] + 16 * v23);
      *v31 = v74;
      v31[1] = v77;
      *(v79[7] + 8 * v23) = v21;

      v32 = v79[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_53;
      }

      v79[2] = v33;
    }

    v13 = v16;
    v12 = v71;
    v8 = v72;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v73 = *(a1 + 16);
      if (!v73)
      {
        return v14;
      }

      v35 = 0;
LABEL_23:
      v36 = (a1 + 32 + 40 * v35);
      v76 = v35 + 1;
      v37 = v36[3];
      v38 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v39 = (*(v38 + 40))(v37, v38);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v39;
      v80 = v14;
      v41 = v39 + 64;
      v42 = -1 << *(v39 + 32);
      if (-v42 < 64)
      {
        v43 = ~(-1 << -v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v39 + 64);
      v45 = (63 - v42) >> 6;

      for (i = 0; ; i = v52)
      {
        if (!v44)
        {
          v53 = i;
          while (1)
          {
            v52 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v52 >= v45)
            {
              break;
            }

            v44 = *(v41 + 8 * v52);
            ++v53;
            if (v44)
            {
              v50 = v14;
              v51 = v40;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v78);

          v35 = v76;
          if (v76 == v73)
          {
            return v14;
          }

          goto LABEL_23;
        }

        v50 = v14;
        v51 = v40;
        v52 = i;
LABEL_37:
        v54 = __clz(__rbit64(v44)) | (v52 << 6);
        v55 = (*(v78 + 48) + 16 * v54);
        v57 = *v55;
        v56 = v55[1];
        v58 = *(*(v78 + 56) + 8 * v54);

        v59 = sub_22FA2DB54(v57, v56);
        v61 = v50[2];
        v62 = (v60 & 1) == 0;
        v27 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v27)
        {
          break;
        }

        v64 = v60;
        if (v50[3] >= v63)
        {
          if ((v51 & 1) == 0)
          {
            v68 = v59;
            sub_22FA6F95C();
            v59 = v68;
          }
        }

        else
        {
          sub_22FA6AEC8(v63, v51 & 1);
          v59 = sub_22FA2DB54(v57, v56);
          if ((v64 & 1) != (v65 & 1))
          {
            goto LABEL_54;
          }
        }

        v44 &= v44 - 1;
        v14 = v80;
        if (v64)
        {
          v66 = v59;
          v67 = *(v80[7] + 8 * v59);

          if (__OFADD__(v67, v58))
          {
            goto LABEL_51;
          }

          *(v80[7] + 8 * v66) = v67 + v58;
        }

        else
        {
          v80[(v59 >> 6) + 8] |= 1 << v59;
          v47 = (v80[6] + 16 * v59);
          *v47 = v57;
          v47[1] = v56;
          *(v80[7] + 8 * v59) = v58;
          v48 = v80[2];
          v27 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v27)
          {
            goto LABEL_50;
          }

          v80[2] = v49;
        }

        v40 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *sub_22FA675C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = qword_27DAD7178;
  v74 = qword_27DAD7170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = a1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = a2;
  v77 = v5;

  v7 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v75 = v7;

  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v71 = v12;
  v72 = v8;
  while (v11)
  {
    v16 = v13;
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v16 << 6);
    v18 = (*(v75 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(*(v75 + 56) + 8 * v17);

    MEMORY[0x231907FA0](v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v14;
    v23 = sub_22FA2DB54(v74, v77);
    v25 = v14[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_52;
    }

    v29 = v24;
    if (v14[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_22FA6F95C();
        v23 = v34;
      }
    }

    else
    {
      sub_22FA6AEC8(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22FA2DB54(v74, v77);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_54;
      }
    }

    v11 &= v11 - 1;
    if (v29)
    {
      v15 = v23;

      v14 = v79;
      *(v79[7] + 8 * v15) = v21;
    }

    else
    {
      v14 = v79;
      v79[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v79[6] + 16 * v23);
      *v31 = v74;
      v31[1] = v77;
      *(v79[7] + 8 * v23) = v21;

      v32 = v79[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_53;
      }

      v79[2] = v33;
    }

    v13 = v16;
    v12 = v71;
    v8 = v72;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v73 = *(a3 + 16);
      if (!v73)
      {
        return v14;
      }

      v35 = 0;
LABEL_23:
      v36 = (a3 + 32 + 40 * v35);
      v76 = v35 + 1;
      v37 = v36[3];
      v38 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v39 = (*(v38 + 40))(v37, v38);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v39;
      v80 = v14;
      v41 = v39 + 64;
      v42 = -1 << *(v39 + 32);
      if (-v42 < 64)
      {
        v43 = ~(-1 << -v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v39 + 64);
      v45 = (63 - v42) >> 6;

      for (i = 0; ; i = v52)
      {
        if (!v44)
        {
          v53 = i;
          while (1)
          {
            v52 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v52 >= v45)
            {
              break;
            }

            v44 = *(v41 + 8 * v52);
            ++v53;
            if (v44)
            {
              v50 = v14;
              v51 = v40;
              goto LABEL_37;
            }
          }

          sub_22FA37D64(v78);

          v35 = v76;
          if (v76 == v73)
          {
            return v14;
          }

          goto LABEL_23;
        }

        v50 = v14;
        v51 = v40;
        v52 = i;
LABEL_37:
        v54 = __clz(__rbit64(v44)) | (v52 << 6);
        v55 = (*(v78 + 48) + 16 * v54);
        v57 = *v55;
        v56 = v55[1];
        v58 = *(*(v78 + 56) + 8 * v54);

        v59 = sub_22FA2DB54(v57, v56);
        v61 = v50[2];
        v62 = (v60 & 1) == 0;
        v27 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v27)
        {
          break;
        }

        v64 = v60;
        if (v50[3] >= v63)
        {
          if ((v51 & 1) == 0)
          {
            v68 = v59;
            sub_22FA6F95C();
            v59 = v68;
          }
        }

        else
        {
          sub_22FA6AEC8(v63, v51 & 1);
          v59 = sub_22FA2DB54(v57, v56);
          if ((v64 & 1) != (v65 & 1))
          {
            goto LABEL_54;
          }
        }

        v44 &= v44 - 1;
        v14 = v80;
        if (v64)
        {
          v66 = v59;
          v67 = *(v80[7] + 8 * v59);

          if (__OFADD__(v67, v58))
          {
            goto LABEL_51;
          }

          *(v80[7] + 8 * v66) = v67 + v58;
        }

        else
        {
          v80[(v59 >> 6) + 8] |= 1 << v59;
          v47 = (v80[6] + 16 * v59);
          *v47 = v57;
          v47[1] = v56;
          *(v80[7] + 8 * v59) = v58;
          v48 = v80[2];
          v27 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v27)
          {
            goto LABEL_50;
          }

          v80[2] = v49;
        }

        v40 = 1;
      }

LABEL_48:
      __break(1u);
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void *PromptSuggestionDiagnosticContext.combinedPayload()(uint64_t a1, uint64_t a2)
{
  v71 = (*(a2 + 48))();
  v74 = v4;
  v66 = a2;
  v5 = (*(a2 + 32))(a1, a2);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v73 = v5;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v67 = v10;
  v69 = v6;
  while (v9)
  {
    v13 = v11;
LABEL_11:
    v14 = __clz(__rbit64(v9)) | (v13 << 6);
    v15 = (*(v73 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v76 = *(*(v73 + 56) + 8 * v14);
    v79[1] = v74;

    MEMORY[0x231907FA0](v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v12;
    v20 = sub_22FA2DB54(v71, v74);
    v21 = v12[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_54;
    }

    v24 = v19;
    if (v12[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22FA6F95C();
      }
    }

    else
    {
      sub_22FA6AEC8(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_22FA2DB54(v71, v74);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_56;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    if (v24)
    {

      v12 = v79[0];
      *(*(v79[0] + 56) + 8 * v20) = v76;
    }

    else
    {
      v12 = v79[0];
      *(v79[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v27 = (v12[6] + 16 * v20);
      *v27 = v71;
      v27[1] = v74;
      *(v12[7] + 8 * v20) = v76;

      v28 = v12[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_55;
      }

      v12[2] = v30;
    }

    v11 = v13;
    v10 = v67;
    v6 = v69;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v31 = (*(v66 + 8))(a1);
  v72 = *(v31 + 16);
  if (!v72)
  {
LABEL_47:

    return v12;
  }

  v32 = 0;
  v68 = v31;
  v70 = v31 + 32;
  while (v32 < *(v31 + 16))
  {
    sub_22FA2D328(v70 + 40 * v32, v79);
    v75 = v32 + 1;
    v33 = v80;
    v34 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v35 = (*(v34 + 40))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v35;
    v78 = v12;
    v37 = v35 + 64;
    v38 = -1 << *(v35 + 32);
    if (-v38 < 64)
    {
      v39 = ~(-1 << -v38);
    }

    else
    {
      v39 = -1;
    }

    v40 = v39 & *(v35 + 64);
    v41 = (63 - v38) >> 6;

    v42 = 0;
    while (v40)
    {
      v46 = v12;
      v47 = v36;
      v48 = v42;
LABEL_38:
      v50 = __clz(__rbit64(v40)) | (v48 << 6);
      v51 = (*(v77 + 48) + 16 * v50);
      v53 = *v51;
      v52 = v51[1];
      v54 = *(*(v77 + 56) + 8 * v50);

      v55 = sub_22FA2DB54(v53, v52);
      v57 = v46[2];
      v58 = (v56 & 1) == 0;
      v29 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v29)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v60 = v56;
      if (v46[3] >= v59)
      {
        if ((v47 & 1) == 0)
        {
          v64 = v55;
          sub_22FA6F95C();
          v55 = v64;
        }
      }

      else
      {
        sub_22FA6AEC8(v59, v47 & 1);
        v55 = sub_22FA2DB54(v53, v52);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_56;
        }
      }

      v40 &= v40 - 1;
      v12 = v78;
      if (v60)
      {
        v62 = v55;
        v63 = *(v78[7] + 8 * v55);

        if (__OFADD__(v63, v54))
        {
          goto LABEL_52;
        }

        *(v78[7] + 8 * v62) = v63 + v54;
      }

      else
      {
        v78[(v55 >> 6) + 8] |= 1 << v55;
        v43 = (v78[6] + 16 * v55);
        *v43 = v53;
        v43[1] = v52;
        *(v78[7] + 8 * v55) = v54;
        v44 = v78[2];
        v29 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v29)
        {
          goto LABEL_51;
        }

        v78[2] = v45;
      }

      v36 = 1;
      v42 = v48;
    }

    v49 = v42;
    while (1)
    {
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v48 >= v41)
      {
        break;
      }

      v40 = *(v37 + 8 * v48);
      ++v49;
      if (v40)
      {
        v46 = v12;
        v47 = v36;
        goto LABEL_38;
      }
    }

    sub_22FA37D64(v77);

    v32 = v75;
    v31 = v68;
    if (v75 == v72)
    {
      goto LABEL_47;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t sub_22FA680B4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22FAC1D0C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22FA6823C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22FA6835C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22FAC1D0C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_22FA88270(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_22FAC1D0C((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_22FA37D64(result);
  *v1 = v4;
  return result;
}

void *sub_22FA68618(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22FAC2374(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_22FA883C8(&v38, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v41 = v23;
          v42 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v36 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v38;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v39;
  v14 = v40;
  v2 = v41;
  v37 = v39;
  if (!v42)
  {
    goto LABEL_19;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v36 = v40;
  v21 = (v40 + 64) >> 6;
LABEL_27:
  v26 = result;
  v27 = *(result[7] + 8 * v20);

  v28 = v37;
LABEL_29:
  while (1)
  {
    v29 = v4[3];
    v30 = v29 >> 1;
    if ((v29 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v30)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v34 = sub_22FAC2374((v29 > 1), v12 + 1, 1, v4);
  v28 = v37;
  v4 = v34;
  v30 = v34[3] >> 1;
  if (v12 >= v30)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v12++ + 4] = v27;
    if (!v19)
    {
      break;
    }

    result = v26;
LABEL_38:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(result[7] + ((v2 << 9) | (8 * v33)));

    v28 = v37;
    if (v12 == v30)
    {
      v12 = v30;
      v4[2] = v30;
      goto LABEL_29;
    }
  }

  v31 = v2;
  result = v26;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 >= v21)
    {
      break;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v2 = v32;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v35 = v2 + 1;
  }

  else
  {
    v35 = v21;
  }

  v40 = v36;
  v41 = v35 - 1;
  v42 = 0;
  v4[2] = v12;
LABEL_13:
  result = sub_22FA37D64(result);
  *v1 = v4;
  return result;
}

uint64_t sub_22FA688E0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = sub_22FCC92C4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    result = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_22FCC92C4();
  v8 = __OFADD__(v16, v6);
  result = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22FA72424(result, 1, a3);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22FA68A30(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_22FCC92C4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    result = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = sub_22FCC92C4();
  v6 = __OFADD__(v14, v4);
  result = v14 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22FA72424(result, 1, a2);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_22FB0F4B0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v2 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22FA68B4C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t PromptSuggestionFetchDiagnosticContext.dictionary.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000018;
  *(inited + 16) = xmmword_22FCD2660;
  *(inited + 40) = 0x800000022FCE0450;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022FCDF930;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x800000022FCE0470;
  *(inited + 96) = v3;
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x800000022FCE0490;
  *(inited + 120) = v4;
  v6 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v6;
}

uint64_t PromptSuggestionFetchDiagnosticContext.children.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_22FA68E7C(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PromptSuggestionEmptyDiagnostics.dictionary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PromptSuggestionEmptyDiagnostics.children.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_22FA68FC0()
{
  v0 = MEMORY[0x277D84F90];
  result = sub_22FA4CC50(MEMORY[0x277D84F90]);
  qword_27DAD7490 = result;
  *algn_27DAD7498 = v0;
  return result;
}

double static PromptSuggestionEmptyDiagnostics.empty.getter@<D0>(void *a1@<X8>)
{
  if (qword_27DAD6E50 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_27DAD7498;
  *a1 = qword_27DAD7490;
  a1[1] = v1;

  return result;
}

uint64_t sub_22FA690F4(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t PromptSuggestionProcessingDiagnosticContext.dictionary.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000022FCE0450;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022FCDF930;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022FCE04B0;
  *(inited + 96) = v3;
  v5 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_22FA692E4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000022FCE0450;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022FCDF930;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022FCE04B0;
  *(inited + 96) = v3;
  v5 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_22FA693F4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x800000022FCE05F0;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x800000022FCE0610;
  *(inited + 96) = v3;
  v5 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_22FA694FC()
{
  v0 = aPrioritization[0];

  return v0;
}

unint64_t PromptSuggestionLLMQUDiagnosticContext.dictionary.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001DLL;
  *(inited + 64) = 0x800000022FCE04D0;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x800000022FCE04F0;
  *(inited + 96) = v3;
  v5 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v5;
}

uint64_t PromptSuggestionLLMQUDiagnosticContext.children.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_22FA69684()
{
  qword_27DAD74D0 = MEMORY[0x277D84F90];
  *algn_27DAD74D8 = 0;
  qword_27DAD74E0 = 0;
  qword_27DAD74E8 = 0;
}

double static PromptSuggestionLLMQUDiagnosticContext.empty.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27DAD6E58 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DAD74E8;
  *a1 = qword_27DAD74D0;
  *(a1 + 8) = *algn_27DAD74D8;
  *(a1 + 24) = v2;

  return result;
}

uint64_t PromptSuggestionLLMQUDiagnosticContext.merge(_:)(void *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];

  result = sub_22FA6823C(v5, sub_22FAC2044, &qword_27DAD7618, &unk_22FCD4AB0);
  v7 = v1[1];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v1[1] = v9;
  v10 = v1[2];
  v8 = __OFADD__(v10, v4);
  v11 = v10 + v4;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1[2] = v11;
  v12 = v1[3];
  v8 = __OFADD__(v12, v3);
  v13 = v12 + v3;
  if (!v8)
  {
    v1[3] = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_22FA6983C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001DLL;
  *(inited + 64) = 0x800000022FCE04D0;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x800000022FCE04F0;
  *(inited + 96) = v3;
  v5 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_22FA69954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2670;
  *(inited + 32) = 0xD000000000000018;
  v2 = v0[1];
  v3 = v0[2];
  *(inited + 40) = 0x800000022FCE0450;
  *(inited + 48) = v2;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  v4 = v0[3];
  v5 = v0[4];
  *(inited + 88) = 0x800000022FCE0630;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x800000022FCE0650;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000016;
  v6 = v0[5];
  v7 = v0[6];
  *(inited + 136) = 0x800000022FCE0670;
  *(inited + 144) = v6;
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = 0x800000022FCE0690;
  *(inited + 168) = v7;
  v8 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_22FA69ADC()
{
  v0 = *aRanking;

  return v0;
}

unint64_t PromptSuggestionSafetyValidationDiagnosticContext.dictionary.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2680;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x800000022FCE0540;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000029;
  *(inited + 88) = 0x800000022FCE0560;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x800000022FCE0590;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000002ALL;
  *(inited + 136) = 0x800000022FCE05C0;
  *(inited + 144) = v5;
  v7 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v7;
}

uint64_t PromptSuggestionSafetyValidationDiagnosticContext.children.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double sub_22FA69DAC()
{
  qword_27DAD7510 = MEMORY[0x277D84F90];
  result = 0.0;
  unk_27DAD7518 = 0u;
  unk_27DAD7528 = 0u;
  qword_27DAD7538 = 0;
  return result;
}

double static PromptSuggestionSafetyValidationDiagnosticContext.empty.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27DAD6E60 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DAD7538;
  *a1 = qword_27DAD7510;
  *(a1 + 8) = unk_27DAD7518;
  *(a1 + 24) = unk_27DAD7528;
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_22FA69EBC(uint64_t a1)
{
  v2 = sub_22FCC9304();

  return sub_22FA6A450(a1, v2);
}

unint64_t sub_22FA69F00(uint64_t a1, uint64_t a2)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](a1);
  MEMORY[0x231908CB0](a2);
  v4 = sub_22FCC9894();

  return sub_22FA6A518(a1, a2, v4);
}

unint64_t sub_22FA69F80(uint64_t a1)
{
  sub_22FCC9844();
  TemplatedPrompt.hash(into:)(v4);
  v2 = sub_22FCC9894();

  return sub_22FA6A590(a1, v2);
}

unint64_t sub_22FA69FEC(uint64_t a1)
{
  sub_22FCC74C4();
  v2 = MEMORY[0x277D3C148];
  sub_22FA729EC(&qword_28147B050, MEMORY[0x277D3C148], MEMORY[0x277D3C150]);
  v3 = sub_22FCC8A04();
  return sub_22FA6A7D0(a1, v3, MEMORY[0x277D3C148], &qword_27DAD75F0, v2, MEMORY[0x277D3C158]);
}

unint64_t sub_22FA6A110(uint64_t a1)
{
  v2 = sub_22FCC9834();

  return sub_22FA6A764(a1, v2);
}

unint64_t sub_22FA6A154(uint64_t a1)
{
  sub_22FCC7234();
  v2 = MEMORY[0x277D3C0C8];
  sub_22FA729EC(&qword_27DAD7570, MEMORY[0x277D3C0C8], MEMORY[0x277D3C0D0]);
  v3 = sub_22FCC8A04();
  return sub_22FA6A7D0(a1, v3, MEMORY[0x277D3C0C8], &qword_27DAD7578, v2, MEMORY[0x277D3C0D8]);
}

unint64_t sub_22FA6A228(char a1)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](a1 & 1);
  v2 = sub_22FCC9894();

  return sub_22FA6A970(a1 & 1, v2);
}

unint64_t sub_22FA6A294(uint64_t a1)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](a1);
  v2 = sub_22FCC9894();

  return sub_22FA6A764(a1, v2);
}

unint64_t sub_22FA6A350(uint64_t a1)
{
  sub_22FCC9844();
  sub_22FCC90B4();
  v2 = sub_22FCC9894();

  return sub_22FA6AAAC(a1, v2);
}

unint64_t sub_22FA6A3BC(uint64_t a1, uint64_t a2)
{
  sub_22FCC9844();
  sub_22FCC9864();
  if (a2)
  {
    sub_22FCC8B14();
  }

  v4 = sub_22FCC9894();

  return sub_22FA6AB4C(a1, a2, v4);
}

unint64_t sub_22FA6A450(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22FA728C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231908770](v9, a1);
      sub_22FA3A7C4(v9);
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

unint64_t sub_22FA6A518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FA6A590(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TemplatedPrompt(0);
  MEMORY[0x28223BE20](v5, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 48);
    v28 = a1;
    v14 = (a1 + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v7 + 72);
    do
    {
      sub_22FA72A90(*(v2 + 48) + v17 * v11, v9, type metadata accessor for TemplatedPrompt);
      v18 = &v9[*(v5 + 48)];
      v19 = *v18 == v15 && *(v18 + 1) == v16;
      if (v19 || (sub_22FCC9704() & 1) != 0)
      {
        v20 = *(v5 + 24);
        v21 = *&v9[v20];
        v22 = *&v9[v20 + 8];
        v23 = (v28 + v20);
        if (v21 == *v23 && v22 == v23[1])
        {
          sub_22FA72A34(v9);
          return v11;
        }

        v25 = sub_22FCC9704();
        sub_22FA72A34(v9);
        if (v25)
        {
          return v11;
        }
      }

      else
      {
        sub_22FA72A34(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_22FA6A764(uint64_t a1, uint64_t a2)
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

unint64_t sub_22FA6A7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_22FA729EC(v25, v26, v27);
      v21 = sub_22FCC8A44();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_22FA6A970(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FA6A9E0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_22FA3A77C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22FCC9184();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_22FA6AAAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      if (!sub_22FCC90C4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22FA6AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_22FCC9704() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_22FA6AC18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75E8, &qword_22FCD2A60);
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_22FA728C0(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_22FCC9304();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6AEC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7348, &unk_22FCD2AA0);
  v34 = v4;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6B168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TemplatedPrompt(0);
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75F8, &qword_22FCD2A68);
  v50 = v4;
  v10 = v9;
  result = sub_22FCC9514();
  v12 = result;
  if (*(v9 + 16))
  {
    v47 = v2;
    v48 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v49 + 72);
      v28 = *(v10 + 48) + v27 * v26;
      v29 = 48 * v26;
      if (v50)
      {
        sub_22FA72AF8(v28, v8, type metadata accessor for TemplatedPrompt);
        v30 = *(v10 + 56) + v29;
        v51 = *v30;
        v31 = *(v30 + 24);
        v52 = *(v30 + 8);
        v53 = v31;
        v32 = v8;
        v33 = *(v30 + 40);
      }

      else
      {
        sub_22FA72A90(v28, v8, type metadata accessor for TemplatedPrompt);
        v34 = *(v10 + 56) + v29;
        v51 = *v34;
        v35 = *(v34 + 24);
        v52 = *(v34 + 8);
        v53 = v35;
        v32 = v8;
        v33 = *(v34 + 40);

        v36 = *(&v52 + 1);
      }

      sub_22FCC9844();
      v37 = v32;
      TemplatedPrompt.hash(into:)(v54);
      result = sub_22FCC9894();
      v38 = -1 << *(v12 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v19 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v19 + 8 * v40);
          if (v44 != -1)
          {
            v20 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v39) & ~*(v19 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_22FA72AF8(v37, *(v12 + 48) + v27 * v20, type metadata accessor for TemplatedPrompt);
      v21 = *(v12 + 56) + 48 * v20;
      *v21 = v51;
      v22 = v53;
      *(v21 + 8) = v52;
      *(v21 + 24) = v22;
      *(v21 + 40) = v33;
      v8 = v37;
      ++*(v12 + 16);
      v10 = v48;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v14, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22FA6B5B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7320, &qword_22FCD1C58);
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_22FCC9174();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6B824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_22FCC7FF4();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7580, &unk_22FCD29D8);
  v38 = v4;
  result = sub_22FCC9514();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v5 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v38)
      {
        (*v17)(v39, v26, v40);
      }

      else
      {
        (*v36)(v39, v26, v40);
      }

      result = sub_22FCC9834();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      result = (*v17)(*(v10 + 56) + v25 * v19, v39, v40);
      ++*(v10 + 16);
      v5 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22FA6BBC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75E0, &unk_22FCD2A50);
  v33 = v4;
  result = sub_22FCC9514();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22FA6BE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7238, &unk_22FCD29C0);
  v34 = v4;
  result = sub_22FCC9514();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}