void sub_2329BD500(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_2329BFFD4();
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v5 = sub_2329D3384();

  v6 = [v4 initWithEntityName_];

  [v6 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2329D46C0;
  sub_2329C01E0();
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v9 = sub_2329D3384();

  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
  v11 = sub_2329D3474();

  [v6 setSortDescriptors_];

  v25 = 0;
  v12 = [v2 countForFetchRequest:v6 error:&v25];
  v13 = v25;
  if (v25)
  {
    swift_willThrow();
    v14 = v13;
    v15 = sub_2329D2DF4();
    v16 = sub_2329D3614();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v14;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2329A4000, v15, v16, "Failed to fetch %@", v17, 0xCu);
      sub_2329BFB8C(v18, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v18, -1, -1);
      MEMORY[0x23838B4F0](v17, -1, -1);
    }

    else
    {
      v19 = v15;
      v15 = v14;
    }

    swift_beginAccess();
    *(v3 + 16) = 0;
  }

  else
  {
    v21 = v12;
    swift_beginAccess();
    *(v3 + 16) = v21;

    v22 = sub_2329D2DF4();
    v23 = sub_2329D3634();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(v3 + 16);

      _os_log_impl(&dword_2329A4000, v22, v23, "The count is %ld", v24, 0xCu);
      MEMORY[0x23838B4F0](v24, -1, -1);
    }

    else
    {
    }
  }

  [v2 reset];
}

void sub_2329BD8A4(uint64_t a1)
{
  v33 = *(v1 + 24);
  v32 = *(v1 + 16);
  sub_2329BFFD4();
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v3 = sub_2329D3384();

  v4 = [v2 initWithEntityName_];

  [v4 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2329D4530;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2329D4530;
  sub_2329C002C();

  v7 = sub_2329D3384();

  v8 = objc_opt_self();
  v9 = [v8 expressionForKeyPath_];

  v10 = sub_2329BFB44(0, &qword_27DDBDE08, 0x277CCA9C0);
  *(v6 + 56) = v10;
  *(v6 + 32) = v9;
  v11 = sub_2329D3384();
  v12 = sub_2329D3474();

  v13 = [v8 expressionForFunction:v11 arguments:v12];

  *(v5 + 56) = v10;
  *(v5 + 32) = v13;
  v14 = sub_2329D3384();
  v15 = sub_2329D3474();

  v16 = [v8 expressionForFunction:v14 arguments:v15];

  v17 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v18 = sub_2329D3384();
  [v17 setName_];

  [v17 setExpression_];
  [v17 setExpressionResultType_];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2329D4530;
  *(v19 + 56) = sub_2329BFB44(0, &qword_27DDBDE10, 0x277CBE410);
  *(v19 + 32) = v17;
  v20 = v17;
  v21 = sub_2329D3474();

  [v4 setPropertiesToFetch_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v22 = sub_2329D36E4();
  if (v22 >> 62)
  {
    v31 = v22;
    v23 = sub_2329D3864();
    v22 = v31;
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x23838AD30](0);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v24 = *(v22 + 32);
    }

    v25 = v24;

    *&v35 = 0xD000000000000011;
    *(&v35 + 1) = 0x80000002329D8580;
    v26 = [v25 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v26)
    {
      sub_2329D3734();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37[0] = v35;
    v37[1] = v36;
    if (*(&v36 + 1))
    {
      sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v27 = [v34 integerValue];

        swift_beginAccess();
        *(v33 + 16) = v27;
      }

      else
      {
      }
    }

    else
    {

      sub_2329BFB8C(v37, &unk_27DDBE0F0, &qword_2329D4890);
    }
  }

  else
  {
  }

  v28 = sub_2329D2DF4();
  v29 = sub_2329D3604();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    swift_beginAccess();
    *(v30 + 4) = *(v33 + 16);

    _os_log_impl(&dword_2329A4000, v28, v29, "The unique count of devices is %ld", v30, 0xCu);
    MEMORY[0x23838B4F0](v30, -1, -1);
  }

  else
  {
  }

  [v32 reset];
}

xpc_object_t sub_2329BDFCC(_xpc_activity_s *a1)
{
  v2 = sub_2329A65F4();
  v3 = *(**v2 + 232);

  v5 = v3(v4);

  if (v5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(**v2 + 232);

    v8 = v6(v7);
  }

  v9 = *(**v2 + 256);

  v11 = v9(v10);

  if (v11 > 0)
  {
    v12 = *(**v2 + 256);

    v14 = v12(v13);

    result = xpc_activity_copy_criteria(a1);
    if (!result)
    {
      return result;
    }

    v16 = result;
    if (v5 <= 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

LABEL_11:
    v17 = swift_unknownObjectRetain();
    xpc_dictionary_set_int64(v17, "com.apple.activity.interval", v8);
    if (v11 < 1)
    {
LABEL_13:
      swift_unknownObjectRelease();
      return v16;
    }

LABEL_12:
    xpc_dictionary_set_int64(v16, "com.apple.activity.delay", v14);
    goto LABEL_13;
  }

  if (v5 > 0)
  {
    v16 = xpc_activity_copy_criteria(a1);
    result = 0;
    if (!v16)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_11;
  }

  return 0;
}

unint64_t sub_2329BE1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE00, &qword_2329D48D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
    v7 = sub_2329D3894();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2329BF474(v9, v5, &qword_27DDBDE00, &qword_2329D48D0);
      result = sub_2329BB528(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2329D2DD4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2329BE39C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDF0, &qword_2329D48C8);
    v3 = sub_2329D3894();
    v4 = a1 + 32;

    while (1)
    {
      sub_2329BF474(v4, &v13, &qword_27DDBDD88, &qword_2329D4790);
      v5 = v13;
      v6 = v14;
      result = sub_2329BB4B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2329BF464(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2329BE4CC(uint64_t a1, unint64_t a2)
{
  v4 = 0xD000000000000042;
  v5 = a1 == 0xD000000000000042 && 0x80000002329D84B0 == a2;
  if (v5 || (v4 = sub_2329D38D4(), (v4 & 1) != 0))
  {

    sub_2329B5C10(v4);
  }

  else if (a1 == 0xD000000000000031 && 0x80000002329D8500 == a2 || (sub_2329D38D4() & 1) != 0)
  {

    sub_2329B5E9C();
  }

  else
  {

    oslog = sub_2329D2DF4();
    v6 = sub_2329D3614();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2329A8630(a1, a2, &v10);
      _os_log_impl(&dword_2329A4000, oslog, v6, "Cannot perform work for unknown XPC activity identifier: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23838B4F0](v8, -1, -1);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }
  }
}

uint64_t type metadata accessor for NDFDaemonPersistenceController(uint64_t a1)
{
  result = qword_2814DA8E0;
  if (!qword_2814DA8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329BE718(uint64_t a1)
{
  result = sub_2329D2E14();
  if (v2 <= 0x3F)
  {
    result = sub_2329D2DD4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2329BE814(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2329BE828(result, a2);
  }

  return result;
}

uint64_t sub_2329BE828(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroy_65Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_2329BE8C8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [objc_opt_self() fetchHistoryAfterToken_];
    *&v58[0] = 0;
    v4 = [v1 executeRequest:v3 error:v58];
    v5 = *&v58[0];
    if (v4)
    {
      v6 = v4;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v5;
        if ([v8 result])
        {
          sub_2329D3734();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v57 = 0u;
        }

        v58[0] = v56;
        v58[1] = v57;
        if (!*(&v57 + 1))
        {

          sub_2329BFB8C(v58, &unk_27DDBE0F0, &qword_2329D4890);
          goto LABEL_17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDA8, &qword_2329D4898);
        if (swift_dynamicCast())
        {
          v53 = v3;
          v13 = v55;

          v14 = sub_2329D2DF4();
          v15 = sub_2329D35F4();
          v16 = v55 >> 62;
          if (os_log_type_enabled(v14, v15))
          {
            v17 = swift_slowAlloc();
            *v17 = 134217984;
            if (v16)
            {
              v18 = sub_2329D3864();
            }

            else
            {
              v18 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v17 + 4) = v18;

            _os_log_impl(&dword_2329A4000, v14, v15, "Transaction history: %ld transactions", v17, 0xCu);
            MEMORY[0x23838B4F0](v17, -1, -1);
          }

          else
          {
          }

          v22 = v53;
          if (v16)
          {
            goto LABEL_75;
          }

          v23 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_25;
          }

LABEL_31:
          if (v16)
          {
            if (sub_2329D3864())
            {
LABEL_33:

              v28 = sub_2329D2DF4();
              v29 = sub_2329D3634();
              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                *v30 = 134217984;
                if (v16)
                {
                  v31 = sub_2329D3864();
                }

                else
                {
                  v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v30 + 4) = v31;

                _os_log_impl(&dword_2329A4000, v28, v29, "Ready to process %ld transactions", v30, 0xCu);
                MEMORY[0x23838B4F0](v30, -1, -1);
              }

              else
              {
              }

              v37 = MEMORY[0x277D84F90];
              *&v58[0] = MEMORY[0x277D84F90];
              if (v23)
              {
                v52 = v6;
                v54 = v23;
                v38 = v13 & 0xC000000000000001;
                v22 = (v13 & 0xFFFFFFFFFFFFFF8);
                v39 = 4;
                while (1)
                {
                  v40 = v39 - 4;
                  if (v38)
                  {
                    v6 = v13;
                    v41 = MEMORY[0x23838AD30](v39 - 4, v13);
                  }

                  else
                  {
                    if (v40 >= v22[2])
                    {
                      goto LABEL_74;
                    }

                    v6 = v13;
                    v41 = *(v13 + 8 * v39);
                  }

                  v42 = v41;
                  v13 = v39 - 3;
                  if (__OFADD__(v40, 1))
                  {
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    v23 = sub_2329D3864();
                    if (!v23)
                    {
                      goto LABEL_31;
                    }

LABEL_25:
                    v24 = v23 - 1;
                    if (__OFSUB__(v23, 1))
                    {
                      __break(1u);
                    }

                    else if ((v13 & 0xC000000000000001) == 0)
                    {
                      if ((v24 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v24 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v25 = *(v13 + 8 * v24 + 32);
LABEL_30:
                        v26 = v25;
                        v27 = [v25 token];
                        sub_2329AFBF0(v27);

                        goto LABEL_31;
                      }

                      __break(1u);
LABEL_81:
                      v50 = sub_2329D3864();
                      goto LABEL_67;
                    }

                    v25 = MEMORY[0x23838AD30](v24, v13);
                    goto LABEL_30;
                  }

                  v43 = [v41 author];
                  if (!v43)
                  {
                    break;
                  }

                  v44 = v43;
                  v16 = sub_2329D33B4();
                  v46 = v45;

                  v47 = sub_2329D2D94();
                  if (!v46)
                  {
                    goto LABEL_60;
                  }

                  v49 = v16 == v47 && v46 == v48;
                  if (v49)
                  {
                  }

                  else
                  {
                    v16 = sub_2329D38D4();

                    if ((v16 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }

LABEL_46:
                  ++v39;
                  v49 = v13 == v54;
                  v13 = v6;
                  if (v49)
                  {
                    v37 = *&v58[0];
                    v6 = v52;
                    v22 = v53;
                    goto LABEL_64;
                  }
                }

                sub_2329D2D94();
LABEL_60:

LABEL_61:
                sub_2329D3814();
                sub_2329D3844();
                sub_2329D3854();
                sub_2329D3824();
                goto LABEL_46;
              }

LABEL_64:

              if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
              {
                goto LABEL_81;
              }

              v50 = *(v37 + 16);
LABEL_67:

              if (v50)
              {
                v51 = sub_2329B104C();
                sub_2329B080C(v51);

LABEL_20:

                return;
              }

              v32 = v6;
              v33 = sub_2329D2DF4();
              v34 = sub_2329D3634();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                v36 = "No remote transactions, skipping";
                goto LABEL_71;
              }

              goto LABEL_72;
            }
          }

          else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v32 = v6;

          v33 = sub_2329D2DF4();
          v34 = sub_2329D35F4();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            v36 = "Skipping since there are no transactions to process";
LABEL_71:
            _os_log_impl(&dword_2329A4000, v33, v34, v36, v35, 2u);
            MEMORY[0x23838B4F0](v35, -1, -1);
          }

LABEL_72:

          return;
        }
      }

      else
      {
        v12 = v5;
      }
    }

    else
    {
      v10 = *&v58[0];
      v11 = sub_2329D2C84();

      swift_willThrow();
    }

LABEL_17:
    v19 = sub_2329D2DF4();
    v20 = sub_2329D3614();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2329A4000, v19, v20, "Failed to fetch history from persistent store", v21, 2u);
      MEMORY[0x23838B4F0](v21, -1, -1);
    }

    sub_2329AFFCC();
    goto LABEL_20;
  }
}

uint64_t sub_2329BF014()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BF0BC;

  return sub_2329B0924(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2329BF0BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2329BF1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2329BF1F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2329BFCFC;

  return sub_2329BAD1C(a1, v4);
}

uint64_t sub_2329BF2B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2329BF0BC;

  return sub_2329BAD1C(a1, v4);
}

unint64_t sub_2329BF368()
{
  result = qword_27DDBDDB8;
  if (!qword_27DDBDDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBDDB0, &qword_2329D48A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDDB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_2814D9E60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814D9E60);
    }
  }
}

_OWORD *sub_2329BF464(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2329BF474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2329BF4DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE30, &qword_2329D48F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2329D46D0;
  strcpy((inited + 32), "totalRecords");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002329D8450;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_2329BF5F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE38, &qword_2329D48F8);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_2329BF5F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE40, &unk_2329D4900);
    v3 = sub_2329D3894();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2329BB4B0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2329BF6FC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE30, &qword_2329D48F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2329D46B0;
  strcpy((inited + 32), "totalRecords");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002329D8450;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6D6F486C61746F74;
  *(inited + 88) = 0xEA00000000007365;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_2329BF5F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE38, &qword_2329D48F8);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_2329BF858(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2329BFB44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2329BF8B4()
{
  result = qword_2814D9EB8;
  if (!qword_2814D9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9EB8);
  }

  return result;
}

uint64_t sub_2329BF908(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2329BF95C()
{
  sub_2329D37B4();

  sub_2329D2C34();
  sub_2329BF1B0(&qword_27DDBDDA0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
  v0 = sub_2329D38B4();
  MEMORY[0x23838A970](v0);

  return 0xD000000000000022;
}

uint64_t sub_2329BFA80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2329BFB44(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2329BFB8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_2329BFD3C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id sub_2329BFD94(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NDFNetworkDevice();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id sub_2329BFE74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFNetworkDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2329BFEA8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2329D3384();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2329BFF28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NDFNetworkDevice();
  result = sub_2329D37C4();
  *a2 = result;
  return result;
}

uint64_t sub_2329C0210()
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t sub_2329C0254(uint64_t a1)
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

SymptomDistribution::NDFNetworkLQM_optional __swiftcall NDFNetworkLQM.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue > 0x63u)
  {
    if (rawValue == 100)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 65534)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 0xFFFF)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == 10)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 20)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50)
  {
    goto LABEL_12;
  }

  *v1 = 4;
  return rawValue;
}

unint64_t sub_2329C0340()
{
  result = qword_27DDBDE90;
  if (!qword_27DDBDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDE90);
  }

  return result;
}

unint64_t sub_2329C0398()
{
  result = qword_27DDBDE98;
  if (!qword_27DDBDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDE98);
  }

  return result;
}

unint64_t sub_2329C0414()
{
  result = qword_27DDBDEA0;
  if (!qword_27DDBDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDEA0);
  }

  return result;
}

uint64_t sub_2329C0468()
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t sub_2329C04F0(uint64_t a1)
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t _s19SymptomDistribution22NDFDeviceRecordVersionOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s19SymptomDistribution22NDFDeviceRecordVersionOwst_0(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFNetworkLQM(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFNetworkLQM(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_2329C07F4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NDFNetworkRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id sub_2329C08D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFNetworkRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2329C0908()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2329D3384();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2329C097C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8E14();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329C0A00()
{
  v0 = sub_2329D3654();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2329D3674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2329D32F4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2329BFB44(0, &qword_2814D9E50, 0x277D85C78);
  sub_2329D32E4();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_2329C3144(&qword_2814D9E58, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329C318C(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  return sub_2329D3684();
}

id sub_2329C0C58()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener);
  }

  else
  {
    sub_2329D3404();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2329D3384();

    v6 = [v4 initWithMachServiceName_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2329C0D0C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay;
  if (*(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay);
  }

  else
  {
    type metadata accessor for NDFSymptomsRelay(0);
    v2 = sub_2329CB560();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2329C0D7C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController;
  if (*(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController);
  }

  else
  {
    type metadata accessor for NDFDaemonPersistenceController(0);
    v3 = sub_2329C0D0C();
    v2 = sub_2329ACFA0(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_2329C0DF4()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate);
  }

  else
  {
    v4 = v0;
    type metadata accessor for NDFDaemonService(0);
    v5 = sub_2329C3BEC();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2329C0E64()
{
  v1 = v0;
  v2 = sub_2329D2E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager;
  if (*(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager))
  {
    v7 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager);
  }

  else
  {
    v8 = sub_2329A910C();
    (*(v3 + 16))(v5, v8, v2);
    sub_2329D2FE4();
    swift_allocObject();
    v7 = sub_2329D2FC4();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t NDFDaemon.__allocating_init(isAgent:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  NDFDaemon.init(isAgent:)(v1);
  return v2;
}

uint64_t NDFDaemon.init(isAgent:)(int a1)
{
  v2 = v1;
  v17 = a1;
  v3 = sub_2329D3654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2329D3674();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2329D32F4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger;
  v10 = sub_2329A8E14();
  v11 = sub_2329D2E14();
  (*(*(v11 - 8) + 16))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken) = -1;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken) = -1;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_signalSources) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue;
  v15 = sub_2329BFB44(0, &qword_2814D9E50, 0x277D85C78);
  sub_2329D32E4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  v18 = v12;
  sub_2329C3144(&qword_2814D9E58, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329C318C(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  v13 = sub_2329D3684();
  *(v2 + v16) = v13;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_runningAsAgent) = v17;
  type metadata accessor for NDFDaemonTaskManager(0);
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_taskManager) = sub_2329C932C(v13);
  return v2;
}

uint64_t sub_2329C1330(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_runningAsAgent);
  v4 = sub_2329D2DF4();
  v5 = sub_2329D3634();
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Begin LaunchAgent startup sequence", v7, 2u);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    v8 = swift_allocObject();
    swift_weakInit();
    v24[4] = sub_2329C2E2C;
    v24[5] = v8;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_2329C1944;
    v24[3] = &block_descriptor_0;
    v9 = _Block_copy(v24);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v9);
    _Block_release(v9);
    v10 = 0xE500000000000000;
    v11 = 0x746E656761;
  }

  else
  {
    if (v6)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Begin daemon startup sequence", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    v13 = sub_2329C0C58();
    v14 = sub_2329C0DF4();
    [v13 setDelegate_];

    sub_2329C1E34();
    [*(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener) activate];
    v15 = sub_2329D2DF4();
    v16 = sub_2329D3634();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2329A4000, v15, v16, "Finished activating XPC Listener", v17, 2u);
      MEMORY[0x23838B4F0](v17, -1, -1);
    }

    (*(**(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_taskManager) + 176))();
    v10 = 0xE600000000000000;
    v11 = 0x6E6F6D656164;
  }

  v18 = sub_2329D2DF4();
  v19 = sub_2329D3634();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136315394;
    v22 = sub_2329A8630(v11, v10, v24);

    *(v20 + 4) = v22;
    *(v20 + 12) = 1024;
    *(v20 + 14) = getuid();
    _os_log_impl(&dword_2329A4000, v18, v19, "symptomsd-distributed is up and running [mode: %s, uid: %u]", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23838B4F0](v21, -1, -1);
    MEMORY[0x23838B4F0](v20, -1, -1);
  }

  else
  {
  }

  return sub_2329C19A4();
}

const char *sub_2329C1704(void *a1, uint64_t a2)
{
  v3 = sub_2329D2E14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (result)
  {
    v8 = sub_2329D3434();
    v10 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger, v3);

      v12 = sub_2329D2DF4();
      v13 = sub_2329D3634();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        v16 = sub_2329A8630(v8, v10, &v17);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_2329A4000, v12, v13, "Woken up by notifyd event [%s]", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23838B4F0](v15, -1, -1);
        MEMORY[0x23838B4F0](v14, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2329C1944(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2329C19A4()
{
  v1 = v0;
  v19 = sub_2329D32B4();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2329D32F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2329D2DF4();
  v10 = sub_2329D3634();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2329A4000, v9, v10, "Installing SIGTERM handler", v11, 2u);
    MEMORY[0x23838B4F0](v11, -1, -1);
  }

  v12 = sub_2329D3054();
  signal(15, v12);
  sub_2329BFB44(0, &qword_2814D9E40, 0x277D85CA0);
  v13 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue);
  sub_2329D36B4();

  swift_getObjectType();
  aBlock[4] = sub_2329C2FD8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  sub_2329D32C4();
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v14);
  (*(v2 + 8))(v4, v19);
  (*(v6 + 8))(v8, v5);

  sub_2329D36D4();
  v15 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_signalSources;
  swift_beginAccess();
  v16 = swift_unknownObjectRetain();
  MEMORY[0x23838A9B0](v16);
  if (*((*(v1 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2329D34A4();
  }

  sub_2329D34B4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_2329C1D18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2329C1D5C()
{
  sub_2329D32B4();
  sub_2329C3144(&unk_2814D9EC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE180, &unk_2329D4F60);
  sub_2329C318C(&unk_2814D9EA0, &qword_27DDBE180, &unk_2329D4F60);
  return sub_2329D3744();
}

void sub_2329C1E34()
{
  v1 = v0;
  if (MKBGetDeviceLockState() == 3)
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3634();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Key bag disabled, proceeding as if the device was unlocked since boot", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
LABEL_6:
    v5 = sub_2329D2DF4();
    v6 = sub_2329D3634();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2329A4000, v5, v6, "Device was unlocked since boot, continuing initialization", v7, 2u);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    sub_2329C2700(v8);

    sub_2329C287C(v9);
    return;
  }

  v10 = sub_2329D2DF4();
  v11 = sub_2329D3634();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2329A4000, v10, v11, "Device still locked since boot, waiting for first unlock", v12, 2u);
    MEMORY[0x23838B4F0](v12, -1, -1);
  }

  v13 = sub_2329D2DF4();
  v14 = sub_2329D35F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2329A4000, v13, v14, "Registering for first unlock notification", v15, 2u);
    MEMORY[0x23838B4F0](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue;
  v17 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue);
  v40 = sub_2329C31E0;
  v41 = v1;
  v36 = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2329C23B8;
  v39 = &block_descriptor_30;
  v18 = _Block_copy(&v36);
  v19 = v17;

  v20 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken;
  swift_beginAccess();
  v21 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", (v1 + v20), v19, v18);
  swift_endAccess();
  _Block_release(v18);

  if (v21 || *(v1 + v20) == -1)
  {
    v22 = sub_2329D2DF4();
    v23 = sub_2329D3624();
    if (!os_log_type_enabled(v22, v23))
    {
LABEL_19:

      return;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Failed to register for first unlock notification! Bailing out...";
LABEL_18:
    _os_log_impl(&dword_2329A4000, v22, v23, v25, v24, 2u);
    MEMORY[0x23838B4F0](v24, -1, -1);
    goto LABEL_19;
  }

  v26 = sub_2329D2DF4();
  v27 = sub_2329D3634();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2329A4000, v26, v27, "Registering for lock status notification", v28, 2u);
    MEMORY[0x23838B4F0](v28, -1, -1);
  }

  v29 = *(v1 + v16);
  v40 = sub_2329C329C;
  v41 = v1;
  v36 = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2329C23B8;
  v39 = &block_descriptor_33;
  v30 = _Block_copy(&v36);

  v31 = v29;

  v32 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken;
  swift_beginAccess();
  v33 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v1 + v32), v31, v30);
  swift_endAccess();
  _Block_release(v30);

  if (v33 || *(v1 + v32) == -1)
  {
    v22 = sub_2329D2DF4();
    v23 = sub_2329D3624();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_19;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Failed to register for lock status notification! Bailing out...";
    goto LABEL_18;
  }

  v34 = MKBDeviceUnlockedSinceBoot();
  if (v34 == 1)
  {
    sub_2329C2700(v34);
    sub_2329C287C(v35);
    sub_2329C240C();
  }
}

uint64_t sub_2329C23B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2329C240C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    v3 = notify_cancel(v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_2329D2DF4();
      v6 = sub_2329D3614();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136446466;
        v9 = 0xD000000000000025;
        v10 = 0x80000002329D8B70;
        v11 = &v23;
LABEL_12:
        *(v7 + 4) = sub_2329A8630(v9, v10, v11);
        *(v7 + 12) = 1024;
        *(v7 + 14) = v4;
        _os_log_impl(&dword_2329A4000, v5, v6, "Failed to cancel %{public}s notification. Received error code %u from notify_cancel", v7, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x23838B4F0](v8, -1, -1);
        v19 = v7;
LABEL_13:
        MEMORY[0x23838B4F0](v19, -1, -1);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    *(v0 + v1) = -1;
    v12 = v0;
    v13 = sub_2329D2DF4();
    v14 = sub_2329D3634();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2329A4000, v13, v14, "No longer registered for first unlock notification", v15, 2u);
      MEMORY[0x23838B4F0](v15, -1, -1);
    }

    v0 = v12;
  }

  v16 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken;
  swift_beginAccess();
  v17 = *(v0 + v16);
  if (v17 == -1)
  {
    return;
  }

  v18 = notify_cancel(v17);
  if (!v18)
  {
    *(v0 + v16) = -1;
    v5 = sub_2329D2DF4();
    v20 = sub_2329D3634();
    if (!os_log_type_enabled(v5, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2329A4000, v5, v20, "No longer registered for lock status notification", v21, 2u);
    v19 = v21;
    goto LABEL_13;
  }

  v4 = v18;
  v5 = sub_2329D2DF4();
  v6 = sub_2329D3614();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446466;
    v10 = 0x80000002329D8BA0;
    v11 = &v22;
    v9 = 0xD000000000000024;
    goto LABEL_12;
  }

LABEL_14:
}

void sub_2329C2700(uint64_t a1)
{
  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2329A4000, v1, v2, "Initializing persistent storage", v3, 2u);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  v4 = sub_2329C0DF4();
  v5 = sub_2329C0D7C();
  (*((*MEMORY[0x277D85000] & *v4) + 0x78))(v5);

  oslog = sub_2329D2DF4();
  v6 = sub_2329D3604();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v6, "Finished configuring persistent storage onto XPC delegate", v7, 2u);
    MEMORY[0x23838B4F0](v7, -1, -1);
  }
}

void sub_2329C287C(uint64_t a1)
{
  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2329A4000, v1, v2, "Initializing background task manager", v3, 2u);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  v4 = sub_2329A65F4();
  v5 = *(**v4 + 160);

  v7 = v5(v6);

  v8 = sub_2329D2DF4();
  v9 = sub_2329D3634();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Registering delegate and network device records cleanup task", v11, 2u);
      MEMORY[0x23838B4F0](v11, -1, -1);
    }

    sub_2329C0E64();
    sub_2329C0D7C();
    sub_2329C3144(&qword_27DDBDF18, type metadata accessor for NDFDaemonPersistenceController, &unk_2329D4798);
    sub_2329D2FD4();

    sub_2329D2FB4();
  }

  else
  {
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v8, v9, "Background tasks to clean up records are not required on this platform", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }
  }

  v13 = *(**v4 + 184);

  v15 = v13(v14);

  v16 = sub_2329D2DF4();
  v17 = sub_2329D3634();
  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, v16, v17, "Registering delegate to submit NDF DB Telemetry Stats", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }

    sub_2329C0E64();
    sub_2329C0D7C();
    sub_2329C3144(&qword_27DDBDF18, type metadata accessor for NDFDaemonPersistenceController, &unk_2329D4798);
    sub_2329D2FD4();

    sub_2329D2FB4();
  }

  else
  {
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2329A4000, v16, v17, "Background tasks to submit NDF DB stats are not required on this platform", v20, 2u);
      MEMORY[0x23838B4F0](v20, -1, -1);
    }
  }

  oslog = sub_2329D2DF4();
  v21 = sub_2329D3604();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v21, "Finished configuring background task manager with persistence controller", v22, 2u);
    MEMORY[0x23838B4F0](v22, -1, -1);
  }
}

uint64_t NDFDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NDFDaemon.__deallocating_deinit()
{
  NDFDaemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NDFDaemon(uint64_t a1)
{
  result = qword_2814DA878;
  if (!qword_2814DA878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329C2EA0(uint64_t a1)
{
  result = sub_2329D2E14();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_2329C2FD8(uint64_t a1)
{
  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2329A4000, v1, v2, "Received SIGTERM, preparing for shutdown; will invalidate XPC listener", v3, 2u);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  v4 = sub_2329C0C58();
  [v4 invalidate];

  v5 = sub_2329C0DF4();
  (*((*MEMORY[0x277D85000] & *v5) + 0xA8))();

  v6 = sub_2329D2DF4();
  v7 = sub_2329D3634();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2329A4000, v6, v7, "Terminating process", v8, 2u);
    MEMORY[0x23838B4F0](v8, -1, -1);
  }

  exit(0);
}

uint64_t sub_2329C3144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2329C318C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2329C31E0(uint64_t a1)
{
  v1 = sub_2329D2DF4();
  v2 = sub_2329D3634();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2329A4000, v1, v2, "Received first unlock notification, continuing initialization", v3, 2u);
    MEMORY[0x23838B4F0](v3, -1, -1);
  }

  sub_2329C2700(v4);
  sub_2329C287C(v5);

  sub_2329C240C();
}

void sub_2329C329C()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  oslog = sub_2329D2DF4();
  v1 = sub_2329D3634();
  v2 = os_log_type_enabled(oslog, v1);
  if (v0 == 1)
  {
    if (v2)
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v1, "Received lock status notification: device was unlocked, continuing initialization", v3, 2u);
      MEMORY[0x23838B4F0](v3, -1, -1);
    }

    sub_2329C2700(v4);
    sub_2329C287C(v5);

    sub_2329C240C();
  }

  else
  {
    if (v2)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v1, "Received lock status notification: device still remains locked since boot...", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }
  }
}

uint64_t sub_2329C342C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8DAC();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

void sub_2329C349C()
{
  v0 = objc_opt_self();
  v1 = &unk_284804868;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814DAA50 = v2;
}

uint64_t sub_2329C3504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2329D4F70;
  *(v0 + 32) = sub_2329D2FA4();
  result = objc_opt_self();
  *(v0 + 40) = result;
  qword_2814DAA60 = v0;
  return result;
}

uint64_t sub_2329C35BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *sub_2329C3680(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2329D3864();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_2329C7E00(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23838AD30](i, a1);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2329C7E00((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_2329BF464(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_2329C7E00((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_2329BF464(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329C38A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2329D2DF4();
  v4 = sub_2329D35F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2329A4000, v3, v4, "Cancelling device discovery operations", v5, 2u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask;
  if (*(v2 + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    sub_2329D3524();
  }

  *(v2 + v6) = 0;
}

uint64_t sub_2329C39CC(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3604();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2329A4000, v3, v4, "Checking entitlement for %d", v5, 8u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }

  sub_2329A94A8();

  v6 = sub_2329D3384();

  v7 = [a1 valueForEntitlement_];

  if (v7)
  {
    sub_2329D3734();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
    sub_2329BFB8C(v15, &unk_27DDBE0F0, &qword_2329D4890);
  }

  v9 = sub_2329D2DF4();
  v10 = sub_2329D3614();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v2;
    _os_log_impl(&dword_2329A4000, v9, v10, "Error: pid %d not entitled", v11, 8u);
    MEMORY[0x23838B4F0](v11, -1, -1);
  }

  return 0;
}

id sub_2329C3BEC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2329C3C20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
  type metadata accessor for NDFBrowser(0);
  *&v0[v2] = NDFBrowser.__allocating_init()();
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
  v4 = sub_2329A8DAC();
  v5 = sub_2329D2E14();
  (*(*(v5 - 8) + 16))(&v1[v3], v4, v5);
  *&v1[OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController] = 0;
  *&v1[OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NDFDaemonService(0);
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2329C3DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFDaemonService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2329C3E8C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 56) = v4;
  *(v5 + 136) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_2329D34E4();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329C3F90, 0, 0);
}

uint64_t sub_2329C3F90()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
  v7 = sub_2329D3504();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;

  v10 = sub_2329C4F88(0, 0, v1, &unk_2329D4FB0, v9);
  v11 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v2 + v11) = v10;

  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
  *(v0 + 120) = v14;
  *v12 = v0;
  v12[1] = sub_2329C41B0;
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v10, v13, v14, v15);
}

uint64_t sub_2329C41B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2329C4358;
  }

  else
  {
    v2 = sub_2329C42C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2329C42C4()
{
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[2];
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2329C4358()
{
  v1 = *(v0 + 128);
  *(v0 + 24) = v1;
  v2 = v1;
  v3 = swift_dynamicCast();
  v4 = *(v0 + 128);
  if (v3)
  {

    v5 = sub_2329D2DF4();
    v6 = sub_2329D3634();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2329A4000, v5, v6, "Discovery operation was cancelled", v7, 2u);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    v8 = *(v0 + 104);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);

    *(v12 + v8) = 0;

    empty = xpc_array_create_empty();

    (*(v10 + 8))(v9, v11);

    v14 = *(v0 + 8);

    return v14(empty);
  }

  else
  {

    v16 = v4;
    v17 = sub_2329D2DF4();
    v18 = sub_2329D3614();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 128);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2329A4000, v17, v18, "Discovery operation failed with error: %@", v20, 0xCu);
      sub_2329BFB8C(v21, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v21, -1, -1);
      MEMORY[0x23838B4F0](v20, -1, -1);
    }

    v24 = *(v0 + 104);
    v25 = *(v0 + 56);

    *(v25 + v24) = 0;

    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2329C464C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 72) = a2;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a1;
  *(v8 + 48) = a5;
  v9 = sub_2329D3174();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329C4718, 0, 0);
}

uint64_t sub_2329C4718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
    *(v0 + 112) = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
    v3 = *(Strong + v2);
    sub_2329C4D44(*(v0 + 144));
    v11 = (*(*v3 + 200) + **(*v3 + 200));
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_2329C48C8;
    v5 = *(v0 + 96);
    v6.n128_u64[0] = *(v0 + 72);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    return v11(v8, v7, v5, v6);
  }

  else
  {
    **(v0 + 40) = xpc_array_create_empty();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2329C48C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  (*(v3[11] + 8))(v3[12], v3[10]);
  if (v1)
  {
    v5 = sub_2329C4CD8;
  }

  else
  {
    v5 = sub_2329C4A38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2329C4A38()
{
  v22 = v0;
  if (*(*(v0 + 128) + 16))
  {

    v1 = sub_2329D2DF4();
    v2 = sub_2329D3604();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 128);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v21 = v5;
      *v4 = 136315138;
      v6 = sub_2329D3084();
      v7 = MEMORY[0x23838A9E0](v3, v6);
      v9 = sub_2329A8630(v7, v8, &v21);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_2329A4000, v1, v2, "About to send %s to symptomsd", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x23838B4F0](v5, -1, -1);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(**(*(v0 + 104) + *(v0 + 112)) + 208);

    v13 = v12(v10);
    v14 = *(v0 + 104);
    if (v11)
    {

      v15 = *(v0 + 8);
      goto LABEL_11;
    }

    empty = v13;
  }

  else
  {

    v16 = sub_2329D2DF4();
    v17 = sub_2329D3614();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2329A4000, v16, v17, "No endpoints were discovered", v18, 2u);
      MEMORY[0x23838B4F0](v18, -1, -1);
    }

    v14 = *(v0 + 104);

    empty = xpc_array_create_empty();
  }

  **(v0 + 40) = empty;

  v15 = *(v0 + 8);
LABEL_11:

  return v15();
}

uint64_t sub_2329C4CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2329C4D44(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE078, &qword_2329D4FC0);
  sub_2329D3174();
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      *(swift_allocObject() + 16) = xmmword_2329D46D0;
      sub_2329D3124();
      sub_2329D3144();
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      *(swift_allocObject() + 16) = xmmword_2329D4530;
      sub_2329D3114();
      goto LABEL_13;
    }

LABEL_12:
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3104();
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3134();
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3154();
    goto LABEL_13;
  }

  if (a1 != 5)
  {
    goto LABEL_12;
  }

  *(swift_allocObject() + 16) = xmmword_2329D46D0;
  sub_2329D3164();
  sub_2329D30F4();
LABEL_13:
  sub_2329C85E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE088, &qword_2329D4FC8);
  sub_2329C8638();
  return sub_2329D3744();
}

uint64_t sub_2329C4F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2329C8988(a3, v22 - v9);
  v11 = sub_2329D3504();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2329BFB8C(v10, &qword_27DDBDD98, &qword_2329D4860);
  }

  else
  {
    sub_2329D34F4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2329D34D4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2329D33E4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2329C53D4(uint64_t a1, char a2, void *aBlock, void *a4, double a5)
{
  v5[2] = a4;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_2329D33B4();
  v11 = v10;
  v5[4] = v10;
  a4;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_2329C54C0;

  return sub_2329C3E8C(v9, v11, a2, a5);
}

uint64_t sub_2329C54C0(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2329D2C74();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    v8[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2329C5680(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2329C56A0, 0, 0);
}

uint64_t sub_2329C56A0()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = sub_2329D2DF4();
    v5 = sub_2329D3634();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_2329A4000, v4, v5, "Received NDF payload: %@", v7, 0xCu);
      sub_2329BFB8C(v8, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v8, -1, -1);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    v10 = *(v0 + 16);

    v11 = (*(*v2 + 472))(v10);
  }

  else
  {
    v12 = sub_2329D2DF4();
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v12, v13, "Persistence controller is not ready. Cannot deliver payload to daemon", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    v11 = 0;
  }

  v15 = *(v0 + 8);

  return v15(v11 & 1);
}

uint64_t sub_2329C5A74(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2329C5B38;

  return sub_2329C5680(v6);
}

uint64_t sub_2329C5B38(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2329C5C98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2329C5CB8, 0, 0);
}

uint64_t sub_2329C5CB8()
{
  v23 = v0;
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  if (v1)
  {
    v2 = v1;

    v3 = sub_2329D2DF4();
    v4 = sub_2329D3634();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 134218242;
      if (v6 >> 62)
      {
        v9 = sub_2329D3864();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = *(v0 + 16);
      *(v7 + 4) = v9;

      *(v7 + 12) = 2080;
      v11 = sub_2329D2FA4();
      v12 = MEMORY[0x23838A9E0](v10, v11);
      v14 = sub_2329A8630(v12, v13, &v22);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_2329A4000, v3, v4, "Received %ld NDF payloads: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23838B4F0](v8, -1, -1);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    else
    {
    }

    v19 = (*(*v2 + 480))(*(v0 + 16));

    v18 = v19 != 0;
  }

  else
  {
    v15 = sub_2329D2DF4();
    v16 = sub_2329D3614();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2329A4000, v15, v16, "Persistence controller is not ready. Cannot deliver CloudKit payloads to daemon", v17, 2u);
      MEMORY[0x23838B4F0](v17, -1, -1);
    }

    v18 = 0;
  }

  v20 = *(v0 + 8);

  return v20(v18);
}

uint64_t sub_2329C60F0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_2329D2FA4();
  v5 = sub_2329D3484();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2329C61C8;

  return sub_2329C5C98(v5);
}

uint64_t sub_2329C61C8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2329C634C()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B4C58();
  }

  else
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3614();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Persistence controller is not ready. Cannot publish CoreData entry", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    v1 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1 & 1);
}

uint64_t sub_2329C65FC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C632C();
}

uint64_t sub_2329C66C4()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B52E8();
  }

  else
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3614();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Persistence controller is not ready. Cannot fetch all CoreData entries", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    v1 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1 & 1);
}

uint64_t sub_2329C6974(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C66A4();
}

uint64_t sub_2329C6A3C()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B59E8();
  }

  else
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3614();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Persistence controller is not ready. Cannot fetch latest CoreData entries", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    v1 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1 & 1);
}

uint64_t sub_2329C6CEC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C6A1C();
}

uint64_t sub_2329C6DB4()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B497C();
  }

  else
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3614();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Persistence controller is not ready. Cannot initialize schema", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    v1 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v1 & 1);
}

uint64_t sub_2329C7064(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C710C;

  return sub_2329C6D94();
}

uint64_t sub_2329C710C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2329C7274()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  if (v1)
  {
    v2 = sub_2329B5C10(v1);
  }

  else
  {
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot clean up stale network device records", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v2 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_2329C7524(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C7254();
}

uint64_t sub_2329C75EC()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    sub_2329B9674();
    v2 = v1;
  }

  else
  {
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot print telemetry stats", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v2 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v2 & 1);
}

uint64_t sub_2329C789C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C75CC();
}

uint64_t sub_2329C7944(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2329BFCFC;

  return v6();
}

uint64_t sub_2329C7A2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2329BF0BC;

  return v7();
}

uint64_t sub_2329C7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2329C8988(a3, v23 - v10);
  v12 = sub_2329D3504();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2329BFB8C(v11, &qword_27DDBDD98, &qword_2329D4860);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2329D34F4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2329D34D4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2329D33E4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

    return v21;
  }

LABEL_8:
  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

char *sub_2329C7E00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2329C7E20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2329C7E20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2329C7F30(void *a1)
{
  if (sub_2329C39CC(a1))
  {
    if (qword_2814DAA58 != -1)
    {
      swift_once();
    }

    sub_2329C3680(v2);

    v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v4 = sub_2329D3474();

    v5 = [v3 initWithArray_];

    v14 = 0;
    sub_2329D35B4();

    v7 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (!os_log_type_enabled(v7, v11))
    {
      goto LABEL_11;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2329A4000, v7, v11, "Cannot convert supported classes to Set<AnyHashable>", v12, 2u);
    v10 = v12;
LABEL_10:
    MEMORY[0x23838B4F0](v10, -1, -1);
LABEL_11:

    return 0;
  }

  v6 = a1;
  v7 = sub_2329D2DF4();
  v8 = sub_2329D3614();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&dword_2329A4000, v7, v8, "Rejecting connection: PID %d not entitled", v9, 8u);
    v10 = v9;
    goto LABEL_10;
  }

  return 0;
}

uint64_t type metadata accessor for NDFDaemonService(uint64_t a1)
{
  result = qword_2814DAA30;
  if (!qword_2814DAA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329C8514(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2329BF0BC;

  return sub_2329C464C(a1, v7, v9, v10, v4, v5, v6, v8);
}

unint64_t sub_2329C85E0()
{
  result = qword_2814D9ED0;
  if (!qword_2814D9ED0)
  {
    sub_2329D3174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9ED0);
  }

  return result;
}

unint64_t sub_2329C8638()
{
  result = qword_2814D9EB0;
  if (!qword_2814D9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE088, &qword_2329D4FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9EB0);
  }

  return result;
}

uint64_t sub_2329C86A4(uint64_t a1)
{
  result = sub_2329D2E14();
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

uint64_t sub_2329C8750()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C789C(v2, v3);
}

uint64_t sub_2329C87FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BFCFC;

  return sub_2329C7944(v2, v3, v4);
}

uint64_t sub_2329C88BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2329BFCFC;

  return sub_2329C7A2C(a1, v4, v5, v6);
}

uint64_t sub_2329C8988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2329C89F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2329BFCFC;

  return sub_2329BAD1C(a1, v4);
}

uint64_t sub_2329C8AB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C7524(v2, v3);
}

uint64_t sub_2329C8B5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BF0BC;

  return sub_2329C7064(v2, v3);
}

uint64_t sub_2329C8C08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C6CEC(v2, v3);
}

uint64_t sub_2329C8CB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C6974(v2, v3);
}

uint64_t sub_2329C8D60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C65FC(v2, v3);
}

uint64_t sub_2329C8E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BFCFC;

  return sub_2329C60F0(v2, v3, v4);
}

uint64_t objectdestroy_113Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329C8F08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BFCFC;

  return sub_2329C5A74(v2, v3, v4);
}

uint64_t sub_2329C8FBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2329BFCFC;

  return sub_2329C53D4(v2, v6, v4, v5, v3);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_2329C9140(const char *a1, ...)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = v3;
    v7 = sub_2329D2DF4();
    v8 = sub_2329D3634();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_2329A4000, v7, v8, a1, v9, 0xCu);
      sub_2329BFB8C(v10, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v10, -1, -1);
      MEMORY[0x23838B4F0](v9, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v5) + 0xA8))();
  }
}

uint64_t sub_2329C92BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8E7C();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329C932C(void *a1)
{
  v2 = swift_allocObject();
  sub_2329C936C(a1);
  return v2;
}

uint64_t sub_2329C936C(void *a1)
{
  v3 = sub_2329D32A4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2329D3694();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v9 = sub_2329A8E7C();
  v10 = sub_2329D2E14();
  (*(*(v10 - 8) + 16))(v1 + v8, v9, v10);
  v31 = v1;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration) = 0;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerQueue) = a1;
  sub_2329C97DC();
  v37 = MEMORY[0x277D84F90];
  sub_2329CA6E0(&qword_2814D9E48, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v11 = a1;
  v30 = a1;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE110, qword_2329D51C0);
  sub_2329C318C(&unk_2814D9E88, &qword_27DDBE110, qword_2329D51C0);
  sub_2329D3744();
  v12 = sub_2329D36A4();
  v13 = *(v32 + 8);
  v13(v7, v5);
  v14 = v31;
  *(v31 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_beginCleanExitTimer) = v12;
  v37 = MEMORY[0x277D84F90];
  sub_2329D3744();
  v15 = sub_2329D36A4();
  v13(v7, v5);
  *(v14 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_periodicCleanExitTimer) = v15;
  v16 = sub_2329A65F4();
  v17 = *(**v16 + 280);

  v19 = v17(v18);

  *(v14 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timeToLive) = v19;
  v20 = *(**v16 + 304);

  v22 = v20(v21);

  *(v14 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_cleanExitInterval) = v22;
  v23 = *(**v16 + 328);

  v25 = v23(v24);

  v26 = v34;
  *v34 = v25;
  v28 = v35;
  v27 = v36;
  (*(v35 + 104))(v26, *MEMORY[0x277D85188], v36);
  (*(v28 + 32))(v14 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway, v26, v27);
  return v14;
}

unint64_t sub_2329C97DC()
{
  result = qword_2814D9E40;
  if (!qword_2814D9E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D9E40);
  }

  return result;
}

uint64_t sub_2329C9828()
{
  v1 = v0;
  v2 = sub_2329D32B4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2329D32F4();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2329D32A4();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2329D3314();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;

  v16 = sub_2329D2DF4();
  v17 = sub_2329D3634();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timeToLive);
    _os_log_impl(&dword_2329A4000, v16, v17, "Process startup completed. Starting time to live timer (TTL: %fs)", v18, 0xCu);
    MEMORY[0x23838B4F0](v18, -1, -1);
  }

  v19 = v1;
  ObjectType = swift_getObjectType();
  sub_2329D3304();
  sub_2329D3324();
  v28 = *(v10 + 8);
  v28(v13, v9);
  v21 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v22 = v29;
  (*(v6 + 104))(v8, *MEMORY[0x277D85180], v29);
  MEMORY[0x23838AC40](v15, v8, v19 + v21, ObjectType);
  (*(v6 + 8))(v8, v22);
  v28(v15, v9);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2329C9CF8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_2329D32C4();
  v26 = v33;
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v24);
  (*(v34 + 8))(v26, v35);
  (*(v31 + 8))(v25, v32);

  return sub_2329D36D4();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2329C9D44()
{
  v1 = v0;
  v2 = sub_2329D32B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2329D32F4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2329D3314();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2329D2DF4();
  v14 = sub_2329D3634();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v8;
    v16 = v9;
    v17 = v5;
    v18 = v3;
    v19 = v2;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2329A4000, v13, v14, "Starting periodic clean exit attempts", v15, 2u);
    v21 = v20;
    v2 = v19;
    v3 = v18;
    v5 = v17;
    v9 = v16;
    v8 = v27;
    MEMORY[0x23838B4F0](v21, -1, -1);
  }

  ObjectType = swift_getObjectType();
  sub_2329D3304();
  MEMORY[0x23838AC50](v12, v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway, ObjectType, *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_cleanExitInterval));
  (*(v10 + 8))(v12, v9);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2329CA5BC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);

  sub_2329D32C4();
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v24);
  (*(v3 + 8))(v5, v2);
  (*(v28 + 8))(v8, v29);

  return sub_2329D36D4();
}

void sub_2329CA0F8()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    return;
  }

  v5 = v0;
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration) = v4;

  v6 = sub_2329D2DF4();
  v7 = sub_2329D3634();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v5 + v1);

    _os_log_impl(&dword_2329A4000, v6, v7, "Attempting clean exit... (%ld)", v8, 0xCu);
    MEMORY[0x23838B4F0](v8, -1, -1);

    if (xpc_transaction_try_exit_clean())
    {
      return;
    }
  }

  else
  {

    if (xpc_transaction_try_exit_clean())
    {
      return;
    }
  }

  oslog = sub_2329D2DF4();
  v9 = sub_2329D35F4();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v9, "Cannot eager exit yet, there are still outstanding transactions", v10, 2u);
    MEMORY[0x23838B4F0](v10, -1, -1);
  }
}

uint64_t sub_2329CA298()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v4 = sub_2329D32A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2329CA368()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v4 = sub_2329D32A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NDFDaemonTaskManager(uint64_t a1)
{
  result = qword_2814DA9B8;
  if (!qword_2814DA9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329CA4C8(uint64_t a1)
{
  result = sub_2329D2E14();
  if (v2 <= 0x3F)
  {
    result = sub_2329D32A4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2329CA5F0(uint64_t (*a1)(void), const char *a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_2329D2DF4();
    v8 = a1();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2329A4000, v7, v8, a2, v9, 2u);
      MEMORY[0x23838B4F0](v9, -1, -1);
    }

    a3();
  }

  return result;
}

uint64_t sub_2329CA6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2329CA730()
{
  v0 = objc_opt_self();
  v1 = &unk_284805F30;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814DAA28 = v2;
}

uint64_t sub_2329CA798@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A9010();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329CA808(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_2329CA828, 0, 0);
}

uint64_t sub_2329CA828()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277D6B6A0] options:4096];
  v0[21] = v1;
  if (qword_2814DAA20 != -1)
  {
    swift_once();
  }

  [v1 setRemoteObjectInterface_];
  [v1 activate];
  v2 = swift_allocObject();
  v0[22] = v2;
  swift_weakInit();
  v0[14] = sub_2329CB330;
  v0[15] = v2;
  v3 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2329CB338;
  v0[13] = &block_descriptor_3;
  v4 = _Block_copy(v0 + 10);

  v5 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_2329D3734();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1E8, &qword_2329D5240);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v8 = v0[18];
    v7 = v0[19];
    v0[23] = v8;
    if (v7 >> 62)
    {
      v6 = sub_2329D3864();
      v9 = v6;
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v8;
    if (v9)
    {
      if (v9 < 1)
      {
        __break(1u);
        return MEMORY[0x282200938](v6);
      }

      v10 = 0;
      v33 = v7 & 0xC000000000000001;
      v32 = v0[19] + 32;
      v11 = MEMORY[0x277D84F90];
      do
      {
        if (v33)
        {
          v12 = MEMORY[0x23838AD30](v10, v0[19]);
        }

        else
        {
          v12 = *(v32 + 8 * v10);
        }

        v13 = v12;
        v14 = sub_2329D2E84();
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2329CB674(0, *(v11 + 2) + 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = sub_2329CB674((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v19 = &v11[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        ++v10;
      }

      while (v9 != v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    if (*(v11 + 2))
    {

      v23 = sub_2329D2DF4();
      v24 = sub_2329D3634();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = *(v11 + 2);
        _os_log_impl(&dword_2329A4000, v23, v24, "Sending %ld device updates to symptomsd", v25, 0xCu);
        MEMORY[0x23838B4F0](v25, -1, -1);
      }

      v26 = sub_2329D3474();
      v0[24] = v26;

      v0[2] = v0;
      v0[3] = sub_2329CAF04;
      v27 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1F0, qword_2329D5248);
      v0[10] = v3;
      v0[11] = 1107296256;
      v0[12] = sub_2329CB3B8;
      v0[13] = &block_descriptor_3_0;
      v0[14] = v27;
      [v31 updatedNDFDeviceRecords:v26 reply:v0 + 10];
      v6 = (v0 + 2);

      return MEMORY[0x282200938](v6);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_2329D2DF4();
    v21 = sub_2329D3614();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2329A4000, v20, v21, "Failed to obtain remote object proxy, not sending updates", v22, 2u);
      MEMORY[0x23838B4F0](v22, -1, -1);
    }
  }

  v28 = v0[21];
  [v28 invalidate];

  v29 = v0[1];

  return v29();
}

uint64_t sub_2329CAF04()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2329CB0A0;
  }

  else
  {
    v2 = sub_2329CB014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2329CB014()
{
  v1 = v0[24];

  swift_unknownObjectRelease();

  v2 = v0[21];
  [v2 invalidate];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2329CB0A0(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  [v3 invalidate];
  v4 = v1[1];

  return v4();
}

uint64_t sub_2329CB144(void *a1, uint64_t a2)
{
  v3 = sub_2329D2E14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v4 + 16))(v6, result + OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger, v3);

    v8 = a1;
    v9 = sub_2329D2DF4();
    v10 = sub_2329D3614();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2329A4000, v9, v10, "Error sending device updates: %@", v11, 0xCu);
      sub_2329CB780(v12);
      MEMORY[0x23838B4F0](v12, -1, -1);
      MEMORY[0x23838B4F0](v11, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_2329CB338(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2329CB3B8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2329CB464()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2329CB4C4()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2329CB560()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329A9010();
  v3 = sub_2329D2E14();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  return v0;
}

uint64_t sub_2329CB5E8()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329A9010();
  v3 = sub_2329D2E14();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  return v0;
}

char *sub_2329CB674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1F8, "FD");
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2329CB780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE070, &unk_2329D4750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NDFSymptomsRelay(uint64_t a1)
{
  result = qword_2814DAA08;
  if (!qword_2814DAA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329CB83C(uint64_t a1)
{
  result = sub_2329D2E14();
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2329CB910@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8D44();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329CB980()
{
  v7 = sub_2329D3674();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2329D3654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2329D32F4();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2329CBBDC();
  sub_2329D32D4();
  v8 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&qword_2814D9E58, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D2B80(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0, MEMORY[0x277D83970]);
  sub_2329D3744();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_2329D3684();
}

unint64_t sub_2329CBBDC()
{
  result = qword_2814D9E50;
  if (!qword_2814D9E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D9E50);
  }

  return result;
}

uint64_t sub_2329CBC28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t NDFBrowser.__allocating_init()()
{
  v0 = swift_allocObject();
  NDFBrowser.init()();
  return v0;
}

uint64_t NDFBrowser.init()()
{
  v1 = v0;
  v2 = sub_2329D3674();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2329D3654();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2329D32F4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v8 = sub_2329A8D44();
  v9 = sub_2329D2E14();
  (*(*(v9 - 8) + 16))(v0 + v7, v8, v9);
  v14 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browserQueue;
  v13[1] = sub_2329CBBDC();
  sub_2329D32D4();
  v17 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&qword_2814D9E58, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D2B80(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0, MEMORY[0x277D83970]);
  sub_2329D3744();
  (*(v15 + 104))(v4, *MEMORY[0x277D85260], v16);
  *(v0 + v14) = sub_2329D3684();
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser) = 0;
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
  v10 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  return v1;
}

uint64_t sub_2329CC004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v7 = sub_2329D34E4();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  v8 = sub_2329D3084();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE210, &qword_2329D52B0);
  *(v5 + 256) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE218, &qword_2329D52B8);
  *(v5 + 264) = v9;
  *(v5 + 272) = *(v9 - 8);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE220, &qword_2329D52C0);
  *(v5 + 288) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE228, &unk_2329D52C8);
  *(v5 + 296) = v10;
  *(v5 + 304) = *(v10 - 8);
  *(v5 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329CC344, 0, 0);
}

uint64_t sub_2329CC344(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 128);
  if (*(v1 + 112) <= 0.0)
  {
    v12 = sub_2329D2DF4();
    v13 = sub_2329D3614();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v12, v13, "Cannot start discovery with negative time interval", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }

    v8 = sub_2329D2E44();
    sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0], MEMORY[0x277D6B2F8]);
    swift_allocError();
    v10 = v15;
    *v15 = 1;
    v11 = MEMORY[0x277D6B2D8];
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress;
  *(v1 + 320) = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress;
  v4 = *(v2 + v3);
  *(v1 + 328) = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v5 = sub_2329D2DF4();
  if (v4)
  {
    v6 = sub_2329D3614();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2329A4000, v5, v6, "Cannot start discovery while already running", v7, 2u);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    v8 = sub_2329D2E44();
    sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0], MEMORY[0x277D6B2F8]);
    swift_allocError();
    v10 = v9;
    v11 = MEMORY[0x277D6B2E0];
LABEL_9:
    (*(*(v8 - 8) + 104))(v10, *v11, v8);
    swift_willThrow();

    v16 = *(v1 + 8);

    return v16();
  }

  v18 = sub_2329D3634();
  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2329A4000, v5, v18, "Starting endpoint discovery", v19, 2u);
    MEMORY[0x23838B4F0](v19, -1, -1);
  }

  *(v2 + v3) = 1;
  sub_2329D3534();
  v20 = *(v1 + 296);
  v21 = *(v1 + 304);
  v22 = *(v1 + 288);
  sub_2329CDF4C(*(v1 + 96), *(v1 + 104), *(v1 + 120), v22);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_2329BFB8C(*(v1 + 288), &qword_27DDBE220, &qword_2329D52C0);
    v23 = sub_2329D2DF4();
    v24 = sub_2329D3634();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2329A4000, v23, v24, "No endpoints discovered", v25, 2u);
      MEMORY[0x23838B4F0](v25, -1, -1);
    }

    sub_2329D3534();
    v29 = sub_2329D1D24(MEMORY[0x277D84F90]);

    v30 = sub_2329D2DF4();
    v31 = sub_2329D3634();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 136315138;
      *(v1 + 80) = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE240, &qword_2329D52D8);
      v35 = sub_2329D33D4();
      v37 = sub_2329A8630(v35, v36, &v39);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2329A4000, v30, v31, "Discovered endpoints (after deduplication): %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23838B4F0](v34, -1, -1);
      MEMORY[0x23838B4F0](v33, -1, -1);
    }

    v38 = *(v1 + 8);

    return v38(v29);
  }

  else
  {
    (*(*(v1 + 304) + 32))(*(v1 + 312), *(v1 + 288), *(v1 + 296));
    sub_2329D3584();
    *(v1 + 336) = MEMORY[0x277D84F90];
    v26 = swift_task_alloc();
    *(v1 + 344) = v26;
    *v26 = v1;
    v26[1] = sub_2329CCDE0;
    v27 = *(v1 + 256);
    v28 = *(v1 + 264);

    return MEMORY[0x2822005A8](v27, 0, 0, v28, v1 + 88);
  }
}

uint64_t sub_2329CCDE0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_2329CDAC4;
  }

  else
  {
    v2 = sub_2329CCEFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2329CCEFC()
{
  v109 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 352);
    v8 = *(v0 + 336);
    sub_2329D3534();
    if (v7)
    {
      v9 = v7;
LABEL_6:

      *(v0 + 64) = v9;
      v18 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
      if (swift_dynamicCast())
      {

        v19 = sub_2329D2DF4();
        v20 = sub_2329D3634();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2329A4000, v19, v20, "Discovery task cancelled, cancelling active discovery operation", v21, 2u);
          MEMORY[0x23838B4F0](v21, -1, -1);
        }

        v22 = *(v0 + 128);

        v23 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser;
        if (*(v22 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser))
        {

          sub_2329D3284();
        }

        v48 = *(v0 + 168);
        v49 = *(v0 + 136);
        v50 = *(v0 + 144);
        v51 = *(v0 + 128);
        *(v22 + v23) = 0;

        v52 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
        swift_beginAccess();
        sub_2329BF474(v51 + v52, v48, &qword_27DDBE208, &qword_2329D52A8);
        v53 = (*(v50 + 48))(v48, 1, v49);
        v54 = *(v0 + 168);
        if (v53)
        {
          sub_2329BFB8C(*(v0 + 168), &qword_27DDBE208, &qword_2329D52A8);
        }

        else
        {
          v56 = *(v0 + 144);
          v55 = *(v0 + 152);
          v57 = *(v0 + 136);
          (*(v56 + 16))(v55, *(v0 + 168), v57);
          sub_2329BFB8C(v54, &qword_27DDBE208, &qword_2329D52A8);
          *(v0 + 72) = 0;
          sub_2329D3574();
          (*(v56 + 8))(v55, v57);
        }

        v58 = *(v0 + 320);
        v59 = *(v0 + 160);
        v60 = *(v0 + 128);
        (*(*(v0 + 144) + 56))(v59, 1, 1, *(v0 + 136));
        swift_beginAccess();
        sub_2329D0E50(v59, v51 + v52);
        swift_endAccess();
        *(v60 + v58) = 0;
        v61 = sub_2329D2DF4();
        v62 = sub_2329D3634();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_2329A4000, v61, v62, "Discovery operation cancelled successfully", v63, 2u);
          MEMORY[0x23838B4F0](v63, -1, -1);
        }

        v65 = *(v0 + 184);
        v64 = *(v0 + 192);
        v66 = *(v0 + 176);

        sub_2329D2BC8(&qword_27DDBE238, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        swift_allocError();
        sub_2329D3334();
        swift_willThrow();
        (*(v65 + 8))(v64, v66);
      }

      v67 = *(v0 + 8);

      return v67();
    }

    v24 = sub_2329D1D24(v8);

    v25 = sub_2329D2DF4();
    v26 = sub_2329D3634();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v108[0] = v28;
      *v27 = 136315138;
      *(v0 + 80) = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE240, &qword_2329D52D8);
      v29 = sub_2329D33D4();
      v31 = sub_2329A8630(v29, v30, v108);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2329A4000, v25, v26, "Discovered endpoints (after deduplication): %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23838B4F0](v28, -1, -1);
      MEMORY[0x23838B4F0](v27, -1, -1);
    }

    v32 = *(v0 + 8);

    return v32(v24);
  }

  else
  {
    v10 = *(v0 + 352);
    v11 = *(v3 + 32);
    v11(*(v0 + 248), v1, v2);
    sub_2329D3534();
    if (v10)
    {
      v9 = v10;
      v13 = *(v0 + 304);
      v12 = *(v0 + 312);
      v14 = *(v0 + 296);
      v16 = *(v0 + 272);
      v15 = *(v0 + 280);
      v17 = *(v0 + 264);
      (*(*(v0 + 208) + 8))(*(v0 + 248), *(v0 + 200));
      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
      goto LABEL_6;
    }

    if (sub_2329CE904(*(v0 + 248), *(v0 + 336)))
    {
      v34 = *(*(v0 + 208) + 16);
      v34(*(v0 + 216), *(v0 + 248), *(v0 + 200));
      v35 = sub_2329D2DF4();
      v36 = sub_2329D35F4();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 248);
      if (v37)
      {
        v39 = *(v0 + 216);
        v40 = *(v0 + 224);
        v41 = *(v0 + 200);
        v103 = *(v0 + 208);
        v106 = *(v0 + 248);
        v42 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v108[0] = v105;
        *v42 = 136315138;
        v34(v40, v39, v41);
        v43 = sub_2329D33D4();
        v45 = v44;
        v46 = *(v103 + 8);
        v46(v39, v41);
        v47 = sub_2329A8630(v43, v45, v108);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_2329A4000, v35, v36, "Skipping already discovered endpoint: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x23838B4F0](v105, -1, -1);
        MEMORY[0x23838B4F0](v42, -1, -1);

        v46(v106, v41);
      }

      else
      {
        v91 = *(v0 + 208);
        v92 = *(v0 + 216);
        v93 = *(v0 + 200);

        v94 = *(v91 + 8);
        v94(v92, v93);
        v94(v38, v93);
      }
    }

    else
    {
      v68 = *(*(v0 + 208) + 16);
      v68(*(v0 + 240), *(v0 + 248), *(v0 + 200));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v0 + 336);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_2329D0AE4(0, v70[2] + 1, 1, v70);
      }

      v72 = v70[2];
      v71 = v70[3];
      v104 = v68;
      if (v72 >= v71 >> 1)
      {
        v70 = sub_2329D0AE4((v71 > 1), v72 + 1, 1, v70);
      }

      v73 = *(v0 + 240);
      v74 = *(v0 + 248);
      v75 = *(v0 + 232);
      v77 = *(v0 + 200);
      v76 = *(v0 + 208);
      v70[2] = v72 + 1;
      v107 = v70;
      v11(v70 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v72, v73, v77);
      v104(v75, v74, v77);
      v78 = sub_2329D2DF4();
      v79 = sub_2329D3604();
      v80 = os_log_type_enabled(v78, v79);
      v102 = *(v0 + 248);
      v81 = *(v0 + 232);
      if (v80)
      {
        v82 = *(v0 + 224);
        v84 = *(v0 + 200);
        v83 = *(v0 + 208);
        v85 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v108[0] = v101;
        *v85 = 136315138;
        v104(v82, v81, v84);
        v86 = sub_2329D33D4();
        v88 = v87;
        v89 = *(v83 + 8);
        v89(v81, v84);
        v90 = sub_2329A8630(v86, v88, v108);

        *(v85 + 4) = v90;
        _os_log_impl(&dword_2329A4000, v78, v79, "Discovered endpoint: %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x23838B4F0](v101, -1, -1);
        MEMORY[0x23838B4F0](v85, -1, -1);

        v89(v102, v84);
      }

      else
      {
        v96 = *(v0 + 200);
        v95 = *(v0 + 208);

        v97 = *(v95 + 8);
        v97(v81, v96);
        v97(v102, v96);
      }

      *(v0 + 336) = v107;
    }

    v98 = swift_task_alloc();
    *(v0 + 344) = v98;
    *v98 = v0;
    v98[1] = sub_2329CCDE0;
    v99 = *(v0 + 256);
    v100 = *(v0 + 264);

    return MEMORY[0x2822005A8](v99, 0, 0, v100, v0 + 88);
  }
}

uint64_t sub_2329CDAC4()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 88);
  *(v0 + 64) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
  if (swift_dynamicCast())
  {

    v6 = sub_2329D2DF4();
    v7 = sub_2329D3634();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2329A4000, v6, v7, "Discovery task cancelled, cancelling active discovery operation", v8, 2u);
      MEMORY[0x23838B4F0](v8, -1, -1);
    }

    v9 = *(v0 + 128);

    v10 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser;
    if (*(v9 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser))
    {

      sub_2329D3284();
    }

    v11 = *(v0 + 168);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    *(v9 + v10) = 0;

    v15 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329BF474(v14 + v15, v11, &qword_27DDBE208, &qword_2329D52A8);
    v16 = (*(v13 + 48))(v11, 1, v12);
    v17 = *(v0 + 168);
    if (v16)
    {
      sub_2329BFB8C(*(v0 + 168), &qword_27DDBE208, &qword_2329D52A8);
    }

    else
    {
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      v20 = *(v0 + 136);
      (*(v19 + 16))(v18, *(v0 + 168), v20);
      sub_2329BFB8C(v17, &qword_27DDBE208, &qword_2329D52A8);
      *(v0 + 72) = 0;
      sub_2329D3574();
      (*(v19 + 8))(v18, v20);
    }

    v21 = *(v0 + 320);
    v22 = *(v0 + 160);
    v23 = *(v0 + 128);
    (*(*(v0 + 144) + 56))(v22, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_2329D0E50(v22, v14 + v15);
    swift_endAccess();
    *(v23 + v21) = 0;
    v24 = sub_2329D2DF4();
    v25 = sub_2329D3634();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2329A4000, v24, v25, "Discovery operation cancelled successfully", v26, 2u);
      MEMORY[0x23838B4F0](v26, -1, -1);
    }

    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);

    sub_2329D2BC8(&qword_27DDBE238, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_2329D3334();
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2329CDF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v65 = sub_2329D32B4();
  v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2329D32F4();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2329D3314();
  v75 = *(v73 - 8);
  v12 = MEMORY[0x28223BE20](v73);
  v62 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE248, qword_2329D52E0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v74 = *(v22 - 8);
  v59 = *(v74 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v58 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v57 - v25;
  v27 = sub_2329D1820(a1, a2, a3);
  *(v5 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser) = v27;
  v28 = v5;

  sub_2329D3084();
  (*(v19 + 104))(v21, *MEMORY[0x277D858A0], v18);
  sub_2329D3544();
  (*(v19 + 8))(v21, v18);
  v29 = v74;
  v30 = v74 + 16;
  v69 = *(v74 + 16);
  v69(v17, v26, v22);
  v57[1] = v30;
  (*(v29 + 56))(v17, 0, 1, v22);
  v31 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
  swift_beginAccess();
  v70 = v28;
  sub_2329D0E50(v17, v28 + v31);
  swift_endAccess();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;

  v34 = v26;
  sub_2329D3554();
  v35 = v58;
  v36 = v26;
  v61 = v26;
  v37 = v22;
  v69(v58, v36, v22);
  v38 = v74;
  v39 = *(v74 + 80);
  v40 = swift_allocObject();
  v41 = *(v38 + 32);
  v41(v40 + ((v39 + 16) & ~v39), v35, v37);
  sub_2329A5F3C(sub_2329D23BC, v40);
  sub_2329D3214();

  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v35;
  v60 = v37;
  v69(v35, v34, v37);
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v27;
  v41(v44 + ((v39 + 32) & ~v39), v43, v37);

  sub_2329A5F3C(sub_2329D2438, v44);
  sub_2329D3204();

  v59 = *(v70 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browserQueue);
  sub_2329D3244();
  v45 = v62;
  sub_2329D3304();
  sub_2329D3324();
  v46 = *(v75 + 8);
  v75 += 8;
  v69 = v46;
  (v46)(v45, v73);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  v62 = v47;
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  aBlock[4] = sub_2329D24F8;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_4;
  v50 = _Block_copy(aBlock);

  v51 = v63;
  sub_2329D32C4();
  v76 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&unk_2814D9EC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE180, &unk_2329D4F60);
  sub_2329D2B80(&unk_2814D9EA0, &qword_27DDBE180, &unk_2329D4F60, MEMORY[0x277D83970]);
  v53 = v64;
  v52 = v65;
  sub_2329D3744();
  v54 = v72;
  MEMORY[0x23838ABB0](v72, v51, v53, v50);
  _Block_release(v50);

  (*(v68 + 8))(v53, v52);
  (*(v66 + 8))(v51, v67);
  (v69)(v54, v73);
  (*(v74 + 8))(v61, v60);

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE228, &unk_2329D52C8);
  return (*(*(v55 - 8) + 56))(v71, 0, 1, v55);
}

BOOL sub_2329CE904(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2329D3084();
    ++v2;
    sub_2329D2BC8(&qword_27DDBE2A8, MEMORY[0x277CD8B10], MEMORY[0x277CD8B20]);
  }

  while ((sub_2329D3374() & 1) == 0);
  return v3 != v4;
}

xpc_object_t sub_2329CEA14(uint64_t a1)
{
  v2 = sub_2329D3084();
  v3 = MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v5);
  v11 = &v49 - v10;
  v63 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v56 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
    v15 = *(v8 + 16);
    v13 = v8 + 16;
    v14 = v15;
    v16 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v60 = *(v13 + 56);
    v61 = v13;
    v59 = (v13 - 8);
    v58 = MEMORY[0x277D84F90];
    *&v9 = 136315138;
    v50 = v9;
    v57 = v15;
    v15(v11, v16, v2);
    while (1)
    {
      if (sub_2329D3064())
      {
        v18 = swift_unknownObjectRetain();
        MEMORY[0x23838A9B0](v18);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2329D34A4();
          v14 = v57;
        }

        sub_2329D34B4();
        swift_unknownObjectRelease();
        (*v59)(v11, v2);
        v58 = v63;
      }

      else
      {
        v14(v7, v11, v2);
        v19 = sub_2329D2DF4();
        v20 = sub_2329D3614();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v53 = v21;
          v54 = swift_slowAlloc();
          v62 = v54;
          *v21 = v50;
          v57(v51, v7, v2);
          v22 = sub_2329D33D4();
          v52 = v20;
          v24 = v23;
          v55 = *v59;
          v55(v7, v2);
          v25 = sub_2329A8630(v22, v24, &v62);

          v26 = v53;
          *(v53 + 1) = v25;
          _os_log_impl(&dword_2329A4000, v19, v52, "Could not obtain the underlying C type of %s", v26, 0xCu);
          v27 = v54;
          __swift_destroy_boxed_opaque_existential_0(v54);
          MEMORY[0x23838B4F0](v27, -1, -1);
          MEMORY[0x23838B4F0](v26, -1, -1);

          v55(v11, v2);
        }

        else
        {

          v17 = *v59;
          (*v59)(v7, v2);
          v17(v11, v2);
        }

        v14 = v57;
      }

      v16 += v60;
      if (!--v12)
      {
        break;
      }

      v14(v11, v16, v2);
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v28 = v58;

  v29 = sub_2329D2DF4();
  v30 = sub_2329D3604();
  v31 = v28 >> 62;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    if (v31)
    {
      v33 = sub_2329D3864();
    }

    else
    {
      v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v32 + 4) = v33;

    _os_log_impl(&dword_2329A4000, v29, v30, "Successfully converted %ld NWEndpoint instances to nw_endpoint_t objects", v32, 0xCu);
    MEMORY[0x23838B4F0](v32, -1, -1);
  }

  else
  {
  }

  if (!v31)
  {
    v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      v62 = MEMORY[0x277D84F90];
      sub_2329D3834();
      goto LABEL_22;
    }

LABEL_34:

    return xpc_array_create_empty();
  }

  if (!sub_2329D3864())
  {
    goto LABEL_34;
  }

  v41 = sub_2329D3864();
  if (!v41)
  {

    v36 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_28;
    }

LABEL_37:
    if (sub_2329D3864())
    {
      v42 = sub_2329D3864();

      v37 = sub_2329D1784(v43);
      swift_bridgeObjectRelease_n();
      v38 = v42;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  v34 = v41;
  v62 = MEMORY[0x277D84F90];
  sub_2329D3834();
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_22:
  v35 = 0;
  do
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23838AD30](v35, v28);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ++v35;
    nw_endpoint_copy_dictionary();
    swift_unknownObjectRelease();
    sub_2329D3814();
    sub_2329D3844();
    sub_2329D3854();
    sub_2329D3824();
  }

  while (v34 != v35);

  v36 = v62;
  if (v62 >> 62)
  {
    goto LABEL_37;
  }

LABEL_28:
  v37 = v36 & 0xFFFFFFFFFFFFFF8;
  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
LABEL_29:
    v39 = xpc_array_create((v37 + 32), v38);
    swift_unknownObjectRelease();
    return v39;
  }

LABEL_39:

  v44 = sub_2329D2DF4();
  v45 = sub_2329D3614();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2329A4000, v44, v45, "Could not convert nw_endpoint_t objects to their XPC representation, returning", v46, 2u);
    MEMORY[0x23838B4F0](v46, -1, -1);
  }

  v47 = sub_2329D2E44();
  sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0], MEMORY[0x277D6B2F8]);
  swift_allocError();
  (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D6B2E8], v47);
  return swift_willThrow();
}

uint64_t NDFBrowser.deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2329BFB8C(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation, &qword_27DDBE208, &qword_2329D52A8);
  return v0;
}

uint64_t NDFBrowser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2329BFB8C(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation, &qword_27DDBE208, &qword_2329D52A8);

  return swift_deallocClassInstance();
}

uint64_t sub_2329CF2F4@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE280, &qword_2329D5380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE288, &qword_2329D5388);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE290, &qword_2329D5390);
  v11 = *(v10 - 8);
  v20 = v10;
  v21 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_2329D2B80(&qword_2814DA7E8, &qword_27DDBE280, &qword_2329D5380, MEMORY[0x277CC90F8]);
  sub_2329D2C64();
  swift_getKeyPath();
  sub_2329D2C44();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  v14 = MEMORY[0x277CC90C0];
  sub_2329D2B80(&qword_2814DA810, &qword_27DDBE288, &qword_2329D5388, MEMORY[0x277CC90C0]);
  sub_2329D2C44();

  (*(v7 + 8))(v9, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE298, &qword_2329D53F0);
  v16 = v22;
  *(v22 + 24) = v15;
  v16[4] = sub_2329D2964();
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2329D2B80(&qword_2814DA800, &qword_27DDBE290, &qword_2329D5390, v14);
  v17 = v20;
  sub_2329D2C54();
  return (*(v21 + 8))(v13, v17);
}

uint64_t sub_2329CF650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_2329D30D4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_2329CF698@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_2329CF6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE260, &qword_2329D5360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, a1, v5);
    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85870])
    {
      (*(v6 + 8))(v8, v5);

      v11 = sub_2329D2DF4();
      v12 = sub_2329D35F4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18[1] = a3;
        v19 = v14;
        *v13 = 136315138;

        v15 = sub_2329D33D4();
        v17 = sub_2329A8630(v15, v16, &v19);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_2329A4000, v11, v12, "Cancelling browser %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x23838B4F0](v14, -1, -1);
        MEMORY[0x23838B4F0](v13, -1, -1);
      }

      sub_2329D3284();
      *(v10 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    }

    else
    {

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void sub_2329CF964(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_2329D3084();
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE258, &qword_2329D5358);
  v33 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v5;
  v49 = sub_2329D3274();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2329D3254();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = v9 + 16;
  v47 = v9 + 88;
  v48 = v9 + 32;
  v46 = *MEMORY[0x277CD9130];
  v35 = (v9 + 96);
  v36 = (v9 + 8);
  ++v33;
  v34 = (v6 + 32);
  v32 = (v6 + 8);
  v21 = a1;

  v22 = 0;
  v41 = a1;
  v38 = v12;
  v39 = v9;
  v37 = v14;
  while (v18)
  {
    v23 = v22;
LABEL_11:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v9 + 16))(v14, *(v21 + 48) + *(v9 + 72) * (v24 | (v23 << 6)), v8);
    (*(v9 + 32))(v12, v14, v8);
    v25 = (*(v9 + 88))(v12, v8);
    if (v25 == v46)
    {
      (*v35)(v12, v8);
      v26 = v40;
      (*v34)(v40, v12, v49);
      sub_2329D3264();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
      v27 = v20;
      v28 = v8;
      v29 = v42;
      v9 = v39;
      sub_2329D3564();
      v21 = v41;
      v30 = v29;
      v8 = v28;
      v20 = v27;
      (*v33)(v30, v43);
      v31 = v26;
      v14 = v37;
      v12 = v38;
      (*v32)(v31, v49);
    }

    else
    {
      (*v36)(v12, v8);
    }

    v22 = v23;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2329CFDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v85 - v7;
  v9 = sub_2329D30E4();
  v93 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v94 = (&v85 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v91 = &v85 - v17;
  v18 = sub_2329D3234();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v89 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  v87 = a4;
  v88 = v8;
  v29 = *(v19 + 16);
  v86 = a1;
  v29(v26, a1, v18);
  v30 = (*(v19 + 88))(v26, v18);
  if (v30 == *MEMORY[0x277CD9108])
  {
    (*(v19 + 96))(v26, v18);
    v32 = v93;
    v31 = v94;
    (*(v93 + 32))(v94, v26, v9);
    v33 = *(v32 + 16);
    v33(v12, v31, v9);
    v86 = v28;
    v34 = sub_2329D2DF4();
    v35 = sub_2329D3614();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v36 = 138412290;
      sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v37 = v33;
      v33(v38, v12, v9);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v40 = *(v32 + 8);
      v40(v12, v9);
      *(v36 + 4) = v39;
      v41 = v91;
      *v91 = v39;
      v33 = v37;
      _os_log_impl(&dword_2329A4000, v34, v35, "Browser failed to browse for endpoints due to %@", v36, 0xCu);
      sub_2329BFB8C(v41, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v41, -1, -1);
      MEMORY[0x23838B4F0](v36, -1, -1);
    }

    else
    {

      v40 = *(v32 + 8);
      v40(v12, v9);
    }

    sub_2329D3284();
    sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v55 = swift_allocError();
    v56 = v94;
    v33(v57, v94, v9);
    v95[0] = v55;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    sub_2329D3574();
    v40(v56, v9);
    v59 = v86;
    *(v86 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v60 = v88;
    (*(*(v58 - 8) + 56))(v88, 1, 1, v58);
    v61 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v60, v59 + v61);
    swift_endAccess();

    return;
  }

  if (v30 == *MEMORY[0x277CD9110])
  {
    (*(v19 + 96))(v26, v18);
    v42 = v93;
    v43 = v91;
    (*(v93 + 32))(v91, v26, v9);
    v44 = *(v42 + 16);
    v45 = v90;
    v44(v90, v43, v9);
    v46 = v28;
    v47 = sub_2329D2DF4();
    v48 = sub_2329D3604();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v86 = v46;
      v51 = v9;
      v44(v52, v45, v9);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      v54 = *(v42 + 8);
      v54(v45, v51);
      *(v49 + 4) = v53;
      *v50 = v53;
      _os_log_impl(&dword_2329A4000, v47, v48, "Browser waiting for connectivity due to %@", v49, 0xCu);
      sub_2329BFB8C(v50, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v50, -1, -1);
      MEMORY[0x23838B4F0](v49, -1, -1);

      v54(v91, v51);
    }

    else
    {

      v66 = *(v42 + 8);
      v66(v45, v9);
      v66(v43, v9);
    }

    return;
  }

  if (v30 == *MEMORY[0x277CD9100])
  {
    v62 = sub_2329D2DF4();
    v63 = sub_2329D3604();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Browser in setup mode";
LABEL_17:
      _os_log_impl(&dword_2329A4000, v62, v63, v65, v64, 2u);
      MEMORY[0x23838B4F0](v64, -1, -1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v30 == *MEMORY[0x277CD90F8])
  {
    v62 = sub_2329D2DF4();
    v63 = sub_2329D3604();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Browser is ready";
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  v67 = v28;
  if (v30 == *MEMORY[0x277CD9118])
  {
    v68 = sub_2329D2DF4();
    v69 = sub_2329D3604();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2329A4000, v68, v69, "Browser was cancelled", v70, 2u);
      MEMORY[0x23838B4F0](v70, -1, -1);
    }

    v95[0] = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    sub_2329D3574();
    *(v67 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v72 = v88;
    (*(*(v71 - 8) + 56))(v88, 1, 1, v71);
    v73 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v72, v67 + v73);
    swift_endAccess();
  }

  else
  {
    v74 = v89;
    v29(v89, v86, v18);
    v75 = sub_2329D2DF4();
    v76 = sub_2329D3614();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v86 = v67;
      v78 = v77;
      v94 = swift_slowAlloc();
      v95[0] = v94;
      *v78 = 136315138;
      v29(v22, v74, v18);
      v79 = sub_2329D33D4();
      LODWORD(v93) = v76;
      v81 = v80;
      v82 = *(v19 + 8);
      v82(v74, v18);
      v83 = sub_2329A8630(v79, v81, v95);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_2329A4000, v75, v93, "Browser entered unknown state %s", v78, 0xCu);
      v84 = v94;
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x23838B4F0](v84, -1, -1);
      MEMORY[0x23838B4F0](v78, -1, -1);
    }

    else
    {

      v82 = *(v19 + 8);
      v82(v74, v18);
    }

    v82(v26, v18);
  }
}

uint64_t sub_2329D0980(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_2329D3284();
    }

    *(v6 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v4, v6 + v8);
    swift_endAccess();
  }

  return result;
}

void *sub_2329D0AE4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2A0, &unk_2329D53F8);
  v10 = *(sub_2329D3084() - 8);
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
  v15 = *(sub_2329D3084() - 8);
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

char *sub_2329D0CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B0, &qword_2329D5408);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2329D0DC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2329D0E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2329D0EC0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2329D3934();
  sub_2329D3414();
  v8 = sub_2329D3954();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2329D38D4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2329D1270(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2329D1010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  result = sub_2329D3794();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2329D3934();
      sub_2329D3414();
      result = sub_2329D3954();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_2329D1270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2329D1010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2329D13F0();
      goto LABEL_16;
    }

    sub_2329D154C(v8 + 1);
  }

  v10 = *v4;
  sub_2329D3934();
  sub_2329D3414();
  v11 = sub_2329D3954();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2329D38D4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2329D38F4();
  __break(1u);
}

void sub_2329D13F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  v2 = *v0;
  v3 = sub_2329D3784();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_2329D154C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  result = sub_2329D3794();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2329D3934();

      sub_2329D3414();
      result = sub_2329D3954();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_2329D1784(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2329D0DC8(v2, 0);

    MEMORY[0x23838AD20](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_2329D3864();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2329D1820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v40 = sub_2329D31F4();
  v37 = *(v40 - 8);
  v3 = MEMORY[0x28223BE20](v40);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v34 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE268, &qword_2329D5368);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_2329D31B4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2329D31E4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  sub_2329D3144();
  sub_2329D31C4();
  sub_2329D3184();
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_2329D3194();
  v24(v18, v11);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE270, &qword_2329D5370);
  sub_2329D2DE4();
  sub_2329D31D4();
  (*(v34 + 8))(v9, v35);
  v24(v21, v11);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE278, &qword_2329D5378) + 48);
  v26 = v39;
  *v6 = v38;
  v6[1] = v26;
  (*(v12 + 16))(v6 + v25, v23, v11);
  v27 = v37;
  v28 = v40;
  (*(v37 + 104))(v6, *MEMORY[0x277CD90A8], v40);
  v29 = v27;
  v30 = *(v27 + 16);
  v31 = v28;
  v30(v36, v6, v28);
  sub_2329D30C4();

  sub_2329A9278();
  sub_2329D3294();
  swift_allocObject();
  v32 = sub_2329D3224();
  (*(v29 + 8))(v6, v31);
  v24(v23, v11);
  return v32;
}

uint64_t sub_2329D1C8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23838AB10](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2329D0EC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_2329D1D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE210, &qword_2329D52B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v63 - v5;
  v6 = sub_2329D3084();
  v7 = MEMORY[0x28223BE20](v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v63 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v63 - v15;
  v17 = *(a1 + 16);
  v80 = v13;
  v72 = v14;
  v76 = v17;
  v68 = a1;
  if (v17)
  {
    v18 = *(v14 + 16);
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v77 = *(v14 + 72);
    v78 = v18;
    v20 = (v14 + 8);
    v21 = MEMORY[0x277D84F90];
    (v18)(v16, v19, v6);
    while (1)
    {
      v23 = sub_2329D3074();
      v25 = v24;
      (*v20)(v16, v6);
      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2329D0CBC(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_2329D0CBC((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v22 = &v21[16 * v27];
        *(v22 + 4) = v23;
        *(v22 + 5) = v25;
        v6 = v80;
      }

      v19 += v77;
      if (!--v17)
      {
        break;
      }

      (v78)(v16, v19, v6);
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v28 = sub_2329D1C8C(v21);

  v30 = 0;
  v32 = v28 + 56;
  v31 = *(v28 + 56);
  v70 = v28;
  v33 = 1 << *(v28 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  v37 = v71;
  v77 = (v72 + 8);
  v78 = (v72 + 16);
  v66 = (v72 + 32);
  v74 = (v72 + 48);
  v75 = (v72 + 56);
  v65 = MEMORY[0x277D84F90];
  v38 = v76;
  v69 = v28 + 56;
  v67 = v36;
LABEL_15:
  v39 = v30;
  v40 = v73;
  v41 = v79;
  if (!v35)
  {
    goto LABEL_17;
  }

  do
  {
    v30 = v39;
LABEL_20:
    if (v38)
    {
      v42 = (*(v70 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v35)))));
      v43 = v38;
      v45 = *v42;
      v44 = v42[1];
      v46 = v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v47 = *(v72 + 72);
      v48 = *(v72 + 16);

      do
      {
        v48(v41, v46, v6);
        v50 = sub_2329D3074();
        if (v51)
        {
          if (v50 == v45 && v51 == v44)
          {

LABEL_28:

            v37 = v71;
            v41 = v79;
            v6 = v80;
            (*v66)(v71, v79, v80);
            v52 = 0;
            v40 = v73;
            goto LABEL_31;
          }

          v49 = sub_2329D38D4();

          if (v49)
          {
            goto LABEL_28;
          }
        }

        v41 = v79;
        v6 = v80;
        (*v77)(v79, v80);
        v46 += v47;
        --v43;
      }

      while (v43);

      v52 = 1;
      v40 = v73;
      v37 = v71;
LABEL_31:
      v32 = v69;
      v36 = v67;
    }

    else
    {
      v52 = 1;
    }

    v35 &= v35 - 1;
    (*v75)(v37, v52, 1, v6);
    sub_2329BF474(v37, v40, &qword_27DDBE210, &qword_2329D52B0);
    if ((*v74)(v40, 1, v6) != 1)
    {
      v53 = *v66;
      v54 = v63;
      (*v66)(v63, v40, v6);
      (*v78)(v64, v54, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_2329D0AE4(0, v65[2] + 1, 1, v65);
      }

      v56 = v65[2];
      v55 = v65[3];
      v57 = v36;
      if (v56 >= v55 >> 1)
      {
        v65 = sub_2329D0AE4((v55 > 1), v56 + 1, 1, v65);
      }

      v58 = v72;
      v59 = v80;
      (*(v72 + 8))(v63, v80);
      sub_2329BFB8C(v37, &qword_27DDBE210, &qword_2329D52B0);
      v60 = v64;
      v61 = v65;
      v65[2] = v56 + 1;
      v62 = v61 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56;
      v6 = v59;
      result = (v53)(v62, v60, v59);
      v32 = v69;
      v36 = v57;
      v38 = v76;
      goto LABEL_15;
    }

    sub_2329BFB8C(v37, &qword_27DDBE210, &qword_2329D52B0);
    result = sub_2329BFB8C(v40, &qword_27DDBE210, &qword_2329D52B0);
    v39 = v30;
    v38 = v76;
  }

  while (v35);
LABEL_17:
  while (1)
  {
    v30 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v30 >= v36)
    {

      return v65;
    }

    v35 = *(v32 + 8 * v30);
    ++v39;
    if (v35)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_2329D23BC(uint64_t a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_2329CF964(a2, v5);
}

void sub_2329D2438(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_2329CFDC0(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NDFBrowser(uint64_t a1)
{
  result = qword_2814DAAF0;
  if (!qword_2814DAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2329D256C(uint64_t a1)
{
  sub_2329D2E14();
  if (v1 <= 0x3F)
  {
    sub_2329D2900(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of NDFBrowser.startDiscovery(for:cancelAfter:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v13 = (*(*v4 + 200) + **(*v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2329D27CC;
  v11.n128_f64[0] = a4;

  return v13(a1, a2, a3, v11);
}

uint64_t sub_2329D27CC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_2329D2900(uint64_t a1)
{
  if (!qword_2814D9E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE200, &unk_2329D5298);
    v1 = sub_2329D3724();
    if (!v2)
    {
      atomic_store(v1, &qword_2814D9E80);
    }
  }
}

unint64_t sub_2329D2964()
{
  result = qword_2814DA7F8;
  if (!qword_2814DA7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE298, &qword_2329D53F0);
    sub_2329D29E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA7F8);
  }

  return result;
}

unint64_t sub_2329D29E8()
{
  result = qword_2814DA808;
  if (!qword_2814DA808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE290, &qword_2329D5390);
    sub_2329D2A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA808);
  }

  return result;
}

unint64_t sub_2329D2A6C()
{
  result = qword_2814DA818;
  if (!qword_2814DA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE288, &qword_2329D5388);
    sub_2329D2B80(&qword_2814DA7F0, &qword_27DDBE280, &qword_2329D5380, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA818);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2329D2B80(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2329D2BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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