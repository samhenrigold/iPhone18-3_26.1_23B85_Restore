uint64_t sub_226D24328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D243A8()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D24438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v36 = a3;
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_226D6D46C();
  v15 = v38;
  v16 = sub_226D47648(0, 1, 0, v14, v37);
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v18 = v16;
  v37 = v4;
  (*(v12 + 8))(v14, v11);
  v35 = 0;
  if (v18 >> 62)
  {
    v19 = sub_226D6EDFC();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v18;
  v21 = v36;
  if (!v19)
  {

    v22 = MEMORY[0x277D84F90];
LABEL_19:
    v34 = sub_226AE45DC(v22);

    *v21 = v34;
    return result;
  }

  v38 = v20;
  v39 = MEMORY[0x277D84F90];
  result = sub_226AE20D4(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = v39;
    if ((v38 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v38);
        v24 = [swift_unknownObjectRetain() publicTransactionObject];
        v25 = [v24 id];
        sub_226D6D4FC();
        swift_unknownObjectRelease_n();

        v39 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE20D4((v26 > 1), v27 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v27 + 1;
        (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v10, v37);
      }

      v21 = v36;
    }

    else
    {
      v36 = (v5 + 32);
      v28 = 32;
      do
      {
        v29 = *(v38 + v28);
        v30 = [v29 publicTransactionObject];
        v31 = [v30 id];
        sub_226D6D4FC();

        v39 = v22;
        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_226AE20D4((v32 > 1), v33 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v33 + 1;
        (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33, v7, v37);
        v28 += 8;
        --v19;
      }

      while (v19);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_226D24888()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226D24948(const void *a1, uint64_t a2, uint64_t a3)
{
  v16[3] = &type metadata for BankConnectEnvironmentImplementation;
  v16[4] = sub_226B6A16C();
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), a1, 0x3B0uLL);
  sub_226AE532C(v16, a3 + 16);
  sub_226D24E3C(a2, &v11);
  if (v12)
  {
    sub_226AC47B0(a2, &qword_27D7A9368, &qword_226D7D218);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    sub_226B6B030(&v11, &v13);
  }

  else
  {
    v14 = sub_226D66E1C();
    v15 = MEMORY[0x277CC6538];
    __swift_allocate_boxed_opaque_existential_1(&v13);
    sub_226D66E0C();
    sub_226D6C7EC();
    swift_allocObject();
    v6 = sub_226D6C7BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_226D71F20;
    sub_226D6AC0C();
    *(v7 + 32) = sub_226D6AB6C();
    v8 = type metadata accessor for ClassifiableTransactionSource();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 48) = &unk_283A6A2E8;
    v14 = v8;
    v15 = &off_283A72E60;
    *&v13 = v9;
    sub_226AC47B0(a2, &qword_27D7A9368, &qword_226D7D218);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    if (v12)
    {
      sub_226AC47B0(&v11, &qword_27D7A9368, &qword_226D7D218);
    }
  }

  sub_226B6B030(&v13, a3 + 56);
  return a3;
}

void sub_226D24B38()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_226D6E36C();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setMinDurationBetweenInstances_];
  [v3 setRequiresProtectionClass_];
  [v3 setRequiresUserInactivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];

  v4 = [objc_opt_self() sharedScheduler];
  v17[0] = 0;
  v5 = [v4 submitTaskRequest:v3 error:v17];

  if (v5)
  {
    v6 = v17[0];
  }

  else
  {
    v7 = v17[0];
    v8 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F710);
    v10 = v8;
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_226AB4000, v11, v12, "Couldn't submit request for transaction classification system task: %@", v13, 0xCu);
      sub_226AC47B0(v14, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_226D24E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9368, &qword_226D7D218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D24EC4(uint64_t a1)
{
  v3 = sub_226D6D1AC();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_226D6EDFC();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_226AE2A04(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_226D6EDAC();
    }

    else
    {
      result = sub_226D6ED6C();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_226CCD1C4(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 URIRepresentation];
        sub_226D6D14C();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226AE2A04((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9398, &unk_226D7D370);
          v12 = sub_226D6E8CC();
          sub_226D6EE4C();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_226AE5444(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_226AE5444(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_226AE5444(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_226D252D0()
{
  v0 = sub_226B1EC00(&unk_283A6A318);
  result = swift_arrayDestroy();
  qword_281064558 = v0;
  return result;
}

uint64_t static DaemonFinancialDataHistoricalQuery.fetchHistoricalTransactions(context:lastToken:entityName:auxEntitiesPredicateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9370, &qword_226D7D228);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v6 = sub_226D66F9C();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = sub_226D66F2C();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  v5[32] = swift_task_alloc();
  v8 = sub_226D66F0C();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2552C, 0, 0);
}

void sub_226D2552C()
{
  v1 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
  sub_226D6EB8C();
  v125 = *(v0 + 144);

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v4 + 16) = v125;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_226D6EB8C();

  if (*(v0 + 33) == 1)
  {
    v5 = *(v0 + 264);
    v6 = *(v0 + 272);
    v7 = *(v0 + 256);
    sub_226AC40E8(*(v0 + 152), v7, &qword_27D7A8DA8, &unk_226D7D230);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_226AC47B0(*(v0 + 256), &qword_27D7A8DA8, &unk_226D7D230);
      if (v2 < 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      if (v8)
      {
        v9 = *(v0 + 160);
        v10 = *(v0 + 144);
        v11 = swift_task_alloc();
        v12 = *(v0 + 168);
        *(v11 + 16) = v10;
        *(v11 + 24) = v9;
        *(v11 + 32) = v12;
        *(v11 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 96);
LABEL_36:

        v81 = *(v0 + 8);

        v81(v13);
        return;
      }

      v31 = *(v0 + 184);
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v34 = *(v0 + 144);
      (*(*(v0 + 208) + 56))(v31, 1, 1, *(v0 + 200));
      v35 = swift_task_alloc();
      v35[2] = v2;
      v35[3] = v33;
      v35[4] = v32;
      v35[5] = v31;
      v35[6] = 300;
      v35[7] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9380, &qword_226D7D248);
      sub_226D6EB8C();

      v13 = *(v0 + 16);
      if ((*(v0 + 32) & 1) != 0 || (v49 = *(v0 + 24), (v50 = sub_226D6EB3C()) == 0) || (v51 = v50, v52 = [v50 identifier], v51, !v52))
      {
        v71 = *(v0 + 160);
        v72 = *(v0 + 144);
        v127 = *(v0 + 168);

        v73 = swift_task_alloc();
        *(v73 + 16) = v72;
        *(v73 + 24) = v71;
        *(v73 + 32) = v127;
        *(v73 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 104);
LABEL_35:
        sub_226AC47B0(*(v0 + 184), &qword_27D7A9370, &qword_226D7D228);
        goto LABEL_36;
      }

      v53 = sub_226D6E39C();
      v55 = v54;
      v56 = sub_226D6EB6C();
      if (!v56)
      {
        goto LABEL_55;
      }

      v57 = v56;
      v58 = [v56 storeTokens];
      if (v58)
      {
        v59 = v58;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v60 = sub_226D6E2BC();

        if (*(v60 + 16))
        {
          v61 = sub_226C2FDD4(v53, v55);
          if (v62)
          {
            v63 = v61;

            v64 = *(*(v60 + 56) + 8 * v63);

            v65 = [v64 integerValue];

            if (v65 >= v49)
            {
              v114 = v57;
              v115 = *(v0 + 160);
              v116 = *(v0 + 144);
              v129 = *(v0 + 168);
              v117 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
              v118 = [objc_allocWithZone(MEMORY[0x277CBE4C0]) initWithTransactionNumber:v117 andStoreID:v52];

              v119 = swift_task_alloc();
              *(v119 + 16) = v116;
              *(v119 + 24) = v115;
              *(v119 + 32) = v129;
              *(v119 + 48) = v118;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
              sub_226D6EB8C();

              sub_226CEE4E4(*(v0 + 112));
            }

            else
            {
              v66 = v65;

              if (qword_28105F5F8 != -1)
              {
                swift_once();
              }

              v67 = sub_226D6E07C();
              __swift_project_value_buffer(v67, qword_28105F600);
              v68 = sub_226D6E05C();
              v69 = sub_226D6E9CC();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                *v70 = 134218240;
                *(v70 + 4) = v49;
                *(v70 + 12) = 2048;
                *(v70 + 14) = v66;
                _os_log_impl(&dword_226AB4000, v68, v69, "Some history has been lost when purging.\nLatest transactionID for insertion history: %lld,\ncurrent transaction in context: %ld", v70, 0x16u);
                MEMORY[0x22AA8BEE0](v70, -1, -1);
              }
            }

            goto LABEL_35;
          }
        }

        goto LABEL_54;
      }

      __break(1u);
LABEL_61:

      __break(1u);
      return;
    }

    v17 = *(v0 + 248);
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
    sub_226D66EFC();
    v20 = (*(v19 + 88))(v17, v18);
    if (v20 == *MEMORY[0x277CC6640])
    {
      v21 = *(v0 + 272);
      v22 = *(v0 + 248);
      v23 = *(v0 + 160);
      v24 = *(v0 + 144);
      v126 = *(v0 + 168);
      (*(*(v0 + 232) + 96))(v22, *(v0 + 224));
      v25 = *v22;
      v26 = *v22;
      v27 = swift_task_alloc();
      *(v27 + 16) = v24;
      *(v27 + 24) = v23;
      *(v27 + 32) = v126;
      *(v27 + 48) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
      sub_226D6EB8C();
      v28 = (v21 + 8);
      v29 = *(v0 + 280);
      v30 = *(v0 + 264);

      v13 = *(v0 + 136);

      (*v28)(v29, v30);
      goto LABEL_36;
    }

    if (v20 != *MEMORY[0x277CC6638])
    {
      v47 = *(v0 + 232);
      v46 = *(v0 + 240);
      v48 = *(v0 + 224);
      sub_226D6EEFC();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      MEMORY[0x22AA8A510](0xD00000000000001CLL, 0x8000000226D88110);
      sub_226D66EFC();
      sub_226D6EFBC();
      (*(v47 + 8))(v46, v48);
LABEL_19:
      sub_226D6F0AC();
      return;
    }

    v36 = *(v0 + 248);
    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v39 = *(v0 + 200);
    (*(*(v0 + 232) + 96))(v36, *(v0 + 224));
    (*(v38 + 32))(v37, v36, v39);
    if ((v3 & 1) == 0)
    {
      v74 = *(v0 + 208);
      v76 = *(v0 + 192);
      v75 = *(v0 + 200);
      v78 = *(v0 + 160);
      v77 = *(v0 + 168);
      v79 = *(v0 + 144);
      (*(v74 + 16))(v76, *(v0 + 216), v75);
      (*(v74 + 56))(v76, 0, 1, v75);
      v80 = swift_task_alloc();
      v80[2] = v2;
      v80[3] = v78;
      v80[4] = v77;
      v80[5] = v76;
      v80[6] = 300;
      v80[7] = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9380, &qword_226D7D248);
      sub_226D6EB8C();

      v13 = *(v0 + 40);
      if ((*(v0 + 56) & 1) == 0 && (v82 = *(v0 + 48), (v83 = sub_226D6EB3C()) != 0) && (v84 = v83, v52 = [v83 identifier], v84, v52))
      {
        v85 = sub_226D6E39C();
        v87 = v86;
        v88 = sub_226D6EB6C();
        if (!v88)
        {
LABEL_55:

          goto LABEL_19;
        }

        v89 = v88;
        v90 = [v88 storeTokens];
        if (!v90)
        {
          goto LABEL_61;
        }

        v91 = v90;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v92 = sub_226D6E2BC();
        v93 = v91;
        v94 = v92;

        if (!*(v94 + 16) || (v95 = sub_226C2FDD4(v85, v87), (v96 & 1) == 0))
        {

LABEL_54:

          goto LABEL_55;
        }

        v97 = v95;
        v98 = v89;

        v99 = *(*(v94 + 56) + 8 * v97);

        v100 = [v99 integerValue];

        if (v100 >= v82)
        {
          v120 = *(v0 + 160);
          v121 = *(v0 + 144);
          v130 = *(v0 + 168);
          v122 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          v123 = [objc_allocWithZone(MEMORY[0x277CBE4C0]) initWithTransactionNumber:v122 andStoreID:v52];

          v124 = swift_task_alloc();
          *(v124 + 16) = v121;
          *(v124 + 24) = v120;
          *(v124 + 32) = v130;
          *(v124 + 48) = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
          sub_226D6EB8C();

          sub_226CEE4E4(*(v0 + 128));
        }

        else
        {

          if (qword_28105F5F8 != -1)
          {
            swift_once();
          }

          v101 = sub_226D6E07C();
          __swift_project_value_buffer(v101, qword_28105F600);
          v102 = sub_226D6E05C();
          v103 = sub_226D6E9CC();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 134218240;
            *(v104 + 4) = v82;
            *(v104 + 12) = 2048;
            *(v104 + 14) = v100;
            _os_log_impl(&dword_226AB4000, v102, v103, "Some history has been lost when purging.\nLatest transactionID for insertion history: %lld,\ncurrent transaction in context: %ld", v104, 0x16u);
            MEMORY[0x22AA8BEE0](v104, -1, -1);
          }
        }
      }

      else
      {
        v105 = *(v0 + 160);
        v106 = *(v0 + 144);
        v128 = *(v0 + 168);

        v107 = swift_task_alloc();
        *(v107 + 16) = v106;
        *(v107 + 24) = v105;
        *(v107 + 32) = v128;
        *(v107 + 48) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9378, &qword_226D7D240);
        sub_226D6EB8C();

        v13 = *(v0 + 120);
      }

      v109 = *(v0 + 272);
      v108 = *(v0 + 280);
      v110 = *(v0 + 264);
      v112 = *(v0 + 208);
      v111 = *(v0 + 216);
      v113 = *(v0 + 200);
      sub_226AC47B0(*(v0 + 192), &qword_27D7A9370, &qword_226D7D228);
      (*(v112 + 8))(v111, v113);
      (*(v109 + 8))(v108, v110);
      goto LABEL_36;
    }

    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v42 = *(v0 + 264);
    v44 = *(v0 + 208);
    v43 = *(v0 + 216);
    v45 = *(v0 + 200);
    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();
    (*(v44 + 8))(v43, v45);
    (*(v41 + 8))(v40, v42);
  }

  else
  {
    v14 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC65E8], v14);
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  v16();
}

void sub_226D264F8(uint64_t a1@<X8>)
{
  sub_226D29828(*(v1 + 16));
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5 & 1;
  }
}

void sub_226D26530(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  sub_226D6BA1C();
  v11 = sub_226D6B9FC();
  [v11 setFetchLimit_];
  v12 = sub_226D6EBBC();
  if (v5)
  {

    return;
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v17 = v12;
  v18 = sub_226D6EDFC();
  v12 = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;

    v15 = v14;
    v16 = sub_226D6B9CC();

LABEL_11:
    v19 = sub_226D29AC4(a1, a2, a3, a4 & 1, v16);

    *a5 = v19 & 1;
    return;
  }

  __break(1u);
}

void sub_226D266C0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v86 = a5;
  v84 = a6;
  v95[4] = *MEMORY[0x277D85DE8];
  v12 = sub_226D66F0C();
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountIDAbsentPolicy(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v81 - v20;
  v22 = objc_opt_self();
  v88 = [v22 fetchRequest];
  if (!v88)
  {
    goto LABEL_62;
  }

  v85 = v15;
  v89 = a1;
  v23 = [v22 entityDescriptionWithContext_];
  if (!v23)
  {
    goto LABEL_63;
  }

  v87 = v23;
  v24 = [v23 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v25 = sub_226D6E2BC();
  if (!*(v25 + 16) || (v26 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v27 & 1) == 0))
  {

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v28 = v26;

  v29 = *(*(v25 + 56) + 8 * v28);

  if (qword_281062750 != -1)
  {
LABEL_56:
    swift_once();
  }

  if ((sub_226D4D7A0(a2, a3, qword_281064558) & 1) == 0)
  {
    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();

    return;
  }

  v30 = sub_226D6D52C();
  (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
  v31 = sub_226D6A34C();
  (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
  v32 = sub_226D2A284(a2, a3, v21, a4, v18);
  if (v7)
  {

    sub_226D2A8D8(v18, type metadata accessor for AccountIDAbsentPolicy);
    sub_226AC47B0(v21, &qword_27D7A6D68, &qword_226D75210);
    return;
  }

  v7 = v32;
  v81[1] = 0;
  v83 = v29;
  sub_226D2A8D8(v18, type metadata accessor for AccountIDAbsentPolicy);
  sub_226AC47B0(v21, &qword_27D7A6D68, &qword_226D75210);
  v33 = MEMORY[0x277D84F90];
  v95[0] = MEMORY[0x277D84F90];
  a2 = v7 + 56;
  v34 = 1 << *(v7 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v7 + 56);
  a4 = (v34 + 63) >> 6;

  v29 = 0;
  v82 = v33;
  if (!v36)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_13:
    while (1)
    {
      v36 &= v36 - 1;
      v21 = objc_opt_self();

      a3 = sub_226D6E36C();
      v18 = [v21 entityForName:a3 inManagedObjectContext:v89];

      if (v18)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_15;
      }
    }

    MEMORY[0x22AA8A610]();
    if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v82 = v95[0];
  }

  while (v36);
  while (1)
  {
LABEL_15:
    v37 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v37 >= a4)
    {
      break;
    }

    v36 = *(a2 + 8 * v37);
    ++v29;
    if (v36)
    {
      v29 = v37;
      goto LABEL_13;
    }
  }

  v93 = MEMORY[0x277D84F90];
  if (!v86)
  {

    v53 = v88;
    v40 = v85;
    goto LABEL_34;
  }

  v38 = v86;
  v39 = sub_226D6EB3C();
  v40 = v85;
  if (!v39 || (v41 = v39, v42 = [v39 identifier], v41, !v42))
  {

LABEL_32:
    v53 = v88;
LABEL_34:
    v54 = MEMORY[0x277D837D0];
    goto LABEL_35;
  }

  v43 = sub_226D6E39C();
  v45 = v44;

  v46 = [v38 storeTokens];
  if (!v46)
  {
    __break(1u);
    return;
  }

  v47 = v46;

  v48 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v49 = sub_226D6E2BC();

  if (!*(v49 + 16))
  {

    goto LABEL_32;
  }

  v50 = sub_226C2FDD4(v43, v45);
  v52 = v51;

  v53 = v88;
  v54 = MEMORY[0x277D837D0];
  if ((v52 & 1) == 0)
  {

    goto LABEL_54;
  }

  v55 = *(*(v49 + 56) + 8 * v50);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_226D70840;
  *(v56 + 56) = v48;
  *(v56 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v56 + 32) = v55;
  v57 = v55;
  v58 = sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    sub_226D6E65C();

LABEL_54:
LABEL_35:
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_226D71840;
    v60 = [v83 name];
    v61 = sub_226D6E39C();
    v63 = v62;

    *(v59 + 56) = v54;
    *(v59 + 64) = sub_226B16404();
    *(v59 + 32) = v61;
    *(v59 + 40) = v63;
    *(v59 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
    *(v59 + 104) = sub_226AC4194(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320, MEMORY[0x277CC9C50]);
    *(v59 + 72) = v82;
    v64 = sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v38 = v93;
    v65 = sub_226D6E5CC();
    v66 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v53 setPredicate_];
    v54 = [objc_opt_self() fetchHistoryWithFetchRequest_];
    [v54 setResultType_];
    v95[0] = 0;
    v67 = [v89 executeRequest:v54 error:v95];
    v68 = v95[0];
    if (!v67)
    {
      v80 = v95[0];

      sub_226D6D04C();

      swift_willThrow();
      return;
    }

    v57 = v67;
    objc_opt_self();
    v69 = swift_dynamicCastObjCClassUnconditional();
    v70 = v68;
    if (![v69 result])
    {

      *v84 = MEMORY[0x277D84F90];
      return;
    }

    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226AC4708(v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v58 = v92;
    if (v92 >> 62)
    {
      v71 = sub_226D6EDFC();
      if (!v71)
      {
LABEL_58:

        __swift_destroy_boxed_opaque_existential_0Tm(v95);

        *v84 = MEMORY[0x277D84F90];
        return;
      }
    }

    else
    {
      v71 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_58;
      }
    }

    v81[0] = v57;
    v82 = v54;
    v85 = v38;
    v86 = v64;
    v94[0] = MEMORY[0x277D84F90];
    sub_226AE29C0(0, v71 & ~(v71 >> 63), 0);
    v89 = v71;
    if ((v71 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_60:
    sub_226D6E61C();
  }

  v72 = 0;
  v73 = v94[0];
  v74 = v58;
  do
  {
    if ((v58 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x22AA8AFD0](v72, v74);
    }

    else
    {
      v75 = *(v74 + 8 * v72 + 32);
    }

    v76 = v75;
    v77 = [v75 token];
    sub_226D66F1C();

    v94[0] = v73;
    v79 = *(v73 + 16);
    v78 = *(v73 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_226AE29C0((v78 > 1), v79 + 1, 1);
      v73 = v94[0];
    }

    v72 = v72 + 1;
    *(v73 + 16) = v79 + 1;
    (*(v91 + 32))(v73 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v79, v40, v90);
    v74 = v58;
  }

  while (v89 != v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v95);

  *v84 = v73;
}

void sub_226D2742C(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v75 = a6;
  v73 = a2;
  v74 = a4;
  v65 = a7;
  v9 = sub_226D66F0C();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v59 - v12;
  v81 = sub_226D66F9C();
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  sub_226D6A26C();
  v17 = sub_226D6A21C();
  [v17 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226D71F30;
  *(v18 + 32) = sub_226D6A24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = v73;
  *(inited + 40) = a3;

  sub_226AE3C28(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v20 = sub_226D6A22C();

  *(v18 + 40) = v20;
  *(v18 + 48) = sub_226D6A23C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v21 = sub_226D6E5CC();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v17 setPredicate_];
  [v17 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_226D71840;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 32) = 25705;
  *(v23 + 40) = 0xE200000000000000;
  *(v23 + 88) = v24;
  *(v23 + 56) = v24;
  *(v23 + 64) = 0xD000000000000011;
  *(v23 + 72) = 0x8000000226D881C0;
  v25 = sub_226D6E5CC();

  [v17 setPropertiesToFetch_];

  [v17 setIncludesSubentities_];
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_226D6E36C();
  v28 = [v26 initWithKey:v27 ascending:1];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_226D71F20;
  *(v29 + 32) = v28;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v30 = v28;
  v31 = sub_226D6E5CC();

  [v17 setSortDescriptors_];

  v32 = v76;
  v33 = sub_226D6EBBC();
  if (v32)
  {

    return;
  }

  v61 = v30;
  v62 = 0;
  v34 = v72;
  v35 = v65;
  v63 = v22;
  v76 = v16;
  v64 = v33;
  if (!(v33 >> 62))
  {
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v36;
    v38 = v79;
    v39 = v80;
    v40 = v78;
    v41 = v65;
    if (v36)
    {
      goto LABEL_5;
    }

LABEL_41:

    *v41 = MEMORY[0x277D84F90];
    v41[1] = 0;
    *(v41 + 16) = 1;
    return;
  }

LABEL_39:
  v57 = sub_226D6EDFC();
  v38 = v79;
  v39 = v80;
  v40 = v78;
  v41 = v35;
  if (!v57)
  {
    goto LABEL_41;
  }

  v58 = v57;
  v33 = sub_226D6EDFC();
  v36 = v58;
  v37 = v33;
LABEL_5:
  v60 = v36;
  v59 = v17;
  if (!a5)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v71 = 0;
  v42 = 0;
  v75 = 0;
  v73 = v64 & 0xFFFFFFFFFFFFFF8;
  v74 = v64 & 0xC000000000000001;
  v72 = (v64 + 32);
  v68 = (v38 + 2);
  v69 = (v34 + 2);
  v67 = v38 + 1;
  ++v34;
  v66 = v38 + 4;
  v38 = MEMORY[0x277D84F90];
  v70 = a5;
  v17 = v76;
  while (1)
  {
    v43 = v37 >= v42;
    if (a5 > 0)
    {
      v43 = v42 >= v37;
    }

    if (v43)
    {
      break;
    }

    v45 = !__OFADD__(v42, a5);
    HIDWORD(v71) = v45;
    v46 = 0x8000000000000000;
    if (!__OFADD__(v42, a5))
    {
      v46 = 0;
    }

    v75 = v46;
    if (__OFADD__(v42, a5))
    {
      v44 = (&a5[v42] >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v44 = &a5[v42];
    }

LABEL_21:
    a5 = v82;
    if (v74)
    {
      v47 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      if (v42 < 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v42 >= *(v73 + 16))
      {
        goto LABEL_38;
      }

      v47 = v72[v42];
    }

    v48 = v47;
    [v47 id];
    sub_226D66F7C();
    (*v69)(v77, v17, v81);
    sub_226D66EEC();
    (*v68)(v40, a5, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_226BBBE10(0, v38[2] + 1, 1, v38);
    }

    v50 = v38[2];
    v49 = v38[3];
    v17 = v76;
    if (v50 >= v49 >> 1)
    {
      v38 = sub_226BBBE10((v49 > 1), v50 + 1, 1, v38);
    }

    v51 = v79;
    v35 = v80;
    (*(v79 + 8))(v82, v80);
    (*v34)(v17, v81);
    v38[2] = v50 + 1;
    v39 = v35;
    v52 = v38 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50;
    v53 = *(v51 + 32);
    v40 = v78;
    v53(v52, v78, v35);
    v42 = v44;
    a5 = v70;
  }

  if (!((v42 != v37) | v71 & 1) && BYTE4(v71) & 1 | (v75 != 0x8000000000000000))
  {
    LODWORD(v71) = 1;
    v44 = v42;
    goto LABEL_21;
  }

  v41 = v65;
  *v65 = v38;
  v33 = v60 - 1;
  if (__OFSUB__(v60, 1))
  {
    goto LABEL_43;
  }

  v38 = v59;
  v17 = v63;
  if (v74)
  {
LABEL_44:
    v54 = MEMORY[0x22AA8AFD0](v33, v64);
LABEL_36:
    v55 = v54;

    v56 = [v55 transactionNumber];

    v41[1] = v56;
    *(v41 + 16) = 0;
    return;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < *(v73 + 16))
  {
    v54 = v72[v33];
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t static DaemonFinancialDataHistoricalQuery.computeChangeset(withBundleID:coreDataStorePolicyLevel:withToken:forEntityNamed:forAccountID:auxEntityPredicateProvider:insertionHistoryBatchSize:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_226D27D34, 0, 0);
}

uint64_t sub_226D27D34()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = *(v0 + 56);
  *(v6 + 16) = *(v0 + 24);
  *(v6 + 32) = v4;
  *(v6 + 40) = v7;
  *(v6 + 56) = v1;
  *(v6 + 64) = v3;
  *(v6 + 72) = v5;
  *(v6 + 80) = v2;
  sub_226D6C32C();
  sub_226D6EB8C();

  v8 = *(v0 + 8);

  return v8();
}

void sub_226D27E24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v181 = a8;
  v192 = a7;
  v193 = a6;
  v203 = a5;
  v199 = a1;
  v200 = a2;
  v176 = a9;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9390, &qword_226D7D358);
  MEMORY[0x28223BE20](v174);
  v173 = (&v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v172 = &v162 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9370, &qword_226D7D228);
  MEMORY[0x28223BE20](v15 - 8);
  v177 = &v162 - v16;
  v17 = sub_226D66F9C();
  v183 = *(v17 - 8);
  v184 = v17;
  MEMORY[0x28223BE20](v17);
  v182 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_226D66F2C();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v171 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v178 = (&v162 - v21);
  v22 = type metadata accessor for AccountIDAbsentPolicy(0);
  MEMORY[0x28223BE20](v22 - 8);
  v187 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for HistoricalChangesParser(0);
  MEMORY[0x28223BE20](v186);
  v189 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v25 - 8);
  v190 = &v162 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v27 - 8);
  v188 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v162 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v162 - v33;
  v194 = sub_226D6D52C();
  v35 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v175 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v185 = &v162 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v162 - v40;
  v42 = sub_226D6A34C();
  v197 = *(v42 - 8);
  v198 = v42;
  MEMORY[0x28223BE20](v42);
  v44 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_226D67F1C();
  v45 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v47 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281062750 != -1)
  {
    swift_once();
  }

  v191 = a3;
  if ((sub_226D4D7A0(a3, a4, qword_281064558) & 1) == 0)
  {
    goto LABEL_14;
  }

  v170 = a4;
  v48 = *(v45 + 16);
  v168 = v45 + 16;
  v165 = v48;
  v48(v47, v199, v196);
  v49 = *(v197 + 16);
  v167 = v197 + 16;
  v166 = v49;
  v49(v44, v200, v198);
  v50 = v193;
  v51 = sub_226B724B0(v47, v44, v50);
  sub_226AC40E8(v203, v34, &qword_27D7A6D68, &qword_226D75210);
  v52 = *(v35 + 48);
  v53 = v35;
  v54 = v194;
  v55 = v52(v34, 1, v194);
  v169 = v53;
  if (v55 == 1)
  {

    sub_226AC47B0(v34, &qword_27D7A6D68, &qword_226D75210);
    goto LABEL_12;
  }

  v164 = v50;
  v163 = *(v53 + 32);
  v163(v41, v34, v54);
  v56 = sub_226D6D4AC();
  v57 = v190;
  (*(*(v56 - 8) + 56))(v190, 1, 1, v56);
  (*(v53 + 16))(v31, v41, v54);
  (*(v53 + 56))(v31, 0, 1, v54);
  v193 = v51;
  if (v51)
  {
    v58 = v188;
    sub_226AC40E8(v31, v188, &qword_27D7A6D68, &qword_226D75210);
    if (v52(v58, 1, v54) == 1)
    {

      sub_226AC47B0(v31, &qword_27D7A6D68, &qword_226D75210);
      (*(v169 + 8))(v41, v54);
      sub_226AC47B0(v58, &qword_27D7A6D68, &qword_226D75210);
      sub_226AC47B0(v57, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_14:
      sub_226C1A7A0();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v59 = v185;
    v60 = (v163)(v185, v58, v54);
    MEMORY[0x28223BE20](v60);
    v160 = v59;
    v161 = v57;
    v61 = i;
    sub_226CCB4D4(sub_226B36EA8, (&v162 - 4), v193);
    v63 = v62;
    i = v61;

    sub_226AC47B0(v31, &qword_27D7A6D68, &qword_226D75210);
    v64 = *(v169 + 8);
    v64(v41, v54);
    v64(v59, v54);
    sub_226AC47B0(v57, &qword_27D7A8BE0, &unk_226D718F0);
    if ((v63 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_226AC47B0(v31, &qword_27D7A6D68, &qword_226D75210);
    (*(v53 + 8))(v41, v54);
    sub_226AC47B0(v57, &qword_27D7A8BE0, &unk_226D718F0);
  }

  v50 = v164;
LABEL_12:
  v65 = v192;
  v66 = sub_226D6BA6C();
  v67 = i;
  sub_226D29828(v50);
  if (v67)
  {
  }

  else
  {
    LODWORD(v190) = v69;
    v193 = v68;
    v70 = v186;
    v71 = v189;
    v72 = &v189[*(v186 + 20)];
    v73 = v200;
    i = 0;
    v74 = v198;
    v75 = v166;
    v166(v72, v200, v198);
    v165(&v71[v70[7]], v199, v196);
    v76 = v170;
    *v71 = v191;
    *(v71 + 1) = v76;
    *&v71[v70[6]] = v50;
    *&v71[v70[8]] = v66;
    v77 = v187;
    v75(v187, v73, v74);
    (*(v197 + 56))(v77, 0, 1, v74);
    v78 = v50;
    v79 = v170;

    v80 = v79;
    v81 = i;
    v82 = sub_226D2A284(v191, v80, v203, v65, v77);
    sub_226D2A8D8(v77, type metadata accessor for AccountIDAbsentPolicy);
    if (v81)
    {
      sub_226D2A8D8(v71, type metadata accessor for HistoricalChangesParser);
    }

    else
    {
      v200 = v78;
      v83 = v178;
      sub_226D66EFC();
      v84 = v179;
      v85 = v180;
      v86 = (*(v179 + 88))(v83, v180);
      if (v86 == *MEMORY[0x277CC6640])
      {
        (*(v84 + 96))(v83, v85);
        v87 = *v83;
        v88 = v200;
        sub_226D2A938(*v83, v82, v200);
        v108 = v107;

        v109 = sub_226CB303C(v108);

        while (1)
        {
          v111 = v189;
          v112 = v170;
          v113 = v191;
          if (!v109[2])
          {

            sub_226D6C31C();
            goto LABEL_54;
          }

          v114 = sub_226B342A8(v109, v203);
          v116 = v115;
          v118 = v117;
          v119 = v114;

          v120 = v119;
          v121 = sub_226B34224(v119, v116, v118);
          v122 = v116;
          if (v121)
          {
            break;
          }

          sub_226D2B66C(v120, v116, v118, v203, v113, v112, v88);
          v124 = v123;
          v92 = 0;
          v198 = v120;
          v199 = v118;
          if ((v120 & 0xC000000000000001) != 0)
          {
            if (v120 >= 0)
            {
              v120 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v125 = sub_226D6EDFC();
            v118 = v199;
            v126 = sub_226C27938(v120, v125);
          }

          else
          {
          }

          v128 = v169;
          v129 = sub_226D29450(v124, v126, v127);
          v130 = sub_226D24EC4(v129);

          v191 = v130;
          v192 = v122;
          if ((v122 & 0xC000000000000001) != 0)
          {
            if (v122 < 0)
            {
              v131 = v122;
            }

            else
            {
              v131 = v122 & 0xFFFFFFFFFFFFFF8;
            }

            v132 = sub_226D6EDFC();
            v133 = sub_226C27938(v131, v132);
          }

          else
          {

            v133 = v122;
          }

          v135 = sub_226D29450(v124, v133, v134);

          v190 = sub_226D24EC4(v135);

          v136 = v118 + 64;
          v137 = 1 << *(v118 + 32);
          v138 = -1;
          if (v137 < 64)
          {
            v138 = ~(-1 << v137);
          }

          v139 = v138 & *(v118 + 64);
          v140 = (v137 + 63) >> 6;
          v193 = (v128 + 16);
          v203 = (v128 + 32);
          swift_bridgeObjectRetain_n();
          v141 = 0;
          v142 = MEMORY[0x277D84F90];
          v196 = v118 + 64;
          v197 = v140;
          for (i = 0; v139; v136 = v196)
          {
            v143 = v142;
LABEL_47:
            v145 = __clz(__rbit64(v139)) | (v141 << 6);
            v146 = *(v199 + 56);
            v147 = *(*(v199 + 48) + 8 * v145);
            v200 = *(v128 + 72);
            v148 = v174;
            v149 = v172;
            v150 = v194;
            (*(v128 + 16))(&v172[*(v174 + 48)], v146 + v200 * v145, v194);
            *v149 = v147;
            v151 = v173;
            sub_226D2C00C(v149, v173);
            v152 = *v151;
            v153 = v147;

            v154 = v150;
            v155 = *(v128 + 32);
            v155(v175, v151 + *(v148 + 48), v154);
            v142 = v143;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_226BBB95C(0, v143[2] + 1, 1, v143);
            }

            v140 = v197;
            v157 = v142[2];
            v156 = v142[3];
            if (v157 >= v156 >> 1)
            {
              v142 = sub_226BBB95C((v156 > 1), v157 + 1, 1, v142);
            }

            v158 = v194;
            v92 = i;
            v139 &= v139 - 1;
            v142[2] = v157 + 1;
            v155(v142 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + v157 * v200, v175, v158);
          }

          while (1)
          {
            v144 = v141 + 1;
            if (__OFADD__(v141, 1))
            {
              break;
            }

            if (v144 >= v140)
            {

              swift_bridgeObjectRelease_n();

              sub_226D6C30C();
              v111 = v189;
              goto LABEL_54;
            }

            v139 = *(v136 + 8 * v144);
            ++v141;
            if (v139)
            {
              v143 = v142;
              v141 = v144;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_56:
          sub_226D6E61C();
LABEL_21:
          sub_226D6E65C();
          sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          v97 = sub_226D6E5CC();

          v98 = [objc_opt_self() andPredicateWithSubpredicates_];

          [v92 setPredicate_];
          [v92 setFetchLimit_];
          [v92 setIncludesSubentities_];
          v99 = objc_allocWithZone(MEMORY[0x277CCAC98]);
          v100 = sub_226D6E36C();
          v101 = [v99 initWithKey:v100 ascending:1];

          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_226D71F20;
          *(v102 + 32) = v101;
          sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
          v103 = v101;
          v104 = sub_226D6E5CC();

          [v92 setSortDescriptors_];

          v88 = v200;
          v105 = i;
          v106 = sub_226D6EBBC();
          if (v105)
          {

            (*(v183 + 8))(v182, v184);
            sub_226D2A8D8(v189, type metadata accessor for HistoricalChangesParser);
            return;
          }

          v110 = v106;

          v109 = sub_226CB321C(v110);

          (*(v183 + 8))(v182, v184);
        }

        sub_226D6C31C();
        v111 = v189;
LABEL_54:
        sub_226D2A8D8(v111, type metadata accessor for HistoricalChangesParser);
      }

      else
      {
        i = 0;
        if (v86 == *MEMORY[0x277CC6638])
        {
          v199 = a10;
          (*(v84 + 96))(v83, v85);
          v89 = v182;
          v90 = v183;
          v91 = v184;
          (*(v183 + 32))(v182, v83, v184);
          sub_226D6A26C();
          v92 = sub_226D6A21C();
          [v92 setReturnsObjectsAsFaults_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_226D71F40;
          v94 = sub_226D6A22C();

          *(v93 + 32) = v94;
          v95 = v177;
          (*(v90 + 16))(v177, v89, v91);
          (*(v90 + 56))(v95, 0, 1, v91);
          v96 = sub_226D6A23C();
          sub_226AC47B0(v95, &qword_27D7A9370, &qword_226D7D228);
          *(v93 + 40) = v96;
          v201 = v93;
          sub_226D6A24C();
          MEMORY[0x22AA8A610]();
          if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_56;
          }

          goto LABEL_21;
        }

        v201 = 0;
        v202 = 0xE000000000000000;
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD00000000000001BLL, 0x8000000226D88130);
        v159 = v171;
        sub_226D66EFC();
        sub_226D6EFBC();
        (*(v84 + 8))(v159, v85);
        LODWORD(v161) = 0;
        v160 = 344;
        sub_226D6F0AC();
        __break(1u);
      }
    }
  }
}

unint64_t sub_226D293B0()
{
  result = qword_27D7A9388;
  if (!qword_27D7A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9388);
  }

  return result;
}

uint64_t type metadata accessor for AccountIDAbsentPolicy(uint64_t a1)
{
  result = qword_281061E58;
  if (!qword_281061E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D29450(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v13 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_226D295F0(v10, v8, v4, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_226D2C07C(v15, v8, v18);
    v11 = v18[0];

    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_226D295F0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v30 = sub_226D6EDFC();
    v4 = v22;
  }

  else
  {
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v29 = v4 & 0xC000000000000001;
  v23 = v4;
  v27 = v4 + 32;
  v31 = a4 + 56;
LABEL_4:
  v25 = v5;
  while (v6 != v30)
  {
    if (v29)
    {
      v7 = MEMORY[0x22AA8AFD0](v6, v23);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = sub_226D6EC2C();
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
    {
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = sub_226D6EC3C();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = sub_226D6EC3C();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_226D56910(a1, a2, v25, a4);
}

void sub_226D29828(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() fetchHistoryAfterToken_];
  [v2 setFetchLimit_];
  *&v13[0] = 0;
  v3 = [a1 executeRequest:v2 error:v13];
  v4 = *&v13[0];
  if (!v3)
  {
    v10 = *&v13[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v4;
  if (![v6 result])
  {
    goto LABEL_16;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226B24A98(v12, v13);
  sub_226AC4708(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
LABEL_16:

    return;
  }

  if (v11 >> 62)
  {
    if (sub_226D6EDFC())
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v13);

    goto LABEL_16;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v8 = *(v11 + 32);
  }

  v9 = v8;

  if ([v9 transactionNumber] < 2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    [v9 transactionNumber];

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }
}

uint64_t sub_226D29AC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v66 = a5;
  v67 = a1;
  LODWORD(v70) = a4;
  v65[0] = a3;
  v6 = sub_226D66F9C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D66F2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65[1] = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v65 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v65 - v16;
  v18 = sub_226D66F0C();
  MEMORY[0x28223BE20](v18);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v65 - v22;
  v25 = v24;
  v27 = v26;
  sub_226AC40E8(a2, v17, &qword_27D7A8DA8, &unk_226D7D230);
  if ((*(v25 + 48))(v17, 1, v27) == 1)
  {
    sub_226AC47B0(v17, &qword_27D7A8DA8, &unk_226D7D230);
    return 1;
  }

  (*(v25 + 32))(v23, v17, v27);
  sub_226D66EFC();
  v29 = (*(v10 + 88))(v14, v9);
  v30 = v23;
  v31 = v10;
  if (v29 == *MEMORY[0x277CC6640])
  {
    (*(v10 + 96))(v14, v9);
    v32 = *v14;
    if (v70)
    {
      (*(v25 + 8))(v23, v27);

      return 1;
    }

    v35 = sub_226D6EB3C();
    if (v35)
    {
      v36 = v27;
      v37 = v35;
      v38 = [v35 identifier];

      if (v38)
      {
        v39 = sub_226D6E39C();
        v41 = v40;

        result = [v32 storeTokens];
        if (result)
        {
          v42 = result;
          v27 = v36;
          sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
          v43 = sub_226D6E2BC();

          if (*(v43 + 16))
          {
            v44 = sub_226C2FDD4(v39, v41);
            v46 = v45;

            if (v46)
            {
              v47 = *(*(v43 + 56) + 8 * v44);

              v48 = [v47 longLongValue];

              (*(v25 + 8))(v30, v36);
              return v48 >= v65[0];
            }

            (*(v25 + 8))(v30, v36);
            return 0;
          }

LABEL_27:
          (*(v25 + 8))(v30, v27);
          return 0;
        }

        __break(1u);
        return result;
      }

      (*(v25 + 8))(v23, v36);
    }

    else
    {
      (*(v25 + 8))(v23, v27);
    }

    return 0;
  }

  if (v29 == *MEMORY[0x277CC6638])
  {
    (*(v10 + 96))(v14, v9);
    v34 = v68;
    v33 = v69;
    (v68[4])(v8, v14, v69);
    if ((v70 & 1) == 0)
    {
      v62 = v27;
      v63 = sub_226D66F8C();
      (v34[1])(v8, v33);
      (*(v25 + 8))(v30, v62);
      return v63 <= v66;
    }

    (v34[1])(v8, v33);
    goto LABEL_27;
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v49 = sub_226D6E07C();
  __swift_project_value_buffer(v49, qword_28105F600);
  (*(v25 + 16))(v20, v23, v27);
  v50 = sub_226D6E05C();
  v51 = sub_226D6E9CC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v67 = v27;
    v53 = v52;
    v68 = swift_slowAlloc();
    v71 = v68;
    *v53 = 136315138;
    v69 = v23;
    sub_226D66EFC();
    v54 = sub_226D6E3FC();
    v56 = v55;
    v70 = v31;
    v57 = *(v25 + 8);
    v58 = v20;
    v59 = v67;
    v57(v58, v67);
    v60 = sub_226AC4530(v54, v56, &v71);

    *(v53 + 4) = v60;
    _os_log_impl(&dword_226AB4000, v50, v51, "Failed to cast history results %s", v53, 0xCu);
    v61 = v68;
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x22AA8BEE0](v61, -1, -1);
    MEMORY[0x22AA8BEE0](v53, -1, -1);

    v57(v69, v59);
    v31 = v70;
  }

  else
  {

    v64 = *(v25 + 8);
    v64(v20, v27);
    v64(v23, v27);
  }

  (*(v31 + 8))(v14, v9);
  return 0;
}

uint64_t sub_226D2A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v52 = a3;
  v55 = a4;
  v54 = sub_226D6A34C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v10;
  v11 = type metadata accessor for AccountIDAbsentPolicy(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v15 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  v57 = v15;
  sub_226D6787C();
  v16 = [swift_getObjCClassFromMetadata() entityName];
  v17 = sub_226D6E39C();
  v19 = v18;

  if (v17 == a1 && v19 == a2)
  {

LABEL_5:
    sub_226D683BC();
    v21 = [swift_getObjCClassFromMetadata() entityName];
    v22 = sub_226D6E39C();
    v24 = v23;

    sub_226C24D14(&v56, v22, v24);

    goto LABEL_6;
  }

  v20 = sub_226D6F21C();

  if (v20)
  {
    goto LABEL_5;
  }

  v44 = sub_226D6D52C();
  if ((*(*(v44 - 8) + 48))(v52, 1, v44) != 1)
  {
    goto LABEL_6;
  }

  sub_226D2C0B0(v51, v13);
  if ((*(v53 + 48))(v13, 1, v54) == 1)
  {
    goto LABEL_6;
  }

  v45 = v53;
  v46 = v50;
  v47 = v54;
  (*(v53 + 32))(v50, v13, v54);
  (*(v45 + 16))(v8, v46, v47);
  v48 = (*(v45 + 88))(v8, v47);
  if (v48 == *MEMORY[0x277CC7BB8])
  {
LABEL_32:
    (*(v53 + 8))(v46, v54);
LABEL_6:
    result = sub_226D6BA6C();
    v26 = 0;
    v27 = result + 64;
    v28 = 1 << *(result + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(result + 64);
    v31 = (v28 + 63) >> 6;
    v54 = v31;
    v55 = result;
    while (v30)
    {
LABEL_16:
      v33 = (*(result + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v30)))));
      v35 = *v33;
      v34 = v33[1];
      v36 = qword_281062750;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = qword_281064558;
      if (!*(qword_281064558 + 16) || (sub_226D6F2FC(), sub_226D6E42C(), v38 = sub_226D6F35C(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
      {
LABEL_27:

        sub_226C1A7A0();
        swift_allocError();
        swift_willThrow();
      }

      v30 &= v30 - 1;
      v41 = ~v39;
      while (1)
      {
        v42 = (*(v37 + 48) + 16 * v40);
        v43 = *v42 == v35 && v42[1] == v34;
        if (v43 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v40 = (v40 + 1) & v41;
        if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_226C24D14(&v56, v35, v34);

      v31 = v54;
      result = v55;
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_39;
      }

      if (v32 >= v31)
      {

        return v57;
      }

      v30 = *(v27 + 8 * v32);
      ++v26;
      if (v30)
      {
        v26 = v32;
        goto LABEL_16;
      }
    }
  }

  if (v48 == *MEMORY[0x277CC7BA0])
  {
    goto LABEL_34;
  }

  if (v48 == *MEMORY[0x277CC7BA8])
  {
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x277CC7BB0] || v48 == *MEMORY[0x277CC7BC0])
  {
LABEL_34:

    sub_226C1A7A0();
    swift_allocError();
    swift_willThrow();
    return (*(v53 + 8))(v46, v54);
  }

  result = sub_226D6F0AC();
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_226D2A8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226D2A938(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v110 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v9 = [v8 fetchRequest];
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return;
  }

  v11 = v9;
  v12 = [v8 entityDescriptionWithContext_];
  if (!v12)
  {
LABEL_19:

    return;
  }

  v13 = v12;
  v14 = [v12 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v15 = sub_226D6E2BC();

  if (!*(v15 + 16) || (v16 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v17 & 1) == 0))
  {

    goto LABEL_19;
  }

  v100 = a1;
  v101 = a3;
  v93 = v13;
  v97 = v11;
  v95 = *(*(v15 + 56) + 8 * v16);

  v103 = v10;
  *&v108 = v10;
  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (!v21)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v21 &= v21 - 1;
      v4 = objc_opt_self();

      v24 = sub_226D6E36C();
      v14 = [v4 entityForName:v24 inManagedObjectContext:v101];

      if (v14)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x22AA8A610]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v103 = v108;
  }

  while (v21);
  while (1)
  {
LABEL_10:
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_8;
    }
  }

  v26 = sub_226D6EB3C();
  if (!v26 || (v27 = v26, v28 = [v26 identifier], v27, !v28))
  {
LABEL_98:
    __break(1u);
    return;
  }

  v29 = sub_226D6E39C();
  v31 = v30;

  v32 = [v100 storeTokens];
  if (!v32)
  {
    __break(1u);
    goto LABEL_96;
  }

  v33 = v32;
  v34 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v35 = MEMORY[0x277D837D0];
  v36 = sub_226D6E2BC();

  if (!*(v36 + 16))
  {
LABEL_96:

    goto LABEL_97;
  }

  v37 = sub_226C2FDD4(v29, v31);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  v40 = *(*(v36 + 56) + 8 * v37);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_226D70840;
  *(v41 + 56) = v34;
  *(v41 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v41 + 32) = v40;
  v21 = v40;
  v42 = sub_226D6E91C();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_226D71840;
  v44 = [v95 name];
  v45 = sub_226D6E39C();
  v46 = v95;
  v48 = v47;

  *(v43 + 56) = v35;
  *(v43 + 64) = sub_226B16404();
  *(v43 + 32) = v45;
  *(v43 + 40) = v48;
  *(v43 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
  *(v43 + 104) = sub_226AC4194(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320, MEMORY[0x277CC9C50]);
  *(v43 + 72) = v103;
  v49 = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_226D71F40;
  *(v50 + 32) = v42;
  *(v50 + 40) = v49;
  v51 = v42;
  v52 = v49;
  v53 = sub_226D6E5CC();

  v54 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v97 setPredicate_];
  v18 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v18 setResultType_];
  *&v108 = 0;
  v55 = [v101 executeRequest:v18 error:&v108];
  v56 = v108;
  v94 = v55;
  if (!v55)
  {
    v58 = v108;
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v90 = v18;
  v91 = v52;
  v92 = v21;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  v57 = v56;
  v4 = &selRef_setSortDescriptors_;
  if ([v14 result])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  v108 = v106;
  v109 = v107;
  if (!*(&v107 + 1))
  {
LABEL_75:
    v18 = v46;
    sub_226AC47B0(&v108, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = v95;
LABEL_77:
    v21 = v51;
    if (qword_28105F5F8 == -1)
    {
LABEL_78:
      v80 = sub_226D6E07C();
      __swift_project_value_buffer(v80, qword_28105F600);
      v81 = v94;
      v82 = sub_226D6E05C();
      v83 = sub_226D6E9CC();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v106 = v85;
        *v84 = 136315138;
        if ([v14 *(v4 + 816)])
        {
          sub_226D6ED0C();
          swift_unknownObjectRelease();
        }

        else
        {
          v108 = 0u;
          v109 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BB0, &unk_226D74340);
        v86 = sub_226D6E3FC();
        v88 = sub_226AC4530(v86, v87, &v106);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_226AB4000, v82, v83, "Failed to cast history results %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x22AA8BEE0](v85, -1, -1);
        MEMORY[0x22AA8BEE0](v84, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_92:
    swift_once();
    goto LABEL_78;
  }

  v14 = v105;
  if (v105 >> 62)
  {
    v4 = sub_226D6EDFC();
    v89 = v51;
    if (!v4)
    {
      goto LABEL_94;
    }

LABEL_35:
    v51 = 0;
    v46 = MEMORY[0x277D84F90];
    v96 = v4;
    while (1)
    {
      if ((v105 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x22AA8AFD0](v51, v14);
      }

      else
      {
        if (v51 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v59 = *(v105 + 32 + 8 * v51);
      }

      v60 = v59;
      v61 = __OFADD__(v51++, 1);
      if (v61)
      {
        goto LABEL_86;
      }

      v62 = [v59 changes];
      if (!v62)
      {

        goto LABEL_37;
      }

      v63 = v62;
      v21 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      v18 = sub_226D6E5EC();

      v64 = v18 >> 62;
      v102 = v60;
      v14 = v18 >> 62 ? sub_226D6EDFC() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = v46 >> 62;
      if (v46 >> 62)
      {
        v79 = sub_226D6EDFC();
        v4 = v14 + v79;
        if (__OFADD__(v79, v14))
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v66 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v4 = v14 + v66;
        if (__OFADD__(v66, v14))
        {
          goto LABEL_74;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v65)
      {
        goto LABEL_53;
      }

LABEL_54:
      v104 = sub_226D6EF3C();
      v67 = v104 & 0xFFFFFFFFFFFFFF8;
LABEL_55:
      v68 = *(v67 + 16);
      v69 = *(v67 + 24);
      if (v64)
      {
        v4 = sub_226D6EDFC();
        if (!v4)
        {
LABEL_61:

          v72 = v14 <= 0;
          v46 = v104;
          v4 = v96;
          v14 = v105;
          if (!v72)
          {
            goto LABEL_87;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v4 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_61;
        }
      }

      v99 = v14;
      if (((v69 >> 1) - v68) < v14)
      {
        goto LABEL_88;
      }

      v98 = v67;
      v70 = v67 + 8 * v68 + 32;
      v14 = &unk_226D758E0;
      if (v64)
      {
        if (v4 < 1)
        {
          goto LABEL_91;
        }

        sub_226AC4194(&qword_27D7A91B0, &qword_27D7A6F78, &unk_226D758E0, MEMORY[0x277D83988]);
        v73 = 0;
        v74 = v18;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
          v21 = sub_226C3A888(&v108, v73, v74);
          v18 = *v75;
          (v21)(&v108, 0);
          *(v70 + 8 * v73++) = v18;
        }

        while (v4 != v73);

        v71 = v99;
      }

      else
      {
        v71 = v99;
        swift_arrayInitWithCopy();
      }

      v72 = v71 <= 0;
      v76 = v71;
      v4 = v96;
      v14 = v105;
      if (!v72)
      {
        v77 = *(v98 + 16);
        v61 = __OFADD__(v77, v76);
        v78 = v77 + v76;
        if (v61)
        {
          goto LABEL_90;
        }

        *(v98 + 16) = v78;
      }

      v46 = v104;
LABEL_37:
      if (v51 == v4)
      {
        goto LABEL_94;
      }
    }

    if (!v65)
    {
      v104 = v46;
      v67 = v46 & 0xFFFFFFFFFFFFFF8;
      if (v4 <= *(v67 + 24) >> 1)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_53:
    sub_226D6EDFC();
    goto LABEL_54;
  }

  v4 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v89 = v51;
  if (v4)
  {
    goto LABEL_35;
  }

LABEL_94:
}

void sub_226D2B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v75 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v71 - v16;
  v18 = sub_226D6D52C();
  v77 = *(v18 - 8);
  v78 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {

    if (sub_226D6EDFC())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = *(a1 + 16);

    if (v21)
    {
      goto LABEL_10;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_226D6EDFC())
    {
LABEL_9:
      if (!*(a3 + 16))
      {

LABEL_45:

        return;
      }
    }
  }

  else if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

LABEL_10:
  v74 = v20;
  v76 = v8;
  sub_226B8C2B4(a2, a1);
  v23 = v22;
  v24 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v71[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v25 = swift_allocObject();
  v72 = xmmword_226D70840;
  *(v25 + 16) = xmmword_226D70840;
  *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D70, &qword_226D73128);
  *(v25 + 64) = sub_226AC4194(&qword_27D7A6D78, &qword_27D7A6D70, &qword_226D73128, MEMORY[0x277CC9C78]);
  *(v25 + 32) = v23;
  v73 = v24;
  v26 = sub_226D6E91C();
  sub_226AC40E8(v75, v17, &qword_27D7A6D68, &qword_226D75210);
  v28 = v77;
  v27 = v78;
  if ((*(v77 + 48))(v17, 1, v78) == 1)
  {
    sub_226AC47B0(v17, &qword_27D7A6D68, &qword_226D75210);
    goto LABEL_18;
  }

  (*(v28 + 32))(v74, v17, v27);
  sub_226D69F0C();
  v29 = [swift_getObjCClassFromMetadata() entityName];
  v30 = sub_226D6E39C();
  v32 = v31;

  v71[0] = a7;
  if (v30 != a5 || v32 != a6)
  {
    v33 = sub_226D6F21C();

    if (v33)
    {
      goto LABEL_16;
    }

    sub_226D6AC0C();
    v54 = [swift_getObjCClassFromMetadata() entityName];
    v55 = sub_226D6E39C();
    v57 = v56;

    if (v55 != a5 || v57 != a6)
    {
      v60 = sub_226D6F21C();

      if (v60)
      {
        goto LABEL_16;
      }

      sub_226D6B4FC();
      v61 = [swift_getObjCClassFromMetadata() entityName];
      v62 = sub_226D6E39C();
      v64 = v63;

      if (v62 == a5 && v64 == a6)
      {

        v39 = v78;
      }

      else
      {
        v65 = sub_226D6F21C();

        v39 = v78;
        if ((v65 & 1) == 0)
        {
          v69 = swift_allocObject();
          *(v69 + 16) = v72;
          v37 = v74;
          v70 = sub_226D6D4DC();
          *(v69 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
          *(v69 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
          *(v69 + 32) = v70;
          goto LABEL_42;
        }
      }

      v78 = "Unsupported history marker ";
      v66 = swift_allocObject();
      *(v66 + 16) = v72;
      v67 = v74;
      v68 = sub_226D6D4DC();
      *(v66 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
      *(v66 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
      *(v66 + 32) = v68;
      v37 = v67;
LABEL_42:
      v38 = sub_226D6E91C();
      goto LABEL_17;
    }
  }

LABEL_16:
  v34 = swift_allocObject();
  *(v34 + 16) = v72;
  v35 = v74;
  v36 = sub_226D6D4DC();
  *(v34 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v34 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v34 + 32) = v36;
  v37 = v35;
  v38 = sub_226D6E91C();
  v39 = v78;
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_226D71F40;
  *(v40 + 32) = v26;
  *(v40 + 40) = v38;
  v41 = v38;
  v42 = v26;
  v43 = sub_226D6E5CC();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v77 + 8))(v37, v39);
LABEL_18:
  v44 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v45 = sub_226D6E36C();
  v46 = [v44 initWithEntityName_];

  [v46 setPredicate_];
  [v46 setReturnsObjectsAsFaults_];
  sub_226AE59B4(0, &qword_27D7A67C8, 0x277CBE438);
  v47 = v76;
  v48 = sub_226D6EBBC();
  if (v47)
  {

    return;
  }

  v49 = v48;
  if (!(v48 >> 62))
  {
    v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  v50 = sub_226D6EDFC();
  if (!v50)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_22:
  v79 = MEMORY[0x277D84F90];
  sub_226D6EF8C();
  if (v50 < 0)
  {
    __break(1u);
  }

  else
  {
    v76 = 0;
    if ((v49 & 0xC000000000000001) != 0)
    {
      v51 = 0;
      do
      {
        v52 = v51 + 1;
        v53 = [MEMORY[0x22AA8AFD0]() objectID];
        swift_unknownObjectRelease();
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        v51 = v52;
      }

      while (v50 != v52);
    }

    else
    {
      v58 = 32;
      do
      {
        v59 = [*(v49 + v58) objectID];
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        v58 += 8;
        --v50;
      }

      while (v50);
    }
  }
}

uint64_t sub_226D2C00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9390, &qword_226D7D358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2C07C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_226D295F0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226D2C0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIDAbsentPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2C13C(uint64_t a1)
{
  v1 = sub_226D6A34C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_226D2C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v49 = a4;
  v13 = sub_226D6734C();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D1AC();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 8);
  v19 = sub_226D6EC9C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v18(a1, a2, a3, v21);
  v24 = *(a2 - 8);
  if ((*(v24 + 48))(v23, 1, a2) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v25 = sub_226D6735C();
    return (*(*(v25 - 8) + 56))(v49, 1, 1, v25);
  }

  v51 = a2;
  v52 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v24 + 32))(boxed_opaque_existential_1, v23, a2);
  sub_226AC484C(&v50, v53);
  v28 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a5 scale:{a6, a7}];
  [v28 setDrawBorder_];
  [v28 setShouldApplyMask_];
  [v28 setShape_];
  v29 = v54;
  v30 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(a3 + 16))(v29, v30);
  v31 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v32 = sub_226D6D0DC();
  v33 = [v31 initWithURL_];

  (*(v48 + 8))(v17, v15);
  v34 = [v33 prepareImageForDescriptor_];
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  result = [v34 CGImage];
  if (result)
  {
    v36 = result;
    sub_226D6E8FC();
    v38 = v37;

    if (v38 >> 60 == 15)
    {

LABEL_7:
      v39 = sub_226D6735C();
      (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    result = [v35 pixelSize];
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v40 > -2147483650.0)
    {
      if (v40 < 2147483650.0)
      {
        result = [v35 pixelSize];
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v41 > -2147483650.0)
          {
            if (v41 < 2147483650.0)
            {
              (*(v46 + 104))(v45, *MEMORY[0x277CC6BC8], v47);
              v42 = v49;
              sub_226D6733C();

              v43 = sub_226D6735C();
              (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
              return __swift_destroy_boxed_opaque_existential_0Tm(v53);
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_226D2C7A0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_47;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v35 = a3 & 0xFFFFFFFFFFFFFF8;
    v36 = a3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = a3;
    v33 = v4;
    v34 = a3 + 32;
    while (1)
    {
      if (v36)
      {
        v7 = MEMORY[0x22AA8AFD0](v5, v31);
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_42;
        }

        v7 = *(v34 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      v42 = v7;
      a1(&v41, &v42);
      if (v3)
      {
        goto LABEL_40;
      }

      v10 = v41;
      v11 = v41 >> 62;
      if (v41 >> 62)
      {
        v12 = sub_226D6EDFC();
      }

      else
      {
        v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_226D6EDFC();
        v8 = (v28 + v12);
        if (__OFADD__(v28, v12))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = (v14 + v12);
        if (__OFADD__(v14, v12))
        {
          goto LABEL_39;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v13)
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v8 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_226D6EDFC();
        goto LABEL_21;
      }

      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 = sub_226D6EF3C();
      v15 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v39 = v12;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        v20 = sub_226D6EDFC();
        v15 = v19;
        v18 = v20;
        if (!v20)
        {
LABEL_4:

          if (v39 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v39)
      {
        goto LABEL_44;
      }

      v38 = v6;
      v21 = v15 + 8 * v16 + 32;
      v32 = v15;
      if (v11)
      {
        if (v18 < 1)
        {
          goto LABEL_46;
        }

        sub_226D2E764();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
          v23 = sub_226C3A888(v40, i, v10);
          v25 = *v24;
          (v23)(v40, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        sub_226D69F0C();
        swift_arrayInitWithCopy();
      }

      v6 = v38;
      if (v39 > 0)
      {
        v26 = *(v32 + 16);
        v9 = __OFADD__(v26, v39);
        v27 = v26 + v39;
        if (v9)
        {
          goto LABEL_45;
        }

        *(v32 + 16) = v27;
      }

LABEL_5:
      if (v5 == v33)
      {
        return v6;
      }
    }

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
    v29 = a3;
    v4 = sub_226D6EDFC();
    a3 = v29;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226D2CB00@<X0>(uint64_t a1@<X0>, unint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v6 = swift_allocBox();
  v19[47] = 0;
  sub_226AE532C(a1 + 48, v19);
  sub_226D6704C();
  sub_226D6701C();
  sub_226D66FEC();
  if (v19[0] == 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F668);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "**** Force FLL Enabled override is on. ****", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  sub_226D6842C();
  v11 = sub_226D6EBBC();
  if (v3)
  {
  }

  MEMORY[0x28223BE20](v11);
  v17 = v6;
  v18 = a1;
  v14 = sub_226B906B0(sub_226D2D020, v16, v13);
  MEMORY[0x28223BE20](v14);
  v17 = a1;
  v15 = sub_226D2C7A0(sub_226D2D14C, v16, v14);

  *a3 = v15;
  return result;
}

uint64_t sub_226D2CD98(void **a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *a1;
  if ([v8 financialLabEnabled])
  {
    return 1;
  }

  v9 = swift_projectBox();
  (*(v4 + 16))(v7, v9, v3);
  sub_226D66FEC();
  (*(v4 + 8))(v7, v3);
  if (v23)
  {
    return 1;
  }

  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F668);
  v12 = v8;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9EC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = [v12 id];
    v18 = sub_226D6E39C();
    v20 = v19;

    v21 = sub_226AC4530(v18, v20, &v22);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v13, v14, "Not considering any accounts for institution id: %s because FLL is not enabled for this institution.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  return 0;
}

uint64_t sub_226D2D040@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_226D69F0C();
  v7 = [v6 id];
  sub_226D6E39C();

  v8 = sub_226D69E4C();
  if (v3)
  {
  }

  v10 = v8;

  MEMORY[0x28223BE20](v11);
  v12[2] = a2;
  result = sub_226B906B0(sub_226D2E7C8, v12, v10);
  *a3 = result;
  return result;
}

uint64_t sub_226D2D168(void **a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_226D680EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_226D69DBC();
  if (qword_27D7A5F88 != -1)
  {
    swift_once();
  }

  v14 = sub_226D4E14C(v12, qword_27D7B61F0);
  (*(v10 + 8))(v12, v9);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = [v13 earliestHistoricalTransactionsRequestStartDate];
  if (v15)
  {
    v16 = v15;
    sub_226D6D45C();

    v17 = sub_226D6D4AC();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F668);
    v19 = v13;
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      sub_226D69EBC();
      sub_226D2EA10(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_226D6F1CC();
      v26 = v25;
      (*(v3 + 8))(v5, v2);
      v27 = sub_226AC4530(v24, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_226AB4000, v20, v21, "Not considering acount id: %s because historical transactions have not been fetched", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }

    return 0;
  }

  v29 = sub_226D6D4AC();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v30 = sub_226D6E07C();
  __swift_project_value_buffer(v30, qword_28105F668);
  v31 = v13;
  v32 = sub_226D6E05C();
  v33 = sub_226D6E9EC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    sub_226D69EBC();
    sub_226D2EA10(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_226D6F1CC();
    v38 = v37;
    (*(v3 + 8))(v5, v2);
    v39 = sub_226AC4530(v36, v38, &v41);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_226AB4000, v32, v33, "Account id: %s has fetched historical transactions. Account passed consideration test.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
  }

  return 1;
}

void sub_226D2D754(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_226D6842C();
  v5 = sub_226D6840C();
  v6 = sub_226D683CC();
  [v5 setPredicate_];

  v15 = a1;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
  sub_226D6EB8C();

  if (!v2)
  {
    MEMORY[0x28223BE20](v7);
    v14 = a1;
    v9 = sub_226B906B0(sub_226D2E9D0, v13, v8);
    MEMORY[0x28223BE20](v9);
    v14 = a1;
    sub_226C410A8(sub_226D2E9F0, v13, v10);
    v12 = v11;

    *a2 = v12;
  }
}

uint64_t sub_226D2D8CC(void **a1, uint64_t a2)
{
  v4 = sub_226D6767C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F668);
  v9 = v7;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v15 = sub_226D69DCC();
    v17 = sub_226AC4530(v15, v16, &v28);
    v26 = a2;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_226D69E0C();
    v19 = sub_226D6766C();
    v21 = v20;
    (*(v27 + 8))(v6, v25);
    v22 = sub_226AC4530(v19, v21, &v28);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_226AB4000, v10, v11, "--------- Making determination for: %s (%s)----------", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  return sub_226D2DB48(v9) & 1;
}

uint64_t sub_226D2DB48(void *a1)
{
  v3 = v1;
  v96 = sub_226D6B9BC();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v90 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v90 - v11;
  MEMORY[0x28223BE20](v13);
  v94 = &v90 - v14;
  sub_226D69D5C();
  v15 = sub_226D69DCC();
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v18 = v3[5];
  v95[3] = &type metadata for OfflineLabCoreDataAttributeProvider;
  v95[4] = &off_283A6FFD0;
  v95[0] = a1;
  v95[1] = v18;
  v19 = v18;
  v20 = a1;
  v21 = sub_226C06854(v95);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F668);
    v23 = v93;
    v24 = v94;
    (*(v93 + 16))(v12, v94, v96);
    v25 = v2;
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v92 = v2;
      v29 = v28;
      v30 = v23;
      v31 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v95[0] = v91;
      *v29 = 136315394;
      sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v32 = v96;
      v33 = sub_226D6F1CC();
      v34 = v32;
      v36 = v35;
      v37 = *(v30 + 8);
      v38 = v12;
      v39 = v34;
      v37(v38, v34);
      v40 = sub_226AC4530(v33, v36, v95);

      *(v29 + 4) = v40;
      *(v29 + 12) = 2112;
      v41 = v92;
      v42 = v92;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v43;
      *v31 = v43;
      _os_log_impl(&dword_226AB4000, v26, v27, "Error calling shouldProcess() for fqai: %s: %@", v29, 0x16u);
      sub_226AC47B0(v31, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
      v44 = v91;
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);

      v37(v94, v39);
    }

    else
    {

      v64 = v96;
      v65 = *(v23 + 8);
      v65(v12, v96);
      v65(v24, v64);
    }

    return 0;
  }

  else
  {
    v45 = v21;
    v92 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    if (v45)
    {
      v46 = v93;
      v47 = v94;
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v48 = sub_226D6E07C();
      __swift_project_value_buffer(v48, qword_28105F668);
      v49 = v9;
      (*(v46 + 16))(v9, v47, v96);

      v50 = sub_226D6E05C();
      v51 = sub_226D6E9EC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = v46;
        v54 = swift_slowAlloc();
        v95[0] = v54;
        *v52 = 136315394;
        v55 = sub_226AC4530(v92, v17, v95);
        LODWORD(v91) = v51;
        v56 = v55;

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v92 = 0;
        v57 = v96;
        v58 = sub_226D6F1CC();
        v60 = v59;
        v61 = *(v53 + 8);
        v61(v49, v57);
        v62 = sub_226AC4530(v58, v60, v95);

        *(v52 + 14) = v62;
        _os_log_impl(&dword_226AB4000, v50, v91, "%s fqai: %s has met the criteria for processing", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v54, -1, -1);
        MEMORY[0x22AA8BEE0](v52, -1, -1);

        v61(v94, v57);
      }

      else
      {

        v86 = v96;
        v87 = *(v46 + 8);
        v87(v49, v96);
        v87(v47, v86);
      }

      return 1;
    }

    else
    {
      v66 = v93;
      v67 = v94;
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v68 = sub_226D6E07C();
      __swift_project_value_buffer(v68, qword_28105F668);
      v69 = v6;
      (*(v66 + 16))(v6, v67, v96);
      v70 = v17;

      v71 = sub_226D6E05C();
      v72 = sub_226D6E9EC();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v92;
      if (v73)
      {
        v75 = swift_slowAlloc();
        v76 = v66;
        v77 = swift_slowAlloc();
        v95[0] = v77;
        *v75 = 136315394;
        v78 = sub_226AC4530(v74, v70, v95);
        LODWORD(v91) = v72;
        v79 = v78;

        *(v75 + 4) = v79;
        *(v75 + 12) = 2080;
        sub_226D2EA10(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v92 = 0;
        v80 = v96;
        v81 = sub_226D6F1CC();
        v83 = v82;
        v84 = *(v76 + 8);
        v84(v69, v80);
        v85 = sub_226AC4530(v81, v83, v95);

        *(v75 + 14) = v85;
        _os_log_impl(&dword_226AB4000, v71, v91, "%s fqai: %s has not met the criteria for processing", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v77, -1, -1);
        MEMORY[0x22AA8BEE0](v75, -1, -1);

        v84(v94, v80);
      }

      else
      {

        v88 = v96;
        v89 = *(v66 + 8);
        v89(v69, v96);
        v89(v67, v88);
      }

      return 0;
    }
  }
}

uint64_t sub_226D2E410@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6B9BC();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_226D69D5C();
  v16 = sub_226D69DCC();
  v28 = v17;
  v29 = v16;
  v18 = *(a2 + 40);
  v33[3] = &type metadata for OfflineLabCoreDataAttributeProvider;
  v33[4] = &off_283A6FFD0;
  v33[0] = v15;
  v33[1] = v18;
  v19 = *__swift_project_boxed_opaque_existential_1(v33, &type metadata for OfflineLabCoreDataAttributeProvider);
  v20 = v18;
  v21 = v15;
  sub_226CA0610(v19, v7);
  v22 = *(v9 + 48);
  if (v22(v7, 1, v8) == 1)
  {
    sub_226D6D39C();
    if (v22(v7, 1, v8) != 1)
    {
      sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  v23 = v32;
  (*(v30 + 32))(v32, v14, v31);
  v24 = type metadata accessor for OfflineLabAccountInfo(0);
  v25 = (v23 + *(v24 + 20));
  v26 = v28;
  *v25 = v29;
  v25[1] = v26;
  return (*(v9 + 32))(v23 + *(v24 + 24), v11, v8);
}

uint64_t sub_226D2E6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F40, &qword_226D739F0);
  result = sub_226D6EB8C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_226D2E764()
{
  result = qword_27D7A93A0;
  if (!qword_27D7A93A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7DB0, &qword_226D76620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A93A0);
  }

  return result;
}

uint64_t type metadata accessor for OfflineLabAccountInfo(uint64_t a1)
{
  result = qword_27D7A93A8;
  if (!qword_27D7A93A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D2E85C(uint64_t a1)
{
  result = sub_226D6B9BC();
  if (v2 <= 0x3F)
  {
    result = sub_226D6D4AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_226D2E904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D2E94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226D2EA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D2EA58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D2EAA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226D2EAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
  sub_226AF265C(v1 + *(v10 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(v10 + 28));
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

unint64_t sub_226D2ED08()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000035;
}

uint64_t sub_226D2ED88(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(type metadata accessor for BankConnectNotificationEventsRegisterTask(0) - 8);
  v2[9] = v3;
  v2[10] = *(v3 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2EE4C, 0, 0);
}

uint64_t sub_226D2EE4C()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_226B41FC0();
  *v4 = v0;
  v4[1] = sub_226D2EF14;

  return MEMORY[0x28211A3F8](v2, v3, &type metadata for BankConnectEnvironmentImplementation, v5);
}

uint64_t sub_226D2EF14(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226D2F014, 0, 0);
}

uint64_t sub_226D2F014()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_226AE532C(*(v0 + 56), v0 + 16);
  sub_226D30884(v2, v1, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  sub_226AC484C((v0 + 16), v5 + 16);
  sub_226B9064C(v1, v5 + v4);
  v8 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_226D2F15C;

  return v8();
}

uint64_t sub_226D2F15C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_226D2F2E8;
  }

  else
  {

    v2 = sub_226D2F278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D2F278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D2F2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D2F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_226D68BCC();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_226D6C9FC();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_226D682FC();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2F4E4, 0, 0);
}

uint64_t sub_226D2F4E4()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_226D6BACC();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6A63C();
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[7];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v8 = __swift_project_boxed_opaque_existential_1(v7, v1[3]);
  __swift_project_boxed_opaque_existential_1(v8 + 1, v8[4]);
  v9 = sub_226D6C2AC();
  v0[19] = v9;
  (*(v5 + 16))(v2, v3, v4);
  type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
  sub_226D6BD4C();

  sub_226D6C9EC();
  v10 = swift_task_alloc();
  v0[20] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v6;
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_226D2F744;
  v12 = v0[11];
  v13 = v0[9];

  return MEMORY[0x282119B28](v12, &unk_226D7D550, v10, v13);
}

uint64_t sub_226D2F744()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_226D2FAA0;
  }

  else
  {
    v2 = sub_226D2F878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D2F878()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v4 = sub_226D676AC();
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  sub_226D6EB7C();
  v6 = *(v0 + 144);
  if (v1)
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 144);
    v10 = *(v0 + 104);
    v23 = *(v0 + 96);
    v25 = *(v0 + 112);
    v11 = *(v0 + 80);
    v19 = *(v0 + 72);
    v21 = *(v0 + 88);

    (*(v8 + 8))(v9, v7);
    (*(v11 + 8))(v21, v19);
    (*(v10 + 8))(v25, v23);
  }

  else
  {
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 104);
    v24 = *(v0 + 96);
    v17 = *(v0 + 80);
    v20 = *(v0 + 72);
    v22 = *(v0 + 88);

    (*(v13 + 8))(v6, v14);
    (*(v17 + 8))(v22, v20);
    (*(v16 + 8))(v15, v24);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226D2FAA0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D2FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return MEMORY[0x282119B30](a1, a3);
}

void sub_226D2FC2C(uint64_t *a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6BD9C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_226D6D52C();
  MEMORY[0x28223BE20](v6 - 8);
  sub_226D6C5BC();
  v7 = sub_226D6C54C();
  if (!v3)
  {
    v8 = v7;
    if (!v7)
    {
      sub_226D6D51C();
      v12 = a2;
      v8 = sub_226D6C5AC();
      sub_226D6794C();
      v13 = sub_226D6788C();
      if (v13)
      {
        v14 = v13;
        [v13 setNotificationSubscriptionObject_];
      }
    }

    sub_226D68BBC();
    v9 = sub_226D6E36C();

    [v8 setSubscriptionID_];

    type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
    sub_226D6BD4C();
    sub_226D6BD5C();
    sub_226D6C58C();
    [v8 setRegisterRequestAttemptCount_];
    [v8 setLastRegisterRequestAttemptDate_];
    v15[0] = 0;
    if ([a2 save_])
    {
      v10 = v15[0];
    }

    else
    {
      v11 = v15[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226D2FEC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D2FF84, 0, 0);
}

uint64_t sub_226D2FF84()
{
  v25 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226D30884(v3, v2, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  sub_226D30884(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (!v8)
  {

    sub_226D308EC(v9, MEMORY[0x277CC6528]);
    sub_226D308EC(v10, type metadata accessor for BankConnectNotificationEventsRegisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v24 = v13;
  *v11 = 136315394;
  v15 = *v10;
  v14 = v10[1];

  sub_226D308EC(v10, type metadata accessor for BankConnectNotificationEventsRegisterTask);
  v16 = sub_226AC4530(v15, v14, &v24);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2112;
  sub_226D30C8C(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226D30884(v9, v17, MEMORY[0x277CC6528]);
  v18 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D308EC(v9, MEMORY[0x277CC6528]);
  *(v11 + 14) = v18;
  *v12 = v18;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to register to notification events with consentID %s %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v19 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v20 = sub_226D676AC();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    sub_226D6EB7C();
  }

LABEL_8:

  v22 = *(v0 + 8);

  return v22();
}

void sub_226D30348(uint64_t *a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D52C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_226D6C5BC();
  v5 = sub_226D6C54C();
  if (!v2)
  {
    v6 = v5;
    if (!v5)
    {
      sub_226D6D51C();
      v11 = a2;
      v6 = sub_226D6C5AC();
      sub_226D6794C();
      v12 = sub_226D6788C();
      if (v12)
      {
        v13 = v12;
        [v12 setNotificationSubscriptionObject_];
      }
    }

    v7 = [v6 registerRequestAttemptCount];
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    [v6 setRegisterRequestAttemptCount_];
    type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
    v8 = sub_226D6D3EC();
    [v6 setLastRegisterRequestAttemptDate_];

    v14[0] = 0;
    if ([a2 save_])
    {
      v9 = v14[0];
    }

    else
    {
      v10 = v14[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226D30564(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226D2ED88(a1);
}

uint64_t sub_226D305F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D2FEC0(a1, a2);
}

double sub_226D3069C@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226D30788(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A93B8, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D490);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectNotificationEventsRegisterTask(uint64_t a1)
{
  result = qword_28105FA98;
  if (!qword_28105FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3082C(uint64_t a1)
{
  result = sub_226D30C8C(&qword_27D7A93C0, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D4D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D30884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D308EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D30968(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectNotificationEventsRegisterTask(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226D2F360(a1, v1 + 16, v1 + v5);
}

uint64_t sub_226D30A48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226D2FB78(a1, v5, v4);
}

void sub_226D30B3C(uint64_t a1)
{
  sub_226BBB5E0();
  if (v1 <= 0x3F)
  {
    sub_226D6BD9C();
    if (v2 <= 0x3F)
    {
      sub_226B20350(319);
      if (v3 <= 0x3F)
      {
        sub_226D6D4AC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226D30C08(uint64_t a1)
{
  *(a1 + 8) = sub_226D30C8C(&qword_27D7A93C8, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D500);
  result = sub_226D30C8C(&qword_27D7A93D0, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D58C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226D30C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D30CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_226D30D04, 0, 0);
}

uint64_t sub_226D30D04(uint64_t a1)
{
  if (sub_226D320D4())
  {
    v2 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    v4 = v3;
    v5 = *MEMORY[0x277CC6A40];
    v6 = sub_226D66FDC();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CC65D0], v2);
    swift_willThrow();
    v7 = v1[1];

    return v7();
  }

  else
  {
    v9 = *(v1[8] + 320);
    v10 = sub_226D676AC();
    v1[9] = v10;
    v11 = swift_task_alloc();
    v1[10] = v11;
    *v11 = v1;
    v11[1] = sub_226D30ED0;
    v12 = v1[6];
    v13 = v1[7];
    v14 = v1[4];
    v15 = v1[5];
    v16 = v1[2];
    v17 = v1[3];

    return sub_226B7C558(v16, v17, v14, v15, v12, v13, v9, v10);
  }
}

uint64_t sub_226D30ED0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D3100C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226D3100C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D31070(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6735C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_226D69FAC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93D8, &qword_226D7D5E0);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E0, &qword_226D7D5E8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E8, &unk_226D7D5F0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D312BC, 0, 0);
}

uint64_t sub_226D312BC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_226D676AC();
  *(v1 + 176) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_226D6EB8C();
  v5 = *(v1 + 168);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);

  v13 = *(v9 + 48);
  sub_226AFD80C(v8, v5, &qword_27D7A93E8, &unk_226D7D5F0);
  sub_226AFD80C(v8 + v13, v7, &qword_27D7A93E0, &qword_226D7D5E8);
  v14 = *(v12 + 56);
  *(v1 + 184) = v14;
  *(v1 + 192) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v10, 1, 1, v11);
  sub_226AC40E8(v7, v6, &qword_27D7A93E0, &qword_226D7D5E8);
  v15 = sub_226D6A8EC();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v6, 1, v15);
  v18 = *(v1 + 144);
  if (v17 == 1)
  {
    sub_226AC47B0(*(v1 + 144), &qword_27D7A93E0, &qword_226D7D5E8);
    goto LABEL_9;
  }

  v19 = sub_226D6A87C();
  v21 = v20;
  v22 = (*(v16 + 8))(v18, v15);
  if ((v21 & 1) == 0)
  {
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v26 = *(v1 + 32);
      v27 = *(v26 + 536);
      v28 = *(v26 + 544);
      v22 = GSMainScreenScaleFactor();
      if ((LODWORD(v29) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v29 > -9.2234e18)
        {
          if (v29 < 9.2234e18)
          {
            v31 = *(v1 + 112);
            v30 = *(v1 + 120);
            sub_226D2C1C4(v19, v27, v28, v31, 100.0, 100.0, v29);
            sub_226AC47B0(v30, &qword_27D7A6828, &qword_226D782F0);
            sub_226AFD80C(v31, v30, &qword_27D7A6828, &qword_226D782F0);
            goto LABEL_9;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x282119258](v22, v23, v24, v25);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  v32 = *(v1 + 104);
  v33 = *(v1 + 40);
  v34 = *(v1 + 48);
  sub_226AC40E8(*(v1 + 120), v32, &qword_27D7A6828, &qword_226D782F0);
  v35 = *(v34 + 48);
  *(v1 + 200) = v35;
  *(v1 + 208) = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v33) = v35(v32, 1, v33);
  sub_226AC47B0(v32, &qword_27D7A6828, &qword_226D782F0);
  if (v33 == 1)
  {
    v36 = *(v1 + 160);
    v37 = *(v1 + 64);
    v38 = *(v1 + 72);
    sub_226AC40E8(*(v1 + 168), v36, &qword_27D7A93E8, &unk_226D7D5F0);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      sub_226AC47B0(*(v1 + 160), &qword_27D7A93E8, &unk_226D7D5F0);
      goto LABEL_12;
    }

    v56 = *(v1 + 32);
    (*(*(v1 + 72) + 32))(*(v1 + 80), *(v1 + 160), *(v1 + 64));
    v57 = v56[44];
    v58 = v56[45];
    __swift_project_boxed_opaque_existential_1(v56 + 41, v57);
    v59 = swift_task_alloc();
    *(v1 + 216) = v59;
    *v59 = v1;
    v59[1] = sub_226D31A58;
    v22 = *(v1 + 96);
    v23 = *(v1 + 80);
    v24 = v57;
    v25 = v58;

    return MEMORY[0x282119258](v22, v23, v24, v25);
  }

LABEL_12:
  v39 = *(v1 + 200);
  v40 = *(v1 + 88);
  v41 = *(v1 + 40);
  sub_226AC40E8(*(v1 + 120), v40, &qword_27D7A6828, &qword_226D782F0);
  if (v39(v40, 1, v41) == 1)
  {
    v42 = *(v1 + 184);
    v43 = *(v1 + 168);
    v44 = *(v1 + 152);
    v45 = *(v1 + 120);
    v46 = *(v1 + 88);
    v47 = *(v1 + 40);
    v48 = *(v1 + 16);

    sub_226AC47B0(v45, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v44, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v43, &qword_27D7A93E8, &unk_226D7D5F0);
    sub_226AC47B0(v46, &qword_27D7A6828, &qword_226D782F0);
    v42(v48, 1, 1, v47);
  }

  else
  {
    v49 = *(v1 + 168);
    v50 = *(v1 + 176);
    v51 = *(v1 + 152);
    v52 = *(v1 + 120);
    v53 = *(v1 + 56);
    v54 = *(v1 + 24);
    (*(*(v1 + 48) + 32))(v53, *(v1 + 88), *(v1 + 40));
    v55 = swift_task_alloc();
    v55[2] = v50;
    v55[3] = v53;
    v55[4] = v54;
    sub_226D6EB7C();

    sub_226AC47B0(v52, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v51, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v49, &qword_27D7A93E8, &unk_226D7D5F0);
    v60 = *(v1 + 184);
    v62 = *(v1 + 48);
    v61 = *(v1 + 56);
    v63 = *(v1 + 40);
    v64 = *(v1 + 16);
    (*(v62 + 16))(v64, v61, v63);
    v60(v64, 0, 1, v63);
    (*(v62 + 8))(v61, v63);
  }

  v65 = *(v1 + 8);

  return v65();
}

uint64_t sub_226D31A58()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_226D31F5C;
  }

  else
  {
    v2 = sub_226D31B6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D31B6C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_226AC47B0(v1, &qword_27D7A6828, &qword_226D782F0);
  sub_226AFD80C(v2, v1, &qword_27D7A6828, &qword_226D782F0);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 88);
  v6 = *(v0 + 40);
  sub_226AC40E8(*(v0 + 120), v5, &qword_27D7A6828, &qword_226D782F0);
  v7 = v4(v5, 1, v6);
  v8 = *(v0 + 40);
  if (v7 == 1)
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = *(v0 + 152);
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 16);

    sub_226AC47B0(v12, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v11, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v10, &qword_27D7A93E8, &unk_226D7D5F0);
    sub_226AC47B0(v13, &qword_27D7A6828, &qword_226D782F0);
    v9(v14, 1, 1, v8);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    v19 = *(v0 + 56);
    v20 = *(v0 + 24);
    (*(*(v0 + 48) + 32))(v19, *(v0 + 88), *(v0 + 40));
    v21 = swift_task_alloc();
    v21[2] = v16;
    v21[3] = v19;
    v21[4] = v20;
    sub_226D6EB7C();

    sub_226AC47B0(v18, &qword_27D7A6828, &qword_226D782F0);
    sub_226AC47B0(v17, &qword_27D7A93E0, &qword_226D7D5E8);
    sub_226AC47B0(v15, &qword_27D7A93E8, &unk_226D7D5F0);
    if (v3)
    {
      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    v23 = *(v0 + 184);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 40);
    v27 = *(v0 + 16);
    (*(v25 + 16))(v27, v24, v26);
    v23(v27, 0, 1, v26);
    (*(v25 + 8))(v24, v26);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t sub_226D31F5C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  sub_226AC47B0(v3, &qword_27D7A6828, &qword_226D782F0);
  sub_226AC47B0(v2, &qword_27D7A93E0, &qword_226D7D5E8);
  sub_226AC47B0(v1, &qword_27D7A93E8, &unk_226D7D5F0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226D320D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2 = [v1 aa_primaryAppleAccount];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa_isManagedAppleID];

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  if (((*(v6 + 24))(v5, v6) & 1) == 0)
  {
    v7 = (*(v6 + 8))(v5, v6) ^ 1;
    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

void *sub_226D321AC@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E0, &qword_226D7D5E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93E8, &unk_226D7D5F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v28[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v28];

  v14 = v28[0];
  if (v13)
  {
    sub_226D6AC0C();
    v15 = v14;
    result = sub_226D6AABC();
    if (!v3)
    {
      if (result)
      {
        v17 = result;
        v18 = sub_226D6AAEC();

        if (v18)
        {
          v28[0] = v18;
          sub_226D32518(v28);

          v19 = sub_226D69FAC();
          (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
        }

        else
        {
          v23 = sub_226D69FAC();
          (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
        }

        v24 = v17;
        v25 = sub_226D6AB2C();

        if (v25)
        {
          sub_226D6A8FC();

          v22 = 0;
        }

        else
        {

          v22 = 1;
        }
      }

      else
      {
        v21 = sub_226D69FAC();
        v22 = 1;
        (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      }

      v26 = sub_226D6A8EC();
      (*(*(v26 - 8) + 56))(v8, v22, 1, v26);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93D8, &qword_226D7D5E0) + 48);
      sub_226AFD80C(v11, a3, &qword_27D7A93E8, &unk_226D7D5F0);
      return sub_226AFD80C(v8, a3 + v27, &qword_27D7A93E0, &qword_226D7D5E8);
    }
  }

  else
  {
    v20 = v28[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226D32518(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6870, &qword_226D71EC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6878, &unk_226D71ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6868, &qword_226D71EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_226D6D4AC();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v11 = *a1;
  v12 = [v11 updatedAt];
  sub_226D6D45C();

  sub_226D6B50C();
  if ([v11 merchantObject])
  {
    sub_226D6754C();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_226D6753C();
  v15 = 1;
  (*(*(v14 - 8) + 56))(v7, v13, 1, v14);
  if ([v11 brandObject])
  {
    sub_226D6CB9C();
    v15 = 0;
  }

  v16 = sub_226D6CB8C();
  (*(*(v16 - 8) + 56))(v4, v15, 1, v16);
  return sub_226D69F9C();
}

void sub_226D327B8(void *a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    sub_226D69F8C();
    v8 = v7;
    v9 = sub_226D69F7C();
    if (!v3)
    {
      v10 = v9;
      sub_226D6AC0C();
      v11 = sub_226D6AABC();
      v13 = v11;
      if (v11)
      {
        v14 = sub_226D6ABBC();

        [v14 setTransactionIconObject_];
        v17[0] = 0;
        if ([a1 save_])
        {
          v15 = v17[0];

          return;
        }

        v16 = v17[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v12 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226D329B8()
{
  sub_226D6A3AC();
  v1 = sub_226D679FC();
  swift_allocObject();
  v2 = sub_226D679EC();
  v3 = MEMORY[0x277CC6EB0];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_226D32A98;

  return MEMORY[0x282119248](v0 + 2);
}

uint64_t sub_226D32A98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_226D32FB8, 0, 0);
  }

  else
  {
    v5 = v3[13];
    if (v5)
    {
      v6 = swift_task_alloc();
      v3[17] = v6;
      *v6 = v4;
      v6[1] = sub_226D32CA8;

      return MEMORY[0x282119238](v5);
    }

    else
    {
      v7 = swift_task_alloc();
      v3[19] = v7;
      *v7 = v4;
      v7[1] = sub_226D32E30;

      return MEMORY[0x282119240]();
    }
  }
}

uint64_t sub_226D32CA8(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_226D32FD0;
  }

  else
  {
    v4 = sub_226D32DC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D32DC4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226D32E30(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_226D33034;
  }

  else
  {
    v4 = sub_226D32F4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D32F4C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226D32FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D33034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D330D4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  v5 = *(IsMarkedAsCompleteEntryVMa - 8);
  MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93F8, &qword_226D7D608);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9090, &qword_226D7D610);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = _s8MetadataV9CloudItemVMa_2(0);
  v17 = *(v1 + *(v16 + 24));
  sub_226D36924(v1 + *(v16 + 20), v15, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v34 = v17;
  sub_226AC40E8(v15, v12, &qword_27D7A9090, &qword_226D7D610);

  sub_226CED91C(v12);
  sub_226AC47B0(v15, &qword_27D7A9090, &qword_226D7D610);
  v18 = v34;
  v19 = *(v34 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v34 = MEMORY[0x277D84F90];
    sub_226AE21E4(0, v19, 0);
    v20 = v34;
    v21 = *(v30 + 80);
    v29 = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v23 = *(v30 + 72);
    do
    {
      sub_226D36924(v22, v4, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v24 = v4[*(v2 + 28)];
      sub_226AC40E8(&v4[*(v2 + 32)], &v7[*(IsMarkedAsCompleteEntryVMa + 20)], &qword_27D7A8BE0, &unk_226D718F0);
      *v7 = v24;
      sub_226D35E34(v4, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v34 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226AE21E4((v25 > 1), v26 + 1, 1);
        v20 = v34;
      }

      *(v20 + 16) = v26 + 1;
      sub_226D3698C(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  v27 = v32;
  sub_226B2B07C(v20, v32);
  result = (*(v5 + 48))(v27, 1, IsMarkedAsCompleteEntryVMa);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return sub_226D3698C(v27, v31, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  }

  return result;
}

uint64_t sub_226D334E0()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(_s8MetadataV9CloudItemVMa_2(0) + 24));
  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_226D36924(v8, v4, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v10 = *&v4[*(v1 + 24)];
      sub_226D35E34(v4, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v8 += v9;
      --v6;
    }

    while (v6);
    return v12;
  }

  return result;
}

uint64_t sub_226D336C4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  sub_226D6D52C();
  sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6F31C();
  sub_226AC40E8(v1 + *(v9 + 32), v8, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_226D6F32C();
}

uint64_t sub_226D33994(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v28 = sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  v13 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v14 = sub_226D6D52C();
  sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v26 = v14;
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6F31C();
  sub_226AC40E8(v1 + *(v13 + 32), v12, &qword_27D7A8BE0, &unk_226D718F0);
  v15 = *(v5 + 48);
  v16 = v15(v12, 1, v4);
  v24 = v7;
  v25 = v5;
  if (v16 == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v7, v12, v4);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v5 + 8))(v7, v4);
  }

  sub_226D6F32C();
  v17 = _s8MetadataV9CloudItemVMa_2(0);
  v18 = v1 + *(v17 + 20);
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6F31C();
  v19 = v27;
  sub_226AC40E8(v18 + *(v13 + 32), v27, &qword_27D7A8BE0, &unk_226D718F0);
  if (v15(v19, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    v21 = v24;
    v20 = v25;
    (*(v25 + 32))(v24, v19, v4);
    sub_226D6F31C();
    sub_226D6E30C();
    (*(v20 + 8))(v21, v4);
  }

  sub_226D6F32C();
  return sub_226AF1254(a1, *(v2 + *(v17 + 24)));
}

uint64_t sub_226D33DA0(uint64_t a1)
{
  v3 = sub_226D6D4AC();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = _s8MetadataV9CloudItemVMa_2(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D36924(v1, v18, _s8MetadataV15CloudItemStatusOMa_2);
  v19 = (*(v13 + 48))(v18, 2, v12);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    return MEMORY[0x22AA8B3B0](v20);
  }

  else
  {
    sub_226D3698C(v18, v15, _s8MetadataV9CloudItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    v31 = sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    v21 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
    v22 = sub_226D6D52C();
    v29 = sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v30 = v22;
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6F31C();
    sub_226AC40E8(&v15[*(v21 + 32)], v11, &qword_27D7A8BE0, &unk_226D718F0);
    v23 = v32;
    v28 = *(v32 + 48);
    if (v28(v11, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v23 + 32))(v5, v11, v3);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v23 + 8))(v5, v3);
    }

    sub_226D6F32C();
    v25 = &v15[*(v12 + 20)];
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6F31C();
    sub_226AC40E8(&v25[*(v21 + 32)], v8, &qword_27D7A8BE0, &unk_226D718F0);
    if (v28(v8, 1, v3) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v26 = v32;
      (*(v32 + 32))(v5, v8, v3);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v26 + 8))(v5, v3);
    }

    sub_226D6F32C();
    sub_226AF1254(a1, *&v15[*(v12 + 24)]);
    return sub_226D35E34(v15, _s8MetadataV9CloudItemVMa_2);
  }
}

uint64_t sub_226D3432C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D336C0() & 1) == 0 || (sub_226D336C0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2ECEC(v7, v8);
}

uint64_t sub_226D343E0(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_226D6EC4C();
  v9 = _s8MetadataV9LocalItemVMa_2(0);
  sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6F31C();
  sub_226AC40E8(v1 + *(v9 + 28), v8, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_226D6F31C();
  sub_226D6E30C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_226D34618(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = _s8MetadataV9LocalItemVMa_2(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8MetadataV15LocalItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D36924(v1, v15, _s8MetadataV15LocalItemStatusOMa_2);
  v16 = (*(v10 + 48))(v15, 2, v9);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    return MEMORY[0x22AA8B3B0](v17);
  }

  else
  {
    sub_226D3698C(v15, v12, _s8MetadataV9LocalItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6F31C();
    sub_226AC40E8(&v12[*(v9 + 28)], v8, &qword_27D7A8BE0, &unk_226D718F0);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v3 + 8))(v5, v2);
    }

    return sub_226D35E34(v12, _s8MetadataV9LocalItemVMa_2);
  }
}

uint64_t sub_226D349A0(uint64_t a1)
{
  v3 = _s8MetadataV9LocalItemVMa_2(0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D4AC();
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = _s8MetadataV15LocalItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v15 - 8);
  v61 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s8MetadataV9CloudItemVMa_2(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B49C();
  sub_226D37160(&qword_27D7A7F78, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  v24 = v1;
  sub_226D6E30C();
  v60 = _s8MetadataVMa_2(0);
  sub_226D36924(v1 + *(v60 + 20), v23, _s8MetadataV15CloudItemStatusOMa_2);
  v25 = (*(v18 + 48))(v23, 2, v17);
  if (v25)
  {
    if (v25 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = 2;
    }

    MEMORY[0x22AA8B3B0](v26);
  }

  else
  {
    v54 = v11;
    v55 = v1;
    sub_226D3698C(v23, v20, _s8MetadataV9CloudItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    v27 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
    v28 = sub_226D6D52C();
    v52 = sub_226D37160(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v53 = v28;
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6F31C();
    sub_226AC40E8(&v20[*(v27 + 32)], v14, &qword_27D7A8BE0, &unk_226D718F0);
    v29 = v59;
    v51 = *(v59 + 48);
    if (v51(v14, 1, v5) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v30 = *(v29 + 32);
      v50 = v17;
      v31 = v5;
      v32 = v58;
      v30(v58, v14, v31);
      sub_226D6F31C();
      sub_226D6E30C();
      v33 = v32;
      v5 = v31;
      v17 = v50;
      (*(v29 + 8))(v33, v31);
    }

    sub_226D6F32C();
    v34 = &v20[*(v17 + 20)];
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6F31C();
    v35 = v54;
    sub_226AC40E8(&v34[*(v27 + 32)], v54, &qword_27D7A8BE0, &unk_226D718F0);
    if (v51(v35, 1, v5) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v36 = v58;
      v37 = v59;
      (*(v59 + 32))(v58, v35, v5);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v37 + 8))(v36, v5);
    }

    v24 = v55;
    sub_226D6F32C();
    sub_226AF1254(a1, *&v20[*(v17 + 24)]);
    sub_226D35E34(v20, _s8MetadataV9CloudItemVMa_2);
  }

  v39 = v61;
  v38 = v62;
  sub_226D36924(v24 + *(v60 + 24), v61, _s8MetadataV15LocalItemStatusOMa_2);
  v40 = (*(v38 + 48))(v39, 2, v63);
  if (v40)
  {
    if (v40 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = 2;
    }

    return MEMORY[0x22AA8B3B0](v41);
  }

  else
  {
    v42 = v39;
    v43 = v57;
    sub_226D3698C(v42, v57, _s8MetadataV9LocalItemVMa_2);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    v44 = v63;
    sub_226D37160(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6F31C();
    v45 = v56;
    sub_226AC40E8(v43 + *(v44 + 28), v56, &qword_27D7A8BE0, &unk_226D718F0);
    v46 = v59;
    if ((*(v59 + 48))(v45, 1, v5) == 1)
    {
      sub_226D6F31C();
    }

    else
    {
      v48 = v5;
      v49 = v58;
      (*(v46 + 32))(v58, v45, v48);
      sub_226D6F31C();
      sub_226D6E30C();
      (*(v46 + 8))(v49, v48);
    }

    return sub_226D35E34(v43, _s8MetadataV9LocalItemVMa_2);
  }
}

uint64_t sub_226D352D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226D35338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226D3537C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x22AA87530]() & 1) == 0 || (sub_226D33D9C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_226D34614(a1 + v6, a2 + v6);
}

BOOL sub_226D353F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(_s8MetadataV23IsMarkedAsCompleteEntryVMa(0) + 20);
  v15 = *(v11 + 48);
  sub_226AC40E8(&a1[v14], v13, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(&a2[v14], &v13[v15], &qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_226AC40E8(v13, v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_226AC47B0(v13, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v19 = sub_226D6E35C();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  return (v19 & 1) != 0;
}

BOOL sub_226D3574C(void *a1, void *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  v14 = _s8MetadataV9LocalItemVMa_2(0);
  if ((sub_226D6D44C() & 1) == 0 || *(a1 + *(v14 + 24)) != *(a2 + *(v14 + 24)))
  {
    return 0;
  }

  v15 = *(v14 + 28);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_226AC40E8(v16, v13, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(a2 + v15, &v13[v17], &qword_27D7A8BE0, &unk_226D718F0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_226AC40E8(v13, v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_226AC47B0(v13, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v20 = sub_226D6E35C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  return (v20 & 1) != 0;
}

BOOL sub_226D35AE4(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa_2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s8MetadataV15LocalItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A93F0, &qword_226D7D600);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_226D36924(a1, &v20 - v12, _s8MetadataV15LocalItemStatusOMa_2);
  sub_226D36924(a2, &v13[v15], _s8MetadataV15LocalItemStatusOMa_2);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_226D36924(v13, v10, _s8MetadataV15LocalItemStatusOMa_2);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226D3698C(&v13[v15], v7, _s8MetadataV9LocalItemVMa_2);
      v18 = sub_226D3574C(v10, v7);
      sub_226D35E34(v7, _s8MetadataV9LocalItemVMa_2);
      sub_226D35E34(v10, _s8MetadataV9LocalItemVMa_2);
      sub_226D35E34(v13, _s8MetadataV15LocalItemStatusOMa_2);
      return v18;
    }

    sub_226D35E34(v10, _s8MetadataV9LocalItemVMa_2);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_226AC47B0(v13, &qword_27D7A93F0, &qword_226D7D600);
    return 0;
  }

  sub_226D35E34(v13, _s8MetadataV15LocalItemStatusOMa_2);
  return 1;
}

uint64_t sub_226D35E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_226D35E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v14 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0 || *(a1 + v14[7]) != *(a2 + v14[7]))
  {
    return 0;
  }

  v15 = v14[8];
  v16 = *(v11 + 48);
  sub_226AC40E8(a1 + v15, v13, &qword_27D7A8BE0, &unk_226D718F0);
  v22 = v16;
  sub_226AC40E8(a2 + v15, &v13[v16], &qword_27D7A8BE0, &unk_226D718F0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v22], 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      return *(a1 + v14[9]) == *(a2 + v14[9]);
    }

    goto LABEL_10;
  }

  sub_226AC40E8(v13, v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (v17(&v13[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_226AC47B0(v13, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v22], v4);
  sub_226D37160(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v19 = sub_226D6E35C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  if (v19)
  {
    return *(a1 + v14[9]) == *(a2 + v14[9]);
  }

  return 0;
}

uint64_t sub_226D36260(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa_2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94B0, &qword_226D7D958);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226D36924(a1, &v19 - v12, _s8MetadataV15CloudItemStatusOMa_2);
  sub_226D36924(a2, &v13[v15], _s8MetadataV15CloudItemStatusOMa_2);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226D35E34(v13, _s8MetadataV15CloudItemStatusOMa_2);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226D36924(v13, v10, _s8MetadataV15CloudItemStatusOMa_2);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226D3698C(&v13[v15], v7, _s8MetadataV9CloudItemVMa_2);
      if (!sub_226D35E94(v10, v7) || !sub_226D35E94(&v10[*(v4 + 20)], &v7[*(v4 + 20)]) || (sub_226B2ECEC(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]) & 1) == 0)
      {
        sub_226D35E34(v7, _s8MetadataV9CloudItemVMa_2);
        sub_226D35E34(v10, _s8MetadataV9CloudItemVMa_2);
        sub_226D35E34(v13, _s8MetadataV15CloudItemStatusOMa_2);
        return 0;
      }

      sub_226D35E34(v7, _s8MetadataV9CloudItemVMa_2);
      sub_226D35E34(v10, _s8MetadataV9CloudItemVMa_2);
      goto LABEL_8;
    }

    sub_226D35E34(v10, _s8MetadataV9CloudItemVMa_2);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A94B0, &qword_226D7D958);
  return 0;
}

uint64_t sub_226D365C4(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v27 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *(_s8MetadataV23IsMarkedAsCompleteEntryVMa(0) + 20);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_226AC40E8(&a1[v14], v13, &qword_27D7A8BE0, &unk_226D718F0);
  v26 = a2;
  sub_226AC40E8(&a2[v14], &v13[v15], &qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(v5 + 48);
  LODWORD(v11) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  if (v11 == 1)
  {
    if (v17 != 1)
    {
      sub_226AC47B0(&v13[v15], &qword_27D7A8BE0, &unk_226D718F0);
      v18 = 1;
      return v18 & 1;
    }
  }

  else
  {
    if (v17 == 1)
    {
      (*(v5 + 8))(v13, v4);
      goto LABEL_7;
    }

    v19 = *(v5 + 32);
    v20 = v27;
    v19(v27, v13, v4);
    v19(v7, &v13[v15], v4);
    if (sub_226D6D40C())
    {
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v20, v4);
      v18 = 1;
      return v18 & 1;
    }

    v23 = sub_226D6D3FC();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v20, v4);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  if (*v28 != 1)
  {
LABEL_7:
    v18 = 0;
    return v18 & 1;
  }

  v18 = *v26 ^ 1;
  return v18 & 1;
}

uint64_t sub_226D36924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D3698C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226D36A1C(uint64_t a1)
{
  _s8MetadataV9CloudItemV6ObjectVMa_2(319);
  if (v1 <= 0x3F)
  {
    sub_226D36DD0(319, &qword_27D7A9410, _s8MetadataV9CloudItemV6ObjectVMa_2, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226D36C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_226D36CEC(uint64_t a1)
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    sub_226D6D4AC();
    if (v2 <= 0x3F)
    {
      sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D36DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_226D36E5C(uint64_t a1)
{
  sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226D36F30(uint64_t a1)
{
  sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    sub_226D6D52C();
    if (v2 <= 0x3F)
    {
      sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
      if (v3 <= 0x3F)
      {
        sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226D3707C(uint64_t a1)
{
  result = sub_226D6B49C();
  if (v2 <= 0x3F)
  {
    result = _s8MetadataV15CloudItemStatusOMa_2(319);
    if (v3 <= 0x3F)
    {
      result = _s8MetadataV15LocalItemStatusOMa_2(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226D37160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D37358()
{
  if (*(v0 + 24))
  {

    sub_226D6E80C();
  }

  *(v0 + 24) = 0;

  return swift_deallocClassInstance();
}

uint64_t sub_226D37410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v4[38] = swift_task_alloc();
  v5 = sub_226D6CD9C();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80);
  v4[42] = swift_task_alloc();
  v6 = sub_226D6EAEC();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3759C, 0, 0);
}

uint64_t sub_226D3759C()
{
  v1 = [objc_opt_self() defaultCenter];
  v0[46] = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  v2 = *MEMORY[0x277CBE288];
  v0[47] = *MEMORY[0x277CBE200];
  v0[48] = v2;
  v3 = sub_226D37DAC();
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_226D376DC;
  v5 = v0[42];
  v6 = v0[43];

  return MEMORY[0x282200308](v5, v6, v3);
}

uint64_t sub_226D376DC()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_226D37D20;
  }

  else
  {
    v2 = sub_226D377F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D3780C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

LABEL_12:

    v18 = *(v0 + 8);

    return v18();
  }

  (*(v3 + 32))(*(v0 + 328), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v12 = *(v0 + 360);
    v13 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = *(v0 + 312);

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
    goto LABEL_12;
  }

  v5 = Strong;
  v6 = sub_226D6CD8C();
  if (!v6)
  {
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    goto LABEL_17;
  }

  v7 = v6;
  *(v0 + 264) = sub_226D6E39C();
  *(v0 + 272) = v8;
  sub_226D6EE8C();
  if (!*(v7 + 16) || (v9 = sub_226C2FE4C(v0 + 96), (v10 & 1) == 0))
  {

    sub_226AE5030(v0 + 96);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    goto LABEL_17;
  }

  sub_226AC4708(*(v7 + 56) + 32 * v9, v0 + 136);
  sub_226AE5030(v0 + 96);

  if (!*(v0 + 160))
  {
LABEL_17:
    sub_226AC47B0(v0 + 136, &unk_27D7A8BB0, &unk_226D74340);
    v11 = 0;
    goto LABEL_18;
  }

  sub_226D37E04();
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 288);
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  v20 = sub_226D6CD8C();
  if (!v20)
  {
    *(v0 + 184) = 0u;
    *(v0 + 168) = 0u;
    goto LABEL_25;
  }

  v21 = v20;
  *(v0 + 248) = sub_226D6E39C();
  *(v0 + 256) = v22;
  sub_226D6EE8C();
  if (!*(v21 + 16) || (v23 = sub_226C2FE4C(v0 + 56), (v24 & 1) == 0))
  {

    sub_226AE5030(v0 + 56);
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    goto LABEL_25;
  }

  sub_226AC4708(*(v21 + 56) + 32 * v23, v0 + 168);
  sub_226AE5030(v0 + 56);

  if (!*(v0 + 192))
  {
LABEL_25:
    v28 = *(v0 + 304);
    sub_226AC47B0(v0 + 168, &unk_27D7A8BB0, &unk_226D74340);
    v29 = sub_226D6D1AC();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    goto LABEL_26;
  }

  v25 = *(v0 + 304);
  v26 = sub_226D6D1AC();
  v27 = swift_dynamicCast();
  (*(*(v26 - 8) + 56))(v25, v27 ^ 1u, 1, v26);
LABEL_26:
  swift_beginAccess();
  v30 = *(v5 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 32;

    do
    {
      v33 = *(v0 + 304);
      sub_226AE532C(v32, v0 + 16);
      v34 = *(v0 + 40);
      v35 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v34);
      (*(v35 + 8))(v11, v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v32 += 40;
      --v31;
    }

    while (v31);
  }

  v37 = *(v0 + 320);
  v36 = *(v0 + 328);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);

  (*(v37 + 8))(v36, v38);
  sub_226AC47B0(v39, &unk_27D7A62F8, &unk_226D73B70);
  v40 = sub_226D37DAC();
  v41 = swift_task_alloc();
  *(v0 + 392) = v41;
  *v41 = v0;
  v41[1] = sub_226D376DC;
  v42 = *(v0 + 336);
  v43 = *(v0 + 344);

  return MEMORY[0x282200308](v42, v43, v40);
}

uint64_t sub_226D37D20()
{
  *(v0 + 280) = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

unint64_t sub_226D37DAC()
{
  result = qword_28105F440;
  if (!qword_28105F440)
  {
    sub_226D6EAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F440);
  }

  return result;
}

unint64_t sub_226D37E04()
{
  result = qword_27D7A6F90;
  if (!qword_27D7A6F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6F90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RetryStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetryStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t BusinessQueryService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  return v0;
}

uint64_t sub_226D37EFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226D37F20, 0, 0);
}

uint64_t sub_226D37F20()
{
  v1 = [*(v0 + 64) emailAddressValue];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 emailAddressValue];
    v4 = [v3 simpleAddress];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v2 stringValue];
    }

    v11 = v6;
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);

    v14 = v11;
    sub_226D6E39C();
    v16 = v15;

    *(v0 + 80) = v16;
    sub_226AE532C(v13 + 16, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v17 = [v12 domain];
    if (v17)
    {
      v18 = v17;
      sub_226D6E39C();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    *(v0 + 88) = v20;
    v21 = [*(v0 + 64) highLevelDomain];
    if (v21)
    {
      v22 = v21;
      sub_226D6E39C();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v0 + 96) = v24;
    type metadata accessor for BusinessQueryService();
    v25 = swift_task_alloc();
    *(v0 + 104) = v25;
    *v25 = v0;
    v25[1] = sub_226D38234;

    JUMPOUT(0x226D39088);
  }

  v7 = *(v0 + 56);
  v8 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226D38234()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226D383A4;
  }

  else
  {
    v2 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D383A4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BusinessQueryService.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  return v0;
}

void sub_226D38444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 112);
  v11 = objc_allocWithZone(MEMORY[0x277CF3610]);
  v12 = sub_226D6E36C();
  v13 = [v11 initWithBusinessId_];

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_226D39620;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226D39850;
  aBlock[3] = &block_descriptor_18;
  v16 = _Block_copy(aBlock);

  [v10 fetchBusinessLogoForBusinessIdentifier:v13 completion:v16];
  _Block_release(v16);
}

uint64_t sub_226D3867C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (v19 - v6);
  if (a2)
  {
    v19[1] = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
    return sub_226D6E6EC();
  }

  else
  {
    if (a1)
    {
      v10 = [a1 businessId];
      v11 = sub_226D6E39C();
      v13 = v12;

      v14 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
      v15 = *(v14 + 20);
      v16 = [a1 logoURL];
      sub_226D6D14C();

      v17 = sub_226D6D1AC();
      (*(*(v17 - 8) + 56))(v7 + v15, 0, 1, v17);
      *v7 = v11;
      v7[1] = v13;
      (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    }

    else
    {
      v18 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
    return sub_226D6E6FC();
  }
}

void sub_226D38880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a6;
  v26 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = objc_allocWithZone(MEMORY[0x277CF35F0]);

  v18 = sub_226D39460(a2, a3, v24, a5, v25, a7);
  v19 = *(a8 + 112);
  (*(v14 + 16))(v16, v26, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = swift_allocObject();
  (*(v14 + 32))(v21 + v20, v16, v13);
  aBlock[4] = sub_226D39530;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226D39850;
  aBlock[3] = &block_descriptor_19;
  v22 = _Block_copy(aBlock);

  [v19 fetchBusinessMetadataForEmailIdentifier:v18 completion:v22];
  _Block_release(v22);
}

uint64_t sub_226D38ACC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v27 - v8);
  if (a2)
  {
    v27[1] = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
    return sub_226D6E6EC();
  }

  else
  {
    if (a1)
    {
      v12 = a1;
      v13 = [v12 companyId];
      v14 = sub_226D6E39C();
      v16 = v15;

      v17 = [v12 businessId];
      v18 = sub_226D6E39C();
      v20 = v19;

      v21 = [v12 logoURL];
      if (v21)
      {
        v22 = v21;
        sub_226D6D14C();

        v23 = sub_226D6D1AC();
        (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
      }

      else
      {
        v25 = sub_226D6D1AC();
        (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      }

      *v9 = v14;
      v9[1] = v16;
      v9[2] = v18;
      v9[3] = v20;
      v26 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
      sub_226B60108(v6, v9 + *(v26 + 24));

      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    }

    else
    {
      v24 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
    return sub_226D6E6FC();
  }
}

uint64_t BusinessQueryService.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226D38E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_226D38E2C, v5, 0);
}

uint64_t sub_226D38E2C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_226D393F8();
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0);
  *v6 = v0;
  v6[1] = sub_226D38F4C;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, v1, v4, 0xD000000000000029, 0x8000000226D88390, sub_226D39590, v5, v7);
}

uint64_t sub_226D38F4C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_226CFDD74, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_226D39088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *v7;
  v8[8] = a7;
  v8[9] = v9;
  return MEMORY[0x2822009F8](sub_226D390B8, v9, 0);
}

uint64_t sub_226D390B8()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = sub_226D393F8();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  *(v5 + 64) = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8);
  *v8 = v0;
  v8[1] = sub_226D391E4;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, v1, v4, 0xD00000000000003ALL, 0x8000000226D882F0, sub_226D3944C, v5, v9);
}

uint64_t sub_226D391E4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](sub_226D39320, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_226D39320()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_226D393F8()
{
  result = qword_27D7A94B8;
  if (!qword_27D7A94B8)
  {
    type metadata accessor for BusinessQueryService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A94B8);
  }

  return result;
}

id sub_226D39460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_226D6E36C();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_226D6E36C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_226D6E36C();

LABEL_6:
  v12 = [v6 initWithEmail:v9 fullDomain:v10 topLevelDomain:v11];

  return v12;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_3(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_226D39648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void sub_226D39728(uint64_t a1)
{
  sub_226CFB824(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226D397CC(uint64_t a1)
{
  sub_226CFB824(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226D39854(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = type metadata accessor for OrderRefreshTask(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3991C, 0, 0);
}

uint64_t sub_226D3991C()
{
  v43 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = sub_226D6E07C();
  *(v0 + 168) = __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226D3C0EC(v3, v1, type metadata accessor for OrderRefreshTask);
  sub_226D3C0EC(v3, v2, type metadata accessor for OrderRefreshTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v10 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v11 = sub_226D6F1CC();
    v13 = v12;
    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
    v14 = sub_226AC4530(v11, v13, &v42);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_226D6D1AC();
    sub_226D3C0A4(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = sub_226D6F1CC();
    v17 = v16;
    sub_226D3C154(v9, type metadata accessor for OrderRefreshTask);
    v18 = sub_226AC4530(v15, v17, &v42);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_226AB4000, v5, v6, "Refreshing order %s from web service %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v40, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {

    sub_226D3C154(v9, type metadata accessor for OrderRefreshTask);
    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
  }

  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  sub_226D3C0EC(v20, *(v0 + 144), type metadata accessor for OrderRefreshTask);
  sub_226D3C0EC(v20, v19, type metadata accessor for OrderRefreshTask);
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9EC();
  v23 = os_log_type_enabled(v21, v22);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  if (v23)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v26 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v28 = sub_226D6F1CC();
    v30 = v29;
    sub_226D3C154(v24, type metadata accessor for OrderRefreshTask);
    v31 = sub_226AC4530(v28, v30, &v42);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_226D6D1AC();
    sub_226D3C0A4(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = sub_226D6F1CC();
    v34 = v33;
    sub_226D3C154(v25, type metadata accessor for OrderRefreshTask);
    v35 = sub_226AC4530(v32, v34, &v42);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_226AB4000, v21, v22, "Fetching order %s from web service %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
  }

  else
  {

    sub_226D3C154(v25, type metadata accessor for OrderRefreshTask);
    sub_226D3C154(v24, type metadata accessor for OrderRefreshTask);
  }

  v36 = swift_task_alloc();
  *(v0 + 176) = v36;
  *(v36 + 16) = *(v0 + 104);
  v41 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v37 = swift_task_alloc();
  *(v0 + 184) = v37;
  *v37 = v0;
  v37[1] = sub_226D39F18;
  v38 = MEMORY[0x277CC7EB8];

  return v41(v0 + 56, &unk_226D7DB20, v36, v38);
}

uint64_t sub_226D39F18()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_226D3A2A0;
  }

  else
  {

    v2 = sub_226D3A034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D3A034()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_226D3A0E4;
  v3 = *(v0 + 96);

  return sub_226D3A9B8(v0 + 16, v3);
}

uint64_t sub_226D3A0E4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_226D3A548;
  }

  else
  {
    v2 = sub_226D3A1F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D3A1F8()
{
  sub_226C864F4(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D3A2A0()
{
  v19 = v0;

  v1 = v0[24];
  sub_226D3C0EC(v0[14], v0[16], type metadata accessor for OrderRefreshTask);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    sub_226D3C154(v6, type metadata accessor for OrderRefreshTask);
    v13 = sub_226AC4530(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Error refreshing order %s with error %@", v7, 0x16u);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {

    sub_226D3C154(v6, type metadata accessor for OrderRefreshTask);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_226D3A548()
{
  v19 = v0;
  sub_226C864F4((v0 + 2));
  v1 = v0[26];
  sub_226D3C0EC(v0[14], v0[16], type metadata accessor for OrderRefreshTask);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    sub_226D3C154(v6, type metadata accessor for OrderRefreshTask);
    v13 = sub_226AC4530(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Error refreshing order %s with error %@", v7, 0x16u);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {

    sub_226D3C154(v6, type metadata accessor for OrderRefreshTask);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t type metadata accessor for OrderRefreshTask(uint64_t a1)
{
  result = qword_27D7A9500;
  if (!qword_27D7A9500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3A83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *(type metadata accessor for OrderRefreshTask(0) + 24);
  v8 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_226C6FBDC;

  return v8(v3 + 16, a3 + v5);
}

uint64_t sub_226D3A90C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226D3A83C(a1, v5, v4);
}

uint64_t sub_226D3A9B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3[5] = swift_task_alloc();
  type metadata accessor for OrderRefreshTask(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3AA84, 0, 0);
}

uint64_t sub_226D3AA84()
{
  v29 = v0;
  v1 = v0[2];
  v2 = *v1;
  if (*v1)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_task_alloc();
    v6 = *(v1 + 1);
    v7 = *(v1 + 3);
    v0[7] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v6;
    *(v5 + 48) = v7;
    *(v5 + 64) = v4;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_226D3AE64;

    return MEMORY[0x2821170B8]();
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v9 = v0[6];
    v10 = v0[4];
    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F5C0);
    sub_226D3C0EC(v10, v9, type metadata accessor for OrderRefreshTask);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9EC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[6];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_226D6B49C();
      sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v18 = sub_226D6F1CC();
      v20 = v19;
      sub_226D3C154(v15, type metadata accessor for OrderRefreshTask);
      v21 = sub_226AC4530(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_226AB4000, v12, v13, "Order %s not modified since last fetch", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    else
    {

      sub_226D3C154(v15, type metadata accessor for OrderRefreshTask);
    }

    v22 = v0[5];
    v23 = sub_226D6D4AC();
    v27 = *(v0 + 3);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    v24 = swift_task_alloc();
    v24[1] = vextq_s8(v27, v27, 8uLL);
    v24[2].i64[0] = v22;
    sub_226D6EB7C();

    sub_226AC47B0(v22, &qword_27D7A8BE0, &unk_226D718F0);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_226D3AE64()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_226D3AFEC;
  }

  else
  {

    v2 = sub_226D3AF80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D3AF80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D3AFEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D3B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a2;
  v8[10] = type metadata accessor for OrderRefreshTask(0);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3B100, 0, 0);
}

uint64_t sub_226D3B100()
{
  v25 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226D3C0EC(v2, v1, type metadata accessor for OrderRefreshTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
    v13 = sub_226AC4530(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Updating content for order %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
  }

  v14 = *(v0 + 72);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = swift_task_alloc();
  v18 = *(v0 + 40);
  v19 = *(v0 + 56);
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  *(v17 + 56) = v19;
  *(v17 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();
  v20 = *(v0 + 80);
  v21 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_1((v21 + *(v20 + 28)), *(v21 + *(v20 + 28) + 24));
  sub_226D69AEC();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_226D3B41C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v82 = a6;
  v83 = a7;
  v84 = a5;
  v85 = a3;
  v86 = a4;
  v87 = a2;
  v102 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v11);
  v13 = &v71[-v12];
  v14 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated - 8);
  v19 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  refreshed = type metadata accessor for OrderRefreshTask(0);
  MEMORY[0x28223BE20](refreshed - 8);
  v22 = &v71[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_226D6E83C();
  if (!v8)
  {
    v79 = v22;
    v80 = v16;
    v81 = v19;
    v76 = v11;
    v77 = v13;
    v78 = a8;
    sub_226D6751C();
    v24 = sub_226D6745C();
    if (!v24)
    {
      sub_226C5DB48();
      swift_allocError();
      *v56 = 0;
      return swift_willThrow();
    }

    v74 = 0;
    v75 = v24;
    v73 = sub_226B31FA8();
    v25 = type metadata accessor for WalletMessageUpdater();
    v26 = swift_allocObject();
    v27 = sub_226D69BFC();
    v28 = MEMORY[0x22AA85C90]();
    *(&v99 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v100[0] = &off_283A6D820;
    sub_226C02324(v100 + 8);
    v29 = sub_226D6B5EC();
    v30 = MEMORY[0x277CC7F68];
    v96 = v29;
    v97 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v95);
    sub_226D6B58C();
    v93 = v29;
    v94 = v30;
    __swift_allocate_boxed_opaque_existential_1(&v92);
    sub_226D6B5AC();
    v31 = sub_226D6827C();
    v90 = v25;
    v91 = sub_226D3C0A4(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    *&v89 = v26;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v95, inited + 232);
    sub_226AC484C(&v92, inited + 272);
    v33 = MEMORY[0x277CC7238];
    *(inited + 16) = v31;
    *(inited + 24) = v33;
    *(inited + 72) = v100[4];
    *(inited + 88) = v101;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v73;
    sub_226AC484C(&v89, inited + 112);
    v34 = v100[2];
    *(inited + 40) = v100[3];
    v35 = v98;
    *(inited + 168) = v99;
    v36 = v100[1];
    *(inited + 184) = v100[0];
    *(inited + 200) = v36;
    *(inited + 216) = v34;
    *(inited + 32) = v28;
    v73 = inited + 32;
    v37 = MEMORY[0x277CC79A8];
    *(inited + 56) = v27;
    *(inited + 64) = v37;
    *(inited + 152) = v35;
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v38 = sub_226D6E07C();
    __swift_project_value_buffer(v38, qword_28105F5C0);
    v39 = v79;
    sub_226D3C0EC(a1, v79, type metadata accessor for OrderRefreshTask);
    v40 = sub_226D6E05C();
    v41 = sub_226D6E9EC();
    v42 = os_log_type_enabled(v40, v41);
    v44 = v80;
    v43 = v81;
    if (v42)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v88[0] = v46;
      *v45 = 136315138;
      sub_226D6B49C();
      v72 = v41;
      v47 = v39;
      sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v48 = v44;
      v49 = sub_226D6F1CC();
      v51 = v50;
      sub_226D3C154(v47, type metadata accessor for OrderRefreshTask);
      v52 = v49;
      v44 = v48;
      v53 = sub_226AC4530(v52, v51, v88);

      v54 = v45;
      v43 = v81;
      *(v54 + 1) = v53;
      v55 = v54;
      _os_log_impl(&dword_226AB4000, v40, v72, "Updating content for order %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      MEMORY[0x22AA8BEE0](v55, -1, -1);
    }

    else
    {

      sub_226D3C154(v39, type metadata accessor for OrderRefreshTask);
    }

    v57 = v74;
    v58 = v75;
    sub_226BBCB6C(v75, v85, v86, v84, 0, v87, v43);
    if (v57)
    {
      goto LABEL_10;
    }

    v59 = [v58 requestAttemptCount];
    type metadata accessor for OrderImportAnalyticsEventsBuilder();
    v60 = swift_initStackObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = 2;
    v86 = sub_226BB3780(v43);
    if (v83)
    {
      v61 = sub_226D6E36C();
    }

    else
    {
      v61 = 0;
    }

    v62 = v75;
    [v75 setLastModifiedValue_];

    [v62 setRequestAttemptCount_];
    [v62 setLastRequestAttemptDate_];
    v63 = v87;
    if ([v87 hasChanges])
    {
      v88[0] = 0;
      if (![v63 save_])
      {
        v70 = v88[0];

        sub_226D6D04C();

        swift_willThrow();
        sub_226D3C154(v43, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
LABEL_10:
        [v87 rollback];
        swift_willThrow();

        swift_setDeallocating();
        sub_226AC47B0(v73, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        return __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
      }

      v64 = qword_281061980;
      v65 = v88[0];
      if (v64 != -1)
      {
        swift_once();
      }

      v66 = v76;
      v67 = __swift_project_value_buffer(v76, qword_281064538);
      v68 = v77;
      sub_226AE532C(v67, v77);
      sub_226D3C0EC(v67 + *(v66 + 48), v68 + *(v66 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
      sub_226BB36BC(v68 + *(v66 + 48), v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      sub_226BE7E54(v43, v44);
      sub_226D3C154(v44, type metadata accessor for OrderNotificationCenter.Continuation);
      v69 = v75;
      [v87 refreshObject:v75 mergeChanges:0];

      result = sub_226D3C154(v43, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    }

    else
    {
      sub_226D3C154(v43, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    }

    *v78 = v86;
  }

  return result;
}

void sub_226D3BCF0(uint64_t a1, void *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  sub_226D6E83C();
  if (!v3)
  {
    sub_226D6751C();
    v9 = sub_226D6745C();
    v10 = v9;
    if (v9)
    {
      [v9 setRequestAttemptCount_];
      sub_226AF265C(a3, v8);
      v11 = sub_226D6D4AC();
      v12 = *(v11 - 8);
      v13 = 0;
      if ((*(v12 + 48))(v8, 1, v11) != 1)
      {
        v13 = sub_226D6D3EC();
        (*(v12 + 8))(v8, v11);
      }

      [v10 setLastRequestAttemptDate_];

      if (![a2 hasChanges])
      {
        goto LABEL_9;
      }

      v17[0] = 0;
      if ([a2 save_])
      {
        v14 = v17[0];
        [a2 refreshObject:v10 mergeChanges:0];
LABEL_9:

        return;
      }

      v16 = v17[0];
      sub_226D6D04C();

      swift_willThrow();
      [a2 rollback];
      swift_willThrow();
    }

    else
    {
      sub_226C5DB48();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_226D3BFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226AD827C;

  return sub_226D3B060(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_226D3C0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D3C0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D3C154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D3C1DC(uint64_t a1)
{
  result = sub_226D6B49C();
  if (v2 <= 0x3F)
  {
    result = sub_226D6D1AC();
    if (v3 <= 0x3F)
    {
      result = sub_226D6B03C();
      if (v4 <= 0x3F)
      {
        result = sub_226D3C290();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_226D3C290()
{
  result = qword_27D7A9510;
  if (!qword_27D7A9510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A9510);
  }

  return result;
}

PKPaymentPass_optional __swiftcall BankConnectPaymentPassDataSource.paymentPass(with:)(Swift::String with)
{
  v2 = *v1;
  v3 = sub_226D6E36C();
  v4 = [v2 passWithFPANIdentifier_];

  v6 = v4;
  result.value.super.super.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t BankConnectPaymentPassDataSource.paymentPasses()()
{
  v1 = [*v0 passesOfType_];
  sub_226D3C4EC();
  v2 = sub_226D6E5EC();

  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_226D6EDFC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AA8AFD0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 paymentPass];

    ++v4;
    if (v9)
    {
      MEMORY[0x22AA8A610]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v5 = v11;
      v4 = v8;
    }
  }

  return v5;
}

unint64_t sub_226D3C4EC()
{
  result = qword_27D7A9518;
  if (!qword_27D7A9518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A9518);
  }

  return result;
}

FinanceDaemon::BankConnectPaymentPassDataSource __swiftcall BankConnectPaymentPassDataSourceProvider.makePaymentPassDataSource()()
{
  v1 = v0;
  result.passLibrary.super.isa = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1->passLibrary.super.isa = result.passLibrary.super.isa;
  return result;
}

Swift::Void __swiftcall BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(Swift::Bool enabled, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *v2;
  v7 = sub_226D6E36C();
  v8 = [v6 passWithFPANIdentifier_];

  if (v8 && (oslog = [v8 uniqueID], v8, oslog))
  {
    v9 = sub_226D6E39C();
    v11 = v10;
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_27D7A7D10);

    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 67109378;
      *(v15 + 4) = enabled;
      *(v15 + 8) = 2080;
      v17 = sub_226AC4530(v9, v11, &v27);

      *(v15 + 10) = v17;
      _os_log_impl(&dword_226AB4000, v13, v14, "Calling setLiveRenderingEnabled(%{BOOL}d, %s)", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {
    }

    [v6 setLiveRenderingEnabled:enabled forPassUniqueID:{oslog, oslog}];
  }

  else
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_27D7A7D10);

    osloga = sub_226D6E05C();
    v19 = sub_226D6E9CC();

    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315394;
      if (enabled)
      {
        v22 = 0x656C62616E65;
      }

      else
      {
        v22 = 0x656C6261736964;
      }

      if (enabled)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_226AC4530(v22, v23, &v27);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_226AC4530(countAndFlagsBits, object, &v27);
      _os_log_impl(&dword_226AB4000, osloga, v19, "Failed to %s dynamic card art, payment pass not found for fpanID %s.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_226D6E36C();
  v6 = [v4 passWithFPANIdentifier_];

  if (v6)
  {
    v7 = [v6 uniqueID];

    if (v7)
    {
      v8 = sub_226D6E39C();
      v10 = v9;
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_27D7A7D10);

      v12 = sub_226D6E05C();
      v13 = sub_226D6E9EC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v26 = v15;
        *v14 = 136315138;
        v16 = sub_226AC4530(v8, v10, &v26);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_226AB4000, v12, v13, "Calling isDynamicCardArtEnabled(%s)", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
      }

      else
      {
      }

      v22 = [v4 dynamicStateForPassUniqueID_];

      if (v22)
      {
        v23 = [v22 liveRender];
        if (v23)
        {
          v24 = v23;
          LOBYTE(v4) = [v23 enabled];

          return v4 & 1;
        }
      }

      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v17 = sub_226D6E07C();
  __swift_project_value_buffer(v17, qword_27D7A7D10);

  v18 = sub_226D6E05C();
  v19 = sub_226D6E9CC();

  if (os_log_type_enabled(v18, v19))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(countAndFlagsBits, object, &v26);
    _os_log_impl(&dword_226AB4000, v18, v19, "Failed to get dynamic card art status, payment pass not found for fpanID %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226CCE0AC();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return v4 & 1;
}

id sub_226D3CC94@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask(uint64_t a1)
{
  result = qword_27D7A9520;
  if (!qword_27D7A9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3CD78(uint64_t a1)
{
  result = sub_226D6D4AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226D3CDF4(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6A30C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v8 = sub_226D6788C();
  if (!v2)
  {
    v9 = v8;
    if (v8)
    {
      (*(v5 + 104))(v7, *MEMORY[0x277CC7B68], v4);
      sub_226D678DC();
      v12[0] = 0;
      if ([a2 save_])
      {
        v10 = v12[0];
      }

      else
      {
        v11 = v12[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }
}

double sub_226D3CF90@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226D3CFE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v0 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226D70840;
  swift_storeEnumTagMultiPayload();
  v3 = sub_226B1ED68(v2);
  swift_setDeallocating();
  sub_226D3D490(v2 + v1);
  swift_deallocClassInstance();
  return v3;
}

uint64_t sub_226D3D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_226D6D4AC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_226D3D1AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226D3D1CC, 0, 0);
}

uint64_t sub_226D3D1CC()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = sub_226D676AC();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D3D2EC(uint64_t a1)
{
  result = sub_226D3D42C(&qword_27D7A7228, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask, &unk_226D7DCF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D3D3D4(uint64_t a1)
{
  result = sub_226D3D42C(&qword_27D7A9530, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask, &unk_226D7DCAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D3D42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D3D490(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D3D4EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  sub_226AC47B0(v0 + 80, &qword_27D7A6910, &unk_226D721C0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 240));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 280));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));

  sub_226AC47B0(v0 + 416, &unk_27D7A7660, &unk_226D7B420);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 464));

  return v0;
}

uint64_t sub_226D3D5B4()
{
  sub_226D3D4EC();

  return swift_deallocClassInstance();
}

uint64_t sub_226D3D614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D3D65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226D3D740@<X0>(__int16 *a1@<X0>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  if (*a1 < 1)
  {
    v25 = v13;
    v19 = type metadata accessor for TokenBucket.State(0);
    sub_226AF265C(a1 + *(v19 + 20), v8);
    if ((*(v25 + 48))(v8, 1, v9) == 1)
    {
      sub_226B905C4(v8);
      return (*(v25 + 56))(a3, 1, 1, v9);
    }

    else
    {
      v20 = *(v25 + 32);
      v20(v16, v8, v9);
      sub_226D6D3DC();
      v21 = sub_226D6D3FC();
      v22 = *(v25 + 8);
      v25 += 8;
      v22(v16, v9);
      v23 = (v25 + 48);
      if (v21)
      {
        v20(a3, v11, v9);
        return (*v23)(a3, 0, 1, v9);
      }

      else
      {
        v22(v11, v9);
        return (*v23)(a3, 1, 1, v9);
      }
    }
  }

  else
  {
    v17 = *(v13 + 56);

    return v17(a3, 1, 1, v9, v14);
  }
}

uint64_t type metadata accessor for TokenBucket.State(uint64_t a1)
{
  result = qword_27D7A9538;
  if (!qword_27D7A9538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226D3DA94(uint64_t a1)
{
  sub_226B20350(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226D3DB10(char *a1, uint64_t a2, __int16 a3, double a4)
{
  LOWORD(v5) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_226D6D4AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for TokenBucket.State(0) + 20);
  sub_226AF265C(&a1[v18], v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_226B905C4(v13);
    *a1 = v5;
    sub_226B905C4(&a1[v18]);
    (*(v15 + 16))(&a1[v18], a2, v14);
    (*(v15 + 56))(&a1[v18], 0, 1, v14);
    return;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_226D6D3BC();
  v20 = v19 * a4;
  v21 = 0.0;
  if (v19 * a4 >= 0.0)
  {
    v21 = 32767.0;
    if (v20 <= 32767.0)
    {
      if (v20 <= -32769.0)
      {
        __break(1u);
      }

      else
      {
        v21 = v19 * a4;
        if (v20 < 32768.0)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

LABEL_7:
  v22 = *a1;
  v23 = v5 - *a1;
  if ((v5 - *a1) != v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v21;
  if (v21 > v23 || (v5 = v24 + v22, v5 == (v24 + v22)))
  {
    *a1 = v5;
    sub_226D6D3DC();
    (*(v15 + 8))(v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_226B3E298(v10, &a1[v18]);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t BankConnectServiceImplementation.loadTransactions(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226D3DF2C;

  return sub_226C00808(v7, a1, a2);
}

uint64_t sub_226D3DF2C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B40CFC;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadTransactions(for:)(v4);
  }
}

uint64_t BankConnectServiceImplementation.loadTransactions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2[8] = swift_task_alloc();
  v4 = sub_226D6BE1C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3E2DC, 0, 0);
}

uint64_t sub_226D3E2DC()
{
  v39 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v3 + 16);
  *(v0 + 176) = v7;
  *(v0 + 184) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v8 = sub_226D676AC();
  *(v0 + 192) = v8;
  sub_226D6D46C();
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v1;
  v9[4] = v4;
  sub_226D6EB7C();

  if (*(v0 + 264) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 136);
    v13 = sub_226D6E07C();
    *(v0 + 200) = __swift_project_value_buffer(v13, qword_27D7A7D10);
    v7(v10, v11, v12);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9AC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 160);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v20 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v21 = sub_226D6F1CC();
      v23 = v22;
      v24 = *(v19 + 8);
      v24(v17, v18);
      v25 = sub_226AC4530(v21, v23, &v38);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226AB4000, v14, v15, "Fetching transactions (refresh) for %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {

      v24 = *(v19 + 8);
      v24(v17, v18);
    }

    *(v0 + 208) = v24;
    v32 = sub_226D6B97C();
    v34 = v33;
    *(v0 + 216) = v33;
    v35 = swift_task_alloc();
    *(v0 + 224) = v35;
    *v35 = v0;
    v35[1] = sub_226D3E7AC;
    v36 = *(v0 + 120);

    return sub_226D3F680(v36, v32, v34);
  }

  else
  {
    v26 = *(v0 + 104);

    v27 = *(v0 + 168);
    v28 = *(v0 + 144);
    v29 = *(v0 + 136);
    (*(v26 + 8))(*(v0 + 128), *(v0 + 96));
    (*(v28 + 8))(v27, v29);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_226D3E7AC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_226D3EDC4;
  }

  else
  {

    v2 = sub_226D3E8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D3E8C8()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v6 = v0[6];
  v16 = v0[5];
  v17 = v0[7];
  v7 = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_226B41FC0();
  v18 = swift_allocObject();
  sub_226B42014(v7, v18 + 16);
  v8 = sub_226D6BE3C();
  swift_allocObject();
  v9 = sub_226D6BDFC();
  v0[30] = v9;
  v0[2] = v9;
  (*(v3 + 16))(v1, v2, v4);
  (*(v3 + 56))(v5, 1, 1, v4);
  sub_226D6BE0C();
  (*(v6 + 104))(v17, *MEMORY[0x277CC6D38], v16);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_226D3EA98;
  v11 = v0[21];
  v12 = v0[11];
  v13 = v0[7];
  v14 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A688](v11, v12, v13, v8, v14);
}

uint64_t sub_226D3EA98()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_226D3EF08;
  }

  else
  {
    v6 = sub_226D3EC80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D3EC80()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[4];
  v5 = *(v0[13] + 8);
  v5(v0[15], v0[12]);
  sub_226D3F4D4(v4, v2, v3);

  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[17];
  v5(v0[16], v0[12]);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226D3EDC4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[4];

  sub_226D3F4D4(v4, v2, v3);

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[17];
  (*(v0[13] + 8))(v0[16], v0[12]);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226D3EF08()
{
  v37 = v0;
  v1 = *(v0 + 256);
  (*(v0 + 176))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v33 = *(v0 + 208);
    v35 = *(v0 + 256);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v7 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v33(v5, v6);
    v13 = sub_226AC4530(v10, v12, &v36);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v35;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to fetch transactions (refresh) for %s with: %@.", v7, 0x16u);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 152);
    v18 = *(v0 + 136);

    v16(v17, v18);
  }

  v19 = *(v0 + 256);
  v34 = *(v0 + 192);
  v20 = *(v0 + 168);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 32);
  v26 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v27 = v19;
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277CC7AB0], v26);
  swift_willThrow();
  (*(v24 + 8))(v22, v23);
  sub_226D3F4D4(v25, v20, v21);

  v28 = *(v0 + 168);
  v29 = *(v0 + 144);
  v30 = *(v0 + 136);
  (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
  (*(v29 + 8))(v28, v30);

  v31 = *(v0 + 8);

  return v31();
}

void sub_226D3F2E4(void *a1@<X0>, _BYTE *a4@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v17];

  v9 = v17[0];
  if (v8)
  {
    sub_226D69F0C();
    v10 = v9;
    v11 = sub_226D69D9C();
    if (v4)
    {

LABEL_4:
      *a4 = 1;
      return;
    }

    v13 = v11;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (sub_226D69EAC())
    {
      v14 = sub_226D6D3EC();
      [v13 setLastTransactionsRefreshDate_];

      v17[0] = 0;
      if ([a1 save_])
      {
        v15 = v17[0];

        goto LABEL_4;
      }

      v16 = v17[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    else
    {

      *a4 = 0;
    }
  }

  else
  {
    v12 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226D3F4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v8 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v8 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v9 = sub_226D6B97C();
  v11 = v10;
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000030;
  v14[3] = 0x8000000226D885E0;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v13;
  sub_226D69AFC();
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_226D3F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3F744, 0, 0);
}

uint64_t sub_226D3F744()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
  sub_226D6BAAC();
  v6 = sub_226D676AC();
  v0[9] = v6;

  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);

  v6;
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_226D6D4AC();
  *v8 = v0;
  v8[1] = sub_226C00A4C;
  v10 = v0[8];
  v11 = v0[2];

  return MEMORY[0x28210EE50](v11, v10, sub_226D3FC18, v7, v9);
}

uint64_t sub_226D3F8C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v10 = sub_226D683EC();
  if (v3)
  {
  }

  else if (v10)
  {
    v21 = v10;
    sub_226D6D46C();
    [v21 maxAgeTransactionsRefreshRequest];
    sub_226D6D3DC();

    return (*(v7 + 8))(v9, v6);
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_27D7A7D10);

  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_226AC4530(a1, a2, &v22);
    _os_log_impl(&dword_226AB4000, v12, v13, "Failed to fetch ManagedInstitution for: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v16 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  v18 = v17;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_226D6EEFC();

  v22 = 0xD000000000000024;
  v23 = 0x8000000226D88620;
  MEMORY[0x22AA8A510](a1, a2);
  MEMORY[0x22AA8A510](46, 0xE100000000000000);
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277CC7AC0], v16);
  return swift_willThrow();
}

unint64_t sub_226D3FC38(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000019;
      v6 = [a1 description];
      v7 = sub_226D6E39C();
      v9 = v8;

      MEMORY[0x22AA8A510](v7, v9);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v4 = [a2 description];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000021;
      v4 = [a1 description];
      goto LABEL_10;
    }

    if (a3 != 1)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000018;
      v11 = [a1 description];
      v12 = sub_226D6E39C();
      v14 = v13;

      MEMORY[0x22AA8A510](v12, v14);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v4 = [a2 description];
      goto LABEL_10;
    }
  }

  sub_226D6EEFC();

  v20 = 0xD000000000000019;
  v4 = [a1 description];
LABEL_10:
  v15 = v4;
  v16 = sub_226D6E39C();
  v18 = v17;

  MEMORY[0x22AA8A510](v16, v18);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return v20;
}

uint64_t sub_226D3FF90(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 != 3)
      {
        return 0;
      }

LABEL_15:
      sub_226B509B0();
      if (sub_226D6EC3C())
      {
        return sub_226D6EC3C() & 1;
      }

      return 0;
    }

    if (a3 == 4)
    {
      if (a6 != 4)
      {
        return 0;
      }
    }

    else if (a6 != 5)
    {
      return 0;
    }

LABEL_18:
    sub_226B509B0();
    return sub_226D6EC3C() & 1;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a6 == 2)
  {
    goto LABEL_15;
  }

  return 0;
}

void sub_226D4009C(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D673EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6A43C();
  v8 = sub_226D6A40C();
  if (!v2)
  {
    v9 = v8;
    sub_226D6739C();

    (*(v5 + 8))(v7, v4);
    v13[0] = 0;
    v10 = [a2 save_];
    if (v10)
    {
      v11 = v13[0];
    }

    else
    {
      v12 = v13[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D403A4(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D68E6C();
  v4 = sub_226D68E4C();
  if (!v2)
  {
    v5 = v4;
    sub_226D6A43C();
    v6 = v5;
    v7 = a2;

    v10[0] = 0;
    if ([v7 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D404B8(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v5 = sub_226D6A40C();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6A40C();
    sub_226D6A42C();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D406DC(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v5 = sub_226D6A40C();
  if (!v3)
  {
    v6 = v5;
    sub_226D68E6C();
    v7 = sub_226D68E4C();
    sub_226D6A41C();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D40918(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_226D6B9BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68E6C();
  v11 = sub_226D68E4C();
  if (!v2)
  {
    v12 = v11;
    sub_226D69F0C();
    sub_226D68E1C();
    v13 = sub_226D69D9C();
    (*(v8 + 8))(v10, v7);
    if (v13)
    {
      [v13 setExternalAccountId_];
      v14 = sub_226D68CBC();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      sub_226D69E6C();
    }

    [a2 deleteObject_];
    v17[0] = 0;
    if ([a2 save_])
    {
      v15 = v17[0];
    }

    else
    {
      v16 = v17[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D40BBC(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v4 = sub_226D6A40C();
  if (!v2)
  {
    v5 = v4;
    [a2 deleteObject_];
    v8[0] = 0;
    if ([a2 save_])
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226D40CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226D40D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_226D40D60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = [v4 entity];

  v6 = [v5 name];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = sub_226D6E39C();
  v9 = v8;

  if (v7 != 0x646572436B6E6142 || v9 != 0xEE006C6169746E65)
  {
    if ((sub_226D6F21C() & 1) == 0)
    {

      goto LABEL_18;
    }

    if (v7 == 0xD000000000000013 && 0x8000000226D88750 == v9)
    {

LABEL_14:
      v13 = a1;

      return sub_226D40F3C(v13, a2);
    }
  }

  v12 = sub_226D6F21C();

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = type metadata accessor for BankCredentialMappingModel.Change(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, 1, 1, v15);
}

uint64_t sub_226D40F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v42 - v4;
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankCredentialMappingModel.Change(0);
  v45 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 changedObjectID];
  *&v11[*(v8 + 24)] = v12;
  v44 = v12;
  v13 = [v12 entityName];
  v14 = sub_226D6E39C();
  v16 = v15;

  v17 = v14 == 0x646572436B6E6142 && v16 == 0xEE006C6169746E65;
  if (v17 || (sub_226D6F21C() & 1) != 0)
  {

    v18 = 1;
    v19 = 1;
  }

  else
  {
    if (v14 == 0xD000000000000013 && 0x8000000226D88750 == v16)
    {
    }

    else
    {
      v35 = sub_226D6F21C();

      if ((v35 & 1) == 0)
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v41 = sub_226D6E07C();
        __swift_project_value_buffer(v41, qword_28105F628);
        v37 = sub_226D6E05C();
        v38 = sub_226D6E9CC();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_37;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "Change was not for a cloud or local bank credential";
LABEL_36:
        _os_log_impl(&dword_226AB4000, v37, v38, v40, v39, 2u);
        MEMORY[0x22AA8BEE0](v39, -1, -1);
LABEL_37:

        return (*(v45 + 56))(v46, 1, 1, v8);
      }
    }

    v18 = 0;
    v19 = 0;
  }

  v11[*(v8 + 20)] = v18;
  v20 = [a1 changeType];
  if (!v20)
  {

    (*(v6 + 56))(v11, 1, 2, v5);
    goto LABEL_11;
  }

  if (v20 == 1)
  {

    (*(v6 + 56))(v11, 2, 2, v5);
LABEL_11:
    v21 = v46;
    sub_226D4439C(v11, v46, type metadata accessor for BankCredentialMappingModel.Change);
    (*(v45 + 56))(v21, 0, 1, v8);
    return sub_226D44404(v11, type metadata accessor for BankCredentialMappingModel.Change);
  }

  if (v20 == 2)
  {
    if (v19)
    {
      v23 = 0xE200000000000000;
    }

    else
    {
      v23 = 0x8000000226D86940;
    }

    v24 = [a1 tombstone];
    if (v24)
    {
      if (v19)
      {
        v25 = 25705;
      }

      else
      {
        v25 = 0xD000000000000014;
      }

      v26 = v24;
      v27 = sub_226D6E2BC();

      v47 = v25;
      v48 = v23;
      sub_226D6EE8C();
      if (*(v27 + 16) && (v28 = sub_226C2FE4C(v49), (v29 & 1) != 0))
      {
        sub_226AC4708(*(v27 + 56) + 32 * v28, v50);
        sub_226AE5030(v49);

        v30 = v43;
        v31 = swift_dynamicCast();
        v32 = *(v6 + 56);
        v32(v30, v31 ^ 1u, 1, v5);
        if ((*(v6 + 48))(v30, 1, v5) != 1)
        {

          v33 = *(v6 + 32);
          v34 = v42;
          v33(v42, v30, v5);
          v33(v11, v34, v5);
          v32(v11, 0, 2, v5);
          goto LABEL_11;
        }
      }

      else
      {

        sub_226AE5030(v49);
        v30 = v43;
        (*(v6 + 56))(v43, 1, 1, v5);
      }

      sub_226AC47B0(v30, &qword_27D7A6D68, &qword_226D75210);
    }

    else
    {
    }

    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F628);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9CC();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_37;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Received delete change but no tombstone";
    goto LABEL_36;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226D41654(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9558, &qword_226D7E168);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v9 = [a2 changedObjectID];
  v10 = type metadata accessor for BankCredentialMappingModel.Change(0);
  v11 = sub_226D6EC3C();

  if (v11)
  {
    sub_226D40F3C(a2, v8);
    v12 = *(*(v10 - 8) + 48);
    if (v12(v8, 1, v10) == 1)
    {
      sub_226D4439C(a1, a3, type metadata accessor for BankCredentialMappingModel.Change);
      if (v12(v8, 1, v10) != 1)
      {
        sub_226AC47B0(v8, &qword_27D7A9558, &qword_226D7E168);
      }
    }

    else
    {
      sub_226D444AC(v8, a3, type metadata accessor for BankCredentialMappingModel.Change);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226D41814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v6 = type metadata accessor for BankCredentialMappingModel.Change(0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6CBBC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v55 - v11;
  v68 = sub_226D6CBCC();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v55 - v20;
  sub_226D4432C(a1, &v55 - v20);
  v22 = sub_226D6D52C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 2, v22))
  {
    (*(v23 + 32))(a3, v21, v22);
    return (*(v23 + 56))(a3, 0, 1, v22);
  }

  v63 = v23;
  v64 = v22;
  v65 = a3;
  sub_226AC47B0(v21, &qword_27D7A9550, &qword_226D7E160);
  v24 = *(a1 + *(v6 + 20));
  v56 = a1;
  if (v24 == 1)
  {
    sub_226D6980C();
    v25 = sub_226D697DC();
    v26 = v68;
    if (!v3)
    {
      v27 = &selRef_id;
LABEL_14:
      v44 = v25;
      v45 = [v25 *v27];

      sub_226D6D4FC();
      (*(v63 + 56))(v18, 0, 1, v64);
      return sub_226BACBC0(v18, v65);
    }
  }

  else
  {
    sub_226D6AA2C();
    v25 = sub_226D6A9FC();
    v26 = v68;
    if (!v3)
    {
      v27 = &selRef_credentialIdentifier;
      goto LABEL_14;
    }
  }

  v71 = v3;
  v29 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v30 = swift_dynamicCast();
  v31 = v66;
  if (v30)
  {
    v68 = v6;
    v32 = v62;
    (*(v66 + 32))(v62, v15, v26);
    sub_226D44464(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v33 = v58;
    sub_226D6D02C();
    v34 = v59;
    sub_226D6CBAC();
    sub_226D44464(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
    v35 = v61;
    sub_226D6E53C();
    sub_226D6E53C();
    v36 = *(v60 + 8);
    v36(v34, v35);
    v36(v33, v35);
    if (v70 == v69)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v37 = sub_226D6E07C();
      __swift_project_value_buffer(v37, qword_28105F628);
      v38 = v57;
      sub_226D4439C(v56, v57, type metadata accessor for BankCredentialMappingModel.Change);
      v39 = sub_226D6E05C();
      v40 = sub_226D6E9CC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = *(v38 + *(v68 + 24));
        sub_226D44404(v38, type metadata accessor for BankCredentialMappingModel.Change);
        *(v41 + 4) = v43;
        *v42 = v43;
        v32 = v62;
        _os_log_impl(&dword_226AB4000, v39, v40, "Object %@ does not exist. Ignoring.", v41, 0xCu);
        sub_226AC47B0(v42, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v42, -1, -1);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
      }

      else
      {

        sub_226D44404(v38, type metadata accessor for BankCredentialMappingModel.Change);
      }

      (*(v66 + 8))(v32, v26);
      v54 = v71;
      goto LABEL_23;
    }

    (*(v31 + 8))(v32, v26);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v46 = sub_226D6E07C();
  __swift_project_value_buffer(v46, qword_28105F628);
  v47 = v3;
  v48 = sub_226D6E05C();
  v49 = sub_226D6E9CC();

  if (!os_log_type_enabled(v48, v49))
  {

    v54 = v3;
LABEL_23:

    return (*(v63 + 56))(v65, 1, 1, v64);
  }

  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  *v50 = 138412290;
  v52 = v3;
  v53 = _swift_stdlib_bridgeErrorToNSError();
  *(v50 + 4) = v53;
  *v51 = v53;
  _os_log_impl(&dword_226AB4000, v48, v49, "Error fetching identifier: %@", v50, 0xCu);
  sub_226AC47B0(v51, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v51, -1, -1);
  MEMORY[0x22AA8BEE0](v50, -1, -1);

  return (*(v63 + 56))(v65, 1, 1, v64);
}

uint64_t sub_226D420AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v45 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemVMa(0);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v41 - v13;
  v15 = type metadata accessor for BankCredentialMappingModel.Change(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v48;
  result = sub_226D426E4(a1, v46, a4);
  if (!v19)
  {
    v21 = v44;
    v48 = v15;
    v47 = v9;
    v41[1] = 0;
    v22 = *(v45 + 16);
    if (v22)
    {
      v23 = a4;
      v24 = v11;
      v25 = v45 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v43 = v23;
      v44 += 7;
      v26 = *(v16 + 72);
      v42 = v8;
      v45 = v26;
      v46 = (v21 + 6);
      v41[0] = v11;
      do
      {
        sub_226D4439C(v25, v18, type metadata accessor for BankCredentialMappingModel.Change);
        sub_226D4432C(v18, v14);
        v27 = sub_226D6D52C();
        if ((*(*(v27 - 8) + 48))(v14, 2, v27))
        {
          sub_226D44404(v18, type metadata accessor for BankCredentialMappingModel.Change);
          result = sub_226AC47B0(v14, &qword_27D7A9550, &qword_226D7E160);
        }

        else
        {
          sub_226AC47B0(v14, &qword_27D7A9550, &qword_226D7E160);
          if (v18[*(v48 + 20)])
          {
            sub_226D44404(v18, type metadata accessor for BankCredentialMappingModel.Change);
            v28 = *(_s8MetadataVMa(0) + 24);
            sub_226D44404(v23 + v28, _s8MetadataV15LocalItemStatusOMa);
            v29 = _s8MetadataV9LocalItemVMa(0);
            result = (*(*(v29 - 8) + 56))(v23 + v28, 1, 2, v29);
          }

          else
          {
            v30 = *(_s8MetadataVMa(0) + 20);
            sub_226D4439C(v23 + v30, v8, _s8MetadataV15CloudItemStatusOMa);
            v31 = v47;
            if ((*v46)(v8, 2, v47))
            {
              sub_226D44404(v18, type metadata accessor for BankCredentialMappingModel.Change);
              sub_226D44404(v8, _s8MetadataV15CloudItemStatusOMa);
            }

            else
            {
              sub_226D444AC(v8, v24, _s8MetadataV9CloudItemVMa);
              v32 = v24 + *(v31 + 20);
              v33 = *(v32 + *(_s8MetadataV9CloudItemV6ObjectVMa(0) + 20));
              v34 = *&v18[*(v48 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v35 = v33;
              v36 = v34;
              LOBYTE(v32) = sub_226D6EC3C();

              if ((v32 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v37 = sub_226D6E07C();
                __swift_project_value_buffer(v37, qword_28105F628);
                v38 = sub_226D6E05C();
                v39 = sub_226D6E9AC();
                if (os_log_type_enabled(v38, v39))
                {
                  v40 = swift_slowAlloc();
                  *v40 = 0;
                  _os_log_impl(&dword_226AB4000, v38, v39, "Deleted duplicate cloud credential. Ignoring change.", v40, 2u);
                  MEMORY[0x22AA8BEE0](v40, -1, -1);
                }

                sub_226D44404(v24, _s8MetadataV9CloudItemVMa);
                result = sub_226D44404(v18, type metadata accessor for BankCredentialMappingModel.Change);
                v8 = v42;
                v23 = v43;
                v26 = v45;
                goto LABEL_5;
              }

              sub_226D44404(v41[0], _s8MetadataV9CloudItemVMa);
              sub_226D44404(v18, type metadata accessor for BankCredentialMappingModel.Change);
              v8 = v42;
              v23 = v43;
              v31 = v47;
            }

            sub_226D44404(v23 + v30, _s8MetadataV15CloudItemStatusOMa);
            result = (*v44)(v23 + v30, 1, 2, v31);
            v26 = v45;
          }
        }

LABEL_5:
        v25 += v26;
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

void *sub_226D426E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v60 = a3;
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x28223BE20](v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s8MetadataV9LocalItemVMa(0);
  v62 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = _s8MetadataV15LocalItemStatusOMa(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6980C();
  v24 = v65;
  result = sub_226D697BC();
  if (!v24)
  {
    v55 = v14;
    v56 = v23;
    v54 = v17;
    v57 = a1;
    v65 = 0;
    if (result)
    {
      v26 = result;
      v27 = [result objectID];
      v28 = [v26 updatedDate];
      sub_226D6D45C();

      *v20 = v27;
      v29 = v20;
      v30 = v56;
      sub_226D444AC(v29, v56, _s8MetadataV9LocalItemVMa);
      (*(v62 + 56))(v30, 0, 2, v18);
    }

    else
    {
      v30 = v56;
      (*(v62 + 56))(v56, 2, 2, v18);
    }

    v31 = v63;
    v32 = v64;
    v33 = v57;
    v34 = v65;
    v35 = sub_226D42EB8(v57, v66);
    if (v34)
    {
      return sub_226D44404(v30, _s8MetadataV15LocalItemStatusOMa);
    }

    else
    {
      v65 = 0;
      v36 = v35[2];
      if (v36)
      {
        v37 = v58;
        v38 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v39 = v35;
        v40 = v55;
        sub_226D4439C(v35 + v38, v55, _s8MetadataV9CloudItemV6ObjectVMa);
        sub_226B38744(v39, v39 + v38, 1, (2 * v36) | 1);
        v42 = v41;

        sub_226D4439C(v40, v11, _s8MetadataV9CloudItemV6ObjectVMa);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = v42 + v38;
          v45 = *(v37 + 72);
          do
          {
            sub_226D4439C(v44, v8, _s8MetadataV9CloudItemV6ObjectVMa);
            if (sub_226D6D3FC())
            {
              sub_226D44404(v11, _s8MetadataV9CloudItemV6ObjectVMa);
              sub_226D444AC(v8, v11, _s8MetadataV9CloudItemV6ObjectVMa);
            }

            else
            {
              sub_226D44404(v8, _s8MetadataV9CloudItemV6ObjectVMa);
            }

            v44 += v45;
            --v43;
          }

          while (v43);
        }

        v46 = v11;
        v47 = v59;
        sub_226D444AC(v46, v59, _s8MetadataV9CloudItemV6ObjectVMa);
        v48 = v63;
        sub_226D444AC(v55, v47 + *(v63 + 20), _s8MetadataV9CloudItemV6ObjectVMa);
        *(v47 + *(v48 + 24)) = v42;
        v49 = v47;
        v50 = v54;
        sub_226D444AC(v49, v54, _s8MetadataV9CloudItemVMa);
        (*(v64 + 56))(v50, 0, 2, v48);
        v30 = v56;
        v33 = v57;
      }

      else
      {

        v50 = v54;
        (*(v32 + 56))(v54, 2, 2, v31);
      }

      v51 = sub_226D6D52C();
      v52 = v60;
      (*(*(v51 - 8) + 16))(v60, v33, v51);
      v53 = _s8MetadataVMa(0);
      sub_226D444AC(v50, v52 + *(v53 + 20), _s8MetadataV15CloudItemStatusOMa);
      return sub_226D444AC(v30, v52 + *(v53 + 24), _s8MetadataV15LocalItemStatusOMa);
    }
  }

  return result;
}

uint64_t sub_226D42E60(uint64_t a1, uint64_t a2)
{
  result = sub_226D44464(&qword_27D7A9548, a2, type metadata accessor for BankCredentialMappingModel, &unk_226D7E11C);
  *(a1 + 8) = result;
  return result;
}

void *sub_226D42EB8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v2 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AA2C();
  v6 = sub_226D6A9EC();
  v7 = sub_226D6A9CC();
  [v6 setPredicate_];

  [v6 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226D71F20;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_226D6E36C();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v12 = sub_226D6E5CC();

  [v6 setSortDescriptors_];

  v13 = v32;
  v14 = v33;
  v15 = sub_226D6EBBC();
  if (v14)
  {

    return v13;
  }

  v16 = v15;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v17 = sub_226D6EDFC();
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_5:
  v33 = v3;
  v30 = 0;
  v31 = v6;
  v34 = MEMORY[0x277D84F90];
  result = sub_226AE2340(0, v17 & ~(v17 >> 63), 0);
  v32 = v17;
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v13 = v34;
    v20 = v16;
    v21 = v16 & 0xC000000000000001;
    v22 = v16;
    do
    {
      if (v21)
      {
        v23 = MEMORY[0x22AA8AFD0](v19, v20);
      }

      else
      {
        v23 = *(v20 + 8 * v19 + 32);
      }

      v24 = v23;
      v25 = [v23 objectID];
      v26 = [v24 id];
      sub_226D6D4FC();

      v27 = [v24 updatedDate];
      sub_226D6D45C();

      *&v5[*(v2 + 20)] = v25;
      v34 = v13;
      v29 = *(v13 + 16);
      v28 = *(v13 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226AE2340((v28 > 1), v29 + 1, 1);
        v13 = v34;
      }

      ++v19;
      *(v13 + 16) = v29 + 1;
      sub_226D444AC(v5, v13 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, _s8MetadataV9CloudItemV6ObjectVMa);
      v20 = v22;
    }

    while (v32 != v19);

    return v13;
  }

  __break(1u);
  return result;
}

char *sub_226D43270(uint64_t a1)
{
  v2 = _s8MetadataV9LocalItemVMa(0);
  v137 = *(v2 - 8);
  v138 = v2;
  MEMORY[0x28223BE20](v2);
  v129 = (&v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v125 = &v121 - v5;
  v6 = _s8MetadataV15LocalItemStatusOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = &v121 - v9;
  MEMORY[0x28223BE20](v10);
  v133 = &v121 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v121 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v121 - v16;
  v18 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v134 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v121 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v121 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v121 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v121 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v121 - v31;
  v33 = _s8MetadataV9CloudItemVMa(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v132 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v130 = &v121 - v37;
  MEMORY[0x28223BE20](v38);
  v128 = &v121 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v121 - v41;
  v143 = MEMORY[0x277D84F90];
  v141 = _s8MetadataVMa(0);
  v135 = *(v141 + 20);
  sub_226D4439C(a1 + v135, v32, _s8MetadataV15CloudItemStatusOMa);
  v43 = *(v34 + 48);
  v44 = v43(v32, 2, v33);
  v140 = v43;
  if (v44)
  {
    sub_226D44404(v32, _s8MetadataV15CloudItemStatusOMa);
    v139 = MEMORY[0x277D84F90];
LABEL_7:
    v48 = v136;
    goto LABEL_8;
  }

  v124 = a1;
  sub_226D444AC(v32, v42, _s8MetadataV9CloudItemVMa);
  v45 = &v42[*(v33 + 20)];
  v46 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  if ((sub_226D6D40C() & 1) == 0)
  {
    sub_226D44404(v42, _s8MetadataV9CloudItemVMa);
    v139 = MEMORY[0x277D84F90];
    a1 = v124;
    goto LABEL_7;
  }

  v47 = *(v141 + 24);
  (*(v137 + 56))(v17, 1, 2, v138);
  LOBYTE(v47) = sub_226AF19D8(v124 + v47, v17);
  sub_226D44404(v17, _s8MetadataV15LocalItemStatusOMa);
  if (v47)
  {
    sub_226D44404(v42, _s8MetadataV9CloudItemVMa);
    v139 = MEMORY[0x277D84F90];
    a1 = v124;
    v43 = v140;
    goto LABEL_7;
  }

  v99 = *(v46 + 20);
  v100 = *&v42[v99];
  v123 = *&v45[v99];
  v122 = v100;
  v101 = sub_226BBB788(0, 1, 1, MEMORY[0x277D84F90]);
  v103 = *(v101 + 2);
  v102 = *(v101 + 3);
  v139 = v101;
  v48 = v136;
  if (v103 >= v102 >> 1)
  {
    v139 = sub_226BBB788((v102 > 1), v103 + 1, 1, v139);
  }

  a1 = v124;
  sub_226D44404(v42, _s8MetadataV9CloudItemVMa);
  v104 = v139;
  *(v139 + 2) = v103 + 1;
  v105 = &v104[24 * v103];
  v106 = v122;
  *(v105 + 4) = v123;
  *(v105 + 5) = v106;
  v105[48] = 6;
  v143 = v104;
  v43 = v140;
LABEL_8:
  v49 = v135;
  sub_226D4439C(a1 + v135, v29, _s8MetadataV15CloudItemStatusOMa);
  if (v43(v29, 2, v33))
  {
    sub_226D44404(v29, _s8MetadataV15CloudItemStatusOMa);
LABEL_10:
    v50 = v138;
    v51 = v133;
    goto LABEL_16;
  }

  v52 = v128;
  sub_226D444AC(v29, v128, _s8MetadataV9CloudItemVMa);
  sub_226D4439C(a1 + *(v141 + 24), v14, _s8MetadataV15LocalItemStatusOMa);
  v50 = v138;
  if ((*(v137 + 48))(v14, 2, v138))
  {
    sub_226D44404(v52, _s8MetadataV9CloudItemVMa);
    sub_226D44404(v14, _s8MetadataV15LocalItemStatusOMa);
  }

  else
  {
    v53 = a1;
    v54 = v125;
    sub_226D444AC(v14, v125, _s8MetadataV9LocalItemVMa);
    v55 = _s8MetadataV9CloudItemV6ObjectVMa(0);
    sub_226D6D4AC();
    sub_226D44464(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((sub_226D6E35C() & 1) == 0)
    {
      if (sub_226D6D3FC())
      {
        v107 = (v52 + *(v33 + 20) + *(v55 + 20));
        v108 = 4;
        v109 = v54;
      }

      else
      {
        v109 = (v52 + *(v55 + 20));
        v108 = 5;
        v107 = v54;
      }

      v110 = *v109;
      v111 = *v107;
      v112 = v110;
      v113 = v111;
      v114 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v136;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v139 = sub_226BBB788(0, *(v139 + 2) + 1, 1, v139);
      }

      a1 = v53;
      v117 = *(v139 + 2);
      v116 = *(v139 + 3);
      if (v117 >= v116 >> 1)
      {
        v139 = sub_226BBB788((v116 > 1), v117 + 1, 1, v139);
      }

      sub_226D44290(v113, v114, v108);
      sub_226D44404(v125, _s8MetadataV9LocalItemVMa);
      sub_226D44404(v128, _s8MetadataV9CloudItemVMa);
      v118 = v139;
      *(v139 + 2) = v117 + 1;
      v119 = &v118[24 * v117];
      *(v119 + 4) = v113;
      *(v119 + 5) = v114;
      v119[48] = v108;
      v143 = v118;
      v49 = v135;
      v43 = v140;
      goto LABEL_10;
    }

    sub_226D44404(v54, _s8MetadataV9LocalItemVMa);
    sub_226D44404(v52, _s8MetadataV9CloudItemVMa);
    v49 = v135;
    v43 = v140;
    v50 = v138;
  }

  v51 = v133;
  v48 = v136;
LABEL_16:
  sub_226D4439C(a1 + v49, v26, _s8MetadataV15CloudItemStatusOMa);
  if (v43(v26, 2, v33))
  {
    sub_226D4439C(a1 + *(v141 + 24), v51, _s8MetadataV15LocalItemStatusOMa);
    v56 = v137;
    if (!(*(v137 + 48))(v51, 2, v50))
    {
      v58 = v129;
      sub_226D444AC(v51, v129, _s8MetadataV9LocalItemVMa);
      v59 = v126;
      sub_226D4439C(a1 + v49, v126, _s8MetadataV15CloudItemStatusOMa);
      v60 = v43(v59, 2, v33);
      sub_226D44404(v59, _s8MetadataV15CloudItemStatusOMa);
      v61 = *v58;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v134;
      v50 = a1;
      if (v60 == 1)
      {
        if (v62)
        {
          goto LABEL_22;
        }

        goto LABEL_77;
      }

      if ((v62 & 1) == 0)
      {
        v139 = sub_226BBB788(0, *(v139 + 2) + 1, 1, v139);
      }

      v69 = *(v139 + 2);
      v68 = *(v139 + 3);
      if (v69 >= v68 >> 1)
      {
        v139 = sub_226BBB788((v68 > 1), v69 + 1, 1, v139);
      }

      sub_226D44404(v129, _s8MetadataV9LocalItemVMa);
      v65 = v139;
      *(v139 + 2) = v69 + 1;
      v66 = &v65[24 * v69];
      *(v66 + 4) = v61;
      *(v66 + 5) = 0;
      v67 = 2;
      goto LABEL_30;
    }

    sub_226D44404(v51, _s8MetadataV15LocalItemStatusOMa);
    v57 = v134;
  }

  else
  {
    sub_226D44404(v26, _s8MetadataV15CloudItemStatusOMa);
    v57 = v134;
    v56 = v137;
  }

  while (1)
  {
    v70 = *(v141 + 24);
    sub_226D4439C(a1 + v70, v48, _s8MetadataV15LocalItemStatusOMa);
    v72 = *(v56 + 48);
    v56 += 48;
    v71 = v72;
    if (!v72(v48, 2, v50))
    {
      v73 = _s8MetadataV15LocalItemStatusOMa;
      goto LABEL_35;
    }

    v48 = v131;
    sub_226D4439C(a1 + v49, v131, _s8MetadataV15CloudItemStatusOMa);
    if (v140(v48, 2, v33))
    {
      v73 = _s8MetadataV15CloudItemStatusOMa;
LABEL_35:
      sub_226D44404(v48, v73);
      goto LABEL_48;
    }

    v74 = v48;
    v48 = v130;
    sub_226D444AC(v74, v130, _s8MetadataV9CloudItemVMa);
    v75 = a1 + v70;
    v76 = v127;
    sub_226D4439C(v75, v127, _s8MetadataV15LocalItemStatusOMa);
    v77 = v71(v76, 2, v50);
    sub_226D44404(v76, _s8MetadataV15LocalItemStatusOMa);
    v78 = *(v48 + *(v33 + 20) + *(_s8MetadataV9CloudItemV6ObjectVMa(0) + 20));
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v50 = a1;
    if (v77 == 1)
    {
      if ((v79 & 1) == 0)
      {
        v139 = sub_226BBB788(0, *(v139 + 2) + 1, 1, v139);
      }

      v81 = *(v139 + 2);
      v80 = *(v139 + 3);
      if (v81 >= v80 >> 1)
      {
        v139 = sub_226BBB788((v80 > 1), v81 + 1, 1, v139);
      }

      sub_226D44404(v130, _s8MetadataV9CloudItemVMa);
      v82 = v139;
      *(v139 + 2) = v81 + 1;
      v83 = &v82[24 * v81];
      *(v83 + 4) = v78;
      *(v83 + 5) = 0;
      v83[48] = 0;
      v143 = v82;
    }

    else
    {
      if ((v79 & 1) == 0)
      {
        v139 = sub_226BBB788(0, *(v139 + 2) + 1, 1, v139);
      }

      v85 = *(v139 + 2);
      v84 = *(v139 + 3);
      if (v85 >= v84 >> 1)
      {
        v139 = sub_226BBB788((v84 > 1), v85 + 1, 1, v139);
      }

      sub_226D44404(v130, _s8MetadataV9CloudItemVMa);
      v86 = v139;
      *(v139 + 2) = v85 + 1;
      v87 = &v86[24 * v85];
      *(v87 + 4) = v78;
      *(v87 + 5) = 0;
      v87[48] = 3;
      v143 = v86;
    }

    a1 = v50;
LABEL_48:
    sub_226D4439C(a1 + v49, v57, _s8MetadataV15CloudItemStatusOMa);
    if (v140(v57, 2, v33))
    {
      v88 = _s8MetadataV15CloudItemStatusOMa;
      v89 = v57;
      goto LABEL_75;
    }

    sub_226D444AC(v57, v132, _s8MetadataV9CloudItemVMa);
    v90 = sub_226AEF640();
    v61 = v90;
    if (v90 >> 62)
    {
      v91 = sub_226D6EDFC();
      if (!v91)
      {
LABEL_73:

        v93 = MEMORY[0x277D84F90];
        goto LABEL_74;
      }
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v91)
      {
        goto LABEL_73;
      }
    }

    v142 = MEMORY[0x277D84F90];
    sub_226AE22A4(0, v91 & ~(v91 >> 63), 0);
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_77:
    v139 = sub_226BBB788(0, *(v139 + 2) + 1, 1, v139);
LABEL_22:
    v64 = *(v139 + 2);
    v63 = *(v139 + 3);
    if (v64 >= v63 >> 1)
    {
      v139 = sub_226BBB788((v63 > 1), v64 + 1, 1, v139);
    }

    sub_226D44404(v129, _s8MetadataV9LocalItemVMa);
    v65 = v139;
    *(v139 + 2) = v64 + 1;
    v66 = &v65[24 * v64];
    *(v66 + 4) = v61;
    *(v66 + 5) = 0;
    v67 = 1;
LABEL_30:
    v66[48] = v67;
    v143 = v65;
    a1 = v50;
    v50 = v138;
  }

  v92 = 0;
  v93 = v142;
  do
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x22AA8AFD0](v92, v61);
    }

    else
    {
      v94 = *(v61 + 8 * v92 + 32);
    }

    v142 = v93;
    v96 = *(v93 + 16);
    v95 = *(v93 + 24);
    if (v96 >= v95 >> 1)
    {
      v98 = v94;
      sub_226AE22A4((v95 > 1), v96 + 1, 1);
      v94 = v98;
      v93 = v142;
    }

    ++v92;
    *(v93 + 16) = v96 + 1;
    v97 = v93 + 24 * v96;
    *(v97 + 32) = v94;
    *(v97 + 40) = 0;
    *(v97 + 48) = 0;
  }

  while (v91 != v92);

LABEL_74:
  sub_226CEDF88(v93);
  v88 = _s8MetadataV9CloudItemVMa;
  v89 = v132;
LABEL_75:
  sub_226D44404(v89, v88);
  return v143;
}

void sub_226D44290(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 4u)
  {
    if (a3 - 4 > 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t type metadata accessor for BankCredentialMappingModel.Change(uint64_t a1)
{
  result = qword_27D7A9560;
  if (!qword_27D7A9560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D4432C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D4439C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D44404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D44464(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_226D444AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226D4453C(uint64_t a1)
{
  sub_226D445D8(319);
  if (v1 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226D445D8(uint64_t a1)
{
  if (!qword_27D7A9570)
  {
    v2 = sub_226D6D52C();
    v3 = sub_226D44464(&qword_281062B60, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = type metadata accessor for StoreMappingChangeType(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D7A9570);
    }
  }
}

void *sub_226D446AC@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v12 = result;
    v13 = sub_226D6E39C();
    v15 = v14;

    v16[0] = v13;
    v16[1] = v15;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    (*(v5 + 32))(v10, v7, v4);
    sub_226D6D0FC();
    (*(v5 + 8))(v10, v4);
    return (*(v5 + 56))(a3, 0, 1, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financePersistingPlistURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = *(v2 + 32);
    v19(v7, v4, v1);
    sub_226D6D0FC();
    v20 = *(v2 + 8);
    v20(v7, v1);
    v19(v13, v10, v1);
    v21 = v23;
    sub_226D6D10C();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.libraryURL.getter@<X0>(uint64_t a2@<X8>)
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v4 = result;
    sub_226D6E39C();

    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v5 = sub_226D6D1AC();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 0, 1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeLocalDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = *(v2 + 32);
    v19(v7, v4, v1);
    sub_226D6D0FC();
    v20 = *(v2 + 8);
    v20(v7, v1);
    v19(v13, v10, v1);
    v21 = v23;
    sub_226D6D10C();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeCloudDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = *(v2 + 32);
    v19(v7, v4, v1);
    sub_226D6D0FC();
    v20 = *(v2 + 8);
    v20(v7, v1);
    v19(v13, v10, v1);
    v21 = v23;
    sub_226D6D10C();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeDropboxDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = *(v2 + 32);
    v19(v7, v4, v1);
    sub_226D6D0FC();
    v20 = *(v2 + 8);
    v20(v7, v1);
    v19(v13, v10, v1);
    v21 = v23;
    sub_226D6D10C();
    v20(v13, v1);
    return (*(v2 + 56))(v21, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.filePath(relativeTo:resolveSymlinks:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9578, &qword_226D7E178);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v43 - v10;
  v12 = sub_226D6E17C();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  v17 = sub_226D6D1AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v43 - v22;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = v43 - v25;
  v49 = v16;
  v51 = v23;
  if (a2)
  {
    sub_226D6D11C();
    sub_226D6D11C();
    v28 = *(v18 + 16);
  }

  else
  {
    v28 = *(v18 + 16);
    v28(v43 - v25, a1, v17, v26);
    (v28)(v23, v4, v17);
  }

  v48 = v27;
  (v28)(v20, v27, v17);
  sub_226D6E15C();
  v30 = v46;
  v29 = v47;
  v31 = *(v46 + 48);
  if (v31(v11, 1, v47) == 1)
  {
    goto LABEL_7;
  }

  v43[0] = *(v30 + 32);
  v43[1] = v30 + 32;
  (v43[0])(v49, v11, v29);
  (v28)(v20, v51, v17);
  v11 = v45;
  sub_226D6E15C();
  if (v31(v11, 1, v29) == 1)
  {
    (*(v30 + 8))(v49, v29);
LABEL_7:
    v32 = *(v18 + 8);
    v32(v51, v17);
    v32(v48, v17);
    sub_226D45760(v11);
    return (*(v30 + 56))(v50, 1, 1, v29);
  }

  v34 = v44;
  v35 = v11;
  v36 = v43[0];
  (v43[0])(v44, v35, v29);
  v37 = v49;
  v38 = sub_226D6E16C();
  v39 = *(v30 + 8);
  v39(v37, v29);
  v40 = *(v18 + 8);
  v40(v51, v17);
  v40(v48, v17);
  v41 = (v30 + 56);
  if (v38)
  {
    v42 = v50;
    v36(v50, v34, v29);
    return (*v41)(v42, 0, 1, v29);
  }

  else
  {
    v39(v34, v29);
    return (*v41)(v50, 1, 1, v29);
  }
}

uint64_t sub_226D45760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9578, &qword_226D7E178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D457C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D66FDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v25 = *(v7 + 16);
  v26 = a3;
  v25(&v24 - v11, a3, v6, v10);
  v24 = v7;
  v13 = *(v7 + 88);
  v14 = v13(v12, v6);
  v15 = *MEMORY[0x277CC6A50];
  if (v14 == *MEMORY[0x277CC6A50])
  {
    if ((*(a2 + 24))(a1, a2))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v14 == *MEMORY[0x277CC6A48])
    {
      goto LABEL_10;
    }

    if (v14 != *MEMORY[0x277CC6A40])
    {
      (*(v24 + 8))(v12, v6);
      v22 = 1;
      return v22 & 1;
    }
  }

  if ((*(a2 + 8))(a1, a2))
  {
    v16 = v27;
    (v25)(v27, v26, v6);
    v17 = v13(v16, v6);
    if (v17 == v15)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v19 = [v18 aa_primaryAppleAccount];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 aa_isManagedAppleID];

        if (v21)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    else if (v17 != *MEMORY[0x277CC6A48])
    {
      if (v17 == *MEMORY[0x277CC6A40])
      {
        v22 = sub_226D320D4();
        return v22 & 1;
      }

      (*(v24 + 8))(v16, v6);
    }

    v22 = 0;
    return v22 & 1;
  }

LABEL_10:
  v22 = 1;
  return v22 & 1;
}

void *sub_226D45AA4@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_226D45AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D46998();
  v5 = sub_226D469EC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_226D45B2C(unint64_t a1)
{
  if (a1 - 129 < 0xFFFFFFFFFFFFFFAALL)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = sub_226D6E07C();
    v4 = __swift_project_value_buffer(v3, qword_28105F710);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9CC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    v7 = "The codeVerifier length should be within [43,128] range: %ld";
    v8 = v6;
    v9 = v5;
    v10 = v4;
    v11 = 12;
    goto LABEL_14;
  }

  v12 = rintf((a1 * 6.0) * 0.125);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = (*(v1 + 16))(v12);
  if (!*(v13 + 16))
  {

    if (qword_28105F708 == -1)
    {
LABEL_12:
      v17 = sub_226D6E07C();
      v4 = __swift_project_value_buffer(v17, qword_28105F710);
      v5 = sub_226D6E05C();
      v18 = sub_226D6E9CC();
      if (!os_log_type_enabled(v5, v18))
      {
LABEL_15:

        sub_226D46660();
        swift_allocError();
        *v19 = 0;
        swift_willThrow();
        return v4;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v7 = "Failed to generate random bytes";
      v8 = v18;
      v9 = v5;
      v10 = v4;
      v11 = 2;
LABEL_14:
      _os_log_impl(&dword_226AB4000, v9, v8, v7, v10, v11);
      MEMORY[0x22AA8BEE0](v4, -1, -1);
      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v14 = sub_226B3F994(v13);
  v16 = v15;

  sub_226D6D20C();
  sub_226AEEF6C();
  sub_226D6ECEC();

  sub_226D6ECEC();

  v4 = sub_226D6ECEC();
  sub_226B11B98(v14, v16);

  return v4;
}

uint64_t sub_226D45EDC()
{

  return swift_deallocClassInstance();
}

NSObject *sub_226D45F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6E21C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v7;
  v8 = sub_226D6E29C();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6E3DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  sub_226D6E3CC();
  v49 = a1;
  v53 = a2;
  v21 = sub_226D6E3AC();
  v23 = v22;
  (*(v12 + 8))(v14, v11);
  if (v23 >> 60 == 15)
  {
    v24 = 1;
  }

  else
  {
    sub_226D4678C(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_226D6E20C();
    sub_226B11B44(v21, v23);
    v25 = v62;
    sub_226B3F488(v21, v23, v10);
    v62 = v25;
    sub_226B3FAEC(v21, v23);
    sub_226D6E1FC();
    sub_226B3FAEC(v21, v23);
    (*(v50 + 8))(v10, v8);
    v24 = 0;
  }

  v27 = v54;
  v26 = v55;
  (*(v54 + 56))(v20, v24, 1, v55);
  sub_226D466B4(v20, v17);
  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    sub_226D46724(v20);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v28 = sub_226D6E07C();
    __swift_project_value_buffer(v28, qword_28105F710);
    v29 = v53;

    v30 = sub_226D6E05C();
    v31 = sub_226D6E9CC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v60 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_226AC4530(v49, v29, &v60);
      _os_log_impl(&dword_226AB4000, v30, v31, "Failed to create codeChallenge from codeVerifier: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x22AA8BEE0](v33, -1, -1);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
    }

    sub_226D46660();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
  }

  else
  {
    v35 = v52;
    (*(v27 + 32))(v52, v17, v26);
    (*(v27 + 16))(v51, v35, v26);
    sub_226D4678C(&qword_27D7A9590, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_226D6E51C();
    (*(v27 + 8))(v35, v26);
    sub_226D46724(v20);

    v37 = sub_226B3F994(v36);
    v39 = v38;
    v60 = sub_226D6D20C();
    v61 = v40;
    v58 = 61;
    v59 = 0xE100000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_226AEEF6C();
    v41 = sub_226D6ECEC();
    v43 = v42;

    v60 = v41;
    v61 = v43;
    v58 = 43;
    v59 = 0xE100000000000000;
    v56 = 45;
    v57 = 0xE100000000000000;
    v44 = sub_226D6ECEC();
    v46 = v45;

    v60 = v44;
    v61 = v46;
    v58 = 47;
    v59 = 0xE100000000000000;
    v56 = 95;
    v57 = 0xE100000000000000;
    v30 = sub_226D6ECEC();
    sub_226B11B98(v37, v39);
  }

  return v30;
}

unint64_t sub_226D46660()
{
  result = qword_27D7A9588;
  if (!qword_27D7A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9588);
  }

  return result;
}

uint64_t sub_226D466B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D46724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D4678C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D467D4(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v2 = a1;
  if (a1)
  {
    v3 = sub_226D6E63C();
    *(v3 + 16) = v2;
    bzero((v3 + 32), v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
  }

  v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v2, (v3 + 32));
  if (!v4)
  {
    return v3;
  }

  v1 = v4;

  if (qword_28105F708 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to generate random bytes %d", v8, 8u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226D46944()
{
  result = qword_27D7A9598;
  if (!qword_27D7A9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9598);
  }

  return result;
}

unint64_t sub_226D46998()
{
  result = qword_27D7A95A0;
  if (!qword_27D7A95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A95A0);
  }

  return result;
}

unint64_t sub_226D469EC()
{
  result = qword_27D7A95A8;
  if (!qword_27D7A95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A95A8);
  }

  return result;
}

void sub_226D46A40(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v3 - 8);
  *&v99 = &v92 - v4;
  v106 = sub_226D6D52C();
  v100 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v94 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v92 - v7;
  MEMORY[0x28223BE20](v8);
  v95 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v104 = &v92 - v11;
  v105 = sub_226D695EC();
  v12 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6964C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  sub_226D6965C();
  v19 = sub_226D6961C();
  (*(v16 + 8))(v18, v15);
  v20 = v19[2];
  if (v20)
  {
    v22 = *(v12 + 16);
    v21 = v12 + 16;
    v23 = *(v21 + 64);
    v92 = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v102 = *(v21 + 56);
    v103 = v22;
    v101 = (v21 - 8);
    v25 = MEMORY[0x277D84F90];
    v26 = v106;
    do
    {
      v28 = v105;
      v29 = v21;
      v103(v14, v24, v105);
      v30 = sub_226D695AC();
      v32 = v31;
      (*v101)(v14, v28);
      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_226BBAB0C(0, *(v25 + 2) + 1, 1, v25);
        }

        v34 = *(v25 + 2);
        v33 = *(v25 + 3);
        if (v34 >= v33 >> 1)
        {
          v25 = sub_226BBAB0C((v33 > 1), v34 + 1, 1, v25);
        }

        *(v25 + 2) = v34 + 1;
        v27 = &v25[16 * v34];
        *(v27 + 4) = v30;
        *(v27 + 5) = v32;
        v26 = v106;
      }

      v24 += v102;
      --v20;
      v21 = v29;
    }

    while (v20);

    v35 = v25;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
    v26 = v106;
  }

  v105 = *(v35 + 2);
  if (v105)
  {
    v36 = 0;
    v37 = (v100 + 48);
    v38 = (v100 + 32);
    v39 = v35 + 40;
    v40 = MEMORY[0x277D84F90];
    v41 = v99;
    while (v36 < *(v35 + 2))
    {

      sub_226D6D4BC();

      if ((*v37)(v41, 1, v26) == 1)
      {
        sub_226D475E0(v41);
      }

      else
      {
        v42 = v41;
        v43 = *v38;
        (*v38)(v104, v42, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_226BBB95C(0, v40[2] + 1, 1, v40);
        }

        v45 = v40[2];
        v44 = v40[3];
        v46 = v40;
        if (v45 >= v44 >> 1)
        {
          v46 = sub_226BBB95C((v44 > 1), v45 + 1, 1, v40);
        }

        v40 = v46;
        v46[2] = v45 + 1;
        v47 = v46 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v45;
        v26 = v106;
        v43(v47, v104, v106);
        v41 = v99;
      }

      ++v36;
      v39 += 16;
      if (v105 == v36)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_24:

    v102 = v40[2];
    if (!v102)
    {

      if (qword_28105F6A0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    v103 = v40;
    sub_226D693FC();
    v48 = sub_226D67B0C();

    v101 = v48;
    v50 = v97;
    if (!*(v48 + 16))
    {

      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v91 = sub_226D6E07C();
      __swift_project_value_buffer(v91, qword_28105F6A8);
      v87 = sub_226D6E05C();
      v88 = sub_226D6E9EC();
      if (!os_log_type_enabled(v87, v88))
      {
        goto LABEL_52;
      }

      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "No mail items found in extracted order. Skipping insights generation.";
      goto LABEL_51;
    }

    v51 = 0;
    v104 = (v100 + 8);
    v105 = v100 + 16;
    *&v49 = 136315138;
    v99 = v49;
    v53 = v95;
    v52 = v96;
    v54 = v103;
    while (v51 < *(v54 + 2))
    {
      v56 = v54 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v51;
      v57 = *(v100 + 16);
      v57(v53, v56, v26);
      sub_226D6AC0C();
      v58 = sub_226D6AABC();
      if (v50)
      {
        (*v104)(v53, v26);
LABEL_54:

        return;
      }

      v59 = v58;
      if (v58)
      {
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v60 = sub_226D6E07C();
        __swift_project_value_buffer(v60, qword_28105F6A8);
        v57(v52, v53, v26);
        v61 = sub_226D6E05C();
        v62 = sub_226D6E9EC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v97 = 0;
          v64 = v63;
          v65 = swift_slowAlloc();
          v107 = v65;
          *v64 = v99;
          sub_226C459BC();
          v66 = sub_226D6F1CC();
          v68 = v67;
          v69 = v52;
          v70 = *v104;
          (*v104)(v69, v106);
          v71 = sub_226AC4530(v66, v68, &v107);

          *(v64 + 4) = v71;
          _os_log_impl(&dword_226AB4000, v61, v62, "Inserting or updating extracted order insight for %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
          MEMORY[0x22AA8BEE0](v65, -1, -1);
          v72 = v64;
          v50 = v97;
          v26 = v106;
          MEMORY[0x22AA8BEE0](v72, -1, -1);
        }

        else
        {

          v85 = v52;
          v70 = *v104;
          (*v104)(v85, v26);
        }

        sub_226D6C6BC();
        v53 = v95;
        v54 = v103;
        if (v50)
        {
          v70(v95, v26);

          return;
        }

        v70(v95, v26);
      }

      else
      {
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v73 = sub_226D6E07C();
        __swift_project_value_buffer(v73, qword_28105F6A8);
        v74 = v94;
        v57(v94, v53, v26);
        v75 = sub_226D6E05C();
        v76 = sub_226D6E9EC();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = v74;
          v78 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v107 = v92;
          *v78 = v99;
          sub_226C459BC();
          v79 = sub_226D6F1CC();
          v97 = 0;
          v81 = v80;
          v93 = *v104;
          v93(v77, v106);
          v82 = v79;
          v53 = v95;
          v83 = sub_226AC4530(v82, v81, &v107);
          v50 = v97;
          v26 = v106;

          *(v78 + 4) = v83;
          _os_log_impl(&dword_226AB4000, v75, v76, "FoundIn Insight: Unable to find existing transaction for %s", v78, 0xCu);
          v84 = v92;
          __swift_destroy_boxed_opaque_existential_0Tm(v92);
          MEMORY[0x22AA8BEE0](v84, -1, -1);
          MEMORY[0x22AA8BEE0](v78, -1, -1);

          v93(v53, v26);
        }

        else
        {

          v55 = *v104;
          (*v104)(v74, v26);
          v55(v53, v26);
        }

        v54 = v103;
      }

      ++v51;
      v52 = v96;
      if (v102 == v51)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_58:
  swift_once();
LABEL_45:
  v86 = sub_226D6E07C();
  __swift_project_value_buffer(v86, qword_28105F6A8);
  v87 = sub_226D6E05C();
  v88 = sub_226D6E9EC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "No transactions found in extracted order. Skipping insights generation.";
LABEL_51:
    _os_log_impl(&dword_226AB4000, v87, v88, v90, v89, 2u);
    MEMORY[0x22AA8BEE0](v89, -1, -1);
  }

LABEL_52:
}

uint64_t sub_226D475E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D47648(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  LODWORD(v10) = a3;
  v45 = a2;
  v12 = sub_226D680EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D84F90];
  if ((v10 & 1) == 0)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    inited = swift_initStackObject();
    v44 = v7;
    v17 = inited;
    *(inited + 16) = xmmword_226D72B90;
    v39 = a4;
    *(inited + 32) = sub_226D47C8C();
    v17[5] = sub_226D48234();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v40 = a1;
    v42 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v43 = v6;
    v18 = swift_allocObject();
    v41 = v10;
    v10 = v18;
    v37 = xmmword_226D70840;
    *(v18 + 16) = xmmword_226D70840;
    (*(v13 + 104))(v15, *MEMORY[0x277CC7158], v12);
    v19 = sub_226D680DC();
    (*(v13 + 8))(v15, v12);
    v20 = MEMORY[0x277D849A0];
    *(v10 + 56) = MEMORY[0x277D84958];
    *(v10 + 64) = v20;
    *(v10 + 32) = v19;
    v17[6] = sub_226D6E91C();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_226D71F40;
    *(v21 + 32) = sub_226D6E91C();
    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    v23 = sub_226D6D3EC();
    *(v22 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v22 + 64) = sub_226C19454();
    *(v22 + 32) = v23;
    LOBYTE(v10) = v41;
    *(v21 + 40) = sub_226D6E91C();
    v24 = sub_226D6E5CC();

    v25 = [objc_opt_self() orPredicateWithSubpredicates_];

    a1 = v40;
    v17[7] = v25;
    v26 = v17;
    v7 = v44;
    sub_226CEE1A0(v26);
  }

  if (a1)
  {
    sub_226D6AC0C();
    sub_226D6ABAC();
    MEMORY[0x22AA8A610]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  if ((v45 & 1) != 0 && (v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_226D71F40;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v27 + 32) = sub_226D6E91C();
    *(v27 + 40) = sub_226D6E91C();
    v28 = sub_226D6E5CC();

    v29 = [objc_opt_self() orPredicateWithSubpredicates_];

    MEMORY[0x22AA8A610]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  sub_226D6AC0C();
  v30 = sub_226D6AAFC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v31 = sub_226D6E5CC();

  v32 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v30 setPredicate_];
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v33 = sub_226D6E5CC();
  [v30 setSortDescriptors_];

  [v30 setReturnsObjectsAsFaults_];
  if (*(v7 + 48))
  {
    v34 = sub_226D6E5CC();
  }

  else
  {
    v34 = 0;
  }

  [v30 setRelationshipKeyPathsForPrefetching_];

  if ((*(v7 + 40) & 1) == 0)
  {
    [v30 setFetchLimit_];
  }

  v35 = sub_226D6EBBC();

  return v35;
}

uint64_t sub_226D47C8C()
{
  v22 = sub_226D67D7C();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;
  v4 = sub_226D47EF0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v19 = v3;
    v23 = MEMORY[0x277D84F90];
    sub_226AE24F0(0, v5, 0);
    v6 = v23;
    v8 = *(v0 + 16);
    v7 = v0 + 16;
    v9 = *(v7 + 64);
    v18 = v4;
    v10 = v4 + ((v9 + 32) & ~v9);
    v20 = *(v7 + 56);
    v21 = v8;
    v11 = (v7 - 8);
    do
    {
      v12 = v22;
      v13 = v7;
      v21(v2, v10, v22);
      v14 = sub_226D67D6C();
      (*v11)(v2, v12);
      v23 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226AE24F0((v15 > 1), v16 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v16 + 1;
      *(v6 + 2 * v16 + 32) = v14;
      v10 += v20;
      --v5;
      v7 = v13;
    }

    while (v5);

    v3 = v19;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7160, &qword_226D7E370);
  *(v3 + 64) = sub_226B79CEC();
  *(v3 + 32) = v6;
  return sub_226D6E91C();
}

uint64_t sub_226D47EF0()
{
  v0 = sub_226D66DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_226D6C7DC())
  {
    v4 = *(v1 + 104);
    v4(v3, *MEMORY[0x277CC6510], v0);
    v5 = sub_226D66D6C();
    (*(v1 + 8))(v3, v0);
    if (v5)
    {
      return sub_226D67D5C();
    }
  }

  else
  {
    v4 = *(v1 + 104);
  }

  v4(v3, *MEMORY[0x277CC6518], v0);
  v7 = sub_226D66D6C();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A95B0, qword_226D7E378);
  v8 = sub_226D67D7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v6 = swift_allocObject();
  if (v7)
  {
    *(v6 + 16) = xmmword_226D71190;
    v12 = v6 + v11;
    v13 = *(v9 + 104);
    v13(v12, *MEMORY[0x277CC6FE0], v8);
    v13(v12 + v10, *MEMORY[0x277CC6FD8], v8);
    v13(v12 + 2 * v10, *MEMORY[0x277CC7008], v8);
    v13(v12 + 3 * v10, *MEMORY[0x277CC7018], v8);
  }

  else
  {
    *(v6 + 16) = xmmword_226D70840;
    (*(v9 + 104))(v6 + v11, *MEMORY[0x277CC6FE0], v8);
  }

  return v6;
}

uint64_t sub_226D481C8()
{

  return swift_deallocClassInstance();
}

id sub_226D48234()
{
  v0 = sub_226D6823C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v4 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  (*(v1 + 104))(v3, *MEMORY[0x277CC71E8], v0);
  v6 = sub_226D6822C();
  (*(v1 + 8))(v3, v0);
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = MEMORY[0x277D84958];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  *(v4 + 40) = sub_226D6E91C();
  v8 = sub_226D6E5CC();

  v9 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v9;
}

uint64_t dispatch thunk of FoundInMailItemDocumentFinderIndex.findFoundInMailItems(forMessageIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226D48590;

  return v9(a1, a2, a3);
}

uint64_t sub_226D48590(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226D486B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v2, 0);
    v4 = v33;
    v5 = v1 + 64;
    result = sub_226D6ED6C();
    v6 = result;
    v7 = 0;
    v28 = v1 + 64;
    v26 = v1 + 72;
    v27 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v7;
      v30 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v31 = sub_226D6E39C();
      v32 = v13;

      MEMORY[0x22AA8A510](0x22203D3D20, 0xE500000000000000);
      MEMORY[0x22AA8A510](v12, v11);
      MEMORY[0x22AA8A510](34, 0xE100000000000000);

      v14 = v4;
      v34 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_226AE1D68((v16 > 1), v17 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      v8 = 1 << *(v15 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226AE5444(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226AE5444(v6, v30, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v8;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

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

uint64_t sub_226D48940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_226BE57C8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_226C2FDD4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_226C37EBC();
        v16 = v18;
      }

      result = sub_226D4AA34(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_226D48A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A6B88, &unk_226D72B68);
    v14 = sub_226C30098(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226C38488();
        v18 = v22;
      }

      sub_226D4C890(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      sub_226D4ABE4(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_226AC47B0(v8, &qword_27D7A6B88, &unk_226D72B68);
  }

  else
  {
    sub_226D4C890(a1, v13, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_226BE5918(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_226D48C9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_226D68CEC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A7170, &qword_226D74560);
    sub_226D49FBC(a2, v7);
    v13 = sub_226D680FC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_226AC47B0(v7, &qword_27D7A7170, &qword_226D74560);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_226BE62D8(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_226D680FC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_226D48EC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8298, &qword_226D77F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_226D67E5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A8298, &qword_226D77F40);
    sub_226D4A200(a2, v7);
    v13 = sub_226D6D52C();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_226AC47B0(v7, &qword_27D7A8298, &qword_226D77F40);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_226BE6938(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_226D6D52C();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_226D490F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A8968, &unk_226D7E430);
    sub_226D4A3A0(a2, v7);
    sub_226AE5030(a2);
    return sub_226AC47B0(v7, &qword_27D7A8968, &unk_226D7E430);
  }

  else
  {
    sub_226D4C890(a1, v11, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_226BE6C6C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_226AE5030(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_226D492B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_226D492D4, 0, 0);
}

void *sub_226D492D4()
{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_226C24A6C(*(v1 + 16), 0);
    v4 = sub_226C3A908(&v16, v3 + 4, v2, v1);
    v5 = v16;

    sub_226AD3C20(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 40) = v3;
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v6 = v3[2];
  *(v0 + 48) = v6;
  if (v6)
  {
    result = *(v0 + 32);
    *(v0 + 56) = 10;
    *(v0 + 96) = 0;
    if (v6 >= 0xA)
    {
      v6 = 10;
    }

    if (v3[2] < v6)
    {
      __break(1u);
    }

    else
    {
      v8 = (2 * v6) | 1;
      v9 = result[3];
      v10 = result[4];
      __swift_project_boxed_opaque_existential_1(result, v9);

      v11 = sub_226AE4778((v3 + 4), 0, v8);
      *(v0 + 64) = v11;
      v15 = (*(v10 + 8) + **(v10 + 8));
      v12 = swift_task_alloc();
      *(v0 + 72) = v12;
      *v12 = v0;
      v12[1] = sub_226D49548;

      return v15(v11, v9, v10);
    }
  }

  else
  {

    v13 = *(v0 + 8);
    v14 = MEMORY[0x277D84FA0];

    return v13(v14);
  }

  return result;
}

uint64_t sub_226D49548(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    v5 = sub_226D498E8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_226D49694;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D49694()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_226B04404(*(v0 + 88));

  if ((v1 & 1) == 0 && v2 < v3)
  {
    v5 = 0x7FFFFFFFFFFFFFF5;
    if (*(v0 + 96))
    {
LABEL_25:
      *(v0 + 56) = v5 + 20;
      *(v0 + 96) = 1;
LABEL_26:
      __break(1u);
      return result;
    }

    v6 = *(v0 + 56);
    v7 = v6 + 10;
    v8 = __OFADD__(v6, 10);
    *(v0 + 56) = v7;
    *(v0 + 96) = v8;
    if (v6 > 0x7FFFFFFFFFFFFFF5)
    {
      goto LABEL_26;
    }

    v5 = *(v0 + 48);
    if (v5 >= v7)
    {
      v5 = v6 + 10;
    }

    if (v5 < v6)
    {
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = *(v0 + 40);
      v10 = *(v9 + 16);
      if (v10 >= v6 && v10 >= v5)
      {
        v12 = *(v0 + 32);
        v13 = (2 * v5) | 1;
        v14 = v12[3];
        v15 = v12[4];
        __swift_project_boxed_opaque_existential_1(v12, v14);

        v16 = sub_226AE4778(v9 + 32, v6, v13);
        *(v0 + 64) = v16;
        v20 = (*(v15 + 8) + **(v15 + 8));
        v17 = swift_task_alloc();
        *(v0 + 72) = v17;
        *v17 = v0;
        v17[1] = sub_226D49548;

        return v20(v16, v14, v15);
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v0 + 16);
  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_226D498E8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_226D4994C(void *a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D67B3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_226D6D1AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67A3C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226AC47B0(v10, &unk_27D7A62F8, &unk_226D73B70);
  }

  else
  {
    v49 = a1;
    v50 = v5;
    v51 = v4;
    (*(v12 + 32))(v14, v10, v11);
    v15 = [a2 messageRepository];
    v16 = sub_226D6D0DC();
    v17 = [v15 messageObjectIDForURL_];

    v52[0] = 0;
    v18 = [v17 resultWithTimeout:v52 error:0.5];
    if (v18)
    {
      v19 = v18;
      v20 = v52[0];
      v21 = [a2 messageRepository];
      v22 = [v21 messageForObjectID_];

      v52[0] = 0;
      v23 = [v22 resultWithTimeout:v52 error:0.5];
      if (v23)
      {
        v24 = v23;
        v25 = v52[0];
        v26 = [v24 isAuthenticated];

        (*(v12 + 8))(v14, v11);
        return v26;
      }

      v30 = v52[0];
      v29 = sub_226D6D04C();

      swift_willThrow();
      v17 = v22;
    }

    else
    {
      v28 = v52[0];
      v29 = sub_226D6D04C();

      swift_willThrow();
    }

    v32 = v50;
    v31 = v51;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F6A8);
    (*(v32 + 16))(v7, v49, v31);
    v34 = v29;
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52[0] = v49;
      *v37 = 136315394;
      v38 = sub_226D67B2C();
      v39 = v32;
      v41 = v40;
      (*(v39 + 8))(v7, v51);
      v42 = sub_226AC4530(v38, v41, v52);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      v43 = v29;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      v45 = v48;
      *v48 = v44;
      _os_log_impl(&dword_226AB4000, v35, v36, "Failed get authentication status for %s with error: %@", v37, 0x16u);
      sub_226AC47B0(v45, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      v46 = v49;
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v7, v31);
    }

    (*(v12 + 8))(v14, v11);
  }

  return 0;
}

uint64_t sub_226D49F0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE947C;

  return sub_226D4B9D0(a1);
}

uint64_t sub_226D49FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226C302EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C38F34();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_226D680FC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_226D68CEC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_226D4AFC4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_226D68CEC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_226D4A15C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_226C2FE4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C38F70();
      v9 = v11;
    }

    sub_226AE5030(*(v9 + 48) + 40 * v7);
    sub_226B24A98((*(v9 + 56) + 32 * v7), a2);
    sub_226D4B308(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_226D4A200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226C3049C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C392C0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_226D6D52C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_226D67E5C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_226D4B4AC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_226D67E5C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_226D4A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226C2FE4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C39EB8();
      v9 = v19;
    }

    sub_226AE5030(*(v9 + 48) + 40 * v7);
    v10 = *(v9 + 56);
    v11 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
    v18 = *(v11 - 8);
    sub_226D4C890(v10 + *(v18 + 72) * v7, a2, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    sub_226D4B7F0(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

unint64_t sub_226D4A50C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_226D6F2FC();
      sub_226D6F31C();
      if (v9)
      {

        sub_226D6E42C();
      }

      v10 = sub_226D6F35C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v3);
      v14 = (v12 + 16 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(_s7ChangesV11FulfillmentVMa(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_226D4A714(int64_t a1, uint64_t a2)
{
  v38 = sub_226D689EC();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_226D6ED7C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_226D4C8F8(&qword_27D7A8248, MEMORY[0x277CC7568], MEMORY[0x277CC7570]);
      v22 = sub_226D6E2FC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_226D4AA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226D6F2FC();

      sub_226D6E42C();
      v9 = sub_226D6F35C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4ABE4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v22 = a2 + 64;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    while (1)
    {
      sub_226D6F2FC();
      sub_226D6E42C();

      result = sub_226D6F35C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for XPCActivityScheduler.ActivityInfo(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      v4 = v22;
      if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226D4AE14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226D6F2FC();

      sub_226D6E42C();
      v9 = sub_226D6F35C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_226D4AFC4(int64_t a1, uint64_t a2)
{
  v4 = sub_226D680FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_226D6ED7C();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_226D4C8F8(&qword_281062BB8, MEMORY[0x277CC71A0], MEMORY[0x277CC71A8]);
      v21 = sub_226D6E2FC();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_226D68CEC() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_226D4B308(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226AE4FD4(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_226D6EE6C();
      result = sub_226AE5030(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_226D4B4AC(int64_t a1, uint64_t a2)
{
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_226D6ED7C();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_226D4C8F8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_226D6E2FC();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_226D67E5C() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_226D4B7F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226AE4FD4(*(a2 + 48) + 40 * v6, v27);
      v9 = sub_226D6EE6C();
      result = sub_226AE5030(v27);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8 || v3 < v10)
        {
          goto LABEL_5;
        }
      }

      else if (v10 < v8 && v3 < v10)
      {
        goto LABEL_5;
      }

      v13 = *(a2 + 48);
      v14 = v13 + 40 * v3;
      v15 = (v13 + 40 * v6);
      if (v3 != v6 || v14 >= v15 + 40)
      {
        v16 = *v15;
        v17 = v15[1];
        *(v14 + 32) = *(v15 + 4);
        *v14 = v16;
        *(v14 + 16) = v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for WebServicePendingTasksRetryState.TaskState(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226D4B9D0(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_226D6E96C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A95B8, &unk_226D7E420);
  v1[11] = swift_task_alloc();
  v3 = sub_226D6E98C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_226D6E97C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_226D67F1C();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4BBDC, 0, 0);
}

uint64_t sub_226D4BBDC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[7];
  v5 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v71 = v0;
  v0[21] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  *(v6 + 32) = sub_226D6E39C();
  *(v6 + 40) = v7;
  v8 = sub_226D6E5CC();

  [v5 setFetchAttributes_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D70840;
  sub_226D67EBC();
  v10 = sub_226D67F0C();
  v12 = v11;
  (*(v2 + 8))(v1, v3);
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_226D6E5CC();

  v67 = v5;
  [v5 setBundleIDs_];

  v14 = sub_226B224FC(MEMORY[0x277D84F90]);
  v15 = v4 + 56;
  v16 = -1;
  v17 = -1 << *(v4 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v4 + 56);
  v19 = (63 - v17) >> 6;
  v70 = v4;

  v23 = 0;
  v68 = v19;
  for (i = v4 + 56; ; v15 = i)
  {
    v71[22] = v14;
    if (!v18)
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v25 >= v19)
        {
          break;
        }

        v18 = *(v15 + 8 * v25);
        ++v23;
        if (v18)
        {
          v23 = v25;
          goto LABEL_11;
        }
      }

      v56 = v71[13];
      v57 = v71[14];
      v58 = v71[12];

      v60 = sub_226D486B0(v59);

      v71[4] = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
      sub_226AE3D6C();
      sub_226D6E31C();

      v61 = objc_allocWithZone(MEMORY[0x277CC3498]);
      v62 = v67;
      v63 = sub_226D6E36C();

      v71[23] = [v61 initWithQueryString:v63 queryContext:v62];

      v71[5] = MEMORY[0x277D84FA0];
      sub_226D6E99C();
      sub_226D6E94C();
      (*(v56 + 8))(v57, v58);
      v64 = sub_226D4C8F8(&unk_27D7A95C0, MEMORY[0x277CC21E8], MEMORY[0x277CC21F0]);
      v65 = swift_task_alloc();
      v71[24] = v65;
      *v65 = v71;
      v65[1] = sub_226D4C2C0;
      v21 = v71[15];
      v20 = v71[11];
      v22 = v64;

      return MEMORY[0x282200308](v20, v21, v22);
    }

LABEL_11:
    v26 = (*(v70 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v18)))));
    v28 = *v26;
    v27 = v26[1];

    v29 = v28;
    v30 = sub_226D67AFC();
    v32 = v31;
    v33 = v27;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_226C2FDD4(v30, v32);
    v36 = v14[2];
    v37 = (v21 & 1) == 0;
    v20 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return MEMORY[0x282200308](v20, v21, v22);
    }

    v38 = v21;
    if (v14[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v29;
        if (v21)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_226C37EBC();
        v39 = v29;
        if (v38)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_226C31844(v20, isUniquelyReferenced_nonNull_native);
      v20 = sub_226C2FDD4(v30, v32);
      if ((v38 & 1) != (v21 & 1))
      {
        goto LABEL_35;
      }

      v35 = v20;
      v39 = v29;
      if (v38)
      {
LABEL_18:
        v40 = (v14[7] + 16 * v35);
        *v40 = v39;
        v40[1] = v33;

        goto LABEL_22;
      }
    }

    v14[(v35 >> 6) + 8] |= 1 << v35;
    v41 = (v14[6] + 16 * v35);
    *v41 = v30;
    v41[1] = v32;
    v42 = (v14[7] + 16 * v35);
    *v42 = v39;
    v42[1] = v33;
    v43 = v14[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_41;
    }

    v14[2] = v45;

LABEL_22:
    MEMORY[0x22AA8A510](v30, v32);

    MEMORY[0x22AA8A510](62, 0xE100000000000000);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_226C2FDD4(60, 0xE100000000000000);
    v47 = v14[2];
    v48 = (v21 & 1) == 0;
    v44 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v44)
    {
      goto LABEL_40;
    }

    v50 = v21;
    if (v14[3] < v49)
    {
      break;
    }

    if (v46)
    {
      goto LABEL_27;
    }

    v55 = v20;
    sub_226C37EBC();
    v20 = v55;
    if (v50)
    {
LABEL_4:
      v24 = (v14[7] + 16 * v20);
      *v24 = v39;
      v24[1] = v33;

      goto LABEL_5;
    }

LABEL_28:
    v14[(v20 >> 6) + 8] |= 1 << v20;
    v51 = (v14[6] + 16 * v20);
    *v51 = 60;
    v51[1] = 0xE100000000000000;
    v52 = (v14[7] + 16 * v20);
    *v52 = v39;
    v52[1] = v33;
    v53 = v14[2];
    v44 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v44)
    {
      goto LABEL_42;
    }

    v14[2] = v54;
LABEL_5:
    v18 &= v18 - 1;

    v19 = v68;
  }

  sub_226C31844(v49, v46);
  v20 = sub_226C2FDD4(60, 0xE100000000000000);
  if ((v50 & 1) == (v21 & 1))
  {
LABEL_27:
    if (v50)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_35:

  return sub_226D6F25C();
}

uint64_t sub_226D4C2C0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_226D4C72C;
  }

  else
  {
    v2 = sub_226D4C3E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D4C3E8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[23];
    v5 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v6 = v0[5];

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    (*(v3 + 32))(v0[10], v1, v2);
    v9 = sub_226D6E95C();
    v10 = [v9 attributeSet];

    v11 = [v10 mailMessageHeader];
    if (v11)
    {
      v12 = v0[22];
      v13 = v11;
      v14 = sub_226D6E39C();
      v16 = v15;

      if (*(v12 + 16))
      {
        v17 = sub_226C2FDD4(v14, v16);
        v19 = v18;

        if (v19)
        {
          v21 = v0[9];
          v20 = v0[10];
          v22 = v0[8];
          v23 = (*(v0[22] + 56) + 16 * v17);
          v24 = *v23;
          v25 = v23[1];

          sub_226C24D14(v0 + 2, v24, v25);

          (*(v21 + 8))(v20, v22);
        }

        else
        {
          v30 = v0[9];
          v29 = v0[10];
          v31 = v0[8];

          (*(v30 + 8))(v29, v31);
        }
      }

      else
      {
        v27 = v0[9];
        v26 = v0[10];
        v28 = v0[8];

        (*(v27 + 8))(v26, v28);
      }
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
    }

    v32 = sub_226D4C8F8(&unk_27D7A95C0, MEMORY[0x277CC21E8], MEMORY[0x277CC21F0]);
    v33 = swift_task_alloc();
    v0[24] = v33;
    *v33 = v0;
    v33[1] = sub_226D4C2C0;
    v34 = v0[15];
    v35 = v0[11];

    return MEMORY[0x282200308](v35, v34, v32);
  }
}

uint64_t sub_226D4C72C()
{
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_226D4C7C0, 0, 0);
}

uint64_t sub_226D4C7C0()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D4C890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D4C8F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BankConnectServiceImplementation.validateAccountConnection(with:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_226D6B9BC();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4CA48, 0, 0);
}

uint64_t sub_226D4CA48()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  v2 = sub_226B6A16C();
  *(v0 + 88) = v2;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = type metadata accessor for BankConnectAccountConnectionValidator();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for BankConnectEnvironmentImplementation);
  v7 = off_283A722F0;
  v8 = swift_task_alloc();
  v7[2](v8, v6, &type metadata for BankConnectEnvironmentImplementation);
  *(v0 + 120) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 128) = v2;
  v9 = swift_allocObject();
  *(v0 + 96) = v9;
  memcpy((v9 + 16), v8, 0x3B0uLL);
  sub_226AC484C((v0 + 96), v5 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  *(v0 + 40) = v4;
  *(v0 + 48) = &off_283A71A08;
  *(v0 + 16) = v5;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_226D4CC58;
  v11 = *(v0 + 184);
  v12 = *(v0 + 136);

  return sub_226CE9490(v11, v12);
}

uint64_t sub_226D4CC58()
{

  return MEMORY[0x2822009F8](sub_226D4CD54, 0, 0);
}

uint64_t sub_226D4CD54()
{
  v31 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[17];
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_27D7A7D10);
  (*(v4 + 16))(v3, v6, v5);
  sub_226CEB09C(v2, v1);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  if (v10)
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 136315394;
    sub_226C0B634();
    v17 = sub_226D6F1CC();
    v29 = v11;
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_226AC4530(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_226D4D060();
    v23 = v22;
    sub_226D4D004(v12);
    v24 = sub_226AC4530(v21, v23, &v30);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226AB4000, v8, v9, "Finished validating account(%s) with result %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v25 = v29;
  }

  else
  {

    sub_226D4D004(v12);
    (*(v14 + 8))(v13, v15);
    v25 = v11;
  }

  sub_226D4D004(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v26 = v0[1];

  return v26();
}

uint64_t sub_226D4D004(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226D4D060()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D68CBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226CEB09C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v4, v11, v1);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000040, 0x8000000226D88AE0);
      sub_226C0B634();
      v16 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v16);

      MEMORY[0x22AA8A510](10537, 0xE200000000000000);
      v13 = v19;
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD00000000000003DLL, 0x8000000226D88B30);
      sub_226D6EFBC();
      MEMORY[0x22AA8A510](10537, 0xE200000000000000);
      v13 = v19;
      (*(v6 + 8))(v8, v5);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v14 = *v11;
    v15 = v11[1];
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000035, 0x8000000226D88A00);
    v18[0] = v14;
    v18[1] = v15;
    sub_226D6EFBC();
    sub_226B3E1C8(v14, v15);
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    return v19;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD000000000000040;
  }

  else
  {
    return 0xD000000000000044;
  }

  return v13;
}

void sub_226D4D434(uint64_t a1)
{
  v37 = sub_226D6D1AC();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_226D6EDFC();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v5 & ~(v5 >> 63), 0);
    v40 = v45;
    if (v38)
    {
      v6 = sub_226D6EFFC();
    }

    else
    {
      v6 = sub_226D6ED6C();
      v7 = *(a1 + 36);
    }

    v42 = v6;
    v43 = v7;
    v44 = v38 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v34 = (v3 + 8);
      v35 = a1;
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v32[1] = v1;
      v32[2] = v9;
      v33 = v5;
      while (v8 < v5)
      {
        if (__OFADD__(v8, 1))
        {
          goto LABEL_26;
        }

        v39 = v8 + 1;
        v17 = v42;
        v18 = v43;
        v19 = v44;
        sub_226D56C74(v42, v43, v44, a1);
        v21 = v20;
        v22 = [v20 URIRepresentation];
        v23 = v36;
        sub_226D6D14C();

        v24 = sub_226D6D0AC();
        v26 = v25;
        (*v34)(v23, v37);

        v27 = v40;
        v45 = v40;
        v29 = *(v40 + 16);
        v28 = *(v40 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE1D68((v28 > 1), v29 + 1, 1);
          v27 = v45;
        }

        *(v27 + 16) = v29 + 1;
        v30 = v27 + 16 * v29;
        *(v30 + 32) = v24;
        *(v30 + 40) = v26;
        v40 = v27;
        if (v38)
        {
          a1 = v35;
          if (!v19)
          {
            goto LABEL_28;
          }

          if (sub_226D6F03C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v33;
          v16 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9678, &qword_226D7E598);
          v31 = sub_226D6E2DC();
          sub_226D6F09C();
          v31(v41, 0);
        }

        else
        {
          a1 = v35;
          sub_226D56B10(v17, v18, v19, v35);
          v11 = v10;
          v13 = v12;
          v15 = v14;
          sub_226AE5444(v17, v18, v19);
          v42 = v11;
          v43 = v13;
          v44 = v15 & 1;
          v5 = v33;
          v16 = v39;
        }

        ++v8;
        if (v16 == v5)
        {
          sub_226AE5444(v42, v43, v44);
          return;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_226D4D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_226D6F2FC();
  sub_226D6E42C();
  v6 = sub_226D6F35C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_226D4D898(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_226D6E2FC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_226D6E35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_226D4DAB0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v47 = *(a1 + 1);
  v48 = *a1;
  v46 = *(a1 + 2);
  v45 = *(a1 + 48);
  sub_226D6F2FC();
  if (*(a1 + 48))
  {
    if (*(a1 + 48) != 1)
    {
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_9;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AA8B3B0](v3);
  sub_226D6E42C();
LABEL_9:
  sub_226D6E42C();
  v5 = sub_226D6F35C();
  v6 = a2;
  v7 = -1 << *(a2 + 32);
  v8 = v5 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v44 = ~v7;
  while (1)
  {
    v17 = *(v6 + 48) + 56 * v8;
    v19 = *v17;
    v18 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v23 = *(v17 + 32);
    v22 = *(v17 + 40);
    v24 = *(v17 + 48);
    v50[0] = *v17;
    v50[1] = v18;
    v50[2] = v21;
    v50[3] = v20;
    v50[4] = v23;
    v50[5] = v22;
    v51 = v24;
    v52 = v48;
    v53 = v47;
    v54 = v46;
    v55 = v45;
    if (!v24)
    {
      break;
    }

    if (v24 == 1)
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_48;
      }

      v25 = a1[2];
      v26 = a1[3];
      if (v19 != *a1 || v18 != a1[1])
      {
        v40 = a1[2];
        v28 = sub_226D6F21C();
        v25 = v40;
        if ((v28 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (v21 == v25 && v20 == v26)
      {
        goto LABEL_52;
      }

      v9 = sub_226D6F21C();
      sub_226AE50D8(a1, v49);
      v10 = v19;
      v11 = v18;
      v12 = v21;
      v13 = v20;
      v14 = v23;
      v15 = v22;
      v16 = 1;
    }

    else
    {
      if (*(a1 + 48) != 2)
      {
LABEL_48:
        sub_226AE50D8(a1, v49);
LABEL_50:
        sub_226AFD74C(v19, v18, v21, v20, v23, v22, v24);
        sub_226AC47B0(v50, &unk_27D7A9640, &qword_226D7A5E0);
        goto LABEL_13;
      }

      v36 = a1[2];
      v35 = a1[3];
      v39 = a1[5];
      v42 = a1[4];
      if (v19 != *a1 || v18 != a1[1])
      {
        v38 = a1[3];
        v37 = sub_226D6F21C();
        v35 = v38;
        if ((v37 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if ((v21 != v36 || v20 != v35) && (sub_226D6F21C() & 1) == 0)
      {
        goto LABEL_49;
      }

      if (v23 == v42 && v22 == v39)
      {
        goto LABEL_52;
      }

      v9 = sub_226D6F21C();
      sub_226AE50D8(a1, v49);
      v10 = v19;
      v11 = v18;
      v12 = v21;
      v13 = v20;
      v14 = v23;
      v15 = v22;
      v16 = 2;
    }

LABEL_12:
    sub_226AFD74C(v10, v11, v12, v13, v14, v15, v16);
    sub_226AC47B0(v50, &unk_27D7A9640, &qword_226D7A5E0);
    v6 = a2;
    if (v9)
    {
      return 1;
    }

LABEL_13:
    v8 = (v8 + 1) & v44;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 48))
  {
    goto LABEL_48;
  }

  v30 = a1[2];
  v31 = a1[3];
  if (v19 != *a1 || v18 != a1[1])
  {
    v41 = a1[2];
    v33 = sub_226D6F21C();
    v30 = v41;
    if ((v33 & 1) == 0)
    {
LABEL_49:
      sub_226AE50D8(a1, v49);
      v6 = a2;
      goto LABEL_50;
    }
  }

  if (v21 != v30 || v20 != v31)
  {
    v9 = sub_226D6F21C();
    sub_226AE50D8(a1, v49);
    v10 = v19;
    v11 = v18;
    v12 = v21;
    v13 = v20;
    v14 = v23;
    v15 = v22;
    v16 = 0;
    goto LABEL_12;
  }

LABEL_52:
  sub_226AE50D8(a1, v49);
  sub_226AFD74C(v19, v18, v21, v20, v23, v22, v24);
  sub_226AC47B0(v50, &unk_27D7A9640, &qword_226D7A5E0);
  return 1;
}

uint64_t sub_226D4DF34(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_226D58848(&qword_27D7A9630, MEMORY[0x277CC7098], MEMORY[0x277CC70A8]), v7 = sub_226D6E2FC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_226D58848(&qword_281062BD0, MEMORY[0x277CC7098], MEMORY[0x277CC70B0]);
      v15 = sub_226D6E35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_226D4E14C(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D680EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_226D58848(&qword_27D7A9690, MEMORY[0x277CC7180], MEMORY[0x277CC7188]), v7 = sub_226D6E2FC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_226D58848(&qword_27D7A69E0, MEMORY[0x277CC7180], MEMORY[0x277CC7190]);
      v15 = sub_226D6E35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t WalletMessagingProvider.processMessages()()
{
  v1[7] = v0;
  v2 = sub_226D6D1AC();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_226D6EB9C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4E4AC, 0, 0);
}

uint64_t sub_226D4E4AC()
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[14] = __swift_project_value_buffer(v1, qword_28105F6C8);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Processing Wallet messages", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink);
  v0[15] = v6;
  if (v6)
  {
    v7 = v0[7];
    v8 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
    if (*(v7 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_226D67F5C();
      swift_unknownObjectRetain();
      sub_226D67F3C();
      v21 = sub_226D67F4C();

      *(v7 + v8) = v21;
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    v12 = sub_226D676AC();
    v0[16] = v12;

    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v12;
    (*(v10 + 104))(v9, *MEMORY[0x277CBE110], v11);
    v12;
    v14 = swift_task_alloc();
    v0[18] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A95E8, qword_226D7E4D0);
    *v14 = v0;
    v14[1] = sub_226D4E910;
    v16 = v0[13];

    return MEMORY[0x28210EE50](v0 + 2, v16, sub_226D56F14, v13, v15);
  }

  else
  {
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226AB4000, v17, v18, "No message sink, skipping Wallet message processing", v19, 2u);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

void sub_226D4E910()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = v2[16];
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);

    MEMORY[0x2822009F8](sub_226D4EA74, 0, 0);
  }
}

void sub_226D4EA74()
{
  v99 = v0;
  v1 = *(v0 + 16);
  v2 = [*(v0 + 120) registrations];
  v3 = MEMORY[0x277D84F90];
  v95 = v0;
  v91 = v1;
  if (!v2)
  {
    goto LABEL_29;
  }

  v4 = v2;
  sub_226AE59B4(0, &qword_27D7A9600, 0x277D37D98);
  v5 = sub_226D6E5EC();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_25:

    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }

LABEL_26:
    v12 = sub_226D6EDFC();
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v6 = sub_226D6EDFC();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  v98[0] = v3;
  sub_226D6EF8C();
  if (v6 < 0)
  {
    goto LABEL_80;
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA8AFD0](v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = [v8 key];

    sub_226D6EF6C();
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v6 != v7);

  v11 = v98[0];
  if (v98[0] >> 62)
  {
    goto LABEL_26;
  }

LABEL_11:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
LABEL_12:
    v98[0] = v3;
    sub_226AE1D68(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_81;
    }

    v3 = v98[0];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v13, v11);
        v14 = [swift_unknownObjectRetain() identifier];
        v15 = sub_226D6E39C();
        v17 = v16;

        swift_unknownObjectRelease_n();
        v98[0] = v3;
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_226AE1D68((v18 > 1), v19 + 1, 1);
          v3 = v98[0];
        }

        ++v13;
        *(v3 + 16) = v19 + 1;
        v20 = v3 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v12 != v13);
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v11 + v21);
        v23 = [v22 identifier];
        v24 = sub_226D6E39C();
        v26 = v25;

        v98[0] = v3;
        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_226AE1D68((v27 > 1), v28 + 1, 1);
          v3 = v98[0];
        }

        *(v3 + 16) = v28 + 1;
        v29 = v3 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v21 += 8;
        --v12;
      }

      while (v12);
    }

    v0 = v95;
    goto LABEL_28;
  }

LABEL_27:

  v3 = MEMORY[0x277D84F90];
LABEL_28:
  v1 = v91;
LABEL_29:
  v30 = sub_226AE3C28(v3);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v31 = 0;
    v92 = 0;
    v32 = 0;
    v33 = sub_226D6F00C() | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(v1 + 32);
    v92 = ~v34;
    v31 = v1 + 64;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v32 = v36 & *(v1 + 64);
    v33 = v1;
  }

  v37 = (v92 + 64) >> 6;
  v93 = (*(v0 + 72) + 8);
  v97 = v30 + 56;

  v38 = 0;
  v94 = v33;
  while ((v33 & 0x8000000000000000) != 0)
  {
    v47 = sub_226D6F08C();
    if (!v47 || (v49 = v48, *(v0 + 32) = v47, sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448), swift_dynamicCast(), v45 = *(v0 + 24), *(v0 + 48) = v49, sub_226AE59B4(0, &qword_27D7A95F8, 0x277D37DA0), swift_dynamicCast(), v46 = *(v0 + 40), v41 = v38, v96 = v32, !v45))
    {
LABEL_62:
      sub_226AD3C20(v94);
      sub_226D4D434(v91);
      v77 = v76;

      v78 = sub_226AE3C28(v77);

      if (*(v78 + 16) <= *(v30 + 16) >> 3)
      {
        v98[0] = v30;
        sub_226D53D38(v78);

        v79 = v98[0];
      }

      else
      {
        v79 = sub_226D549F0(v78, v30);
      }

      v80 = 0;
      v81 = -1;
      v82 = -1 << *(v79 + 32);
      if (-v82 < 64)
      {
        v81 = ~(-1 << -v82);
      }

      v83 = v81 & *(v79 + 56);
      v84 = (63 - v82) >> 6;
      if (v83)
      {
        goto LABEL_73;
      }

      while (1)
      {
        v85 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v85 >= v84)
        {
          break;
        }

        v83 = *(v79 + 56 + 8 * v85);
        ++v80;
        if (v83)
        {
          v80 = v85;
          do
          {
LABEL_73:
            v86 = *(v95 + 120);
            v83 &= v83 - 1;

            v87 = sub_226D6E36C();

            [v86 unregisterMessageForIdentifier_];
          }

          while (v83);
          continue;
        }
      }

      swift_unknownObjectRelease();

      v88 = *(v95 + 8);

      v88();
      return;
    }

LABEL_47:
    v50 = *(v0 + 80);
    v51 = *(v0 + 64);
    v52 = [v45 URIRepresentation];
    sub_226D6D14C();

    v53 = sub_226D6D0AC();
    v55 = v54;
    (*v93)(v50, v51);
    if (*(v30 + 16) && (sub_226D6F2FC(), sub_226D6E42C(), v56 = sub_226D6F35C(), v57 = -1 << *(v30 + 32), v58 = v56 & ~v57, ((*(v97 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0))
    {
      v59 = ~v57;
      while (1)
      {
        v60 = (*(v30 + 48) + 16 * v58);
        v61 = *v60 == v53 && v60[1] == v55;
        if (v61 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v97 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
LABEL_56:
      v62 = *(v0 + 120);
      v63 = sub_226D6E36C();

      v64 = v46;
      LOBYTE(v62) = [v62 registerMessageForIdentifier:v63 withRequest:v46];

      if (v62)
      {

        goto LABEL_37;
      }

      v46 = v45;
      v65 = sub_226D6E05C();
      v66 = sub_226D6E9CC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v98[0] = v68;
        *v67 = 136315138;
        v90 = v46;
        v69 = [v46 debugDescription];
        v70 = v31;
        v71 = sub_226D6E39C();
        v89 = v64;
        v73 = v72;

        v74 = v71;
        v31 = v70;
        v75 = sub_226AC4530(v74, v73, v98);

        *(v67 + 4) = v75;
        v0 = v95;
        _os_log_impl(&dword_226AB4000, v65, v66, "Error registering message %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        MEMORY[0x22AA8BEE0](v68, -1, -1);
        MEMORY[0x22AA8BEE0](v67, -1, -1);

        goto LABEL_37;
      }
    }

LABEL_37:
    v38 = v41;
    v32 = v96;
    v37 = (v92 + 64) >> 6;
    v33 = v94;
  }

  v39 = v38;
  v40 = v32;
  v41 = v38;
  if (v32)
  {
LABEL_43:
    v96 = (v40 - 1) & v40;
    v42 = (v41 << 9) | (8 * __clz(__rbit64(v40)));
    v43 = *(*(v33 + 48) + v42);
    v44 = *(*(v33 + 56) + v42);
    v45 = v43;
    v46 = v44;
    if (!v45)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      goto LABEL_62;
    }

    v40 = *(v31 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_43;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

void sub_226D4F3D8(uint64_t isUniquelyReferenced_nonNull_native@<X8>)
{
  sub_226D691CC();
  v3 = sub_226D6919C();
  v4 = sub_226D6EBBC();
  v5 = v1;
  if (v1)
  {

    if (qword_28105F6C0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F6C8);
    v7 = v5;
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_226AB4000, v8, v9, "Error fetching messages: %@", v10, 0xCu);
      sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    v14 = sub_226B2459C(MEMORY[0x277D84F90]);
    goto LABEL_44;
  }

  v15 = v4;

  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_226D6EDFC();
    v16 = v15;
    v39 = isUniquelyReferenced_nonNull_native;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_42:
    v14 = MEMORY[0x277D84F98];
LABEL_43:

    isUniquelyReferenced_nonNull_native = v39;
LABEL_44:
    *isUniquelyReferenced_nonNull_native = v14;
    return;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = isUniquelyReferenced_nonNull_native;
  if (!v17)
  {
    goto LABEL_42;
  }

LABEL_8:
  v5 = 0;
  v42 = v16 & 0xFFFFFFFFFFFFFF8;
  v43 = v16 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F98];
  v40 = v17;
  v41 = v16;
  while (1)
  {
    if (v43)
    {
      v20 = MEMORY[0x22AA8AFD0](v5, v16);
    }

    else
    {
      if (v5 >= *(v42 + 16))
      {
        goto LABEL_35;
      }

      v20 = *(v16 + 8 * v5 + 32);
    }

    v21 = v20;
    v22 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = [v20 objectID];
    v24 = [objc_allocWithZone(MEMORY[0x277D37DA0]) init];
    v25 = [v21 priority];
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    [v24 setPriority_];
    if ((v14 & 0xC000000000000001) != 0)
    {
      if (v14 < 0)
      {
        v26 = v14;
      }

      else
      {
        v26 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      v27 = sub_226D6EDFC();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_38;
      }

      v14 = sub_226D52C88(v26, v27 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_226C3015C(v23);
    v30 = *(v14 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (*(v14 + 24) < v32)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_226C3A110();
      if (v33)
      {
LABEL_9:
        v18 = *(v14 + 56);
        v19 = *(v18 + 8 * v29);
        *(v18 + 8 * v29) = v24;

        goto LABEL_10;
      }
    }

LABEL_29:
    *(v14 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    *(*(v14 + 48) + 8 * v29) = v23;
    *(*(v14 + 56) + 8 * v29) = v24;

    v36 = *(v14 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_39;
    }

    *(v14 + 16) = v38;
LABEL_10:
    ++v5;
    v16 = v41;
    if (v22 == v40)
    {
      goto LABEL_43;
    }
  }

  sub_226C35FDC(v32, isUniquelyReferenced_nonNull_native);
  v34 = sub_226C3015C(v23);
  if ((v33 & 1) == (v35 & 1))
  {
    v29 = v34;
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  sub_226D6F25C();
  __break(1u);
}

uint64_t sub_226D4F98C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_226D4FA34;

  return WalletMessagingProvider.processMessages()();
}

uint64_t sub_226D4FA34()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id WalletMessagingProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletMessagingProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WalletMessagingProvider.connect(_:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink) = a1;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (*(v1 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_226D67F5C();
    swift_unknownObjectRetain();
    sub_226D67F3C();
    v7 = sub_226D67F4C();

    *(v1 + v3) = v7;
  }

  v4 = sub_226D676AC();

  v5 = sub_226AE532C(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_userDefaults, v8);
  MEMORY[0x28223BE20](v5);
  sub_226D6EB8C();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (v9)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
    [v6 updateFinanceKitApplicationMessages];
  }

  else
  {
  }
}

uint64_t sub_226D4FFB4@<X0>(void *a2@<X1>, _BYTE *a5@<X8>)
{
  sub_226D691CC();
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v7);
  v13[3] = v7;
  v13[4] = *(v8 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
  v11 = sub_226D6914C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  *a5 = v11 & 1;
  return result;
}

void sub_226D50114(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v15[0] = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:v15];

  if (v9)
  {
    v10 = v15[0];
    v11 = sub_226D571F4(a2, a1);
    if (v11)
    {
      v12 = v11;
      v13 = sub_226D50248(a3 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_imageProcessingService);

      *a4 = v13;
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v14 = v15[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

id sub_226D50248(uint64_t a1)
{
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6916C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D6918C();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277CC77E8])
  {
    (*(v7 + 96))(v9, v6);
    v11 = v9[3];
    v12 = sub_226D57788();
    v13 = sub_226D6E36C();

    if (v11)
    {
      v14 = sub_226D6E36C();
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_opt_self() createWithGroup:v12 action:0 icon:0 title:v13 body:v14];

    return v15;
  }

  if (v10 == *MEMORY[0x277CC77E0])
  {
    (*(v7 + 96))(v9, v6);
    v15 = sub_226D50BD8(*v9, v9[1]);

    return v15;
  }

  if (v10 == *MEMORY[0x277CC77D8])
  {
    (*(v7 + 96))(v9, v6);
    v16 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9660, &qword_226D7E590) + 48));
    v17 = *v16;
    v18 = v16[1];
    (*(v3 + 32))(v5, v9, v2);
    v19 = sub_226D512E4(v5, v17, v18, a1);
LABEL_12:
    v15 = v19;

    (*(v3 + 8))(v5, v2);
    return v15;
  }

  if (v10 == *MEMORY[0x277CC77D0])
  {
    (*(v7 + 96))(v9, v6);
    v20 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A30, &qword_226D75DF8) + 48));
    v21 = *v20;
    v22 = v20[1];
    (*(v3 + 32))(v5, v9, v2);
    v19 = sub_226D51D68(v5, v21, v22, a1);
    goto LABEL_12;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226D50698(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_226D571F4(a1, a2);
  if (v4)
  {
    v5 = v4;
    [a2 deleteObject_];
    v18 = 0;
    if ([a2 save_])
    {
      v6 = v18;
    }

    else
    {
      v17 = v18;
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F6C8);
    v8 = a1;
    v5 = sub_226D6E05C();
    v9 = sub_226D6E9CC();

    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = [v8 debugDescription];
      v13 = sub_226D6E39C();
      v15 = v14;

      v16 = sub_226AC4530(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_226AB4000, v5, v9, "Could not find message to remove: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }
}

void WalletMessagingProvider.applicationMessageSink(_:tappedMessageWith:)(void *a1, void *a2)
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F6C8);
  v5 = a2;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_226D6E39C();
    v13 = v12;

    v14 = sub_226AC4530(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v6, v7, "Tapped message: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v15 = [v5 key];
  v16 = [v15 identifier];

  if (!v16)
  {
    sub_226D6E39C();
    v16 = sub_226D6E36C();
  }

  [a1 unregisterMessageForIdentifier_];

  sub_226D58158();
}

id sub_226D50BD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_226D6D1AC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D4AC();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6C9BC();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D71C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_226D69B8C();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_226D6C9DC();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v2 managedObjectContext];
  if (v19)
  {
    v20 = v19;
    sub_226D6C37C();
    v21 = sub_226D6C36C();
    v22 = a2;
    v23 = v21;
    v42 = v22;
    if (v21)
    {
      v24 = a1;
      sub_226D6D56C();
      sub_226D6D66C();
      sub_226D6D70C();
      sub_226D69B5C();
      v41 = v18;
      sub_226D6C97C();
      v25 = [v23 inEffectOn];
      v26 = v43;
      sub_226D6D45C();

      v27 = v48;
      sub_226D6C9CC();
      (*(v44 + 8))(v26, v45);
      v28 = v51;
      v29 = v24;
      v30 = v42;
      sub_226D66D9C();
      v31 = objc_opt_self();
      v32 = sub_226D6D0DC();
      v33 = [v31 createWithURL_];

      v34 = objc_opt_self();
      v35 = sub_226D5799C(v29, v30);
      v36 = v33;
      sub_226D6C9AC();
      v37 = sub_226D6E36C();

      sub_226D6C99C();
      v38 = sub_226D6E36C();

      v39 = [v34 createWithGroup:v35 action:v36 icon:0 title:v37 body:v38];

      (*(v52 + 8))(v28, v53);
      (*(v49 + 8))(v27, v50);
      (*(v46 + 8))(v41, v47);
      return v39;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

id sub_226D512E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v78 = a2;
  v79 = a3;
  v6 = sub_226D6D1AC();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_226D6B22C();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6CA6C();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D71C();
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_226D69B8C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6CA7C();
  v72 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_226D6CA3C();
  v71 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v77 = &v59 - v30;
  v31 = [v4 managedObjectContext];
  if (v31)
  {
    v32 = v31;
    sub_226D6751C();
    v80 = v32;
    v33 = sub_226D6745C();
    v34 = a1;
    v35 = v33;
    v62 = v34;
    if (v33)
    {
      v36 = [v33 ecommerceOrderContent];
      if (v36)
      {
        v37 = v36;
        v61 = sub_226D6B1EC();
        if ((~v61 & 0xF000000000000007) != 0)
        {
          v60 = v35;
          v38 = v37;
          sub_226D58830(v61);
          v59 = v38;
          sub_226D6CA1C();
          sub_226D6D56C();
          sub_226D6D66C();
          sub_226D6D70C();
          sub_226D69B5C();
          MEMORY[0x22AA88AB0](v18);
          sub_226D58848(&qword_27D7A9670, MEMORY[0x277CC83D0], MEMORY[0x277CC83C8]);
          v39 = v77;
          sub_226D6CA2C();
          (*(v72 + 8))(v21, v19);
          (*(v71 + 8))(v24, v22);
          sub_226AC40E8(v39, v27, &qword_27D7A7A80, &unk_226D75FF8);
          v41 = v75;
          v40 = v76;
          if ((*(v75 + 48))(v27, 1, v76) != 1)
          {
            v43 = v70;
            (*(v41 + 32))(v70, v27, v40);
            v44 = v61;
            v45 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
            v46 = v66;
            v47 = v59;
            sub_226D6B24C();
            sub_226BD4CD8(v44);
            sub_226D57BE4(v47, v46, v68);
            v49 = v48;
            (*(v67 + 8))(v46, v69);
            sub_226D66D7C();
            v50 = objc_opt_self();
            v51 = sub_226D6D0DC();
            v52 = [v50 createWithURL_];

            v53 = objc_opt_self();
            v54 = sub_226D57788();
            v55 = v52;
            sub_226D6CA4C();
            v56 = sub_226D6E36C();

            sub_226D6CA5C();
            v57 = sub_226D6E36C();

            v58 = [v53 createWithGroup:v54 action:v55 icon:v49 title:v56 body:v57];

            sub_226BD4CD8(v61);
            (*(v63 + 8))(v65, v64);
            (*(v41 + 8))(v43, v40);
            sub_226AC47B0(v77, &qword_27D7A7A80, &unk_226D75FF8);
            return v58;
          }

          sub_226AC47B0(v39, &qword_27D7A7A80, &unk_226D75FF8);

          sub_226BD4CD8(v61);
          sub_226AC47B0(v27, &qword_27D7A7A80, &unk_226D75FF8);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

id sub_226D51D68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v68 = a4;
  v78 = a2;
  v79 = a3;
  v6 = sub_226D6D1AC();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_226D6B22C();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6CA6C();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D71C();
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_226D69B8C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6CB0C();
  v72 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_226D6CAFC();
  v71 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v77 = &v59 - v30;
  v31 = [v4 managedObjectContext];
  if (v31)
  {
    v32 = v31;
    sub_226D6751C();
    v80 = v32;
    v33 = sub_226D6745C();
    v34 = a1;
    v35 = v33;
    v62 = v34;
    if (v33)
    {
      v36 = [v33 ecommerceOrderContent];
      if (v36)
      {
        v37 = v36;
        v38 = sub_226D6B1FC();
        if (v38)
        {
          v61 = v38;
          v39 = v35;
          v40 = v37;
          v41 = v61;
          v59 = v39;
          v60 = v40;
          v61 = v41;
          sub_226D6CADC();
          sub_226D6D56C();
          sub_226D6D66C();
          sub_226D6D70C();
          sub_226D69B5C();
          MEMORY[0x22AA88B70](v18);
          sub_226D58848(&qword_27D7A7A88, MEMORY[0x277CC8570], MEMORY[0x277CC8568]);
          v42 = v77;
          sub_226D6CA2C();
          (*(v72 + 8))(v21, v19);
          (*(v71 + 8))(v24, v22);
          sub_226AC40E8(v42, v27, &qword_27D7A7A80, &unk_226D75FF8);
          v44 = v75;
          v43 = v76;
          if ((*(v75 + 48))(v27, 1, v76) != 1)
          {
            v46 = v59;
            (*(v44 + 32))(v70, v27, v43);
            v47 = v66;
            v48 = v60;
            sub_226D6B25C();
            sub_226D57BE4(v48, v47, v68);
            v50 = v49;
            (*(v67 + 8))(v47, v69);
            sub_226D66D8C();
            v51 = objc_opt_self();
            v52 = sub_226D6D0DC();
            v53 = [v51 createWithURL_];

            v79 = objc_opt_self();
            v54 = sub_226D57788();
            v55 = v53;
            sub_226D6CA4C();
            v56 = sub_226D6E36C();

            sub_226D6CA5C();
            v57 = sub_226D6E36C();

            v58 = [v79 createWithGroup:v54 action:v55 icon:v50 title:v56 body:v57];

            (*(v63 + 8))(v65, v64);
            (*(v44 + 8))(v70, v43);
            sub_226AC47B0(v77, &qword_27D7A7A80, &unk_226D75FF8);
            return v58;
          }

          sub_226AC47B0(v42, &qword_27D7A7A80, &unk_226D75FF8);

          sub_226AC47B0(v27, &qword_27D7A7A80, &unk_226D75FF8);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226D527BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_226AE5A84;

  return v6();
}

uint64_t sub_226D528A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_226AD827C;

  return v7();
}

uint64_t sub_226D5298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_226AC40E8(a3, v23 - v10, &unk_27D7A8BA0, &qword_226D734E0);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
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

  sub_226D6E78C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_226D6E6CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_226D6E40C() + 32;
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

    sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

    return v21;
  }

LABEL_8:
  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
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

uint64_t sub_226D52C88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
    v2 = sub_226D6F0FC();
    v19 = v2;
    sub_226D6F00C();
    v3 = sub_226D6F08C();
    if (v3)
    {
      v4 = v3;
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_226AE59B4(0, &qword_27D7A95F8, 0x277D37DA0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_226C35FDC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_226D6EC2C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_226D6F08C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_226D52ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_226D6EDFC();
  v5 = swift_unknownObjectRetain();
  v6 = sub_226C27938(v5, v4);
  v15 = v6;

  v7 = sub_226D6EC2C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_226D6EC3C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_226D537C4(v9);
  result = sub_226D6EC3C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_226D5303C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_226D6F2FC();

        sub_226D6E42C();
        v10 = sub_226D6F35C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226D53200(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v32 = v4;
      v33 = v3;
      v30 = (v8 + 1) & v7;
      v31 = v7;
      while (1)
      {
        v34 = v2;
        v12 = 56 * v6;
        v13 = *(v3 + 48) + 56 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        v19 = *(v13 + 32);
        v18 = *(v13 + 40);
        v20 = *(v13 + 48);
        sub_226D6F2FC();
        if (!v20)
        {
          break;
        }

        if (v20 == 1)
        {
          v21 = 1;
LABEL_10:
          MEMORY[0x22AA8B3B0](v21);

          sub_226D6E42C();
          goto LABEL_12;
        }

        MEMORY[0x22AA8B3B0](2);

        sub_226D6E42C();
        sub_226D6E42C();
LABEL_12:
        sub_226D6E42C();
        v22 = sub_226D6F35C();
        sub_226AE5134(v14, v15, v16, v17, v19, v18, v20);
        v23 = v22 & v31;
        v2 = v34;
        if (v34 >= v30)
        {
          v4 = v32;
          v3 = v33;
          if (v23 < v30)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v32;
          v3 = v33;
          if (v23 >= v30)
          {
            goto LABEL_17;
          }
        }

        if (v34 >= v23)
        {
LABEL_17:
          v24 = *(v3 + 48);
          v25 = v24 + 56 * v34;
          v26 = (v24 + v12);
          if (56 * v34 < v12 || v25 >= v26 + 56 || v34 != v6)
          {
            v9 = *v26;
            v10 = v26[1];
            v11 = v26[2];
            *(v25 + 48) = *(v26 + 6);
            *(v25 + 16) = v10;
            *(v25 + 32) = v11;
            *v25 = v9;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v31;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v21 = 0;
      goto LABEL_10;
    }

LABEL_21:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

void sub_226D534BC(int64_t a1)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_226D6ED7C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v23 = sub_226D6E2FC();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_226D537C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_226D6EC2C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226D53964(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_226AE4FD4(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_226D6EE6C();
        sub_226AE5030(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_226D53B1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_226D5540C(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_226AC47B0(v5, &qword_27D7A6D68, &qword_226D75210);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_226D53D38(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_226D556B4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_226D53E64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_226AE4FD4(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_226D55988(v12, v11);
      sub_226AE5030(v12);
      sub_226AC47B0(v11, &qword_27D7A9638, &qword_226D7E578);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226D53F8C(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_226D6D52C();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_226AC47B0(v30, &qword_27D7A6D68, &qword_226D75210);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v32 = sub_226D6E2FC();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v36 = sub_226D6E35C();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_226AC47B0(v24, &qword_27D7A6D68, &qword_226D75210);
        a2 = sub_226D563B0(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_226D6E2FC();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_226D6E35C();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_226D6E35C();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_226D55AC0(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x22AA8BEE0](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_226AD3C20(v59);
  return a2;
}

uint64_t sub_226D549F0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_226D6F2FC();

    sub_226D6E42C();
    v23 = sub_226D6F35C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_226D566D8(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_226D6F2FC();

            sub_226D6E42C();
            v41 = sub_226D6F35C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_226D6F21C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_226D55F94(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AA8BEE0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_226AD3C20(v13);
    return v5;
  }

  result = MEMORY[0x22AA8BEE0](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_226D54F60(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_226D6F2FC();

    sub_226D6E42C();
    v11 = sub_226D6F35C();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_226D6F21C() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_226D566D8(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_226D6F2FC();

        sub_226D6E42C();
        v33 = sub_226D6F35C();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_226D561CC(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x22AA8BEE0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x22AA8BEE0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_226D5540C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_226D6E2FC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_226D6E35C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226C2CD18();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_226D534BC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_226D556B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_226D6F2FC();
  sub_226D6E42C();
  v6 = sub_226D6F35C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_226C2CBBC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_226D5303C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_226D557F0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_226D6EE3C();

    if (v6)
    {
      v7 = sub_226D52ED4(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v10 = sub_226D6EC2C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_226D6EC3C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_226C2D0C4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_226D537C4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_226D55988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_226D6EE6C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_226AE4FD4(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x22AA8AF20](v16, a1);
      result = sub_226AE5030(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226C2D218();
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = sub_226D53964(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_226D55AC0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_226D6D52C();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_226AC47B0(v11, &qword_27D7A6D68, &qword_226D75210);
          v45 = v61;

          sub_226D563B0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v35 = sub_226D6E2FC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v43 = sub_226D6E35C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_226D55F94(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_226D566D8(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_226D6F2FC();

        sub_226D6E42C();
        v19 = sub_226D6F35C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_226D561CC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_226D566D8(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_226D6F2FC();

        sub_226D6E42C();
        v16 = sub_226D6F35C();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_226D563B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_226D6D52C();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9620, &unk_226D77DD8);
  result = sub_226D6EECC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_226D6E2FC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226D566D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
  result = sub_226D6EECC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_226D6F2FC();

    sub_226D6E42C();
    result = sub_226D6F35C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226D56924(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_226D6EECC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_226D6EC2C();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_226D56B10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_226D6F04C() == *(a4 + 36))
    {
      sub_226D6F05C();
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      swift_dynamicCast();
      sub_226C3015C(v6);
      v5 = v4;

      if (v5)
      {
        sub_226D6F02C();
        sub_226D6F07C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_226D6ED8C();
}

void sub_226D56C74(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_226D6F01C();
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_226D6F04C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_226D6F05C();
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  swift_dynamicCast();
  v5 = sub_226C3015C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

id _s13FinanceDaemon23WalletMessagingProviderC04makeE0ACyFZ_0()
{
  v11[3] = sub_226D6B5EC();
  v11[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_226D6B5AC();
  v0 = sub_226D6704C();
  v1 = sub_226D69BFC();
  v2 = MEMORY[0x22AA85C90]();
  v10[3] = v1;
  v10[4] = MEMORY[0x277CC79A8];
  v10[0] = v2;
  v3 = type metadata accessor for WalletMessagingProvider();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink] = 0;
  *&v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore] = 0;
  sub_226AE532C(v11, &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_userDefaults]);
  v5 = &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_deviceInfo];
  v6 = MEMORY[0x277CC6A68];
  *v5 = v0;
  v5[1] = v6;
  sub_226AE532C(v10, &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_imageProcessingService]);
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

id sub_226D56F50(uint64_t a1)
{
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (!*(v1 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    sub_226D67F5C();
    sub_226D67F3C();
    v7 = sub_226D67F4C();

    *(v1 + v2) = v7;
  }

  v3 = sub_226D676AC();

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9650, &unk_226D7E580);
  sub_226D6EB8C();
  if (v8)
  {
    v5 = v8;

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_226D571F4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 persistentStoreCoordinator];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 key];
    v15 = [v14 identifier];

    sub_226D6E39C();
    sub_226D6D18C();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_226AC47B0(v6, &unk_27D7A62F8, &unk_226D73B70);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v16 = sub_226D6D0DC();
      v17 = [v13 managedObjectIDForURIRepresentation_];

      if (v17)
      {
        sub_226D691CC();
        v30 = sub_226D691AC();
        (*(v8 + 8))(v11, v7);

        return v30;
      }

      (*(v8 + 8))(v11, v7);
    }
  }

  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F6C8);
  v19 = a1;
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9CC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    v24 = [v19 key];
    v25 = [v24 identifier];

    v26 = sub_226D6E39C();
    v28 = v27;

    v29 = sub_226AC4530(v26, v28, &v33);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_226AB4000, v20, v21, "Could not create ObjectID from %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  return 0;
}

id sub_226D57788()
{
  v0 = sub_226D6913C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v4 = sub_226D6E36C();
  v5 = *MEMORY[0x277CC77B0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_226D6811C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = sub_226D6E36C();

  v6(v3, v5, v0);
  sub_226D6811C();
  v7(v3, v0);
  v9 = sub_226D6E36C();

  v10 = [v13 createForIdentifier:v4 withSingularSummary:v8 pluralSummary:v9];

  return v10;
}

id sub_226D5799C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6913C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D88D10);
  MEMORY[0x22AA8A510](a1, a2);
  v16 = sub_226D6E36C();

  v8 = *MEMORY[0x277CC77B0];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_226D6811C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = sub_226D6E36C();

  v9(v7, v8, v4);
  sub_226D6811C();
  v10(v7, v4);
  v12 = sub_226D6E36C();

  v13 = v16;
  v14 = [v17 createForIdentifier:v16 withSingularSummary:v11 pluralSummary:v12];

  return v14;
}

void sub_226D57BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v40 = a2;
  v34 = a1;
  v3 = sub_226D6809C();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6804C();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_226D6802C();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6806C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226D680AC();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D5BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D6D5DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D5CC();
  (*(v18 + 8))(v20, v17);
  sub_226D6D5AC();
  (*(v14 + 8))(v16, v13);
  sub_226D6805C();
  (*(v7 + 104))(v37, *MEMORY[0x277CC7128], v38);
  sub_226D6803C();
  sub_226D6808C();
  sub_226D6807C();
  GSMainScreenScaleFactor();
  if ((LODWORD(v21) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v21 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = v36;
  v24 = sub_226D6B21C();
  if (v23 || v25 >> 60 == 15)
  {
    (*(v32 + 8))(v12, v33);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    v28 = objc_allocWithZone(MEMORY[0x277D37F10]);
    sub_226B11B44(v26, v27);
    v29 = sub_226D6D1FC();
    sub_226B3FAEC(v26, v27);
    v30 = [v28 initWithData:v29 scale:v22];

    sub_226B3FAEC(v26, v27);
    (*(v32 + 8))(v12, v33);
    if (v30)
    {
      v31 = [objc_opt_self() createForImage:v30 withTintColor:0];
      [objc_opt_self() createWithImage:v31 style:0];
    }
  }
}

void sub_226D58158()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (!*(v0 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    sub_226D67F5C();
    sub_226D67F3C();
    v4 = sub_226D67F4C();

    *(v0 + v1) = v4;
  }

  v2 = sub_226D676AC();

  MEMORY[0x28223BE20](v3);
  sub_226D6EB7C();
}

uint64_t sub_226D58408()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226D4F98C(v2, v3);
}

uint64_t sub_226D584B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226D527BC(v2, v3, v4);
}

uint64_t objectdestroy_9Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226D585B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226D528A4(a1, v4, v5, v6);
}

uint64_t sub_226D58680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226C9ACEC(a1, v4);
}

uint64_t sub_226D58738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD827C;

  return sub_226C9ACEC(a1, v4);
}

unint64_t sub_226D58830(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_226D58848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D58890(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v3[5] = swift_task_alloc();
  v4 = sub_226D6D1AC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D58A70, 0, 0);
}

uint64_t sub_226D58A70(uint64_t a1)
{
  v24 = v1;
  v2 = sub_226D676AC();
  v1[16] = v2;
  v3 = objc_allocWithZone(MEMORY[0x277D07080]);
  v4 = sub_226D6E36C();
  v5 = [v3 initWithString_];
  v1[17] = v5;

  if (v5)
  {
    v6 = [v5 domain];
    if (v6)
    {
      v7 = v1[4];
      v8 = v6;
      v9 = sub_226D6E39C();
      v11 = v10;

      v1[18] = v9;
      v1[19] = v11;
      v1[20] = *(v7 + 552);
      v12 = swift_task_alloc();
      v1[21] = v12;
      *v12 = v1;
      v12[1] = sub_226D58D68;
      v13 = v1[15];

      return sub_226D37EFC(v13, v5);
    }
  }

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F6A8);

  v16 = sub_226D6E05C();
  v17 = sub_226D6E9CC();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[2];
    v18 = v1[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_226AC4530(v19, v18, &v23);
    _os_log_impl(&dword_226AB4000, v16, v17, "Failed to create ECEmailAddress from %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  v22 = v1[1];

  return v22(0, 0xF000000000000000);
}

uint64_t sub_226D58D68()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_226D59A38;
  }

  else
  {
    v2 = sub_226D58E84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D58E84()
{
  v29 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_226AC40E8(v0[15], v1, &qword_27D7A94C0, &qword_226D7DAC8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[14];
  if (v4 == 1)
  {

    sub_226AC47B0(v5, &qword_27D7A94C0, &qword_226D7DAC8);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F6A8);

    v7 = sub_226D6E05C();
    v8 = sub_226D6E9EC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[15];
    if (v9)
    {
      v14 = v0[2];
      v13 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_226AC4530(v14, v13, &v28);
      _os_log_impl(&dword_226AB4000, v7, v8, "No business connect item available for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    sub_226AC47B0(v12, &qword_27D7A94C0, &qword_226D7DAC8);

    v17 = v0[1];

    return v17(0, 0xF000000000000000);
  }

  else
  {
    v19 = v0[20];
    v20 = v0[13];
    sub_226D5BD48(v0[14], v20);
    __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    v23 = off_283A72870;
    Service = type metadata accessor for BusinessQueryService();
    v27 = (v23 + *v23);
    v25 = swift_task_alloc();
    v0[23] = v25;
    *v25 = v0;
    v25[1] = sub_226D59234;
    v26 = v0[10];

    return (v27)(v26, v22, v21, Service, &off_283A72868);
  }
}

uint64_t sub_226D59234()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_226D59934;
  }

  else
  {
    v2 = sub_226D59350;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D59350()
{
  v49 = v0;
  v1 = *(v0 + 72);
  sub_226AC40E8(*(v0 + 80), v1, &qword_27D7A94D0, &qword_226D7DAE0);
  v2 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    sub_226AC47B0(*(v0 + 80), &qword_27D7A94D0, &qword_226D7DAE0);
    sub_226AC47B0(v3, &qword_27D7A94D0, &qword_226D7DAE0);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_5:
    sub_226AC47B0(*(v0 + 40), &unk_27D7A62F8, &unk_226D73B70);

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F6A8);

    v12 = sub_226D6E05C();
    v13 = sub_226D6E9EC();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    if (v14)
    {
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_226AC4530(v19, v18, &v48);
      _os_log_impl(&dword_226AB4000, v12, v13, "No icon available for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    sub_226AC47B0(v17, &qword_27D7A94C0, &qword_226D7DAC8);
    v22 = 0;
    v23 = *(v0 + 104);
    v24 = 0xF000000000000000;
    goto LABEL_10;
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_226AC40E8(v7 + *(v2 + 20), v10, &unk_27D7A62F8, &unk_226D73B70);
  sub_226D5BDAC(v7, type metadata accessor for BusinessConnectProvider.BusinessLogo);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_226AC47B0(*(v0 + 80), &qword_27D7A94D0, &qword_226D7DAE0);
    goto LABEL_5;
  }

  v27 = *(v0 + 192);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  v28 = sub_226D6D1BC();
  v30 = *(v0 + 152);
  if (!v27)
  {
    v22 = v28;
    v24 = v29;
    v38 = *(v0 + 144);
    v39 = *(v0 + 128);
    v46 = *(v0 + 120);
    v47 = *(v0 + 136);
    v40 = *(v0 + 104);
    v41 = *(v0 + 80);
    v45 = *(v0 + 16);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_226AC47B0(v41, &qword_27D7A94D0, &qword_226D7DAE0);
    v42 = swift_task_alloc();
    *(v42 + 16) = v39;
    *(v42 + 24) = v38;
    *(v42 + 32) = v30;
    *(v42 + 40) = v45;
    *(v42 + 56) = v40;
    *(v42 + 64) = v22;
    *(v42 + 72) = v24;
    sub_226D6EA6C();
    sub_226AC47B0(v46, &qword_27D7A94C0, &qword_226D7DAC8);

    v43 = *(v0 + 104);

    v23 = v43;
LABEL_10:
    sub_226D5BDAC(v23, type metadata accessor for BusinessConnectProvider.EmailItem);

    v25 = *(v0 + 8);

    return v25(v22, v24);
  }

  v31 = *(v0 + 80);
  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 48);

  (*(v33 + 8))(v32, v34);
  sub_226AC47B0(v31, &qword_27D7A94D0, &qword_226D7DAE0);
  v35 = *(v0 + 128);
  v36 = *(v0 + 120);
  v37 = *(v0 + 104);

  sub_226AC47B0(v36, &qword_27D7A94C0, &qword_226D7DAC8);
  sub_226D5BDAC(v37, type metadata accessor for BusinessConnectProvider.EmailItem);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_226D59934()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);

  sub_226AC47B0(v2, &qword_27D7A94C0, &qword_226D7DAC8);
  sub_226D5BDAC(v3, type metadata accessor for BusinessConnectProvider.EmailItem);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D59A38()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D59B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_226D59B28, 0, 0);
}

uint64_t sub_226D59B28(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v11 = *(v1 + 24);
  v5 = sub_226D676AC();
  *(v1 + 72) = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v11;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  sub_226D6EB8C();

  v7 = *(v1 + 16);
  *(v1 + 80) = v7;
  v8 = swift_task_alloc();
  *(v1 + 88) = v8;
  *v8 = v1;
  v8[1] = sub_226D59CA8;
  v9 = *(v1 + 56);

  return sub_226D5A238(v7, v9);
}

uint64_t sub_226D59CA8(char a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_226D59E44;
  }

  else
  {

    *(v4 + 104) = a1 & 1;
    v5 = sub_226D59DDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D59DDC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_226D59E44()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_226D59EB0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_226D59ED4, 0, 0);
}

uint64_t sub_226D59ED4(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_226D676AC();
  v1[6] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  sub_226D6EB8C();

  v5 = v1[2];
  v1[7] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_226D5A030;
  v7 = v1[4];

  return sub_226D5A238(v5, v7);
}

uint64_t sub_226D5A030(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_226D5A1CC;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_226D5A164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D5A164()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_226D5A1CC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_226D5A238(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_226D5A25C, 0, 0);
}

uint64_t sub_226D5A25C()
{
  v1 = v0[15];
  sub_226AE532C(v1 + 464, (v0 + 8));
  sub_226D5BEC8((v0 + 8), (v0 + 2));
  v0[7] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_226D5A334;
  v3 = v0[13];
  v4 = v0[14];

  return sub_226C1527C(v4, v3);
}

uint64_t sub_226D5A334(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_226D5A4D0;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_226D5A460;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D5A460()
{
  sub_226C17BCC(v0 + 16);
  sub_226D5BF24(v0 + 64);
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_226D5A4D0()
{
  sub_226C17BCC(v0 + 16);
  sub_226D5BF24(v0 + 64);
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_226D5A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_226D67B3C();
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  v12 = __swift_project_value_buffer(v11, qword_28105F5E0);

  v13 = sub_226D6E05C();
  v14 = sub_226D6E9EC();

  if (os_log_type_enabled(v13, v14))
  {
    v52 = v14;
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60 = v51;
    v53 = v15;
    *v15 = 136315394;
    v16 = *(a1 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v45 = v13;
      v46 = v12;
      v47 = a3;
      v48 = a2;
      v50 = v3;
      v59 = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v16, 0);
      v17 = v59;
      v18 = *(v58 + 16);
      v19 = *(v58 + 80);
      v49 = a1;
      v20 = a1 + ((v19 + 32) & ~v19);
      v54 = *(v58 + 72);
      v55 = v18;
      v58 += 16;
      v21 = (v58 - 8);
      do
      {
        v22 = v56;
        v23 = v57;
        v55(v56, v20, v57);
        v24 = sub_226D67B2C();
        v26 = v25;
        (*v21)(v22, v23);
        v59 = v17;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_226AE1D68((v27 > 1), v28 + 1, 1);
          v17 = v59;
        }

        *(v17 + 16) = v28 + 1;
        v29 = v17 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v20 += v54;
        --v16;
      }

      while (v16);
      a1 = v49;
      v4 = v50;
      a2 = v48;
      v13 = v45;
    }

    v30 = MEMORY[0x22AA8A6A0](v17, MEMORY[0x277D837D0]);
    v32 = v31;

    v33 = sub_226AC4530(v30, v32, &v60);

    v34 = v53;
    *(v53 + 1) = v33;
    *(v34 + 6) = 2080;
    sub_226D6D52C();
    sub_226D5C68C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v35 = sub_226D6E8AC();
    v37 = sub_226AC4530(v35, v36, &v60);

    *(v34 + 14) = v37;
    _os_log_impl(&dword_226AB4000, v13, v52, "Saving Mail Items with IDs: %s, %s", v34, 0x16u);
    v38 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
  }

  v39 = sub_226D676AC();
  MEMORY[0x28223BE20](v39);
  *(&v44 - 4) = v40;
  *(&v44 - 3) = a2;
  *(&v44 - 2) = a1;
  sub_226D6EB7C();
  if (v4)
  {
  }

  else
  {
    v41 = sub_226D6E05C();
    v42 = sub_226D6E9EC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226AB4000, v41, v42, "Saved Mail Items.", v43, 2u);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
    }
  }
}

uint64_t sub_226D5AA64(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v72[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = v54 - v12;
  MEMORY[0x28223BE20](v13);
  v67 = v54 - v14;
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v72[0] = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:v72];

  v17 = v72[0];
  if (!v16)
  {
    v50 = v72[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  v61 = v10;
  v66 = a1;
  v54[1] = a3;
  sub_226D6C6DC();
  swift_allocObject();
  v18 = v17;
  v56 = sub_226D6C6CC();
  v19 = v69 + 56;
  v20 = 1 << *(v69 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v69 + 56);
  v23 = (v20 + 63) >> 6;
  v70 = v8 + 16;
  v63 = v8 + 32;
  v24 = (v8 + 8);

  v25 = 0;
  *&v26 = 136315138;
  v55 = v26;
  v62 = v23;
  v64 = v8;
  v65 = v7;
  v60 = (v8 + 8);
  if (v22)
  {
LABEL_9:
    while (1)
    {
      v28 = *(v8 + 16);
      v29 = v67;
      v28(v67, *(v69 + 48) + *(v8 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v7);
      v30 = (*(v8 + 32))(v71, v29, v7);
      v68 = MEMORY[0x22AA8B6A0](v30);
      sub_226D6AC0C();
      v31 = sub_226D6AABC();
      if (v4)
      {
        break;
      }

      v47 = v31;
      if (!v31)
      {
        goto LABEL_11;
      }

      v48 = v66;
      sub_226D6C6BC();
      v8 = v64;
      v72[0] = 0;
      if (![v48 save_])
      {
        v52 = v72[0];
        sub_226D6D04C();

        swift_willThrow();
        v53 = v68;

        objc_autoreleasePoolPop(v53);

        return (*v24)(v71, v65);
      }

      v49 = v72[0];

      v7 = v65;
LABEL_20:
      v22 &= v22 - 1;
      objc_autoreleasePoolPop(v68);
      (*v24)(v71, v7);
      v23 = v62;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
LABEL_11:
    v32 = v65;
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F600);
    v34 = v61;
    v28(v61, v71, v32);
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v57 = v37;
      v58 = swift_slowAlloc();
      v72[0] = v58;
      *v37 = v55;
      sub_226D5C68C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_226D6F1CC();
      v59 = 0;
      v40 = v39;
      v41 = v34;
      v24 = v60;
      (*v60)(v41, v32);
      v42 = sub_226AC4530(v38, v40, v72);
      v4 = v59;

      v43 = v57;
      *(v57 + 1) = v42;
      v44 = v43;
      _os_log_impl(&dword_226AB4000, v35, v36, "Failed to insert or update Mail Items. Transaction with %s doesn't exist.", v43, 0xCu);
      v45 = v58;
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

    else
    {

      v46 = v34;
      v24 = v60;
      (*v60)(v46, v32);
    }

    v7 = v32;
    v8 = v64;
    goto LABEL_20;
  }

  while (1)
  {
LABEL_5:
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v27);
    ++v25;
    if (v22)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }
}

void sub_226D5B054(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v50 = a6;
  v51 = a4;
  v52 = a5;
  v53[1] = *MEMORY[0x277D85DE8];
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentQueryGenerationToken];
  v53[0] = 0;
  v17 = [a1 setQueryGenerationFromToken:v16 error:v53];

  v18 = v53[0];
  if (!v17)
  {
    v24 = v53[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v45 = v13;
  v46 = v12;
  sub_226D69D3C();
  v19 = v18;
  v20 = sub_226D69D1C();
  sub_226B2A4F4();
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D70840;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_226B16404();
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;

  v22 = sub_226D6E91C();
  [v20 setPredicate_];

  v23 = sub_226D6EBBC();
  if (v8)
  {

    return;
  }

  v25 = v23;
  sub_226D6990C();
  v26 = sub_226D6983C();
  v51 = v20;
  v52 = v26;
  sub_226D6AF2C();
  v27 = sub_226D6AF1C();
  if (!v27)
  {
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v27 = [v28 initWithContext_];
    v29 = sub_226D6E36C();
    [v27 setBusinessID_];

    v30 = sub_226D6E36C();
    [v27 setCompanyID_];
  }

  v31 = v46;
  v32 = sub_226D6D1FC();
  [v27 setLogo_];

  sub_226D6D46C();
  v33 = sub_226D6D3EC();
  (*(v45 + 8))(v15, v31);
  [v27 setLastUpdatedAt_];

  v34 = v52;
  if (v25 >> 62)
  {
    v35 = sub_226D6EDFC();
    if (!v35)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_16;
    }
  }

  if (v35 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  for (i = 0; i != v35; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x22AA8AFD0](i, v25);
    }

    else
    {
      v37 = *(v25 + 8 * i + 32);
    }

    v38 = v37;
    [v37 setBusinessConnectBrandObject_];
  }

LABEL_16:

  if (v34 >> 62)
  {
    v39 = sub_226D6EDFC();
    if (v39)
    {
LABEL_18:
      if (v39 >= 1)
      {
        for (j = 0; j != v39; ++j)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x22AA8AFD0](j, v34);
          }

          else
          {
            v41 = *(v34 + 8 * j + 32);
          }

          v42 = v41;
          [v41 setBusinessConnectBrandObject_];
        }

        goto LABEL_25;
      }

LABEL_30:
      __break(1u);
    }
  }

  else
  {
    v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v53[0] = 0;
  if ([v49 save_])
  {
    v43 = v53[0];
  }

  else
  {
    v44 = v53[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226D5B5A8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  if (qword_27D7A5F58 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_27D7A7CF8);
  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226AB4000, v14, v15, "Pruning deleted extracted order emails", v16, 2u);
    v17 = v16;
    v7 = v6;
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  v18 = sub_226D5BF78(a1, a2, a3, a4, a5);
  if (!v7)
  {
    if (!v18)
    {
      v33 = sub_226D6E05C();
      v34 = sub_226D6E9EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_226AB4000, v33, v34, "Transaction has no FoundIn insight", v35, 2u);
        MEMORY[0x22AA8BEE0](v35, -1, -1);
      }

      v36 = MEMORY[0x277D84FA0];
      goto LABEL_24;
    }

    v37 = v18;
    v19 = sub_226D6BBEC();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = sub_226D6EDFC();
      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_9:
        v39 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v21 & ~(v21 >> 63), 0);
        if (v21 < 0)
        {
          __break(1u);
          return;
        }

        v22 = 0;
        v23 = v39;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x22AA8AFD0](v22, v20);
          }

          else
          {
            v24 = *(v20 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v25 messageID];
          v27 = sub_226D6E39C();
          v29 = v28;

          v31 = *(v39 + 16);
          v30 = *(v39 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_226AE1D68((v30 > 1), v31 + 1, 1);
          }

          ++v22;
          *(v39 + 16) = v31 + 1;
          v32 = v39 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v21 != v22);

        goto LABEL_23;
      }
    }

    v23 = MEMORY[0x277D84F90];
LABEL_23:
    v36 = sub_226AE3C28(v23);

LABEL_24:
    *a6 = v36;
  }
}

uint64_t sub_226D5B8EC@<X0>(uint64_t *a3@<X8>)
{
  v4 = v3;
  if (qword_27D7A5F58 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_27D7A7CF8);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Pruning deleted extracted order emails", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    sub_226D6BBFC();

    sub_226AE45DC(v9);

    v10 = sub_226D6BBDC();

    if (v4)
    {
      return result;
    }

    if (v10 >> 62)
    {
      v4 = sub_226D6EDFC();
    }

    else
    {
      v4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (!v4)
    {
      v14 = MEMORY[0x277D84F90];
LABEL_43:

      v37 = sub_226AE3C28(v14);

      *a3 = v37;
      return result;
    }

    v13 = 0;
    v42 = v10 & 0xFFFFFFFFFFFFFF8;
    v43 = v10 & 0xC000000000000001;
    v40 = v4;
    v41 = v10 + 32;
    v14 = MEMORY[0x277D84F90];
    v39 = v10;
    while (v43)
    {
      v15 = MEMORY[0x22AA8AFD0](v13, v10);
      v16 = __OFADD__(v13, 1);
      v17 = v13 + 1;
      if (v16)
      {
        goto LABEL_45;
      }

LABEL_14:
      v45 = v15;
      v46 = v14;
      v18 = sub_226D6BBEC();
      v4 = v18;
      if (v18 >> 62)
      {
        v19 = sub_226D6EDFC();
        v44 = v17;
        if (!v19)
        {
LABEL_29:

          v21 = v12;
          goto LABEL_30;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = v17;
        if (!v19)
        {
          goto LABEL_29;
        }
      }

      sub_226AE1D68(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        goto LABEL_49;
      }

      v20 = 0;
      v21 = v12;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x22AA8AFD0](v20, v4);
        }

        else
        {
          v22 = *(v4 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v23 messageID];
        v25 = sub_226D6E39C();
        v27 = v26;

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE1D68((v28 > 1), v29 + 1, 1);
        }

        ++v20;
        *(v21 + 16) = v29 + 1;
        v30 = v21 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v19 != v20);

      v10 = v39;
LABEL_30:
      v4 = *(v21 + 16);
      v14 = v46;
      v31 = *(v46 + 2);
      v32 = v31 + v4;
      if (__OFADD__(v31, v4))
      {
        goto LABEL_47;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v46 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v4;
        }

        else
        {
          v34 = v31;
        }

        v14 = sub_226BBAB0C(isUniquelyReferenced_nonNull_native, v34, 1, v46);
      }

      v12 = MEMORY[0x277D84F90];
      v13 = v44;
      if (*(v21 + 16))
      {
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v4)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        if (v4)
        {
          v35 = *(v14 + 2);
          v16 = __OFADD__(v35, v4);
          v36 = v35 + v4;
          if (v16)
          {
            goto LABEL_51;
          }

          *(v14 + 2) = v36;
        }
      }

      else
      {

        if (v4)
        {
          goto LABEL_48;
        }
      }

      v4 = v40;
      if (v44 == v40)
      {
        goto LABEL_43;
      }
    }

    if (v13 >= *(v42 + 16))
    {
      goto LABEL_46;
    }

    v15 = *(v41 + 8 * v13);
    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (!v16)
    {
      goto LABEL_14;
    }

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
    swift_once();
  }
}

uint64_t sub_226D5BD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D5BDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D5BF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v69 = a5;
  v67 = a3;
  v64 = a2;
  v61 = a1;
  v66 = sub_226D6C18C();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v59 - v8;
  v9 = sub_226D671FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_226D6B9BC();
  v13 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = sub_226D69F0C();

  sub_226D692DC();
  sub_226D671AC();
  (*(v10 + 8))(v12, v9);
  v19 = v67;
  sub_226D6B99C();
  v20 = v18;
  v21 = v70;
  v22 = sub_226D69D9C();
  v70 = v21;
  if (!v21)
  {
    v23 = v66;
    v24 = v22;
    (*(v13 + 8))(v17, v68);
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      v27 = v63;
    }

    else
    {
      v32 = v19;
      v33 = a4;
      v25 = sub_226D69D8C();
      v70 = 0;
      v26 = v23;
      if (v25)
      {
        v27 = v63;
      }

      else
      {
        v52 = v70;
        v25 = sub_226D69D6C();
        v70 = v52;
        v27 = v63;
        if (!v25)
        {
          if (qword_27D7A5F58 != -1)
          {
            swift_once();
          }

          v53 = sub_226D6E07C();
          __swift_project_value_buffer(v53, qword_27D7A7CF8);

          v54 = sub_226D6E05C();
          v55 = sub_226D6E9CC();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v71 = v57;
            *v56 = 136315138;
            *(v56 + 4) = sub_226AC4530(v32, v33, &v71);
            _os_log_impl(&dword_226AB4000, v54, v55, "Failed to find account for account identifier: %s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v57);
            MEMORY[0x22AA8BEE0](v57, -1, -1);
            MEMORY[0x22AA8BEE0](v56, -1, -1);
          }

          return 0;
        }
      }
    }

    v28 = v25;

    sub_226D69D5C();
    v29 = v65;
    sub_226D6C17C();
    v20 = sub_226D6AC0C();
    v30 = v70;
    v31 = sub_226D6AACC();
    v70 = v30;
    if (v30)
    {
      (*(v27 + 8))(v29, v26);

      return v20;
    }

    if (v31)
    {
      v35 = v31;
      v20 = sub_226D6AB1C();

      (*(v27 + 8))(v29, v26);
      return v20;
    }

    if (qword_27D7A5F58 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_27D7A7CF8);
    v37 = v60;
    (*(v27 + 16))(v60, v29, v26);
    v38 = v29;
    v39 = sub_226D6E05C();
    v40 = sub_226D6E9CC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v37;
      v42 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71 = v69;
      *v42 = 136315138;
      sub_226D5C68C(&qword_27D7A9698, MEMORY[0x277CC8200], MEMORY[0x277CC8208]);
      v43 = sub_226D6F1CC();
      v44 = v26;
      v46 = v45;
      v47 = *(v27 + 8);
      v48 = v41;
      v49 = v44;
      v47(v48, v44);
      v50 = sub_226AC4530(v43, v46, &v71);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_226AB4000, v39, v40, "Transaction %s not found", v42, 0xCu);
      v51 = v69;
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x22AA8BEE0](v51, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);

      v47(v65, v49);
    }

    else
    {

      v58 = *(v27 + 8);
      v58(v37, v26);
      v58(v38, v26);
    }

    return 0;
  }

  (*(v13 + 8))(v17, v68);
  return v20;
}

uint64_t sub_226D5C68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D5C6F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = sub_226D6D4AC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_226D682FC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_226D6BB7C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5C8AC, 0, 0);
}

uint64_t sub_226D5C8AC(uint64_t a1)
{
  if (sub_226D6E82C())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    sub_226D6CCAC();
    sub_226D6CC2C();
    type metadata accessor for BankConnectPassLinkingRequestTask(0);
    sub_226D6B9BC();
    sub_226D5E4B0(&qword_27D7A81F8, MEMORY[0x277CC8058], MEMORY[0x277CC8060]);
    v3 = sub_226D6CC8C();
    v4 = v1[7];
    v5 = v3;
    v7 = v6;

    sub_226D6D20C();
    sub_226B11B98(v5, v7);

    sub_226D6BB6C();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_226D6BACC();
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_226D6A67C();
    v8 = v1[19];
    v10 = v1[16];
    v11 = v1[7];
    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
    v12 = __swift_project_boxed_opaque_existential_1(v11, v4[3]);
    __swift_project_boxed_opaque_existential_1(v12 + 1, v12[4]);
    v13 = sub_226D6C2AC();
    v1[20] = v13;
    v14 = swift_task_alloc();
    v1[21] = v14;
    v14[2] = v13;
    v14[3] = v10;
    v14[4] = v8;
    v15 = swift_task_alloc();
    v1[22] = v15;
    *v15 = v1;
    v15[1] = sub_226D5CC1C;
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282119B28](v15, &unk_226D7E668, v14, v16);
  }
}

uint64_t sub_226D5CC1C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_226D5CF84;
  }

  else
  {

    v2 = sub_226D5CD38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D5CD38(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[9];
  v24 = v1[8];
  v7 = v1[7];
  sub_226D6D46C();
  v8 = *(v3 + 16);
  v8(v4, v2, v5);
  v9 = *(v3 + 56);
  v9(v4, 0, 1, v5);
  v8(v6, v2, v5);
  v9(v6, 0, 1, v5);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v10 = sub_226D676AC();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v24;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
  *(v11 + 48) = 0;
  sub_226D6EB7C();
  v25 = v1[19];
  v12 = v1[18];
  v13 = v1[15];
  v22 = v1[16];
  v23 = v1[17];
  v14 = v1[13];
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[9];
  v20 = v1[10];
  v21 = v1[14];

  (*(v16 + 8))(v14, v15);
  sub_226AC47B0(v17, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC47B0(v20, &qword_27D7A8BE0, &unk_226D718F0);
  (*(v13 + 8))(v22, v21);
  (*(v12 + 8))(v25, v23);

  v18 = v1[1];

  return v18();
}

uint64_t sub_226D5CF84()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226D5D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D682FC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_226D6C61C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5D198, 0, 0);
}

uint64_t sub_226D5D198()
{
  v1 = v0[4];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  v2 = sub_226D6BB7C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  (*(v3 + 16))(v5 + v4, v1, v2);
  sub_226D6C60C();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_226D08E54;
  v7 = v0[10];

  return MEMORY[0x282119B00](v7);
}

uint64_t sub_226D5D330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = sub_226D66DFC();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for BankConnectPassLinkingRequestTask(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5D43C, 0, 0);
}

uint64_t sub_226D5D43C()
{
  v32 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226D5E3D0(v3, v1, type metadata accessor for BankConnectPassLinkingRequestTask);
  sub_226D5E3D0(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (!v8)
  {
    v20 = v0[8];

    sub_226D5E438(v20, MEMORY[0x277CC6528]);
    sub_226D5E438(v9, type metadata accessor for BankConnectPassLinkingRequestTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v0[8];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v31 = v13;
  *v11 = 136315394;
  sub_226D6B9BC();
  sub_226D5E4B0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226D5E438(v9, type metadata accessor for BankConnectPassLinkingRequestTask);
  v17 = sub_226AC4530(v14, v16, &v31);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226D5E4B0(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226D5E3D0(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D5E438(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to send a pass linking request for an account %s: %@.", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[3];
    v24 = v0[4];
    sub_226D6D46C();
    v25 = sub_226D6D4AC();
    v26 = *(*(v25 - 8) + 56);
    v26(v21, 0, 1, v25);
    v26(v22, 1, 1, v25);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v27 = sub_226D676AC();
    v28 = swift_task_alloc();
    *(v28 + 16) = v27;
    *(v28 + 24) = v24;
    *(v28 + 32) = v21;
    *(v28 + 40) = v22;
    *(v28 + 48) = 1;
    sub_226D6EB7C();

    sub_226AC47B0(v22, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
  }

LABEL_8:

  v29 = v0[1];

  return v29();
}

void sub_226D5D938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v39 = a3;
  v40 = a4;
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-v11];
  v13 = sub_226D6D4AC();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v36[-v16];
  v18 = [objc_opt_self() currentQueryGenerationToken];
  v43[0] = 0;
  v19 = [a1 setQueryGenerationFromToken:v18 error:v43];

  v20 = v43[0];
  if (!v19)
  {
    v27 = v43[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v37 = a5;
  sub_226D69F0C();
  type metadata accessor for BankConnectPassLinkingRequestTask(0);
  v21 = v20;
  v22 = v42;
  v23 = sub_226D69D9C();
  if (v22)
  {
    return;
  }

  v42 = v23;
  sub_226AF265C(v39, v12);
  v24 = v41;
  v25 = *(v41 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_226AC47B0(v12, &qword_27D7A8BE0, &unk_226D718F0);
    v26 = v42;
  }

  else
  {
    (*(v24 + 32))(v17, v12, v13);
    v26 = v42;
    if (v42)
    {
      v28 = v42;
      v29 = sub_226D6D3EC();
      [v28 setLastPassLinkingAttemptDate_];

      v26 = v42;
      v24 = v41;
    }

    (*(v24 + 8))(v17, v13);
  }

  sub_226AF265C(v40, v9);
  if (v25(v9, 1, v13) == 1)
  {
    sub_226AC47B0(v9, &qword_27D7A8BE0, &unk_226D718F0);
    if (!v26)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v38;
    (*(v24 + 32))(v38, v9, v13);
    if (v26)
    {
      v31 = v26;
      v32 = sub_226D6D3EC();
      [v31 setLastPassLinkingDate_];

      v24 = v41;
    }

    (*(v24 + 8))(v30, v13);
    if (!v26)
    {
      goto LABEL_16;
    }
  }

  [v26 setNeedsPassLinking_];
LABEL_16:
  v43[0] = 0;
  v33 = [a1 save_];
  v34 = v43[0];
  if ((v33 & 1) == 0)
  {
    v35 = v34;
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226D5DD7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226D5C6F0(a1);
}

uint64_t sub_226D5DE10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D5D330(a1, a2);
}

double sub_226D5DEB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670) + 48));
  v6 = *(a1 + 20);
  v7 = sub_226D6B9BC();
  (*(*(v7 - 8) + 16))(a2, v2 + v6, v7);
  v8 = (v2 + *(a1 + 24));
  v9 = v8[1];
  *v5 = *v8;
  v5[1] = v9;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226D5DF80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = 2 * *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D72130;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = *(a1 + 20);
  v8 = sub_226D6B9BC();
  (*(*(v8 - 8) + 16))(v6 + v4 + v5, v1 + v7, v8);
  swift_storeEnumTagMultiPayload();
  v9 = sub_226B1ED68(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_226D5E10C(uint64_t a1)
{
  sub_226D6B9BC();
  sub_226D5E4B0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](32, 0xE100000000000000);
  MEMORY[0x22AA8A510](*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8));
  return 0xD000000000000022;
}

uint64_t sub_226D5E27C(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A96A0, type metadata accessor for BankConnectPassLinkingRequestTask, &unk_226D7E5C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectPassLinkingRequestTask(uint64_t a1)
{
  result = qword_27D7A96B0;
  if (!qword_27D7A96B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D5E320(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A7220, type metadata accessor for BankConnectPassLinkingRequestTask, &unk_226D7E5E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D5E378(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A96A8, type metadata accessor for BankConnectPassLinkingRequestTask, &unk_226D7E604);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D5E3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D5E438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D5E4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D5E4F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D5D078(a1, v4, v5, v6);
}

void sub_226D5E5F8(uint64_t a1)
{
  sub_226B20350(319);
  if (v1 <= 0x3F)
  {
    sub_226D6B9BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t BankConnectServiceImplementation.loadScheduledPayments(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226D5E7AC;

  return sub_226C00808(v7, a1, a2);
}

uint64_t sub_226D5E7AC()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B40CFC;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadScheduledPayments(for:)(v4);
  }
}

uint64_t BankConnectServiceImplementation.loadScheduledPayments(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6B9BC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5EAA4, 0, 0);
}

uint64_t sub_226D5EAA4(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 112);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_226D6D46C();
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v5 = sub_226D676AC();
  *(v1 + 120) = v5;
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  sub_226D6EB7C();

  if (*(v1 + 184) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v7 = *(v1 + 88);
    v8 = *(v1 + 64);
    v9 = *(v1 + 72);
    v10 = *(v1 + 24);
    v11 = sub_226D6E07C();
    *(v1 + 128) = __swift_project_value_buffer(v11, qword_27D7A7D10);
    v12 = *(v9 + 16);
    *(v1 + 136) = v12;
    *(v1 + 144) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v10, v8);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9AC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 88);
    v18 = *(v1 + 64);
    v17 = *(v1 + 72);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39[0] = v38;
      *v19 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v20 = sub_226D6F1CC();
      v22 = v21;
      v37 = v14;
      v23 = *(v17 + 8);
      v23(v16, v18);
      v24 = sub_226AC4530(v20, v22, v39);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_226AB4000, v13, v37, "Fetching scheduled payments for %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {

      v23 = *(v17 + 8);
      v23(v16, v18);
    }

    *(v1 + 152) = v23;
    v28 = *(v1 + 48);
    v27 = *(v1 + 56);
    v29 = *(v1 + 40);
    v30 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    v39[3] = &type metadata for BankConnectEnvironmentImplementation;
    v39[4] = sub_226B41FC0();
    v39[0] = swift_allocObject();
    sub_226B42014(v30, v39[0] + 16);
    v31 = sub_226D6C51C();
    swift_allocObject();
    v32 = sub_226D6C50C();
    *(v1 + 16) = v32;
    *(v1 + 160) = v32;
    (*(v28 + 104))(v27, *MEMORY[0x277CC6D38], v29);
    v33 = swift_task_alloc();
    *(v1 + 168) = v33;
    *v33 = v1;
    v33[1] = sub_226D5EF58;
    v34 = *(v1 + 56);
    v35 = *(v1 + 24);
    v36 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v35, v34, v31, v36);
  }

  else
  {

    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));

    v25 = *(v1 + 8);

    return v25();
  }
}

uint64_t sub_226D5EF58()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_226D5F18C;
  }

  else
  {
    v3 = sub_226D5F0DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D5F0DC()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D5F18C()
{
  v28 = v0;
  v1 = *(v0 + 176);
  (*(v0 + 136))(*(v0 + 80), *(v0 + 24), *(v0 + 64));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 176);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v7 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v25(v5, v6);
    v13 = sub_226AC4530(v10, v12, &v27);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v26;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to fetch scheduled payments for %s with: %@.", v7, 0x16u);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);

    v16(v17, v18);
  }

  v19 = *(v0 + 176);
  v20 = *(v0 + 120);
  v21 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v22 = v19;
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC7AB0], v21);
  swift_willThrow();

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v23 = *(v0 + 8);

  return v23();
}

void sub_226D5F4D4(void *a1@<X0>, _BYTE *a4@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v21[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v21];

  v9 = v21[0];
  if (v8)
  {
    sub_226D69F0C();
    v10 = v9;
    v11 = sub_226D69D9C();
    if (v4)
    {

LABEL_4:
      *a4 = 1;
      return;
    }

    v13 = v11;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (sub_226D69ECC())
    {
      v14 = sub_226D6D3EC();
      [v13 setLastScheduledPaymentsRefreshDate_];

      v21[0] = 0;
      if ([a1 save_])
      {
        v15 = v21[0];

        goto LABEL_4;
      }

      v20 = v21[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    else
    {
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v16 = sub_226D6E07C();
      __swift_project_value_buffer(v16, qword_27D7A7D10);
      v17 = sub_226D6E05C();
      v18 = sub_226D6E9EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        MEMORY[0x22AA8BEE0](v19, -1, -1);
      }

      *a4 = 0;
    }
  }

  else
  {
    v12 = v21[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t type metadata accessor for PrismWebServiceRegisterTransactionTask(uint64_t a1)
{
  result = qword_27D7A9708;
  if (!qword_27D7A9708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D5F854(void *a1)
{
  v52 = a1;
  v2 = sub_226D6B3BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = *(v3 + 16);
  v13(&v47 - v11, v1, v2, v10);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6E07C();
  v15 = __swift_project_value_buffer(v14, qword_28105F5C0);
  v51 = v13;
  (v13)(v8, v12, v2);
  v50 = v15;
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49 = v3;
    v19 = v18;
    v47 = swift_slowAlloc();
    v48 = v12;
    v55 = v47;
    *v19 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v20 = sub_226D6F1CC();
    v21 = v5;
    v23 = v22;
    v54 = *(v49 + 8);
    v54(v8, v2);
    v24 = sub_226AC4530(v20, v23, &v55);
    v5 = v21;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_226AB4000, v16, v17, "Fetching pending registration for transaction %s", v19, 0xCu);
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    v12 = v48;
    MEMORY[0x22AA8BEE0](v25, -1, -1);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
  }

  else
  {

    v54 = *(v3 + 8);
    v54(v8, v2);
  }

  sub_226D6C8EC();
  v26 = v53;
  v27 = sub_226D6C88C();
  if (v26)
  {
    v51(v5, v12, v2);
    v28 = v26;
    v29 = sub_226D6E05C();
    v30 = sub_226D6E9CC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v53 = v27;
      v32 = v31;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v32 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      LODWORD(v50) = v30;
      v33 = sub_226D6F1CC();
      v34 = v12;
      v36 = v35;
      v37 = v5;
      v38 = v54;
      v54(v37, v2);
      v39 = sub_226AC4530(v33, v36, &v55);
      v12 = v34;

      *(v32 + 4) = v39;
      *(v32 + 12) = 2112;
      v40 = v26;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v41;
      v42 = v51;
      *v51 = v41;
      _os_log_impl(&dword_226AB4000, v29, v50, "Failed to fetch pending registration for transaction %s with error: %@", v32, 0x16u);
      sub_226AC47B0(v42, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
      v43 = v52;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      v44 = v32;
      v27 = v53;
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

    else
    {

      v45 = v5;
      v38 = v54;
      v54(v45, v2);
    }

    swift_willThrow();
    v38(v12, v2);
  }

  else
  {
    v54(v12, v2);
  }

  return v27;
}

uint64_t sub_226D5FDB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v76 = a1;
  v72 = a2;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v79 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v67 - v6;
  v7 = sub_226D6C3BC();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  sub_226D6C8DC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v16 = sub_226D6E07C();
  v17 = __swift_project_value_buffer(v16, qword_28105F5C0);
  (*(v10 + 16))(v12, v15, v9);
  v74 = v17;
  v18 = sub_226D6E05C();
  v19 = sub_226D6E9EC();
  v20 = os_log_type_enabled(v18, v19);
  v69 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v73 = v15;
    v22 = v21;
    v23 = swift_slowAlloc();
    v68 = v2;
    v24 = v23;
    v81 = v23;
    *v22 = 136315138;
    sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v25 = sub_226D6F1CC();
    v26 = v10;
    v27 = v9;
    v29 = v28;
    v78 = *(v26 + 8);
    v78(v12, v27);
    v30 = sub_226AC4530(v25, v29, &v81);
    v9 = v27;
    v10 = v26;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_226AB4000, v18, v19, "Retrieving credential valid until %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v31 = v24;
    v2 = v68;
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    v32 = v22;
    v15 = v73;
    MEMORY[0x22AA8BEE0](v32, -1, -1);
  }

  else
  {

    v78 = *(v10 + 8);
    v78(v12, v9);
  }

  v33 = v75;
  v34 = v77;
  sub_226D6C73C();
  v36 = v79;
  v35 = v80;
  if (v34)
  {
    v37 = v34;
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9CC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v15;
      v41 = swift_slowAlloc();
      v42 = v9;
      v43 = swift_slowAlloc();
      *v41 = 138412290;
      v44 = v34;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_226AB4000, v38, v39, "Failed to retrieve credential with error: %@", v41, 0xCu);
      sub_226AC47B0(v43, &qword_27D7A5FB0, &qword_226D70870);
      v46 = v43;
      v9 = v42;
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      v47 = v41;
      v15 = v40;
      MEMORY[0x22AA8BEE0](v47, -1, -1);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v77 = v10;
  (*(v70 + 32))(v72, v33, v71);
  sub_226D6C39C();
  v48 = v69;
  (*(v69 + 16))(v36, v35, v2);
  v49 = sub_226D6E05C();
  v50 = sub_226D6E9EC();
  v51 = v36;
  v52 = v2;
  if (!os_log_type_enabled(v49, v50))
  {

    v65 = *(v48 + 8);
    v65(v51, v2);
    v65(v80, v2);
LABEL_13:
    v64 = v15;
    v63 = v9;
    return (v78)(v64, v63);
  }

  v53 = swift_slowAlloc();
  v73 = v15;
  v74 = v53;
  v54 = v53;
  v75 = swift_slowAlloc();
  v81 = v75;
  *v54 = 136315138;
  sub_226D66C08(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v55 = sub_226D6F1CC();
  v76 = v9;
  v57 = v56;
  v58 = *(v48 + 8);
  v58(v51, v52);
  v59 = sub_226AC4530(v55, v57, &v81);

  v60 = v74;
  *(v74 + 4) = v59;
  v61 = v60;
  _os_log_impl(&dword_226AB4000, v49, v50, "Got credential %s", v60, 0xCu);
  v62 = v75;
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  MEMORY[0x22AA8BEE0](v62, -1, -1);
  MEMORY[0x22AA8BEE0](v61, -1, -1);

  v58(v80, v52);
  v63 = v76;
  v64 = v73;
  return (v78)(v64, v63);
}

void *sub_226D604B8(uint64_t a1, uint64_t a2, void *a3)
{
  v171 = a2;
  v178[1] = *MEMORY[0x277D85DE8];
  v173 = sub_226D6D4AC();
  v176 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v167 = (&v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v165 = &v155 - v6;
  MEMORY[0x28223BE20](v7);
  v172 = &v155 - v8;
  v174 = sub_226D6B3BC();
  v177 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v168 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v155 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v155 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v155 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v155 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v155 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v155 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v155 - v29;
  sub_226D6C8EC();
  v31 = v175;
  result = sub_226D6C8AC();
  if (v31)
  {
    return result;
  }

  v175 = v27;
  v160 = v24;
  v161 = v21;
  v163 = a3;
  v156 = v18;
  v157 = v15;
  v158 = v12;
  v33 = result;
  v35 = v177 + 2;
  v34 = v177[2];
  v36 = v169;
  v37 = v174;
  v34(v30, v169, v174);
  v38 = *(v36 + *(type metadata accessor for PrismWebServiceRegisterTransactionTask(0) + 20));
  v39 = v38 + 1;
  if (__OFADD__(v38, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v37;
    v166 = v33;
    v159 = 0;
    if (qword_28105F5B8 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v40 = sub_226D6E07C();
  v41 = __swift_project_value_buffer(v40, qword_28105F5C0);
  v42 = v175;
  v170 = v30;
  v34(v175, v30, v36);
  v169 = v41;
  v43 = sub_226D6E05C();
  v44 = sub_226D6E9EC();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v172;
  v164 = v34;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v178[0] = v155;
    *v47 = 136315394;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v48 = sub_226D6F1CC();
    v50 = v49;
    v175 = v177[1];
    v175(v42, v36);
    v51 = sub_226AC4530(v48, v50, v178);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v39;
    _os_log_impl(&dword_226AB4000, v43, v44, "Registration for transaction %s failed %lld times", v47, 0x16u);
    v52 = v155;
    __swift_destroy_boxed_opaque_existential_0Tm(v155);
    v53 = v52;
    v46 = v172;
    MEMORY[0x22AA8BEE0](v53, -1, -1);
    v54 = v47;
    v34 = v164;
    MEMORY[0x22AA8BEE0](v54, -1, -1);
  }

  else
  {

    v175 = v177[1];
    v175(v42, v36);
  }

  v55 = v36;
  v56 = v166;
  if (v39 >= 1)
  {
    exp2((v39 - 1));
  }

  v57 = v46;
  sub_226D6D3DC();
  v58 = sub_226D6C8BC();
  v59 = (v176 + 16);
  v162 = v35;
  if (v58)
  {
    v161 = v39;
    v60 = v160;
    v34(v160, v170, v55);
    v61 = v165;
    (*v59)(v165, v57, v173);
    v62 = sub_226D6E05C();
    v63 = sub_226D6E9EC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v178[0] = v65;
      *v64 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v66 = sub_226D6F1CC();
      v67 = v55;
      v69 = v68;
      v175(v60, v67);
      v70 = sub_226AC4530(v66, v69, v178);

      *(v64 + 4) = v70;
      *(v64 + 12) = 2080;
      sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v71 = v61;
      v72 = v173;
      v73 = sub_226D6F1CC();
      v75 = v74;
      v167 = *(v176 + 8);
      v167(v71, v72);
      v76 = sub_226AC4530(v73, v75, v178);

      *(v64 + 14) = v76;
      _os_log_impl(&dword_226AB4000, v62, v63, "Updating pending registration for transaction %s eligible for earliest next attempt at %s", v64, 0x16u);
      swift_arrayDestroy();
      v77 = v65;
      v56 = v166;
      MEMORY[0x22AA8BEE0](v77, -1, -1);
      MEMORY[0x22AA8BEE0](v64, -1, -1);
    }

    else
    {

      v167 = *(v176 + 8);
      v167(v61, v173);
      v175(v60, v55);
    }

    v97 = v168;
    [v56 setRegistrationAttemptCount_];
    v98 = sub_226D6D3EC();
    [v56 setLastRegistrationAttemptDate_];

    v99 = v163;
  }

  else
  {
    v78 = v161;
    v34(v161, v170, v55);
    v79 = v173;
    v80 = v167;
    (*v59)(v167, v57, v173);
    v81 = sub_226D6E05C();
    v82 = sub_226D6E9EC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v178[0] = v84;
      *v83 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v85 = sub_226D6F1CC();
      v86 = v55;
      v88 = v87;
      v175(v78, v86);
      v89 = v82;
      v90 = sub_226AC4530(v85, v88, v178);

      *(v83 + 4) = v90;
      *(v83 + 12) = 2080;
      sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v91 = v167;
      v92 = sub_226D6F1CC();
      v94 = v93;
      v167 = *(v176 + 8);
      v167(v91, v79);
      v95 = sub_226AC4530(v92, v94, v178);

      *(v83 + 14) = v95;
      _os_log_impl(&dword_226AB4000, v81, v89, "Deleting pending registration for transaction %s not eligible for earliest next attempt at %s", v83, 0x16u);
      swift_arrayDestroy();
      v96 = v84;
      v56 = v166;
      MEMORY[0x22AA8BEE0](v96, -1, -1);
      MEMORY[0x22AA8BEE0](v83, -1, -1);
    }

    else
    {

      v167 = *(v176 + 8);
      v167(v80, v79);
      v175(v78, v55);
    }

    v97 = v168;
    v99 = v163;
    [v163 deleteObject_];
  }

  v100 = [v56 isDeleted];
  v178[0] = 0;
  v101 = [v99 save_];
  v102 = v178[0];
  if (!v101)
  {
    v120 = v178[0];
    v121 = sub_226D6D04C();

    swift_willThrow();
    v122 = v121;
    if (v100)
    {
      v97 = v158;
      v123 = v174;
      v164(v158, v170, v174);
      v124 = v121;
      v125 = sub_226D6E05C();
      v126 = sub_226D6E9CC();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v129 = v97;
        v177 = swift_slowAlloc();
        v178[0] = v177;
        *v127 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
        v130 = sub_226D6F1CC();
        v132 = v131;
        v175(v129, v174);
        v133 = sub_226AC4530(v130, v132, v178);
        v123 = v174;

        *(v127 + 4) = v133;
        *(v127 + 12) = 2112;
        v134 = v122;
        v135 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 14) = v135;
        *v128 = v135;
        v136 = "Failed to delete pending registration for transaction %s with error: %@";
LABEL_30:
        _os_log_impl(&dword_226AB4000, v125, v126, v136, v127, 0x16u);
        sub_226AC47B0(v128, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v128, -1, -1);
        v152 = v177;
        __swift_destroy_boxed_opaque_existential_0Tm(v177);
        MEMORY[0x22AA8BEE0](v152, -1, -1);
        MEMORY[0x22AA8BEE0](v127, -1, -1);

        v153 = v175;
LABEL_33:
        swift_willThrow();

        v167(v172, v173);
        return v153(v170, v123);
      }
    }

    else
    {
      v123 = v174;
      v164(v97, v170, v174);
      v144 = v121;
      v125 = sub_226D6E05C();
      v126 = sub_226D6E9CC();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v145 = v97;
        v177 = swift_slowAlloc();
        v178[0] = v177;
        *v127 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
        v146 = sub_226D6F1CC();
        v148 = v147;
        v175(v145, v174);
        v149 = sub_226AC4530(v146, v148, v178);
        v123 = v174;

        *(v127 + 4) = v149;
        *(v127 + 12) = 2112;
        v150 = v122;
        v151 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 14) = v151;
        *v128 = v151;
        v136 = "Failed to update pending registration for transaction %s with error: %@";
        goto LABEL_30;
      }
    }

    v153 = v175;
    v175(v97, v123);
    goto LABEL_33;
  }

  v103 = v174;
  v104 = v170;
  if (v100)
  {
    v105 = v156;
    v164(v156, v170, v174);
    v106 = v102;
    v107 = sub_226D6E05C();
    v108 = sub_226D6E9EC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v178[0] = v110;
      *v109 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v111 = sub_226D6F1CC();
      v112 = v105;
      v114 = v113;
      v115 = v103;
      v116 = v103;
      v117 = v175;
      v175(v112, v115);
      v118 = sub_226AC4530(v111, v114, v178);

      *(v109 + 4) = v118;
      v119 = "Deleted pending registration for transaction %s";
LABEL_27:
      _os_log_impl(&dword_226AB4000, v107, v108, v119, v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      MEMORY[0x22AA8BEE0](v110, -1, -1);
      MEMORY[0x22AA8BEE0](v109, -1, -1);

      v167(v172, v173);
      return v117(v170, v116);
    }
  }

  else
  {
    v105 = v157;
    v164(v157, v170, v174);
    v137 = v102;
    v107 = sub_226D6E05C();
    v108 = sub_226D6E9EC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v178[0] = v110;
      *v109 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v138 = sub_226D6F1CC();
      v139 = v105;
      v141 = v140;
      v142 = v103;
      v116 = v103;
      v117 = v175;
      v175(v139, v142);
      v143 = sub_226AC4530(v138, v141, v178);

      *(v109 + 4) = v143;
      v119 = "Updated pending registration for transaction %s";
      goto LABEL_27;
    }
  }

  v154 = v175;
  v175(v105, v103);
  v167(v172, v173);
  return v154(v104, v103);
}

uint64_t sub_226D616B0(uint64_t *a1, void *a2)
{
  v82 = a2;
  v80 = a1;
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6B3BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v85 = v5;
  v17 = *(v5 + 16);
  v17(&v76 - v15, v2, v4, v14);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v18 = sub_226D6E07C();
  v19 = __swift_project_value_buffer(v18, qword_28105F5C0);
  v81 = v17;
  (v17)(v12, v16, v4);
  v79 = v19;
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9EC();
  v22 = os_log_type_enabled(v20, v21);
  v78 = v3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v76 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v77 = v16;
    v26 = v4;
    v27 = v25;
    v86[0] = v25;
    *v24 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v28 = sub_226D6F1CC();
    v30 = v29;
    v84 = *(v85 + 8);
    v84(v12, v26);
    v31 = sub_226AC4530(v28, v30, v86);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_226AB4000, v20, v21, "Deleting pending registration for transaction %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v32 = v27;
    v4 = v26;
    v16 = v77;
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    v33 = v24;
    v9 = v76;
    MEMORY[0x22AA8BEE0](v33, -1, -1);
  }

  else
  {

    v84 = *(v85 + 8);
    v84(v12, v4);
  }

  v34 = v82;
  v35 = [v82 objectWithID_];
  [v34 deleteObject_];
  v86[0] = 0;
  v36 = [v34 save_];
  v37 = v86[0];
  v38 = v83;
  v39 = v81;
  if (v36)
  {
    (v81)(v9, v16, v4);
    v40 = v37;
    v41 = sub_226D6E05C();
    v42 = sub_226D6E9EC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v9;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82 = v35;
      v83 = v45;
      v46 = v4;
      v86[0] = v45;
      *v44 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v47 = sub_226D6F1CC();
      v49 = v48;
      v50 = v43;
      v51 = v84;
      v84(v50, v46);
      v52 = sub_226AC4530(v47, v49, v86);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_226AB4000, v41, v42, "Deleted pending registration for transaction %s", v44, 0xCu);
      v53 = v83;
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x22AA8BEE0](v53, -1, -1);
      MEMORY[0x22AA8BEE0](v44, -1, -1);

      return v51(v16, v46);
    }

    else
    {

      v75 = v84;
      v84(v9, v4);
      return v75(v16, v4);
    }
  }

  else
  {
    v55 = v86[0];
    v56 = sub_226D6D04C();

    swift_willThrow();
    v39(v38, v16, v4);
    v57 = v56;
    v58 = sub_226D6E05C();
    v59 = sub_226D6E9CC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v82 = v35;
      v61 = v60;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v86[0] = v81;
      *v61 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      LODWORD(v79) = v59;
      v62 = sub_226D6F1CC();
      v63 = v38;
      v64 = v16;
      v65 = v4;
      v67 = v66;
      v68 = v84;
      v84(v63, v65);
      v69 = sub_226AC4530(v62, v67, v86);
      v4 = v65;
      v16 = v64;

      *(v61 + 4) = v69;
      *(v61 + 12) = 2112;
      v70 = v56;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v71;
      v72 = v80;
      *v80 = v71;
      _os_log_impl(&dword_226AB4000, v58, v79, "Failed to delete pending registration for transaction %s with error: %@", v61, 0x16u);
      sub_226AC47B0(v72, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v72, -1, -1);
      v73 = v81;
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x22AA8BEE0](v73, -1, -1);
      v74 = v61;
      v35 = v82;
      MEMORY[0x22AA8BEE0](v74, -1, -1);
    }

    else
    {

      v68 = v84;
      v84(v38, v4);
    }

    swift_willThrow();

    return v68(v16, v4);
  }
}

uint64_t sub_226D61E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v197 = a2;
  v190 = a1;
  v169 = a3;
  v183 = sub_226D6A07C();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v186 = &v160[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_226D6E23C();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v160[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v174 = &v160[-v6];
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F8, &qword_226D7E7B8);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v168 = &v160[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v185 = &v160[-v9];
  v179 = sub_226D6E26C();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v184 = &v160[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = sub_226D6E28C();
  v200 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v173 = &v160[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v189 = &v160[-v13];
  MEMORY[0x28223BE20](v14);
  v199 = &v160[-v15];
  v205 = sub_226D6D52C();
  v198 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v167 = &v160[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v192 = &v160[-v18];
  MEMORY[0x28223BE20](v19);
  v203 = &v160[-v20];
  v21 = sub_226D6BEFC();
  v206 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v166 = &v160[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v160[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v160[-v27];
  v29 = sub_226D6B3BC();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v170 = &v160[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v188 = &v160[-v33];
  MEMORY[0x28223BE20](v34);
  v171 = &v160[-v35];
  MEMORY[0x28223BE20](v36);
  v187 = &v160[-v37];
  MEMORY[0x28223BE20](v38);
  v40 = &v160[-v39];
  MEMORY[0x28223BE20](v41);
  v43 = &v160[-v42];
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v160[-v46];
  v208 = v30;
  v50 = *(v30 + 16);
  v48 = v30 + 16;
  v49 = v50;
  (v50)(&v160[-v46], v207, v29, v45);
  v50(v43, v47, v29);
  v172 = v43;
  sub_226D6BEEC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v51 = sub_226D6E07C();
  v52 = __swift_project_value_buffer(v51, qword_28105F5C0);
  v53 = *(v206 + 16);
  v195 = v28;
  v165 = v206 + 16;
  v164 = v53;
  v53(v25, v28, v21);
  v209 = v47;
  v201 = v48;
  v202 = v49;
  v49(v40, v47, v29);
  v204 = v52;
  v54 = sub_226D6E05C();
  v55 = sub_226D6E9EC();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v205;
  v196 = v21;
  v213 = v29;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v212[0] = v163;
    *v58 = 136315394;
    sub_226D66C08(&qword_27D7A9700, MEMORY[0x277CC8188], MEMORY[0x277CC8190]);
    v59 = sub_226D6F1CC();
    v61 = v60;
    v193 = *(v206 + 8);
    v193(v25, v21);
    v62 = sub_226AC4530(v59, v61, v212);
    v57 = v205;

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v63 = sub_226D6F1CC();
    v65 = v64;
    v207 = *(v208 + 8);
    v207(v40, v213);
    v66 = sub_226AC4530(v63, v65, v212);

    *(v58 + 14) = v66;
    _os_log_impl(&dword_226AB4000, v54, v55, "Using topic %s to register for transaction %s", v58, 0x16u);
    v67 = v163;
    swift_arrayDestroy();
    v68 = v203;
    MEMORY[0x22AA8BEE0](v67, -1, -1);
    v69 = v58;
    v29 = v213;
    MEMORY[0x22AA8BEE0](v69, -1, -1);
  }

  else
  {

    v207 = *(v208 + 8);
    v207(v40, v29);
    v193 = *(v206 + 8);
    v193(v25, v21);
    v68 = v203;
  }

  v70 = v192;
  sub_226D6C39C();
  v71 = v198;
  v72 = *(v198 + 16);
  v163 = v198 + 16;
  v162 = v72;
  v72(v70, v68, v57);
  v73 = v187;
  v74 = v202;
  v202(v187, v209, v29);
  v75 = sub_226D6E05C();
  v76 = sub_226D6E9EC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = v73;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v212[0] = v79;
    *v78 = 136315394;
    sub_226D66C08(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v161 = v76;
    v80 = sub_226D6F1CC();
    v81 = v70;
    v83 = v82;
    v192 = *(v71 + 8);
    (v192)(v81, v57);
    v84 = sub_226AC4530(v80, v83, v212);

    *(v78 + 4) = v84;
    *(v78 + 12) = 2080;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v85 = sub_226D6F1CC();
    v87 = v86;
    v207(v77, v29);
    v88 = sub_226AC4530(v85, v87, v212);

    *(v78 + 14) = v88;
    _os_log_impl(&dword_226AB4000, v75, v161, "Using credential %s to register for transaction %s", v78, 0x16u);
    swift_arrayDestroy();
    v74 = v202;
    MEMORY[0x22AA8BEE0](v79, -1, -1);
    MEMORY[0x22AA8BEE0](v78, -1, -1);
  }

  else
  {

    v207(v73, v29);
    v192 = *(v71 + 8);
    (v192)(v70, v57);
  }

  v89 = v199;
  v90 = v188;
  v91 = v189;
  v92 = v191;
  sub_226D6C87C();
  if (v92)
  {
    v74(v90, v209, v29);
    v93 = v92;
    v94 = sub_226D6E05C();
    v95 = sub_226D6E9CC();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v90;
      v204 = swift_slowAlloc();
      v212[0] = v204;
      *v96 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v99 = sub_226D6F1CC();
      v101 = v100;
      v207(v98, v213);
      v102 = sub_226AC4530(v99, v101, v212);

      *(v96 + 4) = v102;
      *(v96 + 12) = 2112;
      v103 = v92;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 14) = v104;
      *v97 = v104;
      _os_log_impl(&dword_226AB4000, v94, v95, "Failed to access private key for transaction %s with error: %@", v96, 0x16u);
      sub_226AC47B0(v97, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v97, -1, -1);
      v105 = v204;
      __swift_destroy_boxed_opaque_existential_0Tm(v204);
      MEMORY[0x22AA8BEE0](v105, -1, -1);
      v106 = v96;
      v29 = v213;
      v107 = v203;
      MEMORY[0x22AA8BEE0](v106, -1, -1);

      v108 = v205;
    }

    else
    {

      v207(v90, v29);
      v108 = v205;
      v107 = v203;
    }

    swift_willThrow();
  }

  else
  {
    v188 = 0;
    (*(v200 + 32))(v89, v91, v194);
    v109 = sub_226D6E27C();
    v110 = MEMORY[0x22AA8A300](v109);
    v112 = v111;
    v113 = v171;
    v74(v171, v209, v29);
    sub_226B11B44(v110, v112);
    v114 = v110;
    v115 = sub_226D6E05C();
    v116 = sub_226D6E9EC();
    sub_226B11B98(v110, v112);
    v117 = os_log_type_enabled(v115, v116);
    v191 = v112;
    v190 = v110;
    if (v117)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v212[0] = v119;
      *v118 = 136315394;
      v120 = sub_226D6D20C();
      v122 = sub_226AC4530(v120, v121, v212);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2080;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v123 = v213;
      v124 = sub_226D6F1CC();
      v126 = v125;
      v207(v113, v123);
      v127 = sub_226AC4530(v124, v126, v212);
      v114 = v190;

      *(v118 + 14) = v127;
      v112 = v191;
      _os_log_impl(&dword_226AB4000, v115, v116, "Using public key %s to register for transaction %s", v118, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v119, -1, -1);
      MEMORY[0x22AA8BEE0](v118, -1, -1);
    }

    else
    {

      v207(v113, v213);
    }

    v128 = v177;
    v129 = v176;
    v212[0] = v114;
    v212[1] = v112;
    v130 = v209;
    v210 = sub_226D6B3AC();
    v211 = v131;
    v132 = v174;
    sub_226D6E22C();
    sub_226D6E29C();
    sub_226D66C08(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_226C61B28();
    sub_226D6E24C();
    v133 = *(v129 + 8);
    v133(v132, v128);
    v202(v172, v130, v213);
    (*(v200 + 16))(v173, v199, v194);
    sub_226D6A05C();
    v134 = v175;
    sub_226D6C3AC();
    v135 = v188;
    v136 = sub_226D6A06C();
    if (!v135)
    {
      v204 = v136;
      v133(v134, v128);
      v164(v166, v195, v196);
      v155 = v205;
      v162(v167, v203, v205);
      v156 = v180;
      v157 = v185;
      v158 = v181;
      (*(v180 + 16))(v168, v185, v181);
      sub_226D6C71C();
      (*(v182 + 8))(v186, v183);
      (*(v156 + 8))(v157, v158);
      (*(v178 + 8))(v184, v179);
      (*(v200 + 8))(v199, v194);
      (v192)(v203, v155);
      v193(v195, v196);
      return (v207)(v209, v213);
    }

    v133(v134, v128);
    v137 = v170;
    v202(v170, v209, v213);
    v138 = v135;
    v139 = sub_226D6E05C();
    v140 = sub_226D6E9CC();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v212[0] = v204;
      *v141 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v142 = v213;
      v143 = sub_226D6F1CC();
      v145 = v144;
      v207(v137, v142);
      v146 = sub_226AC4530(v143, v145, v212);
      v108 = v205;

      *(v141 + 4) = v146;
      *(v141 + 12) = 2112;
      v147 = v135;
      v148 = _swift_stdlib_bridgeErrorToNSError();
      *(v141 + 14) = v148;
      v149 = v202;
      *v202 = v148;
      _os_log_impl(&dword_226AB4000, v139, v140, "Failed to encrypt info for transaction %s with error: %@", v141, 0x16u);
      sub_226AC47B0(v149, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v149, -1, -1);
      v150 = v204;
      __swift_destroy_boxed_opaque_existential_0Tm(v204);
      MEMORY[0x22AA8BEE0](v150, -1, -1);
      v151 = v186;
      MEMORY[0x22AA8BEE0](v141, -1, -1);

      v29 = v142;
      v152 = v185;
      v153 = v199;
      v154 = v194;
    }

    else
    {

      v29 = v213;
      v207(v137, v213);
      v108 = v205;
      v152 = v185;
      v153 = v199;
      v154 = v194;
      v151 = v186;
    }

    swift_willThrow();
    sub_226B11B98(v190, v191);
    (*(v182 + 8))(v151, v183);
    (*(v180 + 8))(v152, v181);
    (*(v178 + 8))(v184, v179);
    (*(v200 + 8))(v153, v154);
    v107 = v203;
  }

  (v192)(v107, v108);
  v193(v195, v196);
  return (v207)(v209, v29);
}

uint64_t sub_226D635D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6C7AC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_226D6B3BC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D63718, 0, 0);
}

uint64_t sub_226D63718()
{
  v29 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[9];
  v9 = sub_226D6E07C();
  v0[17] = __swift_project_value_buffer(v9, qword_28105F5C0);
  v5(v6, v7, v8);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[9];
  v15 = v0[10];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_226AC4530(v17, v19, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Registering for transaction %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v0[18] = v20;
  v27 = (*MEMORY[0x277CC7920] + MEMORY[0x277CC7920]);
  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_226D639C8;
  v23 = v0[8];
  v24 = v0[3];

  return v27(v23, v24);
}

uint64_t sub_226D639C8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226D63D44;
  }

  else
  {
    v2 = sub_226D63ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D63ADC()
{
  v23 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
  (*(v0[7] + 32))(v0[2], v0[8], v0[6]);
  v2(v3, v1, v4);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[9];
  if (v7)
  {
    v21 = v0[18];
    v12 = swift_slowAlloc();
    v20 = v9;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v14 = sub_226D6F1CC();
    v16 = v15;
    v21(v10, v11);
    v17 = sub_226AC4530(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Registered for transaction %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);

    v21(v20, v11);
  }

  else
  {

    v8(v10, v11);
    v8(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_226D63D44()
{
  v27 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 72));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = *(v0 + 144);
    v24 = *(v0 + 160);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v7 = 136315394;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    v23(v5, v6);
    v12 = sub_226AC4530(v9, v11, &v26);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v24;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to register for transaction %s with error: %@", v7, 0x16u);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);

    v15(v16, v17);
  }

  v18 = *(v0 + 144);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  swift_willThrow();
  v18(v19, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_226D64004(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6E70C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6C7AC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_226D6C72C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96D8, &qword_226D7E770);
  v2[15] = swift_task_alloc();
  v2[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E8, &qword_226D7E780);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_226D6B3BC();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D642D4, 0, 0);
}

uint64_t sub_226D642D4()
{
  v102 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 32);
  v5 = *(v3 + 16);
  *(v0 + 232) = v5;
  *(v0 + 240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 176);
  v9 = sub_226D6E07C();
  *(v0 + 248) = __swift_project_value_buffer(v9, qword_28105F5C0);
  v95 = v5;
  v5(v7, v6, v8);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 216);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v101[0] = v91;
    *v16 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_226AC4530(v17, v19, v101);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Starting register task for transaction %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    MEMORY[0x22AA8BEE0](v91, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  *(v0 + 256) = v20;
  v22 = v20;
  v23 = *(v0 + 224);
  v25 = *(v0 + 24);
  v24 = *(v0 + 32);
  v26 = sub_226D676AC();
  *(v0 + 264) = v26;
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v23;
  v27[5] = v25;
  sub_226D6EB8C();
  v92 = v22;
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);

  sub_226AC40E8(v28, v29, &qword_27D7A96E8, &qword_226D7E780);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    v98 = v26;
    v31 = *(v0 + 224);
    v32 = *(v0 + 200);
    v33 = *(v0 + 176);
    sub_226AC47B0(*(v0 + 160), &qword_27D7A96E8, &qword_226D7E780);
    v95(v32, v31, v33);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 168);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v101[0] = v41;
      *v40 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v42 = sub_226D6F1CC();
      v96 = v39;
      v44 = v43;
      v92(v37, v38);
      v45 = sub_226AC4530(v42, v44, v101);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_226AB4000, v34, v35, "Stopping register task for transaction %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x22AA8BEE0](v41, -1, -1);
      MEMORY[0x22AA8BEE0](v40, -1, -1);

      v46 = &qword_27D7A96E8;
      v47 = &qword_226D7E780;
      v48 = v96;
    }

    else
    {

      v22(v37, v38);
      v46 = &qword_27D7A96E8;
      v47 = &qword_226D7E780;
      v48 = v39;
    }

    goto LABEL_19;
  }

  v49 = *(v0 + 160);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  *(v0 + 272) = *v49;
  sub_226D66AC4(v49 + *(v30 + 48), v50);
  sub_226AC40E8(v50, v51, &qword_27D7A96E0, &qword_226D7E778);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    **(v0 + 120) = *v53;
    swift_storeEnumTagMultiPayload();
    v63 = *(v0 + 264);
    v64 = *(v0 + 120);
    v65 = *(v0 + 32);
    v66 = [*(v0 + 272) objectID];
    v67 = swift_task_alloc();
    v67[2] = v64;
    v67[3] = v65;
    v67[4] = v66;
    v67[5] = v63;
    sub_226D6EB7C();
    v68 = *(v0 + 224);
    v69 = *(v0 + 232);
    v70 = *(v0 + 208);
    v71 = *(v0 + 176);

    v69(v70, v68, v71);
    v72 = sub_226D6E05C();
    v73 = sub_226D6E9EC();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 272);
    v76 = *(v0 + 256);
    v77 = *(v0 + 208);
    v78 = *(v0 + 176);
    v79 = *(v0 + 168);
    v80 = *(v0 + 144);
    if (v74)
    {
      v97 = *(v0 + 264);
      v100 = *(v0 + 144);
      v81 = swift_slowAlloc();
      v94 = v75;
      v82 = swift_slowAlloc();
      v101[0] = v82;
      *v81 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v83 = sub_226D6F1CC();
      v84 = v76;
      v85 = v83;
      v93 = v79;
      v87 = v86;
      v84(v77, v78);
      v88 = sub_226AC4530(v85, v87, v101);

      *(v81 + 4) = v88;
      _os_log_impl(&dword_226AB4000, v72, v73, "Finished register task for transaction %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      MEMORY[0x22AA8BEE0](v82, -1, -1);
      MEMORY[0x22AA8BEE0](v81, -1, -1);

      sub_226AC47B0(v100, &qword_27D7A96E0, &qword_226D7E778);
      v89 = v93;
    }

    else
    {

      v76(v77, v78);
      sub_226AC47B0(v80, &qword_27D7A96E0, &qword_226D7E778);
      v89 = v79;
    }

    sub_226AC47B0(v89, &qword_27D7A96E8, &qword_226D7E780);
    v48 = *(v0 + 120);
    v46 = &qword_27D7A96D8;
    v47 = &qword_226D7E770;
LABEL_19:
    sub_226AC47B0(v48, v46, v47);
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v90 = *(v0 + 8);

    return v90();
  }

  (*(*(v0 + 96) + 32))(*(v0 + 104), v53, *(v0 + 88));
  v54 = sub_226B5F900();
  *(v0 + 280) = v54;
  v55 = v54;
  v56 = *(v0 + 104);
  v57 = *(v0 + 32);
  v58 = swift_task_alloc();
  *(v0 + 288) = v58;
  v58[2] = v57;
  v58[3] = v56;
  v58[4] = v55;
  v99 = (*MEMORY[0x277CC7928] + MEMORY[0x277CC7928]);
  v59 = swift_task_alloc();
  *(v0 + 296) = v59;
  *v59 = v0;
  v59[1] = sub_226D650B8;
  v60 = *(v0 + 80);
  v61 = *(v0 + 64);

  return v99(v60, &unk_226D7E7A0, v58, v61);
}

uint64_t sub_226D650B8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_226D65714;
  }

  else
  {

    v2 = sub_226D651D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D651D4()
{
  v45 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  (*(v3 + 32))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 304);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v6 = *(v0 + 264);
  v7 = *(v0 + 120);
  v8 = *(v0 + 32);
  v9 = [*(v0 + 272) objectID];
  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = v6;
  sub_226D6EB7C();
  if (v5)
  {
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);

    sub_226AC47B0(v14, &qword_27D7A96E0, &qword_226D7E778);
    sub_226AC47B0(v13, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(v15, &qword_27D7A96D8, &qword_226D7E770);
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 176);

    v18(v19, v17, v20);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9EC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 272);
    v25 = *(v0 + 256);
    v26 = *(v0 + 208);
    v27 = *(v0 + 176);
    v28 = *(v0 + 168);
    v29 = *(v0 + 144);
    if (v23)
    {
      v42 = *(v0 + 264);
      v43 = *(v0 + 144);
      v30 = swift_slowAlloc();
      v41 = v24;
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v32 = sub_226D6F1CC();
      v33 = v25;
      v34 = v32;
      v40 = v28;
      v36 = v35;
      v33(v26, v27);
      v37 = sub_226AC4530(v34, v36, &v44);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_226AB4000, v21, v22, "Finished register task for transaction %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);

      sub_226AC47B0(v43, &qword_27D7A96E0, &qword_226D7E778);
      v38 = v40;
    }

    else
    {

      v25(v26, v27);
      sub_226AC47B0(v29, &qword_27D7A96E0, &qword_226D7E778);
      v38 = v28;
    }

    sub_226AC47B0(v38, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(*(v0 + 120), &qword_27D7A96D8, &qword_226D7E770);
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_226D65714()
{
  v67 = v0;

  v1 = *(v0 + 304);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 192);
    v6 = *(v0 + 176);

    v4(v5, v3, v6);
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9CC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 144);
    if (v9)
    {
      v62 = *(v0 + 264);
      v64 = *(v0 + 144);
      v16 = swift_slowAlloc();
      v60 = v10;
      v17 = swift_slowAlloc();
      v66[0] = v17;
      *v16 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v18 = sub_226D6F1CC();
      v19 = v11;
      v20 = v18;
      v58 = v13;
      v22 = v21;
      v19(v12, v14);
      v23 = sub_226AC4530(v20, v22, v66);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_226AB4000, v7, v8, "Register task for transaction %s was cancelled", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);

      sub_226AC47B0(v64, &qword_27D7A96E0, &qword_226D7E778);
      v24 = v58;
    }

    else
    {

      v11(v12, v14);
      sub_226AC47B0(v15, &qword_27D7A96E0, &qword_226D7E778);
      v24 = v13;
    }

    sub_226AC47B0(v24, &qword_27D7A96E8, &qword_226D7E780);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 88);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    (*(v32 + 8))(v31, v33);
  }

  else
  {
    v25 = *(v0 + 120);

    *v25 = v1;
    swift_storeEnumTagMultiPayload();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v26 = *(v0 + 264);
    v27 = *(v0 + 120);
    v28 = *(v0 + 32);
    v29 = [*(v0 + 272) objectID];
    v30 = swift_task_alloc();
    v30[2] = v27;
    v30[3] = v28;
    v30[4] = v29;
    v30[5] = v26;
    sub_226D6EB7C();
    v34 = *(v0 + 224);
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);
    v37 = *(v0 + 176);

    v35(v36, v34, v37);
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9EC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 272);
    v42 = *(v0 + 256);
    v43 = *(v0 + 208);
    v44 = *(v0 + 176);
    v45 = *(v0 + 168);
    v46 = *(v0 + 144);
    if (v40)
    {
      v63 = *(v0 + 264);
      v65 = *(v0 + 144);
      v47 = swift_slowAlloc();
      v61 = v41;
      v48 = swift_slowAlloc();
      v66[0] = v48;
      *v47 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
      v49 = sub_226D6F1CC();
      v50 = v42;
      v51 = v49;
      v59 = v45;
      v53 = v52;
      v50(v43, v44);
      v54 = sub_226AC4530(v51, v53, v66);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_226AB4000, v38, v39, "Finished register task for transaction %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
      MEMORY[0x22AA8BEE0](v47, -1, -1);

      sub_226AC47B0(v65, &qword_27D7A96E0, &qword_226D7E778);
      v55 = v59;
    }

    else
    {

      v42(v43, v44);
      sub_226AC47B0(v46, &qword_27D7A96E0, &qword_226D7E778);
      v55 = v45;
    }

    sub_226AC47B0(v55, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(*(v0 + 120), &qword_27D7A96D8, &qword_226D7E770);
  }

  (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

  v56 = *(v0 + 8);

  return v56();
}

void *sub_226D65ED8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v50 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v4 = sub_226D6C3BC();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v44 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_226D6B3BC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v51;
  result = sub_226D5F854(v50);
  if (!v21)
  {
    v51 = 0;
    if (result)
    {
      v23 = *(v48 + 88);
      v24 = result;
      v25 = v51;
      sub_226D5FDB0(v23, v7);
      if (v25)
      {

        v51 = 0;
        *v13 = v25;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_226D61E5C(v24, v7, v10);
        v51 = 0;

        (*(v46 + 8))(v7, v45);
        swift_storeEnumTagMultiPayload();
        sub_226D66AC4(v10, v13);
      }

      sub_226D66AC4(v13, v16);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
      v40 = *(v39 + 48);
      v41 = v49;
      *v49 = v24;
      sub_226D66AC4(v16, v41 + v40);
      return (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F5C0);
      v27 = v18;
      v28 = *(v18 + 16);
      v29 = v20;
      v30 = v17;
      v28(v20, v47, v17);
      v31 = sub_226D6E05C();
      v32 = sub_226D6E9CC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v52 = v34;
        *v33 = 136315138;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
        v35 = sub_226D6F1CC();
        v37 = v36;
        (*(v27 + 8))(v29, v30);
        v38 = sub_226AC4530(v35, v37, &v52);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_226AB4000, v31, v32, "Pending registration for transaction %s not found", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x22AA8BEE0](v34, -1, -1);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
      }

      else
      {

        (*(v27 + 8))(v20, v30);
      }

      v42 = v49;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
      return (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }
  }

  return result;
}

uint64_t sub_226D66400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_226AD827C;

  return sub_226D635D4(a1, a3, a4);
}

uint64_t sub_226D664B8(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v14[0] = a4;
  v14[1] = a2;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96D8, &qword_226D7E770);
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  sub_226AC40E8(a1, v14 - v11, &qword_27D7A96D8, &qword_226D7E770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226AC47B0(v12, &qword_27D7A96D8, &qword_226D7E770);
    sub_226D6D46C();
    sub_226D604B8(a3, v9, v14[0]);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_226D616B0(a3, v14[0]);
    return sub_226AC47B0(v12, &qword_27D7A96D8, &qword_226D7E770);
  }
}

uint64_t sub_226D6668C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B3BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D6670C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  v4 = sub_226D6B3BC();
  (*(*(v4 - 8) + 16))(v3 + v2, v0, v4);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = sub_226B1FBC0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_226D66864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226D64004(a1);
}

uint64_t sub_226D668F8(uint64_t a1)
{
  result = sub_226D66C08(&qword_27D7A96C0, type metadata accessor for PrismWebServiceRegisterTransactionTask, &unk_226D7E704);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226D66950()
{
  sub_226D6EEFC();

  sub_226D6B3BC();
  sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_226D66A20(uint64_t a1)
{
  *(a1 + 8) = sub_226D66C08(&qword_27D7A96C8, type metadata accessor for PrismWebServiceRegisterTransactionTask, &unk_226D7E748);
  result = sub_226D66C08(&qword_27D7A96D0, type metadata accessor for PrismWebServiceRegisterTransactionTask, &unk_226D7E6C0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226D66AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D66B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D66400(a1, v4, v5, v6);
}

uint64_t sub_226D66C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226D66C78(uint64_t a1)
{
  sub_226D6B3BC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}