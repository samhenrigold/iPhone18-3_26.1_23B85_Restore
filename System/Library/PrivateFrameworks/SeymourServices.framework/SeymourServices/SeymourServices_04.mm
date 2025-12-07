uint64_t sub_226F0D1B8(uint64_t a1)
{
  v20 = v1;
  v2 = v1[75];
  v1[82] = v2;
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v18 = v1[43];
    v6 = v1[41];
    v7 = v1[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v1[23], v1[24]);
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to save, due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18(v6, v7);
  }

  else
  {
    v13 = v1[43];
    v14 = v1[41];
    v15 = v1[39];

    v13(v14, v15);
  }

  v16 = swift_task_alloc();
  v1[83] = v16;
  *v16 = v1;
  v16[1] = sub_226F0DA48;

  return sub_226F10AC8(v2);
}

uint64_t sub_226F0D3A8()
{
  *(*v1 + 624) = v0;

  if (v0)
  {

    v2 = sub_226F0DF50;
  }

  else
  {

    v2 = sub_226F0D4CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0D4CC()
{
  v1 = v0[67];
  v2 = v0[33];
  v3 = v2[33];
  __swift_project_boxed_opaque_existential_0(v2 + 29, v2[32]);
  v4 = swift_allocObject();
  v0[79] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[80] = v6;
  *v6 = v0;
  v6[1] = sub_226F0D658;

  return v8();
}

uint64_t sub_226F0D658()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_226F0E148;
  }

  else
  {

    v2 = sub_226F0D774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0D774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0D800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0D894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0D930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0D9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0DA48()
{
  v2 = *v1;
  *(v2 + 672) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F0E340, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 680) = v3;
    *v3 = v2;
    v3[1] = sub_226F0DBB8;

    return sub_226F0B0C8(0);
  }
}

uint64_t sub_226F0DBB8()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_226F0E3D4;
  }

  else
  {
    v2 = sub_226F0DCCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F0DCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0DD60(uint64_t a1)
{
  v20 = v1;
  v2 = v1[71];
  v1[82] = v2;
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v18 = v1[43];
    v6 = v1[41];
    v7 = v1[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v1[23], v1[24]);
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to save, due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18(v6, v7);
  }

  else
  {
    v13 = v1[43];
    v14 = v1[41];
    v15 = v1[39];

    v13(v14, v15);
  }

  v16 = swift_task_alloc();
  v1[83] = v16;
  *v16 = v1;
  v16[1] = sub_226F0DA48;

  return sub_226F10AC8(v2);
}

uint64_t sub_226F0DF50()
{
  v19 = v0;

  v1 = v0[78];
  v0[82] = v1;
  sub_22766A6B0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[43];
    v5 = v0[41];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to save, due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[43];
    v13 = v0[41];
    v14 = v0[39];

    v12(v13, v14);
  }

  v15 = swift_task_alloc();
  v0[83] = v15;
  *v15 = v0;
  v15[1] = sub_226F0DA48;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F0E148()
{
  v19 = v0;

  v1 = v0[81];
  v0[82] = v1;
  sub_22766A6B0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[43];
    v5 = v0[41];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to save, due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[43];
    v13 = v0[41];
    v14 = v0[39];

    v12(v13, v14);
  }

  v15 = swift_task_alloc();
  v0[83] = v15;
  *v15 = v0;
  v15[1] = sub_226F0DA48;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F0E340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0E3D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F0E468()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v5 = off_283AB4FA0;
  type metadata accessor for AccountSyncStatusObserver();
  v6 = v5();
  v7 = sub_227664EE0();
  v9 = v8;
  if (v7 == sub_227664EE0() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_22766D190();

    if ((v12 & 1) == 0)
    {
      sub_22766A6B0();
      v14 = sub_22766B380();
      v15 = sub_22766C890();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v16 = 136446210;
        v23 = v6;
        v17 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
        v19 = sub_226E97AE8(v17, v18, &v24);

        *(v16 + 4) = v19;
        _os_log_impl(&dword_226E8E000, v14, v15, "Couldn't sync with CloudKit, %{public}s != available", v16, 0xCu);
        v20 = v22;
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AA9A450](v20, -1, -1);
        MEMORY[0x22AA9A450](v16, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      sub_226F1893C();
      swift_allocError();
      *v21 = v6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226F0E6FC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_2276694D0();
  v6 = sub_22712E580(v5, a1);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_226F0E778(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v44 = a3;
  v5 = a2(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v34 - v6;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v40 = v10;
  v34[1] = v3;
  v47 = MEMORY[0x277D84F90];
  sub_226F1EF50(0, v11, 0);
  v12 = v47;
  v13 = a1 + 56;
  result = sub_22766CC90();
  v15 = result;
  v16 = 0;
  v41 = v8;
  v38 = v8 + 32;
  v39 = (v8 + 16);
  v35 = a1 + 64;
  v36 = v11;
  v37 = a1 + 56;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v18 = v15 >> 6;
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v45 = v16;
    v46 = v19;
    v20 = v44;
    v21 = v7;
    v22 = v42;
    sub_226F19570(*(a1 + 48) + *(v43 + 72) * v15, v42, v44);
    v23 = a1;
    v24 = v40;
    (*v39)(v40, v22, v21);
    sub_226F19640(v22, v20);
    v47 = v12;
    v26 = *(v12 + 16);
    v25 = *(v12 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_226F1EF50((v25 > 1), v26 + 1, 1);
      v12 = v47;
    }

    *(v12 + 16) = v26 + 1;
    result = (*(v41 + 32))(v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v24, v21);
    v17 = 1 << *(v23 + 32);
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    a1 = v23;
    v13 = v37;
    v27 = *(v37 + 8 * v18);
    if ((v27 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v7 = v21;
    v28 = v27 & (-2 << (v15 & 0x3F));
    if (v28)
    {
      v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v18 << 6;
      v30 = v18 + 1;
      v31 = (v35 + 8 * v18);
      while (v30 < (v17 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_226EB526C(v15, v46, 0);
          v17 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v15, v46, 0);
    }

LABEL_4:
    v16 = v45 + 1;
    v15 = v17;
    if (v45 + 1 == v36)
    {
      return v12;
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
  return result;
}

uint64_t sub_226F0EB24(uint64_t a1)
{
  v3 = type metadata accessor for SyncEncryptionKey(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v7 = v35;
    v8 = a1 + 56;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v28 = a1 + 64;
    v29 = v5;
    v30 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v33 = *(a1 + 36);
      v14 = v31;
      sub_226F19570(*(a1 + 48) + *(v32 + 72) * v9, v31, type metadata accessor for SyncEncryptionKey);
      v34 = sub_2276694C0();
      v16 = v15;
      result = sub_226F19640(v14, type metadata accessor for SyncEncryptionKey);
      v17 = v7;
      v35 = v7;
      v18 = *(v7 + 16);
      if (v18 >= *(v17 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v34;
      *(v19 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v30;
      v20 = *(v30 + 8 * v13);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v17;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v29;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v12 = v29;
        v24 = (v28 + 8 * v13);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226EB526C(v9, v33, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v33, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v7;
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

uint64_t sub_226F0EE04(uint64_t a1)
{
  v35 = sub_2276694E0();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_2276694C0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226F1EFF0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226EB526C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

uint64_t sub_226F0F10C()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[38] = v3;
  v4 = *(v3 - 8);
  v1[39] = v4;
  v1[40] = *(v4 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[43] = v5;
  v1[44] = *(v5 - 8);
  v1[45] = swift_task_alloc();
  v6 = sub_227665AD0();
  v1[46] = v6;
  v1[47] = *(v6 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0F318, 0, 0);
}

uint64_t sub_226F0F318()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 264) + 272), *(*(v0 + 264) + 296));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v6 = *(v0 + 360);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v11 = *(v0 + 304);
  (*(v10 + 16))(v8, v7, v11);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v12, v8, v11);
  v15 = (v14 + v13);
  *v15 = sub_226F17554;
  v15[1] = 0;
  sub_227669270();
  (*(v10 + 8))(v7, v11);
  v16 = swift_task_alloc();
  *(v0 + 392) = v16;
  *(v16 + 16) = "SeymourServices/ServerSyncCoordinator.swift";
  *(v16 + 24) = 43;
  *(v16 + 32) = 2;
  *(v16 + 40) = 398;
  *(v16 + 48) = v6;
  v17 = swift_task_alloc();
  *(v0 + 400) = v17;
  *v17 = v0;
  v17[1] = sub_226F0F658;
  v18 = *(v0 + 384);
  v19 = *(v0 + 368);

  return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226F194FC, v16, v19);
}

uint64_t sub_226F0F658()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_226F0F86C;
  }

  else
  {
    v5 = v2[47];
    v4 = v2[48];
    v7 = v2[45];
    v6 = v2[46];
    v10 = v2 + 43;
    v8 = v2[43];
    v9 = v10[1];
    (*(v5 + 8))(v4, v6);
    (*(v9 + 8))(v7, v8);
    v3 = sub_226F0F7C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F0F7C4()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_226F0F86C()
{
  v29 = v0;
  (*(v0[44] + 8))(v0[45], v0[43]);
  swift_getErrorValue();
  v0[20] = MEMORY[0x277D52C78];
  v1 = sub_226F09B58();
  *(v0 + 136) = 4;
  v0[21] = v1;
  v2 = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v2)
  {
    sub_22766A6B0();
    v3 = sub_22766B380();
    v4 = sub_22766C8B0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[51];
    v7 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v3, v4, "No subscription entitlements found", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v7, v8);
    v25 = 0;
  }

  else
  {
    v11 = v0[51];
    sub_22766A6B0();
    v12 = v11;
    v13 = sub_22766B380();
    v14 = sub_22766C890();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[51];
    v18 = v0[35];
    v17 = v0[36];
    v19 = v0[34];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_22766D250();
      v24 = sub_226E97AE8(v22, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_226E8E000, v13, v14, "Caught error %s fetching subscription status", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      (*(v18 + 8))(v17, v19);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v25 = 2;
  }

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_226F0FB98(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_226F0FC38;

  return sub_226F0FDAC(a1);
}

uint64_t sub_226F0FC38(char a1)
{
  *(*v1 + 41) = a1;

  return MEMORY[0x2822009F8](sub_226F0FD38, 0, 0);
}

uint64_t sub_226F0FD38()
{
  v1 = *(v0 + 41);
  v2 = sub_226F1013C(*(v0 + 16), *(v0 + 40));
  v3 = *(v0 + 8);
  v4 = v1 & v2 & 1;

  return v3(v4);
}

uint64_t sub_226F0FDAC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_226F0FDCC, 0, 0);
}

uint64_t sub_226F0FDCC()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 352);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 120);

  v4 = sub_226F39E30(v3);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  sub_226E91B50(*(v2 + 56) + 40 * v4, v0 + 16);

  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &qword_27D7B8450, &qword_227682050);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), v6);
    v11 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_226F0FFD8;

    return v11(v6, v7);
  }

LABEL_9:
  sub_226E97D1C(v0 + 16, &qword_27D7B8450, &qword_227682050);
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_226F0FFD8(char a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_226F100D8, 0, 0);
}

uint64_t sub_226F100D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226F1013C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 352);
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = sub_226F39E30(a1);
  if ((v7 & 1) == 0)
  {

LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_7;
  }

  sub_226E91B50(*(v5 + 56) + 40 * v6, &v15);

  if (!*(&v16 + 1))
  {
LABEL_7:
    sub_226E97D1C(&v15, &qword_27D7B8450, &qword_227682050);
    v10 = 0;
    return v10 & 1;
  }

  sub_226E91B50(&v15, v12);
  sub_226E97D1C(&v15, &qword_27D7B8450, &qword_227682050);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v10 = (*(v9 + 24))(a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10 & 1;
}

char *sub_226F10264(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v9 = sub_2272313B8(100);
  swift_setDeallocating();

  v10 = qword_2813B2078;
  v11 = sub_22766A100();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  swift_deallocClassInstance();
  return v9;
}

uint64_t sub_226F103D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_226F10474;

  return sub_226F0FDAC(a1);
}

uint64_t sub_226F10474(char a1)
{
  *(*v1 + 41) = a1;

  return MEMORY[0x2822009F8](sub_226F1976C, 0, 0);
}

uint64_t sub_226F10574@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_226F18AA0(a2, a1);
  if (!v3)
  {
    result = sub_22712E580(a2, a1);
    *a3 = result;
  }

  return result;
}

uint64_t sub_226F105C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 32) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960) + 48);

  return MEMORY[0x2822009F8](sub_226F10648, 0, 0);
}

uint64_t sub_226F10648()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v7 = (*(v4 + 48) + **(v4 + 48));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_226F10788;

  return v7(&v2[v1], v3, v4);
}

uint64_t sub_226F10788()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_226F1087C(void *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    type metadata accessor for DirtySyncZone(0);
    v22 = v2;
    sub_226F1950C(&qword_28139B080, type metadata accessor for DirtySyncZone, &unk_22767D880);
    v14 = sub_22766C610();
    v16 = sub_226E97AE8(v14, v15, &v23);
    v20 = v5;
    v17 = a1;
    v18 = v16;

    *(v12 + 4) = v18;
    a1 = v17;
    _os_log_impl(&dword_226E8E000, v9, v10, "Deleting Dirty Zones: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v21 + 8))(v8, v20);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_22712E9A4(a2, a1);
}

uint64_t sub_226F10AC8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766AF20();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F10B94, 0, 0);
}

uint64_t sub_226F10B94()
{
  type metadata accessor for Code(0);
  *(v0 + 16) = 26;
  sub_226F1950C(&qword_281398B78, type metadata accessor for Code, &unk_2276705CC);
  if (sub_227662200())
  {
    __swift_project_boxed_opaque_existential_0((*(v0 + 64) + 136), *(*(v0 + 64) + 160));
    v1 = sub_2276694D0();
    *(v0 + 104) = v1;
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v3 = sub_226F11290;
LABEL_3:
    v2[1] = v3;

    return sub_2274FF638(v1);
  }

  *(v0 + 24) = 28;
  if (sub_227662200())
  {
    v5 = *(v0 + 64);
    v6 = v5[10];
    v7 = v5[11];
    __swift_project_boxed_opaque_existential_0(v5 + 7, v6);
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_226F113DC;

    return MEMORY[0x2821AFC28](v6, v7);
  }

  v9 = *(v0 + 56);
  *(v0 + 32) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v11 = (*(*(v0 + 80) + 88))(*(v0 + 96), *(v0 + 72));
    if (v11 == *MEMORY[0x277D544B8])
    {
      v12 = *(v0 + 96);
      (*(*(v0 + 80) + 96))(v12, *(v0 + 72));
      v13 = *v12;
      *(v0 + 136) = *v12;
      v14 = swift_task_alloc();
      *(v0 + 144) = v14;
      *v14 = v0;
      v14[1] = sub_226F115CC;

      return sub_226F0A70C(v13);
    }

    if (v11 == *MEMORY[0x277D544C0])
    {
      v15 = *(v0 + 96);
      v16 = *(v0 + 64);
      (*(*(v0 + 80) + 96))(v15, *(v0 + 72));
      v1 = *v15;
      *(v0 + 184) = *v15;
      __swift_project_boxed_opaque_existential_0((v16 + 136), *(v16 + 160));
      v2 = swift_task_alloc();
      *(v0 + 192) = v2;
      *v2 = v0;
      v3 = sub_226F118EC;
      goto LABEL_3;
    }

    if (v11 == *MEMORY[0x277D544C8])
    {
      v17 = *(v0 + 96);
      v18 = *(v0 + 64);
      (*(*(v0 + 80) + 96))(v17, *(v0 + 72));
      v19 = *v17;
      *(v0 + 224) = *v17;
      __swift_project_boxed_opaque_existential_0((v18 + 136), *(v18 + 160));
      v20 = swift_task_alloc();
      *(v0 + 232) = v20;
      *v20 = v0;
      v20[1] = sub_226F11C6C;

      return sub_2274FF1C0(v19);
    }

    v21 = *(v0 + 96);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    if (v11 == *MEMORY[0x277D544B0])
    {
      (*(v23 + 96))(*(v0 + 96), v22);
      v24 = *v21;
      *(v0 + 160) = *v21;
      v25 = swift_task_alloc();
      *(v0 + 168) = v25;
      *v25 = v0;
      v26 = sub_226F1175C;
LABEL_27:
      v25[1] = v26;

      return sub_226F15F60(v24);
    }

    (*(v23 + 8))(*(v0 + 96), v22);
  }

  v27 = *(v0 + 56);

  *(v0 + 40) = v27;
  v28 = v27;
  if (swift_dynamicCast() && *(v0 + 328) == 8)
  {
    v24 = sub_2276694D0();
    *(v0 + 264) = v24;
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v26 = sub_226F11FEC;
    goto LABEL_27;
  }

  v29 = *(v0 + 56);

  *(v0 + 48) = v29;
  v30 = v29;
  if (swift_dynamicCast())
  {
    v31 = (*(*(v0 + 80) + 88))(*(v0 + 88), *(v0 + 72));
    v32 = *(v0 + 80);
    v33 = *(v0 + 88);
    v34 = *(v0 + 72);
    if (v31 == *MEMORY[0x277D544A8])
    {
      (*(v32 + 96))(*(v0 + 88), v34);
      v35 = *v33;
      *(v0 + 288) = *v33;
      v36 = swift_task_alloc();
      *(v0 + 296) = v36;
      *v36 = v0;
      v36[1] = sub_226F1217C;

      return sub_226F16950(v35);
    }

    (*(v32 + 8))(*(v0 + 88), v34);
  }

  v37 = *(v0 + 56);

  swift_willThrow();
  v38 = v37;

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_226F11290()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226F113DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 128) = a1;

    return MEMORY[0x2822009F8](sub_226F11538, 0, 0);
  }
}

uint64_t sub_226F11538()
{
  v1 = *(v0 + 128);
  [v1 setEnabled:0 forDataclass:*MEMORY[0x277CB8990]];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226F115CC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_226F12480;
  }

  else
  {
    v2 = sub_226F116E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F116E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F1175C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_226F124FC;
  }

  else
  {
    v2 = sub_226F11870;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F11870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F118EC()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F11B7C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_226F11A68;
    v4 = v2[23];

    return sub_226F0A70C(v4);
  }
}

uint64_t sub_226F11A68()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226F12578;
  }

  else
  {
    v2 = sub_226F11BF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F11B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F11BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F11C6C()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F11EFC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[31] = v3;
    *v3 = v2;
    v3[1] = sub_226F11DE8;
    v4 = v2[28];

    return sub_226F0A70C(v4);
  }
}

uint64_t sub_226F11DE8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_226F125F4;
  }

  else
  {
    v2 = sub_226F11F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F11EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F11F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F11FEC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_226F12670;
  }

  else
  {

    v2 = sub_226F12108;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F12108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F1217C()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F126EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[39] = v3;
    *v3 = v2;
    v3[1] = sub_226F122F0;
    v4 = v2[36];

    return sub_226F0A70C(v4);
  }
}

uint64_t sub_226F122F0()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226F12768;
  }

  else
  {
    v2 = sub_226F12404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F12404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F124FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F125F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F126EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F127E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B390();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F128A8, 0, 0);
}

uint64_t sub_226F128A8()
{
  sub_226F0E468();
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_22766A6B0();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v4 + 96), *(v4 + 120));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_226F12A10;
  v6 = v0[2];
  v7 = v0[3];

  return sub_227068234(v6, v7);
}

uint64_t sub_226F12A10()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    *(v2 + 80) = v4;
    *v4 = v3;
    v4[1] = sub_226F12B94;

    return sub_226F10AC8(v0);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_226F12B94()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F12E88, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_226F12D08;
    v4 = v2[3];
    v5 = v2[2];

    return sub_226F127E4(v5, v4);
  }
}

uint64_t sub_226F12D08()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F12EF4;
  }

  else
  {
    v2 = sub_226F12E1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F12E1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F12F60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_226F12F80, 0, 0);
}

uint64_t sub_226F12F80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[32];
  v4 = v1[33];
  __swift_project_boxed_opaque_existential_0(v1 + 29, v3);
  v5 = swift_allocObject();
  v0[5] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v4 + 24);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
  *v7 = v0;
  v7[1] = sub_226F13124;

  return (v10)(v0 + 2, sub_226F19718, v5, v8, v3, v4);
}

uint64_t sub_226F13124()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_226F13354;
  }

  else
  {

    v2 = sub_226F13240;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F13240()
{
  v1 = v0[3];
  v2 = sub_226F0E778(v0[2], type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow);

  v3 = sub_226F3E1C0(v2);

  sub_227035184(v3, v1);
  LOBYTE(v1) = v4;

  if ((v1 & 1) == 0)
  {
    sub_226F1893C();
    swift_allocError();
    *v6 = 17;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_226F13354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F133B8()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8488, &qword_227670A60);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = type metadata accessor for SyncSubmissionChangeset(0);
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v4 = sub_2276694E0();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v5 = sub_22766B390();
  v1[51] = v5;
  v1[52] = *(v5 - 8);
  v1[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F135C8, 0, 0);
}

uint64_t sub_226F135C8()
{
  sub_226F0E468();
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_226F136E4;

  return sub_226F0F10C();
}

uint64_t sub_226F136E4(char a1)
{
  *(*v1 + 608) = a1;

  return MEMORY[0x2822009F8](sub_226F137E4, 0, 0);
}

uint64_t sub_226F137E4(uint64_t a1)
{
  v3 = v1[52];
  v2 = v1[53];
  v4 = v1[51];
  v5 = v1[37];
  sub_22766A6B0();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = *(v5 + 352);
  v1[55] = v6;
  v1[35] = v6;

  v7 = swift_task_alloc();
  v1[56] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8490, &qword_227670A70);
  v9 = sub_226E9CFD0(&qword_281399160, &qword_27D7B8490, &qword_227670A70, MEMORY[0x277D834C8]);
  *v7 = v1;
  v7[1] = sub_226F1397C;

  return MEMORY[0x2821AFB00](5, &unk_227670A68, 0, v8, v9);
}

uint64_t sub_226F1397C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_226F154C0;
  }

  else
  {
    v4 = sub_226F13AA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_226F13AA0()
{
  v1 = *(v0 + 456);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = v5;
      v7 = *(v0 + 608);
      sub_226E91B50(v4, v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v8);
      if ((*(v9 + 24))(v7, v8, v9))
      {
        sub_226E92AB8((v0 + 16), v0 + 56);
        v5 = v6;
        v52 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F0D0(0, *(v6 + 16) + 1, 1);
          v5 = v6;
        }

        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_226F1F0D0((v10 > 1), v11 + 1, 1);
          v5 = v52;
        }

        *(v5 + 16) = v11 + 1;
        sub_226E92AB8((v0 + 56), v5 + 40 * v11 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v5 = v6;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_14:

  v46 = *(v5 + 16);
  if (v46)
  {
    v12 = 0;
    v44 = v5 + 32;
    v42 = *(v0 + 376);
    v49 = (v42 + 8);
    v43 = MEMORY[0x277D84F90];
    v45 = v5;
    while (v12 < *(v5 + 16))
    {
      v47 = v12;
      sub_226E91B50(v44 + 40 * v12, v0 + 96);
      v15 = sub_2276694D0();
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_0((v0 + 96), v16);
      (*(v17 + 32))(v16, v17);
      v51 = v15;
      if (*(v15 + 16) && (sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]), v18 = sub_22766BF50(), v19 = -1 << *(v15 + 32), v20 = v18 & ~v19, v48 = v15 + 56, ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        v22 = *(v42 + 72);
        v23 = *(v42 + 16);
        while (1)
        {
          v24 = *(v0 + 392);
          v25 = v0;
          v26 = *(v0 + 368);
          v23(v24, *(v51 + 48) + v20 * v22, v26);
          sub_226F1950C(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
          v27 = sub_22766BFB0();
          v28 = *v49;
          (*v49)(v24, v26);
          if (v27)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v48 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v29 = *(v0 + 400);
        v30 = *(v0 + 368);

        v28(v29, v30);
        sub_226E92AB8((v0 + 96), v0 + 136);
        v31 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F0D0(0, *(v43 + 16) + 1, 1);
          v31 = v43;
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_226F1F0D0((v32 > 1), v33 + 1, 1);
          v31 = v43;
        }

        *(v31 + 16) = v33 + 1;
        v43 = v31;
        v34 = v31 + 40 * v33;
        v0 = v25;
        sub_226E92AB8((v25 + 136), v34 + 32);
      }

      else
      {
LABEL_16:
        v13 = *(v0 + 400);
        v14 = *(v0 + 368);

        (*v49)(v13, v14);
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      }

      v12 = v47 + 1;
      v5 = v45;
      if (v47 + 1 == v46)
      {
        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
    return;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_31:
  v35 = *(v0 + 296);

  v36 = v35[32];
  v37 = v35[33];
  __swift_project_boxed_opaque_existential_0(v35 + 29, v36);
  v38 = swift_allocObject();
  *(v0 + 472) = v38;
  *(v38 + 16) = v35;
  *(v38 + 24) = v43;
  v39 = *(v37 + 24);

  v50 = (v39 + *v39);
  v40 = swift_task_alloc();
  *(v0 + 480) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8498, &qword_227670A78);
  *v40 = v0;
  v40[1] = sub_226F140A8;

  v50(v0 + 288, sub_226F19554, v38, v41, v36, v37);
}

uint64_t sub_226F140A8()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_226F1555C;
  }

  else
  {

    v2 = sub_226F141C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_226F141C4()
{
  v1 = v0[36];
  v2 = MEMORY[0x277D84F90];
  v38 = *(v1 + 16);
  if (v38)
  {
    v3 = 0;
    v4 = v0[42];
    v37 = v0[41];
    v5 = MEMORY[0x277D84F90];
    v36 = v0[36];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v6 = v0[45];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_226F19570(v1 + v7 + v8 * v3, v6, type metadata accessor for SyncSubmissionChangeset);
      v9 = (v6 + *(v37 + 24));
      v10 = v9[1];
      if ((*v9 & 0xC000000000000001) != 0)
      {
        if (sub_22766CD20())
        {
          goto LABEL_14;
        }
      }

      else if (*(*v9 + 16))
      {
        goto LABEL_14;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        if (sub_22766CD20())
        {
          goto LABEL_14;
        }
      }

      else if (*(v10 + 16))
      {
LABEL_14:
        sub_226F195D8(v0[45], v0[44], type metadata accessor for SyncSubmissionChangeset);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F0B0(0, *(v5 + 16) + 1, 1);
        }

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_226F1F0B0((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[44];
        *(v5 + 16) = v12 + 1;
        sub_226F195D8(v13, v5 + v7 + v12 * v8, type metadata accessor for SyncSubmissionChangeset);
        v1 = v36;
        goto LABEL_4;
      }

      sub_226F19640(v0[45], type metadata accessor for SyncSubmissionChangeset);
LABEL_4:
      if (v38 == ++v3)
      {
        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v0[62] = v5;

  v14 = *(v5 + 16);
  if (v14)
  {
    v15 = v0[42];
    v39 = v0[41];
    sub_226F1F090(0, v14, 0);
    v16 = v5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      v18 = v0[43];
      sub_226F19570(v16, v18, type metadata accessor for SyncSubmissionChangeset);
      v19 = (v18 + *(v39 + 24));
      if ((*v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_22766CD20();
      }

      else
      {
        v20 = *(*v19 + 16);
      }

      v21 = v19[1];
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = sub_22766CD20();
        v23 = v20 + v22;
        if (__OFADD__(v20, v22))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v24 = *(v21 + 16);
        v23 = v20 + v24;
        if (__OFADD__(v20, v24))
        {
          goto LABEL_49;
        }
      }

      sub_226F19640(v0[43], type metadata accessor for SyncSubmissionChangeset);
      v26 = *(v2 + 16);
      v25 = *(v2 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_226F1F090((v25 > 1), v26 + 1, 1);
      }

      *(v2 + 16) = v27;
      *(v2 + 8 * v26 + 32) = v23;
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v27 = *(v2 + 16);
    if (!v27)
    {

LABEL_44:
      sub_226F1893C();
      v33 = swift_allocError();
      *v34 = 5;
      swift_willThrow();
      v0[71] = v33;
      v35 = swift_task_alloc();
      v0[72] = v35;
      *v35 = v0;
      v35[1] = sub_226F15170;

      sub_226F10AC8(v33);
      return;
    }
  }

  v28 = 0;
  v29 = 32;
  do
  {
    v30 = *(v2 + v29);
    v31 = __OFADD__(v28, v30);
    v28 += v30;
    if (v31)
    {
      __break(1u);
      goto LABEL_48;
    }

    v29 += 8;
    --v27;
  }

  while (v27);

  if (v28 <= 0)
  {

    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_0((v0[37] + 96), *(v0[37] + 120));
  v32 = swift_task_alloc();
  v0[63] = v32;
  *v32 = v0;
  v32[1] = sub_226F1468C;

  sub_227068890(v5);
}

uint64_t sub_226F1468C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 512) = a1;

  if (v1)
  {

    *(v3 + 568) = v1;
    v5 = swift_task_alloc();
    *(v3 + 576) = v5;
    *v5 = v4;
    v5[1] = sub_226F15170;

    return sub_226F10AC8(v1);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226F14824, 0, 0);
  }
}

uint64_t sub_226F14824()
{
  result = *(v0 + 512);
  v2 = *(result + 16);
  *(v0 + 520) = v2;
  if (v2)
  {
    v3 = *(v0 + 376);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    *(v0 + 528) = 0;
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    sub_226E93170(result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v8, &qword_27D7B8488, &qword_227670A60);
    v10 = (v8 + *(v5 + 48));
    v11 = *v10;
    *(v0 + 536) = *v10;
    v12 = v10[1];
    *(v0 + 544) = v12;
    v13 = v10[2];
    (*(v3 + 32))(v6, v8, v7);
    v14 = *(v9 + 352);
    if (*(v14 + 16))
    {
      v15 = *(v0 + 384);

      v16 = sub_226F39E30(v15);
      if (v17)
      {
        v19 = *(v0 + 376);
        v18 = *(v0 + 384);
        v20 = *(v0 + 368);
        sub_226E91B50(*(v14 + 56) + 40 * v16, v0 + 216);
        (*(v19 + 8))(v18, v20);

        sub_226E92AB8((v0 + 216), v0 + 176);
        v21 = *(v0 + 200);
        v22 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_0((v0 + 176), v21);
        v32 = (*(v22 + 40) + **(v22 + 40));
        v23 = swift_task_alloc();
        *(v0 + 552) = v23;
        *v23 = v0;
        v23[1] = sub_226F14C00;
        v24.n128_u64[0] = v13;

        return v32(v11, v12, v21, v22, v24);
      }
    }

    v27 = *(v0 + 376);
    v26 = *(v0 + 384);
    v28 = *(v0 + 368);

    (*(v27 + 8))(v26, v28);
    sub_226F1893C();
    v29 = swift_allocError();
    *v30 = 11;
    swift_willThrow();
    *(v0 + 568) = v29;
    v31 = swift_task_alloc();
    *(v0 + 576) = v31;
    *v31 = v0;
    v31[1] = sub_226F15170;

    return sub_226F10AC8(v29);
  }

  else
  {

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_226F14C00()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_226F15600;
  }

  else
  {
    v2 = sub_226F14D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F14D74()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 528) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  if (v2 == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  v5 = *(v0 + 528) + 1;
  *(v0 + 528) = v5;
  v6 = *(v0 + 512);
  if (v5 >= *(v6 + 16))
  {
    __break(1u);
    return result;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(v0 + 368);
  v10 = *(v0 + 320);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  sub_226E93170(v6 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)) + *(*(v0 + 312) + 72) * v5, v10, &qword_27D7B8488, &qword_227670A60);
  v13 = (v10 + *(v11 + 48));
  v14 = *v13;
  *(v0 + 536) = *v13;
  v15 = v13[1];
  *(v0 + 544) = v15;
  v16 = v13[2];
  (*(v8 + 32))(v7, v10, v9);
  v17 = *(v12 + 352);
  if (*(v17 + 16))
  {
    v18 = *(v0 + 384);

    v19 = sub_226F39E30(v18);
    if (v20)
    {
      v22 = *(v0 + 376);
      v21 = *(v0 + 384);
      v23 = *(v0 + 368);
      sub_226E91B50(*(v17 + 56) + 40 * v19, v0 + 216);
      (*(v22 + 8))(v21, v23);

      sub_226E92AB8((v0 + 216), v0 + 176);
      v24 = *(v0 + 200);
      v25 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v24);
      v34 = (*(v25 + 40) + **(v25 + 40));
      v26 = swift_task_alloc();
      *(v0 + 552) = v26;
      *v26 = v0;
      v26[1] = sub_226F14C00;
      v27.n128_u64[0] = v16;

      return v34(v14, v15, v24, v25, v27);
    }
  }

  v29 = *(v0 + 376);
  v28 = *(v0 + 384);
  v30 = *(v0 + 368);

  (*(v29 + 8))(v28, v30);
  sub_226F1893C();
  v31 = swift_allocError();
  *v32 = 11;
  swift_willThrow();
  *(v0 + 568) = v31;
  v33 = swift_task_alloc();
  *(v0 + 576) = v33;
  *v33 = v0;
  v33[1] = sub_226F15170;

  return sub_226F10AC8(v31);
}

uint64_t sub_226F15170()
{
  v2 = *v1;
  *(v2 + 584) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F156A4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 592) = v3;
    *v3 = v2;
    v3[1] = sub_226F152DC;

    return sub_226F133B8();
  }
}

uint64_t sub_226F152DC()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_226F15780;
  }

  else
  {
    v2 = sub_226F153F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F153F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F154C0()
{
  v1 = v0[58];
  v0[71] = v1;
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_226F15170;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F1555C()
{

  v1 = v0[61];
  v0[71] = v1;
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_226F15170;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F15600()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[70];
  v0[71] = v1;
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_226F15170;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F156A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F15780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F1587C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_226F159A0;

  return v6(v2, v3);
}

uint64_t sub_226F159A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226F15AA0@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v48 = a2;
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276694D0();
  sub_226F18AA0(v13, a1);

  if (!v3)
  {
    v45 = a1;
    v46 = 0;
    v49 = v5;
    v15 = v47;
    sub_22766A6B0();

    v16 = sub_22766B380();
    v17 = sub_22766C8B0();

    if (os_log_type_enabled(v16, v17))
    {
      v41 = v17;
      v42 = v16;
      v43 = v10;
      v44 = v9;
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v39;
      v40 = v18;
      *v18 = 136315138;
      v19 = *(v48 + 16);
      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
        v38 = v12;
        v53 = MEMORY[0x277D84F90];
        sub_226F1EF50(0, v19, 0);
        v20 = v53;
        v21 = v48 + 32;
        do
        {
          sub_226E91B50(v21, v50);
          v22 = v51;
          v23 = v52;
          __swift_project_boxed_opaque_existential_0(v50, v51);
          (*(v23 + 32))(v22, v23);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v53 = v20;
          v25 = *(v20 + 16);
          v24 = *(v20 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_226F1EF50((v24 > 1), v25 + 1, 1);
            v20 = v53;
          }

          *(v20 + 16) = v25 + 1;
          (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v8, v49);
          v21 += 40;
          --v19;
        }

        while (v19);
        v15 = v47;
        v27 = v48;
        v28 = v45;
        v12 = v38;
        v29 = v49;
      }

      else
      {
        v27 = v48;
        v29 = v49;
        v28 = v45;
      }

      v30 = MEMORY[0x22AA98660](v20, v29);
      v32 = v31;

      v33 = sub_226E97AE8(v30, v32, &v54);

      v34 = v40;
      *(v40 + 1) = v33;
      v35 = v42;
      _os_log_impl(&dword_226E8E000, v42, v41, "Fetching %s changesets from local db.", v34, 0xCu);
      v36 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      v26 = (*(v43 + 8))(v12, v44);
    }

    else
    {

      v26 = (*(v10 + 8))(v12, v9);
      v27 = v48;
      v28 = v45;
    }

    MEMORY[0x28223BE20](v26);
    *(&v38 - 2) = v28;
    v37 = v46;
    result = sub_2275F1438(sub_226F196A0, (&v38 - 4), v27);
    if (!v37)
    {
      *v15 = result;
    }
  }

  return result;
}

uint64_t sub_226F15EDC(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  result = (*(v7 + 56))(a2, v6, v7);
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_226F15F60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F16020, 0, 0);
}

uint64_t sub_226F16020()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 96), *(v0[3] + 120));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_226F160C8;
  v2 = v0[2];

  return sub_22706A37C(v2);
}

uint64_t sub_226F160C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v3[13] = v1;
    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v4;
    v5[1] = sub_226F166BC;

    return sub_226F10AC8(v1);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226F16250, 0, 0);
  }
}

uint64_t sub_226F16250(uint64_t a1)
{
  v26 = v1;
  sub_22766A6B0();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[8];
    v5 = v1[5];
    v24 = v1[6];
    v6 = v1[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    sub_226F0EB24(v4);
    v9 = MEMORY[0x22AA98660]();
    v11 = v10;

    v12 = sub_226E97AE8(v9, v11, &v25);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Got keys for %{public}s. Saving.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v24, v6);
  }

  else
  {
    v14 = v1[5];
    v13 = v1[6];
    v15 = v1[4];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v1[8];
  v17 = v1[3];
  v18 = v17[33];
  __swift_project_boxed_opaque_existential_0(v17 + 29, v17[32]);
  v19 = swift_allocObject();
  v1[10] = v19;
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;
  v20 = *(v18 + 24);

  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  v1[11] = v21;
  *v21 = v1;
  v21[1] = sub_226F1653C;

  return v23();
}

uint64_t sub_226F1653C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226F1683C;
  }

  else
  {

    v2 = sub_226F16658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F16658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F166BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226F168E0;
  }

  else
  {
    v2 = sub_226F167D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F167D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F1683C()
{

  v1 = v0[12];
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_226F166BC;

  return sub_226F10AC8(v1);
}

uint64_t sub_226F168E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F16950(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_2276694E0();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F16A6C, 0, 0);
}

uint64_t sub_226F16A6C(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  sub_22766A6B0();
  sub_22766B370();
  (*(v2 + 8))(v3, v4);
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 56);
  v31 = v6;

  result = swift_beginAccess();
  v13 = 0;
  v14 = (63 - v9) >> 6;
  v15 = (v5 + 8);
  v32 = MEMORY[0x277D84F90];
  v30 = v7;
  if (!v11)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v5 + 16))(*(v1 + 152), *(v31 + 48) + *(v5 + 72) * (v17 | (v13 << 6)), *(v1 + 136));
      v18 = *(v7 + 352);
      if (!*(v18 + 16))
      {
        goto LABEL_7;
      }

      v19 = *(v1 + 152);

      v20 = sub_226F39E30(v19);
      if (v21)
      {
        break;
      }

LABEL_7:
      result = (*v15)(*(v1 + 152), *(v1 + 136));
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v1 + 152);
    v23 = *(v1 + 136);
    sub_226E91B50(*(v18 + 56) + 40 * v20, v1 + 56);
    (*v15)(v22, v23);

    sub_226E92AB8((v1 + 56), v1 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2273A4CC4(0, v32[2] + 1, 1, v32);
    }

    v25 = v32[2];
    v24 = v32[3];
    v7 = v30;
    if (v25 >= v24 >> 1)
    {
      v32 = sub_2273A4CC4((v24 > 1), v25 + 1, 1, v32);
    }

    v32[2] = v25 + 1;
    result = sub_226E92AB8((v1 + 16), &v32[5 * v25 + 4]);
  }

  while (v11);
  while (1)
  {
LABEL_8:
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v14)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_12;
    }
  }

  v26 = *(v1 + 128);

  v27 = v26[33];
  __swift_project_boxed_opaque_existential_0(v26 + 29, v26[32]);
  v28 = swift_allocObject();
  *(v1 + 184) = v28;
  *(v28 + 16) = v32;
  v33 = (*(v27 + 24) + **(v27 + 24));
  v29 = swift_task_alloc();
  *(v1 + 192) = v29;
  *v29 = v1;
  v29[1] = sub_226F16E58;

  return v33();
}

uint64_t sub_226F16E58()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_226F16FE4;
  }

  else
  {

    v2 = sub_226F16F74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F16F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F16FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F1705C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 32;
    do
    {
      sub_226E91B50(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 72))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      if (v2)
      {
        break;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_226F17110(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 32;
    do
    {
      sub_226E91B50(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 64))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      if (v2)
      {
        break;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_226F171C4(void *a1, unint64_t a2)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();

  v11 = sub_22766B380();
  v12 = sub_22766C8B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a1;
    v14 = v13;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v14 = 136446210;
    sub_2276694E0();
    v31 = v4;
    sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v15 = sub_22766C610();
    v17 = sub_226E97AE8(v15, v16, &v34);
    v28 = a2;
    v18 = v7;
    v19 = v5;
    v20 = v17;
    v4 = v31;

    *(v14 + 4) = v20;
    v5 = v19;
    v7 = v18;
    _os_log_impl(&dword_226E8E000, v11, v12, "Marking %{public}s as dirty.", v14, 0xCu);
    v21 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA9A450](v21, -1, -1);
    v22 = v14;
    a1 = v30;
    MEMORY[0x22AA9A450](v22, -1, -1);

    v23 = v10;
    v24 = v28;
    (*(v32 + 8))(v23, v33);
  }

  else
  {

    (*(v32 + 8))(v10, v33);
    v24 = a2;
  }

  sub_227662740();
  v25 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x28223BE20](v25);
  *(&v28 - 2) = v7;
  sub_2275F1924(sub_226F18A80, (&v28 - 4), v24);
  sub_227555420(v26, v25[1], *(v25 + 16), v25[3]);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_226F17554(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

unint64_t *sub_226F17670(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226F17950(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_226F1770C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226F181E8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_226F177A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226F17854;

  return sub_226F0FB98(a1, v4, v5);
}

uint64_t sub_226F17854(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226F17950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v48 = sub_2276694E0();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v39 = a4;
  result = swift_beginAccess();
  v18 = 0;
  v19 = (v14 + 63) >> 6;
  v36 = 0;
  v37 = v8 + 16;
  v38 = v8;
  v40 = (v8 + 8);
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v23 = v20 | (v18 << 6);
    (*(v38 + 16))(v10, *(v41 + 48) + *(v38 + 72) * v23, v48);
    v24 = *(v39 + 352);
    if (!*(v24 + 16))
    {
      goto LABEL_19;
    }

    v25 = sub_226F39E30(v10);
    if (v26)
    {
      sub_226E91B50(*(v24 + 56) + 40 * v25, &v45);

      if (!*(&v46 + 1))
      {
        goto LABEL_20;
      }

      sub_226E91B50(&v45, v42);
      sub_226E97D1C(&v45, &qword_27D7B8450, &qword_227682050);
      v33 = v5;
      v27 = v43;
      v28 = v44;
      __swift_project_boxed_opaque_existential_0(v42, v43);
      v29 = *(v28 + 16);
      v30 = v28;
      v5 = v33;
      LOBYTE(v27) = v29(v27, v30);
      __swift_destroy_boxed_opaque_existential_0(v42);
      result = (*v40)(v10, v48);
      if (v27)
      {
        *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v36++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {

LABEL_19:
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
LABEL_20:
      sub_226E97D1C(&v45, &qword_27D7B8450, &qword_227682050);
      result = (*v40)(v10, v48);
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      v32 = v41;

      return sub_227268FCC(v35, v34, v36, v32);
    }

    v22 = *(v12 + 8 * v18);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v16 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_226F17C84(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v39 = sub_2276694E0();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v32 = v7;
    v31[1] = v31;
    MEMORY[0x28223BE20](v9);
    v34 = v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & *(a1 + 56);
    swift_beginAccess();
    v12 = 0;
    v13 = (v8 + 63) >> 6;
    v37 = v4 + 16;
    v38 = v4;
    v35 = 0;
    v36 = (v4 + 8);
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = v14 | (v12 << 6);
      v4 = a1;
      (*(v38 + 16))(v40, *(a1 + 48) + *(v38 + 72) * v17, v39);
      v18 = *(a2 + 352);
      if (!*(v18 + 16))
      {
        goto LABEL_20;
      }

      v19 = sub_226F39E30(v40);
      if (v20)
      {
        sub_226E91B50(*(v18 + 56) + 40 * v19, &v44);

        if (!*(&v45 + 1))
        {
          goto LABEL_21;
        }

        sub_226E91B50(&v44, v41);
        sub_226E97D1C(&v44, &qword_27D7B8450, &qword_227682050);
        v31[0] = a2;
        v21 = v42;
        v22 = v43;
        __swift_project_boxed_opaque_existential_0(v41, v42);
        v23 = *(v22 + 16);
        v24 = v22;
        a2 = v31[0];
        v8 = v23(v21, v24);
        __swift_destroy_boxed_opaque_existential_0(v41);
        (*v36)(v40, v39);
        a1 = v4;
        if (v8)
        {
          *&v34[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

LABEL_20:
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
LABEL_21:
        sub_226E97D1C(&v44, &qword_27D7B8450, &qword_227682050);
        (*v36)(v40, v39);
        a1 = v4;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        v26 = sub_227268FCC(v34, v32, v35, a1);

        return v26;
      }

      v16 = *(v7 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v28 = a1;
  v29 = swift_slowAlloc();

  v30 = v33;
  v26 = sub_226F17670(v29, v7, v28, a2);

  MEMORY[0x22AA9A450](v29, -1, -1);

  v33 = v30;
  return v26;
}

uint64_t sub_226F18108@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226F1813C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226F19768;

  return sub_226F103D4(a1, v4, v5);
}

uint64_t sub_226F181E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a1;
  v8 = type metadata accessor for DirtySyncZone(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v45 = a4;
  result = swift_beginAccess();
  v37 = 0;
  v16 = 0;
  v17 = (v12 + 63) >> 6;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v16 << 6);
    sub_226F19570(*(a3 + 48) + *(v38 + 72) * v21, v10, type metadata accessor for DirtySyncZone);
    v22 = *(v45 + 352);
    if (!*(v22 + 16))
    {
      goto LABEL_19;
    }

    v23 = sub_226F39E30(v10);
    if (v24)
    {
      sub_226E91B50(*(v22 + 56) + 40 * v23, &v42);

      if (!*(&v43 + 1))
      {
        goto LABEL_20;
      }

      sub_226E91B50(&v42, v39);
      sub_226E97D1C(&v42, &qword_27D7B8450, &qword_227682050);
      v33 = a3;
      v34 = v5;
      v25 = v40;
      v26 = v41;
      __swift_project_boxed_opaque_existential_0(v39, v40);
      v27 = *(v26 + 16);
      v28 = v25;
      v29 = v26;
      a3 = v33;
      v5 = v34;
      v30 = v27(v28, v29);
      __swift_destroy_boxed_opaque_existential_0(v39);
      result = sub_226F19640(v10, type metadata accessor for DirtySyncZone);
      if (v30)
      {
        *(v36 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (__OFADD__(v37++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {

LABEL_19:
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
LABEL_20:
      sub_226E97D1C(&v42, &qword_27D7B8450, &qword_227682050);
      result = sub_226F19640(v10, type metadata accessor for DirtySyncZone);
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= v17)
    {

      return sub_2272692F4(v36, v35, v37, a3);
    }

    v20 = *(v11 + 8 * v16);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_226F184E8(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DirtySyncZone(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v33 = &v31;
    v34 = v7;
    MEMORY[0x28223BE20](v9);
    v36 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v8);
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & *(a1 + 56);
    swift_beginAccess();
    v37 = 0;
    v12 = 0;
    v13 = (v8 + 63) >> 6;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = v14 | (v12 << 6);
      v18 = a1;
      sub_226F19570(*(a1 + 48) + *(v38 + 72) * v17, v39, type metadata accessor for DirtySyncZone);
      v19 = *(a2 + 352);
      if (!*(v19 + 16))
      {
        goto LABEL_20;
      }

      v20 = sub_226F39E30(v39);
      if (v21)
      {
        sub_226E91B50(*(v19 + 56) + 40 * v20, &v43);

        if (!*(&v44 + 1))
        {
          goto LABEL_21;
        }

        sub_226E91B50(&v43, v40);
        sub_226E97D1C(&v43, &qword_27D7B8450, &qword_227682050);
        v32 = a2;
        v23 = v41;
        v22 = v42;
        __swift_project_boxed_opaque_existential_0(v40, v41);
        v24 = v23;
        a2 = v32;
        v8 = (*(v22 + 16))(v24, v22);
        __swift_destroy_boxed_opaque_existential_0(v40);
        sub_226F19640(v39, type metadata accessor for DirtySyncZone);
        a1 = v18;
        if (v8)
        {
          *&v36[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

LABEL_20:
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
LABEL_21:
        sub_226E97D1C(&v43, &qword_27D7B8450, &qword_227682050);
        sub_226F19640(v39, type metadata accessor for DirtySyncZone);
        a1 = v18;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        v26 = sub_2272692F4(v36, v34, v37, a1);

        return v26;
      }

      v16 = *(v7 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v28 = a1;
  v29 = swift_slowAlloc();

  v30 = v35;
  v26 = sub_226F1770C(v29, v7, v28, a2);

  MEMORY[0x22AA9A450](v29, -1, -1);

  v35 = v30;
  return v26;
}

unint64_t sub_226F1893C()
{
  result = qword_281399240[0];
  if (!qword_281399240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281399240);
  }

  return result;
}

uint64_t sub_226F18990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_226F18AA0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v59 - v6;
  v70 = sub_2276694E0();
  v64 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v17 = swift_allocObject();
  v18 = v13;
  v19 = v14;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  swift_getKeyPath();
  v63 = a1;
  v20 = sub_226F0EE04(a1);
  v69[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v69[0] = v20;
  sub_226F06498();

  v21 = sub_22766C820();
  sub_226E93170(v69, v67, &unk_27D7BC990, &qword_227670A30);
  v22 = v68;
  v65 = v2;
  if (v68)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x28223BE20](v23);
    v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v69, &unk_27D7BC990, &qword_227670A30);
  v30 = &qword_2813B2078;
  swift_beginAccess();
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  v34 = v66;
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_26:
    sub_22766C360();
  }

  sub_22766C3A0();
  (v31)(v69, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v36 = v65;
  sub_2273FC6D0(KeyPath);
  if (v36)
  {

    swift_setDeallocating();

    v38 = *v30;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v17 + v38, v39);
    return swift_deallocClassInstance();
  }

  else
  {
    v31 = sub_226F3E6A8(v37);

    swift_setDeallocating();

    v41 = *v30;
    v42 = sub_22766A100();
    (*(*(v42 - 8) + 8))(v17 + v41, v42);
    swift_deallocClassInstance();
    v30 = (v31 + 56);
    v43 = 1 << *(v31 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v31 + 56);
    v46 = (v43 + 63) >> 6;
    v47 = (v64 + 48);
    v61 = (v64 + 32);

    v48 = 0;
    v65 = MEMORY[0x277D84F90];
    while (v45)
    {
      v17 = v48;
LABEL_15:
      v45 &= v45 - 1;

      sub_2276694B0();
      if ((*v47)(v34, 1, v70) == 1)
      {
        sub_226E97D1C(v34, &qword_27D7B8460, qword_2276709E0);
        v48 = v17;
      }

      else
      {
        v60 = *v61;
        v60(v62, v34, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_2273A4E0C(0, v65[2] + 1, 1, v65);
        }

        v50 = v65[2];
        v49 = v65[3];
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v59 = v50 + 1;
          v54 = sub_2273A4E0C((v49 > 1), v50 + 1, 1, v65);
          v51 = v59;
          v65 = v54;
        }

        v52 = v64;
        v53 = v65;
        v65[2] = v51;
        v60(&v53[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50], v62, v70);
        v48 = v17;
      }
    }

    while (1)
    {
      v17 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v17 >= v46)
      {
        break;
      }

      v45 = v30[v17];
      ++v48;
      if (v45)
      {
        goto LABEL_15;
      }
    }

    v55 = v63;

    v56 = sub_227006648(v65, v55);

    if (*(v56 + 16))
    {
      v57 = sub_22766AF20();
      sub_226F1950C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
      swift_allocError();
      *v58 = v56;
      (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D544B0], v57);
      return swift_willThrow();
    }

    else
    {
    }
  }
}

void sub_226F193CC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275544A0(v2, v3[1], *(v3 + 16), v3[3]);
}

unint64_t sub_226F19410()
{
  result = qword_27D7B8458;
  if (!qword_27D7B8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8458);
  }

  return result;
}

unint64_t sub_226F19464()
{
  result = qword_27D7BB8E0;
  if (!qword_27D7BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB8E0);
  }

  return result;
}

uint64_t sub_226F1950C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F19570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F195D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F19640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_41Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

char *sub_226F19718@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22712E580(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_226F19774(uint64_t a1)
{
  v62 = sub_2276658E0();
  v2 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227665BB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v52 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    v38 = *(MEMORY[0x277D84F90] + 16);
    if (!v38)
    {
LABEL_51:

      return;
    }

LABEL_34:
    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v40 >= *(v13 + 16))
      {
        goto LABEL_56;
      }

      v42 = v13;
      v43 = *(v13 + 8 * v40 + 32);
      v44 = *(v43 + 16);
      v45 = v41[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        goto LABEL_57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v46 <= v41[3] >> 1)
      {
        if (!*(v43 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v41 = sub_2273A4E34(isUniquelyReferenced_nonNull_native, v48, 1, v41);
        if (!*(v43 + 16))
        {
LABEL_35:

          if (v44)
          {
            goto LABEL_58;
          }

          goto LABEL_36;
        }
      }

      v49 = (v41[3] >> 1) - v41[2];
      sub_2276640B0();
      if (v49 < v44)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v44)
      {
        v50 = v41[2];
        v33 = __OFADD__(v50, v44);
        v51 = v50 + v44;
        if (v33)
        {
          goto LABEL_60;
        }

        v41[2] = v51;
      }

LABEL_36:
      ++v40;
      v13 = v42;
      if (v38 == v40)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
  v52[1] = v9;
  sub_226F1F110(0, v11, 0);
  v12 = 0;
  v13 = v64;
  v58 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v61 = v2 + 16;
  v52[0] = v2;
  v14 = (v2 + 8);
  v15 = *(v6 + 72);
  v56 = v11;
  v57 = v15;
  v16 = v53;
  while (1)
  {
    v59 = v12;
    v17 = v60;
    sub_226F19D3C(v58 + v57 * v12, v60);
    sub_226F19D3C(v17, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v35 = sub_2276685C0();
        (*(*(v35 - 8) + 8))(v16, v35);
      }

      sub_226F19DA0(v60);
      v23 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    sub_226F19DA0(v60);
    v23 = *v16;
LABEL_29:
    v64 = v13;
    v37 = *(v13 + 16);
    v36 = *(v13 + 24);
    v38 = v37 + 1;
    v39 = v59;
    if (v37 >= v36 >> 1)
    {
      sub_226F1F110((v36 > 1), v37 + 1, 1);
      v39 = v59;
      v13 = v64;
    }

    v12 = v39 + 1;
    *(v13 + 16) = v38;
    *(v13 + 8 * v37 + 32) = v23;
    if (v12 == v56)
    {
      goto LABEL_34;
    }
  }

  v19 = *v16;
  v20 = *(*v16 + 16);
  if (!v20)
  {

    v23 = MEMORY[0x277D84F90];
LABEL_28:
    sub_226F19DA0(v60);
    goto LABEL_29;
  }

  v54 = *v16;
  v55 = v13;
  v21 = v19 + ((*(v52[0] + 80) + 32) & ~*(v52[0] + 80));
  v63 = *(v52[0] + 72);
  v22 = *(v52[0] + 16);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v62;
    v22(v4, v21, v62);
    v25 = sub_2276658C0();
    (*v14)(v4, v24);
    v26 = *(v25 + 16);
    v27 = v23[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      break;
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    if (v29 && v28 <= v23[3] >> 1)
    {
      if (*(v25 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v30 = v27 + v26;
      }

      else
      {
        v30 = v27;
      }

      v23 = sub_2273A4E34(v29, v30, 1, v23);
      if (*(v25 + 16))
      {
LABEL_18:
        v31 = (v23[3] >> 1) - v23[2];
        sub_2276640B0();
        if (v31 < v26)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v32 = v23[2];
          v33 = __OFADD__(v32, v26);
          v34 = v32 + v26;
          if (v33)
          {
            goto LABEL_55;
          }

          v23[2] = v34;
        }

        goto LABEL_8;
      }
    }

    if (v26)
    {
      goto LABEL_53;
    }

LABEL_8:
    v21 += v63;
    if (!--v20)
    {

      v13 = v55;
      v16 = v53;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_226F19D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227665BB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F19DA0(uint64_t a1)
{
  v2 = sub_227665BB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_226F19E10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_226F19E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_226F19EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v50 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276682D0();
  MEMORY[0x28223BE20](v12);
  v14 = (v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226F1B5DC(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v16 = *v14;
        swift_getKeyPath();
        *(&v54 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
        *&v53 = v16;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v17 = sub_22766C820();
        sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
        v18 = v52;
        if (!v52)
        {
          v28 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v22 = *v14;
        swift_getKeyPath();
        *(&v54 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
        *&v53 = v22;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v17 = sub_22766C820();
        sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
        v18 = v52;
        if (!v52)
        {
          v28 = 0;
          goto LABEL_21;
        }
      }

      v23 = __swift_project_boxed_opaque_existential_0(v51, v52);
      v24 = *(v18 - 8);
      v25 = MEMORY[0x28223BE20](v23);
      v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27, v25);
      v28 = sub_22766D170();
      (*(v24 + 8))(v27, v18);
      __swift_destroy_boxed_opaque_existential_0(v51);
LABEL_21:
      v45 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v46 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];
LABEL_24:
      v47 = v46;

      goto LABEL_25;
    }

    v20 = *v14;
    swift_getKeyPath();
    *(&v54 + 1) = MEMORY[0x277D839F8];
    *&v53 = v20;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
    v21 = v52;
    if (!v52)
    {
      v35 = 0;
      goto LABEL_23;
    }

LABEL_14:
    v30 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v31 = *(v21 - 8);
    v32 = MEMORY[0x28223BE20](v30);
    v34 = v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v21);
    __swift_destroy_boxed_opaque_existential_0(v51);
LABEL_23:
    v45 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v46 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = *v14;
    swift_getKeyPath();
    *(&v54 + 1) = MEMORY[0x277D839F8];
    *&v53 = v29;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
    v21 = v52;
    if (!v52)
    {
      v35 = 0;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v19 = *(v9 + 32);
  v19(v11, v14, v8);
  swift_getKeyPath();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_226E93170(v7, v4, &qword_27D7B9690, qword_227670B50);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_226E97D1C(v4, &qword_27D7B9690, qword_227670B50);
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    *(&v54 + 1) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
    v19(boxed_opaque_existential_0, v4, v8);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v37 = sub_22766C820();
  sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
  v38 = v52;
  if (v52)
  {
    v39 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v50[1] = v50;
    v40 = *(v38 - 8);
    v41 = MEMORY[0x28223BE20](v39);
    v43 = v50 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43, v41);
    v44 = sub_22766D170();
    (*(v40 + 8))(v43, v38);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v44 = 0;
  }

  v49 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
  (*(v9 + 8))(v11, v8);
LABEL_25:
  sub_226E97D1C(&v53, &unk_27D7BC990, &qword_227670A30);
  return v47;
}

id sub_226F1A9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v56 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276682D0();
  MEMORY[0x28223BE20](v12);
  v14 = (v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226F1B5DC(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *(v9 + 32);
      v19(v11, v14, v8);
      swift_getKeyPath();
      (*(v9 + 16))(v7, v11, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_226E93170(v7, v4, &qword_27D7B9690, qword_227670B50);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        sub_226E97D1C(v4, &qword_27D7B9690, qword_227670B50);
        v59 = 0u;
        v60 = 0u;
      }

      else
      {
        *(&v60 + 1) = v8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
        v19(boxed_opaque_existential_0, v4, v8);
      }

      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v38 = sub_22766C820();
      sub_226E93170(&v59, v57, &unk_27D7BC990, &qword_227670A30);
      v39 = v58;
      if (v58)
      {
        v40 = __swift_project_boxed_opaque_existential_0(v57, v58);
        v56[1] = v56;
        v41 = *(v39 - 8);
        v42 = MEMORY[0x28223BE20](v40);
        v44 = v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v41 + 16))(v44, v42);
        v45 = sub_22766D170();
        (*(v41 + 8))(v44, v39);
        __swift_destroy_boxed_opaque_existential_0(v57);
      }

      else
      {
        v45 = 0;
      }

      v54 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v52 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

      sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
      (*(v9 + 8))(v11, v8);
      goto LABEL_26;
    }

    v30 = *v14;
    swift_getKeyPath();
    *(&v60 + 1) = MEMORY[0x277D839F8];
    *&v59 = v30;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v21 = sub_22766C820();
    sub_226E93170(&v59, v57, &unk_27D7BC990, &qword_227670A30);
    v22 = v58;
    if (!v58)
    {
      v36 = 0;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *v14;
    swift_getKeyPath();
    *(&v60 + 1) = MEMORY[0x277D839F8];
    *&v59 = v20;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v21 = sub_22766C820();
    sub_226E93170(&v59, v57, &unk_27D7BC990, &qword_227670A30);
    v22 = v58;
    if (!v58)
    {
      v36 = 0;
      goto LABEL_23;
    }

LABEL_14:
    v31 = __swift_project_boxed_opaque_existential_0(v57, v58);
    v32 = *(v22 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v22);
    __swift_destroy_boxed_opaque_existential_0(v57);
LABEL_23:
    v53 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v52 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

LABEL_26:
    sub_226E97D1C(&v59, &unk_27D7BC990, &qword_227670A30);
    return v52;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = *v14;
    swift_getKeyPath();
    *(&v60 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *&v59 = v16;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226E93170(&v59, v57, &unk_27D7BC990, &qword_227670A30);
    v18 = v58;
    if (!v58)
    {
      v29 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v23 = *v14;
    swift_getKeyPath();
    *(&v60 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *&v59 = v23;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226E93170(&v59, v57, &unk_27D7BC990, &qword_227670A30);
    v18 = v58;
    if (!v58)
    {
      v29 = 0;
      goto LABEL_21;
    }
  }

  v24 = __swift_project_boxed_opaque_existential_0(v57, v58);
  v25 = *(v18 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v26);
  v29 = sub_22766D170();
  (*(v25 + 8))(v28, v18);
  __swift_destroy_boxed_opaque_existential_0(v57);
LABEL_21:
  v46 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(&v59, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_227670B30;
  *(v48 + 32) = v47;
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A0, qword_227670BC0));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v50 = v47;
  v51 = sub_22766C2B0();

  v52 = [v49 initWithType:0 subpredicates:v51];

  return v52;
}

uint64_t sub_226F1B5DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276682D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F1B67C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v17[3] = a3;
  v17[1] = a2;
  v9 = sub_227669F90();
  v17[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
  v13 = *(a4 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v13 + 16))(v15 + v14, v7, a4);
  sub_227555E90(v15, v12[1], *(v12 + 16), v12[3]);

  if (!v5)
  {
    swift_getObjectType();
    sub_227669F80();
    sub_2276699D0();
    return (*(v17[0] + 8))(v11, v9);
  }

  return result;
}

unint64_t sub_226F1B878(uint64_t a1)
{
  result = sub_226F1B8A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_226F1B8A0()
{
  result = qword_2813A5790;
  if (!qword_2813A5790)
  {
    sub_227664AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5790);
  }

  return result;
}

uint64_t sub_226F1B8F8(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v90 = sub_227666F60();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_227663DD0();
  v5 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = sub_227663590();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276640B0();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = sub_227664990();
  v96 = *(v22 - 8);
  v97 = v22;
  MEMORY[0x28223BE20](v22);
  v99 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_227665BB0();
  v98 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v79 = (&v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v78 = &v64 - v26;
  v73 = sub_227666260();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v71 = v28;
  v101 = MEMORY[0x277D84F90];
  v93 = v3;
  v70 = v29;
  sub_226F1F170(0, v29, 0);
  v30 = 0;
  v92 = 0;
  v80 = v101;
  v69 = a2 + ((v98[80] + 32) & ~v98[80]);
  v89 = (v93 + 32);
  v83 = (v5 + 48);
  v84 = (v13 + 32);
  v74 = (v5 + 32);
  v82 = (v13 + 8);
  v68 = *(v98 + 9);
  v93 = v15;
  v98 = v21;
  v94 = v12;
  v85 = v18;
  v86 = v16;
  do
  {
    v77 = v30;
    v31 = v69 + v68 * v30;
    v32 = MEMORY[0x277D51C78];
    v33 = v78;
    sub_226F1C48C(v31, v78, MEMORY[0x277D51C78]);
    sub_226F1C48C(v33, v79, v32);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226F1C5EC(v78, MEMORY[0x277D51C78]);
        v36 = v71;
        *v71 = *v79;
      }

      else
      {
        sub_226F1C5EC(v78, MEMORY[0x277D51C78]);
        v56 = sub_2276685C0();
        v36 = v71;
        (*(*(v56 - 8) + 32))(v71, v79, v56);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v37 = *v79;
      v38 = *(*v79 + 16);
      if (v38)
      {
        v100 = MEMORY[0x277D84F90];
        v39 = v37;
        sub_226F1F150(0, v38, 0);
        v40 = v100;
        v41 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v67 = v39;
        v42 = v39 + v41;
        v43 = *(v65 + 72);
        v87 = v43;
        do
        {
          v44 = MEMORY[0x277D506B8];
          sub_226F1C48C(v42, v21, MEMORY[0x277D506B8]);
          sub_226F1C48C(v21, v18, v44);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v45 = (*v84)(v15, v18, v94);
            MEMORY[0x28223BE20](v45);
            *(&v64 - 2) = v15;
            v46 = v95;
            v47 = v92;
            sub_227543988(sub_226F1C4F4, v88, v11);
            v92 = v47;
            sub_226F1C514(v11, v46);
            if ((*v83)(v46, 1, v91) == 1)
            {
              sub_226F1C584(v95);
              sub_227663560();
              v81 = v48;
              sub_227663570();
              sub_227663580();
              v49 = v76;
              v50 = v90;
              sub_227666F30();
              sub_226F1C584(v11);
              sub_226F1C5EC(v98, MEMORY[0x277D506B8]);
              (*v89)(v99, v49, v50);
            }

            else
            {
              sub_226F1C584(v11);
              sub_226F1C5EC(v98, MEMORY[0x277D506B8]);
              v51 = *v74;
              v52 = v75;
              v53 = v91;
              (*v74)(v75, v95, v91);
              v51(v99, v52, v53);
            }

            swift_storeEnumTagMultiPayload();
            (*v82)(v15, v94);
            v18 = v85;
            v43 = v87;
          }

          else
          {
            sub_226F1C5EC(v21, MEMORY[0x277D506B8]);
            (*v89)(v99, v18, v90);
            swift_storeEnumTagMultiPayload();
          }

          v100 = v40;
          v55 = *(v40 + 16);
          v54 = *(v40 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_226F1F150((v54 > 1), v55 + 1, 1);
            v40 = v100;
          }

          *(v40 + 16) = v55 + 1;
          sub_226F1C64C(v99, v40 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v55, MEMORY[0x277D50C70]);
          v42 += v43;
          --v38;
          v15 = v93;
          v21 = v98;
        }

        while (v38);
        sub_226F1C5EC(v78, MEMORY[0x277D51C78]);
      }

      else
      {

        sub_226F1C5EC(v78, MEMORY[0x277D51C78]);
        v40 = MEMORY[0x277D84F90];
      }

      v36 = v71;
      *v71 = v40;
    }

    else
    {
      v35 = sub_227140CF0(v88, *v79);

      sub_226F1C5EC(v78, MEMORY[0x277D51C78]);
      v36 = v71;
      *v71 = v35;
    }

    swift_storeEnumTagMultiPayload();
    v57 = v80;
    v101 = v80;
    v59 = *(v80 + 16);
    v58 = *(v80 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_226F1F170((v58 > 1), v59 + 1, 1);
      v36 = v71;
      v57 = v101;
    }

    v60 = v77 + 1;
    *(v57 + 16) = v59 + 1;
    v61 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v80 = v57;
    v62 = v36;
    v30 = v60;
    sub_226F1C64C(v62, v57 + v61 + *(v72 + 72) * v59, MEMORY[0x277D52220]);
    v21 = v98;
  }

  while (v30 != v70);
  return v80;
}

uint64_t sub_226F1C48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F1C514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F1C584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F1C5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226F1C64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226F1C6B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227665C20();
  MEMORY[0x28223BE20](v5 - 8);
  v157 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_227667400();
  v172 = *(v168 - 1);
  MEMORY[0x28223BE20](v168);
  v160 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v161 = &v135 - v9;
  v164 = sub_227662190();
  v158 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_227665440();
  v11 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v13 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v163 = &v135 - v15;
  MEMORY[0x28223BE20](v16);
  v162 = (&v135 - v17);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8518, &qword_227670D70);
  v166 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v170 = &v135 - v20;
  MEMORY[0x28223BE20](v21);
  v169 = &v135 - v22;
  v23 = sub_2276622D0();
  v159 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2276627D0();
  v167 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v156 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v135 - v30;
  v32 = [a1 identifier];
  if (!v32)
  {
    goto LABEL_9;
  }

  v155 = a2;
  v33 = v32;
  sub_2276627B0();

  v34 = [a1 name];
  if (!v34)
  {
    (*(v167 + 8))(v31, v26);
LABEL_9:
    v43 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51028], v43);
    swift_willThrow();

    return;
  }

  v153 = v13;
  v35 = v34;
  v150 = sub_22766C000();
  v37 = v36;

  v38 = [a1 schedule];
  if (!v38)
  {
    (*(v167 + 8))(v31, v26);

    goto LABEL_9;
  }

  v154 = v37;
  v152 = v38;
  v39 = [a1 modalityPreferences];
  if (!v39)
  {
    v45 = v31;
    v46 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    v47 = *(*(v46 - 8) + 104);
    v48 = v46;
    v31 = v45;
    v47(v49, *MEMORY[0x277D51028], v48);
    swift_willThrow();
    goto LABEL_11;
  }

  v40 = v39;
  v149 = v11;
  v41 = MEMORY[0x22AA99A00]();
  v42 = sub_2271531E0(v40);
  v151 = v2;
  if (v2)
  {
    objc_autoreleasePoolPop(v41);

LABEL_11:
    (*(v167 + 8))(v31, v26);

    return;
  }

  v138 = v26;
  v50 = v42;
  objc_autoreleasePoolPop(v41);
  v51 = sub_226F3E90C(v50);

  v52 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  sub_22766CA80();
  sub_226F208A8(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (v178)
  {
    v148 = MEMORY[0x277D84F90];
    do
    {
      sub_226F04970(&v177, &v175);
      type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
      if ((swift_dynamicCast() & 1) != 0 && v176)
      {
        MEMORY[0x22AA985C0]();
        if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v148 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v148 = v179;
      }

      sub_22766CBB0();
    }

    while (v178);
  }

  else
  {
    v148 = v52;
  }

  (v159)[1](v25, v23);
  v53 = v148;
  v147 = v31;
  v137 = v51;
  if (!(v148 >> 62))
  {
    v54 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v149;
    v56 = v168;
    if (v54)
    {
      goto LABEL_17;
    }

LABEL_52:
    v139 = a1;

    v58 = MEMORY[0x277D84F90];
LABEL_53:
    v94 = v151;
    v95 = sub_226F20DF4(v58);
    v151 = v94;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8520, &qword_227670D78);
    v96 = sub_22766CFF0();
    v97 = 0;
    v98 = v95[8];
    v141 = (v95 + 8);
    v99 = 1 << *(v95 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v98;
    v140 = (v99 + 63) >> 6;
    v145 = v55 + 16;
    v102 = (v172 + 32);
    v168 = (v55 + 8);
    v143 = v96 + 64;
    v142 = v95;
    v146 = v96;
    v144 = v55 + 32;
    if (v101)
    {
      while (1)
      {
        v159 = ((v101 - 1) & v101);
        v161 = v97;
        v103 = __clz(__rbit64(v101)) | (v97 << 6);
LABEL_62:
        v107 = v95[6];
        v108 = *(v55 + 16);
        v164 = *(v55 + 72) * v103;
        v109 = v163;
        v110 = v174;
        v108(v163, v107 + v164, v174);
        v111 = v95[7];
        v165 = v103;
        v112 = v55;
        v113 = *(v111 + 8 * v103);
        v162 = *(v112 + 32);
        v162(v153, v109, v110);
        *&v177 = v113;
        swift_getKeyPath();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8528, &qword_227670DA0);
        sub_226E9CFD0(&qword_27D7B8530, &qword_27D7B8528, &qword_227670DA0, MEMORY[0x277D83970]);
        v114 = sub_22766C220();

        v115 = *(v114 + 16);
        if (v115)
        {
          v158 = v113;
          *&v177 = MEMORY[0x277D84F90];
          sub_226F1F1D0(0, v115, 0);
          v116 = v177;
          v117 = (*(v166 + 80) + 32) & ~*(v166 + 80);
          v148 = v114;
          v118 = v114 + v117;
          v169 = *(v166 + 72);
          v119 = v160;
          do
          {
            v120 = v170;
            sub_226E93170(v118, v170, &qword_27D7B8518, &qword_227670D70);
            v121 = v171;
            sub_226F208F0(v120, v171);
            v122 = *v102;
            (*v102)(v119, v121 + *(v173 + 64), v56);
            (*v168)(v121, v174);
            *&v177 = v116;
            v123 = v56;
            v125 = *(v116 + 16);
            v124 = *(v116 + 24);
            if (v125 >= v124 >> 1)
            {
              sub_226F1F1D0((v124 > 1), v125 + 1, 1);
              v116 = v177;
            }

            *(v116 + 16) = v125 + 1;
            v122(v116 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v125, v119, v123);
            v118 += v169;
            --v115;
            v56 = v123;
          }

          while (v115);

          v31 = v147;
          v55 = v149;
        }

        else
        {

          v116 = MEMORY[0x277D84F90];
          v55 = v112;
        }

        v95 = v142;
        v126 = v165;
        *(v143 + ((v165 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v165;
        v127 = v146;
        v162((*(v146 + 48) + v164), v153, v174);
        *(*(v127 + 56) + 8 * v126) = v116;
        v128 = *(v127 + 16);
        v129 = __OFADD__(v128, 1);
        v130 = v128 + 1;
        if (v129)
        {
          break;
        }

        *(v127 + 16) = v130;
        v97 = v161;
        v101 = v159;
        if (!v159)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_57:
      v104 = v97;
      while (1)
      {
        v105 = (v104 + 1);
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v105 >= v140)
        {

          v131 = v167;
          v132 = v138;
          (*(v167 + 16))(v156, v31, v138);
          sub_227665BC0();
          v133 = v31;
          v134 = v139;
          [v139 workoutPlanLength];
          sub_227665C50();

          (*(v131 + 8))(v133, v132);
          return;
        }

        v106 = v141[v105];
        ++v104;
        if (v106)
        {
          v159 = ((v106 - 1) & v106);
          v161 = v105;
          v103 = __clz(__rbit64(v106)) | (v105 << 6);
          goto LABEL_62;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_51:
  v54 = sub_22766CD20();
  v55 = v149;
  v56 = v168;
  if (!v54)
  {
    goto LABEL_52;
  }

LABEL_17:
  *&v177 = MEMORY[0x277D84F90];
  sub_226F1F190(0, v54 & ~(v54 >> 63), 0);
  if (v54 < 0)
  {
LABEL_76:
    __break(1u);
    return;
  }

  v57 = 0;
  v143 = v53 & 0xC000000000000001;
  v58 = v177;
  v136 = v53 & 0xFFFFFFFFFFFFFF8;
  v142 = v158 + 8;
  v141 = (v55 + 32);
  v139 = (v172 + 32);
  v140 = v54;
  while (1)
  {
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    v146 = v57;
    v145 = v57 + 1;
    if (v143)
    {
      v59 = MEMORY[0x22AA991A0]();
    }

    else
    {
      if (v57 >= *(v136 + 16))
      {
        goto LABEL_75;
      }

      v59 = *(v53 + 8 * v57 + 32);
    }

    v60 = v59;
    v61 = [v59 offset];
    v62 = v165;
    if (!v61)
    {
      goto LABEL_45;
    }

    v63 = v61;
    sub_22766C000();

    v158 = [v60 item];
    if (!v158)
    {

LABEL_45:

      v88 = sub_227664DD0();
      sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D51028], v88);
      swift_willThrow();

LABEL_46:
      (*(v167 + 8))(v147, v138);

      return;
    }

    v159 = v60;
    v64 = v151;
    sub_2276620C0();
    if (v64)
    {
      (*(v167 + 8))(v147, v138);

      return;
    }

    sub_227662120();
    if (v65 & 1) != 0 || (sub_227662130(), (v66) || (sub_227662160(), (v67) || (sub_227662170(), (v68))
    {

      v86 = sub_227664470();
      sub_226F208A8(&qword_27D7BA250, MEMORY[0x277D50940], MEMORY[0x277D50948]);
      swift_allocError();
      (*(*(v86 - 8) + 104))(v87, *MEMORY[0x277D50908], v86);
      swift_willThrow();

      (*v142)(v62, v164);
      goto LABEL_46;
    }

    v144 = v58;
    v69 = *(v173 + 48);
    v70 = v162;
    sub_2276653F0();
    (*v142)(v62, v164);
    v71 = v169;
    (*v141)(v169, v70, v174);
    *(v71 + v69) = [v159 index];
    v72 = v158;
    v73 = [v158 modalityIdentifier];
    if (!v73)
    {
      goto LABEL_49;
    }

    v74 = v73;
    sub_22766C000();

    v75 = [v72 filterProperties];
    if (!v75)
    {
      break;
    }

    v76 = v75;
    v77 = MEMORY[0x22AA99A00]();
    v78 = sub_22715454C(v76);
    v151 = 0;
    v58 = v144;
    v79 = v78;
    v80 = *(v173 + 64);
    objc_autoreleasePoolPop(v77);
    sub_226F3EAA8(v79);

    v81 = v158;
    [v158 duration];
    v82 = v161;
    sub_2276673D0();

    v56 = v168;
    v83 = v169;
    (*v139)(v169 + v80, v82, v168);
    *&v177 = v58;
    v85 = *(v58 + 16);
    v84 = *(v58 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_226F1F190((v84 > 1), v85 + 1, 1);
      v58 = v177;
    }

    *(v58 + 16) = v85 + 1;
    sub_226F208F0(v83, v58 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v85);
    v57 = v146 + 1;
    v31 = v147;
    v55 = v149;
    v53 = v148;
    if (v145 == v140)
    {
      v139 = a1;

      goto LABEL_53;
    }
  }

LABEL_49:

  v90 = sub_227664DD0();
  sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  v91 = swift_allocError();
  (*(*(v90 - 8) + 104))(v92, *MEMORY[0x277D51028], v90);
  v151 = v91;
  swift_willThrow();
  v93 = v159;

  (*(v167 + 8))(v147, v138);
  (*(v55 + 8))(v169, v174);
}

void sub_226F1DD6C(void *a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_2276627D0();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227665C20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665C90();
  v11 = sub_227665BD0();
  v12 = v10;
  v13 = a2;
  (*(v8 + 8))(v12, v7);
  v30 = a2;
  v14 = sub_226F20960(v11, sub_226F212E0, v29);

  if (!v2)
  {
    sub_227665C40();
    v15 = sub_227662790();
    (*(v28 + 8))(v6, v4);
    v16 = v31;
    [v31 setIdentifier_];

    v17 = sub_227665C60();
    sub_2276477E0(v13, v17);
    v19 = v18;

    [v16 setModalityPreferences_];

    sub_227665C70();
    v20 = sub_22766BFD0();

    [v16 setName_];

    v21 = sub_227665C30();
    v22 = 0x7FFFFFFFLL;
    if (v21 < 0x7FFFFFFF)
    {
      v22 = v21;
    }

    if (v22 <= 0xFFFFFFFF80000000)
    {
      v23 = 0xFFFFFFFF80000000;
    }

    else
    {
      v23 = v22;
    }

    [v16 setWorkoutPlanLength_];
    sub_227073C04(v14);

    v24 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v25 = sub_22766C2B0();

    v26 = [v24 initWithArray_];

    [v16 setSchedule_];
  }
}

uint64_t sub_226F1E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8558, &qword_227670DB0);
  MEMORY[0x28223BE20](v27);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v26 = &v20 - v8;
  v9 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v30 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v11 = 0;
    v25 = sub_227667400();
    v12 = *(v25 - 8);
    v13 = *(v12 + 16);
    v23 = v12 + 16;
    v24 = v13;
    v14 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v21 = *(v12 + 72);
    v22 = (v12 + 32);
    while (1)
    {
      v16 = v26;
      v15 = v27;
      v17 = *(v27 + 48);
      v18 = v25;
      v24(&v26[v17], v14, v25);
      *v6 = v11;
      v19 = *(v15 + 48);
      (*v22)(v6 + v19, &v16[v17], v18);
      sub_226F1E2B8(v11, v6 + v19, v29);
      sub_226E97D1C(v6, &qword_27D7B8558, &qword_227670DB0);
      if (v3)
      {
        break;
      }

      ++v11;
      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      sub_22766CF10();
      v14 += v21;
      if (v9 == v11)
      {
        return v30;
      }
    }
  }

  return result;
}

void sub_226F1E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a3];

  type metadata accessor for ManagedWorkoutPlanScheduledItem();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    v12 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
    goto LABEL_6;
  }

  v11 = v10;
  sub_227159074(v10, a3);
  if (v3)
  {

LABEL_6:
    return;
  }

  [v6 setItem_];

  sub_22730F2B4();
  v14 = sub_22766BFD0();

  [v6 setOffset_];

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    [v6 setIndex_];
    return;
  }

  __break(1u);
}

void *static WorkoutPlanTemplate.representativeSamples()()
{
  v42 = sub_2276627D0();
  v27 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B8, &qword_227670D10);
  v1 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v26 - v2;
  v39 = sub_227665CA0();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227665C20();
  v5 = *(v4 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_227662780();
  v31 = sub_22766C090();
  sub_227668480();
  v9 = MEMORY[0x277D534C8];
  sub_226F208A8(&qword_27D7B84C0, MEMORY[0x277D534C8], &protocol conformance descriptor for WorkoutPlanModalityPreference);
  sub_226F208A8(&qword_27D7B84C8, v9, MEMORY[0x277D534D0]);
  v29 = sub_22766C590();
  sub_226F05E24();
  v28 = sub_22766CFA0();
  sub_227665C10();
  v10 = sub_22766C380();
  *(v10 + 16) = 3;
  v11 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v5 + 16);
  v12(v11, v8, v4);
  v13 = *(v5 + 72);
  v34 = v6 + 16;
  v33 = v12;
  v12(v11 + v13, v8, v4);
  v14 = *(v6 + 32);
  v35 = v8;
  v36 = v4;
  v14(v11 + 2 * v13, v8, v4);
  v58 = v29;
  v59[0] = v30;
  v59[1] = v59;
  v59[2] = &v58;
  v56 = v10;
  v57 = v31;
  v59[3] = &v57;
  v59[4] = &v56;
  v55 = v28;
  v59[5] = &v55;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D8, &qword_227670D18);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E8, &qword_227670D20);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v15 = MEMORY[0x277D83970];
  v45 = sub_226E9CFD0(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750, MEMORY[0x277D83970]);
  v46 = sub_226E9CFD0(&qword_27D7B84F8, &qword_27D7B84D8, &qword_227670D18, v15);
  v47 = sub_226E9CFD0(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0, v15);
  v48 = sub_226E9CFD0(&qword_27D7B8508, &qword_27D7B84E8, &qword_227670D20, v15);
  v49 = sub_226E9CFD0(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920, v15);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v44 = MEMORY[0x277D84F90];
    result = sub_226F1F210(0, v17, 0);
    v19 = 0;
    v20 = v44;
    v29 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v28 = (v27 + 16);
    v27 = v43 + 32;
    v32 = v1;
    v31 = v16;
    v30 = v17;
    v21 = v38;
    while (v19 < *(v16 + 16))
    {
      sub_226E93170(v29 + *(v1 + 72) * v19, v21, &qword_27D7B84B8, &qword_227670D10);
      v22 = *(v40 + 80);
      (*v28)(v41, v21, v42);
      v33(v35, v21 + v22, v36);

      v23 = v37;
      sub_227665C50();
      sub_226E97D1C(v21, &qword_27D7B84B8, &qword_227670D10);
      v44 = v20;
      v24 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v24 >= v25 >> 1)
      {
        sub_226F1F210((v25 > 1), v24 + 1, 1);
        v20 = v44;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      result = (*(v43 + 32))(v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v24, v23, v39);
      v1 = v32;
      v16 = v31;
      if (v30 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_226F1ED50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271116E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1ED70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271117F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1ED90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711182C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711189C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271118B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271118D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271118F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EEB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711190C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EED0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EEF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EF10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EF30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1EF50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1EF70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226F1EF90()
{
  result = sub_227117DC8();
  *v0 = result;
  return result;
}

void *sub_226F1EFB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1EFD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1EFF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111C28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111D5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F030(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F070(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F090(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F0B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F0D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F0F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F110(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F130(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111FC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F150(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227111FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F170(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F190(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F1B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711205C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F1D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F1F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271120AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F210(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271120C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226F1F230(uint64_t a1)
{
  result = sub_226F208A8(&qword_2813A56D0, MEMORY[0x277D51CF0], &protocol conformance descriptor for WorkoutPlanTemplate);
  *(a1 + 8) = result;
  return result;
}

void *sub_226F1F288(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271120F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F2A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F2C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711213C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F2E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F308(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711217C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F328(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271121A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271121CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271121F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F388(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711221C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F3A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F3C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711226C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F3E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271122BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271122E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711230C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F468(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F4A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F4C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F4E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271124B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271124D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F528(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271124FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F548(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F568(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711254C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F588(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F5A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F5C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F5E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271126B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271127B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F628(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271127DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711282C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F688(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F6A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711287C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F6C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271128A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F6E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271128CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F708(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271128F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F748(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711295C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F7A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271129AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F7C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271129D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F7E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271129F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F808(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F868(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F8A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F8C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F8E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112B74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F948(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F968(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F988(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F9A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112C0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F9C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F9E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112C5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FA08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FA28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112CAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FA48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FA68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FA88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FAA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112D4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FAC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112D74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FAE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FB08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FB28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FB48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FB68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FB88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112F30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FBA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112F58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FBC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FBE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227112FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FC08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FC28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FC48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711315C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FC68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FC88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271131A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FCA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271131C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FCC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271131EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FCE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271132F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FD08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271133FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FD28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FD48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711353C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FD68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FD88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271137C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FDA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271137F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FDC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271138F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FDE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FE08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FE28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FE48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FE68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FE88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FEA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FEC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FEE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FF08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FF28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FF48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FF68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FF88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113F24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FFA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113F48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FFC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FFE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113FBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227113FE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20048(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20068(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20088(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114168(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F200A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F200C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271141B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F200E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271141DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20128(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711422C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20148(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271142A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F201A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271142C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F201C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271142F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F201E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20208(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711444C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20268(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271145B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20288(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271145DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F202A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114604(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F202C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711462C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F202E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20308(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711467C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20328(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271146A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271146CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271146F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20388(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711483C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F203A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F203C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711488C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F203E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271148B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F20408(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271148DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271148F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F20468(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F204A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F204C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F204E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20528(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20548(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20568(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20588(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F205A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114BA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F205C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F205E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20628(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114C5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114C80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F20688(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F206A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F206C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114DEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F206E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20708(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114E38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114E80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114EA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227114FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F207A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F207C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22711504C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F207E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2271151A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20868(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F20888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227115378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226F208A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226F208F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8518, &qword_227670D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_226F20960(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8540, &qword_22767F770);
  MEMORY[0x28223BE20](v56);
  v7 = &v47 - v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v53 = v12;
  v54 = a1 + 64;
  v48 = a1;
  v55 = v7;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v12)
        {
          goto LABEL_40;
        }

        v11 = *(v8 + 8 * v16);
        ++v14;
        if (v11)
        {
          v14 = v16;
          goto LABEL_10;
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
      return result;
    }

LABEL_10:
    v17 = __clz(__rbit64(v11)) | (v14 << 6);
    v18 = *(a1 + 48);
    v19 = sub_227665440();
    (*(*(v19 - 8) + 16))(v7, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(*(a1 + 56) + 8 * v17);
    *&v7[*(v56 + 48)] = v20;

    v21 = v57(v7, v20);
    if (v4)
    {
      goto LABEL_39;
    }

    v22 = v21;
    sub_226E97D1C(v7, &qword_27D7B8540, &qword_22767F770);
    v23 = v22 >> 62;
    v24 = v22 >> 62 ? sub_22766CD20() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v22;
    v25 = a1;
    v26 = v15 >> 62;
    if (v15 >> 62)
    {
      break;
    }

    v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v27 + v24;
    if (__OFADD__(v27, v24))
    {
      goto LABEL_38;
    }

LABEL_15:
    v60 = v24;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v26)
      {
LABEL_20:
        sub_22766CD20();
      }

LABEL_21:
      result = sub_22766CE90();
      v29 = result;
      v30 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v26)
    {
      goto LABEL_20;
    }

    v29 = v15;
    v30 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v28 > *(v30 + 24) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v59 = v29;
    if (v23)
    {
      result = sub_22766CD20();
      v33 = result;
    }

    else
    {
      v33 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 &= v11 - 1;
    if (v33)
    {
      if (((v32 >> 1) - v31) < v60)
      {
        goto LABEL_43;
      }

      v50 = v14;
      v51 = v11;
      v52 = 0;
      v34 = v30 + 8 * v31 + 32;
      v49 = v30;
      if (v23)
      {
        if (v33 < 1)
        {
          goto LABEL_45;
        }

        sub_226E9CFD0(&qword_27D7B8550, &qword_27D7B8548, &qword_227670DA8, MEMORY[0x277D83988]);
        v35 = 0;
        v36 = v62;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8548, &qword_227670DA8);
          v37 = v33;
          v38 = v34;
          v39 = sub_2275F0174(v61, v35, v36);
          v41 = *v40;
          (v39)(v61, 0);
          v34 = v38;
          v33 = v37;
          *(v34 + 8 * v35++) = v41;
        }

        while (v37 != v35);
      }

      else
      {
        type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
        swift_arrayInitWithCopy();
      }

      v15 = v59;
      v4 = v52;
      v12 = v53;
      a1 = v48;
      v8 = v54;
      v7 = v55;
      v14 = v50;
      v11 = v51;
      if (v60 >= 1)
      {
        v42 = *(v49 + 16);
        v43 = __OFADD__(v42, v60);
        v44 = v42 + v60;
        if (v43)
        {
          goto LABEL_44;
        }

        *(v49 + 16) = v44;
      }
    }

    else
    {

      v15 = v59;
      v8 = v54;
      v7 = v55;
      v12 = v53;
      a1 = v25;
      if (v60 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v45 = v24;
  v46 = sub_22766CD20();
  v24 = v45;
  v43 = __OFADD__(v46, v45);
  v28 = v46 + v45;
  if (!v43)
  {
    goto LABEL_15;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  sub_226E97D1C(v7, &qword_27D7B8540, &qword_22767F770);

LABEL_40:

  return v15;
}

void *sub_226F20DF4(uint64_t a1)
{
  v2 = sub_227665440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8518, &qword_227670D70);
  MEMORY[0x28223BE20](v62);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v7;
  MEMORY[0x28223BE20](v8);
  v61 = &v50 - v9;
  MEMORY[0x28223BE20](v10);
  v66 = &v50 - v12;
  v13 = MEMORY[0x277D84F98];
  v68 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v53 = *(v11 + 80);
  v54 = v3;
  v15 = *(v11 + 72);
  v16 = a1 + ((v53 + 32) & ~v53);
  v63 = (v3 + 32);
  v56 = (v53 + 32) & ~v53;
  v57 = (v3 + 16);
  v52 = (v3 + 8);
  v51 = xmmword_227670CD0;
  v58 = v2;
  v55 = v15;
  while (1)
  {
    v64 = v16;
    v65 = v14;
    v21 = v66;
    sub_226E93170(v16, v66, &qword_27D7B8518, &qword_227670D70);
    v22 = v61;
    sub_226E93170(v21, v61, &qword_27D7B8518, &qword_227670D70);
    v23 = *(v62 + 48);
    v24 = *(v22 + v23);
    v25 = *(v62 + 64);
    v26 = *v63;
    v27 = v60;
    v28 = v58;
    (*v63)(v60, v22, v58);
    *(v27 + v23) = v24;
    v29 = sub_227667400();
    (*(*(v29 - 8) + 32))(v27 + v25, v22 + v25, v29);
    v30 = v67;
    (*v57)(v67, v27, v28);
    sub_226E97D1C(v27, &qword_27D7B8518, &qword_227670D70);
    v32 = sub_226F39F04(v30);
    v33 = v13[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v13[3] < v35)
    {
      sub_226FE1A70(v35, 1);
      v13 = v68;
      v37 = sub_226F39F04(v67);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_19;
      }

      v32 = v37;
    }

    if (v36)
    {
      (*v52)(v67, v28);
      v39 = v13[7];
      sub_226F208F0(v66, v59);
      v40 = *(v39 + 8 * v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 8 * v32) = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_2273A4E5C(0, v40[2] + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v40 = sub_2273A4E5C((v42 > 1), v43 + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v18 = v64;
      v17 = v65;
      v40[2] = v43 + 1;
      v19 = v40 + v56;
      v20 = v55;
      sub_226F208F0(v59, &v19[v43 * v55]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8538, &unk_227679730);
      v20 = v55;
      v44 = v56;
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      sub_226F208F0(v66, v45 + v44);
      v13[(v32 >> 6) + 8] |= 1 << v32;
      v26((v13[6] + *(v54 + 72) * v32), v67, v28);
      *(v13[7] + 8 * v32) = v45;
      v46 = v13[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_18;
      }

      v13[2] = v48;
      v18 = v64;
      v17 = v65;
    }

    v16 = v18 + v20;
    v14 = v17 - 1;
    if (!v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void *sub_226F212FC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v35 = MEMORY[0x277D84F98];
  v32 = v7;
  v33 = v2;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v1 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(*(v1 + 56) + 8 * v11);

    sub_226EB396C(v14, v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_227663B00();
    if (v37 == 14)
    {
      sub_226EB2DFC(v14, v13, v15);
    }

    else
    {
      switch(v37)
      {
        case 1:
          v17 = 0;
          break;
        case 2:
          v17 = 1;
          break;
        case 3:
          v17 = 2;
          break;
        case 4:
          v17 = 9;
          break;
        case 5:
          v17 = 12;
          break;
        case 6:
          v17 = 3;
          break;
        case 7:
          v17 = 4;
          break;
        case 8:
          v17 = 5;
          break;
        case 9:
          v17 = 7;
          break;
        case 10:
          v17 = 8;
          break;
        case 11:
          v17 = 10;
          break;
        case 12:
          v17 = 11;
          break;
        case 13:
          v17 = 13;
          break;
        default:
          v17 = 6;
          break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v35;
      v34 = v17;
      v20 = sub_226F39FD8(v17);
      v21 = v35[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_37;
      }

      if (v35[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v19;
          sub_226FF043C();
          v19 = v30;
        }
      }

      else
      {
        v36 = v19;
        sub_226FE276C(v23, isUniquelyReferenced_nonNull_native);
        v24 = sub_226F39FD8(v34);
        v26 = v25 & 1;
        v19 = v36;
        if ((v36 & 1) != v26)
        {
          goto LABEL_39;
        }

        v20 = v24;
      }

      v2 = v33;
      v35 = v38;
      if (v19)
      {
        *(v38[7] + 8 * v20) = v16;

        sub_226EB2DFC(v14, v13, v15);

        v1 = v32;
      }

      else
      {
        v38[(v20 >> 6) + 8] |= 1 << v20;
        *(v38[6] + v20) = v34;
        *(v38[7] + 8 * v20) = v16;
        sub_226EB2DFC(v14, v13, v15);

        v27 = v38[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_38;
        }

        v38[2] = v29;
        v1 = v32;
      }
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v35;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226F2163C(uint64_t a1, uint64_t a2)
{
  v2 = sub_227667610();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E0F0], v6);
    sub_22766A1A0();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_226F21850(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 80) = a2;
  v4 = sub_22766B390();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F21914, 0, 0);
}

uint64_t sub_226F21914()
{
  sub_22766A6F0();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "SearchSystem scheduled background processing.", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v8 = *(v0 + 49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8578, &qword_227670E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = v8;
    v10 = sub_226F4A780(inited);
    *(v0 + 120) = v10;
    swift_setDeallocating();
    v11 = sub_227664980();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_226F21B08;

    return sub_226F21C5C(v10, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_226F21B08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226F21C5C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_227667610();
  v3[9] = swift_task_alloc();
  v5 = sub_22766A1C0();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F21DA8, 0, 0);
}

uint64_t sub_226F21DA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_0(v1 + 4, v4);
  v6 = swift_allocObject();
  v0[13] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = *(v5 + 24);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  *v8 = v0;
  v8[1] = sub_226F21F54;

  return (v11)(v0 + 2, sub_226F253FC, v6, v9, v4, v5);
}

uint64_t sub_226F21F54()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226F22198;
  }

  else
  {

    v2 = sub_226F22070;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F22070()
{
  if (*(v0[2] + 16))
  {
    v2 = v0[11];
    v1 = v0[12];
    v3 = v0[10];
    __swift_project_boxed_opaque_existential_0((v0[5] + 248), *(v0[5] + 272));
    sub_2271D7EE8();
    swift_getObjectType();
    sub_227667600();
    sub_22766A1B0();
    sub_2276699D0();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F22198()
{
  v17 = v0;

  sub_22766A6F0();

  v1 = sub_22766B380();
  v2 = sub_22766C890();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  if (v3)
  {
    v15 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    sub_226F2541C();
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v1, v2, "Failed to delete oldest search terms for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_226F22374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = sub_22766A1C0();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227667610();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6F0();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[1] = a3;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Received RecentSearchTerms Update. Sending Event.", v16, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);

  sub_227667600();
  swift_getObjectType();
  v18 = v24;
  (*(v5 + 16))(v23, v9, v24);
  v19 = v25;
  sub_22766A1B0();
  v20 = v28;
  sub_2276699D0();
  (*(v26 + 8))(v19, v20);
  return (*(v5 + 8))(v9, v18);
}

uint64_t sub_226F226A8()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2276666A0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_226F22864;

  return sub_226F22F3C();
}

uint64_t sub_226F22864(char a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_226F22964, 0, 0);
}

uint64_t sub_226F22964()
{
  if (*(v0 + 152) == 1)
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
    sub_22766A730();
    sub_22766B370();
    v5 = *(v4 + 8);
    *(v0 + 112) = v5;
    *(v0 + 120) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    sub_226EDD55C(v1);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *(v6 + 16) = "SeymourServices/SearchSystem.swift";
    *(v6 + 24) = 34;
    *(v6 + 32) = 2;
    *(v6 + 40) = 70;
    *(v6 + 48) = v1;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_226F22B7C;
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226F253CC, v6, v9);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(3, 0, 1);
  }
}

uint64_t sub_226F22B7C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_226F22D88;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_226F22CCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F22CCC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_227666660();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4, 0, 1);
}

uint64_t sub_226F22D88()
{
  v1 = *(v0 + 144);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_22766A6F0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to fetch OptInPrivacyPreference for data collection: %@.", v7, 0xCu);
    sub_226F2534C(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 112))(*(v0 + 40), *(v0 + 24));

  v11 = *(v0 + 8);

  return v11(3, 0, 1);
}

uint64_t sub_226F22F3C()
{
  v1[25] = v0;
  v2 = sub_22766B390();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_227662750();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v5 = sub_227665AD0();
  v1[35] = v5;
  v1[36] = *(v5 - 8);
  v1[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();
  v7 = sub_227667900();
  v1[41] = v7;
  v1[42] = *(v7 - 8);
  v1[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F231E0, 0, 0);
}

uint64_t sub_226F231E0()
{
  v1 = *(v0 + 200);
  sub_2276678E0();
  v2 = *__swift_project_boxed_opaque_existential_0((v1 + 200), *(v1 + 224));
  v3 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v2 + v3, v0 + 56);
  if (*(v0 + 80))
  {
    sub_226E92AB8((v0 + 56), v0 + 96);
    sub_226E91B50(v0 + 96, v0 + 136);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 136), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_226F099DC();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v7 = *(v0 + 320);
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *(v8 + 16) = "SeymourServices/SearchSystem.swift";
  *(v8 + 24) = 34;
  *(v8 + 32) = 2;
  *(v8 + 40) = 84;
  *(v8 + 48) = v7;
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
  *v9 = v0;
  v9[1] = sub_226F2345C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226F25334, v8, v10);
}

uint64_t sub_226F2345C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_226F2384C;
  }

  else
  {
    (*(v2[39] + 8))(v2[40], v2[38]);
    v3 = sub_226F235AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F235AC()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  (*(v4 + 8))(v1, v3, v4);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *(v5 + 16) = "SeymourServices/SearchSystem.swift";
  *(v5 + 24) = 34;
  *(v5 + 32) = 2;
  *(v5 + 40) = 85;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_226F236FC;
  v7 = v0[37];
  v8 = v0[35];

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226F253B4, v5, v8);
}

uint64_t sub_226F236FC()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_226F23B78;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    v3 = sub_226F23A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F2384C()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  (*(v0[39] + 8))(v0[40], v0[38]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[46];
  sub_22766A6F0();
  v5 = v4;
  v6 = sub_22766B380();
  v7 = sub_22766C890();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226E8E000, v6, v7, "Failed to calculate data collection consent: %@", v8, 0xCu);
    sub_226F2534C(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[27] + 8))(v0[28], v0[26]);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_226F23A34(uint64_t a1)
{
  v2 = v1[42];
  v13 = v1[43];
  v3 = v1[41];
  v5 = v1[36];
  v4 = v1[37];
  v6 = v1[35];
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[29];
  sub_227662740();
  v10 = sub_227665AA0();
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v11 = v1[1];

  return v11(v10 & 1);
}

uint64_t sub_226F23B78()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  (*(v0[33] + 8))(v0[34], v0[32]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[49];
  sub_22766A6F0();
  v5 = v4;
  v6 = sub_22766B380();
  v7 = sub_22766C890();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226E8E000, v6, v7, "Failed to calculate data collection consent: %@", v8, 0xCu);
    sub_226F2534C(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[27] + 8))(v0[28], v0[26]);

  v12 = v0[1];

  return v12(0);
}

void *sub_226F23D6C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_226F23DCC()
{
  sub_226F23D6C();

  return swift_deallocClassInstance();
}

uint64_t sub_226F23E24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_227667610();
  v2[9] = swift_task_alloc();
  v3 = sub_22766A1C0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_227664E20();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v2[15] = *(v5 + 64);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F23F74, 0, 0);
}

uint64_t sub_226F23F74()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_0(v5 + 4, v5[7]);
  v7 = *(v3 + 16);
  *(v0 + 136) = v7;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = *(v3 + 80);
  *(v0 + 52) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v5;
  (*(v3 + 32))(v10 + v9, v1, v2);
  v11 = *(v6 + 24);

  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_226F2416C;

  return v14();
}

uint64_t sub_226F2416C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_226F24638;
  }

  else
  {

    v2 = sub_226F24288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F24288()
{
  v1 = *(v0 + 52);
  v14 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v15 = *(v0 + 80);
  v6 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_0((*(v0 + 64) + 248), *(*(v0 + 64) + 272));
  sub_2271D7EE8();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8570, &qword_227679A50);
  v7 = (v1 + 32) & ~v1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  v14(v8 + v7, v6, v3);
  sub_226F4AAF0(v8);
  swift_setDeallocating();
  (*(v2 + 8))(v8 + v7, v3);
  swift_deallocClassInstance();
  sub_227667600();
  sub_22766A1B0();
  sub_2276699D0();
  (*(v5 + 8))(v4, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8578, &qword_227670E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227664E10();
  v10 = sub_226F4A780(inited);
  *(v0 + 176) = v10;
  swift_setDeallocating();
  v11 = sub_227664980();
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_226F244C8;

  return sub_226F21C5C(v10, v11);
}

uint64_t sub_226F244C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226F24638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F246C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8570, &qword_227679A50);
  v8 = sub_227664E20();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a3, v8);
  sub_227556524(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 248), *(a2 + 272));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227664E00();
    *(v13 + 40) = v14;
    sub_2272D7500(0, v13, a1);
  }

  return result;
}

uint64_t sub_226F24870(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_227667610();
  v2[4] = swift_task_alloc();
  v3 = sub_22766A1C0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F2495C, 0, 0);
}

uint64_t sub_226F2495C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_0(v1 + 4, v1[7]);
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_226F24AEC;

  return v8();
}

uint64_t sub_226F24AEC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_226F24D18;
  }

  else
  {

    v2 = sub_226F24C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226F24C08()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_0((v0[3] + 248), *(v0[3] + 272));
  sub_2271D7EE8();
  swift_getObjectType();

  sub_227667600();
  sub_22766A1B0();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F24D18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226F24D90(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2273975B8(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 248), *(a2 + 272));
    v7 = sub_226F24F50(a3);
    sub_2272D7500(1, v7, a1);
  }
}

char *sub_226F24E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  result = sub_227397AA0(a3, 0, 1, a4, a1);
  if (!v5)
  {
    if (*(result + 2))
    {
      v10 = result;
      sub_2273975B8(result, a1);
      __swift_project_boxed_opaque_existential_0((a2 + 248), *(a2 + 272));
      v11 = sub_226F24F50(v10);
      sub_2272D7500(1, v11, a1);

      result = v10;
    }

    *a5 = result;
  }

  return result;
}

char *sub_226F24EF4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  v7 = sub_227664980();
  result = sub_227397AA0(a2, v7, 0, 0, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226F24F50(uint64_t a1)
{
  v47 = sub_227664E20();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_227664E00();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_227664E00();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_226F2534C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9660, &qword_2276740C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226F2541C()
{
  result = qword_28139B280;
  if (!qword_28139B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B280);
  }

  return result;
}

uint64_t objectdestroy_16Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_226F25558(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = v39 - v6;
  v7 = sub_227663180();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v39[1] = v1;
  v58 = MEMORY[0x277D84F90];
  sub_226F1F528(0, v13, 0);
  v14 = v58;
  v57 = a1 + 56;
  result = sub_22766CC90();
  v16 = result;
  v17 = 0;
  v46 = v8 + 8;
  v47 = v8 + 16;
  v44 = a1;
  v45 = v8 + 32;
  v40 = a1 + 64;
  v41 = v13;
  v42 = v12;
  v43 = v7;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v57 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v53 = 1 << v16;
    v54 = v16 >> 6;
    v19 = *(a1 + 36);
    v51 = v17;
    v52 = v19;
    v20 = *(a1 + 48);
    v55 = *(v8 + 72);
    v56 = v14;
    v21 = v48;
    (*(v8 + 16))(v48, v20 + v55 * v16, v7);
    v22 = sub_2276624A0();
    v23 = *(*(v22 - 8) + 56);
    v24 = v8;
    v25 = v49;
    v23(v49, 1, 1, v22);
    v26 = v50;
    v23(v50, 1, 1, v22);
    sub_227663140();
    sub_226E97D1C(v26, &unk_27D7BB570, &unk_227670FC0);
    v27 = v25;
    v28 = v43;
    v8 = v24;
    sub_226E97D1C(v27, &unk_27D7BB570, &unk_227670FC0);
    v29 = v21;
    v14 = v56;
    v7 = v28;
    (*(v24 + 8))(v29, v28);
    v58 = v14;
    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_226F1F528((v30 > 1), v31 + 1, 1);
      v14 = v58;
    }

    *(v14 + 16) = v31 + 1;
    result = (*(v24 + 32))(v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v31 * v55, v42, v28);
    a1 = v44;
    v18 = 1 << *(v44 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    v32 = *(v57 + 8 * v54);
    if ((v32 & v53) == 0)
    {
      goto LABEL_23;
    }

    if (v52 != *(v44 + 36))
    {
      goto LABEL_24;
    }

    v33 = v32 & (-2 << (v16 & 0x3F));
    if (v33)
    {
      v18 = __clz(__rbit64(v33)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v54 << 6;
      v35 = v54 + 1;
      v36 = (v40 + 8 * v54);
      while (v35 < (v18 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_226EB526C(v16, v52, 0);
          v18 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v16, v52, 0);
    }

LABEL_4:
    v17 = v51 + 1;
    v16 = v18;
    if (v51 + 1 == v41)
    {
      return v14;
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
  return result;
}

uint64_t sub_226F259F0(uint64_t a1)
{
  v43 = sub_227663180();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2276624A0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F1F548(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_227663170();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F548((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F25DB4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  return swift_deallocClassInstance();
}

uint64_t sub_226F25E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v97 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v77 - v6;
  MEMORY[0x28223BE20](v7);
  v84 = &v77 - v8;
  v95 = v9;
  MEMORY[0x28223BE20](v10);
  v85 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v77 - v15;
  v86 = v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v77 - v18;
  v19 = sub_227663480();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  v82 = sub_22766B390();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v80 = *(v20 + 16);
  v80(v24, a1, v19);
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v78 = a1;
    v30 = v29;
    v77 = swift_slowAlloc();
    v101[0] = v77;
    *v30 = 141558274;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2080;
    sub_226F32B0C(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v31 = sub_22766D140();
    v79 = v4;
    v33 = v32;
    (*(v20 + 8))(v24, v19);
    v34 = sub_226E97AE8(v31, v33, v101);
    v4 = v79;

    *(v30 + 14) = v34;
    _os_log_impl(&dword_226E8E000, v27, v28, "Request to cancel asset bundle: %{mask.hash}s", v30, 0x16u);
    v35 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v36 = v30;
    a1 = v78;
    MEMORY[0x22AA9A450](v36, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v24, v19);
  }

  (*(v81 + 8))(v26, v82);
  v94 = v19;
  v37 = v98;
  v80(v98, a1, v19);
  v38 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v39 = swift_allocObject();
  (*(v20 + 32))(v39 + v38, v37, v19);
  v40 = v83;
  sub_227669280();
  v41 = v97;
  v42 = *(v97 + 16);
  v82 = v97 + 16;
  v98 = v42;
  v43 = v87;
  (v42)(v4, v40, v87);
  v44 = *(v41 + 80);
  v96 = (v44 + 16) & ~v44;
  v45 = (v95 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v95 = *(v41 + 32);
  v95(v46 + ((v44 + 16) & ~v44), v4, v43);
  v47 = (v46 + v45);
  v48 = v89;
  *v47 = sub_226F32584;
  v47[1] = v48;

  v49 = v84;
  sub_227669270();
  v97 = *(v41 + 8);
  (v97)(v40, v43);
  (v98)(v40, v49, v43);
  v50 = swift_allocObject();
  v95(v50 + v96, v40, v43);
  v51 = (v50 + v45);
  *v51 = sub_226F325B4;
  v51[1] = v48;

  v52 = v85;
  sub_227669270();
  (v97)(v49, v43);
  (v98)(v49, v52, v43);
  v53 = swift_allocObject();
  v95(v53 + v96, v49, v43);
  v54 = (v53 + v45);
  *v54 = sub_226F325BC;
  v54[1] = v48;

  v55 = v99;
  sub_227669270();
  (v97)(v52, v43);
  v56 = swift_allocObject();
  v56[2] = 0xD00000000000002ELL;
  v56[3] = 0x8000000227693CC0;
  v56[4] = 66;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_226F33024;
  *(v57 + 24) = v56;
  v58 = v91;
  v59 = *(v91 + 16);
  v97 = v91 + 16;
  v98 = v59;
  v60 = v88;
  v61 = v55;
  v62 = v92;
  (v59)(v88, v61, v92);
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v96 = *(v58 + 80);
  v95 = v63;
  v64 = (v86 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v94 = *(v58 + 32);
  v94(v65 + v63, v60, v62);
  v66 = (v65 + v64);
  *v66 = sub_226F32FE8;
  v66[1] = v57;
  v67 = v90;
  sub_227669270();
  v68 = *(v58 + 8);
  v69 = v99;
  v68(v99, v62);
  v70 = *__swift_project_boxed_opaque_existential_0((v48 + 272), *(v48 + 296));
  v101[3] = type metadata accessor for SyncCoordinator(0);
  v101[4] = &off_283AA3680;
  v101[0] = v70;
  sub_226E91B50(v101, v100);
  v71 = swift_allocObject();
  sub_226E92AB8(v100, v71 + 16);

  __swift_destroy_boxed_opaque_existential_0(v101);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_226F33020;
  *(v72 + 24) = v71;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_226F325EC;
  *(v73 + 24) = v72;
  (v98)(v69, v67, v62);
  v74 = swift_allocObject();
  v94(v95 + v74, v69, v62);
  v75 = (v74 + v64);
  *v75 = sub_226EBFB9C;
  v75[1] = v73;
  sub_227669270();
  return (v68)(v67, v62);
}