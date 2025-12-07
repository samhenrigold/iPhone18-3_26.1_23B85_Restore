uint64_t sub_226CEEB90()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226CEEECC;
  }

  else
  {
    v2 = sub_226CEECA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CEECA4()
{
  v1 = *(v0 + 256);
  v2 = *(*(v0 + 144) + 32);
  v2(*(v0 + 160), *(v0 + 152), *(v0 + 136));
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_226CEF2B8;
    v4 = *(v0 + 96);

    return sub_226D1392C(v4);
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v0 + 184);
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    v11 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6208, &unk_226D7BDB0);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_226D70840;
    v2(v13 + v12, v8, v9);

    (*(v7 + 8))(v18, v17);
    *v11 = v13;
    v14 = *MEMORY[0x277CC81A0];
    v15 = sub_226D6BF0C();
    (*(*(v15 - 8) + 104))(v11, v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_226CEEECC()
{
  v1 = *(v0 + 216);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 120) + 88))(*(v0 + 128), *(v0 + 112)) == *MEMORY[0x277CC7FA8])
    {
      v3 = *(v0 + 200);
      v5 = *(v0 + 176);
      v4 = *(v0 + 184);
      v6 = *(v0 + 168);
      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = *(v0 + 112);
      v10 = *(v0 + 64);

      (*(v5 + 8))(v4, v6);
      (*(v8 + 96))(v7, v9);
      *v10 = *v7;
      v11 = *MEMORY[0x277CC8198];
      v12 = sub_226D6BF0C();
      (*(*(v12 - 8) + 104))(v10, v11, v12);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

      v13 = *(v0 + 8);
      goto LABEL_10;
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 216);
  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F710);
  v16 = v14;
  v17 = sub_226D6E05C();
  v18 = sub_226D6E9CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 216);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_226AB4000, v17, v18, "Failed to connect a primary account: %@.", v20, 0xCu);
    sub_226AC47B0(v21, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 200);

  v26 = sub_226D6C63C();
  sub_226B9E270();
  swift_allocError();
  *v27 = v24;
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277CC82B8], v26);
  swift_willThrow();

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v13 = *(v0 + 8);
LABEL_10:

  return v13();
}

uint64_t sub_226CEF2B8(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_226CEF3B8, 0, 0);
}

uint64_t sub_226CEF3B8(uint64_t a1)
{
  v2 = sub_226D6718C();
  v3 = swift_task_alloc();
  v1[30] = v3;
  *v3 = v1;
  v3[1] = sub_226CEF464;
  v4 = v1[29];
  v5 = v1[23];
  v6 = v1[12];

  return sub_226D14A8C(v4, v6, v2 & 1, v5);
}

uint64_t sub_226CEF464(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_226CEF584, 0, 0);
}

uint64_t sub_226CEF584()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v14 = v0[21];
  v15 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6208, &unk_226D7BDB0);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D70840;
  (*(v6 + 16))(v9 + v8, v4, v5);
  sub_226CEE510(v1, sub_226BBB240, MEMORY[0x277CC6F70]);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v15, v14);
  *v7 = v9;
  v10 = *MEMORY[0x277CC81A0];
  v11 = sub_226D6BF0C();
  (*(*(v11 - 8) + 104))(v7, v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t BankConnectServiceImplementation.connectUnlinkedAccounts(institution:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6764C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CEF828, 0, 0);
}

uint64_t sub_226CEF828()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_226D1F120((v0 + 16));
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 136) = sub_226D6718C() & 1;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  *(v0 + 96) = *v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_226CEF93C;
  v6 = *(v0 + 56);

  return sub_226D1392C(v6);
}

uint64_t sub_226CEF93C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 112) = a1;

  v5 = swift_task_alloc();
  *(v3 + 120) = v5;
  *v5 = v4;
  v5[1] = sub_226CEFABC;
  v6 = *(v3 + 136);
  v7 = *(v3 + 88);
  v8 = *(v3 + 56);

  return sub_226D14A8C(a1, v8, v6, v7);
}

uint64_t sub_226CEFABC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 128) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226CEFC38, 0, 0);
}

uint64_t sub_226CEFC38()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

uint64_t sub_226CEFCAC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_226D6EDFC();
LABEL_9:
  result = sub_226D6EF3C();
  *v2 = result;
  return result;
}

uint64_t sub_226CEFD4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
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
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A90A8, &qword_27D7A6F50, &unk_226D7D360);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
            v9 = sub_226C3A888(v13, i, a3);
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
        sub_226AE59B4(0, &qword_28105F418, 0x277CBE4C8);
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

uint64_t sub_226CEFEEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
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
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9078, &qword_27D7A9070, &qword_226D7BE60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9070, &qword_226D7BE60);
            v9 = sub_226C3A888(v13, i, a3);
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
        sub_226AE59B4(0, &qword_27D7A9068, 0x277CE1FA0);
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

uint64_t sub_226CF008C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
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
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9060, &qword_27D7A9058, &qword_226D7BE58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9058, &qword_226D7BE58);
            v9 = sub_226C3A888(v13, i, a3);
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
        sub_226AE59B4(0, &qword_27D7A9050, 0x277CE1FC0);
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

uint64_t sub_226CF022C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
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
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A9088, &qword_27D7A9080, &qword_226D7BE68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9080, &qword_226D7BE68);
            v9 = sub_226C3A800(v13, i, a3);
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
        sub_226D691CC();
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

uint64_t sub_226CF03BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_226D6EDFC();
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
      result = sub_226D6EDFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_226CF0624(&qword_27D7A90A0, &qword_27D7A9098, &unk_226D7BE70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9098, &unk_226D7BE70);
            v9 = sub_226C3A888(v13, i, a3);
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
        sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
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

uint64_t sub_226CF055C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CF05C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CF0624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_226CF0678@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v85 = a3;
  v84 = sub_226D66E1C();
  v79 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectTransactionsBAASigner(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D67F1C();
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D66DBC();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF11E4(a1, &v107);
  if (!v108)
  {
    v77 = v11;
    v78 = v9;
    v74 = v5;
    v75 = v6;
    v76 = v8;
    v15 = a1;
    sub_226CF1254(a1);
    sub_226CF1254(&v107);
    v108 = v84;
    v109 = MEMORY[0x277CC6538];
    __swift_allocate_boxed_opaque_existential_1(&v107);
    sub_226D66E0C();
    sub_226D6C7EC();
    swift_allocObject();
    v16 = sub_226D6C7BC();
    v18 = v80;
    v17 = v81;
    (*(v80 + 104))(v14, *MEMORY[0x277CC6510], v81);
    v19 = sub_226D66D6C();
    (*(v18 + 8))(v14, v17);
    if (v19 & 1) != 0 && (sub_226D6C7DC())
    {
      v81 = a1;
      v20 = v82;
      sub_226AE532C(v82, &v107);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v73 = sub_226D6BAAC();
      v72 = type metadata accessor for ClassifiableTransactionSource();
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D84F90];
      *(v21 + 16) = v16;
      *(v21 + 24) = v22;
      *(v21 + 32) = 0;
      *(v21 + 40) = 1;
      *(v21 + 48) = &unk_283A6A288;
      v105 = sub_226D6B5EC();
      v106 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v104);

      sub_226D6B58C();
      v23 = v77;
      sub_226D67E8C();
      sub_226D67F0C();
      (*(v83 + 8))(v23, v78);
      sub_226D6704C();
      v80 = v16;
      v70 = sub_226D6BE5C();
      swift_allocObject();
      v78 = sub_226D6BE4C();
      v24 = sub_226D69B1C();
      swift_allocObject();
      v25 = sub_226D69B0C();
      v26 = v75;
      v27 = v76;
      v28 = &v76[*(v75 + 20)];
      v29 = MEMORY[0x277CC7960];
      v28[3] = v24;
      v28[4] = v29;
      *v28 = v25;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v30 = sub_226D6E07C();
      v71 = v30;
      v82 = __swift_project_value_buffer(v30, qword_28105F710);
      v31 = *(v30 - 8);
      v83 = *(v31 + 16);
      v77 = (v31 + 16);
      (v83)(v27, v82, v30);
      *(v27 + *(v26 + 24)) = 32;
      v32 = v74;
      sub_226D66E0C();
      v33 = v84;
      v105 = v84;
      v106 = MEMORY[0x277CC6538];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
      v35 = v79;
      (v79[2])(boxed_opaque_existential_1, v32, v33);
      v36 = sub_226D6C23C();
      swift_allocObject();
      v37 = sub_226D6C22C();
      (v35[1])(v32, v33);
      v105 = v36;
      v106 = MEMORY[0x277CC8210];
      *&v104 = v37;
      v38 = sub_226D6847C();
      swift_allocObject();
      v39 = sub_226D6846C();
      v40 = v72;
      v105 = v72;
      *&v104 = v21;
      v106 = &off_283A72E60;
      v102 = &type metadata for BankConnectPaymentPassDataSourceProvider;
      v103 = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
      v99 = v70;
      v100 = MEMORY[0x277CC8180];
      *&v98 = v78;
      v96 = v26;
      v97 = &off_283A6B110;
      v41 = __swift_allocate_boxed_opaque_existential_1(v95);
      sub_226CF146C(v27, v41);
      v93 = v38;
      v94 = MEMORY[0x277CC74D0];
      *&v92 = v39;
      type metadata accessor for BankConnectInsightsRequestBuilder(0);
      v42 = swift_allocObject();
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v40);
      v84 = &v69;
      v44 = MEMORY[0x28223BE20](v43);
      v46 = (&v69 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v47 + 16))(v46, v44);
      v48 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
      v79 = &v69;
      v49 = MEMORY[0x28223BE20](v48);
      v51 = &v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51, v49);
      v53 = *v46;
      v90 = v40;
      v91 = &off_283A72E60;
      *&v89 = v53;
      v87 = v26;
      v88 = &off_283A6B110;
      v54 = __swift_allocate_boxed_opaque_existential_1(&v86);
      sub_226CF14D0(v51, v54);

      swift_defaultActor_initialize();
      v55 = v71;
      (v83)(v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_logger, v82, v71);

      *(v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_store) = v73;
      sub_226AC484C(&v89, v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource);
      sub_226AC484C(&v101, v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider);
      sub_226AC484C(&v98, v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider);
      sub_226AC484C(&v86, v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner);
      sub_226AC484C(&v92, v42 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      __swift_destroy_boxed_opaque_existential_0Tm(&v104);
      sub_226CF1534(v76);
      v56 = sub_226D679FC();
      swift_allocObject();
      v57 = sub_226D679EC();
      v58 = sub_226D6C7CC();
      v105 = v56;
      v106 = MEMORY[0x277CC6EB0];
      *&v104 = v57;
      v59 = type metadata accessor for BankConnectInsightsDataLoader(0);
      v60 = swift_allocObject();
      swift_defaultActor_initialize();
      (v83)(v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_logger, v82, v55);
      *(v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs) = MEMORY[0x277D84FA0];
      *(v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask) = 0;
      sub_226AC484C(&v107, v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment);
      *(v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_requestBuilder) = v42;
      sub_226AC484C(&v104, v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder);
      v61 = v59;
      *(v60 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_batchSize) = v58;
      v62 = &off_283A6A870;
      v15 = v81;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      v84 = sub_226D6BAAC();
      sub_226D679FC();
      swift_allocObject();
      v63 = sub_226D679EC();
      type metadata accessor for ClassifiableTransactionSource();
      v64 = swift_allocObject();
      v65 = MEMORY[0x277D84F90];
      *(v64 + 16) = v16;
      *(v64 + 24) = v65;
      *(v64 + 32) = 0;
      *(v64 + 40) = 1;
      *(v64 + 48) = &unk_283A6A2B8;
      v108 = sub_226D6B5EC();
      v109 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v107);

      sub_226D6B58C();
      v66 = v77;
      sub_226D67E8C();
      sub_226D67F0C();
      (*(v83 + 8))(v66, v78);
      sub_226D6704C();
      sub_226D6BE5C();
      swift_allocObject();
      v67 = sub_226D6BE4C();
      v60 = sub_226CF12BC(v84, v63, v64, v67);
      v61 = type metadata accessor for TransactionClassificationDataLoader();
      v62 = &off_283A6ED00;
    }

    v108 = v61;
    v109 = v62;

    *&v107 = v60;
    sub_226AE532C(&v107, v15);
  }

  return sub_226AC484C(&v107, v85);
}

uint64_t sub_226CF11E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A90B0, &qword_226D7BF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF1254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A90B0, &qword_226D7BF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_226CF12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = sub_226D679FC();
  v27 = MEMORY[0x277CC6EB0];
  *&v25 = a2;
  v9 = type metadata accessor for ClassifiableTransactionSource();
  v24[3] = v9;
  v24[4] = &off_283A72E60;
  v24[0] = a3;
  v22 = v8;
  v23 = MEMORY[0x277CC8180];
  *&v21 = a4;
  type metadata accessor for TransactionClassificationDataLoader();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v24, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v14;
  v19 = v9;
  v20 = &off_283A72E60;
  *&v18 = v16;
  swift_defaultActor_initialize();
  v10[30] = MEMORY[0x277D84FA0];
  v10[31] = 0;
  v10[14] = a1;
  sub_226AC484C(&v25, (v10 + 15));
  sub_226AC484C(&v18, (v10 + 20));
  sub_226AC484C(&v21, (v10 + 25));
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v10;
}

uint64_t sub_226CF146C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTransactionsBAASigner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF14D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTransactionsBAASigner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF1534(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectTransactionsBAASigner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectServiceImplementation.classifyTransactions(with:forceClassification:)(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  return MEMORY[0x2822009F8](sub_226CF15B4, 0, 0);
}

uint64_t sub_226CF15B4()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  v2 = __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 88) = sub_226B41FC0();
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = *(*v2 + 16);
  *(swift_task_alloc() + 16) = v0 + 56;
  os_unfair_lock_lock(v4 + 14);
  sub_226CF1B10(&v4[4], v0 + 16);
  os_unfair_lock_unlock(v4 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);

  v8 = sub_226AE45DC(v7);
  *(v0 + 112) = v8;

  v12 = (*(v6 + 8) + **(v6 + 8));
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_226CF17F0;
  v10 = *(v0 + 136);

  return v12(v8, v10, v5, v6);
}

uint64_t sub_226CF17F0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_226CF190C;
  }

  else
  {

    v2 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CF190C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to load transactions classification: %@", v7, 0xCu);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = v0[16];

  v12 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v13 = v11;
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC7AB0], v12);
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_226CF1B34(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_226CF1B90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_226CF1D64(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
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

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_226CF1FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v8;
  v10 = type metadata accessor for StoreMappingChangeType(0, v9, v8, v8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v29 - v16;
  v32 = v11;
  v33 = v18;
  v19 = *(v18 + 48);
  v20 = *(v11 + 16);
  v20(&v29 - v16, a1, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v21 = *(v6 + 48);
  v22 = v21(v17, 2, a3);
  if (!v22)
  {
    v29 = v6;
    (v20)(v34, v17, v10);
    if (!v21(&v17[v19], 2, a3))
    {
      v25 = v29;
      v26 = v30;
      (*(v29 + 32))(v30, &v17[v19], a3);
      v27 = v34;
      v23 = sub_226D6E35C();
      v28 = *(v25 + 8);
      v28(v26, a3);
      v28(v27, a3);
      v14 = v32;
      goto LABEL_10;
    }

    (*(v29 + 8))(v34, a3);
    goto LABEL_9;
  }

  if (v22 == 1)
  {
    if (v21(&v17[v19], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v21(&v17[v19], 2, a3) != 2)
  {
LABEL_9:
    v23 = 0;
    v10 = v33;
    goto LABEL_10;
  }

  v23 = 1;
  v14 = v32;
LABEL_10:
  (*(v14 + 8))(v17, v10);
  return v23 & 1;
}

unint64_t sub_226CF2378()
{
  result = qword_27D7A9138;
  if (!qword_27D7A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9138);
  }

  return result;
}

void sub_226CF23E8(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        sub_226CF28A4(a2, a1);
        return;
      }

      v4 = MEMORY[0x277CC78D0];
      v5 = MEMORY[0x277CC78C8];
    }

    else
    {
      v4 = MEMORY[0x277CC7CF8];
      v5 = MEMORY[0x277CC7CF0];
    }

    sub_226CF279C(a2, a1, v4, v5);
    return;
  }

  if (a4 > 4u)
  {
    sub_226CF2F48(a2, a3, a1);
  }

  else
  {
    sub_226CF29B8(a2, a1);
  }
}

uint64_t sub_226CF2680(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 != 1)
        {
          return 0;
        }
      }

      else if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }

LABEL_16:
    sub_226B509B0();
    return sub_226D6EC3C() & 1;
  }

  if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 != 5)
      {
        return 0;
      }
    }

    else if (a6 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 == 3)
    {
      if (a6 != 3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (a6 != 4)
    {
      return 0;
    }
  }

  sub_226B509B0();
  if (sub_226D6EC3C())
  {
    return sub_226D6EC3C() & 1;
  }

  return 0;
}

void sub_226CF279C(uint64_t a1, void *a2, void (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  a3(0);
  v8 = a4(a1, a2);
  if (!v4)
  {
    v9 = v8;
    [a2 deleteObject_];
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

void sub_226CF28A4(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6980C();
  v4 = sub_226D697DC();
  if (!v2)
  {
    v5 = v4;
    sub_226D6AA2C();
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

void sub_226CF29B8(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6774C();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_226D6D52C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AA2C();
  v14 = sub_226D6A9FC();
  if (!v2)
  {
    v29 = v6;
    v30 = v9;
    v31 = v4;
    v15 = v14;
    sub_226D6980C();
    v32 = v15;
    v16 = [v15 credentialIdentifier];
    sub_226D6D4FC();

    v17 = sub_226D697BC();
    (*(v11 + 8))(v13, v10);
    if (v17)
    {
      v18 = v17;
      v19 = v32;
      sub_226D697FC();
    }

    else
    {
      v19 = v32;
      v20 = v32;
      v21 = v30;
      sub_226D6775C();
      v22 = v33;
      v23 = v31;
      (*(v33 + 16))(v29, v21, v31);
      v24 = a2;

      (*(v22 + 8))(v21, v23);
    }

    v34[0] = 0;
    v25 = [a2 save_];
    v26 = v34[0];
    if ((v25 & 1) == 0)
    {
      v27 = v26;
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226CF2D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6AA2C();
  v5 = sub_226D6A9FC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6980C();
    v7 = sub_226D697DC();
    sub_226D6AA0C();
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

void sub_226CF2F48(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6980C();
  v5 = sub_226D697DC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6AA2C();
    v7 = sub_226D6A9FC();
    sub_226D697FC();
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

void sub_226CF3184(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6AA2C();
  v5 = sub_226D6A9FC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6A9FC();
    sub_226D6AA1C();
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

uint64_t sub_226CF33B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226CF33FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

void *sub_226CF3458@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v23 = a5;
  v24 = a3;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68F4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v5)
  {
    v21 = v7;
    v22 = 0;
    v15 = v25;
    v16 = v23;
    if (result)
    {
      v20 = result;
      sub_226D6749C();
      sub_226D68F2C();
      (*(v11 + 8))(v13, v10);
      sub_226CF368C(v15, v16);

      return (*(v21 + 8))(v9, v6);
    }

    else
    {
      v17 = *MEMORY[0x277CC6700];
      v18 = sub_226D66FAC();
      return (*(*(v18 - 8) + 104))(v16, v17, v18);
    }
  }

  return result;
}

uint64_t sub_226CF368C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF265C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226B905C4(v7);
    v12 = MEMORY[0x277CC66F8];
LABEL_5:
    v13 = *v12;
    v14 = sub_226D66FAC();
    return (*(*(v14 - 8) + 104))(a3, v13, v14);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (sub_226D6D3FC())
  {
    (*(v9 + 8))(v11, v8);
    v12 = MEMORY[0x277CC66F0];
    goto LABEL_5;
  }

  v16 = sub_226D6D40C();
  (*(v9 + 8))(v11, v8);
  v17 = sub_226D66FAC();
  if (v16)
  {
    v18 = MEMORY[0x277CC66E8];
  }

  else
  {
    v18 = MEMORY[0x277CC66F8];
  }

  return (*(*(v17 - 8) + 104))(a3, *v18, v17);
}

void sub_226CF38E0(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a4;
  v46 = a3;
  v48 = a6;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D68F4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v15 = sub_226D6745C();
  if (!v6)
  {
    v36 = v14;
    v37 = v12;
    v38 = v11;
    v39 = v10;
    v40 = v7;
    v41 = v8;
    v16 = v48;
    v43 = 0;
    if (v15)
    {
      v42 = v15;
      v17 = [v15 ecommerceOrderContent];
      v18 = v16;
      if (v17)
      {
        v19 = v17;
        v20 = [v17 associatedApplicationIdentifiers];
        if (v20)
        {
          v21 = v20;
          v22 = sub_226D6E5EC();

          v47[0] = sub_226D67F0C();
          v47[1] = v23;
          MEMORY[0x28223BE20](v47[0]);
          *(&v35 - 2) = v47;
          v24 = v43;
          v25 = sub_226CCB428(sub_226BAE190, (&v35 - 4), v22);
          v43 = v24;

          if (v25)
          {
            v26 = v36;
            v27 = v42;
            sub_226D6749C();
            v28 = v39;
            sub_226D68F2C();
            (*(v37 + 8))(v26, v38);
            sub_226CF368C(v44, v16);

            (*(v41 + 8))(v28, v40);
            return;
          }

          v18 = v16;
        }

        else
        {
        }

        v33 = *MEMORY[0x277CC6700];
        v34 = sub_226D66FAC();
        (*(*(v34 - 8) + 104))(v18, v33, v34);
      }

      else
      {
        v31 = *MEMORY[0x277CC6700];
        v32 = sub_226D66FAC();
        (*(*(v32 - 8) + 104))(v16, v31, v32);
      }
    }

    else
    {
      v29 = *MEMORY[0x277CC6700];
      v30 = sub_226D66FAC();
      (*(*(v30 - 8) + 104))(v16, v29, v30);
    }
  }
}

void sub_226CF3CC0(uint64_t a1)
{
  sub_226D6B49C();
  if (v1 <= 0x3F)
  {
    sub_226CF3D68();
    if (v2 <= 0x3F)
    {
      sub_226CF3D98(319);
      if (v3 <= 0x3F)
      {
        sub_226D6B3BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226CF3D68()
{
  result = qword_28105F558;
  if (!qword_28105F558)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F558);
  }

  return result;
}

void sub_226CF3D98(uint64_t a1)
{
  if (!qword_28105F560)
  {
    sub_226D6D1AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28105F560);
    }
  }
}

void sub_226CF3E24(uint64_t a1)
{
  sub_226D6B49C();
  if (v1 <= 0x3F)
  {
    sub_226CF3D68();
    if (v2 <= 0x3F)
    {
      sub_226CF3D98(319);
      if (v3 <= 0x3F)
      {
        sub_226D6B3BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_226CF3EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_226CF3F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226CF3FBC()
{
  v1 = sub_226D6B49C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF648C(v0, v7, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
LABEL_6:
      (*(v2 + 32))(v4, v7, v1);
      v9 = sub_226D6B46C();
      (*(v2 + 8))(v4, v1);
      return v9;
    }

    return *v7;
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      v9 = *v7;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v11 = sub_226D6D1AC();
      (*(*(v11 - 8) + 8))(&v7[v10], v11);
    }

    else
    {
      sub_226CF64F4(v7, type metadata accessor for OrderWebServiceTaskIdentifier);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_226CF41F8(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_226D6B3BC();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226D6D1AC();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B49C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF648C(v2, v15, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
        v20 = v6;
        v21 = v28;
        (*(v6 + 32))(v8, &v15[*(v23 + 48)], v28);
        v22 = 8;
      }

      else
      {
        if (EnumCaseMultiPayload != 9)
        {
          v25 = v27;
          (*(v27 + 32))(v5, v15, v3);
          MEMORY[0x22AA8B3B0](10);
          sub_226CF4DC0(&qword_27D7A9150, MEMORY[0x277CC7ED0], MEMORY[0x277CC7ED8]);
          sub_226D6E30C();
          return (*(v25 + 8))(v5, v3);
        }

        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
        v20 = v6;
        v21 = v28;
        (*(v6 + 32))(v8, &v15[*(v19 + 48)], v28);
        v22 = 9;
      }

      MEMORY[0x22AA8B3B0](v22);
      sub_226D6E42C();

      sub_226CF4DC0(&qword_27D7A8208, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_226D6E30C();
      return (*(v20 + 8))(v8, v21);
    }

    if (EnumCaseMultiPayload == 5)
    {
      (*(v10 + 32))(v12, v15, v9);
      v17 = 5;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      (*(v10 + 32))(v12, v15, v9);
      v17 = 6;
    }

    else
    {
      (*(v10 + 32))(v12, v15, v9);
      v17 = 7;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v10 + 32))(v12, v15, v9);
      v17 = 1;
    }

    else
    {
      (*(v10 + 32))(v12, v15, v9);
      v17 = 0;
    }

LABEL_23:
    MEMORY[0x22AA8B3B0](v17);
    sub_226CF4DC0(&qword_27D7A7F78, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    sub_226D6E30C();
    return (*(v10 + 8))(v12, v9);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v18 = 2;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  MEMORY[0x22AA8B3B0](v18);
  sub_226D6E42C();
}

uint64_t sub_226CF4780(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_226D6B3BC();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D1AC();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B49C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CF648C(v2, v15, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        MEMORY[0x22AA8B3B0](1);
        sub_226D6E42C();
      }

      v21 = v10;
      (*(v10 + 32))(v12, v15, v9);
      v22 = 2;
    }

    else
    {
      v21 = v10;
      (*(v10 + 32))(v12, v15, v9);
      v22 = 0;
    }

    MEMORY[0x22AA8B3B0](v22);
    sub_226CF4DC0(&qword_27D7A7F78, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    sub_226D6E30C();
    return (*(v21 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v20 = 4;
    }

    else
    {
      v20 = 6;
    }

    return MEMORY[0x22AA8B3B0](v20);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0);
    v18 = v25;
    (*(v25 + 32))(v8, &v15[*(v17 + 48)], v6);
    MEMORY[0x22AA8B3B0](3);
    sub_226D6E42C();

    sub_226CF4DC0(&qword_27D7A8208, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_226D6E30C();
    return (*(v18 + 8))(v8, v6);
  }

  else
  {
    v23 = v26;
    (*(v26 + 32))(v5, v15, v3);
    MEMORY[0x22AA8B3B0](5);
    sub_226CF4DC0(&qword_27D7A9150, MEMORY[0x277CC7ED0], MEMORY[0x277CC7ED8]);
    sub_226D6E30C();
    return (*(v23 + 8))(v5, v3);
  }
}

uint64_t sub_226CF4C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226CF4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226CF4DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CF4E08(void *a1, char *a2)
{
  v153 = a2;
  v154 = a1;
  v2 = sub_226D6B3BC();
  v138 = *(v2 - 8);
  v139 = v2;
  MEMORY[0x28223BE20](v2);
  v135 = v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v148 = v4;
  v149 = v5;
  MEMORY[0x28223BE20](v4);
  v137 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v141 = v133 - v8;
  MEMORY[0x28223BE20](v9);
  v136 = v133 - v10;
  MEMORY[0x28223BE20](v11);
  v140 = v133 - v12;
  v13 = sub_226D6B49C();
  v14 = *(v13 - 8);
  v150 = v13;
  v151 = v14;
  MEMORY[0x28223BE20](v13);
  v134 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v133[1] = v133 - v17;
  MEMORY[0x28223BE20](v18);
  v133[0] = v133 - v19;
  MEMORY[0x28223BE20](v20);
  v152 = v133 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v133 - v23;
  v25 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v25);
  v147 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v146 = v133 - v28;
  MEMORY[0x28223BE20](v29);
  v145 = v133 - v30;
  MEMORY[0x28223BE20](v31);
  v144 = v133 - v32;
  MEMORY[0x28223BE20](v33);
  v143 = v133 - v34;
  MEMORY[0x28223BE20](v35);
  v142 = v133 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = (v133 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = (v133 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = (v133 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = v133 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = v133 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9158, &unk_226D7C3C0);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = v133 - v53;
  v56 = v133 + *(v55 + 56) - v53;
  sub_226CF648C(v154, v133 - v53, type metadata accessor for OrderWebServiceTaskIdentifier);
  v154 = v56;
  sub_226CF648C(v153, v56, type metadata accessor for OrderWebServiceTaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v59 = v142;
        sub_226CF648C(v54, v142, type metadata accessor for OrderWebServiceTaskIdentifier);
        v58 = v154;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v60 = v151;
          v61 = *(v151 + 32);
          v62 = &v155;
          goto LABEL_27;
        }
      }

      else
      {
        v58 = v154;
        if (EnumCaseMultiPayload == 6)
        {
          v59 = v143;
          sub_226CF648C(v54, v143, type metadata accessor for OrderWebServiceTaskIdentifier);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v60 = v151;
            v61 = *(v151 + 32);
            v62 = &v156;
LABEL_27:
            v83 = *(v62 - 32);
LABEL_40:
            v106 = v150;
            v61(v83, v58, v150);
            v104 = MEMORY[0x22AA87530](v59, v83);
            v107 = *(v60 + 8);
            v107(v83, v106);
            v107(v59, v106);
            goto LABEL_41;
          }
        }

        else
        {
          v59 = v144;
          sub_226CF648C(v54, v144, type metadata accessor for OrderWebServiceTaskIdentifier);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v60 = v151;
            v61 = *(v151 + 32);
            v83 = v134;
            goto LABEL_40;
          }
        }
      }

      v108 = v150;
      v109 = v151;
      goto LABEL_52;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v84 = v145;
      sub_226CF648C(v54, v145, type metadata accessor for OrderWebServiceTaskIdentifier);
      v86 = *v84;
      v85 = *(v84 + 1);
      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v88 = v154;
      v89 = swift_getEnumCaseMultiPayload();
      v90 = v149;
      if (v89 == 8)
      {
        v153 = v54;
        v92 = *v88;
        v91 = v88[1];
        v93 = *(v149 + 32);
        v94 = &v84[v87];
        v95 = v148;
        v93(v140, v94, v148);
        v96 = v88 + v87;
        v97 = v136;
        v93(v136, v96, v95);
        if (v86 == v92 && v85 == v91)
        {

          v81 = v153;
        }

        else
        {
          v120 = sub_226D6F21C();

          v81 = v153;
          if ((v120 & 1) == 0)
          {
            v129 = *(v90 + 8);
            v129(v97, v95);
            v130 = v140;
            v131 = v95;
            goto LABEL_66;
          }
        }

        v121 = v140;
        v104 = sub_226D6D13C();
        v122 = *(v90 + 8);
        v122(v97, v95);
        v123 = v121;
        v124 = v95;
LABEL_63:
        v122(v123, v124);
        sub_226CF64F4(v81, type metadata accessor for OrderWebServiceTaskIdentifier);
        return v104 & 1;
      }

      (*(v149 + 8))(&v84[v87], v148);
    }

    else
    {
      v67 = v149;
      if (EnumCaseMultiPayload != 9)
      {
        v59 = v147;
        sub_226CF648C(v54, v147, type metadata accessor for OrderWebServiceTaskIdentifier);
        v110 = v154;
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          v112 = v138;
          v111 = v139;
          v113 = v135;
          (*(v138 + 32))(v135, v110, v139);
          v104 = sub_226D6B39C();
          v114 = *(v112 + 8);
          v114(v113, v111);
          v114(v59, v111);
          goto LABEL_41;
        }

        v109 = v138;
        v108 = v139;
LABEL_52:
        (*(v109 + 8))(v59, v108);
        goto LABEL_53;
      }

      v68 = v146;
      sub_226CF648C(v54, v146, type metadata accessor for OrderWebServiceTaskIdentifier);
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
      v72 = v154;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v153 = v54;
        v74 = *v72;
        v73 = v72[1];
        v75 = v72;
        v76 = *(v67 + 32);
        v77 = &v68[v71];
        v78 = v148;
        v76(v141, v77, v148);
        v79 = v75 + v71;
        v80 = v137;
        v76(v137, v79, v78);
        if (v70 == v74 && v69 == v73)
        {

          v81 = v153;
LABEL_62:
          v127 = v141;
          v104 = sub_226D6D13C();
          v122 = *(v67 + 8);
          v128 = v148;
          v122(v80, v148);
          v123 = v127;
          v124 = v128;
          goto LABEL_63;
        }

        v126 = sub_226D6F21C();

        v81 = v153;
        if (v126)
        {
          goto LABEL_62;
        }

        v129 = *(v67 + 8);
        v132 = v148;
        v129(v80, v148);
        v130 = v141;
        v131 = v132;
LABEL_66:
        v129(v130, v131);
        sub_226CF64F4(v81, type metadata accessor for OrderWebServiceTaskIdentifier);
        goto LABEL_54;
      }

      (*(v67 + 8))(&v68[v71], v148);
    }

    goto LABEL_50;
  }

  v63 = v152;
  if (EnumCaseMultiPayload > 1)
  {
    v64 = v154;
    if (EnumCaseMultiPayload == 2)
    {
      sub_226CF648C(v54, v45, type metadata accessor for OrderWebServiceTaskIdentifier);
      v66 = *v45;
      v65 = v45[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_22:
        if (v66 == *v64 && v65 == v64[1])
        {
LABEL_35:

LABEL_46:
          sub_226CF64F4(v54, type metadata accessor for OrderWebServiceTaskIdentifier);
          v104 = 1;
          return v104 & 1;
        }

        v115 = sub_226D6F21C();

        if (v115)
        {
          goto LABEL_46;
        }

LABEL_60:
        sub_226CF64F4(v54, type metadata accessor for OrderWebServiceTaskIdentifier);
        goto LABEL_54;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_226CF648C(v54, v42, type metadata accessor for OrderWebServiceTaskIdentifier);
        v66 = *v42;
        v65 = v42[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_22;
      }

      sub_226CF648C(v54, v39, type metadata accessor for OrderWebServiceTaskIdentifier);
      v99 = *v39;
      v98 = v39[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v99 == *v64 && v98 == v64[1])
        {
          goto LABEL_35;
        }

        v125 = sub_226D6F21C();

        if (v125)
        {
          goto LABEL_46;
        }

        goto LABEL_60;
      }
    }

LABEL_50:

    goto LABEL_53;
  }

  v82 = v154;
  if (!EnumCaseMultiPayload)
  {
    sub_226CF648C(v54, v51, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      v118 = v150;
      v117 = v151;
      (*(v151 + 32))(v24, v82, v150);
      v104 = MEMORY[0x22AA87530](v51, v24);
      v119 = *(v117 + 8);
      v119(v24, v118);
      v119(v51, v118);
      goto LABEL_41;
    }

    (*(v151 + 8))(v51, v150);
    goto LABEL_53;
  }

  sub_226CF648C(v54, v48, type metadata accessor for OrderWebServiceTaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v151 + 8))(v48, v150);
LABEL_53:
    sub_226AC47B0(v54, &qword_27D7A9158, &unk_226D7C3C0);
LABEL_54:
    v104 = 0;
    return v104 & 1;
  }

  v100 = v151;
  v101 = v63;
  v102 = v63;
  v103 = v150;
  (*(v151 + 32))(v102, v82, v150);
  v104 = MEMORY[0x22AA87530](v48, v101);
  v105 = *(v100 + 8);
  v105(v101, v103);
  v105(v48, v103);
LABEL_41:
  sub_226CF64F4(v54, type metadata accessor for OrderWebServiceTaskIdentifier);
  return v104 & 1;
}

uint64_t sub_226CF5B9C(uint64_t a1, char *a2)
{
  v84 = a1;
  v85 = a2;
  v2 = sub_226D6B3BC();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_226D6D1AC();
  v81 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v72 - v6;
  v7 = sub_226D6B49C();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v72 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9148, &qword_226D7C3B8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v72 - v27;
  v30 = &v72 + *(v29 + 56) - v27;
  sub_226CF648C(v84, &v72 - v27, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  v31 = v30;
  sub_226CF648C(v85, v30, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v19;
    v45 = v9;
    v47 = v82;
    v46 = v83;
    if (EnumCaseMultiPayload)
    {
      v48 = v31;
      if (EnumCaseMultiPayload == 1)
      {
        v49 = v28;
        sub_226CF648C(v28, v22, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        v51 = *v22;
        v50 = v22[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = *v48;
          v53 = v48[1];
          if (v51 == v52 && v50 == v53)
          {
          }

          else
          {
            v55 = sub_226D6F21C();

            if ((v55 & 1) == 0)
            {
              sub_226CF64F4(v49, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
LABEL_33:
              v57 = 0;
              return v57 & 1;
            }
          }

          v66 = v49;
LABEL_40:
          sub_226CF64F4(v66, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
          v57 = 1;
          return v57 & 1;
        }

        v28 = v49;
        goto LABEL_32;
      }

      v56 = v44;
      sub_226CF648C(v28, v44, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v47 + 8))(v56, v46);
        goto LABEL_32;
      }

      (*(v47 + 32))(v45, v31, v46);
      v57 = MEMORY[0x22AA87530](v56, v45);
      v58 = v28;
      v59 = *(v47 + 8);
      v59(v45, v46);
      v60 = v56;
    }

    else
    {
      sub_226CF648C(v28, v25, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v47 + 8))(v25, v46);
        goto LABEL_32;
      }

      (*(v47 + 32))(v12, v31, v46);
      v57 = MEMORY[0x22AA87530](v25, v12);
      v58 = v28;
      v59 = *(v47 + 8);
      v59(v12, v46);
      v60 = v25;
    }

    v59(v60, v46);
    sub_226CF64F4(v58, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
    return v57 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_27:
      v66 = v28;
      goto LABEL_40;
    }

LABEL_32:
    sub_226AC47B0(v28, &qword_27D7A9148, &qword_226D7C3B8);
    goto LABEL_33;
  }

  v33 = v30;
  if (EnumCaseMultiPayload == 3)
  {
    v85 = v28;
    v34 = v78;
    sub_226CF648C(v28, v78, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
    v36 = *v34;
    v35 = *(v34 + 1);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v38 = *v33;
      v39 = v33[1];
      v40 = *(v81 + 32);
      v41 = v77;
      v40(v80, &v34[v37], v77);
      v42 = v33 + v37;
      v43 = v74;
      v40(v74, v42, v41);
      if (v36 == v38 && v35 == v39)
      {

LABEL_37:
        v68 = v80;
        v57 = sub_226D6D13C();
        v69 = *(v81 + 8);
        v69(v43, v41);
        v69(v68, v41);
        sub_226CF64F4(v85, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
        return v57 & 1;
      }

      v67 = sub_226D6F21C();

      if (v67)
      {
        goto LABEL_37;
      }

      v71 = *(v81 + 8);
      v71(v43, v41);
      v71(v80, v41);
      sub_226CF64F4(v85, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
      goto LABEL_33;
    }

    (*(v81 + 8))(&v34[v37], v77);

    v28 = v85;
    goto LABEL_32;
  }

  v61 = v79;
  sub_226CF648C(v28, v79, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v75 + 8))(v61, v76);
    goto LABEL_32;
  }

  v62 = v75;
  v63 = v73;
  v64 = v76;
  (*(v75 + 32))(v73, v31, v76);
  v57 = sub_226D6B39C();
  v65 = *(v62 + 8);
  v65(v63, v64);
  v65(v61, v64);
  sub_226CF64F4(v28, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  return v57 & 1;
}

uint64_t sub_226CF648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CF64F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for OrderWebServiceUnregisterTask(uint64_t a1)
{
  result = qword_27D7A9160;
  if (!qword_27D7A9160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CF65C8(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226CF6668()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000025, 0x8000000226D87A30);
  v2 = type metadata accessor for OrderWebServiceUnregisterTask(0);
  MEMORY[0x22AA8A510](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x22AA8A510](0xD000000000000013, 0x8000000226D85820);
  MEMORY[0x22AA8A510](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226CF8CDC(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226CF67F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6B00C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for OrderWebServiceUnregisterTask(0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF68E4, 0, 0);
}

uint64_t sub_226CF68E4()
{
  v30 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CF8C3C(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v27 = v5;
    v8 = v0[7];
    v23 = v0[5];
    v24 = v0[6];
    buf = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *buf = 136315138;

    sub_226D6AFFC();
    sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    (*(v24 + 8))(v8, v23);
    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
    v12 = sub_226AC4530(v9, v11, &v29);

    *(buf + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v27, "Attempting to cancel order registration (%s)", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
  }

  v13 = v0[4];
  v14 = sub_226D676AC();
  v0[10] = v14;
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  sub_226D6EB7C();
  v16 = v0[4];

  v17 = sub_226C0B798(v16);
  v0[11] = v17;
  v18 = swift_task_alloc();
  v0[12] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v28 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v19 = swift_task_alloc();
  v0[13] = v19;
  v20 = sub_226D6BEDC();
  *v19 = v0;
  v19[1] = sub_226CF6D04;
  v21 = v0[2];

  return v28(v21, &unk_226D7C4E0, v18, v20);
}

uint64_t sub_226CF6D04()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226CF6EA8;
  }

  else
  {

    v2 = sub_226CF6E20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CF6E20()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226CF6EA8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_226CF6F38(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OrderWebServiceUnregisterTask(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v12 = sub_226D6A45C();
  if (!v2)
  {
    v33 = 0;
    if (v12)
    {
      v13 = v12;
      [v12 setIsMaybeRegistered_];
      v34[0] = 0;
      if ([a2 save_])
      {
        v14 = v34[0];
      }

      else
      {
        v27 = v34[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, qword_28105F5C0);
      sub_226CF8C3C(a1, v11);
      v16 = sub_226D6E05C();
      v17 = sub_226D6E9AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v31 = v18;
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v18 = 136315138;
        v30 = v16;
        v29 = v17;

        sub_226D6AFFC();
        sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
        v19 = sub_226D6F1CC();
        v21 = v20;
        (*(v6 + 8))(v8, v5);
        sub_226CF8DEC(v11, type metadata accessor for OrderWebServiceUnregisterTask);
        v22 = sub_226AC4530(v19, v21, v34);

        v24 = v30;
        v23 = v31;
        *(v31 + 1) = v22;
        v25 = v23;
        _os_log_impl(&dword_226AB4000, v24, v29, "Order registration %s doesn't exist", v23, 0xCu);
        v26 = v32;
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      else
      {

        sub_226CF8DEC(v11, type metadata accessor for OrderWebServiceUnregisterTask);
      }
    }
  }
}

uint64_t sub_226CF7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6BC1C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7418, 0, 0);
}

uint64_t sub_226CF7418()
{
  type metadata accessor for OrderWebServiceUnregisterTask(0);

  sub_226D6BC0C();
  v5 = (*MEMORY[0x277CC78F0] + MEMORY[0x277CC78F0]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_226B4BF14;
  v2 = v0[7];
  v3 = v0[2];

  return v5(v3, v2);
}

uint64_t sub_226CF7564(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = sub_226D6B00C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for OrderWebServiceUnregisterTask(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7654, 0, 0);
}

uint64_t sub_226CF7654()
{
  v24 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CF8C3C(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v22 = v5;
    v8 = v0[6];
    v18 = v0[4];
    v19 = v0[5];
    buf = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *buf = 136315138;

    sub_226D6AFFC();
    sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    (*(v19 + 8))(v8, v18);
    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
    v12 = sub_226AC4530(v9, v11, &v23);

    *(buf + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v22, "Successfully cancelled order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CF8DEC(v7, type metadata accessor for OrderWebServiceUnregisterTask);
  }

  v13 = v0[3];
  v14 = sub_226D676AC();
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  sub_226D6EB7C();

  v16 = v0[1];

  return v16();
}

void sub_226CF7990(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OrderWebServiceUnregisterTask(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v12 = sub_226D6A45C();
  if (!v2)
  {
    v13 = v12;
    v33 = 0;
    if (v12)
    {
      [a2 deleteObject_];
      v34[0] = 0;
      if ([a2 save_])
      {
        v14 = v34[0];
      }

      else
      {
        v27 = v34[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, qword_28105F5C0);
      sub_226CF8C3C(a1, v11);
      v16 = sub_226D6E05C();
      v17 = sub_226D6E9AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v31 = v18;
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v18 = 136315138;
        v30 = v16;
        v29 = v17;

        sub_226D6AFFC();
        sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
        v19 = sub_226D6F1CC();
        v21 = v20;
        (*(v6 + 8))(v8, v5);
        sub_226CF8DEC(v11, type metadata accessor for OrderWebServiceUnregisterTask);
        v22 = sub_226AC4530(v19, v21, v34);

        v24 = v30;
        v23 = v31;
        *(v31 + 1) = v22;
        v25 = v23;
        _os_log_impl(&dword_226AB4000, v24, v29, "Order registration %s doesn't exist", v23, 0xCu);
        v26 = v32;
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      else
      {

        sub_226CF8DEC(v11, type metadata accessor for OrderWebServiceUnregisterTask);
      }
    }
  }
}

uint64_t sub_226CF7DB0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6B00C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for OrderWebServiceUnregisterTask(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CF7EA4, 0, 0);
}

uint64_t sub_226CF7EA4()
{
  v39 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C778C0();
  v5 = sub_226C6E1FC(v1);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5C0);
  sub_226CF8C3C(v7, v6);
  v10 = v8;
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 112);
  if (!v13)
  {

    sub_226CF8DEC(v14, type metadata accessor for OrderWebServiceUnregisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v36 = v12;
  log = v11;
  v15 = *(v0 + 96);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v0 + 56);
  v16 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v38 = v35;
  *v16 = 136315394;

  sub_226D6AFFC();
  sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
  v17 = sub_226D6F1CC();
  v19 = v18;
  (*(v32 + 8))(v15, v31);
  sub_226CF8DEC(v14, type metadata accessor for OrderWebServiceUnregisterTask);
  v20 = sub_226AC4530(v17, v19, &v38);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2112;
  v21 = v34;
  v22 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 14) = v22;
  *v33 = v22;
  _os_log_impl(&dword_226AB4000, log, v36, "Failed to cancel order registration %s with error: %@", v16, 0x16u);
  sub_226B17298(v33);
  MEMORY[0x22AA8BEE0](v33, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  MEMORY[0x22AA8BEE0](v35, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v23 = *(v0 + 72);
    v24 = *(v0 + 56);
    v25 = sub_226D676AC();
    v26 = swift_task_alloc();
    v26[2] = v23;
    v26[3] = v25;
    v26[4] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v27 = *(v0 + 64);
    v28 = *(v0 + 56);

    sub_226C6EBC4(v28, *(v0 + 40), *(v0 + 48), v27 + 136);
  }

LABEL_8:

  v29 = *(v0 + 8);

  return v29();
}

void sub_226CF832C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v45 = a4;
  v48[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6B00C();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_226D6D4AC();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OrderWebServiceUnregisterTask(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D6A47C();
  v15 = v47;
  v16 = sub_226D6A45C();
  if (!v15)
  {
    v17 = v46;
    v42 = v9;
    v47 = 0;
    if (v16)
    {
      v18 = v16;
      v19 = [v16 orderWebService];
      sub_226C6EAF8(v17, v19);

      v8 = &selRef_setSortDescriptors_;
      v20 = [v18 requestAttemptCount];
      if (!__OFADD__(v20, 1))
      {
        [v18 setRequestAttemptCount_];
        sub_226D6D46C();
        v21 = sub_226D6D3EC();
        (v44[1])(v11, v42);
        [v18 setLastRequestAttemptDate_];

        v48[0] = 0;
        if (![a2 save_])
        {
          v38 = v48[0];
          sub_226D6D04C();

          swift_willThrow();
          return;
        }

        v22 = v48[0];
        v23 = [v18 requestAttemptCount];

        v24 = v45;
        goto LABEL_11;
      }

      __break(1u);
    }

    else
    {
      v18 = v14;
      v14 = 0;
      if (qword_28105F5B8 == -1)
      {
        goto LABEL_7;
      }
    }

    swift_once();
LABEL_7:
    v25 = sub_226D6E07C();
    __swift_project_value_buffer(v25, qword_28105F5C0);
    sub_226CF8C3C(a1, v18);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = v14;
      v29 = v28;
      v42 = v28;
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v29 = 136315138;
      v41 = v26;

      v40 = v27;
      sub_226D6AFFC();
      sub_226CF8CDC(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
      v30 = sub_226D6F1CC();
      v32 = v31;
      (*(v43 + 8))(v8, v6);
      sub_226CF8DEC(v18, type metadata accessor for OrderWebServiceUnregisterTask);
      v33 = sub_226AC4530(v30, v32, v48);

      v35 = v41;
      v34 = v42;
      *(v42 + 4) = v33;
      v36 = v34;
      _os_log_impl(&dword_226AB4000, v35, v40, "Order registration %s doesn't exist", v34, 0xCu);
      v37 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v36, -1, -1);

      v24 = v45;
      v18 = v46;
      v23 = 0;
    }

    else
    {

      sub_226CF8DEC(v18, type metadata accessor for OrderWebServiceUnregisterTask);
      v23 = 0;
      v24 = v45;
      v18 = v14;
    }

LABEL_11:
    *v24 = v23;
    *(v24 + 8) = v18 == 0;
  }
}

uint64_t sub_226CF88A4()
{

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226CF8934(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v4 = sub_226B1FBC0(v3);
  swift_setDeallocating();
  sub_226CF8DEC(v3 + v2, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_226CF8AD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_226CF8CDC(&qword_27D7A9170, type metadata accessor for OrderWebServiceUnregisterTask, &unk_226D7C450);
  result = sub_226CF8CDC(a4, type metadata accessor for OrderWebServiceUnregisterTask, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CF8BE4(uint64_t a1)
{
  result = sub_226CF8CDC(&qword_27D7A9188, type metadata accessor for OrderWebServiceUnregisterTask, &unk_226D7C3F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CF8C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceUnregisterTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CF8CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CF8D40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226CF7354(a1, v5, v4);
}

uint64_t sub_226CF8DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226CF8E60(void *a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_226D6D52C();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D683BC();
  v8 = sub_226D6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v9 + 32) = sub_226D6E91C();
  *(v9 + 40) = sub_226D6E91C();
  v10 = sub_226D6E5CC();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  v12 = v8;
  v13 = v39;
  v14 = sub_226D6EBBC();
  if (!v13)
  {
    v15 = v38;
    v34 = v7;
    if (v14 >> 62)
    {
      v27 = v14;
      v16 = sub_226D6EDFC();
      v14 = v27;
      v17 = v34;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v34;
      if (v16)
      {
LABEL_4:
        v18 = v14;
        v31 = v8;
        v39 = sub_226D69F0C();
        if (v16 < 1)
        {
          __break(1u);
        }

        v20 = 0;
        v21 = v18;
        v35 = (v15 + 8);
        v36 = v18 & 0xC000000000000001;
        *&v19 = 138412546;
        v32 = v19;
        v37 = v16;
        v38 = v18;
        v33 = v5;
        do
        {
          if (v36)
          {
            v22 = MEMORY[0x22AA8AFD0](v20, v21);
          }

          else
          {
            v22 = *(v21 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 accountID];
          sub_226D6D4FC();

          v25 = sub_226D69D7C();
          (*v35)(v17, v5);
          if (v25)
          {
            sub_226D69D5C();
            v26 = sub_226D6B9BC();
            (*(*(v26 - 8) + 56))(v4, 0, 1, v26);
            sub_226D6838C();
          }

          else
          {
          }

          ++v20;
          v21 = v38;
        }

        while (v37 != v20);

        v12 = v31;
        goto LABEL_16;
      }
    }

LABEL_16:
    v40[0] = 0;
    if ([a1 save_])
    {
      v28 = v40[0];
    }

    else
    {
      v29 = v40[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226CF9460(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

void sub_226CF94FC(void *a1)
{
  v50[6] = *MEMORY[0x277D85DE8];
  v47 = sub_226D6D52C();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v50[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v50];

  v7 = v50[0];
  if (v6)
  {
    sub_226D6794C();
    v8 = v7;
    v9 = sub_226D678BC();
    v10 = sub_226D6EBBC();
    v35[1] = v1;
    if (v1)
    {
LABEL_3:

      return;
    }

    v12 = v10;
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_7:
      v14 = 0;
      v41 = a1;
      v42 = v12 & 0xC000000000000001;
      v36 = v12 + 32;
      v37 = v12 & 0xFFFFFFFFFFFFFF8;
      v45 = (v3 + 8);
      v39 = v12;
      v40 = v9;
      v38 = v13;
      do
      {
        if (v42)
        {
          v15 = MEMORY[0x22AA8AFD0](v14, v12);
        }

        else
        {
          if (v14 >= *(v37 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v36 + 8 * v14);
        }

        v48 = v15;
        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v44 = v17;
        v12 = v48;
        v18 = sub_226D6790C();
        v19 = v18;
        if ((v18 & 0xC000000000000001) != 0)
        {
          sub_226D6EDBC();
          v12 = sub_226D69F0C();
          sub_226CF9A3C();
          sub_226D6E8DC();
          v19 = v50[1];
          v3 = v50[2];
          v20 = v50[3];
          v21 = v50[4];
          v22 = v50[5];
        }

        else
        {
          v21 = 0;
          v23 = -1 << *(v18 + 32);
          v3 = (v18 + 56);
          v20 = ~v23;
          v24 = -v23;
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v22 = (v25 & *(v18 + 56));
        }

        v43 = v20;
        v9 = ((v20 + 64) >> 6);
        if (v19 < 0)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v26 = v21;
          v27 = v22;
          v28 = v21;
          if (!v22)
          {
            while (1)
            {
              v28 = (v26 + 1);
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v28 >= v9)
              {
                goto LABEL_8;
              }

              v27 = *&v3[8 * v28];
              ++v26;
              if (v27)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v13 = sub_226D6EDFC();
            if (!v13)
            {
              goto LABEL_35;
            }

            goto LABEL_7;
          }

LABEL_25:
          a1 = ((v27 - 1) & v27);
          v29 = *(*(v19 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
          if (!v29)
          {
            break;
          }

          while (1)
          {
            v31 = [v48 id];
            v32 = v46;
            sub_226D6D4FC();

            v12 = sub_226D6D4DC();
            (*v45)(v32, v47);
            [v29 setConsentID_];

            v21 = v28;
            v22 = a1;
            if ((v19 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_27:
            v30 = sub_226D6EE2C();
            if (v30)
            {
              v49 = v30;
              sub_226D69F0C();
              swift_dynamicCast();
              v29 = v50[0];
              v28 = v21;
              a1 = v22;
              if (v50[0])
              {
                continue;
              }
            }

            goto LABEL_8;
          }
        }

LABEL_8:
        sub_226AD3C20(v19);

        v12 = v39;
        v14 = v44;
        v9 = v40;
        a1 = v41;
      }

      while (v44 != v38);
    }

LABEL_35:

    v50[0] = 0;
    if ([a1 save_])
    {
      v33 = v50[0];
      goto LABEL_3;
    }

    v34 = v50[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  else
  {
    v11 = v50[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226CF99B0(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

unint64_t sub_226CF9A3C()
{
  result = qword_27D7A7278;
  if (!qword_27D7A7278)
  {
    sub_226D69F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7278);
  }

  return result;
}

Swift::Void __swiftcall WalletMessageUpdater.updateMessages()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  [v0 updateFinanceKitApplicationMessages];
}

void sub_226CF9B1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  [v0 updateFinanceKitApplicationMessages];
}

uint64_t sub_226CF9BC4(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  v3 = &qword_27D7A6F78;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_226D6EDFC();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_226D6EDFC();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_226D6EDFC();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_226D6EF3C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_226AC4194(&qword_27D7A91B0, v3, &unk_226D758E0, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_226D758E0);
        v18 = v3;
        v19 = sub_226C3A888(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_226D6EDFC();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_226CF9EBC(uint64_t *a1, void *a2)
{
  v38 = a2;
  v3 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91B8, &qword_226D7C6C0);
  MEMORY[0x28223BE20](v37);
  v6 = (&v34 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91C0, &qword_226D7C6C8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v34 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  v34 = *(v15 - 8);
  v16 = v34;
  v35 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9190, &qword_226D7C658);
  *v14 = 1;
  (*(v12 + 104))(v14, *MEMORY[0x277D85770], v11);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91C8, &unk_226D7C6D0);
  a1[4] = sub_226AC4194(&qword_28105F4C0, &qword_27D7A91C8, &unk_226D7C6D0, MEMORY[0x277D857C0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_226D6E7AC();
  (*(v12 + 8))(v14, v11);
  v19 = v37;
  v41 = v38;
  v20 = v38;
  sub_226D6EB8C();
  v21 = *v6;
  v22 = v6 + *(v19 + 48);
  v23 = v40;
  sub_226B60108(v22, v40);
  v24 = *(v16 + 16);
  v25 = v39;
  v26 = v35;
  v24(v39, v18, v35);
  v27 = v36;
  sub_226B60178(v23, v36);
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken) = 0;
  v29 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  v30 = sub_226D6D1AC();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *(v28 + 16) = v20;
  sub_226CFBC6C(v25, v28 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_historyContinuation);
  *(v28 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken) = v21;
  v31 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  swift_beginAccess();
  v32 = v20;
  sub_226CFBCD0(v27, v28 + v31);
  swift_endAccess();
  sub_226AC47B0(v40, &unk_27D7A62F8, &unk_226D73B70);
  (*(v34 + 8))(v18, v26);
  return v28;
}

uint64_t sub_226CFA35C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91B8, &qword_226D7C6C0) + 48);
  *a1 = sub_226D6EB6C();
  v6 = sub_226D6EB3C();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 URL];

    if (v8)
    {
      sub_226D6D14C();

      v9 = sub_226D6D1AC();
      (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    }

    else
    {
      v12 = sub_226D6D1AC();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    return sub_226B60108(v4, a1 + v5);
  }

  else
  {
    v10 = sub_226D6D1AC();
    return (*(*(v10 - 8) + 56))(a1 + v5, 1, 1, v10);
  }
}

uint64_t sub_226CFA504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91A0, &qword_226D7C6A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-v8];
  v10 = *(v2 + 16);
  v13 = a2;
  v14 = v3;
  v15 = a1;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9190, &qword_226D7C658);
  sub_226D6EB8C();
  if (!*(v17 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9198, &qword_226D7C678);
  sub_226D6E7CC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_226CFA7B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, size_t *a5@<X8>)
{
  v132 = a4;
  v134 = a3;
  v136 = a2;
  v138 = *MEMORY[0x277D85DE8];
  v8 = sub_226D66F6C();
  v9 = *(v8 - 8);
  v130 = v8;
  v131 = v9;
  MEMORY[0x28223BE20](v8);
  v128 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v129 = &v117 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v117 - v17;
  v19 = sub_226D6D1AC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v135 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v117 - v23;
  sub_226B60178(a1, v18);
  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    result = sub_226AC47B0(v18, &unk_27D7A62F8, &unk_226D73B70);
LABEL_13:
    *a5 = MEMORY[0x277D84F90];
    return result;
  }

  v133 = a5;
  v127 = v5;
  v126 = *(v20 + 32);
  (v126)(v24, v18, v19);
  v27 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL;
  v28 = v136;
  swift_beginAccess();
  sub_226B60178(v28 + v27, v15);
  v29 = v19;
  if (v25(v15, 1, v19) == 1)
  {
    (*(v20 + 8))(v24, v19);
    result = sub_226AC47B0(v15, &unk_27D7A62F8, &unk_226D73B70);
LABEL_12:
    a5 = v133;
    goto LABEL_13;
  }

  v30 = v20;
  v31 = v135;
  (v126)(v135, v15, v19);
  v32 = v24;
  if ((sub_226D6D13C() & 1) == 0)
  {
    v42 = *(v30 + 8);
    v42(v31, v29);
    result = (v42)(v24, v29);
    goto LABEL_12;
  }

  v33 = v127;
  v34 = v134;
  if (!v134)
  {
    goto LABEL_10;
  }

  v35 = OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken;
  v36 = v136;
  v37 = *(v136 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_lastToken);
  if (!v37)
  {
    v43 = v134;
    v44 = v34;
    v45 = v30;
    v46 = v135;
    goto LABEL_19;
  }

  v126 = v29;
  sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
  v38 = v34;
  v39 = v37;
  v40 = sub_226D6EC3C();

  if (v40)
  {

    v29 = v126;
    v31 = v135;
LABEL_10:
    v41 = *(v30 + 8);
    v41(v31, v29);
    result = (v41)(v32, v29);
LABEL_20:
    *v133 = MEMORY[0x277D84F90];
    return result;
  }

  v46 = v135;
  v36 = v136;
  v47 = *(v136 + v35);
  v44 = v34;
  v45 = v30;
  v29 = v126;
  if (!v47)
  {
LABEL_19:
    *(v36 + v35) = v44;

    v57 = *(v45 + 8);
    v57(v46, v29);
    result = (v57)(v32, v29);
    goto LABEL_20;
  }

  v125 = v32;
  v134 = v47;
  v48 = v47;
  v122 = v38;

  v49 = [objc_opt_self() currentQueryGenerationToken];
  v137 = 0;
  v50 = v132;
  v51 = [v132 setQueryGenerationFromToken:v49 error:&v137];

  v52 = v137;
  if ((v51 & 1) == 0)
  {
    v58 = v137;
    sub_226D6D04C();

    swift_willThrow();
LABEL_22:

    v59 = *(v30 + 8);
    v60 = v126;
    v59(v46, v126);
    v61 = v125;
    return (v59)(v61, v60);
  }

  v124 = v48;
  v53 = v48;
  v54 = v52;
  v55 = sub_226D6EB3C();
  v56 = sub_226D6EB5C();
  if (v33)
  {

    sub_226B6D63C(v50);
    v48 = v124;
    goto LABEL_22;
  }

  v62 = v56;
  v120 = v53;

  if (v62 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v65 = v125;
    v64 = v126;
    v66 = v133;
    if (!i)
    {

      *v66 = MEMORY[0x277D84F90];
      sub_226B6D63C(v132);

      v92 = *(v45 + 8);
      v92(v135, v64);
      v93 = v65;
      return (v92)(v93, v64);
    }

    v67 = i - 1;
    if (__OFSUB__(i, 1))
    {
      __break(1u);
LABEL_96:
      v68 = i;
      v69 = MEMORY[0x22AA8AFD0](v67, v62);
      v127 = (v62 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_32;
    }

    v134 = (v62 & 0xC000000000000001);
    if ((v62 & 0xC000000000000001) != 0)
    {
      goto LABEL_96;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      v127 = sub_226D6EDFC();
      if (!v127)
      {
        goto LABEL_100;
      }

      goto LABEL_49;
    }

    v127 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v67 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

    v68 = i;
    v69 = *(v62 + 8 * v67 + 32);
LABEL_32:
    v119 = v69;
    v70 = [v69 token];
    v71 = *(v136 + v35);
    *(v136 + v35) = v70;

    v72 = 0;
    v136 = MEMORY[0x277D84F90];
    do
    {
      v35 = v72;
      while (1)
      {
        if (v134)
        {
          v73 = MEMORY[0x22AA8AFD0](v35, v62);
        }

        else
        {
          if (v35 >= v127[2])
          {
            goto LABEL_92;
          }

          v73 = *(v62 + 8 * v35 + 32);
        }

        v72 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v74 = v73;
        v75 = [v74 changes];
        if (v75)
        {
          break;
        }

        ++v35;
        v55 = v126;
        v66 = v133;
        if (v72 == v68)
        {
          goto LABEL_47;
        }
      }

      v76 = v75;
      sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
      v35 = sub_226D6E5EC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_226BBBE88(0, v136[2] + 1, 1, v136);
      }

      v78 = v136[2];
      v77 = v136[3];
      v55 = v126;
      if (v78 >= v77 >> 1)
      {
        v136 = sub_226BBBE88((v77 > 1), v78 + 1, 1, v136);
      }

      v79 = v136;
      v136[2] = v78 + 1;
      v79[v78 + 4] = v35;
      v45 = v30;
      v66 = v133;
    }

    while (v72 != v68);
LABEL_47:

    v62 = sub_226CF9BC4(v136);

    if (v62 >> 62)
    {
      goto LABEL_99;
    }

    v127 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v127)
    {
LABEL_100:

      *v66 = MEMORY[0x277D84F90];
      sub_226B6D63C(v132);

      v116 = *(v45 + 8);
      v116(v135, v55);
      return (v116)(v125, v55);
    }

LABEL_49:
    v136 = sub_226CFB974();
    v80 = 0;
    v124 = v62 & 0xC000000000000001;
    v123 = v62 & 0xFFFFFFFFFFFFFF8;
    v121 = MEMORY[0x277D84F90];
    v134 = v62;
    do
    {
      v81 = v80;
      while (1)
      {
        if (v124)
        {
          v82 = MEMORY[0x22AA8AFD0](v81, v134);
          v80 = (v81 + 1);
          if (__OFADD__(v81, 1))
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v81 >= *(v123 + 16))
          {
            goto LABEL_91;
          }

          v82 = *&v134[8 * v81 + 32];
          v80 = (v81 + 1);
          if (__OFADD__(v81, 1))
          {
            goto LABEL_90;
          }
        }

        v55 = v82;
        v35 = [v55 changedObjectID];
        v62 = [v35 entity];
        v83 = [v62 name];
        if (v83)
        {
          break;
        }

        ++v81;
        v84 = v133;
        if (v80 == v127)
        {
          goto LABEL_67;
        }
      }

      v85 = v83;
      v86 = sub_226D6E39C();
      v118 = v87;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_226BBAB0C(0, *(v121 + 2) + 1, 1, v121);
      }

      v62 = *(v121 + 2);
      v88 = *(v121 + 3);
      if (v62 >= v88 >> 1)
      {
        v121 = sub_226BBAB0C((v88 > 1), v62 + 1, 1, v121);
      }

      v89 = v121;
      *(v121 + 2) = v62 + 1;
      v90 = &v89[16 * v62];
      v91 = v118;
      *(v90 + 4) = v86;
      *(v90 + 5) = v91;
      v84 = v133;
    }

    while (v80 != v127);
LABEL_67:

    v62 = v121;
    v134 = *(v121 + 2);
    if (!v134)
    {
      break;
    }

    v55 = 0;
    v123 = v131 + 16;
    v124 = v131 + 32;
    v35 = (v121 + 40);
    v127 = MEMORY[0x277D84F90];
    v94 = v125;
    while (v55 < *(v62 + 16))
    {
      if (v136[2])
      {
        v95 = *(v35 - 8);
        v96 = *v35;

        v97 = sub_226C2FDD4(v95, v96);
        if (v98)
        {
          v100 = v130;
          v99 = v131;
          v101 = *(v131 + 72);
          v102 = v128;
          (*(v131 + 16))(v128, v136[7] + v101 * v97, v130);

          v103 = *(v99 + 32);
          v103(v129, v102, v100);
          v104 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_226BBBE60(0, v104[2] + 1, 1, v104);
          }

          v106 = v104[2];
          v105 = v104[3];
          if (v106 >= v105 >> 1)
          {
            v104 = sub_226BBBE60((v105 > 1), v106 + 1, 1, v104);
          }

          v104[2] = v106 + 1;
          v107 = *(v131 + 80);
          v127 = v104;
          v103(v104 + ((v107 + 32) & ~v107) + v106 * v101, v129, v130);
          v45 = v30;
          v94 = v125;
          v84 = v133;
        }

        else
        {

          v94 = v125;
        }

        v62 = v121;
      }

      ++v55;
      v35 += 16;
      if (v134 == v55)
      {
        goto LABEL_81;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v127 = MEMORY[0x277D84F90];
  v94 = v125;
LABEL_81:

  if (!v127[2])
  {

    *v84 = MEMORY[0x277D84F90];
    sub_226B6D63C(v132);

    v59 = *(v45 + 8);
    v60 = v126;
    v59(v135, v126);
    v61 = v94;
    return (v59)(v61, v60);
  }

  v108 = sub_226AE4E38(v127);

  v109 = *(v108 + 16);
  v64 = v126;
  v110 = v120;
  if (!v109)
  {

    v111 = MEMORY[0x277D84F90];
LABEL_87:
    v114 = v125;
    v115 = v132;
    *v133 = v111;
    sub_226B6D63C(v115);

    v92 = *(v45 + 8);
    v92(v135, v64);
    v93 = v114;
    return (v92)(v93, v64);
  }

  v111 = sub_226C24CEC(*(v108 + 16), 0);
  sub_226C3B838(&v137, &v111[(*(v131 + 80) + 32) & ~*(v131 + 80)], v109, v108);
  v113 = v112;
  result = sub_226AD3C20(v137);
  if (v113 == v109)
  {

    goto LABEL_87;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CFB618()
{
  sub_226CFBBF4(v0 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_historyContinuation);

  sub_226AC47B0(v0 + OBJC_IVAR____TtC13FinanceDaemon33BackgroundDeliveryHistoryObserver_storeURL, &unk_27D7A62F8, &unk_226D73B70);

  return swift_deallocClassInstance();
}

void sub_226CFB6DC(uint64_t a1)
{
  sub_226CFB7C0(319);
  if (v1 <= 0x3F)
  {
    sub_226CFB824(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_226CFB7C0(uint64_t a1)
{
  if (!qword_28105F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A9190, &qword_226D7C658);
    v1 = sub_226D6E7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_28105F4E0);
    }
  }
}

void sub_226CFB824(uint64_t a1)
{
  if (!qword_281062B90)
  {
    sub_226D6D1AC();
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281062B90);
    }
  }
}

void sub_226CFB8C4(uint64_t a1)
{
  sub_226CFB7C0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_226CFB974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91A8, &qword_226D7C6A8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A68, &unk_226D7C6B0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v27 = 2 * v1;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_226D72130;
  v3 = (v28 + v2);
  v4 = *(v0 + 48);
  v5 = v0;
  sub_226D6787C();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  *v3 = v7;
  v3[1] = v9;
  v10 = *MEMORY[0x277CC66C8];
  v11 = sub_226D66F6C();
  v12 = *(*(v11 - 8) + 104);
  v12(v3 + v4, v10, v11);
  v13 = (v3 + v1);
  v14 = *(v0 + 48);
  sub_226D697AC();
  v15 = [swift_getObjCClassFromMetadata() entityName];
  v16 = sub_226D6E39C();
  v18 = v17;

  *v13 = v16;
  v13[1] = v18;
  v12(v13 + v14, *MEMORY[0x277CC66C0], v11);
  v19 = (v3 + v27);
  v20 = *(v5 + 48);
  sub_226D6845C();
  v21 = [swift_getObjCClassFromMetadata() entityName];
  v22 = sub_226D6E39C();
  v24 = v23;

  *v19 = v22;
  v19[1] = v24;
  v12(v3 + v27 + v20, *MEMORY[0x277CC66B8], v11);
  v25 = sub_226B243B0(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_226CFBBF4(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CFBC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundDeliveryHistoryObserver.Continuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFBCD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFBD40()
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91D0, &qword_226D7C748);
  v106 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v2 = v105 - v1;
  v3 = type metadata accessor for PostInstallTaskEnvironment(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_226CFD0D4();
  v8 = *(v0 + 16);
  v9 = OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults;
  v10 = sub_226D6B5EC();
  v128 = v10;
  v129 = MEMORY[0x277CC7F70];
  v11 = __swift_allocate_boxed_opaque_existential_1(&v125);
  v12 = *(*(v10 - 8) + 16);
  v13 = v0 + v9;
  v14 = v7;
  v12(v11, v13, v10);
  *v6 = v8;
  sub_226AE532C(&v125, &v120);
  v15 = *(v4 + 28);

  sub_226D6B5FC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v125);
  v16 = MEMORY[0x277D84F90];
  v120 = sub_226B23D9C(MEMORY[0x277D84F90]);
  v128 = v10;
  v129 = MEMORY[0x277CC7F68];
  v17 = __swift_allocate_boxed_opaque_existential_1(&v125);
  v113 = v6;
  v12(v17, v6 + v15, v10);
  sub_226D6704C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91D8, &unk_226D7C750);
  v111 = v2;
  sub_226D6701C();
  v114 = v7[2];
  if (!v114)
  {
    v21 = v16;
LABEL_107:

    (*(v106 + 8))(v111, v112);
    sub_226CFD498(v113);
    return v21;
  }

  v19 = 0;
  v20 = (v7 + 4);
  v21 = MEMORY[0x277D84F90];
  *&v18 = 136315138;
  v108 = v18;
  v110 = "OutdatedTokenWaitTimeout";
  v105[14] = "migrateCloudOrders";
  v105[13] = "migrateLocalOrders";
  v105[12] = "eInstitutionConfigurationUpdate";
  v105[11] = "ntifierInApplications";
  v105[10] = "migrateAppPermissions";
  v105[9] = "populateTransactionsWithDates";
  v105[8] = "populateAccountMatchEntities";
  v105[7] = "populateMerchantNameFromBrand";
  v105[6] = "thCurrentConsentID";
  v105[5] = "populateTransactionCategories";
  v105[4] = "eAndRemoveEmptyCurrencyCodes";
  v105[3] = "clearTransactionIcons";
  v105[2] = "dOrderMessageIDHash";
  v105[1] = "IngestionLocalConsent";
  *&v18 = 136315394;
  v107 = v18;
  v109 = v14;
  while (v19 < v14[2])
  {
    sub_226AE532C(v20, &v125);
    v22 = v128;
    v23 = v129;
    __swift_project_boxed_opaque_existential_1(&v125, v128);
    v24 = (*(v23 + 16))(v22, v23);
    v26 = v25;
    if (v25)
    {
      v115 = 0;
      v27 = 0;
      v28 = 1;
      goto LABEL_31;
    }

    v115 = v24;
    v116 = v21;
    v29 = v128;
    v30 = v129;
    __swift_project_boxed_opaque_existential_1(&v125, v128);
    v31 = (*(v30 + 8))(v29, v30);
    v32 = 0xD000000000000012;
    v33 = v110;
    v34 = 0xD000000000000012;
    switch(v31)
    {
      case 1:
        v34 = 0xD000000000000012;
        v35 = &v131;
        goto LABEL_23;
      case 2:
        v34 = 0xD00000000000002FLL;
        v35 = &v130;
        goto LABEL_23;
      case 3:
        v34 = 0xD000000000000035;
        v35 = &v129;
        goto LABEL_23;
      case 4:
        v34 = 0xD000000000000015;
        v35 = &v128;
        goto LABEL_23;
      case 5:
        v34 = 0xD00000000000001DLL;
        v35 = &v127;
        goto LABEL_23;
      case 6:
        v34 = 0xD00000000000001CLL;
        v35 = &v126;
        goto LABEL_23;
      case 7:
        v34 = 0xD00000000000001DLL;
        v35 = &v125;
        goto LABEL_23;
      case 8:
        v34 = 0xD000000000000022;
        v35 = &v124;
        goto LABEL_23;
      case 9:
        v34 = 0xD00000000000001DLL;
        v35 = &v123;
        goto LABEL_23;
      case 10:
        v34 = 0xD00000000000003CLL;
        v35 = &v122;
        goto LABEL_23;
      case 11:
        v34 = 0xD000000000000015;
        v35 = &v121;
        goto LABEL_23;
      case 12:
        v34 = 0xD000000000000023;
        v35 = &v120;
        goto LABEL_23;
      case 13:
        v34 = 0xD000000000000035;
        v35 = &v119;
        goto LABEL_23;
      case 14:
        v34 = 0xD000000000000021;
        v35 = &v118;
LABEL_23:
        v33 = *(v35 - 32);
        break;
      default:
        break;
    }

    sub_226D66FEC();
    v36 = v120;
    if (!*(v120 + 16))
    {

LABEL_29:

      v27 = 0;
      v28 = 1;
LABEL_30:
      v21 = v116;
LABEL_31:
      v40 = v128;
      v41 = v129;
      __swift_project_boxed_opaque_existential_1(&v125, v128);
      (*(v41 + 24))(v113, v27, v28, v40, v41);
      if ((v26 & 1) == 0)
      {
        if (qword_28105F590 != -1)
        {
          swift_once();
        }

        v53 = sub_226D6E07C();
        __swift_project_value_buffer(v53, qword_28105F598);
        sub_226AE532C(&v125, &v120);
        v54 = sub_226D6E05C();
        v55 = sub_226D6E9EC();
        v56 = os_log_type_enabled(v54, v55);
        v116 = v21;
        if (v56)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v117 = v58;
          *v57 = v107;
          v59 = v123;
          v60 = v124;
          __swift_project_boxed_opaque_existential_1(&v120, v123);
          v61 = *(v60 + 8);
          v62 = v60;
          v14 = v109;
          v63 = v61(v59, v62);
          v64 = sub_226BF1D54(v63);
          v66 = v65;
          __swift_destroy_boxed_opaque_existential_0Tm(&v120);
          v67 = sub_226AC4530(v64, v66, &v117);

          *(v57 + 4) = v67;
          *(v57 + 12) = 2048;
          v68 = v115;
          *(v57 + 14) = v115;
          _os_log_impl(&dword_226AB4000, v54, v55, "Ran versioned task %s, setting version %lu", v57, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          MEMORY[0x22AA8BEE0](v58, -1, -1);
          MEMORY[0x22AA8BEE0](v57, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v120);
          v68 = v115;
        }

        v69 = v128;
        v70 = v129;
        __swift_project_boxed_opaque_existential_1(&v125, v128);
        v71 = (*(v70 + 8))(v69, v70);
        v72 = 0xD000000000000012;
        v73 = v110;
        switch(v71)
        {
          case 1:
            v74 = &v131;
            goto LABEL_63;
          case 2:
            v72 = 0xD00000000000002FLL;
            v74 = &v130;
            goto LABEL_63;
          case 3:
            v72 = 0xD000000000000035;
            v74 = &v129;
            goto LABEL_63;
          case 4:
            v72 = 0xD000000000000015;
            v74 = &v128;
            goto LABEL_63;
          case 5:
            v72 = 0xD00000000000001DLL;
            v74 = &v127;
            goto LABEL_63;
          case 6:
            v72 = 0xD00000000000001CLL;
            v74 = &v126;
            goto LABEL_63;
          case 7:
            v72 = 0xD00000000000001DLL;
            v74 = &v125;
            goto LABEL_63;
          case 8:
            v72 = 0xD000000000000022;
            v74 = &v124;
            goto LABEL_63;
          case 9:
            v72 = 0xD00000000000001DLL;
            v74 = &v123;
            goto LABEL_63;
          case 10:
            v72 = 0xD00000000000003CLL;
            v74 = &v122;
            goto LABEL_63;
          case 11:
            v72 = 0xD000000000000015;
            v74 = &v121;
            goto LABEL_63;
          case 12:
            v72 = 0xD000000000000023;
            v74 = &v120;
            goto LABEL_63;
          case 13:
            v72 = 0xD000000000000035;
            v74 = &v119;
            goto LABEL_63;
          case 14:
            v72 = 0xD000000000000021;
            v74 = &v118;
LABEL_63:
            v73 = *(v74 - 32);
            break;
          default:
            break;
        }

        v83 = v73 | 0x8000000000000000;
        sub_226D66FEC();
        v84 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v84;
        v86 = sub_226C2FDD4(v72, v83);
        v88 = *(v84 + 16);
        v89 = (v87 & 1) == 0;
        v90 = __OFADD__(v88, v89);
        v91 = v88 + v89;
        if (v90)
        {
          goto LABEL_109;
        }

        v92 = v87;
        if (*(v84 + 24) >= v91)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_69;
          }

          v100 = v86;
          sub_226C39284();
          v86 = v100;
          v68 = v115;
          v21 = v116;
          if ((v92 & 1) == 0)
          {
            goto LABEL_103;
          }

LABEL_70:
          v94 = v86;

          v95 = v120;
          *(*(v120 + 56) + 8 * v94) = v68;
        }

        else
        {
          sub_226C34848(v91, isUniquelyReferenced_nonNull_native);
          v86 = sub_226C2FDD4(v72, v83);
          if ((v92 & 1) != (v93 & 1))
          {
            goto LABEL_111;
          }

LABEL_69:
          v21 = v116;
          if (v92)
          {
            goto LABEL_70;
          }

LABEL_103:
          v95 = v120;
          *(v120 + 8 * (v86 >> 6) + 64) |= 1 << v86;
          v101 = (v95[6] + 16 * v86);
          *v101 = v72;
          v101[1] = v83;
          *(v95[7] + 8 * v86) = v68;
          v102 = v95[2];
          v90 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v90)
          {
            goto LABEL_110;
          }

          v95[2] = v103;
        }

        v117 = v95;
        swift_beginAccess();
        sub_226D66FFC();
        swift_endAccess();
        goto LABEL_4;
      }

      if (qword_28105F590 != -1)
      {
        swift_once();
      }

      v42 = sub_226D6E07C();
      __swift_project_value_buffer(v42, qword_28105F598);
      sub_226AE532C(&v125, &v120);
      v43 = sub_226D6E05C();
      v44 = sub_226D6E9EC();
      if (os_log_type_enabled(v43, v44))
      {
        v116 = v21;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v117 = v46;
        *v45 = v108;
        v47 = v123;
        v48 = v124;
        __swift_project_boxed_opaque_existential_1(&v120, v123);
        v49 = (*(v48 + 8))(v47, v48);
        v50 = 0xD000000000000012;
        v51 = v110;
        switch(v49)
        {
          case 1:
            v52 = &v131;
            goto LABEL_84;
          case 2:
            v50 = 0xD00000000000002FLL;
            v52 = &v130;
            goto LABEL_84;
          case 3:
            v50 = 0xD000000000000035;
            v52 = &v129;
            goto LABEL_84;
          case 4:
            v50 = 0xD000000000000015;
            v52 = &v128;
            goto LABEL_84;
          case 5:
            v50 = 0xD00000000000001DLL;
            v52 = &v127;
            goto LABEL_84;
          case 6:
            v50 = 0xD00000000000001CLL;
            v52 = &v126;
            goto LABEL_84;
          case 7:
            v50 = 0xD00000000000001DLL;
            v52 = &v125;
            goto LABEL_84;
          case 8:
            v50 = 0xD000000000000022;
            v52 = &v124;
            goto LABEL_84;
          case 9:
            v50 = 0xD00000000000001DLL;
            v52 = &v123;
            goto LABEL_84;
          case 10:
            v50 = 0xD00000000000003CLL;
            v52 = &v122;
            goto LABEL_84;
          case 11:
            v50 = 0xD000000000000015;
            v52 = &v121;
            goto LABEL_84;
          case 12:
            v50 = 0xD000000000000023;
            v52 = &v120;
            goto LABEL_84;
          case 13:
            v50 = 0xD000000000000035;
            v52 = &v119;
            goto LABEL_84;
          case 14:
            v50 = 0xD000000000000021;
            v52 = &v118;
LABEL_84:
            v51 = *(v52 - 32);
            break;
          default:
            break;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v120);
        v96 = sub_226AC4530(v50, v51 | 0x8000000000000000, &v117);

        *(v45 + 4) = v96;
        _os_log_impl(&dword_226AB4000, v43, v44, "Ran unversioned task %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        v97 = v45;
LABEL_101:
        MEMORY[0x22AA8BEE0](v97, -1, -1);

        v14 = v109;
        v21 = v116;
        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v120);
      goto LABEL_4;
    }

    v37 = sub_226C2FDD4(v34, v33 | 0x8000000000000000);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_29;
    }

    v27 = *(*(v36 + 56) + 8 * v37);

    if (v27 < v115)
    {
      v28 = 0;
      goto LABEL_30;
    }

    if (qword_28105F590 != -1)
    {
      swift_once();
    }

    v75 = sub_226D6E07C();
    __swift_project_value_buffer(v75, qword_28105F598);
    sub_226AE532C(&v125, &v120);
    v43 = sub_226D6E05C();
    v76 = sub_226D6E9EC();
    if (os_log_type_enabled(v43, v76))
    {
      v77 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = v115;
      *v77 = v108;
      v79 = v123;
      v78 = v124;
      __swift_project_boxed_opaque_existential_1(&v120, v123);
      v80 = (*(v78 + 8))(v79, v78);
      v81 = v110;
      switch(v80)
      {
        case 1:
          v82 = &v131;
          goto LABEL_99;
        case 2:
          v32 = 0xD00000000000002FLL;
          v82 = &v130;
          goto LABEL_99;
        case 3:
          v32 = 0xD000000000000035;
          v82 = &v129;
          goto LABEL_99;
        case 4:
          v32 = 0xD000000000000015;
          v82 = &v128;
          goto LABEL_99;
        case 5:
          v32 = 0xD00000000000001DLL;
          v82 = &v127;
          goto LABEL_99;
        case 6:
          v32 = 0xD00000000000001CLL;
          v82 = &v126;
          goto LABEL_99;
        case 7:
          v32 = 0xD00000000000001DLL;
          v82 = &v125;
          goto LABEL_99;
        case 8:
          v32 = 0xD000000000000022;
          v82 = &v124;
          goto LABEL_99;
        case 9:
          v32 = 0xD00000000000001DLL;
          v82 = &v123;
          goto LABEL_99;
        case 10:
          v32 = 0xD00000000000003CLL;
          v82 = &v122;
          goto LABEL_99;
        case 11:
          v32 = 0xD000000000000015;
          v82 = &v121;
          goto LABEL_99;
        case 12:
          v32 = 0xD000000000000023;
          v82 = &v120;
          goto LABEL_99;
        case 13:
          v32 = 0xD000000000000035;
          v82 = &v119;
          goto LABEL_99;
        case 14:
          v32 = 0xD000000000000021;
          v82 = &v118;
LABEL_99:
          v81 = *(v82 - 32);
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v120);
      v98 = sub_226AC4530(v32, v81 | 0x8000000000000000, &v117);

      *(v77 + 4) = v98;
      _os_log_impl(&dword_226AB4000, v43, v76, "Skipping versioned task %s, already run", v77, 0xCu);
      v99 = v115;
      __swift_destroy_boxed_opaque_existential_0Tm(v115);
      MEMORY[0x22AA8BEE0](v99, -1, -1);
      v97 = v77;
      goto LABEL_101;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v120);
    v21 = v116;
LABEL_4:
    ++v19;
    __swift_destroy_boxed_opaque_existential_0Tm(&v125);
    v20 += 40;
    if (v114 == v19)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226CFCF1C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults;
  v2 = sub_226D6B5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallCoordinator(uint64_t a1)
{
  result = qword_281061C00;
  if (!qword_281061C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226CFD01C(uint64_t a1)
{
  result = sub_226D6B5EC();
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

void *sub_226CFD0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7908, &qword_226D75968);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D71840;
  *(v0 + 56) = &type metadata for PostInstallMigrateCloudOrdersTask;
  *(v0 + 64) = &off_283A71908;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 96) = &type metadata for PostInstallMigrateLocalOrdersTask;
  *(v0 + 104) = &off_283A6D3F0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v16 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D7A480;
  *(inited + 56) = &type metadata for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask;
  *(inited + 64) = &off_283A6C3D0;
  *(inited + 32) = 2;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 96) = &type metadata for PostInstallPopulateFullAccountIdInApplications;
  *(inited + 104) = &off_283A71D88;
  *(inited + 72) = 1;
  *(inited + 80) = 0;
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810610C8;
  *(inited + 112) = 1;
  *(inited + 120) = 0;
  *(inited + 128) = v2;
  *(inited + 136) = &type metadata for PostInstallMigrateAppPermissionsTask;
  *(inited + 176) = &type metadata for PostInstallPopulateAccountMatchEntitiesTask;
  *(inited + 184) = &off_283A6C330;
  *(inited + 144) = &off_283A6F9A0;
  *(inited + 152) = 1;
  *(inited + 160) = 0;
  *(inited + 216) = &type metadata for PostInstallPopulateMerchantNameFromBrandTask;
  *(inited + 224) = &off_283A6EE70;
  *(inited + 192) = 1;
  *(inited + 200) = 0;
  *(inited + 256) = &type metadata for PostInstallUpdateAccountsWithCurrentConsentID;
  *(inited + 264) = &off_283A71E28;
  *(inited + 232) = 1;
  *(inited + 240) = 0;
  *(inited + 296) = &type metadata for PostInstallPopulateTransactionsWithIsVisibleAndRemoveEmptyCurrencyCodesTask;
  *(inited + 304) = &off_283A6E5C8;
  *(inited + 272) = 1;
  *(inited + 280) = 0;
  *(inited + 336) = &type metadata for PostInstallPopulateTransactionCategoryTask;
  *(inited + 344) = &off_283A6C208;
  *(inited + 312) = 2;
  *(inited + 320) = 0;
  *(inited + 376) = &type metadata for PostInstallClearTransactionIconsTask;
  *(inited + 384) = &off_283A6F820;
  *(inited + 352) = 1;
  *(inited + 360) = 0;

  sub_226CEE178(inited);
  if (qword_281060AF8 != -1)
  {
    swift_once();
  }

  v3 = qword_281064530;
  v4 = v16;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_226BBBA20(0, v16[2] + 1, 1, v16);
  }

  v6 = v4[2];
  v5 = v4[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_226BBBA20((v5 > 1), v6 + 1, 1, v4);
  }

  v14 = &type metadata for PostInstallPopulateExtractedOrderMessageIDHashTask;
  v15 = &off_283A70980;
  *&v12 = 1;
  BYTE8(v12) = 0;
  v13 = v3;
  v4[2] = v7;
  sub_226AC484C(&v12, &v4[5 * v6 + 4]);
  v8 = v4[3];
  v9 = v6 + 2;
  if ((v6 + 2) > (v8 >> 1))
  {
    v4 = sub_226BBBA20((v8 > 1), v6 + 2, 1, v4);
  }

  v14 = &type metadata for PostInstallReprocessExtractedOrderCascadeSet;
  v15 = &off_283A6DC28;
  *&v12 = 0;
  BYTE8(v12) = 1;
  v4[2] = v9;
  sub_226AC484C(&v12, &v4[5 * v7 + 4]);
  v10 = v4[3];
  if ((v6 + 3) > (v10 >> 1))
  {
    v4 = sub_226BBBA20((v10 > 1), v6 + 3, 1, v4);
  }

  v14 = &type metadata for PostInstallPopulateExtractedOrdersAutomaticIngestionLocalConsent;
  v15 = &off_283A6F780;
  *&v12 = 1;
  BYTE8(v12) = 0;
  v4[2] = v6 + 3;
  sub_226AC484C(&v12, &v4[5 * v9 + 4]);
  return v4;
}

uint64_t sub_226CFD498(uint64_t a1)
{
  v2 = type metadata accessor for PostInstallTaskEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result(uint64_t a1)
{
  result = qword_27D7A91E0;
  if (!qword_27D7A91E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CFD540(uint64_t a1)
{
  sub_226CFD5A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_226CFD5A0()
{
  if (!qword_27D7A91F0)
  {
    v0 = sub_226D6D52C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A91F0);
    }
  }
}

uint64_t sub_226CFD5EC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91F8, &unk_226D7C7C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  sub_226CFD8EC(a1, &v25 - v17);
  sub_226CFD8EC(v26, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_226CFD8EC(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v4 + 32))(v9, &v18[v20], v3);
      v21 = sub_226D6D4EC();
      v23 = *(v4 + 8);
      v23(v9, v3);
      v23(v15, v3);
      goto LABEL_6;
    }

LABEL_8:
    (*(v4 + 8))(v15, v3);
    sub_226CFD950(v18);
    v21 = 0;
    return v21 & 1;
  }

  sub_226CFD8EC(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v12;
    goto LABEL_8;
  }

  (*(v4 + 32))(v6, &v18[v20], v3);
  v21 = sub_226D6D4EC();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v22(v12, v3);
LABEL_6:
  sub_226CFD9B8(v18);
  return v21 & 1;
}

uint64_t sub_226CFD8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CFD950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A91F8, &unk_226D7C7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CFD9B8(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *BankConnectPassKitTransactionsImporter.__allocating_init(coreDataStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  sub_226D6AC3C();
  swift_allocObject();

  v2[3] = sub_226D6AC2C();
  sub_226D6B6FC();
  swift_allocObject();
  v3 = sub_226D6B6EC();

  v2[4] = v3;
  return v2;
}

uint64_t BankConnectPassKitTransactionsImporter.init(coreDataStore:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  sub_226D6AC3C();
  swift_allocObject();

  *(v1 + 24) = sub_226D6AC2C();
  sub_226D6B6FC();
  swift_allocObject();
  v3 = sub_226D6B6EC();

  *(v2 + 32) = v3;
  return v2;
}

uint64_t BankConnectPassKitTransactionsImporter.importPassKitTransactions(fqaid:passKitTransactionsDataSource:passLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CFDB68, 0, 0);
}

uint64_t sub_226CFDB68()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_226CFDC58;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v5, "bankConnect/importPassKitTransactions", 37, 2, &unk_226D7C7E0, v3, v6);
}

uint64_t sub_226CFDC58()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226CFDD74;
  }

  else
  {

    v2 = sub_226B0BBB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CFDD74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CFDDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v6 = sub_226D6B9BC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFDE9C, 0, 0);
}

uint64_t sub_226CFDE9C()
{
  v25 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_226D6E07C();
  v0[13] = __swift_project_value_buffer(v5, qword_28105F710);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_226C0B634();
    v14 = sub_226D6F1CC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_226AC4530(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Importing PassKit transactions for %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = sub_226D676AC();
  v0[14] = v18;
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_226CFE0FC;
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[7];

  return sub_226CFE7D0(v22, v18, v20, v21);
}

uint64_t sub_226CFE0FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_226CFE56C;
  }

  else
  {
    v4 = sub_226CFE210;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CFE210()
{
  v27 = v0;
  v1 = *(v0 + 128);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    v20 = sub_226D6E05C();
    v21 = sub_226D6E9EC();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_15:

      v19 = *(v0 + 8);
      goto LABEL_16;
    }

    v22 = "No PassKit transactions, aborting.";
LABEL_14:
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226AB4000, v20, v21, v22, v23, 2u);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    goto LABEL_15;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = swift_task_alloc();
  v6 = *(v0 + 48);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  sub_226D6EB7C();
  if (!v2)
  {
    v7 = *(v0 + 112);
    v25 = *(v0 + 48);

    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v25;
    sub_226D6EB7C();

    v20 = sub_226D6E05C();
    v21 = sub_226D6E9EC();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_15;
    }

    v22 = "Successfully imported PassKit transactions.";
    goto LABEL_14;
  }

  v9 = v2;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9CC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_226D6F26C();
    v16 = sub_226AC4530(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226AB4000, v10, v11, "Failed to import PKTransactions: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v17 = *(v0 + 112);
  sub_226CFF7D4();
  swift_allocError();
  *v18 = v2;
  swift_willThrow();

  v19 = *(v0 + 8);
LABEL_16:

  return v19();
}

uint64_t sub_226CFE56C()
{
  v15 = v0;
  v1 = v0[17];
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_226D6F26C();
    v9 = sub_226AC4530(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to import PKTransactions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v10 = v0[14];
  sub_226CFF7D4();
  swift_allocError();
  *v11 = v1;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_226CFE710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226CFDDD8(a1, v4, v5, v7, v6);
}

uint64_t sub_226CFE7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_226D6EB9C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFE8FC, 0, 0);
}

uint64_t sub_226CFE8FC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v16 = v0[9];
  v17 = v0[11];
  v7 = v0[5];
  (*(v4 + 16))(v1, v0[4], v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v7;
  (*(v5 + 104))(v17, *MEMORY[0x277CBE110], v16);

  v11 = v7;
  v12 = swift_task_alloc();
  v0[17] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  *v12 = v0;
  v12[1] = sub_226CFEAA8;
  v14 = v0[11];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_226CFFBE0, v10, v13);
}

uint64_t sub_226CFEAA8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226CFF0D0;
  }

  else
  {
    v5 = sub_226CFEC3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CFEC3C()
{
  v21 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[7];
    v4 = sub_226D6E36C();
    v5 = [v3 passWithFPANIdentifier_];
    v0[19] = v5;

    if (v5)
    {
      v6 = v0[6];

      v7 = v6[3];
      v8 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v19 = (*(v8 + 8) + **(v8 + 8));
      v9 = swift_task_alloc();
      v0[20] = v9;
      *v9 = v0;
      v9[1] = sub_226CFEF50;

      return v19(v5, v7, v8);
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F710);

    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_226AC4530(v2, v1, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_226AB4000, v12, v13, "Failed to find a pass with FPAN identifier: %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    else
    {
    }
  }

  v17 = v0[1];
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t sub_226CFEF50(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_226CFF050, 0, 0);
}

uint64_t sub_226CFF050()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226CFF0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226CFF140(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v42 = a2;
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v43[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v43];

  v14 = v43[0];
  if (v13)
  {
    sub_226D69F0C();
    v15 = v14;
    v16 = sub_226D69D9C();
    if (!v4)
    {
      if (v16)
      {
        v40 = v16;
        if (a4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
        {
          v18 = 0;
          v41 = a4 & 0xC000000000000001;
          v39 = a4 & 0xFFFFFFFFFFFFFF8;
          v19 = a4;
          while (1)
          {
            if (v41)
            {
              v21 = MEMORY[0x22AA8AFD0](v18, a4);
            }

            else
            {
              if (v18 >= *(v39 + 16))
              {
                goto LABEL_23;
              }

              v21 = *(a4 + 8 * v18 + 32);
            }

            v22 = v21;
            a4 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            v23 = [v21 fkPaymentTransaction];
            if (v23)
            {
              v24 = v23;
              v25 = sub_226D6AC1C();

              v22 = v25;
            }

            ++v18;
            v20 = a4 == i;
            a4 = v19;
            if (v20)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
        v43[0] = 0;
        if ([a1 save_])
        {
          v37 = v43[0];
        }

        else
        {
          v38 = v43[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v27 = sub_226D6E07C();
        __swift_project_value_buffer(v27, qword_28105F710);
        (*(v9 + 16))(v11, a3, v8);
        v28 = sub_226D6E05C();
        v29 = sub_226D6E9CC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = v9;
          v31 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43[0] = v42;
          *v31 = 136315138;
          sub_226C0B634();
          v32 = sub_226D6F1CC();
          v34 = v33;
          (*(v30 + 8))(v11, v8);
          v35 = sub_226AC4530(v32, v34, v43);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_226AB4000, v28, v29, "Failed to find an account: %s", v31, 0xCu);
          v36 = v42;
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          MEMORY[0x22AA8BEE0](v36, -1, -1);
          MEMORY[0x22AA8BEE0](v31, -1, -1);
        }

        else
        {

          (*(v9 + 8))(v11, v8);
        }
      }
    }
  }

  else
  {
    v26 = v43[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

id sub_226CFF5D8(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v12[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v12];

  v7 = v12[0];
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = v12[0];
  result = sub_226D6B6DC();
  if (v3)
  {
    return result;
  }

  v12[0] = 0;
  v10 = [a1 save_];
  v7 = v12[0];
  if (v10)
  {
    return v12[0];
  }

LABEL_5:
  v11 = v7;
  sub_226D6D04C();

  return swift_willThrow();
}

void *BankConnectPassKitTransactionsImporter.deinit()
{

  return v0;
}

uint64_t BankConnectPassKitTransactionsImporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_226CFF7D4()
{
  result = qword_27D7A9200;
  if (!qword_27D7A9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9200);
  }

  return result;
}

void sub_226CFF828(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v10 = sub_226D69D9C();
  if (!v3)
  {
    v30[1] = 0;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 externalAccountId];
      if (v12)
      {
        v13 = v12;
        v14 = sub_226D6E39C();
        v16 = v15;

        *a3 = v14;
        a3[1] = v16;
        return;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v26 = sub_226D6E07C();
      __swift_project_value_buffer(v26, qword_28105F710);
      v27 = sub_226D6E05C();
      v28 = sub_226D6E9EC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_226AB4000, v27, v28, "Account is not connected to a pass, no transactions to import.", v29, 2u);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F710);
      (*(v7 + 16))(v9, a1, v6);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9CC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30[0] = swift_slowAlloc();
        v31 = v30[0];
        *v20 = 136315138;
        sub_226C0B634();
        v21 = sub_226D6F1CC();
        v23 = v22;
        (*(v7 + 8))(v9, v6);
        v24 = sub_226AC4530(v21, v23, &v31);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_226AB4000, v18, v19, "Failed to find an account for %s.", v20, 0xCu);
        v25 = v30[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v30[0]);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_226CFFC8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6764C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CFFD4C, 0, 0);
}

uint64_t sub_226CFFD4C(uint64_t a1)
{
  if (sub_226D6E82C())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[2];
    v9 = *(type metadata accessor for BankConnectBackgroundRefreshTask(0) + 28);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 16))(v4, v7 + v9, v10);
    (*(v5 + 104))(v4, *MEMORY[0x277CC6D30], v6);
    v11 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v12 = swift_task_alloc();
    v1[7] = v12;
    *v12 = v1;
    v12[1] = sub_226CFFEC8;
    v13 = v1[6];
    v14 = v1[3];

    return sub_226D01590(v11, v13, v14);
  }
}

uint64_t sub_226CFFEC8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v3;
  v5[1] = sub_226D00044;
  v6 = v1[6];
  v7 = v1[3];

  return sub_226D02088(v4, v6, v7);
}

uint64_t sub_226D00044()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v3;
  v5[1] = sub_226D001C0;
  v6 = v1[6];
  v7 = v1[3];

  return sub_226D0305C(v4, v6, v7);
}

uint64_t sub_226D001C0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v3;
  v5[1] = sub_226D0033C;
  v6 = v1[6];
  v7 = v1[3];

  return sub_226D03AA0(v4, v6, v7);
}

uint64_t sub_226D0033C()
{

  return MEMORY[0x2822009F8](sub_226D00438, 0, 0);
}

uint64_t sub_226D00438()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  sub_226D6EB7C();

  (*(v2 + 8))(v1, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226D00540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  type metadata accessor for BankConnectBackgroundRefreshTask(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D00604, 0, 0);
}

uint64_t sub_226D00604()
{
  v28 = v0;
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
  sub_226D014C8(v3, v2, type metadata accessor for BankConnectBackgroundRefreshTask);
  sub_226D014C8(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (!v8)
  {

    sub_226D01530(v9, MEMORY[0x277CC6528]);
    sub_226D01530(v10, type metadata accessor for BankConnectBackgroundRefreshTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v27 = v13;
  *v11 = 136315394;
  v14 = *v10;
  v15 = sub_226D6B9BC();
  v16 = MEMORY[0x22AA8A6A0](v14, v15);
  v18 = v17;
  sub_226D01530(v10, type metadata accessor for BankConnectBackgroundRefreshTask);
  v19 = sub_226AC4530(v16, v18, &v27);

  *(v11 + 4) = v19;
  *(v11 + 12) = 2112;
  sub_226D044E4(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226D014C8(v9, v20, MEMORY[0x277CC6528]);
  v21 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D01530(v9, MEMORY[0x277CC6528]);
  *(v11 + 14) = v21;
  *v12 = v21;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to refresh accounts %s in background: %@", v11, 0x16u);
  sub_226B17298(v12);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v22 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v23 = sub_226D676AC();
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    sub_226D6EB7C();
  }

LABEL_8:

  v25 = *(v0 + 8);

  return v25();
}

void sub_226D009CC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v24 = a3;
  v34 = sub_226D6B9BC();
  MEMORY[0x28223BE20](v34);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v33 = &v23 - v9;
  v10 = *a1;
  v31 = *(*a1 + 16);
  if (v31)
  {
    v11 = 0;
    v30 = v7 + 16;
    v26 = (v7 + 32);
    v28 = (v7 + 8);
    v29 = MEMORY[0x277D84F90];
    while (v11 < *(v10 + 16))
    {
      v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v13 = v10;
      v14 = *(v7 + 72);
      v15 = v7;
      (*(v7 + 16))(v33, v10 + v12 + v14 * v11, v34, v8);
      sub_226D6842C();
      sub_226D6B97C();
      v16 = sub_226D683EC();
      if (v3)
      {
        (*v28)(v33, v34);

        return;
      }

      v17 = v16;

      if (v17 && (v18 = [v17 supportsTransactions], v17, (v18 & 1) != 0))
      {
        v25 = *v26;
        v25(v27, v33, v34);
        v19 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE2090(0, *(v19 + 16) + 1, 1);
          v19 = v35;
        }

        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_226AE2090((v21 > 1), v22 + 1, 1);
          v19 = v35;
        }

        *(v19 + 16) = v22 + 1;
        v29 = v19;
        v25((v19 + v12 + v22 * v14), v27, v34);
      }

      else
      {
        (*v28)(v33, v34);
      }

      ++v11;
      v10 = v13;
      v7 = v15;
      if (v31 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_15:
    *v24 = v29;
  }
}

id sub_226D00CC0(uint64_t *a1, void *a2)
{
  v26 = a2;
  v27[1] = *MEMORY[0x277D85DE8];
  v22 = sub_226D6D4AC();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v25 = *(*a1 + 16);
  if (v25)
  {
    v12 = 0;
    v23 = v7 + 8;
    v24 = v7 + 16;
    v20 = (v4 + 8);
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
      }

      (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6, v8);
      sub_226D6842C();
      sub_226D6B97C();
      (*(v7 + 8))(v10, v6);
      v13 = sub_226D683EC();
      if (v2)
      {
      }

      v14 = v13;

      if (v14)
      {
        v15 = v21;
        sub_226D6D46C();
        v16 = sub_226D6D3EC();
        (*v20)(v15, v22);
        [v14 setLastBackgroundRefreshDate_];
      }

      if (v25 == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v27[0] = 0;
    if ([v26 save_])
    {
      return v27[0];
    }

    else
    {
      v18 = v27[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }
}

uint64_t sub_226D00FC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CFFC8C(a1);
}

uint64_t sub_226D01058(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D00540(a1, a2);
}

double sub_226D010FC@<D0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226D01150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D71840;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v1 = sub_226B1ED68(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

unint64_t sub_226D01274()
{
  v1 = *v0;
  v2 = sub_226D6B9BC();
  v3 = MEMORY[0x22AA8A6A0](v1, v2);
  MEMORY[0x22AA8A510](v3);

  return 0xD000000000000021;
}

uint64_t sub_226D01374(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A9208, type metadata accessor for BankConnectBackgroundRefreshTask, &unk_226D7C8E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectBackgroundRefreshTask(uint64_t a1)
{
  result = qword_27D7A9218;
  if (!qword_27D7A9218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D01418(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A7230, type metadata accessor for BankConnectBackgroundRefreshTask, &unk_226D7C908);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D01470(uint64_t a1)
{
  result = sub_226D044E4(&qword_27D7A9210, type metadata accessor for BankConnectBackgroundRefreshTask, &unk_226D7C924);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D014C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D01530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D01590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D67C0C();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v7 = swift_allocObject();
  v3[2] = v7;
  sub_226B42014(a1, v7 + 16);

  return MEMORY[0x2822009F8](sub_226D016F4, 0, 0);
}

uint64_t sub_226D016F4()
{
  v1 = **(v0 + 112);
  *(v0 + 176) = v1;
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 248) = v6;
    *(v0 + 192) = *(v4 + 56);
    *(v0 + 200) = v5;
    v7 = *(v0 + 168);
    *(v0 + 208) = 0;
    *(v0 + 216) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6B13C();
    swift_allocObject();
    v11 = sub_226D6B12C();
    *(v0 + 224) = v11;
    *(v0 + 96) = v11;
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v12[1] = sub_226D018DC;
    v13 = *(v0 + 168);
    v14 = *(v0 + 136);
    v15 = *(v0 + 104);
    v16 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v14, v13, v15, v10, v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_226D018DC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_226D01C28;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_226D01A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D01A34()
{
  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
  v1 = *(v0 + 208) + 1;
  if (v1 == *(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 176) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 192) * v1;
    v8 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 208) = v1;
    *(v0 + 216) = v8;
    v4(v5, v7, v6);
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v10 = swift_allocObject();
    *(v0 + 56) = v10;
    sub_226B42014(v9, v10 + 16);
    v11 = sub_226D6B13C();
    swift_allocObject();
    v12 = sub_226D6B12C();
    *(v0 + 224) = v12;
    *(v0 + 96) = v12;
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_226D018DC;
    v14 = *(v0 + 168);
    v15 = *(v0 + 136);
    v16 = *(v0 + 104);
    v17 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v15, v14, v16, v11, v17);
  }
}

uint64_t sub_226D01C28()
{
  v46 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  if (v10)
  {
    v44 = *(v0 + 168);
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v16 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    v21 = sub_226AC4530(v17, v19, &v45);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v42 = v23;
    _os_log_impl(&dword_226AB4000, v8, v9, "Failed to load account for %s: %@", v16, 0x16u);
    sub_226B17298(v42);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v20(v44, v14);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v12, v14);
    v24(v13, v14);
  }

  v25 = *(v0 + 208) + 1;
  if (v25 == *(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 200);
    v29 = *(v0 + 168);
    v30 = *(v0 + 144);
    v31 = *(v0 + 176) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 192) * v25;
    v32 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 208) = v25;
    *(v0 + 216) = v32;
    v28(v29, v31, v30);
    v33 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v34 = swift_allocObject();
    *(v0 + 56) = v34;
    sub_226B42014(v33, v34 + 16);
    v35 = sub_226D6B13C();
    swift_allocObject();
    v36 = sub_226D6B12C();
    *(v0 + 224) = v36;
    *(v0 + 96) = v36;
    v37 = swift_task_alloc();
    *(v0 + 232) = v37;
    *v37 = v0;
    v37[1] = sub_226D018DC;
    v38 = *(v0 + 168);
    v39 = *(v0 + 136);
    v40 = *(v0 + 104);
    v41 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v39, v38, v40, v35, v41);
  }
}

uint64_t sub_226D02088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3[16] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_226D6BE1C();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v8 = swift_allocObject();
  v3[2] = v8;
  sub_226B42014(a1, v8 + 16);

  return MEMORY[0x2822009F8](sub_226D0228C, 0, 0);
}

uint64_t sub_226D0228C()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for BankConnectEnvironmentImplementation);
  v2 = sub_226D676AC();
  *(v0 + 224) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
  sub_226D6EB7C();

  v4 = *(v0 + 96);
  *(v0 + 232) = v4;
  v5 = *(v4 + 16);
  *(v0 + 240) = v5;
  if (v5)
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 128);
    *(v0 + 248) = -*(*(v0 + 120) + 8);
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v7 + 64);
    *(v0 + 312) = v10;
    *(v0 + 256) = *(v7 + 56);
    *(v0 + 264) = v9;
    v11 = *(v0 + 216);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    *(v0 + 272) = 0;
    *(v0 + 280) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v11, v4 + ((v10 + 32) & ~v10), v6);
    v15 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v16 = swift_allocObject();
    *(v0 + 56) = v16;
    sub_226B42014(v15, v16 + 16);
    v17 = sub_226D6BE3C();
    swift_allocObject();
    v18 = sub_226D6BDFC();
    *(v0 + 288) = v18;
    *(v0 + 104) = v18;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v14 + 8))(v12, v13);
    (*(v14 + 56))(v8, 1, 1, v13);
    sub_226D6BE0C();
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_226D026FC;
    v20 = *(v0 + 216);
    v21 = *(v0 + 184);
    v22 = *(v0 + 112);
    v23 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v20, v21, v22, v17, v23);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_226D026FC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v3 = sub_226D02B44;
  }

  else
  {
    v3 = sub_226D02880;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D02880()
{
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  v1 = *(v0 + 272) + 1;
  if (v1 == *(v0 + 240))
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 264);
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 232) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v1;
    v12 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v1;
    *(v0 + 280) = v12;
    v4(v5, v11, v6);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v14 = swift_allocObject();
    *(v0 + 56) = v14;
    sub_226B42014(v13, v14 + 16);
    v15 = sub_226D6BE3C();
    swift_allocObject();
    v16 = sub_226D6BDFC();
    *(v0 + 288) = v16;
    *(v0 + 104) = v16;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v9 + 8))(v7, v8);
    (*(v9 + 56))(v10, 1, 1, v8);
    sub_226D6BE0C();
    v17 = swift_task_alloc();
    *(v0 + 296) = v17;
    *v17 = v0;
    v17[1] = sub_226D026FC;
    v18 = *(v0 + 216);
    v19 = *(v0 + 184);
    v20 = *(v0 + 112);
    v21 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v18, v19, v20, v15, v21);
  }
}

uint64_t sub_226D02B44()
{
  v50 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 304);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  if (v10)
  {
    v48 = *(v0 + 216);
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v16 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    v21 = sub_226AC4530(v17, v19, &v49);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v46 = v23;
    _os_log_impl(&dword_226AB4000, v8, v9, "Failed to load transactions for %s: %@", v16, 0x16u);
    sub_226B17298(v46);
    MEMORY[0x22AA8BEE0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v20(v48, v14);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v12, v14);
    v24(v13, v14);
  }

  v25 = *(v0 + 272) + 1;
  if (v25 == *(v0 + 240))
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 264);
    v29 = *(v0 + 216);
    v30 = *(v0 + 192);
    v31 = *(v0 + 152);
    v32 = *(v0 + 136);
    v33 = *(v0 + 144);
    v34 = *(v0 + 128);
    v35 = *(v0 + 232) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v25;
    v36 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v25;
    *(v0 + 280) = v36;
    v28(v29, v35, v30);
    v37 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v38 = swift_allocObject();
    *(v0 + 56) = v38;
    sub_226B42014(v37, v38 + 16);
    v39 = sub_226D6BE3C();
    swift_allocObject();
    v40 = sub_226D6BDFC();
    *(v0 + 288) = v40;
    *(v0 + 104) = v40;
    sub_226D6D46C();
    sub_226D6D3DC();
    (*(v33 + 8))(v31, v32);
    (*(v33 + 56))(v34, 1, 1, v32);
    sub_226D6BE0C();
    v41 = swift_task_alloc();
    *(v0 + 296) = v41;
    *v41 = v0;
    v41[1] = sub_226D026FC;
    v42 = *(v0 + 216);
    v43 = *(v0 + 184);
    v44 = *(v0 + 112);
    v45 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v42, v43, v44, v39, v45);
  }
}

uint64_t sub_226D0305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D6B9BC();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v6 = swift_allocObject();
  v3[2] = v6;
  sub_226B42014(a1, v6 + 16);

  return MEMORY[0x2822009F8](sub_226D03164, 0, 0);
}

uint64_t sub_226D03164()
{
  v1 = **(v0 + 112);
  *(v0 + 152) = v1;
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 224) = v6;
    *(v0 + 168) = *(v4 + 56);
    *(v0 + 176) = v5;
    v7 = *(v0 + 144);
    *(v0 + 184) = 0;
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6BB5C();
    swift_allocObject();
    v11 = sub_226D6BB4C();
    *(v0 + 200) = v11;
    *(v0 + 96) = v11;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_226D0333C;
    v13 = *(v0 + 144);
    v14 = *(v0 + 104);
    v15 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v13, v14, v10, v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_226D0333C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226D03650;
  }

  else
  {
    v2 = sub_226D0346C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D0346C()
{
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v1;
    v8 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v1;
    *(v0 + 192) = v8;
    v4(v5, v7, v6);
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v10 = swift_allocObject();
    *(v0 + 56) = v10;
    sub_226B42014(v9, v10 + 16);
    v11 = sub_226D6BB5C();
    swift_allocObject();
    v12 = sub_226D6BB4C();
    *(v0 + 200) = v12;
    *(v0 + 96) = v12;
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_226D0333C;
    v14 = *(v0 + 144);
    v15 = *(v0 + 104);
    v16 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v14, v15, v11, v16);
  }
}

uint64_t sub_226D03650()
{
  v45 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 216);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  if (v10)
  {
    v43 = *(v0 + 144);
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v16 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    v21 = sub_226AC4530(v17, v19, &v44);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v41 = v23;
    _os_log_impl(&dword_226AB4000, v8, v9, "Failed to load payment info for %s: %@", v16, 0x16u);
    sub_226B17298(v41);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v20(v43, v14);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v12, v14);
    v24(v13, v14);
  }

  v25 = *(v0 + 184) + 1;
  if (v25 == *(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v25;
    v32 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v25;
    *(v0 + 192) = v32;
    v28(v29, v31, v30);
    v33 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v34 = swift_allocObject();
    *(v0 + 56) = v34;
    sub_226B42014(v33, v34 + 16);
    v35 = sub_226D6BB5C();
    swift_allocObject();
    v36 = sub_226D6BB4C();
    *(v0 + 200) = v36;
    *(v0 + 96) = v36;
    v37 = swift_task_alloc();
    *(v0 + 208) = v37;
    *v37 = v0;
    v37[1] = sub_226D0333C;
    v38 = *(v0 + 144);
    v39 = *(v0 + 104);
    v40 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v38, v39, v35, v40);
  }
}

uint64_t sub_226D03AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v5 = sub_226D6B9BC();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[5] = &type metadata for BankConnectEnvironmentImplementation;
  v3[6] = sub_226B6CA08();
  v6 = swift_allocObject();
  v3[2] = v6;
  sub_226B42014(a1, v6 + 16);

  return MEMORY[0x2822009F8](sub_226D03BA8, 0, 0);
}

uint64_t sub_226D03BA8()
{
  v1 = **(v0 + 112);
  *(v0 + 152) = v1;
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 224) = v6;
    *(v0 + 168) = *(v4 + 56);
    *(v0 + 176) = v5;
    v7 = *(v0 + 144);
    *(v0 + 184) = 0;
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v9 = swift_allocObject();
    *(v0 + 56) = v9;
    sub_226B42014(v8, v9 + 16);
    v10 = sub_226D6C51C();
    swift_allocObject();
    v11 = sub_226D6C50C();
    *(v0 + 200) = v11;
    *(v0 + 96) = v11;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_226D03D80;
    v13 = *(v0 + 144);
    v14 = *(v0 + 104);
    v15 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v13, v14, v10, v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_226D03D80()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226D04094;
  }

  else
  {
    v2 = sub_226D03EB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D03EB0()
{
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v1;
    v8 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v1;
    *(v0 + 192) = v8;
    v4(v5, v7, v6);
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v10 = swift_allocObject();
    *(v0 + 56) = v10;
    sub_226B42014(v9, v10 + 16);
    v11 = sub_226D6C51C();
    swift_allocObject();
    v12 = sub_226D6C50C();
    *(v0 + 200) = v12;
    *(v0 + 96) = v12;
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_226D03D80;
    v14 = *(v0 + 144);
    v15 = *(v0 + 104);
    v16 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v14, v15, v11, v16);
  }
}

uint64_t sub_226D04094()
{
  v45 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 216);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  if (v10)
  {
    v43 = *(v0 + 144);
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v16 = 136315394;
    sub_226D044E4(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    v21 = sub_226AC4530(v17, v19, &v44);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v41 = v23;
    _os_log_impl(&dword_226AB4000, v8, v9, "Failed to load scheduled payments for %s: %@", v16, 0x16u);
    sub_226B17298(v41);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v20(v43, v14);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v12, v14);
    v24(v13, v14);
  }

  v25 = *(v0 + 184) + 1;
  if (v25 == *(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 152) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 168) * v25;
    v32 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 184) = v25;
    *(v0 + 192) = v32;
    v28(v29, v31, v30);
    v33 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
    *(v0 + 88) = sub_226B41FC0();
    v34 = swift_allocObject();
    *(v0 + 56) = v34;
    sub_226B42014(v33, v34 + 16);
    v35 = sub_226D6C51C();
    swift_allocObject();
    v36 = sub_226D6C50C();
    *(v0 + 200) = v36;
    *(v0 + 96) = v36;
    v37 = swift_task_alloc();
    *(v0 + 208) = v37;
    *v37 = v0;
    v37[1] = sub_226D03D80;
    v38 = *(v0 + 144);
    v39 = *(v0 + 104);
    v40 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v38, v39, v35, v40);
  }
}

uint64_t sub_226D044E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226D04570(uint64_t a1)
{
  sub_226D04674(319, &qword_28105F538, MEMORY[0x277CC8058], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_226D04674(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_226D6D52C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D04674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BankConnectServiceImplementation.revokeConnectionAuthorization(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v3[110] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9228, &qword_226D7C9E0);
  v3[111] = swift_task_alloc();
  v4 = sub_226D682FC();
  v3[112] = v4;
  v5 = *(v4 - 8);
  v3[113] = v5;
  v3[114] = *(v5 + 64);
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v3[118] = swift_task_alloc();
  v6 = sub_226D67F1C();
  v3[119] = v6;
  v3[120] = *(v6 - 8);
  v3[121] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D04894, 0, 0);
}

uint64_t sub_226D04894()
{
  v48 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 16);
  v2 = sub_226D6E07C();
  *(v0 + 976) = __swift_project_value_buffer(v2, qword_27D7A7D10);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 864);
    v6 = *(v0 + 856);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v47);
    _os_log_impl(&dword_226AB4000, v3, v4, "Revoking consent for consentID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = *(v0 + 872);
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  v10 = sub_226D676AC();
  *(v0 + 984) = v10;
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  sub_226D6BAEC();
  v11 = *(v0 + 560);
  v12 = *(v0 + 568);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + 536), v11);
  *(v0 + 520) = v11;
  *(v0 + 528) = *(v12 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  sub_226D6BAFC();
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  sub_226D6BADC();
  *(v0 + 688) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  v15 = __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  sub_226AE532C((v15 + 68), v0 + 696);
  *(v0 + 760) = sub_226D6B5EC();
  *(v0 + 768) = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1((v0 + 736));
  sub_226D6B58C();
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  sub_226B1B848(v0 + 496, v0 + 256);
  sub_226AE532C(v0 + 576, v0 + 296);
  sub_226AE532C(v0 + 616, v0 + 336);
  sub_226AE532C(v0 + 736, v0 + 376);
  sub_226B1B8B8(v0 + 656, v0 + 816);
  if (*(v0 + 840))
  {
    sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
    sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
    sub_226AC484C((v0 + 816), v0 + 776);
  }

  else
  {
    v16 = *(v0 + 968);
    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v17 + 8))(v16, v18);
    v19 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v20 = sub_226D6E36C();

    v21 = [v19 initWithBundleIdentifier_];

    *(v0 + 800) = sub_226B42B94();
    *(v0 + 808) = MEMORY[0x277CC85E8];
    *(v0 + 776) = v21;
    sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
    sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
    if (*(v0 + 840))
    {
      sub_226AC47B0(v0 + 816, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  v22 = *(v0 + 872);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  sub_226AC484C((v0 + 776), v0 + 416);
  sub_226AC484C((v0 + 696), v0 + 456);
  v25 = *(v0 + 464);
  *(v0 + 208) = *(v0 + 448);
  *(v0 + 224) = v25;
  *(v0 + 240) = *(v0 + 480);
  v26 = *(v0 + 400);
  *(v0 + 144) = *(v0 + 384);
  *(v0 + 160) = v26;
  v27 = *(v0 + 432);
  *(v0 + 176) = *(v0 + 416);
  *(v0 + 192) = v27;
  v28 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 320);
  *(v0 + 96) = v28;
  v29 = *(v0 + 368);
  *(v0 + 112) = *(v0 + 352);
  *(v0 + 128) = v29;
  v30 = *(v0 + 272);
  *v1 = *(v0 + 256);
  *(v0 + 32) = v30;
  v31 = *(v0 + 304);
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 64) = v31;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
  v32 = swift_task_alloc();
  v32[2] = v10;
  v32[3] = v22;
  v32[4] = v24;
  v32[5] = v23;
  v32[6] = v1;
  sub_226D6EB7C();
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = *(v0 + 928);
  v36 = *(v0 + 904);
  v37 = *(v0 + 896);
  v38 = *(v0 + 888);
  v46 = v10;
  v39 = *(v0 + 880);

  v40 = *(v39 + 48);
  *(v0 + 992) = *(v38 + *(v39 + 64));
  sub_226BAE320(v38, v33);
  v41 = *(v36 + 32);
  *(v0 + 1000) = v41;
  *(v0 + 1008) = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v41(v35, v38 + v40, v37);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(*(v33 + *(v34 + 20)), *(v33 + *(v34 + 24)));
  v42 = swift_task_alloc();
  *(v0 + 1016) = v42;
  *v42 = v0;
  v42[1] = sub_226D04F34;
  v43 = *(v0 + 864);
  v44 = *(v0 + 856);

  return sub_226D07264(v44, v43, v46);
}

uint64_t sub_226D04F34()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {

    v2 = sub_226D05720;
  }

  else
  {
    v2 = sub_226D05050;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D05050()
{
  v14 = v0;

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[108];
    v4 = v0[107];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_226AC4530(v4, v3, &v13);
    _os_log_impl(&dword_226AB4000, v1, v2, "Successfully cleaned up local consent for consentID: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v0[109] + 16), *(v0[109] + 40));
  v7 = sub_226D682EC();
  v9 = v8;
  v0[129] = v8;
  v10 = swift_task_alloc();
  v0[130] = v10;
  v11 = sub_226B41FC0();
  *v10 = v0;
  v10[1] = sub_226D05214;

  return MEMORY[0x28211A3F8](v7, v9, &type metadata for BankConnectEnvironmentImplementation, v11);
}

uint64_t sub_226D05214(uint64_t a1)
{
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_226D05334, 0, 0);
}

uint64_t sub_226D05334()
{
  v14 = v0[125];
  v15 = v0[124];
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  (*(v3 + 16))(v1, v0[116], v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[132] = v10;
  *(v10 + 16) = v5;
  v14(v10 + v8, v1, v4);
  *(v10 + v9) = v15;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v7;
  v11[1] = v6;
  v16 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v12 = swift_task_alloc();
  v0[133] = v12;
  *v12 = v0;
  v12[1] = sub_226D054E4;

  return v16();
}

uint64_t sub_226D054E4()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v2 = sub_226D0581C;
  }

  else
  {
    v2 = sub_226D05618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D05618()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);

  (*(v3 + 8))(v2, v4);
  sub_226D094F4(v1, type metadata accessor for ManagedConsentDeleter.Metadata);
  sub_226B1B944(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D05720()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);

  (*(v3 + 8))(v2, v4);
  sub_226D094F4(v1, type metadata accessor for ManagedConsentDeleter.Metadata);
  sub_226B1B944(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D0581C()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);

  (*(v3 + 8))(v2, v4);
  sub_226D094F4(v1, type metadata accessor for ManagedConsentDeleter.Metadata);
  sub_226B1B944(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t BankConnectServiceImplementation.revokeConsents(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v3[111] = v4;
  v5 = *(v4 - 8);
  v3[112] = v5;
  v3[113] = *(v5 + 64);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v6 = sub_226D67F1C();
  v3[118] = v6;
  v3[119] = *(v6 - 8);
  v3[120] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D05A74, 0, 0);
}

uint64_t sub_226D05A74()
{
  v64 = v0;
  if (qword_27D7A5F60 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v1 = (v0 + 16);
    v2 = sub_226D6E07C();
    *(v0 + 968) = __swift_project_value_buffer(v2, qword_27D7A7D10);

    v3 = sub_226D6E05C();
    v4 = sub_226D6E9EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 872);
      v6 = *(v0 + 864);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v63 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_226AC4530(v6, v5, &v63);
      _os_log_impl(&dword_226AB4000, v3, v4, "Revoking consents for institutionID: %s.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v9 = *(v0 + 880);
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    v10 = sub_226D676AC();
    *(v0 + 976) = v10;
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    sub_226D6BAEC();
    v11 = *(v0 + 560);
    v12 = *(v0 + 568);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 536), v11);
    *(v0 + 520) = v11;
    *(v0 + 528) = *(v12 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    sub_226D6BAFC();
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    sub_226D6BADC();
    *(v0 + 688) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    v15 = __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    sub_226AE532C((v15 + 68), v0 + 696);
    *(v0 + 760) = sub_226D6B5EC();
    *(v0 + 768) = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1((v0 + 736));
    sub_226D6B58C();
    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_226B1B848(v0 + 496, v0 + 256);
    sub_226AE532C(v0 + 576, v0 + 296);
    sub_226AE532C(v0 + 616, v0 + 336);
    sub_226AE532C(v0 + 736, v0 + 376);
    sub_226B1B8B8(v0 + 656, v0 + 816);
    if (*(v0 + 840))
    {
      sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
      sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
      sub_226AC484C((v0 + 816), v0 + 776);
    }

    else
    {
      v16 = *(v0 + 960);
      v17 = *(v0 + 952);
      v18 = *(v0 + 944);
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v17 + 8))(v16, v18);
      v19 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v20 = sub_226D6E36C();

      v21 = [v19 initWithBundleIdentifier_];

      *(v0 + 800) = sub_226B42B94();
      *(v0 + 808) = MEMORY[0x277CC85E8];
      *(v0 + 776) = v21;
      sub_226AC47B0(v0 + 656, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 616));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
      sub_226AC47B0(v0 + 496, &qword_27D7A6910, &unk_226D721C0);
      if (*(v0 + 840))
      {
        sub_226AC47B0(v0 + 816, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    v22 = *(v0 + 872);
    v23 = *(v0 + 864);
    sub_226AC484C((v0 + 776), v0 + 416);
    sub_226AC484C((v0 + 696), v0 + 456);
    v24 = *(v0 + 464);
    *(v0 + 208) = *(v0 + 448);
    *(v0 + 224) = v24;
    *(v0 + 240) = *(v0 + 480);
    v25 = *(v0 + 400);
    *(v0 + 144) = *(v0 + 384);
    *(v0 + 160) = v25;
    v26 = *(v0 + 432);
    *(v0 + 176) = *(v0 + 416);
    *(v0 + 192) = v26;
    v27 = *(v0 + 336);
    *(v0 + 80) = *(v0 + 320);
    *(v0 + 96) = v27;
    v28 = *(v0 + 368);
    *(v0 + 112) = *(v0 + 352);
    *(v0 + 128) = v28;
    v29 = *(v0 + 272);
    *v1 = *(v0 + 256);
    *(v0 + 32) = v29;
    v30 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v30;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
    v31 = swift_task_alloc();
    v31[2] = v10;
    v31[3] = v23;
    v31[4] = v22;
    v31[5] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9230, &qword_226D7CA08);
    sub_226D6EB7C();
    v59 = v9;

    v32 = *(v0 + 856);
    *(v0 + 984) = v32;
    v33 = *(v32 + 16);
    *(v0 + 992) = v33;
    v60 = v33;
    if (!v33)
    {
      break;
    }

    v34 = *(v0 + 896);
    v61 = *(*(v0 + 888) + 20);
    v62 = *(v0 + 936);
    v35 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      v38 = *(v0 + 936);
      sub_226D0948C(v35, v38, type metadata accessor for ManagedConsentDeleter.Metadata);
      v39 = *(v62 + v61);

      sub_226D094F4(v38, type metadata accessor for ManagedConsentDeleter.Metadata);
      v40 = *(v39 + 16);
      v41 = v37[2];
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v42 <= v37[3] >> 1)
      {
        if (*(v39 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v41 <= v42)
        {
          v44 = v41 + v40;
        }

        else
        {
          v44 = v41;
        }

        v37 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v44, 1, v37);
        if (*(v39 + 16))
        {
LABEL_21:
          v45 = (v37[3] >> 1) - v37[2];
          type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
          if (v45 < v40)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v40)
          {
            v46 = v37[2];
            v47 = __OFADD__(v46, v40);
            v48 = v46 + v40;
            if (v47)
            {
              goto LABEL_37;
            }

            v37[2] = v48;
          }

          goto LABEL_11;
        }
      }

      if (v40)
      {
        goto LABEL_34;
      }

LABEL_11:
      v35 += v36;
      if (!--v33)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v37 = MEMORY[0x277D84F90];
LABEL_26:
  v49 = 0;
  v50 = *(v0 + 896);
  v51 = *(v0 + 888);
  do
  {
    v52 = v49;
    if (v60 == v49)
    {
      break;
    }

    if (v49 >= *(v32 + 16))
    {
      goto LABEL_35;
    }

    v53 = *(v0 + 928);
    sub_226D0948C(v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49++, v53, type metadata accessor for ManagedConsentDeleter.Metadata);
    v54 = *(v53 + *(v51 + 24));
    sub_226D094F4(v53, type metadata accessor for ManagedConsentDeleter.Metadata);
  }

  while (v54 != 1);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v37, v60 != v52);

  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1((v59 + 16), *(v59 + 40))[51];

  v55 = swift_task_alloc();
  *(v0 + 1008) = v55;
  *v55 = v0;
  v55[1] = sub_226D06300;
  v56 = *(v0 + 872);
  v57 = *(v0 + 864);

  return MEMORY[0x28211A630](v57, v56);
}

uint64_t sub_226D06300()
{

  return MEMORY[0x2822009F8](sub_226D06418, 0, 0);
}

uint64_t sub_226D06418()
{
  v22 = v0;

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 872);
    v4 = *(v0 + 864);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_226AC4530(v4, v3, &v21);
    _os_log_impl(&dword_226AB4000, v1, v2, "Successfully cleaned up local consent for institutionID: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  if (*(v0 + 992))
  {
    *(v0 + 1016) = 0;
    v11 = *(v0 + 984);
    if (*(v11 + 16))
    {
      v12 = *(v0 + 920);
      v13 = *(v0 + 880);
      v14 = *(*(v0 + 896) + 80);
      *(v0 + 1080) = v14;
      sub_226D0948C(v11 + ((v14 + 32) & ~v14), v12, type metadata accessor for ManagedConsentDeleter.Metadata);
      v15 = sub_226D682EC();
      v17 = v16;
      *(v0 + 1024) = v15;
      *(v0 + 1032) = v16;
      __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
      v18 = swift_task_alloc();
      *(v0 + 1040) = v18;
      v10 = sub_226B41FC0();
      *v18 = v0;
      v18[1] = sub_226D066CC;
      v9 = &type metadata for BankConnectEnvironmentImplementation;
      v7 = v15;
      v8 = v17;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x28211A3F8](v7, v8, v9, v10);
  }

  else
  {

    sub_226B1B944(v0 + 16);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_226D066CC(uint64_t a1)
{
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_226D067CC, 0, 0);
}

uint64_t sub_226D067CC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 912);
  v4 = *(v0 + 880);
  v5 = (*(v0 + 1080) + 24) & ~*(v0 + 1080);
  v6 = *(v0 + 904) + v5;
  sub_226BAE320(*(v0 + 920), v3);
  v7 = swift_allocObject();
  *(v0 + 1056) = v7;
  *(v7 + 16) = v4;
  sub_226BAE320(v3, v7 + v5);
  v8 = (v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = v2;
  v8[1] = v1;
  v11 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v9 = swift_task_alloc();
  *(v0 + 1064) = v9;
  *v9 = v0;
  v9[1] = sub_226D06924;

  return v11();
}

uint64_t sub_226D06924()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {

    v2 = sub_226D06C68;
  }

  else
  {

    v2 = sub_226D06A6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D06A6C()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 992);

  if (v1 + 1 == v2)
  {

    sub_226B1B944(v0 + 16);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 1016) + 1;
    *(v0 + 1016) = v9;
    v10 = *(v0 + 984);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 920);
      v12 = *(v0 + 896);
      v13 = *(v0 + 880);
      v14 = *(v12 + 80);
      *(v0 + 1080) = v14;
      sub_226D0948C(v10 + ((v14 + 32) & ~v14) + *(v12 + 72) * v9, v11, type metadata accessor for ManagedConsentDeleter.Metadata);
      v15 = sub_226D682EC();
      v17 = v16;
      *(v0 + 1024) = v15;
      *(v0 + 1032) = v16;
      __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
      v18 = swift_task_alloc();
      *(v0 + 1040) = v18;
      v6 = sub_226B41FC0();
      *v18 = v0;
      v18[1] = sub_226D066CC;
      v5 = &type metadata for BankConnectEnvironmentImplementation;
      v3 = v15;
      v4 = v17;
    }

    return MEMORY[0x28211A3F8](v3, v4, v5, v6);
  }
}

uint64_t sub_226D06C68()
{
  v1 = *(v0 + 976);

  sub_226B1B944(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

id sub_226D06D28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v40 = a4;
  v41 = a3;
  v42[1] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  MEMORY[0x28223BE20](v9);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D682FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v42[0] = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:v42];

  v18 = v42[0];
  if (v16)
  {
    v36 = v12;
    MEMORY[0x28223BE20](v17);
    v19 = v40;
    *(&v36 - 4) = v41;
    *(&v36 - 3) = v19;
    *(&v36 - 2) = a1;
    *(&v36 - 1) = a2;
    v20 = v18;
    result = sub_226D6EB8C();
    if (!v6)
    {
      v22 = v14;
      v24 = v40;
      v23 = v41;
      v25 = sub_226D09680(v41, v40, a1);
      MEMORY[0x28223BE20](v25);
      *(&v36 - 4) = v38;
      *(&v36 - 3) = v23;
      *(&v36 - 2) = v24;
      *(&v36 - 1) = a1;
      v26 = v39;
      sub_226D6EB8C();
      v42[0] = 0;
      v28 = [a1 save_];
      v29 = v42[0];
      if (v28)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9228, &qword_226D7C9E0);
        v31 = *(v30 + 48);
        v32 = v26;
        v33 = *(v30 + 64);
        v34 = v37;
        sub_226BAE320(v32, v37);
        (*(v36 + 32))(v34 + v31, v22, v11);
        *(v34 + v33) = v25;
        return v29;
      }

      else
      {
        v35 = v42[0];

        sub_226D6D04C();

        swift_willThrow();
        sub_226D094F4(v26, type metadata accessor for ManagedConsentDeleter.Metadata);
        return (*(v36 + 8))(v22, v11);
      }
    }
  }

  else
  {
    v27 = v42[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226D07264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_226D07288, 0, 0);
}

uint64_t sub_226D07288()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  sub_226D6EB8C();

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 64) = v6;
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = swift_task_alloc();
    v9[2] = v7;
    v9[3] = v6;
    v9[4] = v8;
    sub_226D6EB8C();

    if (*(v0 + 88) == 1)
    {
      *(v0 + 72) = __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 16), *(*(v0 + 56) + 40))[51];

      v10 = swift_task_alloc();
      *(v0 + 80) = v10;
      *v10 = v0;
      v10[1] = sub_226D07484;

      return MEMORY[0x28211A630](v7, v6);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D07484()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226D075BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_226D0766C;

  return sub_226D078F0(a3, a4);
}

uint64_t sub_226D0766C()
{

  return MEMORY[0x2822009F8](sub_226D07768, 0, 0);
}

uint64_t sub_226D07768()
{
  v11 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_27D7A7D10);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(v5, v4, &v10);
    _os_log_impl(&dword_226AB4000, v2, v3, "Successfully revoked consent for consentID: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_226D078F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D682FC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D079B4, 0, 0);
}

uint64_t sub_226D079B4()
{
  v7 = *(v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  v2 = sub_226D6C2AC();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_226D07ACC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v4, &unk_226D7CA30, v3, v5);
}

uint64_t sub_226D07ACC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_226D07C50;
  }

  else
  {

    v2 = sub_226D07BE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D07BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D07C50()
{
  v27 = v0;

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315394;
    v16 = sub_226D682EC();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_226AC4530(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_226AB4000, v8, v9, "Unable to revoke consent for consentID: %s, failed with error: %@. The consent has been removed from the device.", v15, 0x16u);
    sub_226AC47B0(v24, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[1];

  return v22();
}

unint64_t sub_226D07EE4@<X0>(unint64_t a1@<X0>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a4;
  v39 = a5;
  v50[1] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v50[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v50];

  v15 = v50[0];
  if (v14)
  {
    sub_226D6794C();
    v16 = v15;
    result = sub_226D6791C();
    v18 = v5;
    if (v5)
    {
      return result;
    }

    v19 = result;
    if (result >> 62)
    {
      goto LABEL_30;
    }

    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v49 = v18;
    v43 = a1;
    if (v20)
    {
      v21 = 0;
      v41 = v19 & 0xFFFFFFFFFFFFFF8;
      v42 = v19 & 0xC000000000000001;
      v22 = MEMORY[0x277D84F90];
      v40 = v19;
      while (1)
      {
        if (v42)
        {
          v23 = MEMORY[0x22AA8AFD0](v21, v19);
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v21 >= *(v41 + 16))
          {
            goto LABEL_29;
          }

          v23 = *(v19 + 8 * v21 + 32);
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            v20 = sub_226D6EDFC();
            goto LABEL_5;
          }
        }

        v47 = v24;
        v48 = v23;
        v18 = v20;
        v25 = v9;
        v26 = [v23 consentID];
        v27 = sub_226D6E39C();
        v29 = v28;

        MEMORY[0x28223BE20](v30);
        *(&v38 - 6) = v27;
        *(&v38 - 5) = v29;
        v31 = v46;
        *(&v38 - 4) = v43;
        *(&v38 - 3) = v31;
        *(&v38 - 16) = 1;
        v32 = v49;
        sub_226D6EB8C();
        v49 = v32;
        if (v32)
        {
        }

        v9 = v25;
        sub_226D0948C(v12, v25, type metadata accessor for ManagedConsentDeleter.Metadata);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_226BBB9A8(0, v22[2] + 1, 1, v22);
        }

        v19 = v40;
        a1 = v22[2];
        v33 = v22[3];
        if (a1 >= v33 >> 1)
        {
          v22 = sub_226BBB9A8((v33 > 1), a1 + 1, 1, v22);
        }

        sub_226D094F4(v12, type metadata accessor for ManagedConsentDeleter.Metadata);
        v22[2] = a1 + 1;
        sub_226BAE320(v9, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * a1);
        ++v21;
        if (v47 == v20)
        {
          goto LABEL_24;
        }
      }
    }

    v22 = MEMORY[0x277D84F90];
LABEL_24:

    v50[0] = 0;
    v35 = [v43 save_];
    v36 = v50[0];
    if (v35)
    {
      *v39 = v22;
      return v36;
    }

    v37 = v50[0];

    sub_226D6D04C();
  }

  else
  {
    v34 = v50[0];
    sub_226D6D04C();
  }

  return swift_willThrow();
}