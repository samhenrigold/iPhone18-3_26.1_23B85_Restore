uint64_t sub_252C5C560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD3B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 64828;
    *(result + 8) = 0;
    if (a3 >= 0xFD3C)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD3C)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 708;
    }
  }

  return result;
}

unint64_t sub_252C5C5C8()
{
  result = qword_27F544628;
  if (!qword_27F544628)
  {
    result = swift_getWitnessTable(aUTc, &type metadata for ColorTuple, v0, v1);
    atomic_store(result, &qword_27F544628);
  }

  return result;
}

id sub_252C5C61C(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_7:
      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000074, 0x8000000252E8CE70, 0xD000000000000017, 0x8000000252E715D0, 50);
      return 0;
    }

LABEL_56:
    swift_once();
    goto LABEL_7;
  }

  v9 = v8;
  v62 = a1;
  sub_252E32E74();
  v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v11 = sub_252E32E44();
  v12 = [v10 initWithNSUUID_];

  (*(v5 + 8))(v7, v4);
  [v9 setCommandId_];

  [v9 setCommandType_];
  v13 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14 <= 4)
  {
    v15 = v62;
    if (!v14)
    {
      v17 = 0;
      goto LABEL_13;
    }

    if (v14 != 3)
    {
      if (v14 != 4)
      {
        goto LABEL_14;
      }

      v17 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v17 = 2;
LABEL_13:
    [v9 setCommandOutcome_];
    goto LABEL_14;
  }

  v15 = v62;
  if ((v14 - 5) < 2 || (v14 - 100) < 2)
  {
    goto LABEL_12;
  }

LABEL_14:
  v18 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v18)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000074, 0x8000000252E8CE70, 0xD000000000000017, 0x8000000252E715D0, 61);

    return 0;
  }

  v19 = v18;
  if ([v9 commandOutcome] != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    inited = swift_initStackObject();
    v21 = inited;
    *(inited + 16) = xmmword_252E3C290;
    v22 = *(v2 + v13);
    if (v22 <= 4)
    {
      if (v22)
      {
        if (v22 == 3)
        {
          v26 = 0xEA00000000007373;
          v27 = 0x6572676F72506E69;
          goto LABEL_38;
        }

        if (v22 == 4)
        {
          v26 = 0xE700000000000000;
          v27 = 0x73736563637573;
LABEL_38:
          *(inited + 32) = v27;
          *(inited + 40) = v26;
          sub_252AD4414(inited);
          swift_setDeallocating();
          sub_252A01B34(v21 + 32);
          v28 = sub_252E37254();

          [v19 setHomeAutomationRequestErrorReasons_];

          goto LABEL_39;
        }
      }
    }

    else
    {
      if (v22 <= 99)
      {
        if (v22 == 5)
        {
          v26 = 0xE700000000000000;
          v27 = 0x6572756C696166;
          goto LABEL_38;
        }

        if (v22 == 6)
        {
          v23 = "failureRequiringAppLaunch";
LABEL_36:
          v26 = (v23 - 32) | 0x8000000000000000;
          v27 = 0xD000000000000019;
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      if (v22 == 100)
      {
        v23 = "failureNoMatchingEntities";
        goto LABEL_36;
      }

      if (v22 == 101)
      {
        v26 = 0x8000000252E84CC0;
        v27 = 0xD000000000000011;
        goto LABEL_38;
      }
    }

LABEL_33:
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
    goto LABEL_38;
  }

LABEL_39:
  v29 = [v15 filters];
  v30 = MEMORY[0x277D84F90];
  v61 = v9;
  if (v29)
  {
    v31 = v29;
    type metadata accessor for HomeFilter();
    v32 = sub_252E37264();

    v63 = v32;
    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
      v60 = v19;
      if (v33)
      {
LABEL_42:
        v34 = 0;
        v35 = v63 & 0xC000000000000001;
        v36 = v63 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v35)
          {
            v37 = MEMORY[0x2530ADF00](v34, v63);
          }

          else
          {
            if (v34 >= *(v36 + 16))
            {
              goto LABEL_55;
            }

            v37 = *(v63 + 8 * v34 + 32);
          }

          v38 = v37;
          v39 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v40 = HomeDeviceType.description.getter([v37 deviceType]);
          v42 = v41;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2529F7A80(0, *(v30 + 2) + 1, 1, v30);
          }

          v44 = *(v30 + 2);
          v43 = *(v30 + 3);
          if (v44 >= v43 >> 1)
          {
            v30 = sub_2529F7A80((v43 > 1), v44 + 1, 1, v30);
          }

          *(v30 + 2) = v44 + 1;
          v45 = &v30[16 * v44];
          *(v45 + 4) = v40;
          *(v45 + 5) = v42;
          ++v34;
          if (v39 == v33)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v33 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v19;
      if (v33)
      {
        goto LABEL_42;
      }
    }

LABEL_58:

    v19 = v60;
    v15 = v62;
  }

  sub_252C76E8C(v30);

  v46 = [v15 filters];
  if (v46)
  {
    v47 = v46;
    type metadata accessor for HomeFilter();
    v48 = sub_252E37264();

    v64 = MEMORY[0x277D84F90];
    if (v48 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v50 = v19;
      v51 = 0;
      v19 = (v48 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x2530ADF00](v51, v48);
        }

        else
        {
          if (v51 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v52 = *(v48 + 8 * v51 + 32);
        }

        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v52);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v51;
        if (v53 == i)
        {
          v54 = v64;
          v19 = v50;
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

    v54 = MEMORY[0x277D84F90];
LABEL_76:

    v55 = sub_252B1F8D4(v54);

    v46 = dword_252E571BC[v55];
  }

  sub_252C7704C(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_252E3C130;
  *(v56 + 32) = v19;
  sub_252A01B88();
  v57 = v19;
  v58 = sub_252E37254();

  v59 = v61;
  [v61 setHomeAutomationRequests_];

  return v59;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_252C5CE98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_252C5CEE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_252C5CF44()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  if (*(v0[4] + 16))
  {
    return 0;
  }

  if (*(v0[5] + 16))
  {
    return 0;
  }

  if (*(v0[6] + 16))
  {
    return 0;
  }

  if (*(v0[7] + 16))
  {
    return 0;
  }

  if (*(v0[8] + 16))
  {
    return 0;
  }

  if (*(v0[9] + 16))
  {
    return 0;
  }

  return *(v0[10] + 16) == 0;
}

void sub_252C5D020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(*v0 + 16);
  v4 = *(v2 + 16);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_188;
  }

  v6 = *(v0[2] + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v9 = *(v0[4] + 16);
  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v11 = *(v0[3] + 16);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v13 = *(v0[5] + 16);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v181 = *(v0[7] + 16);
  v7 = __OFADD__(v14, v181);
  v15 = v14 + v181;
  if (v7)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v180 = *(v0[9] + 16);
  v7 = __OFADD__(v15, v180);
  v16 = v15 + v180;
  if (v7)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v179 = *(v0[10] + 16);
  if (!__OFADD__(v16, v179))
  {
    v172 = v0[2];
    v173 = v0[3];
    v174 = v0[4];
    v175 = v0[5];
    v176 = v0[7];
    v177 = v0[9];
    v17 = MEMORY[0x277D84F90];
    v178 = v0[10];
    if (v3)
    {
      v171 = v0[1];
      v182 = MEMORY[0x277D84F90];
      sub_2529AA4A0(0, v3, 0);
      v17 = v182;
      v18 = (v1 + 52);
      v19 = *(v182 + 16);
      do
      {
        v20 = *v18;
        v183 = v17;
        v21 = *(v17 + 24);
        v22 = v19 + 1;
        if (v19 >= v21 >> 1)
        {
          sub_2529AA4A0((v21 > 1), v19 + 1, 1);
          v17 = v183;
        }

        *(v17 + 16) = v22;
        *(v17 + 4 * v19 + 32) = v20;
        v18 += 8;
        ++v19;
        --v3;
      }

      while (v3);
      v2 = v171;
    }

    else
    {
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
        v127 = MEMORY[0x277D84F90];

        if (v4)
        {
LABEL_24:
          v30 = MEMORY[0x277D84F90];
          v184 = MEMORY[0x277D84F90];
          sub_2529AA4A0(0, v4, 0);
          v31 = v184;
          v32 = (v2 + 52);
          v33 = *(v184 + 16);
          do
          {
            v34 = *v32;
            v185 = v31;
            v35 = *(v31 + 24);
            if (v33 >= v35 >> 1)
            {
              sub_2529AA4A0((v35 > 1), v33 + 1, 1);
              v31 = v185;
            }

            *(v31 + 16) = v33 + 1;
            *(v31 + 4 * v33 + 32) = v34;
            v32 += 8;
            ++v33;
            --v4;
          }

          while (v4);
LABEL_31:
          v36 = *(v31 + 16);
          if (!v36)
          {

            if (v6)
            {
              goto LABEL_61;
            }

            goto LABEL_35;
          }

          if (v36 > 7)
          {
            v37 = v36 & 0x7FFFFFFFFFFFFFF8;
            v58 = v31 + 48;
            v38 = 0.0;
            v59 = v36 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v38 = (((((((v38 + COERCE_FLOAT(*(v58 - 16))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*(v58 - 8))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*v58)) + COERCE_FLOAT(HIDWORD(*v58))) + COERCE_FLOAT(*(v58 + 8))) + COERCE_FLOAT(HIDWORD(*v58));
              v58 += 32;
              v59 -= 8;
            }

            while (v59);
            if (v36 == v37)
            {
LABEL_60:

              if (v6)
              {
LABEL_61:
                sub_2529AA4A0(0, v6, 0);
                v39 = v30;
                v63 = (v172 + 52);
                v64 = *(v30 + 16);
                do
                {
                  v65 = *v63;
                  v186 = v39;
                  v66 = *(v39 + 24);
                  if (v64 >= v66 >> 1)
                  {
                    sub_2529AA4A0((v66 > 1), v64 + 1, 1);
                    v39 = v186;
                  }

                  *(v39 + 16) = v64 + 1;
                  *(v39 + 4 * v64 + 32) = v65;
                  v63 += 8;
                  ++v64;
                  --v6;
                }

                while (v6);
LABEL_36:
                v40 = *(v39 + 16);
                if (!v40)
                {

                  if (v11)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_40;
                }

                if (v40 > 7)
                {
                  v41 = v40 & 0x7FFFFFFFFFFFFFF8;
                  v67 = v39 + 48;
                  v42 = 0.0;
                  v68 = v40 & 0x7FFFFFFFFFFFFFF8;
                  do
                  {
                    v42 = (((((((v42 + COERCE_FLOAT(*(v67 - 16))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*(v67 - 8))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*v67)) + COERCE_FLOAT(HIDWORD(*v67))) + COERCE_FLOAT(*(v67 + 8))) + COERCE_FLOAT(HIDWORD(*v67));
                    v67 += 32;
                    v68 -= 8;
                  }

                  while (v68);
                  if (v40 == v41)
                  {
LABEL_71:

                    if (v11)
                    {
LABEL_72:
                      sub_2529AA4A0(0, v11, 0);
                      v43 = v30;
                      v72 = (v173 + 52);
                      v73 = *(v30 + 16);
                      do
                      {
                        v74 = *v72;
                        v187 = v43;
                        v75 = *(v43 + 24);
                        if (v73 >= v75 >> 1)
                        {
                          sub_2529AA4A0((v75 > 1), v73 + 1, 1);
                          v43 = v187;
                        }

                        *(v43 + 16) = v73 + 1;
                        *(v43 + 4 * v73 + 32) = v74;
                        v72 += 8;
                        ++v73;
                        --v11;
                      }

                      while (v11);
LABEL_41:
                      v44 = *(v43 + 16);
                      v45 = v181;
                      if (!v44)
                      {

                        if (v9)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_45;
                      }

                      if (v44 > 7)
                      {
                        v46 = v44 & 0x7FFFFFFFFFFFFFF8;
                        v76 = v43 + 48;
                        v47 = 0.0;
                        v77 = v44 & 0x7FFFFFFFFFFFFFF8;
                        do
                        {
                          v47 = (((((((v47 + COERCE_FLOAT(*(v76 - 16))) + COERCE_FLOAT(HIDWORD(*(v76 - 16)))) + COERCE_FLOAT(*(v76 - 8))) + COERCE_FLOAT(HIDWORD(*(v76 - 16)))) + COERCE_FLOAT(*v76)) + COERCE_FLOAT(HIDWORD(*v76))) + COERCE_FLOAT(*(v76 + 8))) + COERCE_FLOAT(HIDWORD(*v76));
                          v76 += 32;
                          v77 -= 8;
                        }

                        while (v77);
                        if (v44 == v46)
                        {
LABEL_82:

                          if (v9)
                          {
LABEL_83:
                            sub_2529AA4A0(0, v9, 0);
                            v48 = v30;
                            v81 = (v174 + 52);
                            v82 = *(v30 + 16);
                            do
                            {
                              v83 = *v81;
                              v188 = v48;
                              v84 = *(v48 + 24);
                              if (v82 >= v84 >> 1)
                              {
                                sub_2529AA4A0((v84 > 1), v82 + 1, 1);
                                v48 = v188;
                              }

                              *(v48 + 16) = v82 + 1;
                              *(v48 + 4 * v82 + 32) = v83;
                              v81 += 8;
                              ++v82;
                              --v9;
                            }

                            while (v9);
LABEL_46:
                            v49 = *(v48 + 16);
                            v50 = v180;
                            if (!v49)
                            {

                              if (v13)
                              {
                                goto LABEL_94;
                              }

                              goto LABEL_50;
                            }

                            if (v49 > 7)
                            {
                              v51 = v49 & 0x7FFFFFFFFFFFFFF8;
                              v85 = v48 + 48;
                              v52 = 0.0;
                              v86 = v49 & 0x7FFFFFFFFFFFFFF8;
                              do
                              {
                                v52 = (((((((v52 + COERCE_FLOAT(*(v85 - 16))) + COERCE_FLOAT(HIDWORD(*(v85 - 16)))) + COERCE_FLOAT(*(v85 - 8))) + COERCE_FLOAT(HIDWORD(*(v85 - 16)))) + COERCE_FLOAT(*v85)) + COERCE_FLOAT(HIDWORD(*v85))) + COERCE_FLOAT(*(v85 + 8))) + COERCE_FLOAT(HIDWORD(*v85));
                                v85 += 32;
                                v86 -= 8;
                              }

                              while (v86);
                              if (v49 == v51)
                              {
LABEL_93:

                                if (v13)
                                {
LABEL_94:
                                  sub_2529AA4A0(0, v13, 0);
                                  v53 = v30;
                                  v90 = (v175 + 52);
                                  v91 = *(v30 + 16);
                                  do
                                  {
                                    v92 = *v90;
                                    v189 = v53;
                                    v93 = *(v53 + 24);
                                    if (v91 >= v93 >> 1)
                                    {
                                      sub_2529AA4A0((v93 > 1), v91 + 1, 1);
                                      v53 = v189;
                                    }

                                    *(v53 + 16) = v91 + 1;
                                    *(v53 + 4 * v91 + 32) = v92;
                                    v90 += 8;
                                    ++v91;
                                    --v13;
                                  }

                                  while (v13);
LABEL_51:
                                  v54 = *(v53 + 16);
                                  v55 = v179;
                                  if (!v54)
                                  {
                                    goto LABEL_104;
                                  }

                                  if (v54 > 7)
                                  {
                                    v56 = v54 & 0x7FFFFFFFFFFFFFF8;
                                    v94 = v53 + 48;
                                    v57 = 0.0;
                                    v95 = v54 & 0x7FFFFFFFFFFFFFF8;
                                    do
                                    {
                                      v57 = (((((((v57 + COERCE_FLOAT(*(v94 - 16))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*(v94 - 8))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*v94)) + COERCE_FLOAT(HIDWORD(*v94))) + COERCE_FLOAT(*(v94 + 8))) + COERCE_FLOAT(HIDWORD(*v94));
                                      v94 += 32;
                                      v95 -= 8;
                                    }

                                    while (v95);
                                    if (v54 == v56)
                                    {
LABEL_104:

                                      v99 = v0[6];
                                      v100 = *(v99 + 16);
                                      if (v100)
                                      {
                                        sub_2529AA4A0(0, v100, 0);
                                        v101 = v30;
                                        v102 = (v99 + 52);
                                        v103 = *(v30 + 16);
                                        do
                                        {
                                          v104 = *v102;
                                          v190 = v101;
                                          v105 = *(v101 + 24);
                                          v106 = v103 + 1;
                                          if (v103 >= v105 >> 1)
                                          {
                                            sub_2529AA4A0((v105 > 1), v103 + 1, 1);
                                            v101 = v190;
                                          }

                                          *(v101 + 16) = v106;
                                          *(v101 + 4 * v103 + 32) = v104;
                                          v102 += 8;
                                          ++v103;
                                          --v100;
                                        }

                                        while (v100);
                                        v30 = MEMORY[0x277D84F90];
                                        if (v106 <= 7)
                                        {
LABEL_110:
                                          v107 = 0;
                                          v108 = 0.0;
                                          goto LABEL_116;
                                        }
                                      }

                                      else
                                      {
                                        v106 = *(v30 + 16);
                                        if (!v106)
                                        {
                                          v128 = MEMORY[0x277D84F90];

                                          if (!v181)
                                          {
                                            v114 = v128;
                                            v119 = *(v128 + 16);
                                            if (!v119)
                                            {
                                              goto LABEL_138;
                                            }

LABEL_126:
                                            if (v119 > 7)
                                            {
                                              v120 = v119 & 0x7FFFFFFFFFFFFFF8;
                                              v122 = v114 + 48;
                                              v121 = 0.0;
                                              v123 = v119 & 0x7FFFFFFFFFFFFFF8;
                                              do
                                              {
                                                v121 = (((((((v121 + COERCE_FLOAT(*(v122 - 16))) + COERCE_FLOAT(HIDWORD(*(v122 - 16)))) + COERCE_FLOAT(*(v122 - 8))) + COERCE_FLOAT(HIDWORD(*(v122 - 16)))) + COERCE_FLOAT(*v122)) + COERCE_FLOAT(HIDWORD(*v122))) + COERCE_FLOAT(*(v122 + 8))) + COERCE_FLOAT(HIDWORD(*v122));
                                                v122 += 32;
                                                v123 -= 8;
                                              }

                                              while (v123);
                                              if (v119 == v120)
                                              {
LABEL_138:

                                                v129 = v0[8];
                                                v130 = *(v129 + 16);
                                                if (v130)
                                                {
                                                  sub_2529AA4A0(0, v130, 0);
                                                  v131 = v30;
                                                  v132 = (v129 + 52);
                                                  v133 = *(v30 + 16);
                                                  do
                                                  {
                                                    v134 = *v132;
                                                    v192 = v131;
                                                    v135 = *(v131 + 24);
                                                    v136 = v133 + 1;
                                                    if (v133 >= v135 >> 1)
                                                    {
                                                      sub_2529AA4A0((v135 > 1), v133 + 1, 1);
                                                      v131 = v192;
                                                    }

                                                    *(v131 + 16) = v136;
                                                    *(v131 + 4 * v133 + 32) = v134;
                                                    v132 += 8;
                                                    ++v133;
                                                    --v130;
                                                  }

                                                  while (v130);
                                                  v30 = MEMORY[0x277D84F90];
                                                  if (v136 <= 7)
                                                  {
LABEL_144:
                                                    v137 = 0;
                                                    v138 = 0.0;
                                                    goto LABEL_150;
                                                  }
                                                }

                                                else
                                                {
                                                  v136 = *(v30 + 16);
                                                  if (!v136)
                                                  {
                                                    v162 = MEMORY[0x277D84F90];

                                                    if (!v180)
                                                    {
                                                      v144 = v162;
                                                      v149 = *(v162 + 16);
                                                      if (v149)
                                                      {
LABEL_160:
                                                        if (v149 > 7)
                                                        {
                                                          v150 = v149 & 0x7FFFFFFFFFFFFFF8;
                                                          v152 = v144 + 48;
                                                          v151 = 0.0;
                                                          v153 = v149 & 0x7FFFFFFFFFFFFFF8;
                                                          do
                                                          {
                                                            v151 = (((((((v151 + COERCE_FLOAT(*(v152 - 16))) + COERCE_FLOAT(HIDWORD(*(v152 - 16)))) + COERCE_FLOAT(*(v152 - 8))) + COERCE_FLOAT(HIDWORD(*(v152 - 16)))) + COERCE_FLOAT(*v152)) + COERCE_FLOAT(HIDWORD(*v152))) + COERCE_FLOAT(*(v152 + 8))) + COERCE_FLOAT(HIDWORD(*v152));
                                                            v152 += 32;
                                                            v153 -= 8;
                                                          }

                                                          while (v153);
                                                          if (v149 == v150)
                                                          {
LABEL_167:

                                                            if (v179)
                                                            {
                                                              goto LABEL_168;
                                                            }

                                                            goto LABEL_176;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v150 = 0;
                                                          v151 = 0.0;
                                                        }

                                                        v154 = v149 - v150;
                                                        v155 = (v144 + 4 * v150 + 32);
                                                        do
                                                        {
                                                          v156 = *v155++;
                                                          v151 = v151 + v156;
                                                          --v154;
                                                        }

                                                        while (v154);
                                                        goto LABEL_167;
                                                      }

LABEL_175:

                                                      if (v179)
                                                      {
LABEL_168:
                                                        sub_2529AA4A0(0, v179, 0);
                                                        v157 = v30;
                                                        v158 = (v178 + 52);
                                                        v159 = *(v30 + 16);
                                                        do
                                                        {
                                                          v160 = *v158;
                                                          v194 = v157;
                                                          v161 = *(v157 + 24);
                                                          if (v159 >= v161 >> 1)
                                                          {
                                                            sub_2529AA4A0((v161 > 1), v159 + 1, 1);
                                                            v157 = v194;
                                                          }

                                                          *(v157 + 16) = v159 + 1;
                                                          *(v157 + 4 * v159 + 32) = v160;
                                                          v158 += 8;
                                                          ++v159;
                                                          --v55;
                                                        }

                                                        while (v55);
LABEL_177:
                                                        v163 = *(v157 + 16);
                                                        if (v163)
                                                        {
                                                          if (v163 > 7)
                                                          {
                                                            v164 = v163 & 0x7FFFFFFFFFFFFFF8;
                                                            v166 = v157 + 48;
                                                            v165 = 0.0;
                                                            v167 = v163 & 0x7FFFFFFFFFFFFFF8;
                                                            do
                                                            {
                                                              v165 = (((((((v165 + COERCE_FLOAT(*(v166 - 16))) + COERCE_FLOAT(HIDWORD(*(v166 - 16)))) + COERCE_FLOAT(*(v166 - 8))) + COERCE_FLOAT(HIDWORD(*(v166 - 16)))) + COERCE_FLOAT(*v166)) + COERCE_FLOAT(HIDWORD(*v166))) + COERCE_FLOAT(*(v166 + 8))) + COERCE_FLOAT(HIDWORD(*v166));
                                                              v166 += 32;
                                                              v167 -= 8;
                                                            }

                                                            while (v167);
                                                            if (v163 == v164)
                                                            {
                                                              goto LABEL_186;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v164 = 0;
                                                            v165 = 0.0;
                                                          }

                                                          v168 = v163 - v164;
                                                          v169 = (v157 + 4 * v164 + 32);
                                                          do
                                                          {
                                                            v170 = *v169++;
                                                            v165 = v165 + v170;
                                                            --v168;
                                                          }

                                                          while (v168);
                                                        }

LABEL_186:

                                                        return;
                                                      }

LABEL_176:
                                                      v157 = MEMORY[0x277D84F90];
                                                      goto LABEL_177;
                                                    }

                                                    goto LABEL_153;
                                                  }

                                                  v131 = v30;
                                                  if (v136 <= 7)
                                                  {
                                                    goto LABEL_144;
                                                  }
                                                }

                                                v137 = v136 & 0xFFFFFFFFFFFFFFF8;
                                                v139 = v131 + 48;
                                                v138 = 0.0;
                                                v140 = v136 & 0xFFFFFFFFFFFFFFF8;
                                                do
                                                {
                                                  v138 = (((((((v138 + COERCE_FLOAT(*(v139 - 16))) + COERCE_FLOAT(HIDWORD(*(v139 - 16)))) + COERCE_FLOAT(*(v139 - 8))) + COERCE_FLOAT(HIDWORD(*(v139 - 16)))) + COERCE_FLOAT(*v139)) + COERCE_FLOAT(HIDWORD(*v139))) + COERCE_FLOAT(*(v139 + 8))) + COERCE_FLOAT(HIDWORD(*v139));
                                                  v139 += 32;
                                                  v140 -= 8;
                                                }

                                                while (v140);
                                                if (v136 == v137)
                                                {
LABEL_152:

                                                  if (!v180)
                                                  {
                                                    v144 = MEMORY[0x277D84F90];
                                                    goto LABEL_159;
                                                  }

LABEL_153:
                                                  sub_2529AA4A0(0, v180, 0);
                                                  v144 = v30;
                                                  v145 = (v177 + 52);
                                                  v146 = *(v30 + 16);
                                                  do
                                                  {
                                                    v147 = *v145;
                                                    v193 = v144;
                                                    v148 = *(v144 + 24);
                                                    if (v146 >= v148 >> 1)
                                                    {
                                                      sub_2529AA4A0((v148 > 1), v146 + 1, 1);
                                                      v144 = v193;
                                                    }

                                                    *(v144 + 16) = v146 + 1;
                                                    *(v144 + 4 * v146 + 32) = v147;
                                                    v145 += 8;
                                                    ++v146;
                                                    --v50;
                                                  }

                                                  while (v50);
LABEL_159:
                                                  v149 = *(v144 + 16);
                                                  if (v149)
                                                  {
                                                    goto LABEL_160;
                                                  }

                                                  goto LABEL_175;
                                                }

LABEL_150:
                                                v141 = v136 - v137;
                                                v142 = (v131 + 4 * v137 + 32);
                                                do
                                                {
                                                  v143 = *v142++;
                                                  v138 = v138 + v143;
                                                  --v141;
                                                }

                                                while (v141);
                                                goto LABEL_152;
                                              }
                                            }

                                            else
                                            {
                                              v120 = 0;
                                              v121 = 0.0;
                                            }

                                            v124 = v119 - v120;
                                            v125 = (v114 + 4 * v120 + 32);
                                            do
                                            {
                                              v126 = *v125++;
                                              v121 = v121 + v126;
                                              --v124;
                                            }

                                            while (v124);
                                            goto LABEL_138;
                                          }

                                          goto LABEL_119;
                                        }

                                        v101 = v30;
                                        if (v106 <= 7)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      v107 = v106 & 0xFFFFFFFFFFFFFFF8;
                                      v109 = v101 + 48;
                                      v108 = 0.0;
                                      v110 = v106 & 0xFFFFFFFFFFFFFFF8;
                                      do
                                      {
                                        v108 = (((((((v108 + COERCE_FLOAT(*(v109 - 16))) + COERCE_FLOAT(HIDWORD(*(v109 - 16)))) + COERCE_FLOAT(*(v109 - 8))) + COERCE_FLOAT(HIDWORD(*(v109 - 16)))) + COERCE_FLOAT(*v109)) + COERCE_FLOAT(HIDWORD(*v109))) + COERCE_FLOAT(*(v109 + 8))) + COERCE_FLOAT(HIDWORD(*v109));
                                        v109 += 32;
                                        v110 -= 8;
                                      }

                                      while (v110);
                                      if (v106 == v107)
                                      {
LABEL_118:

                                        if (!v181)
                                        {
                                          v114 = MEMORY[0x277D84F90];
                                          goto LABEL_125;
                                        }

LABEL_119:
                                        sub_2529AA4A0(0, v181, 0);
                                        v114 = v30;
                                        v115 = (v176 + 52);
                                        v116 = *(v30 + 16);
                                        do
                                        {
                                          v117 = *v115;
                                          v191 = v114;
                                          v118 = *(v114 + 24);
                                          if (v116 >= v118 >> 1)
                                          {
                                            sub_2529AA4A0((v118 > 1), v116 + 1, 1);
                                            v114 = v191;
                                          }

                                          *(v114 + 16) = v116 + 1;
                                          *(v114 + 4 * v116 + 32) = v117;
                                          v115 += 8;
                                          ++v116;
                                          --v45;
                                        }

                                        while (v45);
LABEL_125:
                                        v119 = *(v114 + 16);
                                        if (!v119)
                                        {
                                          goto LABEL_138;
                                        }

                                        goto LABEL_126;
                                      }

LABEL_116:
                                      v111 = v106 - v107;
                                      v112 = (v101 + 4 * v107 + 32);
                                      do
                                      {
                                        v113 = *v112++;
                                        v108 = v108 + v113;
                                        --v111;
                                      }

                                      while (v111);
                                      goto LABEL_118;
                                    }
                                  }

                                  else
                                  {
                                    v56 = 0;
                                    v57 = 0.0;
                                  }

                                  v96 = v54 - v56;
                                  v97 = (v53 + 4 * v56 + 32);
                                  do
                                  {
                                    v98 = *v97++;
                                    v57 = v57 + v98;
                                    --v96;
                                  }

                                  while (v96);
                                  goto LABEL_104;
                                }

LABEL_50:
                                v53 = MEMORY[0x277D84F90];
                                goto LABEL_51;
                              }
                            }

                            else
                            {
                              v51 = 0;
                              v52 = 0.0;
                            }

                            v87 = v49 - v51;
                            v88 = (v48 + 4 * v51 + 32);
                            do
                            {
                              v89 = *v88++;
                              v52 = v52 + v89;
                              --v87;
                            }

                            while (v87);
                            goto LABEL_93;
                          }

LABEL_45:
                          v48 = MEMORY[0x277D84F90];
                          goto LABEL_46;
                        }
                      }

                      else
                      {
                        v46 = 0;
                        v47 = 0.0;
                      }

                      v78 = v44 - v46;
                      v79 = (v43 + 4 * v46 + 32);
                      do
                      {
                        v80 = *v79++;
                        v47 = v47 + v80;
                        --v78;
                      }

                      while (v78);
                      goto LABEL_82;
                    }

LABEL_40:
                    v43 = MEMORY[0x277D84F90];
                    goto LABEL_41;
                  }
                }

                else
                {
                  v41 = 0;
                  v42 = 0.0;
                }

                v69 = v40 - v41;
                v70 = (v39 + 4 * v41 + 32);
                do
                {
                  v71 = *v70++;
                  v42 = v42 + v71;
                  --v69;
                }

                while (v69);
                goto LABEL_71;
              }

LABEL_35:
              v39 = MEMORY[0x277D84F90];
              goto LABEL_36;
            }
          }

          else
          {
            v37 = 0;
            v38 = 0.0;
          }

          v60 = v36 - v37;
          v61 = (v31 + 4 * v37 + 32);
          do
          {
            v62 = *v61++;
            v38 = v38 + v62;
            --v60;
          }

          while (v60);
          goto LABEL_60;
        }

        v31 = v127;
LABEL_30:
        v30 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

    if (v22 > 7)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFF8;
      v25 = v17 + 48;
      v24 = 0.0;
      v26 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v24 = (((((((v24 + COERCE_FLOAT(*(v25 - 16))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*(v25 - 8))) + COERCE_FLOAT(HIDWORD(*(v25 - 16)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 8))) + COERCE_FLOAT(HIDWORD(*v25));
        v25 += 32;
        v26 -= 8;
      }

      while (v26);
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
    }

    v27 = v22 - v23;
    v28 = (v17 + 4 * v23 + 32);
    do
    {
      v29 = *v28++;
      v24 = v24 + v29;
      --v27;
    }

    while (v27);
LABEL_23:

    if (v4)
    {
      goto LABEL_24;
    }

    v31 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_194:
  __break(1u);
}

uint64_t sub_252C5DF3C()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 1;
  }

  if (*(v0[2] + 16))
  {
    return 2;
  }

  if (*(v0[3] + 16))
  {
    return 3;
  }

  if (*(v0[4] + 16))
  {
    return 4;
  }

  if (*(v0[5] + 16))
  {
    return 5;
  }

  if (*(v0[6] + 16))
  {
    return 9;
  }

  if (*(v0[7] + 16))
  {
    return 6;
  }

  if (*(v0[8] + 16))
  {
    return 10;
  }

  if (*(v0[9] + 16))
  {
    return 7;
  }

  if (*(v0[10] + 16))
  {
    return 8;
  }

  return 11;
}

uint64_t sub_252C5E020()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 56);
    while (1)
    {
      v4 = *v2;
      v2 += 32;
      v3 = v4;
      if (v4 <= 1 || v3 == 2)
      {
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      if (!--v1)
      {
        goto LABEL_19;
      }
    }
  }

  if (!*(v0[1] + 16) && !*(v0[2] + 16) && !*(v0[3] + 16) && !*(v0[4] + 16) && !*(v0[5] + 16) && !*(v0[6] + 16) && !*(v0[7] + 16) && !*(v0[8] + 16) && !*(v0[9] + 16) && !*(v0[10] + 16))
  {
    return 0;
  }

LABEL_19:
  v6 = v0[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v10 = *v8;
      v8 += 32;
      v9 = v10;
      if (v10 <= 1 || v9 == 2)
      {
        v11 = sub_252E37DB4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v7;
    }

    while (v7);
  }

  v12 = v0[2];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 56);
    do
    {
      v16 = *v14;
      v14 += 32;
      v15 = v16;
      if (v16 <= 1 || v15 == 2)
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v13;
    }

    while (v13);
  }

  v18 = v0[3];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 56);
    do
    {
      v22 = *v20;
      v20 += 32;
      v21 = v22;
      if (v22 <= 1 || v21 == 2)
      {
        v23 = sub_252E37DB4();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v19;
    }

    while (v19);
  }

  v24 = v0[4];
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 56);
    do
    {
      v28 = *v26;
      v26 += 32;
      v27 = v28;
      if (v28 <= 1 || v27 == 2)
      {
        v29 = sub_252E37DB4();

        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v25;
    }

    while (v25);
  }

  v30 = v0[5];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 56);
    do
    {
      v34 = *v32;
      v32 += 32;
      v33 = v34;
      if (v34 <= 1 || v33 == 2)
      {
        v35 = sub_252E37DB4();

        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v31;
    }

    while (v31);
  }

  v36 = v0[6];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = (v36 + 56);
    do
    {
      v40 = *v38;
      v38 += 32;
      v39 = v40;
      if (v40 <= 1 || v39 == 2)
      {
        v41 = sub_252E37DB4();

        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v37;
    }

    while (v37);
  }

  v42 = v0[7];
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 56);
    do
    {
      v46 = *v44;
      v44 += 32;
      v45 = v46;
      if (v46 <= 1 || v45 == 2)
      {
        v47 = sub_252E37DB4();

        if ((v47 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v43;
    }

    while (v43);
  }

  v48 = v0[8];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 56);
    do
    {
      v52 = *v50;
      v50 += 32;
      v51 = v52;
      if (v52 <= 1 || v51 == 2)
      {
        v53 = sub_252E37DB4();

        if ((v53 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v49;
    }

    while (v49);
  }

  v54 = v0[9];
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = (v54 + 56);
    do
    {
      v58 = *v56;
      v56 += 32;
      v57 = v58;
      if (v58 <= 1 || v57 == 2)
      {
        v59 = sub_252E37DB4();

        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      --v55;
    }

    while (v55);
  }

  v60 = v0[10];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = (v60 + 56);
    while (1)
    {
      v65 = *v62;
      v62 += 32;
      v64 = v65;
      if (v65 <= 1 || v64 == 2)
      {
        v66 = sub_252E37DB4();

        if ((v66 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
      }

      result = 1;
      if (!--v61)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_252C5E778(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
  }
}

uint64_t sub_252C5E834(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7241746567726174;
    v7 = 0x614D746567726174;
    if (a1 != 10)
    {
      v7 = 1701736302;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1701736314;
    v9 = 1701670760;
    if (a1 != 7)
    {
      v9 = 0x656E656373;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D614E70756F7267;
    v2 = 0x5465636976726573;
    v3 = 0x726F737365636361;
    if (a1 != 4)
    {
      v3 = 1836019570;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E65636976726573;
    if (a1 != 1)
    {
      v4 = 0x726F737365636361;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252C5E9CC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C5EA9C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C5EB58(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C5EC24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252C601E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252C5EC54(unint64_t *a1@<X8>)
{
  v2 = 0x4D74636566726570;
  v3 = 0x8000000252E65390;
  v4 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v4 = 0x74614D7361696C61;
    v3 = 0xEA00000000006863;
  }

  if (*v1)
  {
    v2 = 0x4D6C616974726170;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xEC00000068637461;
  }

  else
  {
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6;
}

uint64_t sub_252C5ED90(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446B0, &qword_252E57540);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_252C61354();
  sub_252E37F84();
  v22 = 0;
  sub_252E37C94();
  if (!v2)
  {
    v13 = v15;
    v21 = v16;
    v20 = 1;
    sub_252984F9C();
    sub_252E37CD4();
    v19 = 2;
    sub_252E37D24();
    v18 = v13;
    v17 = 3;
    sub_252C613FC();
    sub_252E37D54();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_252C5EF98(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_252E37EE4();
    sub_252E37044();
    if (v2 == 52)
    {
LABEL_3:
      sub_252E37EE4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_252E37EE4();
    if (v2 == 52)
    {
      goto LABEL_3;
    }
  }

  sub_252E37EE4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

LABEL_6:
  sub_252E37EF4();
  sub_252E37044();
}

uint64_t sub_252C5F128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544698, &qword_252E57538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C61354();
  sub_252E37F74();
  if (!v2)
  {
    v25 = 0;
    v9 = sub_252E37BA4();
    v11 = v10;
    v19 = v9;
    v23 = 1;
    sub_25298270C();
    sub_252E37BE4();
    v12 = v24;
    v22 = 2;
    sub_252E37C34();
    v18 = v12;
    v15 = v14;
    v20 = 3;
    sub_252C613A8();
    sub_252E37C64();
    (*(v6 + 8))(v8, v5);
    v16 = v21;
    *a2 = v19;
    *(a2 + 8) = v11;
    *(a2 + 16) = v18;
    *(a2 + 20) = v15;
    *(a2 + 24) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_252C5F3A8()
{
  v1 = 1701667182;
  v2 = 0x65726F6373;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x6369746E616D6573;
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

uint64_t sub_252C5F41C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252C60230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252C5F444(uint64_t a1)
{
  v2 = sub_252C61354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C5F480(uint64_t a1)
{
  v2 = sub_252C61354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C5F4BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_252E37EC4();
  sub_252C5EF98(v5);
  return sub_252E37F14();
}

uint64_t sub_252C5F524(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 5);
  v4 = *(v1 + 24);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_252E37EC4();
  sub_252C5EF98(v6);
  return sub_252E37F14();
}

uint64_t sub_252C5F5B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D614E70756F7267;
    v7 = 0x726F737365636361;
    v8 = 0x7365636976726573;
    if (a1 != 3)
    {
      v8 = 0x726F737365636361;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4E65636976726573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x614D746567726174;
    v2 = 0x73656D6F68;
    if (a1 != 9)
    {
      v2 = 0x73656E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x736D6F6F72;
    v4 = 0x7241746567726174;
    if (a1 != 6)
    {
      v4 = 0x73656E6F7ALL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252C5F730(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544660, &qword_252E57320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C60F98();
  sub_252E37F84();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544648, &qword_252E57318);
  sub_252C61040(&qword_27F544668, sub_252C610B8, MEMORY[0x277D83948]);
  sub_252E37D54();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_252E37D54();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_252E37D54();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_252E37D54();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    sub_252E37D54();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_252E37D54();
    v11 = v3[6];
    HIBYTE(v10) = 6;
    sub_252E37D54();
    v11 = v3[7];
    HIBYTE(v10) = 7;
    sub_252E37D54();
    v11 = v3[8];
    HIBYTE(v10) = 8;
    sub_252E37D54();
    v11 = v3[9];
    HIBYTE(v10) = 9;
    sub_252E37D54();
    v11 = v3[10];
    HIBYTE(v10) = 10;
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252C5FAE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252C60398(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252C5FB08(uint64_t a1)
{
  v2 = sub_252C60F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C5FB44(uint64_t a1)
{
  v2 = sub_252C60F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C5FB80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v12 = v0[9];
  v10 = v0[10];
  sub_252E37EC4();
  sub_252ABCF68(v13, v1);
  sub_252ABCF68(v13, v2);
  sub_252ABCF68(v13, v3);
  sub_252ABCF68(v13, v4);
  sub_252ABCF68(v13, v5);
  sub_252ABCF68(v13, v6);
  sub_252ABCF68(v13, v7);
  sub_252ABCF68(v13, v8);
  sub_252ABCF68(v13, v9);
  sub_252ABCF68(v13, v12);
  sub_252ABCF68(v13, v10);
  return sub_252E37F14();
}

uint64_t sub_252C5FC78(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v14 = v1[9];
  v12 = v1[10];
  sub_252ABCF68(a1, v3);
  sub_252ABCF68(a1, v4);
  sub_252ABCF68(a1, v5);
  sub_252ABCF68(a1, v6);
  sub_252ABCF68(a1, v7);
  sub_252ABCF68(a1, v8);
  sub_252ABCF68(a1, v9);
  sub_252ABCF68(a1, v10);
  sub_252ABCF68(a1, v11);
  sub_252ABCF68(a1, v14);

  return sub_252ABCF68(a1, v12);
}

uint64_t sub_252C5FD64(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v13 = v1[9];
  v11 = v1[10];
  sub_252E37EC4();
  sub_252ABCF68(v14, v2);
  sub_252ABCF68(v14, v3);
  sub_252ABCF68(v14, v4);
  sub_252ABCF68(v14, v5);
  sub_252ABCF68(v14, v6);
  sub_252ABCF68(v14, v7);
  sub_252ABCF68(v14, v8);
  sub_252ABCF68(v14, v9);
  sub_252ABCF68(v14, v10);
  sub_252ABCF68(v14, v13);
  sub_252ABCF68(v14, v11);
  return sub_252E37F14();
}

uint64_t sub_252C5FE58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_252C600F8(v7, v9) & 1;
}

unint64_t sub_252C5FEC8()
{
  result = qword_27F544630;
  if (!qword_27F544630)
  {
    result = swift_getWitnessTable(aU_13, &_s19FuzzyMatchingValuesVN, v0, v1);
    atomic_store(result, &qword_27F544630);
  }

  return result;
}

double sub_252C5FF1C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_252C6071C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_252C5FF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_252E37DB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v4 != 52)
  {
    if (v8 != 52)
    {
      v13 = AccessoryTypeSemantic.rawValue.getter();
      v15 = v14;
      if (v13 == AccessoryTypeSemantic.rawValue.getter() && v15 == v16)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      if (v5 == v9)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (v8 != 52 || v5 != v9)
  {
    return 0;
  }

LABEL_22:

  return sub_252A0D7C4(v6, v10);
}

uint64_t sub_252C600F8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_252AE995C(*a1, *a2) & 1) == 0 || (sub_252AE995C(a1[1], a2[1]) & 1) == 0 || (sub_252AE995C(a1[2], a2[2]) & 1) == 0 || (sub_252AE995C(a1[3], a2[3]) & 1) == 0 || (sub_252AE995C(a1[4], a2[4]) & 1) == 0 || (sub_252AE995C(a1[5], a2[5]) & 1) == 0 || (sub_252AE995C(a1[6], a2[6]) & 1) == 0 || (sub_252AE995C(a1[7], a2[7]) & 1) == 0 || (sub_252AE995C(a1[8], a2[8]) & 1) == 0 || (sub_252AE995C(a1[9], a2[9]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[10];
  v5 = a2[10];

  return sub_252AE995C(v4, v5);
}

unint64_t sub_252C601E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252C60230(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xED000065756C6156 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_252C60398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E70756F7267 && a2 == 0xEA00000000007365;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEC00000073656D61 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE0073656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000736569 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7241746567726174 && a2 == 0xEB00000000736165 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614D746567726174 && a2 == 0xEA00000000007370 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73656E656373 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_252C6071C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544638, &qword_252E57310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_252C60F98();
  sub_252E37F74();
  if (v2)
  {
    v41 = v2;
    v10 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_1(v39);
    v49 = v17;
    v50 = v16;
    v51 = v15;
    v52 = v14;
    v53 = v13;
    v54 = v12;
    v55 = v11;
    v56 = v38;
    v57 = v40;
    v58 = v10;
    v59 = v18;
    return sub_252937BEC(&v49);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544648, &qword_252E57318);
    LOBYTE(v42) = 0;
    sub_252C61040(&qword_27F544650, sub_252C60FEC, MEMORY[0x277D83978]);
    sub_252E37C64();
    v37 = v49;
    LOBYTE(v42) = 1;
    sub_252E37C64();
    v36 = v49;
    LOBYTE(v42) = 2;
    sub_252E37C64();
    v35 = a2;
    v20 = v49;
    LOBYTE(v42) = 3;
    sub_252E37C64();
    v21 = v49;
    LOBYTE(v42) = 4;
    sub_252E37C64();
    v22 = v49;
    LOBYTE(v42) = 5;
    sub_252E37C64();
    v34 = v49;
    LOBYTE(v42) = 6;
    sub_252E37C64();
    v33 = v49;
    LOBYTE(v42) = 7;
    sub_252E37C64();
    v41 = 0;
    v38 = v49;
    LOBYTE(v42) = 8;
    sub_252E37C64();
    v41 = 0;
    v32 = v6;
    v40 = v49;
    LOBYTE(v42) = 9;
    sub_252E37C64();
    v41 = 0;
    v23 = v49;
    v48 = 10;
    sub_252E37C64();
    v41 = 0;
    (*(v32 + 8))(v8, v5);
    v32 = v60;
    v24 = v37;
    *&v42 = v37;
    v25 = v36;
    *(&v42 + 1) = v36;
    *&v43 = v20;
    *(&v43 + 1) = v21;
    v26 = v34;
    *&v44 = v22;
    *(&v44 + 1) = v34;
    v27 = v33;
    v28 = v38;
    *&v45 = v33;
    *(&v45 + 1) = v38;
    *&v46 = v40;
    *(&v46 + 1) = v23;
    v47 = v60;
    sub_2529855F8(&v42, &v49);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v49 = v24;
    v50 = v25;
    v51 = v20;
    v52 = v21;
    v53 = v22;
    v54 = v26;
    v55 = v27;
    v56 = v28;
    v57 = v40;
    v58 = v23;
    v59 = v32;
    result = sub_252937BEC(&v49);
    v29 = v45;
    v30 = v35;
    *(v35 + 32) = v44;
    *(v30 + 48) = v29;
    *(v30 + 64) = v46;
    *(v30 + 80) = v47;
    v31 = v43;
    *v30 = v42;
    *(v30 + 16) = v31;
  }

  return result;
}

unint64_t sub_252C60F98()
{
  result = qword_27F544640;
  if (!qword_27F544640)
  {
    result = swift_getWitnessTable(aEa, &_s19FuzzyMatchingValuesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F544640);
  }

  return result;
}

unint64_t sub_252C60FEC()
{
  result = qword_27F544658;
  if (!qword_27F544658)
  {
    result = swift_getWitnessTable(aMH, &_s18FuzzyMatchingValueVN, v0, v1);
    atomic_store(result, &qword_27F544658);
  }

  return result;
}

uint64_t sub_252C61040(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544648, &qword_252E57318);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C610B8()
{
  result = qword_27F544670;
  if (!qword_27F544670)
  {
    result = swift_getWitnessTable(aE_9, &_s18FuzzyMatchingValueVN, v0, v1);
    atomic_store(result, &qword_27F544670);
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

uint64_t sub_252C61130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_252C6118C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252C611F8()
{
  result = qword_27F544678;
  if (!qword_27F544678)
  {
    result = swift_getWitnessTable(aU_14, &_s18FuzzyMatchingValueVN, v0, v1);
    atomic_store(result, &qword_27F544678);
  }

  return result;
}

unint64_t sub_252C61250()
{
  result = qword_27F544680;
  if (!qword_27F544680)
  {
    result = swift_getWitnessTable(asc_252E5746C, &_s19FuzzyMatchingValuesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F544680);
  }

  return result;
}

unint64_t sub_252C612A8()
{
  result = qword_27F544688;
  if (!qword_27F544688)
  {
    result = swift_getWitnessTable(byte_252E573DC, &_s19FuzzyMatchingValuesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F544688);
  }

  return result;
}

unint64_t sub_252C61300()
{
  result = qword_27F544690;
  if (!qword_27F544690)
  {
    result = swift_getWitnessTable(byte_252E57404, &_s19FuzzyMatchingValuesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F544690);
  }

  return result;
}

unint64_t sub_252C61354()
{
  result = qword_27F5446A0;
  if (!qword_27F5446A0)
  {
    result = swift_getWitnessTable(aH_0, &_s18FuzzyMatchingValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F5446A0);
  }

  return result;
}

unint64_t sub_252C613A8()
{
  result = qword_27F5446A8;
  if (!qword_27F5446A8)
  {
    result = swift_getWitnessTable(a1_11, &_s14FuzzyMatchTypeON, v0, v1);
    atomic_store(result, &qword_27F5446A8);
  }

  return result;
}

unint64_t sub_252C613FC()
{
  result = qword_27F5446B8;
  if (!qword_27F5446B8)
  {
    result = swift_getWitnessTable(asc_252E576B0, &_s14FuzzyMatchTypeON, v0, v1);
    atomic_store(result, &qword_27F5446B8);
  }

  return result;
}

unint64_t sub_252C61474()
{
  result = qword_27F5446C0;
  if (!qword_27F5446C0)
  {
    result = swift_getWitnessTable(byte_252E575D0, &_s14FuzzyMatchTypeON, v0, v1);
    atomic_store(result, &qword_27F5446C0);
  }

  return result;
}

unint64_t sub_252C614CC()
{
  result = qword_27F5446C8;
  if (!qword_27F5446C8)
  {
    result = swift_getWitnessTable(aA_4, &_s18FuzzyMatchingValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F5446C8);
  }

  return result;
}

unint64_t sub_252C61524()
{
  result = qword_27F5446D0;
  if (!qword_27F5446D0)
  {
    result = swift_getWitnessTable(byte_252E575F8, &_s18FuzzyMatchingValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F5446D0);
  }

  return result;
}

unint64_t sub_252C6157C()
{
  result = qword_27F5446D8;
  if (!qword_27F5446D8)
  {
    result = swift_getWitnessTable(byte_252E57620, &_s18FuzzyMatchingValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F5446D8);
  }

  return result;
}

unint64_t sub_252C615D0()
{
  result = qword_27F5446E0;
  if (!qword_27F5446E0)
  {
    result = swift_getWitnessTable(aI_9, &_s14FuzzyMatchTypeON, v0, v1);
    atomic_store(result, &qword_27F5446E0);
  }

  return result;
}

unint64_t sub_252C61640(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 160);
  v4 = v2 + 1;
  v5 = MEMORY[0x277D84F90];
  while (--v4)
  {
    v6 = *v3;
    v3 += 63;
    if (*(v6 + 16))
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = (a1 + 32 + 504 * v7);
        v5 = v7;
        while (1)
        {
          if (v5 >= v2)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          memcpy(__dst, v9, sizeof(__dst));
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }

          if (*(__dst[16] + 16))
          {
            break;
          }

          ++v5;
          v9 += 504;
          if (v7 == v2)
          {
            goto LABEL_16;
          }
        }

        sub_2529353AC(__dst, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v8 + 16) + 1, 1);
          v8 = v27;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2529AA480((v11 > 1), v12 + 1, 1);
          v8 = v27;
        }

        *(v8 + 16) = v12 + 1;
        memcpy((v8 + 504 * v12 + 32), __dst, 0x1F8uLL);
      }

      while (v7 != v2);
LABEL_16:
      v13 = 0;
      v14 = a1 + 32;
      v5 = MEMORY[0x277D84F90];
LABEL_17:
      v15 = (v14 + 504 * v13);
      v16 = v13;
      while (v16 < v2)
      {
        memcpy(__dst, v15, sizeof(__dst));
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }

        if (LOBYTE(__dst[26]) != 9 && *(__dst[24] + 16) && !*(__dst[16] + 16))
        {
          sub_2529353AC(__dst, v25);
          v17 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v5;
          if ((v17 & 1) == 0)
          {
            sub_2529AA480(0, *(v5 + 16) + 1, 1);
            v5 = v27;
          }

          v19 = *(v5 + 16);
          v18 = *(v5 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_2529AA480((v18 > 1), v19 + 1, 1);
            v5 = v27;
          }

          *(v5 + 16) = v19 + 1;
          memcpy((v5 + 504 * v19 + 32), __dst, 0x1F8uLL);
          if (v13 != v2)
          {
            goto LABEL_17;
          }

LABEL_29:
          if (!*(v5 + 16))
          {

            if (qword_27F53F520 != -1)
            {
              swift_once();
            }

            v22 = sub_252E36AD4();
            __swift_project_value_buffer(v22, qword_27F544E08);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_252E379F4();

            __dst[0] = 0xD000000000000030;
            __dst[1] = 0x8000000252E8CFE0;
            v23 = MEMORY[0x2530AD730](v8, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v23);

            sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A3, 0x8000000252E8CF30);
            v5 = v8;
            goto LABEL_35;
          }

          if (qword_27F53F520 != -1)
          {
            goto LABEL_41;
          }

          goto LABEL_31;
        }

        ++v16;
        v15 += 504;
        if (v13 == v2)
        {
          goto LABEL_29;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      swift_once();
LABEL_31:
      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544E08);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8CEF0);
      v21 = MEMORY[0x2530AD730](v5, &type metadata for HomeAutomationIntent);
      MEMORY[0x2530AD570](v21);

      sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A3, 0x8000000252E8CF30);
LABEL_35:

      return v5;
    }
  }

  return v5;
}

uint64_t sub_252C61A98(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_252E34014();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C61B9C, 0, 0);
}

uint64_t sub_252C61B9C()
{
  v1 = v0[16];
  v2 = v0[11];
  sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  sub_252E36884();
  swift_allocObject();
  *(inited + 16) = sub_252E36874();
  v4 = sub_252E36834();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_25295ADB4(0xD000000000000068, 0x8000000252E8D060, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD00000000000001ELL, 0x8000000252E57770, v1);

  v5 = sub_25293847C(v1, &qword_27F540570, &unk_252E50EE0);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 288), (v0 + 2));

  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v10);
  if (v9)
  {
    sub_252B03B94();
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_252C61EE8;
    v12 = v0[15];
    v13 = v0[10];
    v14 = v0[11];

    return sub_252A199A8(v13, &unk_252E57828, v14, &unk_252E57830, 0, v12, 0, 0);
  }

  else
  {
    sub_252AD7CC4();
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_252C620A8;
    v17 = v0[14];
    v18 = v0[10];
    v19 = v0[11];

    return sub_252BDB88C(v18, &unk_252E57818, v19, v17, 0, 0, 0, v10);
  }
}

uint64_t sub_252C61EE8()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252C62268, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252C620A8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252C622E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252C62268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C622E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C62388()
{
  v0[3] = *(v0[2] + 64);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252ACFBBC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000001DLL, 0x8000000252E84A20, v2);
}

uint64_t sub_252C62468(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationUnknownOutcomeParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C62534, 0, 0);
}

uint64_t sub_252C62534()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x3FF0000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C0AECC();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252C626E0;

  return v10(0xD00000000000001DLL, 0x8000000252E84A20, v7);
}

uint64_t sub_252C626E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252C628AC;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252C6282C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C6282C()
{
  sub_252C62C08(v0[5]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C628AC()
{
  sub_252C62C08(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C6294C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C61A98(a1);
}

uint64_t sub_252C629E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B954;

  return sub_252C61A98(a1);
}

void *sub_252C62A84@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C62AE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C62468(v0);
}

uint64_t sub_252C62B78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C62368(v0);
}

uint64_t sub_252C62C08(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnknownOutcomeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_252C62C64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F0, &unk_252E57840);
  v0 = swift_allocObject();
  *&result = 8;
  *(v0 + 16) = xmmword_252E419C0;
  *(v0 + 32) = &type metadata for InvalidatePlaceHint;
  *(v0 + 40) = &off_2864BFCB0;
  *(v0 + 48) = &type metadata for ValidateHighScoreFuzzyMatches;
  *(v0 + 56) = &off_2864B0250;
  *(v0 + 64) = &type metadata for SameTypePerfectMatchesOverFuzzyMatches;
  *(v0 + 72) = &off_2864B0ED8;
  *(v0 + 80) = &type metadata for PerfectTypeOverFuzzyMatches;
  *(v0 + 88) = &off_2864BFA18;
  *(v0 + 96) = &type metadata for InvalidateMoreThanOneServiceTypes;
  *(v0 + 104) = &off_2864BA608;
  *(v0 + 112) = &type metadata for InvalidateServiceAreaConflicts;
  *(v0 + 120) = &off_2864B82B0;
  *(v0 + 128) = &type metadata for InvalidateUnresolvableServiceAreaCandidates;
  *(v0 + 136) = &off_2864BC638;
  *(v0 + 144) = &type metadata for InvalidateEmptyCandidates;
  *(v0 + 152) = &off_2864B9ED0;
  qword_27F575A98 = v0;
  return result;
}

unint64_t sub_252C62D4C(unint64_t a1, const char *a2)
{
  v71 = a2;
  v80 = sub_252E36AB4();
  v3 = *(v80 - 8);
  v4 = MEMORY[0x28223BE20](v80);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v67 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - v9;
  if (qword_27F53F618 != -1)
  {
LABEL_37:
    swift_once();
  }

  v11 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v77 = v11;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  v13 = __swift_project_value_buffer(v12, qword_27F544E08);
  *&v107[0] = 0;
  *(&v107[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v85 = 0xD00000000000001FLL;
  *&v107[0] = 0xD00000000000001FLL;
  *(&v107[0] + 1) = 0x8000000252E8D100;
  *&v106[0] = *(a1 + 16);
  v14 = *&v106[0];
  v15 = sub_252E37D94();
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v16 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(*&v107[0], *(&v107[0] + 1), 0xD000000000000092, 0x8000000252E8D120);

  (*(v3 + 16))(v8, v10, v80);
  if (v14 == 1)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD000000000000092, 0x8000000252E8D120);
    v21 = sub_252E375C4();
    sub_252E36A74(v21, &dword_252917000, v77, "IntentSelection.IntentPrevalidation", 35, 2, v8, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v22 = *(v3 + 8);
    v23 = v8;
    v24 = v80;
    v22(v23, v80);
    v22(v10, v24);

    return a1;
  }

  if (!v14)
  {
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD000000000000092, 0x8000000252E8D120, v85, 0x8000000252E8D2C0, 39);
    v17 = sub_252E375C4();
    a1 = MEMORY[0x277D84F90];
    sub_252E36A74(v17, &dword_252917000, v77, "IntentSelection.IntentPrevalidation", 35, 2, v8, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v18 = *(v3 + 8);
    v19 = v8;
    v20 = v80;
    v18(v19, v80);
    v18(v10, v20);
    return a1;
  }

  v72 = "Starting filtering candidates: ";
  v73 = v13;
  v69 = v8;
  v70 = v3;
  v68 = v10;
  v25 = a1;
  a1 = 0;
  v10 = (v25 + 32);
  v82 = 0x8000000252E679B0;
  v83 = 0x8000000252E679D0;
  v81 = 0x8000000252E67980;
  v78 = 0x8000000252E67940;
  v79 = 0x8000000252E67960;
  v3 = 504;
  v8 = 0x48746E6572727563;
  v75 = v14;
  v76 = MEMORY[0x277D84F90];
  v74 = v25 + 32;
  do
  {
    while (1)
    {
      if (a1 >= v14)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v26 = &v10[504 * a1];
      memcpy(v107, v26, 0x1F8uLL);
      if (__OFADD__(a1++, 1))
      {
        goto LABEL_36;
      }

      memcpy(v106, v26, 0x1F8uLL);
      if (!sub_252A154CC())
      {
        break;
      }

LABEL_11:
      if (a1 == v14)
      {
        goto LABEL_24;
      }
    }

    v28 = *(&v107[23] + 1);
    v29 = *(*(&v107[23] + 1) + 16);
    sub_2529353AC(v107, v106);
    v30 = (v28 + 32);

    while (2)
    {
      if (v29)
      {
        switch(*v30)
        {
          case 4:

            break;
          default:
            v31 = sub_252E37DB4();

            ++v30;
            --v29;
            if ((v31 & 1) == 0)
            {
              continue;
            }

            break;
        }

        sub_252935408(v107);
        v10 = v74;
        v14 = v75;
        v3 = 504;
        goto LABEL_11;
      }

      break;
    }

    v32 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v32 + 16) + 1, 1);
      v32 = v86[0];
    }

    v14 = v75;
    v3 = 504;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_2529AA480((v34 > 1), v35 + 1, 1);
      v32 = v86[0];
    }

    *(v32 + 16) = v35 + 1;
    v76 = v32;
    memcpy((v32 + 504 * v35 + 32), v107, 0x1F8uLL);
    v10 = v74;
  }

  while (a1 != v14);
LABEL_24:
  a1 = sub_252DF93D8(v76);

  v36 = *(v71 + 16);
  if (v36)
  {
    v37 = (v71 + 32);
    v75 = 0x8000000252E8D210;
    v74 = "Remaining candidates: ";
    v71 = " is one. Returning candidate ";
    v78 = "IntentPrevalidation.Step";
    v79 = (v70 + 8);
    v82 = v36 - 1;
    v76 = 0xD000000000000011;
    v38 = v72;
    while (1)
    {
      v39 = v77;
      v81 = v37;
      v85 = *v37;
      v40 = v84;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      strcpy(v107, "Running step: ");
      HIBYTE(v107[0]) = -18;
      v106[0] = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446E8, &qword_252E57838);
      v41 = sub_252E36F94();
      MEMORY[0x2530AD570](v41);

      MEMORY[0x2530AD570](v76, v78 | 0x8000000000000000);
      v42 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
      MEMORY[0x2530AD570](v42);

      sub_252CC3D90(*&v107[0], *(&v107[0] + 1), 0xD000000000000092, v38 | 0x8000000000000000);

      v43 = *(*(&v85 + 1) + 8);
      v83 = a1;
      v44 = v43();
      v107[0] = v85;
      v45 = sub_252E36F94();
      LOBYTE(v106[0]) = 1;
      LOBYTE(v86[0]) = 1;
      LOBYTE(v87) = 1;
      v88 = 1;
      *&v93 = 0;
      BYTE8(v93) = 1;
      *(&v93 + 9) = *v92;
      HIDWORD(v93) = *&v92[3];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      LOBYTE(v99) = 1;
      DWORD1(v99) = *&v91[3];
      *(&v99 + 1) = *v91;
      *(&v99 + 1) = 0;
      v100 = 0uLL;
      LOWORD(v101) = 513;
      WORD3(v101) = v90;
      *(&v101 + 2) = v89;
      *(&v101 + 1) = v45;
      v102 = v46;
      v103 = 1;
      GEOLocationCoordinate2DMake();
      v107[8] = v101;
      v107[9] = v102;
      LOBYTE(v107[10]) = v103;
      v107[4] = v97;
      v107[5] = v98;
      v107[6] = v99;
      v107[7] = v100;
      v107[0] = v93;
      v107[1] = v94;
      v107[2] = v95;
      v107[3] = v96;
      *&v85 = v39;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v39, v40, "IntentSelection.IntentPrevalidation.Step", 40, 2, v107);
      v104[8] = v107[8];
      v104[9] = v107[9];
      v105 = v107[10];
      v104[4] = v107[4];
      v104[5] = v107[5];
      v104[6] = v107[6];
      v104[7] = v107[7];
      v104[0] = v107[0];
      v104[1] = v107[1];
      v104[2] = v107[2];
      v104[3] = v107[3];
      sub_2529765AC(v104);
      if (*(v44 + 16))
      {

        v47 = *(v44 + 16);
        if (v47 == 1)
        {
          memcpy(v106, (v44 + 32), 0x1F8uLL);
          sub_2529353AC(v106, v107);

          *&v107[0] = 0;
          *(&v107[0] + 1) = 0xE000000000000000;
          sub_252E379F4();
          v87 = v107[0];
          MEMORY[0x2530AD570](0xD000000000000020, v74 | 0x8000000000000000);
          v58 = sub_252E37FB4();
          MEMORY[0x2530AD570](v58);

          MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D260);
          memcpy(v86, v106, sizeof(v86));
          sub_2529353AC(v106, v107);
          v59 = HomeAutomationIntent.description.getter();
          v61 = v60;
          memcpy(v107, v86, 0x1F8uLL);
          sub_252935408(v107);
          MEMORY[0x2530AD570](v59, v61);

          sub_252CC3D90(v87, *(&v87 + 1), 0xD000000000000092, v72 | 0x8000000000000000);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
          a1 = swift_allocObject();
          *(a1 + 16) = xmmword_252E3C290;
          memcpy((a1 + 32), v106, 0x1F8uLL);
          sub_2529353AC(v106, v86);
          v62 = sub_252E375C4();
          v63 = v69;
          sub_252E36A74(v62, &dword_252917000, v85, "IntentSelection.IntentPrevalidation", 35, 2, v69, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          sub_252935408(v106);
          v64 = v80;
          v65 = *v79;
          (*v79)(v84, v80);
          v65(v63, v64);
          v65(v68, v64);
          return a1;
        }

        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v107[0] = 0xD000000000000016;
        *(&v107[0] + 1) = v75;
        *&v106[0] = v47;
        v48 = sub_252E37D94();
        MEMORY[0x2530AD570](v48);

        MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
        v49 = sub_252E37FB4();
        MEMORY[0x2530AD570](v49);

        MEMORY[0x2530AD570](2108704, 0xE300000000000000);
        v50 = MEMORY[0x2530AD730](v44, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v50);

        v38 = v72;
        sub_252CC3D90(*&v107[0], *(&v107[0] + 1), 0xD000000000000092, v72 | 0x8000000000000000);
        a1 = v44;
      }

      else
      {

        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000020, v74 | 0x8000000000000000);
        v51 = sub_252E37FB4();
        MEMORY[0x2530AD570](v51);

        MEMORY[0x2530AD570](0xD00000000000001ALL, v71 | 0x8000000000000000);
        v52 = sub_252E37FB4();
        MEMORY[0x2530AD570](v52);

        sub_252CC3D90(*&v107[0], *(&v107[0] + 1), 0xD000000000000092, v38 | 0x8000000000000000);
        a1 = v83;
      }

      (*v79)(v84, v80);
      if (!v82)
      {
        break;
      }

      --v82;
      v37 = (v81 + 16);
    }
  }

  v53 = v69;
  v54 = sub_252E375C4();
  sub_252E36A74(v54, &dword_252917000, v77, "IntentSelection.IntentPrevalidation", 35, 2, v53, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v55 = *(v70 + 8);
  v56 = v53;
  v57 = v80;
  v55(v56, v80);
  v55(v68, v57);
  return a1;
}

void *sub_252C63D74(uint64_t a1, const void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540260, &qword_252E3C090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E57850;
  *(v5 + 32) = type metadata accessor for SetRvcAttributeTypeHandler();
  *(v5 + 40) = &off_2864B0BA8;
  *(v5 + 48) = type metadata accessor for RemoveHomeIfNoMatchingEntities();
  *(v5 + 56) = &off_2864B99C0;
  *(v5 + 64) = type metadata accessor for PauseSpeakersWhenTurningOffHandler();
  *(v5 + 72) = &off_2864B01E8;
  *(v5 + 80) = type metadata accessor for TurnOffWhenBlackHandler();
  *(v5 + 88) = &off_2864BD040;
  *(v5 + 96) = type metadata accessor for ChineseGetPM25Handler();
  *(v5 + 104) = &off_2864B0E08;
  *(v5 + 112) = type metadata accessor for AddDefaultDeltaValueHandler();
  *(v5 + 120) = &off_2864BEF90;
  *(v5 + 128) = type metadata accessor for AddDefaultUnitHandler();
  *(v5 + 136) = &off_2864BAC98;
  *(v5 + 144) = type metadata accessor for AddDefaultFanSpeedHandler();
  *(v5 + 152) = &off_2864C0018;
  *(v5 + 160) = type metadata accessor for WaterSystemRequestHandler();
  *(v5 + 168) = &off_2864BFFF8;
  *(v5 + 176) = type metadata accessor for SprinklerModifyGetPowerToInUseHandler();
  *(v5 + 184) = &off_2864B1A38;
  *(v5 + 192) = type metadata accessor for ModifyClimateModeHandler();
  *(v5 + 200) = &off_2864B98F8;
  *(v5 + 208) = type metadata accessor for TargetModeHandler();
  *(v5 + 216) = &off_2864B9B88;
  *(v5 + 224) = type metadata accessor for ModifyTaskTypeForPositionRequestsHandler();
  *(v5 + 232) = &off_2864B82C0;
  *(v5 + 240) = type metadata accessor for SetMaxMinForPositionRequestsHandler();
  *(v5 + 248) = &off_2864B4D90;
  *(v5 + 256) = type metadata accessor for SetAirQualityHandler();
  *(v5 + 264) = &off_2864C0B78;
  *(v5 + 272) = type metadata accessor for SetThresholdForModifyHumidityRequestHandler();
  *(v5 + 280) = &off_2864B8FB8;
  *(v5 + 288) = type metadata accessor for PickPrimaryServiceFromAccessoryHandler();
  *(v5 + 296) = &off_2864BDBF0;
  *(v5 + 304) = type metadata accessor for ToggleHandler();
  *(v5 + 312) = &off_2864B6E60;
  *(v5 + 320) = type metadata accessor for PickDefaultTypeHandler();
  *(v5 + 328) = &off_2864BC850;
  *(v5 + 336) = type metadata accessor for TurnOffWhenEqualsOrLessThanZeroHandler();
  *(v5 + 344) = &off_2864B2388;
  *(v5 + 352) = type metadata accessor for AddDefaultSwingModeHandler();
  *(v5 + 360) = &off_2864B6E40;
  *(v5 + 368) = type metadata accessor for ModifyGetTaskTypeForClimateHandler();
  *(v5 + 376) = &off_2864B58F0;
  *(v5 + 384) = type metadata accessor for ModifyGetCarbonDetectedHandler();
  *(v5 + 392) = &off_2864B6B70;
  *(v5 + 400) = type metadata accessor for ExcludeCamerasWhenSetPowerForAllDevices();
  *(v5 + 408) = &off_2864B2DB0;
  *(v5 + 416) = type metadata accessor for ExcludeNonCommonTypesFromGenericSetPowerRequestHandler();
  *(v5 + 424) = &off_2864BB940;
  v2[66] = v5;
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x1F8uLL);
  return v2;
}

uint64_t sub_252C63FE0(uint64_t a1)
{
  v2[496] = v1;
  v2[495] = a1;
  v3 = sub_252E36AB4();
  v2[497] = v3;
  v2[498] = *(v3 - 8);
  v2[499] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C640A4, 0, 0);
}

uint64_t sub_252C640A4()
{
  v85 = v0;
  v1 = *(v0 + 3968);
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v68 = sub_252D2D190(207, 0x6E776F6E6B6E75, 0xE700000000000000);
  v2 = *(v1 + 528);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 3968);
    v5 = (v2 + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v79 = *v5;
      v9 = *(v4 + 16);
      memcpy((v0 + 520), (v4 + 24), 0x1F8uLL);
      memcpy(__dst, (v4 + 24), sizeof(__dst));
      v10 = *(*(&v79 + 1) + 8);
      v11 = v9;
      sub_2529353AC(v0 + 520, v0 + 1024);
      LOBYTE(v9) = v10(v11, __dst);

      memcpy((v0 + 16), __dst, 0x1F8uLL);
      sub_252935408(v0 + 16);
      if (v9)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA6E0(0, *(v6 + 16) + 1, 1);
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2529AA6E0((v7 > 1), v8 + 1, 1);
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 16 * v8 + 32) = v79;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    v72 = *(v0 + 3968);
    v13 = qword_27F53F5D0;
    v14 = *(v72 + 16);
    if (v13 != -1)
    {
      v67 = v14;
      swift_once();
      v14 = v67;
    }

    v75 = v14;
    v70 = qword_27F544F58;
    v69 = (*(v0 + 3984) + 8);
    v78 = v12 - 1;
    v15 = 32;
    v71 = v6;
    while (1)
    {
      v16 = v70;
      v73 = v15;
      v80 = *(v6 + v15);
      sub_252E36A94();
      sub_252E375D4();
      v77 = v16;
      sub_252E36A84();
      v17 = *(*(&v80 + 1) + 24);
      *(v0 + 3904) = v80;
      __swift_allocate_boxed_opaque_existential_0((v0 + 3880));
      v17();
      sub_252929E74(v0 + 3880, v0 + 3920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F8, qword_252E57868);
      v18 = sub_252E36F94();
      v20 = v19;
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544DA8);
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_252E379F4();

      *__dst = 0xD00000000000001ALL;
      *&__dst[8] = 0x8000000252E8D2F0;

      MEMORY[0x2530AD570](v18, v20);

      sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_252E379F4();

      *__dst = 0x206C616974696E49;
      *&__dst[8] = 0xEF20746E65746E69;
      v22 = v75;
      v23 = [v22 description];
      v24 = sub_252E36F34();
      v76 = v18;
      v26 = v25;

      MEMORY[0x2530AD570](v24, v26);

      sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

      memcpy((v0 + 2536), (v72 + 24), 0x1F8uLL);
      memcpy((v0 + 2032), (v72 + 24), 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      memcpy(__dst, (v0 + 2032), sizeof(__dst));
      v27 = *(*(&v80 + 1) + 16);
      sub_2529353AC(v0 + 2536, v0 + 3040);
      v28 = v27(v22, __dst, v80, *(&v80 + 1));
      v30 = v29;
      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
      v74 = v28;
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      if (v30)
      {
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E8D3C0);
        v31 = v76;
        MEMORY[0x2530AD570](v76, v20);
        sub_252CC4050(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310, 0x2865747563657865, 0xE900000000000029, 92);
        v32 = v22;
      }

      else
      {
        v33 = v28;
        sub_252E379F4();

        *__dst = 0xD000000000000024;
        *&__dst[8] = 0x8000000252E8D390;

        v31 = v76;
        MEMORY[0x2530AD570](v76, v20);

        MEMORY[0x2530AD570](2112093, 0xE300000000000000);
        v34 = [v33 description];
        v35 = sub_252E36F34();
        v37 = v36;

        MEMORY[0x2530AD570](v35, v37);

        sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

        v32 = v33;
      }

      v38 = *(v0 + 3992);
      v39 = *(v0 + 3976);

      v82 = 1;
      v83 = 1;
      v84 = 1;
      *(v0 + 3712) = 0;
      *(v0 + 3720) = 1;
      *(v0 + 3728) = 0u;
      *(v0 + 3744) = 0u;
      *(v0 + 3760) = 0u;
      *(v0 + 3776) = 0;
      *(v0 + 3784) = v31;
      *(v0 + 3792) = v20;
      *(v0 + 3800) = 0;
      *(v0 + 3808) = 1;
      *(v0 + 3824) = 0;
      *(v0 + 3832) = 0;
      *(v0 + 3816) = 0;
      *(v0 + 3840) = 1;
      *(v0 + 3841) = 2;
      *(v0 + 3856) = 0;
      *(v0 + 3864) = 0;
      *(v0 + 3848) = 0;
      *(v0 + 3872) = 1;
      GEOLocationCoordinate2DMake();
      v40 = *(v0 + 3856);
      *&__dst[128] = *(v0 + 3840);
      *&__dst[144] = v40;
      __dst[160] = *(v0 + 3872);
      v41 = *(v0 + 3792);
      *&__dst[64] = *(v0 + 3776);
      *&__dst[80] = v41;
      v42 = *(v0 + 3824);
      *&__dst[96] = *(v0 + 3808);
      *&__dst[112] = v42;
      v43 = *(v0 + 3728);
      *__dst = *(v0 + 3712);
      *&__dst[16] = v43;
      v44 = *(v0 + 3760);
      *&__dst[32] = *(v0 + 3744);
      *&__dst[48] = v44;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v77, v38, "ModifyRequest", 13, 2, __dst);
      sub_252927D3C(v74);
      v45 = *&__dst[144];
      *(v0 + 3672) = *&__dst[128];
      *(v0 + 3688) = v45;
      *(v0 + 3704) = __dst[160];
      v46 = *&__dst[80];
      *(v0 + 3608) = *&__dst[64];
      *(v0 + 3624) = v46;
      v47 = *&__dst[112];
      *(v0 + 3640) = *&__dst[96];
      *(v0 + 3656) = v47;
      v48 = *&__dst[16];
      *(v0 + 3544) = *__dst;
      *(v0 + 3560) = v48;
      v49 = *&__dst[48];
      *(v0 + 3576) = *&__dst[32];
      *(v0 + 3592) = v49;
      sub_25293847C(v0 + 3544, &qword_27F5407B0, &unk_252E42860);
      (*v69)(v38, v39);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3880));
      v6 = v71;
      if (!v78)
      {
        break;
      }

      v75 = v32;
      --v78;
      v15 = v73 + 16;
    }

    v50 = *(v72 + 16);
    *(v72 + 16) = v32;
    v51 = v32;

    if (v68)
    {
      v52 = *(v72 + 16);

      v53 = [v52 userTask];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 taskType];

        v56 = v55 - 1;
        if ((v55 - 1) > 5)
        {
          v57 = 0xE700000000000000;
          v53 = 0x6E776F6E6B6E75;
        }

        else
        {
          v53 = qword_252E57938[v56];
          v57 = qword_252E57968[v56];
        }
      }

      else
      {
        v57 = 0;
      }

      sub_252D2D83C(v53, v57);
    }

    sub_252E33B24();
  }

  else
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v58 = sub_252E36AD4();
    __swift_project_value_buffer(v58, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000041, 0x8000000252E8D400, 0xD00000000000007FLL, 0x8000000252E8D310);
    if (v68)
    {
      v59 = *(*(v0 + 3968) + 16);

      v60 = [v59 userTask];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 taskType];

        v63 = v62 - 1;
        if ((v62 - 1) > 5)
        {
          v64 = 0xE700000000000000;
          v60 = 0x6E776F6E6B6E75;
        }

        else
        {
          v60 = qword_252E57938[v63];
          v64 = qword_252E57968[v63];
        }
      }

      else
      {
        v64 = 0;
      }

      sub_252D2D83C(v60, v64);
    }

    sub_252E33B24();
  }

  v65 = *(v0 + 8);

  return v65();
}

uint64_t ControlHomeModifyingFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);

  return v0;
}

uint64_t ControlHomeModifyingFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_252C64C2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C63FE0(a1);
}

id sub_252C64CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 8;
  v3 = *(v2 + 16);
  *(a1 + 8) = v3;
  return v3;
}

uint64_t dispatch thunk of ControlHomeModifyingFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t HomeAttributeType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x64656C62616E65;
    case 2:
      return 0x656E746867697262;
    case 3:
      return 6649192;
    case 4:
      return 0x6974617275746173;
    case 5:
      return 0x6C6156726F6C6F63;
    case 6:
      return 0x74617265706D6574;
    case 7:
      return 0x79746964696D7568;
    case 8:
      return 1801678700;
    case 9:
      v2 = 1769172848;
      goto LABEL_40;
    case 10:
      return 0x6573696172;
    case 11:
      v2 = 1635020658;
      goto LABEL_40;
    case 12:
    case 21:
    case 39:
    case 42:
    case 51:
      return 0xD000000000000011;
    case 13:
    case 23:
    case 33:
      return 0xD000000000000013;
    case 14:
    case 30:
    case 36:
    case 67:
      return 0xD000000000000012;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x4C6C6F72746E6F63;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0xD000000000000010;
    case 19:
      return 0xD000000000000010;
    case 20:
    case 55:
    case 56:
      v3 = 10;
      return v3 | 0xD000000000000010;
    case 22:
      return 0x646F4D676E697773;
    case 24:
    case 29:
    case 35:
    case 53:
      v3 = 5;
      return v3 | 0xD000000000000010;
    case 25:
      return 0x4D6D6172676F7270;
    case 26:
      v2 = 1634891108;
      goto LABEL_40;
    case 27:
      return 0x7265776F70;
    case 28:
      return 0xD000000000000010;
    case 31:
      return 0x746544656B6F6D73;
    case 32:
    case 37:
    case 54:
      return 0xD000000000000016;
    case 34:
      return 0xD000000000000017;
    case 38:
      return 0x44746361746E6F63;
    case 40:
      return 0x657465446B61656CLL;
    case 41:
      return 0x65446E6F69746F6DLL;
    case 43:
      return 0x4C79726574746162;
    case 44:
      return 0x676E696772616863;
    case 45:
      return 0x6574746142776F6CLL;
    case 46:
      return 0x6573556E69;
    case 47:
      return 0xD000000000000018;
    case 48:
      return 0x68437265746C6966;
    case 49:
      return 0x694C7265746C6966;
    case 50:
      return 0x76654C7265746177;
    case 52:
      return 0x6146737574617473;
    case 57:
      return 0xD00000000000001ELL;
    case 58:
      return 0x6E6544656E6F7A6FLL;
    case 59:
      return 0xD000000000000010;
    case 60:
      return 0x746E756F63;
    case 61:
      v2 = 1633906540;
LABEL_40:
      result = v2 | 0x6E6F697400000000;
      break;
    case 62:
      result = 0x726F746E65766E69;
      break;
    case 63:
      result = 0x696C696261706163;
      break;
    case 64:
      result = 1852141679;
      break;
    case 65:
      result = 0x616964656DLL;
      break;
    case 66:
      result = 0xD000000000000010;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_252C65520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *v2++;
      v5 = HomeAttributeType.description.getter(v4);
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2529F7A80(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = MEMORY[0x2530AD730](v3, MEMORY[0x277D837D0]);
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  return 0;
}

uint64_t sub_252C65640(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x737569736C6563;
  v3 = 7894380;
  v4 = 0x73646E6F636573;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0x65686E6572686166;
  }

  if (a1 == 1)
  {
    v1 = 0x746E6563726570;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeUserTask.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E8D5D0);
  v3 = [v0 taskType];
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v8 = 0xE300000000000000;
      v7 = 7628135;
    }

    else
    {
      if (v3 == 6)
      {
        v5 = 0x656C67676F74;
        v4 = 0xE600000000000000;
      }

      v9 = v3 == 5;
      if (v3 == 5)
      {
        v7 = 0x6567726154746567;
      }

      else
      {
        v7 = v5;
      }

      if (v9)
      {
        v8 = 0xE900000000000074;
      }

      else
      {
        v8 = v4;
      }
    }
  }

  else if (v3 == 1)
  {
    v7 = 7628147;
    v8 = 0xE300000000000000;
  }

  else
  {
    if (v3 == 3)
    {
      v5 = 0x6573616572636564;
      v4 = 0xE800000000000000;
    }

    v6 = v3 == 2;
    if (v3 == 2)
    {
      v7 = 0x6573616572636E69;
    }

    else
    {
      v7 = v5;
    }

    if (v6)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v4;
    }
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8D5F0);
  v10 = HomeAttributeType.description.getter([v0 attribute]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69DD0);
  [v0 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEA00000000007D20);
  return 0;
}

uint64_t HomeAttributeValue.description.getter()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v15 = sub_252E37FB4();
        MEMORY[0x2530AD570](v15);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v68 = sub_252E376B4();
        v16 = sub_252E37D94();
        MEMORY[0x2530AD570](v16);

        MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8D8D0);
        v17 = [v0 BOOLValue];
        v18 = v17 == 0;
        if (v17)
        {
          v7 = 1702195828;
        }

        else
        {
          v7 = 0x65736C6166;
        }

        if (v18)
        {
          v6 = 0xE500000000000000;
        }

        else
        {
          v6 = 0xE400000000000000;
        }

        goto LABEL_68;
      case 2:
        v34 = 0x6E776F6E6B6E75;
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v42 = sub_252E37FB4();
        MEMORY[0x2530AD570](v42);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v74 = sub_252E376B4();
        v43 = sub_252E37D94();
        MEMORY[0x2530AD570](v43);

        MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E8D850);
        [v0 doubleValue];
        sub_252E37374();
        goto LABEL_53;
      case 3:
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v8 = sub_252E37FB4();
        MEMORY[0x2530AD570](v8);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v66 = sub_252E376B4();
        v9 = sub_252E37D94();
        MEMORY[0x2530AD570](v9);

        MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E8D7F0);
        v10 = [v0 stringValue];
        if (v10)
        {
          v11 = v10;
          sub_252E36F34();
        }

        v34 = 0x6E776F6E6B6E75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v37 = sub_252E36F94();
LABEL_52:
        MEMORY[0x2530AD570](v37);

LABEL_53:
        MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8D830);
        v62 = [v0 unit];
        v6 = 0xE700000000000000;
        if (v62 <= 2)
        {
          if (v62 == 1)
          {
            v34 = 0x746E6563726570;
          }

          else if (v62 == 2)
          {
            v34 = 0x65686E6572686166;
            v6 = 0xEA00000000007469;
          }

          goto LABEL_65;
        }

        switch(v62)
        {
          case 3:
            v63 = 0x7569736C6563;
            break;
          case 4:
            v6 = 0xE300000000000000;
            v34 = 7894380;
            goto LABEL_65;
          case 5:
            v63 = 0x646E6F636573;
            break;
          default:
LABEL_65:
            v7 = v34;
LABEL_68:
            v61 = v6;
            goto LABEL_69;
        }

        v34 = v63 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        goto LABEL_65;
    }

    goto LABEL_22;
  }

  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      sub_252E379F4();
      MEMORY[0x2530AD570](60, 0xE100000000000000);
      swift_getObjectType();
      v3 = sub_252E37FB4();
      MEMORY[0x2530AD570](v3);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v65 = sub_252E376B4();
      v4 = sub_252E37D94();
      MEMORY[0x2530AD570](v4);

      MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8D7B0);
      v5 = [v0 limitValue];
      if (v5 == 2)
      {
        v6 = 0xE300000000000000;
        v7 = 7889261;
      }

      else if (v5 == 1)
      {
        v6 = 0xE300000000000000;
        v7 = 7235949;
      }

      else
      {
        v7 = 0x6E776F6E6B6E75;
        v6 = 0xE700000000000000;
      }

      goto LABEL_68;
    }

    v34 = 0x6E776F6E6B6E75;
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    swift_getObjectType();
    v35 = sub_252E37FB4();
    MEMORY[0x2530AD570](v35);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v72 = sub_252E376B4();
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8D890);
    [v0 integerValue];
    v37 = sub_252E37D94();
    goto LABEL_52;
  }

  if (v2 != 6)
  {
    if (v2 == 8)
    {
      sub_252E379F4();
      MEMORY[0x2530AD570](60, 0xE100000000000000);
      swift_getObjectType();
      v12 = sub_252E37FB4();
      MEMORY[0x2530AD570](v12);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v67 = sub_252E376B4();
      v13 = sub_252E37D94();
      MEMORY[0x2530AD570](v13);

      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E8D730);
      v14 = [v0 cleaningJob];
      if (v14)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

LABEL_22:
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    swift_getObjectType();
    v19 = sub_252E37FB4();
    MEMORY[0x2530AD570](v19);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v69 = sub_252E376B4();
    v20 = sub_252E37D94();
    MEMORY[0x2530AD570](v20);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E8D610);
    v21 = HomeAttributeValueType.description.getter([v0 type]);
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D630);
    v22 = [v0 BOOLValue];
    v23 = v22 == 0;
    if (v22)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    MEMORY[0x2530AD570](v24, v25);

    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E8D650);
    v70 = [v0 integerValue];
    v26 = sub_252E36FB4();
    MEMORY[0x2530AD570](v26);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8D680);
    [v0 doubleValue];
    v71 = v27;
    v28 = sub_252E36FB4();
    MEMORY[0x2530AD570](v28);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8D6A0);
    v29 = [v0 stringValue];
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v44 = sub_252E36FB4();
    MEMORY[0x2530AD570](v44);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8D6C0);
    v45 = [v1 limitValue];
    v46 = 0xE700000000000000;
    v47 = 7235949;
    if (v45 == 1)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v47 = 0x6E776F6E6B6E75;
    }

    v48 = v45 == 2;
    if (v45 == 2)
    {
      v49 = 7889261;
    }

    else
    {
      v49 = v47;
    }

    if (v48)
    {
      v50 = 0xE300000000000000;
    }

    else
    {
      v50 = v46;
    }

    MEMORY[0x2530AD570](v49, v50);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8D6E0);
    v51 = [v1 rangeValue];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 description];

      v54 = sub_252E36F34();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = sub_252E36F94();
    MEMORY[0x2530AD570](v57);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E8D700);
    v58 = [v1 cleaningJob];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 description];

      sub_252E36F34();
    }

    goto LABEL_50;
  }

  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v38 = sub_252E37FB4();
  MEMORY[0x2530AD570](v38);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v73 = sub_252E376B4();
  v39 = sub_252E37D94();
  MEMORY[0x2530AD570](v39);

  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8D770);
  v14 = [v0 rangeValue];
  if (v14)
  {
LABEL_32:
    v40 = v14;
    v41 = [v14 description];

    sub_252E36F34();
  }

LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
LABEL_50:
  v7 = sub_252E36F94();
LABEL_69:
  MEMORY[0x2530AD570](v7, v61);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEE007D2020202020);
  return 0;
}

id sub_252C66740(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t HomeAttributeRange.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8D910);
  [v0 lowerValue];
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E8D940);
  [v0 upperValue];
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8D970);
  return 0;
}

uint64_t sub_252C66950(uint64_t a1)
{
  v70 = sub_252E32E84();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 128);
  if (!*(v4 + 16))
  {
    return 1;
  }

  v5 = *(a1 + 80);
  v79 = *(a1 + 64);
  v80 = v5;
  v6 = *(a1 + 112);
  v81 = *(a1 + 96);
  v82 = v6;
  v7 = *(a1 + 16);
  v75 = *a1;
  v76 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v83 = v4;
  v77 = v8;
  v78 = v9;
  memcpy(v84, (a1 + 136), sizeof(v84));
  v10 = sub_252BAC7E4();
  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  v13 = HomeStore.scenes(matching:)(v10);
  LOBYTE(a1) = v14;

  if ((a1 & 1) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v10 = 0;
      v61 = v13 + 32;
      v62 = v13 & 0xC000000000000001;
      v68 = (v2 + 8);
      v17 = MEMORY[0x277D84F90];
      v59 = v15;
      v60 = v13;
      v58 = i;
      while (1)
      {
        if (v10 == i)
        {
          sub_252929F10(v13, 0);
          return 1;
        }

        if (v62)
        {
          v18 = MEMORY[0x2530ADF00](v10, v13);
          v19 = __OFADD__(v10++, 1);
          if (v19)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 >= *(v15 + 16))
          {
            goto LABEL_56;
          }

          v19 = __OFADD__(v10++, 1);
          if (v19)
          {
            goto LABEL_55;
          }
        }

        v66 = v10;
        v65 = v18;
        v20 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
        v21 = sub_25292A2F8();
        sub_2529E6100();
        v22 = sub_252E373A4();

        v74 = v17;
        v64 = v22;
        v67 = v21;
        if ((v22 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_252E37874();
          sub_252E373E4();
          v13 = *(&v75 + 1);
          v10 = v75;
          v23 = *(&v76 + 1);
          a1 = v76;
          v2 = v77;
        }

        else
        {
          v24 = -1 << *(v22 + 32);
          a1 = ~v24;
          v25 = -v24;
          v26 = v25 < 64 ? ~(-1 << v25) : -1;
          v2 = v26 & *(v22 + 56);

          v23 = 0;
          v10 = v22;
          v13 = v22 + 56;
        }

        v63 = a1;
        v15 = (a1 + 64) >> 6;
        v71 = v13;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v32 = sub_252E37904();
          if (!v32)
          {
            break;
          }

          v72 = v32;
          swift_dynamicCast();
          v31 = v73;
          v29 = v23;
          v30 = v2;
          if (!v73)
          {
            break;
          }

LABEL_25:
          v33 = v10;
          type metadata accessor for Action();
          v34 = swift_allocObject();
          *(v34 + 16) = v31;
          v35 = v31;
          v36 = [v35 uniqueIdentifier];
          v37 = v69;
          sub_252E32E64();

          v38 = sub_252E32E24();
          v40 = v39;
          (*v68)(v37, v70);
          *(v34 + 24) = v38;
          *(v34 + 32) = v40;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            *(v34 + 40) = 1;
            v10 = v33;
            v13 = v71;
          }

          else
          {
            objc_opt_self();
            v10 = v33;
            if (swift_dynamicCastObjCClass())
            {

              *(v34 + 40) = 2;
              v13 = v71;
            }

            else
            {
              objc_opt_self();
              v41 = swift_dynamicCastObjCClass();
              v13 = v71;
              if (v41)
              {

                v42 = 3;
              }

              else
              {
                objc_opt_self();
                v43 = swift_dynamicCastObjCClass();

                if (!v43)
                {
                  *(v34 + 40) = 0;
                  goto LABEL_34;
                }

                v42 = 4;
              }

              *(v34 + 40) = v42;
            }
          }

LABEL_34:
          MEMORY[0x2530AD700]();
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          a1 = &v74;
          sub_252E372D4();
          v17 = v74;
          v23 = v29;
          v2 = v30;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_40:
        sub_25291AE30(v10);

        if (v17 >> 62)
        {
          a1 = sub_252E378C4();
        }

        else
        {
          a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v59;
        v13 = v60;
        i = v58;
        v10 = v66;

        v17 = MEMORY[0x277D84F90];
        if (!a1)
        {
          sub_252929F10(v13, 0);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v45 = sub_252E36AD4();
          __swift_project_value_buffer(v45, qword_27F544E08);
          v46 = sub_252E36AC4();
          v47 = sub_252E374C4();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_252917000, v46, v47, "Founds scene with empty actions. Invalidating candidate", v48, 2u);
            goto LABEL_62;
          }

          goto LABEL_64;
        }
      }

LABEL_17:
      v27 = v23;
      v28 = v2;
      v29 = v23;
      if (v2)
      {
LABEL_21:
        v30 = (v28 - 1) & v28;
        v31 = *(*(v10 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
        if (!v31)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v15)
        {
          v2 = 0;
          goto LABEL_40;
        }

        v28 = *(v13 + 8 * v29);
        ++v27;
        if (v28)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }
  }

  sub_252929F10(v13, a1 & 1);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v49 = sub_252E36AD4();
  __swift_project_value_buffer(v49, qword_27F544E08);

  v46 = sub_252E36AC4();
  v50 = sub_252E374C4();

  if (os_log_type_enabled(v46, v50))
  {
    v48 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v75 = v51;
    *v48 = 136315138;
    v52 = type metadata accessor for HomeFilter();
    v53 = MEMORY[0x2530AD730](v10, v52);
    v55 = v54;

    v56 = sub_252BE2CE0(v53, v55, &v75);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_252917000, v46, v50, "Couldn't get matching scenes for filters %s. Invalidating candidate", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x2530AED00](v51, -1, -1);
LABEL_62:
    MEMORY[0x2530AED00](v48, -1, -1);
  }

  else
  {
  }

LABEL_64:

  return 0;
}

uint64_t sub_252C6712C(char *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = 32;
  v4 = MEMORY[0x277D84F90];
  v5 = *(a1 + 2);
  while (1)
  {
    memcpy(__dst, &v2[v3], sizeof(__dst));
    memcpy(__src, &v2[v3], sizeof(__src));
    sub_2529353AC(__dst, v20);
    sub_252A13A70();
    if ((v6 & 1) != 0 && !*(__dst[13] + 16) && !*(__dst[20] + 16) && !*(__dst[28] + 16) && !*(__dst[19] + 16) && !*(__dst[21] + 16) && !*(__dst[14] + 16))
    {
      break;
    }

    sub_252935408(__dst);
LABEL_11:
    v3 += 504;
    if (!--v5)
    {
      return v4;
    }
  }

  v7 = *(__dst[15] + 16);
  sub_252935408(__dst);
  if (v7 || LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_27F53F520 != -1)
  {
LABEL_42:
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E08);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000056, 0x8000000252E8D990);
  v9 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(__src[0], __src[1], 0xD000000000000095, 0x8000000252E8D9F0);

  v10 = 0;
  v11 = v2 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v2 = &v11[504 * v10];
    for (i = v10; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      memcpy(__src, v2, sizeof(__src));
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_41;
      }

      memcpy(v20, v2, sizeof(v20));
      sub_2529353AC(__src, v18);
      sub_252A13A70();
      if (v13 & 1) != 0 && !*(__src[13] + 16) && !*(__src[20] + 16) && !*(__src[28] + 16) && !*(__src[19] + 16) && !*(__src[21] + 16) && !*(__src[14] + 16) && !*(__src[15] + 16) && LOBYTE(__src[39]) != 2 && (__src[39])
      {
        break;
      }

      sub_252935408(__src);
      v2 += 504;
      if (v10 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2529AA480((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 504 * v16 + 32), __src, 0x1F8uLL);
  }

  while (v10 != v1);
  return v4;
}

uint64_t sub_252C674B8(void *a1)
{
  v2 = a1[17];
  v3 = a1[24];
  if ((sub_2529A78B0(10, v3) || sub_2529A78B0(9, v3)) && sub_2529A78C8(1, v2))
  {
    memcpy(v7, a1 + 25, sizeof(v7));
    sub_252A13A70();
    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_252C67588(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C67630(a1);
}

uint64_t sub_252C67630(void *__src)
{
  *(v1 + 520) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252C676A4, 0, 0);
}

uint64_t sub_252C676A4()
{
  v81 = v1;
  memcpy(__dst, *(v1 + 520), 0x1F8uLL);
  v3 = sub_252BAC7E4();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    __dst[0] = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
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
      v11 = sub_252B72040(v9);

      v12 = (*(*v11 + 624))(4);

      (*(*v12 + 760))(v13);

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v5 != v7);
    v14 = __dst[0];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = type metadata accessor for HomeStore(0);
  v16 = static HomeStore.shared.getter(v15);
  v0 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v18 = v17;

  if (v18)
  {
    sub_252929F10(v0, 1);

LABEL_16:
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E08);
    v24 = 0xD000000000000041;
    v25 = 0x8000000252E8DA90;
    v26 = 26;
    goto LABEL_19;
  }

  v20 = static HomeStore.shared.getter(v19);
  v2 = HomeStore.accessories(matching:supporting:)(v14, 0);
  v22 = v21;

  if (v22)
  {
    sub_252929F10(v2, 1);

    sub_252929F10(v0, 0);
    goto LABEL_16;
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_252E37DD4();
      type metadata accessor for Entity(0);
      v30 = v2;
      goto LABEL_27;
    }

LABEL_43:
    sub_252929F10(v2, 0);
    if (v5)
    {
      __dst[0] = v6;
      sub_252E37AB4();
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_68;
      }

      v50 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x2530ADF00](v50, v4);
        }

        else
        {
          v51 = *(v4 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        type metadata accessor for HomeFilter.Builder();
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        *(v53 + 32) = 0;
        *(v53 + 40) = 7;
        *(v53 + 48) = 0u;
        *(v53 + 64) = 0u;
        *(v53 + 80) = 0u;
        *(v53 + 96) = 0u;
        *(v53 + 112) = 0u;
        *(v53 + 128) = 0u;
        *(v53 + 144) = 0u;
        *(v53 + 160) = 0u;
        *(v53 + 175) = 0;
        v54 = sub_252B72040(v52);

        v55 = (*(*v54 + 624))(27);

        (*(*v55 + 760))(v56);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v5 != v50);

      v58 = __dst[0];
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v59 = static HomeStore.shared.getter(v57);
    v60 = HomeStore.accessories(matching:supporting:)(v58, 0);
    v62 = v61;

    if (v62)
    {
      sub_252929F10(v60, 1);
      sub_252929F10(v0, 0);
      if (qword_27F53F520 == -1)
      {
LABEL_54:
        v63 = sub_252E36AD4();
        __swift_project_value_buffer(v63, qword_27F544E08);
        v24 = 0xD00000000000002ALL;
        v25 = 0x8000000252E8DC00;
        v26 = 49;
LABEL_19:
        sub_252CC4050(v24, v25, 0xD00000000000008FLL, 0x8000000252E8DAE0, 0xD000000000000010, 0x8000000252E8DB70, v26);
LABEL_20:
        v27 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

LABEL_68:
      swift_once();
      goto LABEL_54;
    }

    if (v60 >> 62)
    {
      if (sub_252E378C4())
      {
        type metadata accessor for Entity(0);

        v64 = sub_252E37B14();
        sub_252929F10(v60, 0);
LABEL_58:
        if (v0 >> 62)
        {
          type metadata accessor for Entity(0);

          v65 = sub_252E37B14();
          sub_252929F10(v0, 0);
        }

        else
        {

          sub_252E37DD4();
          type metadata accessor for Entity(0);
          v65 = v0;
        }

        v66 = sub_252AD3504(v64, v65);

        if (v66)
        {
          sub_252929F10(v0, 0);
          sub_252929F10(v60, 0);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v67 = sub_252E36AD4();
          __swift_project_value_buffer(v67, qword_27F544E08);
          v68 = sub_252E36AC4();
          v69 = sub_252E374C4();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_252917000, v68, v69, "Found motorizedDoors in same room as door locks, creating candidate", v70, 2u);
            MEMORY[0x2530AED00](v70, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_252E3C290;
          _s7BuilderCMa_1();
          swift_allocObject();
          sub_252E1E238();
          memcpy(__dst, (v1 + 16), 0x1F8uLL);
          v71 = sub_252E1EBE8(__dst);

          *(v71 + 152) = &unk_2864A76D8;

          v39 = &unk_2864A7700;
          goto LABEL_35;
        }
      }
    }

    else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_252E37DD4();
      type metadata accessor for Entity(0);
      v64 = v60;
      goto LABEL_58;
    }

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v72 = sub_252E36AD4();
    __swift_project_value_buffer(v72, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8DB90);
    v73 = type metadata accessor for Accessory(0);
    v74 = MEMORY[0x2530AD730](v0, v73);
    v76 = v75;
    sub_252929F10(v0, 0);
    MEMORY[0x2530AD570](v74, v76);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E8DC30);
    v77 = MEMORY[0x2530AD730](v60, v73);
    v79 = v78;
    sub_252929F10(v60, 0);
    MEMORY[0x2530AD570](v77, v79);

    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8DBE0);
    v48 = __dst[0];
    v49 = __dst[1];
    goto LABEL_74;
  }

LABEL_41:
  if (!sub_252E378C4())
  {
    goto LABEL_43;
  }

  type metadata accessor for Entity(0);

  v30 = sub_252E37B14();
  sub_252929F10(v2, 0);
LABEL_27:
  if (v0 >> 62)
  {
    type metadata accessor for Entity(0);

    v31 = sub_252E37B14();
    sub_252929F10(v0, 0);
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v31 = v0;
  }

  v32 = sub_252AD3504(v30, v31);

  if ((v32 & 1) == 0)
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8DB90);
    v41 = type metadata accessor for Accessory(0);
    v42 = MEMORY[0x2530AD730](v0, v41);
    v44 = v43;
    sub_252929F10(v0, 0);
    MEMORY[0x2530AD570](v42, v44);

    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8DBC0);
    v45 = MEMORY[0x2530AD730](v2, v41);
    v47 = v46;
    sub_252929F10(v2, 0);
    MEMORY[0x2530AD570](v45, v47);

    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8DBE0);
    v48 = __dst[0];
    v49 = __dst[1];
LABEL_74:
    sub_252CC3D90(v48, v49, 0xD00000000000008FLL, 0x8000000252E8DAE0);

    goto LABEL_20;
  }

  sub_252929F10(v0, 0);
  sub_252929F10(v2, 0);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544E08);
  v34 = sub_252E36AC4();
  v35 = sub_252E374C4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_252917000, v34, v35, "Found garageDoorEntities in same room as door locks, creating candidate", v36, 2u);
    MEMORY[0x2530AED00](v36, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_252E3C290;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  memcpy(__dst, (v1 + 16), 0x1F8uLL);
  v38 = sub_252E1EBE8(__dst);

  *(v38 + 152) = &unk_2864A7688;

  v39 = &unk_2864A76B0;
LABEL_35:
  sub_252E1F258(v39);

  sub_252E1E4F8(v37 + 32);

  v27 = v37;
LABEL_21:
  v28 = *(v1 + 8);

  return v28(v27);
}

void sub_252C6847C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8DD60, 0xD000000000000083, 0x8000000252E8DC80);
    goto LABEL_55;
  }

  v5 = a2;
  v6 = [v5 type];
  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 13)
      {
        if (v6 == 3)
        {
          v10 = [v5 stringValue];
          if (v10)
          {
            v11 = v10;
            v12 = sub_252E36F34();
            v14 = v13;

            if (qword_27F53F460 != -1)
            {
              swift_once();
            }

            v15 = off_27F544728;
            if (*(off_27F544728 + 2))
            {
              v16 = sub_252A44A10(v12, v14);
              v18 = v17;

              if (v18)
              {
                v8 = *(v15[7] + 8 * v16);
                goto LABEL_41;
              }
            }

            else
            {
            }

            goto LABEL_54;
          }
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544CB8);
        v25 = "lue to double equivalent";
        v26 = 0xD000000000000037;
        goto LABEL_53;
      }

      goto LABEL_23;
    }

    if (v6 != 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544CB8);
      v25 = " type for attribute position";
      v26 = 0xD000000000000029;
      goto LABEL_53;
    }

    if (qword_27F53F440 != -1)
    {
      swift_once();
    }

    v20 = off_27F544708;
LABEL_33:
    v21 = [v5 BOOLValue];
    if (v20[2])
    {
      v22 = sub_252A456F0(v21);
      if (v23)
      {
        v8 = *(v20[7] + 8 * v22);
        goto LABEL_41;
      }
    }

    goto LABEL_54;
  }

  if (a1 == 8)
  {
    if (v6 != 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544CB8);
      v25 = " type for attribute raise";
      v26 = 0xD000000000000028;
      goto LABEL_53;
    }

    if (qword_27F53F450 != -1)
    {
      swift_once();
    }

    v20 = qword_27F544718;
    goto LABEL_33;
  }

  if (a1 == 9)
  {
    if (v6 != 4)
    {
      if ([v5 type] == 2)
      {
        [v5 doubleValue];
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 <= -9.22337204e18)
          {
            __break(1u);
          }

          else if (v7 < 9.22337204e18)
          {
            v8 = v7;
LABEL_41:
            *(a3 + 24) = MEMORY[0x277D83B88];
LABEL_42:

            *a3 = v8;
            return;
          }

          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
      }

      else if (qword_27F53F4B0 == -1)
      {
LABEL_52:
        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544CB8);
        v25 = "ute securitySystemState";
        v26 = 0xD00000000000002CLL;
        goto LABEL_53;
      }

      swift_once();
      goto LABEL_52;
    }

LABEL_40:
    v8 = [v5 integerValue];
    goto LABEL_41;
  }

LABEL_23:
  if (v6 == 1)
  {
    v19 = [v5 BOOLValue];
    *(a3 + 24) = MEMORY[0x277D839B0];

    *a3 = v19;
    return;
  }

  if ([v5 type] == 4)
  {
    goto LABEL_40;
  }

  if ([v5 type] == 2)
  {
    [v5 doubleValue];
    v30 = v29;
    *(a3 + 24) = MEMORY[0x277D839F8];

    *a3 = v30;
    return;
  }

  if ([v5 type] != 5)
  {
    if ([v5 type] == 6)
    {
      v39 = [v5 rangeValue];
      if (v39)
      {
        v8 = v39;
        *(a3 + 24) = type metadata accessor for HomeAttributeRange();
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if ([v5 type] == 3)
    {
      v44 = [v5 stringValue];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E36F34();
        v48 = v47;

        *(a3 + 24) = MEMORY[0x277D837D0];
        *a3 = v46;
        *(a3 + 8) = v48;
        return;
      }

      goto LABEL_54;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v49 = sub_252E36AD4();
    __swift_project_value_buffer(v49, qword_27F544CB8);
    v25 = "Received nil HomeAttributeValue";
    v26 = 0xD00000000000003ELL;
LABEL_53:
    sub_252CC3D90(v26, v25 | 0x8000000000000000, 0xD000000000000083, 0x8000000252E8DC80);
LABEL_54:

LABEL_55:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (qword_27F53F4B0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E8DDC0, 0xD000000000000083, 0x8000000252E8DC80);
  v33 = type metadata accessor for HomeAttributeValue();
  v34 = objc_allocWithZone(v33);
  v35 = sub_252E36F04();
  v36 = [v34 initWithIdentifier:0 displayString:v35];

  v37 = v36;
  [v37 setType_];
  [v37 setLimitValue_];

  LOBYTE(v35) = _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(v5, v37);
  if (v35)
  {
    *(a3 + 24) = MEMORY[0x277D839F8];

    v38 = 0x4059000000000000;
  }

  else
  {
    v40 = objc_allocWithZone(v33);
    v41 = sub_252E36F04();
    v42 = [v40 initWithIdentifier:0 displayString:v41];

    v43 = v42;
    [v43 setType_];
    [v43 setLimitValue_];

    _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(v5, v43);
    *(a3 + 24) = MEMORY[0x277D839F8];

    v38 = 0x3FF0000000000000;
  }

  *a3 = v38;
}

uint64_t sub_252C68CC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544730, &qword_252E57A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = vdupq_n_s64(1uLL);
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 64) = v9;
  *(inited + 72) = xmmword_252E3C290;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = xmmword_252E3C130;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 112) = v17;
  *(inited + 120) = xmmword_252E57A60;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 136) = v21;
  *(inited + 144) = 7;
  v22 = sub_252CC57EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544738, &qword_252E57A98);
  result = swift_arrayDestroy();
  off_27F544700 = v22;
  return result;
}

void *sub_252C68FAC()
{
  result = sub_252CC6E48(&unk_2864A9C90);
  off_27F544708 = result;
  return result;
}

uint64_t sub_252C68FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544740, &qword_252E57AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = vdupq_n_s64(1uLL);
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 64) = v9;
  *(inited + 72) = xmmword_252E3C290;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = xmmword_252E57A70;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 112) = v17;
  *(inited + 120) = 7;
  v18 = sub_252CC5814(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544748, &qword_252E57AA8);
  result = swift_arrayDestroy();
  off_27F544710 = v18;
  return result;
}

unint64_t sub_252C69250()
{
  result = sub_252CC6E34(&unk_2864A9C50);
  qword_27F544718 = result;
  return result;
}

uint64_t sub_252C69278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544750, &qword_252E57AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 1;
  type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 48) = xmmword_252E3C290;
  *(inited + 64) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(inited + 72) = xmmword_252E57A80;
  *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(inited + 96) = xmmword_252E57A60;
  *(inited + 112) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52545F4D52414C41, 0xEF44455245474749, 0);
  *(inited + 120) = 1;
  v1 = sub_252CC583C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544758, &qword_252E57AB8);
  result = swift_arrayDestroy();
  off_27F544720 = v1;
  return result;
}

uint64_t sub_252C693DC()
{
  v0 = sub_252CC6F34(&unk_2864A9CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544760, &unk_252E57AC0);
  result = swift_arrayDestroy();
  off_27F544728 = v0;
  return result;
}

id sub_252C69438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_252DE99A0(a4, a5);
  if (sub_252E36F34() == a1 && v9 == a2)
  {
    goto LABEL_26;
  }

  v11 = sub_252E37DB4();

  if (v11)
  {
    goto LABEL_27;
  }

  if (sub_252E36F34() == a1 && v12 == a2)
  {
LABEL_26:

LABEL_27:
    sub_252AEA788(a3, &v59);
    if (v61)
    {
      if (swift_dynamicCast())
      {
        if (qword_27F53F438 != -1)
        {
          swift_once();
        }

        v19 = off_27F544700;
        if (!*(off_27F544700 + 2))
        {
          goto LABEL_63;
        }

        v20 = sub_252A488EC();
        if ((v22 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v14 = sub_252E37DB4();

  if (v14)
  {
    goto LABEL_27;
  }

  if (sub_252E36F34() == a1 && v15 == a2)
  {
    goto LABEL_18;
  }

  v17 = sub_252E37DB4();

  if (v17)
  {
    goto LABEL_19;
  }

  if (sub_252E36F34() == a1 && v18 == a2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v26 = sub_252E37DB4();

  if ((v26 & 1) == 0)
  {
    if (sub_252E36F34() == a1 && v27 == a2)
    {
      goto LABEL_38;
    }

    v28 = sub_252E37DB4();

    if (v28)
    {
      goto LABEL_40;
    }

    if (sub_252E36F34() == a1 && v32 == a2)
    {
LABEL_38:

LABEL_40:
      sub_252AEA788(a3, &v59);
      if (!v61)
      {
        goto LABEL_58;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    v33 = sub_252E37DB4();

    if (v33)
    {
      goto LABEL_40;
    }

    if (sub_252E36F34() == a1 && v34 == a2)
    {
      goto LABEL_49;
    }

    v35 = sub_252E37DB4();

    if ((v35 & 1) == 0)
    {
      if (sub_252E36F34() == a1 && v45 == a2)
      {
LABEL_49:

        goto LABEL_51;
      }

      v46 = sub_252E37DB4();

      if ((v46 & 1) == 0)
      {
        sub_252AEA788(a3, &v59);
        if (v61)
        {
          if ((swift_dynamicCast() & 1) != 0 && v8 != 1)
          {
            v47 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v48 = sub_252E36F04();
            v49 = [v47 initWithIdentifier:0 displayString:v48];

            v25 = v49;
            [v25 setBoolValue_];
            [v25 setType_];
            goto LABEL_43;
          }
        }

        else
        {
          sub_252982F10(&v59);
        }

        sub_252AEA788(a3, &v59);
        if (v61)
        {
          if (swift_dynamicCast())
          {
LABEL_42:
            v29 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v30 = sub_252E36F04();
            v31 = [v29 initWithIdentifier:0 displayString:v30];

            v25 = v31;
            [v25 setIntegerValue_];
            [v25 setUnit_];
            [v25 setType_];
LABEL_43:

            return v25;
          }
        }

        else
        {
          sub_252982F10(&v59);
        }

        sub_252AEA788(a3, &v59);
        if (v61)
        {
          if (swift_dynamicCast())
          {
            v50 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v51 = sub_252E36F04();
            v52 = [v50 initWithIdentifier:0 displayString:v51];

            v25 = v52;
            [v25 setDoubleValue_];
            [v25 setUnit_];
            [v25 setType_];
            goto LABEL_43;
          }
        }

        else
        {
          sub_252982F10(&v59);
        }

        sub_252AEA788(a3, &v59);
        if (v61)
        {
          if (swift_dynamicCast())
          {
            type metadata accessor for HomeAttributeValue();
            return HomeAttributeValue.__allocating_init(stringValue:unit:)(v55, v57, v8);
          }
        }

        else
        {
          sub_252982F10(&v59);
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v53 = sub_252E36AD4();
        __swift_project_value_buffer(v53, qword_27F544CB8);
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_252E379F4();

        sub_252AEA788(a3, &v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
        v54 = sub_252E36F94();
        MEMORY[0x2530AD570](v54);

        MEMORY[0x2530AD570](0x203A657079740ALL, 0xE700000000000000);
        MEMORY[0x2530AD570](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
        v39 = 0xD000000000000022;
        v40 = 0x8000000252E8DC50;
        goto LABEL_62;
      }
    }

LABEL_51:
    sub_252AEA788(a3, &v59);
    if (v61)
    {
      if (swift_dynamicCast())
      {
        if (qword_27F53F458 != -1)
        {
          swift_once();
        }

        v19 = off_27F544720;
        if (!*(off_27F544720 + 2))
        {
          goto LABEL_63;
        }

        v20 = sub_252A488EC();
        if ((v36 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_19:
  sub_252AEA788(a3, &v59);
  if (!v61)
  {
LABEL_58:
    sub_252982F10(&v59);
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v37 = sub_252E36AD4();
    __swift_project_value_buffer(v37, qword_27F544CB8);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_252E379F4();
    v56 = v59;
    v58 = v60;
    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8DD10);
    sub_252AEA788(a3, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    MEMORY[0x2530AD570](0x203A657079740ALL, 0xE700000000000000);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E8DD30);
    v39 = v56;
    v40 = v58;
LABEL_62:
    sub_252CC3D90(v39, v40, 0xD000000000000083, 0x8000000252E8DC80);

    goto LABEL_63;
  }

  if (qword_27F53F448 != -1)
  {
    swift_once();
  }

  v19 = off_27F544710;
  if (!*(off_27F544710 + 2))
  {
    goto LABEL_63;
  }

  v20 = sub_252A488EC();
  if ((v21 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_33:
  v23 = *(v19[7] + 16 * v20);
  v24 = v23;
  if (!v23)
  {
LABEL_63:
    v41 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v42 = sub_252E36F04();
    v43 = [v41 initWithIdentifier:0 displayString:v42];

    v25 = v43;
    [v25 setBoolValue_];
    [v25 setType_];

    return v25;
  }

  return v24;
}

id sub_252C69EA4(void *a1, uint64_t a2)
{
  v4 = [a1 characteristicType];
  v5 = sub_252E36F34();
  v7 = v6;

  v8 = [a1 metadata];
  if (v8 && (v9 = v8, v10 = [v8 units], v9, v10))
  {
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_252AEA788(a2, &v18);
  if (v19)
  {
    sub_252A00AF4(&v18, v20);
  }

  else
  {
    if ([a1 value])
    {
      sub_252E377F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v20[0] = v16;
    v20[1] = v17;
    if (v19)
    {
      sub_252982F10(&v18);
    }
  }

  v14 = sub_252C69438(v5, v7, v20, v11, v13);

  sub_252982F10(v20);
  return v14;
}

uint64_t sub_252C6A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_252C6A050, 0, 0);
}

uint64_t sub_252C6A050()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD000000000000091, 0x8000000252E8DEC0);
  v9 = (*(v10 + 24) + **(v10 + 24));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_252963EC4;
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, v7, v4, v5, v3);
}

uint64_t sub_252C6A22C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExcludeNonCommonTypesFromGenericSetPowerRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252C6A260(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 27 && (sub_252C4DD64() & 1) != 0)
  {
    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    sub_252B7DA9C(a1);
    if (sub_252B7DC00() & 1) == 0 || (v8 = sub_252B7FC4C(&unk_2864AE828), v8 == 2) || (v8 & 1) != 0 || (v10 = sub_252B7FA40(&unk_2864AE828), v10 != 2) && (v10)
    {

      return 1;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8DFC0);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A8, 0x8000000252E8E000);
  }

  return 0;
}

id sub_252C6A488(void *a1)
{
  v2 = [a1 filters];
  if (v2)
  {
    type metadata accessor for HomeFilter();
    sub_252E37264();

    type metadata accessor for ServiceCollectionDecorator();
    swift_initStackObject();
    v41 = a1;
    v3 = *(sub_252B7DA9C(v41) + 16);

    if (v3 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

LABEL_8:
        v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v10 = sub_252E36F34();
        v12 = v11;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v13 = off_27F546230;
        if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
        {
          v16 = *(v13[7] + 8 * v14);
        }

        else
        {
          v16 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7B8C(0, *(v6 + 2) + 1, 1, v6);
        }

        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        if (v18 >= v17 >> 1)
        {
          v6 = sub_2529F7B8C((v17 > 1), v18 + 1, 1, v6);
        }

        *(v6 + 2) = v18 + 1;
        *&v6[8 * v18 + 32] = v16;
        ++v5;
        if (v8 == i)
        {
          goto LABEL_28;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_28:

    v21 = *(v6 + 2);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v23 = (v6 + 32);
      v24 = &unk_2864AE000;
      v25 = qword_2864AE848;
      do
      {
        v29 = *v23++;
        v28 = v29;
        if (v25 != v29)
        {
          v30 = vdupq_n_s64(v28);
          if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864AE850, v30), vceqq_s64(unk_2864AE860, v30)), xmmword_252E419B0)) & 0xF) == 0 && qword_2864AE870 != v28)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA420(0, *(v22 + 16) + 1, 1);
              v24 = &unk_2864AE000;
            }

            v27 = *(v22 + 16);
            v26 = *(v22 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2529AA420((v26 > 1), v27 + 1, 1);
              v24 = &unk_2864AE000;
            }

            *(v22 + 16) = v27 + 1;
            *(v22 + 8 * v27 + 32) = v28;
            v25 = v24[265];
          }
        }

        --v21;
      }

      while (v21);
    }

    v32 = *(v22 + 16);
    if (v32)
    {
      v42 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      type metadata accessor for HomeFilter.Builder();
      v33 = 32;
      do
      {
        v34 = *(v22 + v33);
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 0;
        *(inited + 40) = 7;
        *(inited + 175) = 0;
        *(inited + 48) = 0u;
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0u;
        *(inited + 128) = 0u;
        *(inited + 144) = 0u;
        *(inited + 160) = 0u;
        *(inited + 176) = 1;
        *(inited + 72) = v34;
        sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        swift_deallocClassInstance();
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v33 += 8;
        --v32;
      }

      while (v32);

      v36 = v42;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    sub_25297A8D8(v36);
    v37 = [v41 userTask];
    v38 = [v41 time];
    v39 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v39 setUserTask_];
    v40 = sub_252E37254();

    [v39 setFilters_];

    [v39 setTime_];
    return v39;
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v20 = 8;
  }

  return result;
}

uint64_t sub_252C6AA3C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = (v3 + 504 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      result = memcpy(__dst, v5, sizeof(__dst));
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      memcpy(v11, v5, sizeof(v11));
      sub_2529353AC(__dst, v10);
      if (sub_252A13FE0() & 1) != 0 || (memcpy(v10, __dst, sizeof(v10)), (sub_252A13BEC()) || (memcpy(v11, __dst, sizeof(v11)), (sub_252A143D4()))
      {
        if (*(__dst[19] + 16) > 1uLL || *(__dst[21] + 16) > 1uLL)
        {
          break;
        }
      }

      result = sub_252935408(__dst);
      v5 += 504;
      if (v2 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v13;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2529AA480((v8 > 1), v9 + 1, 1);
      v4 = v13;
    }

    *(v4 + 16) = v9 + 1;
    result = memcpy((v4 + 504 * v9 + 32), __dst, 0x1F8uLL);
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_252C6AC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = a1 + 32;
  v54 = a1 + 32;
  v55 = *(a1 + 16);
  while (1)
  {
    memcpy(__dst, (v3 + 504 * v2), 0x1F8uLL);
    v4 = __dst[19];
    if (*(__dst[19] + 16))
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  type metadata accessor for HomeStore(0);

  v5 = sub_2529353AC(__dst, __src);
  v6 = static HomeStore.shared.getter(v5);
  memcpy(__src, __dst, sizeof(__src));
  v7 = sub_252BAC7E4();
  v8 = HomeStore.accessories(matching:supporting:)(v7, 0);
  v10 = v9;

  if (v10)
  {
    sub_252929F10(v8, 1);

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544E08);
    sub_252CC3D90(0xD000000000000047, 0x8000000252E8E0B0, 0xD00000000000009DLL, 0x8000000252E8E100);
    sub_252935408(__dst);
    goto LABEL_4;
  }

  v56 = v4;
  if (v8 >> 62)
  {
    result = sub_252E378C4();
    v13 = result;
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v14)
    {
      sub_252929F10(v8, 0);
      v23 = sub_252C75848(v15);

      v24 = sub_252C75848(v56);

      v25 = sub_2529A9538(v23, v24);

      if (v25)
      {
        memcpy(__src, __dst, sizeof(__src));
        if (sub_252A13FE0())
        {
          result = sub_252935408(__dst);
          v3 = v54;
          v1 = v55;
LABEL_33:
          v27 = 0;
          v53 = MEMORY[0x277D84F90];
          while (1)
          {
LABEL_37:
            if (v27 >= v1)
            {
              goto LABEL_72;
            }

            result = memcpy(__src, (v3 + 504 * v27), sizeof(__src));
            if (__OFADD__(v27++, 1))
            {
              goto LABEL_73;
            }

            v32 = __src[19];
            if (!*(__src[19] + 16))
            {
              goto LABEL_36;
            }

            v33 = sub_2529353AC(__src, v58);
            v34 = static HomeStore.shared.getter(v33);
            memcpy(v58, __src, sizeof(v58));
            v35 = sub_252BAC7E4();
            v36 = HomeStore.accessories(matching:supporting:)(v35, 0);
            v38 = v37;

            if (v38)
            {
              break;
            }

            v57 = v32;
            if (v36 >> 62)
            {
              result = sub_252E378C4();
              v40 = result;
            }

            else
            {
              v40 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v41 = 0;
            v42 = MEMORY[0x277D84F90];
            while (v40 != v41)
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                result = MEMORY[0x2530ADF00](v41, v36);
                v43 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (v41 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_71;
                }

                v43 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_70;
                }
              }

              v44 = sub_252D4DFC8();

              ++v41;
              if (v44)
              {
                v46 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                v45 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F7A80(0, *(v42 + 16) + 1, 1, v42);
                  v42 = result;
                }

                v48 = *(v42 + 16);
                v47 = *(v42 + 24);
                if (v48 >= v47 >> 1)
                {
                  result = sub_2529F7A80((v47 > 1), v48 + 1, 1, v42);
                  v42 = result;
                }

                *(v42 + 16) = v48 + 1;
                v49 = v42 + 16 * v48;
                *(v49 + 32) = v46;
                *(v49 + 40) = v45;
                v41 = v43;
              }
            }

            sub_252929F10(v36, 0);
            v28 = sub_252C75848(v42);

            v29 = sub_252C75848(v57);

            v30 = sub_2529A9538(v28, v29);

            if ((v30 & 1) == 0)
            {
              result = sub_252935408(__src);
              v3 = v54;
              v1 = v55;
              goto LABEL_36;
            }

            v50 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA480(0, *(v53 + 16) + 1, 1);
              v50 = v53;
            }

            v52 = *(v50 + 16);
            v51 = *(v50 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_2529AA480((v51 > 1), v52 + 1, 1);
              v50 = v53;
            }

            *(v50 + 16) = v52 + 1;
            v53 = v50;
            result = memcpy((v50 + 504 * v52 + 32), __src, 0x1F8uLL);
            v3 = v54;
            v1 = v55;
            if (v27 == v55)
            {
              return v53;
            }
          }

          sub_252929F10(v36, 1);

          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v39 = sub_252E36AD4();
          __swift_project_value_buffer(v39, qword_27F544E08);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E8E0B0, 0xD00000000000009DLL, 0x8000000252E8E100);
          result = sub_252935408(__src);
LABEL_36:
          if (v27 == v1)
          {
            return v53;
          }

          goto LABEL_37;
        }

        memcpy(v58, __dst, sizeof(v58));
        v26 = sub_252A13BEC();
        result = sub_252935408(__dst);
        v3 = v54;
        v1 = v55;
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_252935408(__dst);
        v3 = v54;
        v1 = v55;
      }

      goto LABEL_4;
    }

    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x2530ADF00](v14, v8);
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_68;
    }

LABEL_17:
    v17 = sub_252D4DFC8();

    ++v14;
    if (v17)
    {
      v19 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_2529F7A80((v20 > 1), v21 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v14 = v16;
    }
  }

  if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

  v16 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_17;
  }

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
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_252C6B350(unint64_t a1)
{
  v87 = sub_252E36324();
  v2 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v69 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v67 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v67 - v12;
  MEMORY[0x28223BE20](v11);
  v76 = v67 - v14;
  v67[2] = type metadata accessor for HomeAutomationEntityResponses();
  result = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = v16;
  if (a1)
  {
    v67[1] = result;
    v89 = v16;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v19 = 0;
      v75 = a1 & 0xC000000000000001;
      v68 = a1 + 32;
      v84 = (v2 + 56);
      v86 = v2 + 32;
      v73 = v4;
      v74 = v10;
      v78 = a1;
      v71 = v17;
      v72 = v13;
      v70 = i;
      while (1)
      {
        if (v75)
        {
          v20 = MEMORY[0x2530ADF00](v19, a1);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_47;
          }

          v20 = *(v68 + 8 * v19);
        }

        v85 = v20;
        v21 = __OFADD__(v19, 1);
        v22 = v19 + 1;
        if (v21)
        {
          break;
        }

        v80 = v22;
        type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v23 = swift_allocObject();
        v24 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v25 = *v84;
        v26 = 1;
        v27 = v87;
        (*v84)(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v87);
        v25(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v27);
        v81 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
        *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v16;
        v82 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home;
        *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v77 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        v83 = v25;
        v25(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v27);
        *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v16;
        *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v16;
        v28 = [v85 homeEntityName];
        if (v28)
        {
          v29 = v28;
          sub_252E36F34();

          v30 = v76;
          sub_252E37024();

          v26 = 0;
        }

        else
        {
          v30 = v76;
        }

        v31 = 1;
        v83(v30, v26, 1, v87);
        swift_beginAccess();
        sub_252956BAC(v30, v23 + v24);
        swift_endAccess();
        sub_25293847C(v30, &qword_27F540298, &unk_252E3C270);
        v32 = [v85 room];
        if (v32)
        {
          v33 = v32;
          sub_252E36F34();

          sub_252E37024();

          v31 = 0;
        }

        v34 = v13;
        v35 = v31;
        v36 = v87;
        v37 = v13;
        v38 = v83;
        v83(v34, v35, 1, v87);
        type metadata accessor for HomeAutomationHomeLocation.Builder(0);
        v39 = swift_allocObject();
        v40 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        v38(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v36);
        swift_beginAccess();
        sub_252956BAC(v37, v39 + v40);
        swift_endAccess();
        sub_25293847C(v37, &qword_27F540298, &unk_252E3C270);
        type metadata accessor for HomeAutomationHomeLocation(0);
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        sub_252956C1C(v39 + v40, v41 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        v79 = v41;
        *(v23 + v81) = v41;
        v42 = [v85 home];
        if (v42)
        {
          v43 = v42;
          sub_252E36F34();

          v44 = v74;
          sub_252E37024();

          v45 = 0;
          v4 = v73;
        }

        else
        {
          v4 = v73;
          v44 = v74;
          v45 = 1;
        }

        v46 = v87;
        v13 = v83;
        v83(v44, v45, 1, v87);
        v47 = swift_allocObject();
        v48 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        (v13)(v47 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v46);
        swift_beginAccess();
        sub_252956BAC(v44, v47 + v48);
        swift_endAccess();
        sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
        v49 = swift_allocObject();
        *(v49 + 16) = 0;
        sub_252956C1C(v47 + v48, v49 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v47 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        v81 = v49;
        *(v23 + v82) = v49;
        v50 = [v85 zones];
        a1 = v78;
        if (v50)
        {
          v51 = v50;
          v17 = sub_252E37264();

          v16 = *(v17 + 16);
          if (v16)
          {
            v10 = 0;
            v52 = v17 + 40;
            v53 = MEMORY[0x277D84F90];
            while (v10 < *(v17 + 16))
            {

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_2529F7F74(0, v53[2] + 1, 1, v53);
              }

              v13 = v53[2];
              v54 = v53[3];
              a1 = v13 + 1;
              if (v13 >= v54 >> 1)
              {
                v53 = sub_2529F7F74((v54 > 1), v13 + 1, 1, v53);
              }

              v10 = (v10 + 1);
              v53[2] = a1;
              (*(v2 + 32))(v53 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v4, v87);
              v52 += 16;
              if (v16 == v10)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            break;
          }

          v53 = MEMORY[0x277D84F90];
LABEL_29:

          sub_252AD6B10(v53);

          a1 = v78;
        }

        v55 = [v85 deviceTypes];
        v13 = v72;
        v16 = MEMORY[0x277D84F90];
        if (v55)
        {
          v56 = v55;
          v57 = sub_252E37264();

          if (*(v57 + 16))
          {
            v58 = *(v57 + 32);

            sub_252E25FC4(v58);
            if (v59)
            {
              goto LABEL_38;
            }

            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v60 = off_27F541CD0;
            if (*(off_27F541CD0 + 2) && (v61 = sub_252A488EC(), (v62 & 1) != 0))
            {
              v88 = *(v60[7] + v61);
              AccessoryTypeSemantic.rawValue.getter();
              sub_252E362F4();
              v63 = 0;
            }

            else
            {
LABEL_38:
              v63 = 1;
            }

            v64 = v69;
            v83(v69, v63, 1, v87);
            v65 = v77;
            swift_beginAccess();
            sub_252956BAC(v64, v23 + v65);
            swift_endAccess();
            sub_25293847C(v64, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
          }
        }

        type metadata accessor for HomeAutomationEntityResponse(0);
        swift_allocObject();
        sub_2529605C0(v23);
        MEMORY[0x2530AD700]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        swift_setDeallocating();
        v10 = &qword_27F540298;
        sub_25293847C(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, &qword_27F540298, &unk_252E3C270);

        sub_25293847C(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        v19 = v80;
        v17 = v71;
        if (v80 == v70)
        {
          v66 = v89;

          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v66 = MEMORY[0x277D84F90];
LABEL_50:
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v66;
  }

  return result;
}

uint64_t sub_252C6BEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C6BFA4, 0, 0);
}

uint64_t sub_252C6BFA4()
{
  v1 = v0[11];
  v2 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v2);
  sub_252AD7CC4();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_252C6C090;
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];

  return sub_252BDB88C((v0 + 2), v5, v6, v4, 0, 0, 0, v2);
}

uint64_t sub_252C6C090()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C6C314;
  }

  else
  {
    v5 = sub_252C6C200;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C6C200()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C6C314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C6C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C6C440, 0, 0);
}

uint64_t sub_252C6C440()
{
  v1 = v0[11];
  v2 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v2);
  sub_252AD7CC4();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_252C6C52C;
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];

  return sub_252BDB88C((v0 + 2), v5, v6, v4, 0, 0, 0, v2);
}

uint64_t sub_252C6C52C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C6CB24;
  }

  else
  {
    v5 = sub_252C6CB28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C6C69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252C6C6C0, 0, 0);
}

uint64_t sub_252C6C6C0()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  v5 = sub_252C6B350(v3);
  *(v0 + 48) = v5;

  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_252C37970;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_252C6C378(v8, v9, &unk_252E57C28, v6);
}

uint64_t sub_252C6C828(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C6C848, 0, 0);
}

uint64_t sub_252C6C848()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252C37C68;
  v4 = v0[2];
  v3 = v0[3];

  return sub_252C15854(0, v1, v3, v4);
}

uint64_t sub_252C6C974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C6C69C(a1, a2, a3);
}

void *sub_252C6CA28@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverCountResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C6CA8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C6C828(v2, v3);
}

id HomeAttributeValue.localized.getter()
{
  v0 = sub_252C6DD64();
  if ([v20 unit] != v0 && (objc_msgSend(v20, sel_unit) == 3 || objc_msgSend(v20, sel_unit) == 2))
  {
    if (v0 == 2)
    {
      [v20 doubleValue];
      v10 = sub_252C70710(2, v9);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
      [v20 doubleValue];
      sub_252E37374();
      MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8E290);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);

      v12 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v13 = sub_252E36F04();
      v14 = [v12 initWithIdentifier:0 displayString:v13];

      v8 = v14;
      [v8 setDoubleValue_];
      [v8 setUnit_];
      goto LABEL_15;
    }

    if (v0 == 3)
    {
      [v20 doubleValue];
      v3 = sub_252C70710(3, v2);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v4 = sub_252E36AD4();
      __swift_project_value_buffer(v4, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
      [v20 doubleValue];
      sub_252E37374();
      MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E8E2B0);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);

      v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v6 = sub_252E36F04();
      v7 = [v5 initWithIdentifier:0 displayString:v6];

      v8 = v7;
      [v8 setDoubleValue_];
      [v8 setUnit_];
LABEL_15:
      [v8 setType_];

      return v8;
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252E379F4();

    v16 = [v20 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);

    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E8E1E0, 0xD00000000000007ALL, 0x8000000252E8E210);
  }

  return v20;
}

uint64_t sub_252C6D070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_252CC5174(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544780, &unk_252E57D98);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_252C6D0EC(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252C6D1F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252C70D0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252C6D224(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x474E4954414548;
  v5 = 0x5455415F54414548;
  v6 = 0xE90000000000004FLL;
  if (v2 != 5)
  {
    v5 = 0x5455415F4C4F4F43;
    v6 = 0xE90000000000004FLL;
  }

  v7 = 1162626121;
  if (v2 != 3)
  {
    v7 = 1330926913;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x474E494C4F4F43;
  if (v2 != 1)
  {
    v9 = 4605519;
    v8 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_252C6D2F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65676E6172;
  }

  else
  {
    v3 = 0x65676E6152746F6ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65676E6172;
  }

  else
  {
    v5 = 0x65676E6152746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252C6D398()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C6D418(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C6D484(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C6D500@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

  *a2 = v5;
  return result;
}

void sub_252C6D560(uint64_t *a1@<X8>)
{
  v2 = 0x65676E6152746F6ELL;
  if (*v1)
  {
    v2 = 0x65676E6172;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252C6D59C()
{

  return swift_deallocClassInstance();
}

void *sub_252C6D5D4(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    return a1;
  }

  v5 = a1;
  v6 = [v5 entityResponses];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D84F90];
    type metadata accessor for HomeEntityResponse();
    v9 = sub_252E37264();

    v10 = v9;
    v73 = v8;
    if (v9 >> 62)
    {
      goto LABEL_79;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v65 = v5;
      v66 = v10;
      v13 = 0;
      v14 = v10 & 0xC000000000000001;
      v70 = v10 + 32;
      v71 = v10 & 0xFFFFFFFFFFFFFF8;
      v68 = v10 & 0xC000000000000001;
      v69 = v11;
      while (1)
      {
        if (v14)
        {
          v10 = MEMORY[0x2530ADF00](v13, v66);
        }

        else
        {
          if (v13 >= *(v71 + 16))
          {
            goto LABEL_78;
          }

          v10 = *(v70 + 8 * v13);
        }

        v15 = v10;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v63 = v10;
          v11 = sub_252E378C4();
          v10 = v63;
          goto LABEL_6;
        }

        v17 = [v10 entity];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 deviceTypes];
          if (!v19)
          {

            goto LABEL_33;
          }

          v20 = v19;
          v21 = sub_252E37264();

          v22 = *(v21 + 16);
          if (v22)
          {
            sub_2529AA420(0, v22, 0);
            v23 = v12;
            v5 = 32;
            do
            {
              v24 = sub_252E25FC4(*(v21 + v5));
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = v24;
              }

              v28 = *(v23 + 16);
              v27 = *(v23 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_2529AA420((v27 > 1), v28 + 1, 1);
              }

              *(v23 + 16) = v28 + 1;
              *(v23 + 8 * v28 + 32) = v26;
              v5 += 8;
              --v22;
            }

            while (v22);

            v12 = MEMORY[0x277D84F90];
            v14 = v68;
            v11 = v69;
            v34 = *(v23 + 16);
            if (!v34)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544D60);
          sub_252E379F4();

          v5 = 0xD000000000000025;
          v30 = [v15 description];
          v31 = sub_252E36F34();
          v33 = v32;

          MEMORY[0x2530AD570](v31, v33);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
        }

LABEL_33:
        v23 = v12;
        v34 = *(v12 + 16);
        if (!v34)
        {
          goto LABEL_38;
        }

LABEL_34:
        v35 = 32;
        while (v34)
        {
          v36 = *(v23 + v35);
          v35 += 8;
          --v34;
          if (v36 == 3)
          {
LABEL_61:

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            v10 = sub_252E37AA4();
            goto LABEL_9;
          }
        }

LABEL_38:

        v37 = [v15 entity];
        if (!v37)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v49 = sub_252E36AD4();
          __swift_project_value_buffer(v49, qword_27F544D60);
          sub_252E379F4();

          v5 = 0xD000000000000025;
          v50 = [v15 description];
          v51 = sub_252E36F34();
          v53 = v52;

          MEMORY[0x2530AD570](v51, v53);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
LABEL_56:

LABEL_57:
          v43 = v12;
          v54 = *(v12 + 16);
          if (v54)
          {
            goto LABEL_58;
          }

          goto LABEL_8;
        }

        v38 = v37;
        v39 = [v37 deviceTypes];
        if (!v39)
        {

          goto LABEL_57;
        }

        v40 = v39;
        v41 = sub_252E37264();

        v42 = *(v41 + 16);
        if (!v42)
        {

          goto LABEL_56;
        }

        sub_2529AA420(0, v42, 0);
        v43 = v12;
        v5 = 32;
        do
        {
          v44 = sub_252E25FC4(*(v41 + v5));
          if (v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v44;
          }

          v48 = *(v43 + 16);
          v47 = *(v43 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_2529AA420((v47 > 1), v48 + 1, 1);
          }

          *(v43 + 16) = v48 + 1;
          *(v43 + 8 * v48 + 32) = v46;
          v5 += 8;
          --v42;
        }

        while (v42);

        v12 = MEMORY[0x277D84F90];
        v14 = v68;
        v11 = v69;
        v54 = *(v43 + 16);
        if (v54)
        {
LABEL_58:
          v55 = 32;
          while (v54)
          {
            v56 = *(v43 + v55);
            v55 += 8;
            --v54;
            if (v56 == 29)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_9;
        }

LABEL_8:

LABEL_9:
        if (v13 == v11)
        {
          v12 = v73;
          v5 = v65;
          break;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  sub_2529904E4(a1);
  v57 = sub_252D6D96C(v5);
  sub_252927D3C(a1);
  v58 = MEMORY[0x277D84F90];
  if (!v12)
  {
    goto LABEL_82;
  }

  if (!(v12 >> 62))
  {
    v59 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_70;
    }

LABEL_81:

LABEL_82:
    *(v57 + 24) = v58;

    v64 = sub_252D6BB10();
    sub_252927D3C(a1);

    return v64;
  }

  v59 = sub_252E378C4();
  if (!v59)
  {
    goto LABEL_81;
  }

LABEL_70:
  v72 = v58;
  result = sub_252E37AB4();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x2530ADF00](v60, v12);
      }

      else
      {
        v61 = *(v12 + 8 * v60 + 32);
      }

      v62 = v61;
      ++v60;
      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v62);

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v59 != v60);

    v58 = v72;
    goto LABEL_82;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C6DD64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FE8, qword_252E3FAB0);
  v24[0] = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v24 - v1;
  v3 = sub_252E33A24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);

  sub_252E35F84();
  if (!sub_252E35F54())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252CC4050(0xD000000000000072, 0x8000000252E6CB50, 0xD000000000000079, 0x8000000252E6CBD0, 0xD000000000000010, 0x8000000252E6CC50, 68);
    sub_252E35F74();
  }

  sub_252E35F04();

  sub_252E33E64();

  v9 = sub_252E33A14();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  if (v11)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_252E379F4();

    v27 = 0xD000000000000015;
    v28 = 0x8000000252E8E520;
    MEMORY[0x2530AD570](v9, v11);
    sub_252CC3D90(v27, v28, 0xD00000000000007ALL, 0x8000000252E8E210);

    v27 = v9;
    v28 = v11;
    v25 = 67;
    v26 = 0xE100000000000000;
    sub_252947DBC();
    v13 = sub_252E377C4();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E8E4E0, 0xD00000000000007ALL, 0x8000000252E8E210);
    v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
    sub_252929E74((v16 + 328), &v27);

    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v19 = [objc_opt_self() celsius];
    sub_252C70C58();
    sub_252E329E4();
    v20 = (*(v18 + 8))(v2, v17, v18);
    v22 = v21;
    (*(v24[0] + 8))(v2, v0);
    v25 = v20;
    v26 = v22;
    v24[1] = 67;
    v24[2] = 0xE100000000000000;
    sub_252947DBC();
    v13 = sub_252E377C4();

    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  if (v13)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id sub_252C6E240(void *a1)
{
  v1 = [a1 userTask];
  if (!v1 || (v2 = v1, v3 = [v1 value], v2, !v3) || (v4 = objc_msgSend(v3, sel_unit), v3, !v4))
  {
    v4 = sub_252C6DD64();
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  sub_252E379F4();

  v6 = sub_252C65640(v4);
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E8E330, 0xD00000000000007ALL, 0x8000000252E8E210);

  return v4;
}

BOOL sub_252C6E3CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 336))();

      v8 = *(v7 + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          v13 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v13 < v8)
          {
            goto LABEL_28;
          }

          memcpy(&v4[8 * v13 + 32], (v7 + 32), 8 * v8);

          if (v8)
          {
            v14 = *(v4 + 2);
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v17 = *(v4 + 2);
  v18 = (v4 + 32);
  v19 = 32;
  v20 = v17;
  do
  {
    if (!v20)
    {
      v23 = 0;
      goto LABEL_40;
    }

    v21 = *&v4[v19];
    v19 += 8;
    --v20;
  }

  while (v21 != 19);
  do
  {
    v23 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v22 = *v18++;
    --v17;
  }

  while (v22 != 17);
LABEL_40:

  return v23;
}

BOOL sub_252C6E60C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 336))();

      v8 = *(v7 + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          v13 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v13 < v8)
          {
            goto LABEL_28;
          }

          memcpy(&v4[8 * v13 + 32], (v7 + 32), 8 * v8);

          if (v8)
          {
            v14 = *(v4 + 2);
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v17 = *(v4 + 2);
  v18 = (v4 + 32);
  v19 = 32;
  v20 = v17;
  do
  {
    if (!v20)
    {
      v23 = 0;
      goto LABEL_40;
    }

    v21 = *&v4[v19];
    v19 += 8;
    --v20;
  }

  while (v21 != 17);
  do
  {
    v23 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v22 = *v18++;
    --v17;
  }

  while (v22 != 19);
LABEL_40:

  return v23;
}

uint64_t sub_252C6E84C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (!a2)
  {
    return 7;
  }

  if (*a3 != -1)
  {
    v9 = a1;
    v10 = a2;
    v11 = a4;
    swift_once();
    a4 = v11;
    a1 = v9;
    a2 = v10;
  }

  v5 = *a4;
  if (*(*a4 + 16) && (v6 = sub_252A44A10(a1, a2), (v7 & 1) != 0))
  {
    return *(*(v5 + 56) + v6);
  }

  else
  {
    return 7;
  }
}

uint64_t sub_252C6E8D8(unint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_252DA0F40(0xE, a2);
  if (v10 >> 62)
  {
    v19 = v10;
    v20 = sub_252E378C4();
    v10 = v19;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](0);
LABEL_6:
      v12 = v11;

      v13 = [v12 userTask];

      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = [v13 value];

      if (v14)
      {
        v15 = [v14 stringValue];

        if (v15)
        {
          v16 = sub_252E36F34();
          v14 = v17;

          v18 = v16;
LABEL_22:
          v29 = sub_252C6E84C(v18, v14, a3, a4, a5);
LABEL_23:

          return v29;
        }

        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_26:
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  v21 = sub_252DA0F40(0xF, a2);
  a1 = v21;
  if (v21 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:
    v29 = 7;
    goto LABEL_23;
  }

LABEL_13:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2530ADF00](0, a1);
LABEL_16:
    v24 = v23;

    v14 = [v24 userTask];

    if (v14)
    {
      v25 = [v14 value];

      if (v25)
      {
        v26 = [v25 stringValue];

        if (v26)
        {
          v27 = sub_252E36F34();
          v14 = v28;

          v18 = v27;
          goto LABEL_22;
        }
      }

LABEL_20:
      v18 = 0;
      v14 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_252C6EB60(void *a1, unint64_t a2)
{
  v5 = sub_252DA10F8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = v6-- != 0;
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v10 = *v7++;
    }

    while (v10 != 3);
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v11) = sub_252C6E8D8(a2, 5, &qword_27F53F470, &qword_27F544770, sub_252C6D054);
  v12 = [a1 userTask];
  if (!v12)
  {
    sub_252C515AC();
    goto LABEL_19;
  }

  v13 = v12;
  if ([v12 taskType] == 4)
  {

    goto LABEL_16;
  }

  v14 = [v13 taskType];

  if (v14 != 5)
  {
LABEL_19:
    if (!sub_252C4B5D4())
    {
LABEL_195:
      v2 = 0;
      goto LABEL_196;
    }

    v16 = sub_252DA0F40(6, 1);
    if (v16 >> 62)
    {
      v37 = v16;
      v38 = sub_252E378C4();
      v16 = v37;
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_142;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      v19 = [v18 userTask];

      if (v19)
      {
        v20 = [v19 value];

        if (v20)
        {

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544D60);
          sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E8E450, 0xD00000000000007ALL, 0x8000000252E8E210);
          return 0;
        }
      }

LABEL_108:
      v39 = sub_252DA0F40(0x13, 1);
      if (v39 >> 62)
      {
        v43 = v39;
        v44 = sub_252E378C4();
        v39 = v43;
        if (v44)
        {
LABEL_110:
          if ((v39 & 0xC000000000000001) == 0)
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_145;
            }

            v40 = *(v39 + 32);
LABEL_113:
            v41 = v40;

            v42 = [v41 userTask];

            if (v42)
            {
              v2 = [v42 value];

              goto LABEL_118;
            }

LABEL_117:
            v2 = 0;
LABEL_118:
            v45 = sub_252DA0F40(0x11, 1);
            if (v45 >> 62)
            {
              v48 = v45;
              v49 = sub_252E378C4();
              v45 = v48;
              if (v49)
              {
                goto LABEL_120;
              }
            }

            else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_120:
              if ((v45 & 0xC000000000000001) != 0)
              {
                v46 = MEMORY[0x2530ADF00](0);
LABEL_123:
                v47 = v46;

                v11 = [v47 userTask];

                if (v11)
                {
                  v15 = [v11 value];

                  if (!v2)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_129;
                }

LABEL_128:
                v15 = 0;
                if (!v2)
                {
LABEL_157:
                  v2 = v15;
                  goto LABEL_196;
                }

LABEL_129:
                if (!v15)
                {
                  goto LABEL_196;
                }

                v26 = sub_252DA0F40(6, 4);
                if (!(v26 >> 62))
                {
                  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_149:

                    v53 = 0.0;
                    goto LABEL_150;
                  }

                  goto LABEL_132;
                }

LABEL_148:
                v58 = v26;
                v59 = sub_252E378C4();
                v26 = v58;
                if (!v59)
                {
                  goto LABEL_149;
                }

LABEL_132:
                if ((v26 & 0xC000000000000001) != 0)
                {
                  v50 = MEMORY[0x2530ADF00](0);
                  goto LABEL_135;
                }

                if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v50 = *(v26 + 32);
LABEL_135:
                  v51 = v50;

                  v52 = [v51 userTask];

                  v53 = 0.0;
                  if (v52)
                  {
                    v54 = [v52 value];

                    if (v54)
                    {
                      [v54 doubleValue];
                      v53 = v55;
                    }
                  }

LABEL_150:
                  v60 = [a1 userTask];
                  v61 = 0.0;
                  if (v60)
                  {
                    v62 = v60;
                    v63 = [v60 value];

                    if (v63)
                    {
                      [v63 doubleValue];
                      v61 = v64;
                    }
                  }

                  v65 = [a1 userTask];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = [v65 taskType];

                    if (v67 != 2 && v53 >= v61)
                    {
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    sub_252C515AC();
                    if (v53 >= v61)
                    {
LABEL_156:

                      goto LABEL_157;
                    }
                  }

                  goto LABEL_196;
                }

                __break(1u);
LABEL_166:
                v30 = MEMORY[0x2530ADF00](0);
                goto LABEL_93;
              }

              if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v46 = *(v45 + 32);
                goto LABEL_123;
              }

LABEL_145:
              __break(1u);
              goto LABEL_166;
            }

            goto LABEL_128;
          }

LABEL_142:
          v40 = MEMORY[0x2530ADF00](0);
          goto LABEL_113;
        }
      }

      else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      goto LABEL_117;
    }

    goto LABEL_108;
  }

LABEL_16:
  v15 = 0x474E4954414548;
  if (!v9)
  {
    goto LABEL_35;
  }

  if (v11 > 3u)
  {
    if (v11 > 5u)
    {
      if (v11 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (v11 == 4)
    {

      goto LABEL_35;
    }
  }

  v2 = sub_252E37DB4();

  if ((v2 & 1) == 0)
  {
    if (v11 > 2u && v11 <= 4u && v11 != 3)
    {
      goto LABEL_185;
    }

    goto LABEL_87;
  }

LABEL_35:
  v23 = sub_252C6E8D8(a2, 4, &qword_27F53F468, &qword_27F544768, sub_252C6D038);
  v24 = v23;
  if (v23 <= 3u)
  {
    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        v2 = 0xE300000000000000;
      }

      else
      {
        v2 = 0xE400000000000000;
      }
    }

    else
    {
      if (!v23)
      {

LABEL_54:
        v26 = sub_252DA0F40(0x13, 4);
        if (v26 >> 62)
        {
          v56 = v26;
          v57 = sub_252E378C4();
          v26 = v56;
          if (!v57)
          {
            goto LABEL_185;
          }
        }

        else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        if ((v26 & 0xC000000000000001) != 0)
        {
          goto LABEL_166;
        }

        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        __break(1u);
        goto LABEL_148;
      }

      v2 = 0xE700000000000000;
    }

LABEL_53:
    v25 = sub_252E37DB4();

    if (v25)
    {
      goto LABEL_54;
    }

    if (v24 == 1)
    {

LABEL_68:
      v26 = sub_252DA0F40(0x11, 4);
      if (v26 >> 62)
      {
        v70 = v26;
        v71 = sub_252E378C4();
        v26 = v70;
        if (!v71)
        {
          goto LABEL_185;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_185;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_166;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_170;
    }

    v27 = sub_252E37DB4();

    if (v27)
    {
      goto LABEL_68;
    }

    if (v24 == 3)
    {
    }

    else
    {
      v28 = sub_252E37DB4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_186;
      }
    }

    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        if (v11 != 6)
        {
          goto LABEL_186;
        }
      }

      else if (v11 != 4)
      {

        goto LABEL_98;
      }
    }

    v33 = sub_252E37DB4();

    if ((v33 & 1) == 0)
    {
      goto LABEL_172;
    }

LABEL_98:
    v26 = sub_252DA0F40(0x13, 4);
    if (!(v26 >> 62))
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_171:

        goto LABEL_172;
      }

LABEL_100:
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_210;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v26 + 32);
        goto LABEL_103;
      }

      __break(1u);
      goto LABEL_212;
    }

LABEL_170:
    v72 = v26;
    v73 = sub_252E378C4();
    v26 = v72;
    if (!v73)
    {
      goto LABEL_171;
    }

    goto LABEL_100;
  }

  if (v23 <= 5u)
  {
    if (v23 == 4)
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE90000000000004FLL;
    }

    goto LABEL_53;
  }

  if (v23 == 6)
  {
    v2 = 0xE90000000000004FLL;
    goto LABEL_53;
  }

  if (!v9)
  {
    goto LABEL_186;
  }

  if (v11 > 3u)
  {
    if (v11 > 5u)
    {
      if (v11 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (v11 == 4)
    {
      goto LABEL_185;
    }
  }

LABEL_87:
  v29 = sub_252E37DB4();

  if (v29)
  {
    goto LABEL_186;
  }

LABEL_88:
  v26 = sub_252DA0F40(6, 5);
  if (v26 >> 62)
  {
    v68 = v26;
    v69 = sub_252E378C4();
    v26 = v68;
    if (!v69)
    {
      goto LABEL_185;
    }
  }

  else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_185;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_166;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_166;
  }

LABEL_92:
  v30 = *(v26 + 32);
LABEL_93:
  v31 = v30;

  v32 = [v31 userTask];

  if (v32)
  {
    v2 = [v32 value];

    if (v2)
    {
      goto LABEL_196;
    }
  }

  while (1)
  {
LABEL_186:
    v80 = sub_252DA0F40(6, 5);
    if (v80 >> 62)
    {
      v84 = v80;
      v85 = sub_252E378C4();
      v80 = v84;
      if (!v85)
      {
LABEL_194:

        goto LABEL_195;
      }
    }

    else if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_194;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v81 = *(v80 + 32);
      goto LABEL_191;
    }

    __break(1u);
LABEL_210:
    v34 = MEMORY[0x2530ADF00](0);
LABEL_103:
    v35 = v34;

    v36 = [v35 userTask];

    if (v36)
    {
      v2 = [v36 value];

      if (v2)
      {
        goto LABEL_196;
      }
    }

LABEL_172:
    if (v11 > 5u)
    {

      goto LABEL_176;
    }

    v74 = sub_252E37DB4();

    if (v74)
    {
LABEL_176:
      result = sub_252DA0F40(0x13, 4);
      if (result >> 62)
      {
        v78 = result;
        v79 = sub_252E378C4();
        result = v78;
        if (!v79)
        {
          goto LABEL_185;
        }

LABEL_178:
        if ((result & 0xC000000000000001) != 0)
        {
LABEL_212:
          v75 = MEMORY[0x2530ADF00](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v75 = *(result + 32);
        }

        v76 = v75;

        v77 = [v76 userTask];

        if (v77)
        {
          v2 = [v77 value];

          if (v2)
          {
            goto LABEL_196;
          }
        }
      }

      else
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_178;
        }

LABEL_185:
      }
    }
  }

  v81 = MEMORY[0x2530ADF00](0);
LABEL_191:
  v82 = v81;

  v83 = [v82 userTask];

  if (!v83)
  {
    goto LABEL_195;
  }

  v2 = [v83 value];

LABEL_196:
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v86 = sub_252E36AD4();
  __swift_project_value_buffer(v86, qword_27F544D60);
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v87 = sub_252E37714();
  MEMORY[0x2530AD570](v87);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E8E420, 0xD00000000000007ALL, 0x8000000252E8E210);

  if (!v2)
  {
    return 0;
  }

  v88 = [a1 userTask];
  if (v88)
  {
    v89 = v88;
    if ([v88 taskType] == 4)
    {

      v90 = 5;
      goto LABEL_207;
    }

    v91 = [v89 taskType];

    if (v91 == 5)
    {
      v90 = 5;
      goto LABEL_207;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v90 = 1;
LABEL_207:
  v92 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v93 = v2;
  v94 = sub_252E36F04();
  v95 = [v92 initWithIdentifier:0 displayString:v94];

  v96 = v95;
  [v96 setTaskType_];
  [v96 setAttribute_];
  [v96 setValue_];

  v97 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v98 = v96;
  v99 = sub_252E36F04();
  v100 = [v97 initWithIdentifier:0 displayString:v99];

  v101 = v100;
  [v101 setTaskOutcome_];
  [v101 setUserTask_];

  return v101;
}