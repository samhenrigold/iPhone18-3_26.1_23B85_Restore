char *sub_2759511E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
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

char *sub_2759512EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECD8, &qword_2759C26C0);
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

char *sub_2759513F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11858, &qword_2759CBF90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2759514FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11848, &qword_2759CBF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2759515F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11850, &qword_2759CBF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2759516F4(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void))
{
  LOBYTE(v23[0]) = a1;
  v23[3] = &type metadata for ManageStorageDrilldownActionEvent;
  v23[4] = &off_288482EF8;
  v23[1] = a2;
  v23[2] = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v23, &v21);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000036, 0x80000002759E1160, &v20);
    *(v9 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    v19 = a4;
    *(inited + 32) = 0x6E6F69746361;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_2759BA5A8();
    *(inited + 56) = 0x6449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = sub_2759BA258();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v12 = sub_2759BA1F8();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1(&v21);
    v15 = sub_2758937B8(v12, v14, &v20);
    a4 = v19;

    *(v9 + 14) = v15;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  sub_27586E058(v23, &v21);
  v16 = swift_allocObject();
  sub_275827D1C(&v21, v16 + 16);
  v17 = a4(0xD000000000000036, 0x80000002759E1160, sub_275953F9C, v16);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v17 & 1;
}

uint64_t sub_275951A74(void *a1, char a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v24 = &type metadata for iCloudHomeViewModelPerformActionEvent;
  v25 = &off_288482B80;
  v22 = a1;
  v23 = a2;
  v4 = qword_280A0E350;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(&v22, &v20);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD00000000000003ALL, 0x80000002759E10A0, &v19);
    *(v9 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    *(inited + 56) = 0x79546E6F69746361;
    *(inited + 64) = 0xEA00000000006570;
    *(inited + 72) = sub_2759BA258();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v11 = sub_2759BA1F8();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_1(&v20);
    v14 = sub_2758937B8(v11, v13, &v19);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v18, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  sub_27586E058(&v22, &v20);
  v15 = swift_allocObject();
  sub_275827D1C(&v20, v15 + 16);
  v16 = a3(0xD00000000000003ALL, 0x80000002759E10A0, sub_275954100, v15);

  __swift_destroy_boxed_opaque_existential_1(&v22);
  return v16 & 1;
}

uint64_t sub_275951E00(void *a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v28[3] = &type metadata for ManageStorageDriveDeleteActionEvent;
  v28[4] = &off_288483028;
  v10 = swift_allocObject();
  v28[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  v11 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_280A238D0);
  sub_27586E058(v28, &v26);
  v13 = sub_2759B8988();
  v14 = sub_2759BA638();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2758937B8(0xD000000000000038, 0x80000002759E11E0, &v25);
    *(v15 + 12) = 2080;
    v17 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    if (sub_275909694(*v17, *(v17 + 8), v17[2], *(v17 + 24)))
    {
      sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
      v18 = sub_2759BA1F8();
      v20 = v19;
    }

    else
    {
      v20 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v21 = sub_2758937B8(v18, v20, &v25);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_275819000, v13, v14, "Sending message %s with body %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v16, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  sub_27586E058(v28, &v26);
  v22 = swift_allocObject();
  sub_275827D1C(&v26, v22 + 16);
  v23 = a5(0xD000000000000038, 0x80000002759E11E0, sub_275954100, v22);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23 & 1;
}

uint64_t sub_27595211C(void *a1, char a2, uint64_t (*a3)(void, void, void, void))
{
  v29 = &type metadata for ManageStorageSiriDisableAndDeleteActionEvent;
  v30 = &off_2884833A0;
  v27 = a1;
  v28 = a2 & 1;
  v4 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238D0);
  sub_27586E058(&v27, &v25);
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();
  if (os_log_type_enabled(v6, v7))
  {
    v22 = a3;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000037, 0x80000002759E12A0, &v24);
    *(v8 + 12) = 2080;
    v10 = *__swift_project_boxed_opaque_existential_1(&v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    if (v10)
    {
      swift_getErrorValue();
      v12 = v10;
      sub_2759AC7BC(v23);
      v13 = sub_2759BA258();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906A58(v13, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    a3 = v22;
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v15 = sub_2759BA1F8();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_1(&v25);
    v18 = sub_2758937B8(v15, v17, &v24);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_275819000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  sub_27586E058(&v27, &v25);
  v19 = swift_allocObject();
  sub_275827D1C(&v25, v19 + 16);
  v20 = a3(0xD000000000000037, 0x80000002759E12A0, sub_275954100, v19);

  __swift_destroy_boxed_opaque_existential_1(&v27);
  return v20 & 1;
}

uint64_t sub_2759524E8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void, void, void))
{
  v23[0] = a1;
  v25 = &type metadata for iCloudHomeViewModelPushViewControllerEvent;
  v26 = &off_288482CA8;
  v23[1] = a2;
  v24 = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v23, &v21);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD00000000000003FLL, 0x80000002759E10E0, &v20);
    *(v9 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    v19 = a4;
    *(inited + 32) = 0x46676E696C6C6163;
    *(inited + 40) = 0xEF6E6F6974636E75;
    *(inited + 48) = sub_2759BA258();
    *(inited + 56) = 0x656D6F6374756FLL;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v12 = sub_2759BA1F8();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1(&v21);
    v15 = sub_2758937B8(v12, v14, &v20);
    a4 = v19;

    *(v9 + 14) = v15;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  sub_27586E058(v23, &v21);
  v16 = swift_allocObject();
  sub_275827D1C(&v21, v16 + 16);
  v17 = a4(0xD00000000000003FLL, 0x80000002759E10E0, sub_275954100, v16);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v17 & 1;
}

uint64_t sub_27595287C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  LOBYTE(v22[0]) = a1;
  v22[3] = &type metadata for iCloudHomeViewModelShowMailViewEvent;
  v22[4] = &off_288482DD0;
  v22[1] = a2;
  v22[2] = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v22, &v20);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000039, 0x80000002759E1120, &v19);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(&v20, v21);
    if (sub_275908BD4(*v11, v11[1], v11[2]))
    {
      sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
      v12 = sub_2759BA1F8();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);
    v15 = sub_2758937B8(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  sub_27586E058(v22, &v20);
  v16 = swift_allocObject();
  sub_275827D1C(&v20, v16 + 16);
  v17 = a4(0xD000000000000039, 0x80000002759E1120, sub_275954100, v16);

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v17 & 1;
}

uint64_t sub_275952B58(char a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v19[3] = &type metadata for ManageStorageMessagesDisableAndDeleteActionEvent;
  v19[4] = &off_288483278;
  LOBYTE(v19[0]) = a1 & 1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238D0);
  sub_27586E058(v19, &v17);
  v4 = sub_2759B8988();
  v5 = sub_2759BA638();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2758937B8(0xD00000000000003BLL, 0x80000002759E1260, &v16);
    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v9 = sub_2759BA1F8();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1(&v17);
    v12 = sub_2758937B8(v9, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_275819000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  sub_27586E058(v19, &v17);
  v13 = swift_allocObject();
  sub_275827D1C(&v17, v13 + 16);
  v14 = a2(0xD00000000000003BLL, 0x80000002759E1260, sub_275954100, v13);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14 & 1;
}

uint64_t sub_275952E8C(void *a1, char a2, uint64_t (*a3)(void, void, void, void))
{
  v29 = &type metadata for ManageStorageHealthDisableAndDeleteActionEvent;
  v30 = &off_288483150;
  v27 = a1;
  v28 = a2 & 1;
  v4 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238D0);
  sub_27586E058(&v27, &v25);
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();
  if (os_log_type_enabled(v6, v7))
  {
    v22 = a3;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000039, 0x80000002759E1220, &v24);
    *(v8 + 12) = 2080;
    v10 = *__swift_project_boxed_opaque_existential_1(&v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    if (v10)
    {
      swift_getErrorValue();
      v12 = v10;
      sub_2759AC7BC(v23);
      v13 = sub_2759BA258();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906A58(v13, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    a3 = v22;
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v15 = sub_2759BA1F8();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_1(&v25);
    v18 = sub_2758937B8(v15, v17, &v24);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_275819000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  sub_27586E058(&v27, &v25);
  v19 = swift_allocObject();
  sub_275827D1C(&v25, v19 + 16);
  v20 = a3(0xD000000000000039, 0x80000002759E1220, sub_275954100, v19);

  __swift_destroy_boxed_opaque_existential_1(&v27);
  return v20 & 1;
}

uint64_t sub_275953258(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2759BA338();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_2759532F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A117A0;
  if (!qword_280A117A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117A0);
  }

  return result;
}

unint64_t sub_27595334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A117B0;
  if (!qword_280A117B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117B0);
  }

  return result;
}

uint64_t type metadata accessor for DriveDeleteAction(uint64_t a1)
{
  result = qword_280A117C8;
  if (!qword_280A117C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14iCloudSettings17DriveDeleteResultV7OutcomeO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2759534A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_275953504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_275953570(uint64_t a1)
{
  sub_27585EA38(319);
  if (v1 <= 0x3F)
  {
    sub_2758E9738(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2759536C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_275953720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_275953780(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_2759537D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A117D8;
  if (!qword_280A117D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117D8);
  }

  return result;
}

unint64_t sub_275953828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A117E0;
  if (!qword_280A117E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117E0);
  }

  return result;
}

unint64_t sub_275953880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A117E8;
  if (!qword_280A117E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117E8);
  }

  return result;
}

uint64_t sub_2759538D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 40) = *(a2 + 8);
  *(v3 + 56) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_27595390C, 0, 0);
}

uint64_t sub_27595390C()
{
  v35 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);

  v2 = sub_2759B8988();
  v3 = sub_2759BA668();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v32 = v9;
    v33 = 91;
    v34 = 0xE100000000000000;

    MEMORY[0x277C840E0](v6, v7);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v5, v4);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v10 = sub_2758937B8(91, 0xE100000000000000, &v32);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_275819000, v2, v3, "%{public}s deleteFiles", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v11 = v0[2];
  if (v11 >> 62)
  {
    v19 = sub_2759BA9E8();
    v12 = v0[7];
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = v0[7];
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v13 = v0[6];
      v31 = *(v0 + 2);
      v15 = v0[2];
      v14 = v0[3];
      v16 = swift_task_alloc();
      v0[8] = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v31;
      *(v16 + 40) = v13;
      *(v16 + 48) = v12;
      *(v16 + 56) = v14;
      v17 = swift_task_alloc();
      v0[9] = v17;
      *v17 = v0;
      v17[1] = sub_275953DB8;
      v18 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000020, 0x80000002759E2430, sub_275954058, v16, v18);
    }
  }

  v20 = sub_2759B8988();
  v21 = sub_2759BA668();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[6];
    v22 = v0[7];
    v25 = v0[4];
    v24 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136446210;
    v32 = v27;
    v33 = 91;
    v34 = 0xE100000000000000;

    MEMORY[0x277C840E0](v25, v24);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v23, v22);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v28 = sub_2758937B8(v33, v34, &v32);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_275819000, v20, v21, "%{public}s files list is empty", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x277C85860](v27, -1, -1);
    MEMORY[0x277C85860](v26, -1, -1);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_275953DB8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_275953EEC;
  }

  else
  {

    v2 = sub_275953ED4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_275953EEC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_275953F50(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_275953FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275954004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11828;
  if (!qword_280A11828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11828);
  }

  return result;
}

uint64_t sub_275954068(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];

  return sub_275950294(a1, a2, v5, v6, v7, v8);
}

uint64_t sub_275954110@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v34 = a3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_27585D118();
  *&v30 = v8;
  *(&v30 + 1) = v10;
  v31 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v30);

  sub_2759B9B18();

  v11 = OpaqueTypeMetadata2;
  v12 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(&v30, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  *&v26 = v11;
  *(&v26 + 1) = v13;
  v27 = v12;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v26);

  sub_2759B9B18();

  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  swift_getKeyPath();
  v16 = sub_2759BA1B8();
  v17 = sub_275956860(&qword_280A10398, MEMORY[0x277D4D7B0], MEMORY[0x277D4D7D0]);
  a4[3] = swift_getOpaqueTypeMetadata2();
  v24[0] = v14;
  v24[1] = v16;
  v24[2] = v15;
  v25 = v17;
  a4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(&v26);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  v18 = *(v6 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions);
  sub_27586E058(a4, &v26);
  v19 = *(v18 + 16);

  if (v19)
  {
    v21 = 0;
    v22 = v18 + 32;
    while (v21 < *(v18 + 16))
    {
      sub_27586E058(v22, v24);
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_2759B8B28();
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(&v26);

        __swift_destroy_boxed_opaque_existential_1(v24);
        return __swift_destroy_boxed_opaque_existential_1(a4);
      }

      ++v21;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = sub_275827D1C(&v23, &v26);
      v22 += 40;
      if (v19 == v21)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_1(a4);
    return sub_275827D1C(&v30, a4);
  }

  return result;
}

uint64_t sub_275954544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2759BA1B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v6, a2 + v9, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_275954688(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27595479C, 0, 0);
}

uint64_t sub_27595479C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadHomeAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    (*(*(v0 + 104) + 16))(*(v0 + 120), v7 + v8, *(v0 + 96));
    sub_2759B8AA8();
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    v10 = *(v0 + 160);
  }

  *(v0 + 162) = v10;
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData;
  swift_beginAccess();
  if (v9(v12 + v13, 1, v11))
  {
    v14 = 0;
  }

  else
  {
    (*(*(v0 + 104) + 16))(*(v0 + 112), v12 + v13, *(v0 + 96));
    sub_2759B8AA8();
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v14 = *(v0 + 161);
  }

  v15 = *(*(v0 + 80) + 16);
  *(v0 + 128) = v15;
  if (v15)
  {
    v16 = v15;
    if (v14)
    {
      v17 = sub_2759B8988();
      v18 = sub_2759BA668();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_275819000, v17, v18, "ReloadHomeAction: clearing apps list", v19, 2u);
        MEMORY[0x277C85860](v19, -1, -1);
      }

      v20 = *(v0 + 88);

      v21 = sub_2759BA518();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      sub_2759BA4C8();
      v22 = v16;
      v23 = sub_2759BA4B8();
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v22;
      sub_27587D460(0, 0, v20, &unk_2759CC128, v24);
    }

    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = sub_275954CD4;

    return sub_27588A44C(0);
  }

  else
  {
    v28 = sub_2759B8988();
    v29 = sub_2759BA648();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_275819000, v28, v29, "ReloadHomeAction: no view model available", v30, 2u);
      MEMORY[0x277C85860](v30, -1, -1);
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_275954CD4()
{

  return MEMORY[0x2822009F8](sub_275954DD0, 0, 0);
}

uint64_t sub_275954DD0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 162);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_2759BA4C8();
  v6 = v1;

  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v0 + 144) = sub_27587D460(0, 0, v3, &unk_2759CC118, v8);
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_275954F48;

  return MEMORY[0x282200460]();
}

uint64_t sub_275954F48()
{

  return MEMORY[0x2822009F8](sub_275955060, 0, 0);
}

uint64_t sub_275955060()
{
  v1 = *(v0 + 128);

  sub_2759BA438();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27595511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_2759BA4C8();
  *(v4 + 56) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759551B4, v6, v5);
}

uint64_t sub_2759551B4()
{
  v1 = v0[6];

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = v0[6];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[5] = v3;
    sub_275956860(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2759552FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 104) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  *(v6 + 64) = swift_task_alloc();
  v7 = sub_2759BA1B8();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  sub_2759BA4C8();
  *(v6 + 96) = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595542C, v9, v8);
}

uint64_t sub_27595542C()
{
  v1 = *(v0 + 104);

  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    v3 = *(v2 + 24);
    if (v3)
    {
      if (*(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
      {
        v4 = *(v0 + 72);
        v5 = *(v0 + 80);
        v6 = *(v0 + 64);
        v7 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
        swift_beginAccess();
        sub_2758FE7C0(v2 + v7, v6);
        if ((*(v5 + 48))(v6, 1, v4) == 1)
        {
          sub_27586BF04(*(v0 + 64), &qword_280A109D8, &qword_2759D0B40);
        }

        else
        {
          (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
          v8 = sub_2759BA198();
          v10 = *(v0 + 80);
          v9 = *(v0 + 88);
          v11 = *(v0 + 72);
          if (v8)
          {
            sub_2759BA1A8();
            (*(v10 + 8))(v9, v11);
            goto LABEL_11;
          }

          (*(v10 + 8))(*(v0 + 88), *(v0 + 72));
        }

        v12 = *(v0 + 56);
        swift_getKeyPath();
        *(v0 + 40) = v12;
        sub_275956860(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
        sub_2759B8638();

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v14 = Strong;
        }
      }
    }
  }

LABEL_11:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_275955660(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461447261656C63;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x77656956706F70;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7461447261656C63;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 0x656C706D6F436E6FLL;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x77656956706F70;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27595577C()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27595582C(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759558C8(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_275955974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2759569C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2759559A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000061;
  v5 = 0x7461447261656C63;
  if (v2 != 1)
  {
    v5 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x77656956706F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_275955A10()
{
  v1 = 0x7461447261656C63;
  if (*v0 != 1)
  {
    v1 = 0x656C706D6F436E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x77656956706F70;
  }
}

unint64_t sub_275955A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2759569C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275955AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595680C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_275955ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595680C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

id *sub_275955B18(void *a1)
{
  v52 = a1;
  v2 = v1;
  v56 = *v2;
  v57 = sub_2759B8BD8();
  v46 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = v45 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11898, &unk_2759CC220);
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = v45 - v9;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v11 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  v55 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  v12 = sub_2759BA1B8();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v54 = v13;
  v16(v2 + v13, 1, 1, v14);
  v18 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData;
  v16(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_didDisappear) = 0;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595680C(v19, v20, v21);
  v50 = v10;
  v22 = v51;
  sub_2759BAC18();
  v23 = v55;
  if (v22)
  {

    sub_27586BF04(v2 + v23, &qword_280A109D8, &qword_2759D0B40);
    sub_27586BF04(v2 + v54, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v2 + v18, &qword_280A0FC48, &qword_2759C79C0);
    swift_deallocPartialClassInstance();
    v31 = v52;
  }

  else
  {
    v45[1] = v17;
    v45[2] = v16;
    v51 = v18;
    v24 = v54;
    LOBYTE(v59[0]) = 0;
    sub_2758EA064();
    v25 = v47;
    sub_2759BAA68();
    v26 = v48;
    swift_beginAccess();
    sub_2758CE724(v25, v2 + v24, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v59[0]) = 1;
    sub_2759BAA68();
    v27 = v58;
    v28 = v49;
    v29 = v51;
    swift_beginAccess();
    sub_2758CE724(v26, v2 + v29, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v60) = 2;
    sub_2758C7304();
    v30 = v53;
    sub_2759BAA68();
    if (*&v59[0])
    {
      v33 = *&v59[0];
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);
    if (v34)
    {
      v54 = 0;
      v60 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v34, 0);
      v35 = v60;
      v36 = v46 + 16;
      v37 = *(v46 + 16);
      v38 = *(v46 + 80);
      v51 = v33;
      v39 = v33 + ((v38 + 32) & ~v38);
      v55 = *(v46 + 72);
      v56 = v37;
      v40 = (v46 + 8);
      v41 = v57;
      do
      {
        v42 = v36;
        v56(v27, v39, v41);
        sub_2759B8BC8();
        v41 = v57;
        (*v40)(v27, v57);
        v60 = v35;
        v44 = *(v35 + 16);
        v43 = *(v35 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2759509B0((v43 > 1), v44 + 1, 1);
          v41 = v57;
          v35 = v60;
        }

        *(v35 + 16) = v44 + 1;
        sub_275827D1C(v59, v35 + 40 * v44 + 32);
        v39 += v55;
        --v34;
        v36 = v42;
        v27 = v58;
      }

      while (v34);
      (*(v49 + 8))(v50, v53);

      v31 = v52;
    }

    else
    {

      (*(v28 + 8))(v50, v30);
      v35 = MEMORY[0x277D84F90];
      v31 = v52;
    }

    *(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions) = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v2;
}

uint64_t sub_27595621C()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData, &qword_280A0FC48, &qword_2759C79C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadHomeAction(uint64_t a1)
{
  result = qword_280A11878;
  if (!qword_280A11878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275956354(uint64_t a1)
{
  sub_2758FE464(319);
  if (v1 <= 0x3F)
  {
    sub_2758E9738(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_275956444(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_275954688(a1, a2);
}

id *sub_2759565A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_275955B18(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275956688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2759552FC(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_275956750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27595511C(a1, v4, v5, v6);
}

unint64_t sub_27595680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A118A0;
  if (!qword_280A118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118A0);
  }

  return result;
}

uint64_t sub_275956860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2759568BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A118A8;
  if (!qword_280A118A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118A8);
  }

  return result;
}

unint64_t sub_275956914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A118B0;
  if (!qword_280A118B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118B0);
  }

  return result;
}

unint64_t sub_27595696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A118B8;
  if (!qword_280A118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118B8);
  }

  return result;
}

unint64_t sub_2759569C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_275956A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_275956A84(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v8 = sub_2759BA258();
  v9 = [v7 numberFromString_];

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CDD3A8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DB0, &qword_2759C8EC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759CC380;
    *(inited + 32) = sub_2759BA298();
    *(inited + 40) = v12;
    *(inited + 72) = sub_2759571E8();
    *(inited + 48) = v9;
    *(inited + 80) = sub_2759BA298();
    *(inited + 88) = v13;
    v14 = MEMORY[0x277D837D0];
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0x70662E736369;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 128) = sub_2759BA298();
    *(inited + 136) = v15;
    *(inited + 168) = v14;
    *(inited + 144) = 858796082;
    *(inited + 152) = 0xE400000000000000;
    v16 = v9;
    sub_2758A2A88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F408, qword_2759CC3C0);
    swift_arrayDestroy();
    [v10 setDelegate_];
    [v10 setShowsStoreButton_];
    v17 = sub_2759BA1C8();

    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    aBlock[4] = sub_275957234;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275956A0C;
    aBlock[3] = &block_descriptor_12;
    v19 = _Block_copy(aBlock);

    [v10 loadProductWithParameters:v17 completionBlock:v19];
    _Block_release(v19);

    [a3 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_2815ADE70);

    oslog = sub_2759B8988();
    v21 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2758937B8(a1, a2, aBlock);
      _os_log_impl(&dword_275819000, oslog, v21, "Invalid iTunesItemId %s. Bailing.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_275956EAC(int a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);

    oslog = sub_2759B8988();
    v9 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2758937B8(a3, a4, &v17);
      _os_log_impl(&dword_275819000, oslog, v9, "Failed to load product view for iTunesItemId: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);

    oslog = sub_2759B8988();
    v13 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2758937B8(a3, a4, &v17);
      _os_log_impl(&dword_275819000, oslog, v13, "Successfully loaded product view for iTunesItemId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
      goto LABEL_10;
    }
  }
}

id sub_275957190(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDownloadFlowManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2759571E8()
{
  result = qword_280A0ED90;
  if (!qword_280A0ED90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0ED90);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_275957340(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WebViewFlowControllerProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2759573E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_flowCompletionDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_275957430(uint64_t a1, uint64_t a2)
{
  v2 = sub_27595745C(a1, a2);
  v3 = v2;
  return v2;
}

uint64_t sub_27595745C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  v8 = [objc_allocWithZone(MEMORY[0x277CEE940]) initWithBag:v7 account:a2 clientInfo:0];
  v9 = OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController;
  v10 = *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController) = v8;
  v11 = v8;

  [v11 setDelegate_];
  v12 = *(v2 + v9);
  if (v12)
  {
    v13 = v12;
    v14 = sub_2759B84B8();
    v15 = [v13 loadURL_];

    v7 = v15;
  }

  return *(v3 + v9);
}

uint64_t sub_2759575A4(void *a1)
{
  v2 = v1;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000031, 0x80000002759E2570, &v18);
    *(v8 + 12) = 2112;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v8 + 14) = v12;
    *v9 = v13;
    _os_log_impl(&dword_275819000, v6, v7, "%s error: %@", v8, 0x16u);
    sub_275875554(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v14 = v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_flowCompletionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(a1, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_275957800@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11940, &qword_2759CC4C0);
  v53 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v52 = &v51 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11948, &qword_2759CC4C8);
  MEMORY[0x28223BE20](v65);
  v67 = &v51 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11950, &qword_2759CC4D0);
  MEMORY[0x28223BE20](v66);
  v63 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11958, &qword_2759CC4D8);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11960, &qword_2759CC4E0);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11968, &qword_2759CC4E8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11970, &qword_2759CC4F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11978, &unk_2759CC4F8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v58 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  v25 = a1;
  v69 = a1;
  v70 = a2;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v27 = v71;
  swift_getKeyPath();
  v69 = v27;
  sub_27595AF30(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v28 = *&v27[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v29 = v28;

  if (v28)
  {

    MEMORY[0x28223BE20](v30);
    *(&v51 - 2) = v25;
    *(&v51 - 1) = v26;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119A0, &qword_2759CC538);
    sub_275958DAC();
    v53 = v31;
    sub_2759B9F38();
    sub_275958EAC(&qword_280A119B8, &qword_280A11970, &qword_2759CC4F0, MEMORY[0x277CE1410]);
    v32 = v24;
    sub_2759B9B38();
    (*(v17 + 8))(v19, v16);
    v69 = v25;
    v70 = v26;
    sub_2759B9D68();
    v33 = v71;
    v34 = *&v71[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps];

    if (v34 >> 62)
    {
      v35 = sub_2759BA9E8();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35)
    {
      MEMORY[0x28223BE20](v36);
      *(&v51 - 2) = v25;
      *(&v51 - 1) = v26;
      sub_275958544(&v69);
      v37 = MEMORY[0x277CE0BC8];
      v38 = v55;
      sub_2759B9F28();
      sub_275958EAC(&qword_280A119C0, &qword_280A11958, &qword_2759CC4D8, v37);
      v39 = v54;
      v40 = v57;
      sub_2759B9B38();
      (*(v56 + 8))(v38, v40);
      v41 = v62;
      sub_27589F26C(v39, v62, &qword_280A11960, &qword_2759CC4E0);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v62;
    }

    (*(v59 + 56))(v41, v42, 1, v60);
    v47 = v58;
    sub_27586FBC8(v32, v58, &qword_280A11978, &unk_2759CC4F8);
    v48 = v61;
    sub_27586FBC8(v41, v61, &qword_280A11968, &qword_2759CC4E8);
    v49 = v63;
    sub_27586FBC8(v47, v63, &qword_280A11978, &unk_2759CC4F8);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119C8, &unk_2759CC540);
    sub_27586FBC8(v48, v49 + *(v50 + 48), &qword_280A11968, &qword_2759CC4E8);
    sub_27586BF04(v48, &qword_280A11968, &qword_2759CC4E8);
    sub_27586BF04(v47, &qword_280A11978, &unk_2759CC4F8);
    sub_27586FBC8(v49, v67, &qword_280A11950, &qword_2759CC4D0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0, MEMORY[0x277CE14C0]);
    sub_275958CB0();
    sub_2759B95E8();
    sub_27586BF04(v49, &qword_280A11950, &qword_2759CC4D0);
    sub_27586BF04(v41, &qword_280A11968, &qword_2759CC4E8);
    return sub_27586BF04(v32, &qword_280A11978, &unk_2759CC4F8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11980, &qword_2759CC530);
    sub_27589B02C(&qword_280A11988, &qword_280A11980, &qword_2759CC530, MEMORY[0x277CE1138]);
    v43 = v52;
    sub_2759B9F38();
    v44 = v53;
    v45 = v64;
    (*(v53 + 16))(v67, v43, v64);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0, MEMORY[0x277CE14C0]);
    sub_275958CB0();
    sub_2759B95E8();
    return (*(v44 + 8))(v43, v45);
  }
}

uint64_t sub_2759581D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA30, &unk_2759C4AC0);
  type metadata accessor for ManageStorageAppView(0);
  sub_27589B02C(&qword_280A119D0, &qword_280A0FA30, &unk_2759C4AC0, MEMORY[0x277D83980]);
  sub_27595AF30(&qword_280A119B0, type metadata accessor for ManageStorageAppView, &unk_2759CC5E0);
  sub_27595AF30(&qword_280A119D8, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  return sub_2759B9EE8();
}

uint64_t sub_27595837C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2759B9908();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v13 = v23;
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for ManageStorageAppView(0);
  *(a4 + *(v15 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v23 = v13;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v16 = v12;
  sub_2759B9D58();
  v17 = v25;
  *a4 = v24;
  a4[1] = v17;
  *(a4 + *(v15 + 24)) = v16;
  v24 = 0x403D000000000000;
  v18 = (*(v9 + 104))(v11, *MEMORY[0x277CE0A50], v8);
  sub_27595A6E0(v18, v19, v20);
  return sub_2759B8E98();
}

uint64_t sub_275958544@<X0>(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_27595AF30(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *&v13[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v5 = v4;

  if (v4)
  {
  }

  sub_27589F2D4(v6, v7, v8);
  result = sub_2759B99C8();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_27595867C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119E8, &qword_2759CC588);
  return sub_2759586CC((a2 + *(v3 + 44)));
}

uint64_t sub_2759586CC@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_2759B9708();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C8, &qword_2759CC590);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F0, &qword_2759CC598);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F8, &qword_2759CC5A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_2759B8E88();
  sub_2759B8598();
  sub_2759B96F8();
  v16 = sub_27589B02C(&qword_280A0F6D8, &qword_280A0F6C8, &qword_2759CC590, MEMORY[0x277CE1148]);
  v17 = sub_27595AF30(&qword_280A11A00, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_2759B9A48();
  (*(v26 + 8))(v3, v1);
  sub_27586BF04(v6, &qword_280A0F6C8, &qword_2759CC590);
  v28 = v4;
  v29 = v1;
  v30 = v16;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_2759B9B38();
  (*(v7 + 8))(v9, v18);
  sub_275823EFC(v15, v13);
  v19 = v27;
  *v27 = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A08, &qword_2759CC5A8);
  sub_275823EFC(v13, v20 + *(v21 + 48));
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_27586BF04(v15, &qword_280A119F8, &qword_2759CC5A0);
  return sub_27586BF04(v13, &qword_280A119F8, &qword_2759CC5A0);
}

uint64_t sub_275958AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManageStorageAppView(0);
  sub_27586FBC8(v1 + *(v10 + 20), v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_275958CB0()
{
  result = qword_280A11998;
  if (!qword_280A11998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11940, &qword_2759CC4C0);
    sub_27589B02C(&qword_280A11988, &qword_280A11980, &qword_2759CC530, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11998);
  }

  return result;
}

unint64_t sub_275958DAC()
{
  result = qword_280A119A8;
  if (!qword_280A119A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A119A0, &qword_2759CC538);
    sub_27595AF30(&qword_280A119B0, type metadata accessor for ManageStorageAppView, &unk_2759CC5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A119A8);
  }

  return result;
}

uint64_t type metadata accessor for ManageStorageAppView(uint64_t a1)
{
  result = qword_280A11A18;
  if (!qword_280A11A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275958EAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_275958DAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275958F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_2759B96A8();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManageStorageAppView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A48, &qword_2759CC630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A50, &qword_2759CC638);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_27595AA04(v2, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_27595AA68(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A58, &unk_2759CC640);
  sub_27589B02C(&qword_280A11A60, &qword_280A11A58, &unk_2759CC640, MEMORY[0x277CDEFF0]);
  sub_2759B9DB8();
  sub_2759B9698();
  sub_27589B02C(&qword_280A11A68, &qword_280A11A48, &qword_2759CC630, MEMORY[0x277CDF028]);
  sub_27595AF30(&qword_280A11A70, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  v19 = v22;
  sub_2759B9A58();
  (*(v23 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  *&v16[*(v14 + 36)] = sub_2759B9668();
  sub_27595AB34();
  sub_2759B9B38();
  return sub_27586BF04(v16, &qword_280A11A50, &qword_2759CC638);
}

void sub_275959370(void *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v3 = *(a1 + *(type metadata accessor for ManageStorageAppView(0) + 24));
  LOBYTE(v5[0]) = 12;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v3, 0, v5);
}

uint64_t sub_2759593EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A80, &qword_2759CC650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A88, &qword_2759CC658);
  sub_27589B02C(&qword_280A11A90, &qword_280A11A80, &qword_2759CC650, MEMORY[0x277CE1138]);
  sub_27595ACBC();
  return sub_2759B9D48();
}

uint64_t sub_2759594DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AD0, &unk_2759CC678);
  return sub_275959534(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_275959534@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v97 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C58, &unk_2759C8C70);
  MEMORY[0x28223BE20](v94);
  v89 = (&v83 - v3);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AD8, &unk_2759CC688);
  MEMORY[0x28223BE20](v91);
  v93 = &v83 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  MEMORY[0x28223BE20](v92);
  v88 = (&v83 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE0, &qword_2759CC698);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v83 - v9;
  v10 = sub_2759B94D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  sub_275958AA0(&v83 - v15);
  (*(v11 + 104))(v14, *MEMORY[0x277CE0280], v10);
  v17 = sub_2758B2220(v16, v14);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  v90 = a1;
  if (v17)
  {
    v19 = sub_2759B94F8();
    LOBYTE(v113) = 1;
    sub_27595A0CC(v99);
    *(v120 + 7) = v99[0];
    *(&v120[1] + 7) = v99[1];
    *(&v120[2] + 7) = v99[2];
    *(&v120[3] + 7) = v100;
    v101[0] = v19;
    v101[1] = 0;
    v102[0] = v113;
    *&v102[1] = v120[0];
    *&v102[17] = v120[1];
    *&v102[33] = v120[2];
    *&v102[49] = v120[3];
    v105[2] = *&v102[16];
    v105[3] = *&v102[32];
    v105[4] = *&v102[48];
    v105[0] = v19;
    v105[1] = *v102;
    v103[0] = v19;
    v103[1] = *v102;
    v103[3] = *&v102[32];
    v103[4] = *&v102[48];
    v103[2] = *&v102[16];
    *&v102[64] = *(&v100 + 1);
    v106 = *(&v100 + 1);
    v104 = *(&v100 + 1);
    v107 = v19;
    v108 = *v102;
    v112 = *(&v100 + 1);
    v110 = *&v102[32];
    v111 = *&v102[48];
    v109 = *&v102[16];
    v98 = 0;
    sub_27586FBC8(v101, v120, &qword_280A11B18, &qword_2759CC750);
    sub_27586FBC8(v103, v120, &qword_280A11B18, &qword_2759CC750);
    sub_27586BF04(v105, &qword_280A11B18, &qword_2759CC750);
    v123 = 0;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v113 = v107;
    v114 = v108;
    *&v118 = v112;
    *(&v118 + 1) = 0x4024000000000000;
    v119 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE8, &qword_2759CC6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AF0, &qword_2759CC6A8);
    v20 = MEMORY[0x277CE14C0];
    sub_27589B02C(&qword_280A11AF8, &qword_280A11AE8, &qword_2759CC6A0, MEMORY[0x277CE14C0]);
    sub_27589B02C(&qword_280A11B00, &qword_280A11AF0, &qword_2759CC6A8, v20);
    sub_2759B95E8();
    sub_27586BF04(v101, &qword_280A11B18, &qword_2759CC750);
  }

  else
  {
    v21 = type metadata accessor for ManageStorageAppView(0);
    v22 = *(a1 + *(v21 + 24));
    v23 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v24 = (*(v22 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v25 = v24[1];
    *&v120[0] = *v24;
    *(&v120[0] + 1) = v25;
    sub_27589F2D4(v21, v26, v27);

    v28 = sub_2759B99C8();
    v86 = v29;
    v87 = v30;
    v84 = v31;
    v32 = (*(v22 + v23) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel);
    v33 = v32[1];
    *&v120[0] = *v32;
    *(&v120[0] + 1) = v33;

    v34 = sub_2759B99C8();
    v36 = v35;
    v38 = v37;
    LODWORD(v120[0]) = sub_2759B9688();
    v39 = sub_2759B9958();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_27589F328(v34, v36, v38 & 1);

    v46 = v84 & 1;
    LOBYTE(v103[0]) = v46;
    LOBYTE(v101[0]) = v84 & 1;
    LOBYTE(v99[0]) = 0;
    v123 = v43 & 1;
    v83 = 0;
    v84 = v43 & 1;
    v47 = v86;
    sub_27589F3E4(v28, v86, v46);
    v48 = v87;

    sub_27589F3E4(v39, v41, v43 & 1);

    sub_27589F3E4(v28, v47, v46);

    sub_27589F3E4(v39, v41, v43 & 1);

    sub_27589F328(v39, v41, v43 & 1);

    v85 = v28;
    sub_27589F328(v28, v47, v103[0]);

    LOBYTE(v105[0]) = 1;
    *&v113 = v28;
    *(&v113 + 1) = v47;
    LOBYTE(v114) = v46;
    *(&v114 + 1) = v48;
    *&v115 = 0x4024000000000000;
    BYTE8(v115) = v83;
    *&v116 = v39;
    *(&v116 + 1) = v41;
    LOBYTE(v117) = v84;
    *(&v117 + 1) = v45;
    v118 = v107;
    LOBYTE(v119) = v108;
    HIBYTE(v119) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE8, &qword_2759CC6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AF0, &qword_2759CC6A8);
    v49 = MEMORY[0x277CE14C0];
    sub_27589B02C(&qword_280A11AF8, &qword_280A11AE8, &qword_2759CC6A0, MEMORY[0x277CE14C0]);
    sub_27589B02C(&qword_280A11B00, &qword_280A11AF0, &qword_2759CC6A8, v49);
    sub_2759B95E8();
    sub_27589F328(v39, v41, v43 & 1);

    sub_27589F328(v85, v86, v46);
  }

  v128 = v120[4];
  v129 = v121;
  v130 = v122;
  v124 = v120[0];
  v125 = v120[1];
  v126 = v120[2];
  v127 = v120[3];
  v50 = *(v90 + *(type metadata accessor for ManageStorageAppView(0) + 24));
  swift_getKeyPath();
  *&v120[0] = v50;
  sub_27595AF30(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8638();

  v51 = v95;
  if (*(v50 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) == 1)
  {
    v52 = v88;
    sub_2759B8E88();
    v53 = sub_2759B9808();
    sub_2759B8D78();
    v54 = v93;
    v55 = v52 + *(v92 + 36);
    *v55 = v53;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    v60 = &qword_280A10720;
    v61 = &qword_2759C7280;
    sub_27586FBC8(v52, v54, &qword_280A10720, &qword_2759C7280);
  }

  else
  {
    v62 = sub_2759B9CB8();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
    v52 = v89;
    v64 = (v89 + *(v63 + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
    v66 = *MEMORY[0x277CE1050];
    v67 = sub_2759B9D18();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    *v52 = v62;
    v68 = sub_2759B98F8();
    KeyPath = swift_getKeyPath();
    v70 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
    *v70 = KeyPath;
    v70[1] = v68;
    v71 = sub_2759B9678();
    v72 = v93;
    *(v52 + *(v94 + 36)) = v71;
    v60 = &qword_280A10C58;
    v61 = &unk_2759C8C70;
    sub_27586FBC8(v52, v72, &qword_280A10C58, &unk_2759C8C70);
  }

  swift_storeEnumTagMultiPayload();
  sub_2758F5718();
  sub_275909F70();
  sub_2759B95E8();
  sub_27586BF04(v52, v60, v61);
  v73 = v96;
  sub_27586FBC8(v51, v96, &qword_280A11AE0, &qword_2759CC698);
  v74 = v128;
  v75 = v129;
  v117 = v128;
  v118 = v129;
  v76 = v130;
  v119 = v130;
  v77 = v125;
  v113 = v124;
  v114 = v125;
  v79 = v126;
  v78 = v127;
  v115 = v126;
  v116 = v127;
  v80 = v97;
  *v97 = v124;
  v80[1] = v77;
  *(v80 + 48) = v76;
  v80[2] = v79;
  v80[3] = v78;
  v80[4] = v74;
  v80[5] = v75;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11B08, &qword_2759CC740);
  sub_27586FBC8(v73, v80 + *(v81 + 48), &qword_280A11AE0, &qword_2759CC698);
  sub_27586FBC8(&v113, v120, &qword_280A11B10, &qword_2759CC748);
  sub_27586BF04(v51, &qword_280A11AE0, &qword_2759CC698);
  sub_27586BF04(v73, &qword_280A11AE0, &qword_2759CC698);
  v120[4] = v128;
  v121 = v129;
  v122 = v130;
  v120[0] = v124;
  v120[1] = v125;
  v120[2] = v126;
  v120[3] = v127;
  return sub_27586BF04(v120, &qword_280A11B10, &qword_2759CC748);
}

double sub_27595A0CC@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ManageStorageAppView(0);
  sub_27589F2D4(v3, v4, v5);

  v24 = sub_2759B99C8();
  v25 = v6;
  v8 = v7;
  v23 = v9;

  v10 = sub_2759B99C8();
  v12 = v11;
  v14 = v13;
  sub_2759B9688();
  v15 = sub_2759B9958();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_27589F328(v10, v12, v14 & 1);

  *a2 = v24;
  *(a2 + 8) = v8;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19 & 1;
  *(a2 + 56) = v21;
  sub_27589F3E4(v24, v8, v23 & 1);

  sub_27589F3E4(v15, v17, v19 & 1);

  sub_27589F328(v15, v17, v19 & 1);

  sub_27589F328(v24, v8, v23 & 1);

  return result;
}

uint64_t sub_27595A2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9CC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AA8, &qword_2759CC660);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v20 = &v18 - v9;
  v10 = *(a1 + *(type metadata accessor for ManageStorageAppView(0) + 24));
  if (*(v10 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage))
  {
    v18 = v8;
    v19 = a2;
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);

    v11 = sub_2759B9D28();
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
    sub_2759B8EA8();
    v12 = 0xD000000000000011;
    sub_2759B8EA8();
    sub_2759BA028();
    sub_2759B8F18();
    v29 = 1;
    *&v28[22] = v31;
    *&v28[38] = v32;
    *&v28[6] = v30;
    v26 = v11;
    *v27 = 1;
    *&v27[2] = *v28;
    *&v27[18] = *&v28[16];
    *&v27[34] = *&v28[32];
    *&v27[48] = *(&v32 + 1);
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_2759BA8C8();

    v24 = 0xD000000000000016;
    v25 = 0x80000002759E2640;
    if (*(v10 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8))
    {
      v12 = *(v10 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
      v13 = *(v10 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8);
    }

    else
    {
      v13 = 0x80000002759E2660;
    }

    MEMORY[0x277C840E0](v12, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AB8, &qword_2759CC668);
    sub_27595AE20();
    v16 = v20;
    sub_2759B9B38();

    v22[2] = *&v27[16];
    v22[3] = *&v27[32];
    v23 = *&v27[48];
    v22[0] = v26;
    v22[1] = *v27;
    sub_27586BF04(v22, &qword_280A11AB8, &qword_2759CC668);
    v17 = v19;
    sub_27589F26C(v16, v19, &qword_280A11AA8, &qword_2759CC660);
    return (*(v21 + 56))(v17, 0, 1, v18);
  }

  else
  {
    v14 = *(v21 + 56);

    return v14(a2, 1, 1, v8);
  }
}

unint64_t sub_27595A6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A119E0;
  if (!qword_280A119E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A119E0);
  }

  return result;
}

void sub_27595A75C(uint64_t a1)
{
  sub_27595A870(319, &qword_280A11A28, type metadata accessor for ManageStorageAppsListViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_27595A870(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ManageStorageAppViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_27595A8D4(319, v3, v4);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27595A870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27595A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280A11A30)
  {
    sub_27595A6E0(0, a2, a3);
    v3 = sub_2759B8EB8();
    if (!v4)
    {
      atomic_store(v3, &qword_280A11A30);
    }
  }
}

unint64_t sub_27595A930()
{
  result = qword_280A11A38;
  if (!qword_280A11A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A40, &qword_2759CC5D8);
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0, MEMORY[0x277CE14C0]);
    sub_275958CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A38);
  }

  return result;
}

uint64_t sub_27595AA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageAppView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595AA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageAppView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_27595AACC()
{
  v1 = *(type metadata accessor for ManageStorageAppView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_275959370(v2);
}

unint64_t sub_27595AB34()
{
  result = qword_280A11A78;
  if (!qword_280A11A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A50, &qword_2759CC638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A48, &qword_2759CC630);
    sub_2759B96A8();
    sub_27589B02C(&qword_280A11A68, &qword_280A11A48, &qword_2759CC630, MEMORY[0x277CDF028]);
    sub_27595AF30(&qword_280A11A70, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A78);
  }

  return result;
}

unint64_t sub_27595ACBC()
{
  result = qword_280A11A98;
  if (!qword_280A11A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A88, &qword_2759CC658);
    sub_27595AD6C(&qword_280A11AA0, &qword_280A11AA8, &qword_2759CC660, sub_27595AE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A98);
  }

  return result;
}

uint64_t sub_27595AD6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_27595AF30(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27595AE20()
{
  result = qword_280A11AB0;
  if (!qword_280A11AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11AB8, &qword_2759CC668);
    sub_27595AEAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11AB0);
  }

  return result;
}

unint64_t sub_27595AEAC()
{
  result = qword_280A11AC0;
  if (!qword_280A11AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11AC8, &qword_2759CC670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11AC0);
  }

  return result;
}

uint64_t sub_27595AF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for HeaderAnimationView(uint64_t a1)
{
  result = qword_280A11B30;
  if (!qword_280A11B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27595AFF0(uint64_t a1)
{
  sub_27595B234(319);
  if (v1 <= 0x3F)
  {
    sub_27595B28C(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
    if (v2 <= 0x3F)
    {
      sub_27595B28C(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
      if (v3 <= 0x3F)
      {
        sub_27595B320(319, &qword_280A10B38, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_27595B320(319, &qword_280A11B40, &qword_280A0E808, &qword_2759CC1E0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2759B8C48();
            if (v6 <= 0x3F)
            {
              sub_27595B320(319, &qword_280A0F918, &qword_280A0F920, &qword_2759D0380, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_27595B320(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_27595B234(uint64_t a1)
{
  if (!qword_280A0E6C8)
  {
    sub_2759B8B18();
    v1 = sub_2759BA448();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0E6C8);
    }
  }
}

void sub_27595B28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_27595CB28(a4, a5, MEMORY[0x277D233A0]);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27595B320(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_27595B384()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_2759BA658();
    v7 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_27595B4D4()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_2759BA658();
    v7 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_27595B624(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  if (*(v1 + 24))
  {
    v7 = type metadata accessor for HeaderAnimationView(0);

    v8 = sub_2759B8C38();
    v19 = a1;
    v9 = v8;
    v11 = v10;

    sub_27595C8BC(v1 + *(v7 + 48), v6);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      sub_27595C92C(v6);
      v14 = 0;
    }

    else
    {

      sub_2759B8AA8();

      (*(v13 + 8))(v6, v12);
      v14 = v20 ^ 1;
    }

    v15 = sub_27595B384();
    v16 = sub_27595B4D4();
    v17 = *(v2 + *(v7 + 44));

    sub_2758BB734(v15, v16, v9, v11, v17, v14 & 1, v19);
  }

  else
  {
    sub_2759B8C08();
    sub_27595CB28(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_2759B9158();
    __break(1u);
  }
}

uint64_t sub_27595B8D0()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27595B994(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27595BA44(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_27595BB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27595CC78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27595BB34(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB00000000736E6FLL;
  v5 = 0x697463416E6F6369;
  if (*v1 != 2)
  {
    v5 = 0x616D696E41657375;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 0x6C6562616CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_27595BBB4()
{
  v1 = 25705;
  v2 = 0x697463416E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x616D696E41657375;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

unint64_t sub_27595BC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27595CC78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27595BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595C994(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27595BC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595C994(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_27595BCD0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v53 - v4;
  v65 = sub_2759B8BD8();
  v56 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2759B8C48();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2759B85A8();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11B68, &qword_2759CC8B8);
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for HeaderAnimationView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 2) = MEMORY[0x277D84F90];
  sub_2759B8C08();
  v15 = MEMORY[0x277D233A0];
  sub_27595CB28(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v70 = sub_2759B9168();
  *(v14 + 3) = v70;
  *(v14 + 4) = v16;
  sub_2759B8BB8();
  sub_27595CB28(&qword_280A0F8C8, MEMORY[0x277D232E8], v15);
  v69 = sub_2759B9168();
  *(v14 + 5) = v69;
  *(v14 + 6) = v17;
  KeyPath = swift_getKeyPath();
  *(v14 + 7) = KeyPath;
  v14[64] = 0;
  *(v14 + 9) = swift_getKeyPath();
  v14[80] = 0;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595C994(v18, v19, v20);
  v21 = v71;
  sub_2759BAC18();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  v22 = v66;
  v55 = v12;
  v71 = a1;
  LOBYTE(v72) = 0;
  v23 = sub_2759BAA58();
  v25 = 0;
  if (!v24)
  {
    v26 = v22;
    sub_2759B8598();
    v27 = sub_2759B8588();
    v29 = v28;
    (*(v57 + 8))(v26, v58);
    v24 = v29;
    v23 = v27;
  }

  v30 = v61;
  *v14 = v23;
  *(v14 + 1) = v24;
  LOBYTE(v72) = 1;
  sub_27595CB28(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v31 = v62;
  sub_2759BAA78();
  (*(v63 + 32))(&v14[*(v55 + 40)], v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v72) = 2;
  sub_2758C7304();
  sub_2759BAA68();
  v54 = v9;
  v53 = v11;
  v38 = v74;
  v39 = MEMORY[0x277D84F90];
  if (v74)
  {
    v40 = *(v74 + 2);
    if (v40)
    {
      KeyPath = 0;
      v73 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v40, 0);
      v39 = v73;
      v41 = v56 + 16;
      v42 = *(v56 + 16);
      v43 = *(v56 + 80);
      v66 = v38;
      v44 = &v38[(v43 + 32) & ~v43];
      v69 = *(v56 + 72);
      v70 = v42;
      v45 = (v56 + 8);
      v46 = v65;
      do
      {
        v47 = v64;
        v48 = v41;
        v70(v64, v44, v46);
        sub_2759B8BC8();
        v46 = v65;
        (*v45)(v47, v65);
        v73 = v39;
        v50 = *(v39 + 16);
        v49 = *(v39 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2759509B0((v49 > 1), v50 + 1, 1);
          v46 = v65;
          v39 = v73;
        }

        *(v39 + 16) = v50 + 1;
        sub_275827D1C(&v72, v39 + 40 * v50 + 32);
        v44 += v69;
        --v40;
        v41 = v48;
      }

      while (v40);

      v32 = v55;
      v25 = KeyPath;
      goto LABEL_8;
    }
  }

  v32 = v55;
LABEL_8:
  *&v14[*(v32 + 44)] = v39;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  LOBYTE(v72) = 3;
  sub_2758EA064();
  v34 = v59;
  v35 = v54;
  v36 = v53;
  sub_2759BAA68();
  v37 = v67;
  if (v25)
  {

    (*(v37 + 8))(v36, v35);
    (*(*(v33 - 8) + 56))(v34, 1, 1, v33);
  }

  else
  {
    (*(v67 + 8))(v36, v35);
  }

  v51 = v71;
  v52 = v60;
  sub_27595C9E8(v34, &v14[*(v32 + 48)]);
  sub_27595CA58(v14, v52);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_27595CABC(v14);
}

uint64_t sub_27595C53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11070, type metadata accessor for HeaderAnimationView, &unk_2759CC870);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27595C5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView, &unk_2759CC820);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27595C63C(uint64_t a1)
{
  v2 = sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView, &unk_2759CC820);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27595C6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11B60, type metadata accessor for HeaderAnimationView, &unk_2759CC7E8);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27595C774(uint64_t a1, uint64_t a2)
{
  sub_27595CB28(&qword_280A11070, type metadata accessor for HeaderAnimationView, &unk_2759CC870);
  sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView, &unk_2759CC820);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27595C8BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595C92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27595C994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11B70;
  if (!qword_280A11B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B70);
  }

  return result;
}

uint64_t sub_27595C9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595CA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderAnimationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595CABC(uint64_t a1)
{
  v2 = type metadata accessor for HeaderAnimationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27595CB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27595CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11B80;
  if (!qword_280A11B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B80);
  }

  return result;
}

unint64_t sub_27595CBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11B88;
  if (!qword_280A11B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B88);
  }

  return result;
}

unint64_t sub_27595CC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11B90;
  if (!qword_280A11B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B90);
  }

  return result;
}

unint64_t sub_27595CC78(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27595CCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_275950850(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA40, &qword_2759C19B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BD8, &unk_2759CCDB0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_275950850((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595CE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2759508F0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_27586E058(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F920, &qword_2759D0380);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A117F8, &qword_2759CCC40);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2759508F0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_275827D1C(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595CF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_275950930(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v13;
    do
    {
      v11 = *v4;
      v5 = *v4;
      v6 = *(&v11 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11818, &qword_2759CBF38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11808, &qword_2759CCC50);
      swift_dynamicCast();
      v7 = v12;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_275950930((v8 > 1), v9 + 1, 1);
        v7 = v12;
      }

      *(v13 + 16) = v9 + 1;
      *(v13 + 16 * v9 + 32) = v7;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595D098@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  v6 = sub_27585D1B8();
  v23 = v5;
  v24 = v19;
  v25 = v4;
  v26 = v6;
  v18[1] = MEMORY[0x277CDEAC8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v10 = v18 - v9;
  swift_getKeyPath();

  sub_2759B9B18();

  v12 = sub_27595CE18(v11);

  v23 = v5;
  v24 = v19;
  v25 = v4;
  v26 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_27592E2A4(v12, v20, v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  v15 = MEMORY[0x277CE11C0];
  v16 = v22;
  v22[3] = MEMORY[0x277CE11C8];
  v16[4] = v15;
  *v16 = v14;
  return (*(v8 + 8))(v10, OpaqueTypeMetadata2);
}

uint64_t sub_27595D2A4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2759B8AF8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27595D3B8, 0, 0);
}

uint64_t sub_27595D3B8()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadBackupsClientDataAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  type metadata accessor for ManageStorageBackupsDataModel();
  swift_allocObject();

  v0[14] = sub_2758BFFA4(v5);
  v0[15] = sub_2758C1BAC();
  v0[16] = sub_2759BA4C8();
  v0[17] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595D544, v7, v6);
}

uint64_t sub_27595D544()
{

  return MEMORY[0x2822009F8](sub_27595D5AC, 0, 0);
}

uint64_t sub_27595D5AC(uint64_t a1)
{
  *(v1 + 144) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595D638, v3, v2);
}

uint64_t sub_27595D638()
{

  v1 = off_280A128B0;
  *(v0 + 152) = qword_280A128A8;
  *(v0 + 160) = v1;

  return MEMORY[0x2822009F8](sub_27595D6B8, 0, 0);
}

uint64_t sub_27595D6B8()
{
  v29 = v0;
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  sub_2759B8C18();

  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4)
  {
    sub_27586BF04(v0[13], &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[8];
    v9 = v0[9];
    v10 = *(v9 + 16);
    v10(v6, v0[13], v8);
    sub_27586BF04(v5, &qword_280A10DE0, &unk_2759CF4C0);
    v10(v7, v6, v8);
    v11 = (*(v9 + 88))(v7, v8);
    v12 = *(v9 + 8);
    v14 = v0[11];
    v13 = v0[12];
    if (v11 == *MEMORY[0x277D23270])
    {
      v15 = v0[8];
      v16 = v0[9];
      v12(v0[12], v15);
      (*(v16 + 96))(v14, v15);
      v17 = *(*v14 + 16);

      goto LABEL_7;
    }

    v18 = v0[8];
    v12(v0[11], v18);
    type metadata accessor for DecodableStateError(0);
    sub_27595F260(&qword_280A0FA50, 255, type metadata accessor for DecodableStateError, &unk_2759C5438);
    v19 = swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
    v10(v21, v13, v18);
    *(v21 + v22) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
    swift_willThrow();
    v12(v13, v18);
  }

  v17 = sub_2758A289C(MEMORY[0x277D84F90]);
LABEL_7:
  v23 = v0[15];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v17;
  sub_27595EE84(v23, sub_27595E9E4, 0, isUniquelyReferenced_nonNull_native, &v28);
  v0[21] = 0;

  v0[22] = v28;
  v0[23] = sub_2759BA4B8();
  v26 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DA1C, v26, v25);
}

uint64_t sub_27595DA1C()
{

  return MEMORY[0x2822009F8](sub_27595DA84, 0, 0);
}

uint64_t sub_27595DA84(uint64_t a1)
{
  *(v1 + 192) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DB10, v3, v2);
}

uint64_t sub_27595DB10()
{

  v1 = off_280A128B0;
  *(v0 + 200) = qword_280A128A8;
  *(v0 + 208) = v1;

  return MEMORY[0x2822009F8](sub_27595DB90, 0, 0);
}

uint64_t sub_27595DB90()
{
  v1 = v0[22];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *v2 = v5;
  (*(v3 + 104))(v2, *MEMORY[0x277D23270], v4);
  v0[27] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DC78, v7, v6);
}

uint64_t sub_27595DC78()
{
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v0[2] = v2;
  v0[3] = v1;
  sub_2759B8C98();
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_27595DD34, 0, 0);
}

uint64_t sub_27595DD34()
{
  v1 = *(v0[7] + 24);
  v0[28] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_27595DE90;

    return sub_2758C2074();
  }

  else
  {

    sub_2759BA438();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_27595DE90(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_27595DF90, 0, 0);
}

uint64_t sub_27595DF90()
{
  v1 = v0[30];
  v2 = v0[28];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[4] = v2;
  sub_27595F260(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8628();

  sub_2759BA438();

  v4 = v0[1];

  return v4();
}

uint64_t sub_27595E134()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27595E1B0(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_27595E208(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_27595E25C(uint64_t a1@<X8>)
{
  strcpy(a1, "onCompletion");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_27595E2A0(BOOL *a3@<X8>)
{
  v4 = sub_2759BAA48();

  *a3 = v4 != 0;
}

uint64_t sub_27595E2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595F20C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27595E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27595F20C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27595E370(void *a1)
{
  v3 = v1;
  v39 = *v1;
  v40 = v2;
  v5 = sub_2759B8BD8();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BB0, &qword_2759CCC48);
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  *(v1 + 24) = 0;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595F20C(v11, v12, v13);
  v14 = v40;
  sub_2759BAC18();
  if (v14)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v5;
    v15 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    sub_2758C7304();
    sub_2759BAA68();
    v16 = v8;
    if (v41)
    {
      v18 = v41;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      v32 = v10;
      v33 = v16;
      v34 = 0;
      v35 = a1;
      v36 = v1;
      v42 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v19, 0);
      v20 = v42;
      v21 = v15 + 16;
      v22 = *(v15 + 16);
      v23 = *(v15 + 80);
      v31[1] = v18;
      v24 = v18 + ((v23 + 32) & ~v23);
      v38 = *(v21 + 56);
      v39 = v22;
      v25 = (v21 - 8);
      v26 = v40;
      do
      {
        v27 = v21;
        v39(v7, v24, v26);
        sub_2759B8BC8();
        v26 = v40;
        (*v25)(v7, v40);
        v42 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2759509B0((v28 > 1), v29 + 1, 1);
          v26 = v40;
          v20 = v42;
        }

        *(v20 + 16) = v29 + 1;
        sub_275827D1C(&v41, v20 + 40 * v29 + 32);
        v24 += v38;
        --v19;
        v21 = v27;
      }

      while (v19);
      (*(v37 + 8))(v32, v33);

      a1 = v35;
      v3 = v36;
    }

    else
    {
      v30 = v16;

      (*(v37 + 8))(v10, v30);
      v20 = MEMORY[0x277D84F90];
    }

    *(v3 + 16) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_27595E73C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27595E7A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_27595D2A4(a1, a2);
}

uint64_t sub_27595E8FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27595E370(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27595E9E4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_2759B8AF8();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_27595EAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v45 = sub_2759B8AF8();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_27589F26C(v14, v36, &qword_280A10048, &unk_2759CCC00);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_27589F26C(v39, v42, &unk_280A10050, &unk_2759C60A0);
      v37(v40);
      sub_27586BF04(v40, &unk_280A10050, &unk_2759C60A0);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v13, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_27595EE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v9 = sub_2759B8AF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BA8, &qword_2759CCBE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v45 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v49 = a1;
  v50 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v51 = v17;
  v52 = 0;
  v53 = v20 & v18;
  v54 = a2;
  v55 = a3;
  v47 = v10;
  v48 = (v10 + 32);
  v45[3] = v10 + 40;

  v45[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_27595EAA0(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_2758F6594(v49);

      return;
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v48;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v48)(v12, v27, v9);
    v30 = *v56;
    v32 = sub_27586F8A0(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_2759073E8();
      }
    }

    else
    {
      sub_275905500(v35, a4 & 1);
      v37 = sub_27586F8A0(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v56;
    if (v36)
    {

      v21 = v39[7] + *(v47 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v47 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v47 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_2759BAB38();
  __break(1u);
}

unint64_t sub_27595F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11BB8;
  if (!qword_280A11BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BB8);
  }

  return result;
}

uint64_t sub_27595F260(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_27595F2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11BC0;
  if (!qword_280A11BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BC0);
  }

  return result;
}

unint64_t sub_27595F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11BC8;
  if (!qword_280A11BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BC8);
  }

  return result;
}

unint64_t sub_27595F36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11BD0;
  if (!qword_280A11BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BD0);
  }

  return result;
}

uint64_t sub_27595F3C0(uint64_t a1)
{
  v2 = sub_2759B9628();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C20, &qword_2759CCE58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2759B9618();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10798, &qword_2759C7400);
  sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400, MEMORY[0x277CDF028]);
  sub_2759B8DE8();
  v7 = sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58, MEMORY[0x277CDD7A8]);
  MEMORY[0x277C833F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_27595F5AC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarBackButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27595FD2C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27595FD90(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2759B9DB8();
}

uint64_t sub_27595F6D8()
{
  v0 = sub_2759B9048();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  MEMORY[0x277C83C10]();
  sub_2759B9038();
  return sub_2759B9E88();
}

uint64_t sub_27595F788@<X0>(uint64_t a1@<X8>)
{
  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_2759B9998();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27595F898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C10, &qword_2759CCE50);
  sub_27589B02C(&qword_280A11C18, &qword_280A11C08, &qword_2759CCE48, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C20, &qword_2759CCE58);
  sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return sub_2759B9B68();
}

uint64_t View.toolbarBackButton(navigationPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarBackButton(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27595FAF0(a1, v8);
  MEMORY[0x277C83910](v8, a2, v6, a3);
  return sub_27595FB60(v8);
}

uint64_t type metadata accessor for ToolbarBackButton(uint64_t a1)
{
  result = qword_280A11BF0;
  if (!qword_280A11BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27595FAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FB60(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarBackButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27595FBBC()
{
  result = qword_280A11BE8;
  if (!qword_280A11BE8)
  {
    type metadata accessor for ToolbarBackButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BE8);
  }

  return result;
}

void sub_27595FC3C(uint64_t a1)
{
  sub_27595FCA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_27595FCA8(uint64_t a1)
{
  if (!qword_280A11C00)
  {
    sub_2759B9048();
    v1 = sub_2759B9EB8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A11C00);
    }
  }
}

uint64_t sub_27595FD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarBackButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarBackButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FDF4()
{
  type metadata accessor for ToolbarBackButton(0);

  return sub_27595F6D8();
}

uint64_t sub_27595FE54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = sub_2759B87B8();
  sub_275961824(&qword_280A0EFC0, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = sub_2759B8798();
  sub_275961824(&unk_280A10070, MEMORY[0x277D40290], MEMORY[0x277D402B8]);
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_275960198(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B87B8();
  v7[3] = v4;
  v7[4] = &off_288480E78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  swift_beginAccess();
  sub_2758CE724(v7, a2 + 16, &qword_280A10028, &qword_2759CCFB0);
  return swift_endAccess();
}

uint64_t sub_275960254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2759B8798();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  swift_beginAccess();
  sub_2758CE724(v6, a2 + v9, &unk_280A11C60, &qword_2759C6060);
  return swift_endAccess();
}

uint64_t sub_275960398(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_2759BA768();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2759B8768();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;

  sub_2759BA758();
  sub_2759B8748();
  swift_beginAccess();
  sub_27586FBC8(v2 + 16, &v26, &qword_280A10028, &qword_2759CCFB0);
  if (v27)
  {
    sub_275827D1C(&v26, v28);
    v14 = sub_2759BA518();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_27586E058(v28, &v26);
    (*(v8 + 16))(v11, v13, v7);
    sub_2759BA4C8();
    v15 = sub_2759BA4B8();
    v16 = (*(v8 + 80) + 72) & ~*(v8 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_275827D1C(&v26, v17 + 32);
    (*(v8 + 32))(v17 + v16, v11, v7);
    sub_27587D460(0, 0, v5, &unk_2759CCFC0, v17);

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_27586BF04(&v26, &qword_280A10028, &qword_2759CCFB0);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_280A23900);
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E27B0, v28);
      _os_log_impl(&dword_275819000, v20, v21, "%s missing appendSettingsNavigationPath", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_2759607CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v33);
    _os_log_impl(&dword_275819000, v7, v8, "%s NavigationMode is not stateDriven, using legacy navigation", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v11 = sub_2759BA258();
  v12 = PSBundlePathForPreferenceBundle();

  if (v12)
  {
    v13 = v12;

    if (!v13)
    {
      sub_2759BA298();
      v13 = sub_2759BA258();
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

    if (v14)
    {
      [v14 principalClass];
    }

    v15 = CreateDetailControllerInstanceWithClass();
    if (v15)
    {
      v32 = v15;
      if (*(v2 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = sub_2759BA518();
          (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
          sub_2759BA4C8();
          v19 = v17;
          v20 = v32;
          v21 = sub_2759BA4B8();
          v22 = swift_allocObject();
          v23 = MEMORY[0x277D85700];
          v22[2] = v21;
          v22[3] = v23;
          v22[4] = v19;
          v22[5] = v20;
          sub_27587D460(0, 0, v5, &unk_2759CCFD8, v22);

          return;
        }
      }

      v24 = sub_2759B8988();
      v25 = sub_2759BA648();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v33);
        _os_log_impl(&dword_275819000, v24, v25, "%s missing navigationController", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x277C85860](v27, -1, -1);
        MEMORY[0x277C85860](v26, -1, -1);

LABEL_18:
        return;
      }
    }

    else
    {
      v32 = sub_2759B8988();
      v28 = sub_2759BA648();
      if (os_log_type_enabled(v32, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v33);
        _os_log_impl(&dword_275819000, v32, v28, "%s missing detailController", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x277C85860](v30, -1, -1);
        MEMORY[0x277C85860](v29, -1, -1);
        goto LABEL_18;
      }
    }

    v31 = v32;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275960CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275960D88, v7, v6);
}

uint64_t sub_275960D88()
{
  v1 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2759B8768();
  sub_275961824(&unk_280A10030, MEMORY[0x277D40250], MEMORY[0x277D40258]);
  sub_2759B87A8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_275960E58()
{
  sub_27586BF04(v0 + 16, &qword_280A10028, &qword_2759CCFB0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode, &unk_280A11C60, &qword_2759C6060);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushLocalStorageControllerAction(uint64_t a1)
{
  result = qword_280A11C38;
  if (!qword_280A11C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275960F48(uint64_t a1)
{
  sub_2758DB67C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_275960FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_275961280();
}

uint64_t sub_275961144@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  v5 = sub_2759B8798();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel) = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_275961280()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275961328, 0, 0);
}

uint64_t sub_275961328()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "PushLocalStorageControllerAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[10];

  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_2758C4A6C(v7, v8, v9);
  *(v0 + 16) = 1;
  v10 = sub_2759B86A8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v10)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = 0x53656761726F7453;
  }

  if (v10)
  {
    v12 = 0x80000002759E2790;
  }

  else
  {
    v12 = 0xEF73676E69747465;
  }

  v13 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  swift_beginAccess();
  sub_27586FBC8(v6 + v13, v5, &unk_280A11C60, &qword_2759C6060);
  v14 = sub_2759B8798();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = v0[11];
    sub_27586FBC8(v0[12], v16, &unk_280A11C60, &qword_2759C6060);
    if ((*(v15 + 88))(v16, v14) == *MEMORY[0x277D40278])
    {
      sub_275960398(v11, v12);
      goto LABEL_16;
    }

    (*(v15 + 8))(v0[11], v14);
  }

  sub_2759607CC(v11, v12);
LABEL_16:
  v17 = v0[12];

  sub_27586BF04(v17, &unk_280A11C60, &qword_2759C6060);

  v18 = v0[1];

  return v18();
}

uint64_t sub_275961614(uint64_t a1)
{
  v4 = *(sub_2759B8768() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275960CF0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_275961708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DB20C(a1, v4, v5, v7, v6);
}

void sub_2759617D8(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel) = *a1;
  v3 = v2;
}

uint64_t sub_275961824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27596186C()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  return *(v0 + 16);
}

void sub_27596190C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  *a2 = *(v3 + 16);
}

void sub_2759619B4(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
    sub_2759B8628();
  }
}

void sub_275961AC4(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  *a2 = *(a1 + 16);
}

uint64_t sub_275961B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_275962908(v6);
}

uint64_t sub_275961C48()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  return *(v0 + 17);
}

void sub_275961CE8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  *a2 = *(v3 + 17);
}

void sub_275961D90(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
    sub_2759B8628();
  }
}

void sub_275961EA0(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  *a2 = *(a1 + 17);
}

double sub_275961F68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *a1;
  sub_2759BA4E8();
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_2759BA4C8();

  v14 = sub_2759BA4B8();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a4;
  *(v15 + 40) = v12;
  sub_27587D460(0, 0, v11, a6, v15);

  return result;
}

uint64_t sub_27596209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2758CA09C;

  return sub_275963834(v6);
}

id sub_275962158()
{
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  v1 = *(v0 + 40);

  return v1;
}

id sub_275962208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
  sub_2759B8638();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_2759622EC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_275861AF8(0, &qword_280A11CA8, 0x277D262A0);
  v5 = v4;
  v6 = sub_2759BA788();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
    sub_2759B8628();
  }
}

id sub_275962458()
{
  result = [*(v0 + 24) accounts];
  if (result)
  {
    v2 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2759645A4(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
    v3 = sub_2759BA1D8();

    if (*(v3 + 16) && (v4 = sub_2758A342C(), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275962554()
{
  v1 = v0;
  v2 = sub_275962458();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa:*MEMORY[0x277CB8A58] useCellularForDataclass:?];
    v5 = [v3 aa:*MEMORY[0x277CB89B8] useCellularForDataclass:?];
    v6 = v5;
    v7 = v4 & v5;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E28E0, &v20);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v4;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v6 & 1;
      *(v11 + 24) = 1024;
      *(v11 + 26) = v7;
      _os_log_impl(&dword_275819000, v9, v10, "%s ubiquity: %{BOOL}d keyValue: %{BOOL}d returning: %{BOOL}d", v11, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    if (v7 == *(v1 + 16))
    {

      *(v1 + 16) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v20 = v1;
      sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
      sub_2759B8628();
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E28E0, &v20);
      _os_log_impl(&dword_275819000, v15, v16, "%s missing account", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_275962908(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 209) = a1;
  sub_2759BA4C8();
  *(v2 + 152) = sub_2759BA4B8();
  v4 = sub_2759BA468();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_2759629A4, v4, v3);
}

uint64_t sub_2759629A4()
{
  v26 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 209);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v25);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_275819000, v2, v3, "%s setting %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 209);
  if (v8 == *(v7 + 16))
  {
    *(v7 + 16) = v8;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v0 + 80) = v7;
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
    sub_2759B8628();
  }

  v10 = sub_275962458();
  *(v0 + 184) = v10;
  if (v10)
  {
    v11 = v10;
    v12 = *(v0 + 144);
    v13 = *(v12 + 32);
    if (v13)
    {
      v14 = *(v0 + 209);
      v15 = v13;
      ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(0, v14);

      v12 = *(v0 + 144);
    }

    v16 = *(v0 + 209);
    [v11 aa:v16 setUseCellular:*MEMORY[0x277CB8A58] forDataclass:?];
    [v11 aa:v16 setUseCellular:*MEMORY[0x277CB89B8] forDataclass:?];
    v17 = [*(v12 + 24) accountStore];
    *(v0 + 192) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_275962E70;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2758DCBF0;
    *(v0 + 104) = &block_descriptor_36;
    *(v0 + 112) = v18;
    [v17 saveAccount:v11 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v19 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v25);
      _os_log_impl(&dword_275819000, v19, v20, "%s missing account", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_275962E70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_27596317C;
  }

  else
  {
    v5 = sub_275962FA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_275962FA0()
{
  v18 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 208);

  if ((v3 & 1) == 0)
  {
    [*(v0 + 184) reload];
  }

  v4 = sub_275962554();
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 209);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    *(v8 + 18) = 1024;
    *(v8 + 20) = v3;
    *(v8 + 24) = 1024;
    *(v8 + 26) = v4 & 1;
    _os_log_impl(&dword_275819000, v5, v6, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v8, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v10 = *(*(v0 + 144) + 32);
  if (v10)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 209);
    if (v3)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v10;
    ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(v13, v12);
  }

  else
  {
    v14 = *(v0 + 184);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_27596317C()
{
  v27 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_willThrow();

  v4 = v1;
  v5 = sub_2759B8988();
  v6 = sub_2759BA648();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 200);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v26);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_275819000, v5, v6, "%s error during account save: %@", v9, 0x16u);
    sub_275875554(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {
  }

  [*(v0 + 184) reload];
  v14 = sub_275962554();
  v15 = sub_2759B8988();
  v16 = sub_2759BA668();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 209);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E28C0, v26);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v17;
    *(v18 + 18) = 1024;
    *(v18 + 20) = 0;
    *(v18 + 24) = 1024;
    *(v18 + 26) = v14 & 1;
    _os_log_impl(&dword_275819000, v15, v16, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v18, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x277C85860](v19, -1, -1);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  v20 = *(*(v0 + 144) + 32);
  if (v20)
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 209);
    v23 = v20;
    ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(2, v22);
  }

  else
  {
    v23 = *(v0 + 184);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_275963480()
{
  v1 = v0;
  v2 = sub_275962458();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 aa:*MEMORY[0x277CB8A58] allowUnlimitedUpdatesForDataclass:?];
    v5 = [v3 aa:*MEMORY[0x277CB89B8] allowUnlimitedUpdatesForDataclass:?];
    v6 = v5;
    v7 = v4 & v5;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315906;
      *(v11 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E28A0, &v20);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v4;
      *(v11 + 18) = 1024;
      *(v11 + 20) = v6 & 1;
      *(v11 + 24) = 1024;
      *(v11 + 26) = v7;
      _os_log_impl(&dword_275819000, v9, v10, "%s ubiquity: %{BOOL}d keyValue: %{BOOL}d returning: %{BOOL}d", v11, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    if (v7 == *(v1 + 17))
    {

      *(v1 + 17) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v20 = v1;
      sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
      sub_2759B8628();
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E28A0, &v20);
      _os_log_impl(&dword_275819000, v15, v16, "%s missing account", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x277C85860](v18, -1, -1);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_275963834(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 209) = a1;
  sub_2759BA4C8();
  *(v2 + 152) = sub_2759BA4B8();
  v4 = sub_2759BA468();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_2759638D0, v4, v3);
}

uint64_t sub_2759638D0()
{
  v26 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 209);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v25);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_275819000, v2, v3, "%s setting %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 209);
  if (v8 == *(v7 + 17))
  {
    *(v7 + 17) = v8;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v0 + 80) = v7;
    sub_2759645A4(&qword_280A0FF80, type metadata accessor for ICSDriveCellularViewModel, &unk_2759CD110);
    sub_2759B8628();
  }

  v10 = sub_275962458();
  *(v0 + 184) = v10;
  if (v10)
  {
    v11 = v10;
    v12 = *(v0 + 144);
    v13 = *(v12 + 32);
    if (v13)
    {
      v14 = *(v0 + 209);
      v15 = v13;
      ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(0, v14);

      v12 = *(v0 + 144);
    }

    v16 = *(v0 + 209);
    [v11 aa:v16 setAllowUnlimitedUpdates:*MEMORY[0x277CB8A58] forDataclass:?];
    [v11 aa:v16 setAllowUnlimitedUpdates:*MEMORY[0x277CB89B8] forDataclass:?];
    v17 = [*(v12 + 24) accountStore];
    *(v0 + 192) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_275963D9C;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2758DCBF0;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v18;
    [v17 saveAccount:v11 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v19 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v25);
      _os_log_impl(&dword_275819000, v19, v20, "%s missing account", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_275963D9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_2759640A8;
  }

  else
  {
    v5 = sub_275963ECC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_275963ECC()
{
  v18 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 208);

  if ((v3 & 1) == 0)
  {
    [*(v0 + 184) reload];
  }

  v4 = sub_275963480();
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 209);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    *(v8 + 18) = 1024;
    *(v8 + 20) = v3;
    *(v8 + 24) = 1024;
    *(v8 + 26) = v4 & 1;
    _os_log_impl(&dword_275819000, v5, v6, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v8, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v10 = *(*(v0 + 144) + 32);
  if (v10)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 209);
    if (v3)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v10;
    ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(v13, v12);
  }

  else
  {
    v14 = *(v0 + 184);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2759640A8()
{
  v27 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_willThrow();

  v4 = v1;
  v5 = sub_2759B8988();
  v6 = sub_2759BA648();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 200);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v26);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_275819000, v5, v6, "%s error during account save: %@", v9, 0x16u);
    sub_275875554(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {
  }

  [*(v0 + 184) reload];
  v14 = sub_275963480();
  v15 = sub_2759B8988();
  v16 = sub_2759BA668();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 209);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_2758937B8(0xD000000000000022, 0x80000002759E2870, v26);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v17;
    *(v18 + 18) = 1024;
    *(v18 + 20) = 0;
    *(v18 + 24) = 1024;
    *(v18 + 26) = v14 & 1;
    _os_log_impl(&dword_275819000, v15, v16, "%s set %{BOOL}d with success %{BOOL}d. Updating view to state: %{BOOL}d", v18, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x277C85860](v19, -1, -1);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  v20 = *(*(v0 + 144) + 32);
  if (v20)
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 209);
    v23 = v20;
    ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(2, v22);
  }

  else
  {
    v23 = *(v0 + 184);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2759643AC()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings25ICSDriveCellularViewModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICSDriveCellularViewModel(uint64_t a1)
{
  result = qword_280A11C98;
  if (!qword_280A11C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2759644B4(uint64_t a1)
{
  result = sub_2759B8678();
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

uint64_t sub_2759645A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2759645EC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  sub_2759B8668();
  *(v4 + 24) = a1;
  *(v4 + 40) = a2;
  if (a3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
LABEL_9:
    v21 = *(v4 + 32);
    *(v4 + 32) = v10;
    v22 = a3;

    sub_275962554();
    sub_275963480();
    return v4;
  }

  v11 = a1;
  v12 = a2;
  result = [v11 accounts];
  if (result)
  {
    v14 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_2759645A4(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
    v15 = sub_2759BA1D8();

    if (*(v15 + 16) && (v16 = sub_2758A342C(), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      v19 = v18;
    }

    else
    {
      v18 = 0;
    }

    v20 = objc_allocWithZone(type metadata accessor for ICSAnalyticsController());
    v10 = sub_275935F68(v18);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_275964780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_27596209C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275964884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_275961B8C(a1, v4, v5, v6, v7);
}

uint64_t sub_275964980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = MEMORY[0x277CE11C8];
  v14 = MEMORY[0x277CE11C0];
  v12[0] = a4;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);

    do
    {
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_2759B8B28();
      sub_275827D1C(&v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_275827D1C(v11, v12);
      v5 += 5;
      --v4;
    }

    while (v4);
    v6 = v13;
    v7 = v14;
  }

  else
  {

    v6 = MEMORY[0x277CE11C8];
    v7 = MEMORY[0x277CE11C0];
  }

  __swift_project_boxed_opaque_existential_1(v12, v6);
  v8 = sub_27592E400(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t sub_275964AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v19 = v6;
  *&v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F968, &qword_2759C4A10);
  *(&v15 + 1) = sub_2759B9608();
  v16 = sub_2758BF024();
  v17 = MEMORY[0x277CE0380];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v4, v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_2759B8B28();
      sub_275827D1C(&v14, &v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_275827D1C(&v15, v18);
      v9 += 5;
      --v8;
    }

    while (v8);
  }

  v10 = v19;
  v11 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v12 = sub_27592E400(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v12;
}

uint64_t sub_275964C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = type metadata accessor for WebViewRepresentable(0);
  v17 = sub_2759662FC(&qword_280A0FB58, 255, type metadata accessor for WebViewRepresentable, &unk_2759C5150);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_275966298(v4, boxed_opaque_existential_1);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_2759B8B28();
      sub_275827D1C(&v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
      sub_275827D1C(v14, v15);
      v8 += 5;
      --v7;
    }

    while (v7);
  }

  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v11 = sub_27592E400(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_275964E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v32 = a4;
  v9 = sub_2759BA728();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    v14 = *(v5 + 16);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_27595CE18(v14);

  v16 = sub_27592E2A4(v15, a2, a3, v12, v11);

  if (*(v5 + 24))
  {
    v17 = *(v5 + 24);
  }

  else
  {
    v17 = v13;
  }

  v18 = sub_27595CE18(v17);

  v31 = sub_275964980(v18, a2, a3, v16);

  v19 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3F0 != -1)
  {
    swift_once();
  }

  v20 = v33;
  sub_2759BA738();

  v21 = swift_allocObject();
  *(v21 + 2) = v5;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CC0, &unk_2759D0680);
  v23 = v32;
  v32[3] = v22;
  v23[4] = sub_2759660C8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v26 = v34;
  v25 = v35;
  (*(v34 + 16))(boxed_opaque_existential_1 + *(v22 + 52), v20, v35);
  *boxed_opaque_existential_1 = v31;
  v27 = (boxed_opaque_existential_1 + *(v22 + 56));
  *v27 = sub_2759660BC;
  v27[1] = v21;
  v28 = *(v26 + 8);

  return v28(v20, v25);
}

uint64_t sub_2759650E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2759B8278();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  strcpy(&v16, "ResultSuccess");
  HIWORD(v16) = -4864;
  sub_2759BA878();
  if (!*(v6 + 16) || (v7 = sub_2758A24F8(v15), (v8 & 1) == 0))
  {

    sub_275864C40(v15);
LABEL_8:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  sub_275864C94(*(v6 + 56) + 32 * v7, &v16);
  sub_275864C40(v15);

  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_275860FE4(&v16);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v9 = v15[0];
    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_2815ADE70);
  v11 = sub_2759B8988();
  v12 = sub_2759BA668();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_275819000, v11, v12, "MessagesDisableAndDeleteAction completed with success %{BOOL}d", v13, 8u);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  if (v9)
  {
    if (!*(a2 + 16))
    {
      return sub_275952B58(v9 ^ 1u, sub_27594A594);
    }

    goto LABEL_19;
  }

  if (*(a2 + 24))
  {
LABEL_19:
    sub_2759BA438();
  }

  return sub_275952B58(v9 ^ 1u, sub_27594A594);
}

uint64_t sub_275965310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7272456E6FLL;
  }

  else
  {
    v3 = 0x7365636375536E6FLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F7272456E6FLL;
  }

  else
  {
    v5 = 0x7365636375536E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_2759653BC()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275965444(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759654B8(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_27596553C(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_27596559C(uint64_t *a1@<X8>)
{
  v2 = 0x7365636375536E6FLL;
  if (*v1)
  {
    v2 = 0x726F7272456E6FLL;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2759655E0()
{
  if (*v0)
  {
    return 0x726F7272456E6FLL;
  }

  else
  {
    return 0x7365636375536E6FLL;
  }
}

void sub_275965620(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_275965684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596612C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759656C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596612C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_2759656FC(void *a1)
{
  v3 = v1;
  v57 = *v1;
  v58 = v2;
  v5 = sub_2759B8BD8();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CD0, &unk_2759CD2F8);
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v45 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596612C(v11, v12, v13);
  v14 = v58;
  sub_2759BAC18();
  v15 = v14;
  if (v14)
  {
    goto LABEL_13;
  }

  v52 = v1;
  v58 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v59[0]) = 0;
  v17 = sub_2758C7304();
  sub_2759BAA68();
  v51 = v17;
  if (v61)
  {
    v50 = v16;
    v18 = *(v61 + 16);
    v19 = v52;
    if (v18)
    {
      v46 = v10;
      v47 = 0;
      v48 = v8;
      v49 = a1;
      v60 = MEMORY[0x277D84F90];
      v20 = v61;
      sub_2759509B0(0, v18, 0);
      v21 = v60;
      v22 = *(v53 + 16);
      v23 = *(v53 + 80);
      v45[1] = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v55 = *(v53 + 72);
      v56 = v22;
      v25 = (v53 + 8);
      v26 = v58;
      do
      {
        v56(v7, v24, v26);
        sub_2759B8BC8();
        v26 = v58;
        (*v25)(v7, v58);
        v60 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2759509B0((v27 > 1), v28 + 1, 1);
          v26 = v58;
          v21 = v60;
        }

        *(v21 + 16) = v28 + 1;
        sub_275827D1C(v59, v21 + 40 * v28 + 32);
        v24 += v55;
        --v18;
      }

      while (v18);

      v29 = v52;
      v8 = v48;
      a1 = v49;
      v10 = v46;
      v15 = v47;
    }

    else
    {

      v29 = v19;
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
    v29 = v52;
  }

  v30 = v29;
  v29[2] = v21;
  LOBYTE(v59[0]) = 1;
  sub_2759BAA68();
  if (v15)
  {
    (*(v54 + 8))(v10, v8);
    v3 = v30;

LABEL_13:
    swift_deallocPartialClassInstance();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  if (v61)
  {
    v32 = *(v61 + 16);
    if (v32)
    {
      v46 = v10;
      v47 = 0;
      v48 = v8;
      v49 = a1;
      v60 = MEMORY[0x277D84F90];
      v33 = v61;
      sub_2759509B0(0, v32, 0);
      v34 = v60;
      v35 = v53 + 16;
      v36 = *(v53 + 16);
      v37 = *(v53 + 80);
      v55 = v33;
      v38 = v33 + ((v37 + 32) & ~v37);
      v56 = *(v53 + 72);
      v57 = v36;
      v39 = (v53 + 8);
      v40 = v58;
      do
      {
        v41 = v35;
        v57(v7, v38, v40);
        sub_2759B8BC8();
        v40 = v58;
        (*v39)(v7, v58);
        v60 = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2759509B0((v42 > 1), v43 + 1, 1);
          v40 = v58;
          v34 = v60;
        }

        *(v34 + 16) = v43 + 1;
        sub_275827D1C(v59, v34 + 40 * v43 + 32);
        v38 += v56;
        --v32;
        v35 = v41;
      }

      while (v32);

      v30 = v52;
      v8 = v48;
      a1 = v49;
      v10 = v46;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v34 = 0;
  }

  v3 = v30;
  v30[3] = v34;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v44 = result;
    (*(v54 + 8))(v10, v8);
    v30[4] = v44;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_275965CB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275965D1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_275965F5C();
}

void *sub_275965E74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759656FC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_275965F7C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Messages disable and delete action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 32);
  [v6 setupIMCloudKitHooks];
  [v6 tryToDisableAllDevices];
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_2759660C8()
{
  result = qword_280A11CC8;
  if (!qword_280A11CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11CC0, &unk_2759D0680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CC8);
  }

  return result;
}

unint64_t sub_27596612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11CD8;
  if (!qword_280A11CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CD8);
  }

  return result;
}

unint64_t sub_275966194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11CE0;
  if (!qword_280A11CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CE0);
  }

  return result;
}

unint64_t sub_2759661EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11CE8;
  if (!qword_280A11CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CE8);
  }

  return result;
}

unint64_t sub_275966244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11CF0;
  if (!qword_280A11CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11CF0);
  }

  return result;
}

uint64_t sub_275966298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759662FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for IfLSRecordView(uint64_t a1)
{
  result = qword_280A11D00;
  if (!qword_280A11D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759663B8(uint64_t a1)
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2759664DC(319);
      if (v3 <= 0x3F)
      {
        sub_27585AF74(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2759664DC(uint64_t a1)
{
  if (!qword_280A11D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D18, &qword_2759CD480);
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A11D10);
    }
  }
}

uint64_t sub_275966540@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v92[1] = *MEMORY[0x277D85DE8];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D40, &qword_2759CD5A8);
  MEMORY[0x28223BE20](v83);
  v82 = &v66 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC8, &qword_2759C5670);
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v66 - v8;
  v9 = sub_2759B8A38();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v66 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D48, &qword_2759CD5B0);
  v13 = MEMORY[0x28223BE20](v79);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = sub_2759B8AF8();
  v85 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v84 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v66 - v23;
  v25 = type metadata accessor for IfLSRecordView(0);
  sub_27586FBC8(v1 + v25[8], v24, &qword_280A11CF8, &unk_2759CD458);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D18, &qword_2759CD480);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_27586BF04(v24, &qword_280A11CF8, &unk_2759CD458);
    goto LABEL_5;
  }

  v69 = v15;
  v68 = v17;
  v28 = v25[9];
  v70 = v1;
  if (!*(v1 + v28))
  {
    sub_2759B8C08();
    sub_27596824C(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  sub_27596817C();

  sub_2759B8AA8();

  (*(v27 + 8))(v24, v26);
  v42 = v92[0];
  v43 = *(v92[0] + 2);
  if (!v43)
  {

    v1 = v70;
    v15 = v69;
LABEL_5:
    v29 = v1 + v25[7];
    v30 = v76;
    sub_27586FBC8(v29, v76, &qword_280A0E6B0, &qword_2759C0D00);
    v32 = v77;
    v31 = v78;
    v33 = (*(v77 + 48))(v30, 1, v78);
    v34 = v81;
    v35 = v82;
    if (v33 == 1)
    {
      sub_27586BF04(v30, &qword_280A0E6B0, &qword_2759C0D00);
      v36 = 1;
    }

    else
    {
      v37 = *(v32 + 32);
      v38 = v74;
      v37(v74, v30, v31);
      v39 = v75;
      v40 = &v75[*(v34 + 36)];
      sub_2759B8FD8();
      sub_2759BA4E8();
      *v40 = &unk_2759CD5B8;
      *(v40 + 1) = 0;
      v37(v39, v38, v31);
      sub_27589F26C(v39, v15, &qword_280A0FCC8, &qword_2759C5670);
      v36 = 0;
    }

    goto LABEL_8;
  }

  v67 = v25;
  v44 = 0;
  v45 = v85;
  v46 = v92[0] + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v90 = v85 + 16;
  v89 = v85 + 88;
  v88 = *MEMORY[0x277D232A0];
  v91 = (v85 + 8);
  v73 = (v85 + 96);
  v47 = v86;
  v48 = v84;
  while (1)
  {
    if (v44 >= v42[2])
    {
      __break(1u);
    }

    v50 = *(v45 + 16);
    v50(v47, &v46[*(v45 + 72) * v44], v18);
    v50(v48, v47, v18);
    v51 = (*(v45 + 88))(v48, v18);
    if (v51 == v88)
    {
      break;
    }

    v49 = *v91;
    (*v91)(v47, v18);
    v49(v48, v18);
LABEL_12:
    if (v43 == ++v44)
    {

      v15 = v69;
      v25 = v67;
      v1 = v70;
      goto LABEL_5;
    }
  }

  (*v73)(v48, v18);
  v52 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v53 = sub_2759BA258();

  v92[0] = 0;
  v54 = [v52 initWithBundleIdentifier:v53 allowPlaceholder:0 error:v92];

  if (!v54)
  {
    v55 = v92[0];
    v56 = sub_2759B8448();

    swift_willThrow();
    v47 = v86;
    (*v91)(v86, v18);

    v48 = v84;
    v45 = v85;
    goto LABEL_12;
  }

  v57 = *v91;
  v58 = v92[0];
  v57(v86, v18);

  v59 = v72;
  sub_27586FBC8(v70 + v67[6], v72, &qword_280A0E6B0, &qword_2759C0D00);
  v61 = v77;
  v60 = v78;
  if ((*(v77 + 48))(v59, 1, v78) == 1)
  {
    sub_27586BF04(v59, &qword_280A0E6B0, &qword_2759C0D00);
    v36 = 1;
    v35 = v82;
    v34 = v81;
    v15 = v68;
  }

  else
  {
    v62 = *(v61 + 32);
    v63 = v71;
    v62(v71, v59, v60);
    v34 = v81;
    v64 = v75;
    v65 = &v75[*(v81 + 36)];
    sub_2759B8FD8();
    sub_2759BA4E8();
    *v65 = &unk_2759CD5C0;
    *(v65 + 1) = 0;
    v62(v64, v63, v60);
    v15 = v68;
    sub_27589F26C(v64, v68, &qword_280A0FCC8, &qword_2759C5670);
    v36 = 0;
    v35 = v82;
  }

LABEL_8:
  (*(v80 + 56))(v15, v36, 1, v34);
  sub_27586FBC8(v15, v35, &qword_280A11D48, &qword_2759CD5B0);
  swift_storeEnumTagMultiPayload();
  sub_2759680F8();
  sub_2759B95E8();
  return sub_27586BF04(v15, &qword_280A11D48, &qword_2759CD5B0);
}

uint64_t sub_27596703C()
{
  sub_2759BA4C8();
  *(v0 + 16) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759670D0, v2, v1);
}

uint64_t sub_2759670D0()
{

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "IFLSRecordView: record found", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2759671EC()
{
  sub_2759BA4C8();
  *(v0 + 16) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275967280, v2, v1);
}

uint64_t sub_275967280()
{

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "IFLSRecordView: record not found", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2759673A8()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275967454(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759674EC(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_275967594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275968554(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2759675C4(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x6449656C646E7562;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 1852139636;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_27596762C()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x6449656C646E7562;
  }

  if (*v0)
  {
    v1 = 1852139636;
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

unint64_t sub_275967690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275968554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2759676B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759681F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759676F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759681F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_275967730(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - v9;
  v41 = sub_2759B85A8();
  v48 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v46 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D60, &qword_2759CD5C8);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v38 - v11;
  v13 = type metadata accessor for IfLSRecordView(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 2) = MEMORY[0x277D84F90];
  v17 = &v16[*(v14 + 36)];
  sub_2759B8C08();
  sub_27596824C(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  *v17 = sub_2759B9168();
  v17[1] = v18;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759681F8(v19, v20, v21);
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v48;
    v39 = v13;
    v40 = v16;
    v53 = 0;
    v23 = v46;
    v24 = v47;
    v25 = sub_2759BAA58();
    if (!v26)
    {
      sub_2759B8598();
      v27 = sub_2759B8588();
      v29 = v28;
      (*(v22 + 1))(v23, v41);
      v26 = v29;
      v25 = v27;
    }

    v30 = v40;
    *v40 = v25;
    v30[1] = v26;
    sub_2759B8A38();
    v52 = 1;
    sub_27596824C(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v31 = v42;
    v48 = v12;
    sub_2759BAA68();
    v46 = a1;
    v33 = v39;
    v32 = v40;
    sub_27589F26C(v31, v40 + *(v39 + 24), &qword_280A0E6B0, &qword_2759C0D00);
    v51 = 2;
    v34 = v43;
    sub_2759BAA68();
    v35 = v44;
    sub_27589F26C(v34, v32 + *(v33 + 28), &qword_280A0E6B0, &qword_2759C0D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11D18, &qword_2759CD480);
    v50 = 3;
    sub_275968294();
    v36 = v48;
    sub_2759BAA68();
    (*(v49 + 8))(v36, v24);
    v37 = v45;
    sub_27589F26C(v35, v32 + *(v33 + 32), &qword_280A11CF8, &unk_2759CD458);
    sub_2759682F8(v32, v37);
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_27596835C(v32);
  }
}

uint64_t sub_275967D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11048, type metadata accessor for IfLSRecordView, &unk_2759CD560);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275967DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView, &unk_2759CD510);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275967E78(uint64_t a1)
{
  v2 = sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView, &unk_2759CD510);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_275967EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27596824C(&qword_280A11D38, type metadata accessor for IfLSRecordView, &unk_2759CD4D8);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275967FB0(uint64_t a1, uint64_t a2)
{
  sub_27596824C(&qword_280A11048, type metadata accessor for IfLSRecordView, &unk_2759CD560);
  sub_27596824C(&qword_280A11D20, type metadata accessor for IfLSRecordView, &unk_2759CD510);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2759680F8()
{
  result = qword_280A11D50;
  if (!qword_280A11D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D48, &qword_2759CD5B0);
    sub_2758CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D50);
  }

  return result;
}

unint64_t sub_27596817C()
{
  result = qword_280A11D58;
  if (!qword_280A11D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FA60, &qword_2759C4B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D58);
  }

  return result;
}

unint64_t sub_2759681F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11D68;
  if (!qword_280A11D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D68);
  }

  return result;
}

uint64_t sub_27596824C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275968294()
{
  result = qword_280A11D70;
  if (!qword_280A11D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D18, &qword_2759CD480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D70);
  }

  return result;
}

uint64_t sub_2759682F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfLSRecordView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27596835C(uint64_t a1)
{
  v2 = type metadata accessor for IfLSRecordView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759683C8()
{
  result = qword_280A11D78;
  if (!qword_280A11D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11D80, &qword_2759CD5E0);
    sub_2759680F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D78);
  }

  return result;
}

unint64_t sub_275968450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11D88;
  if (!qword_280A11D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D88);
  }

  return result;
}

unint64_t sub_2759684A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11D90;
  if (!qword_280A11D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D90);
  }

  return result;
}

unint64_t sub_275968500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11D98;
  if (!qword_280A11D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11D98);
  }

  return result;
}

unint64_t sub_275968554(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_2759685A0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (v5[3])
  {
    v11 = v5[3];
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_27595CE18(v11);

  v13 = sub_27592E2A4(v12, a2, a3, v9, v10);

  v14 = MEMORY[0x277D84F90];
  if (v5[4])
  {
    v15 = v5[4];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_275964980(v16, a2, a3, v13);

  if (v5[5])
  {
    v18 = v5[5];
  }

  else
  {
    v18 = v14;
  }

  v19 = sub_27595CE18(v18);

  sub_275964980(v19, a2, a3, v17);

  swift_getKeyPath();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DB0, &unk_2759CD8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2759B9B18();

  return result;
}

uint64_t sub_2759687E8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_27596880C, 0, 0);
}

uint64_t sub_27596880C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Health disable and delete action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[10];

  if (*(v5 + 24))
  {
    sub_2759BA438();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = *(v6 + 16);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v8;
  v10[4] = v7;
  v0[6] = sub_27596A170;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_275956A0C;
  v0[5] = &block_descriptor_14;
  v11 = _Block_copy(v0 + 2);

  [v9 disableCloudSyncAndDeleteAllCloudDataWithCompletion_];
  _Block_release(v11);
  v12 = v0[1];

  return v12();
}

void sub_275968A0C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v13 = sub_2759B89A8();
  __swift_project_value_buffer(v13, qword_2815ADE70);
  v14 = a2;
  v15 = sub_2759B8988();
  v16 = sub_2759BA668();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 67109378;
    *(v17 + 4) = a1 & 1;
    *(v17 + 8) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 10) = v20;
    *v18 = v21;
    _os_log_impl(&dword_275819000, v15, v16, "Health disabled with success: %{BOOL}d error: %@", v17, 0x12u);
    sub_275875554(v18);
    MEMORY[0x277C85860](v18, -1, -1);
    MEMORY[0x277C85860](v17, -1, -1);
  }

  if (a1)
  {
    if (*(a3 + 32))
    {
      sub_2759BA438();
    }

    a2 = 0;
  }

  else
  {
    v22 = sub_2759BA518();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a5;

    sub_27587D460(0, 0, v12, &unk_2759CD878, v23);

    v24 = a2;
    v25 = a2;
  }

  sub_275952E8C(a2, (a1 & 1) == 0, sub_27594A594);
}

uint64_t sub_275968CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_275968D10, 0, 0);
}

uint64_t sub_275968D10()
{
  v1 = *(v0[3] + 48);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_275968EC4;

    return ManageStorageAppsListViewModel.fetchHealthEnabled()();
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_275819000, v5, v6, "Health disable failed but health is disabled, running success actions", v7, 2u);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v8 = v0[3];

    if (*(v8 + 32))
    {
      sub_2759BA438();
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_275968EC4()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_275968FD8, 0, 0);
}

uint64_t sub_275968FD8()
{
  v1 = *(v0[3] + 48);
  if (v1)
  {
    swift_getKeyPath();
    v0[2] = v1;
    sub_27596A2F4(&qword_280A12810, 255, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    v2 = v1;
    sub_2759B8638();

    v3 = v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled];

    if (v3 == 1)
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v4 = sub_2759B89A8();
      __swift_project_value_buffer(v4, qword_2815ADE70);
      v5 = sub_2759B8988();
      v6 = sub_2759BA668();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_275819000, v5, v6, "Health disable failed, health is still enabled, running error actions", v7, 2u);
        MEMORY[0x277C85860](v7, -1, -1);
      }

      v8 = v0[3];

      if (!*(v8 + 40))
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_2759BA438();
      goto LABEL_15;
    }
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_2815ADE70);
  v10 = sub_2759B8988();
  v11 = sub_2759BA668();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_275819000, v10, v11, "Health disable failed but health is disabled, running success actions", v12, 2u);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  v13 = v0[3];

  if (*(v13 + 32))
  {
    goto LABEL_14;
  }

LABEL_15:
  v14 = v0[1];

  return v14();
}

uint64_t sub_275969270(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7365636375536E6FLL;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x726F7272456E6FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74726174536E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7365636375536E6FLL;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x726F7272456E6FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74726174536E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27596937C()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275969424(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759694B8(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_27596955C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27596A454(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27596958C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x7365636375536E6FLL;
  if (v2 != 1)
  {
    v5 = 0x726F7272456E6FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726174536E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2759695F0()
{
  v1 = 0x7365636375536E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F7272456E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726174536E6FLL;
  }
}

unint64_t sub_275969650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27596A454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275969678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596A2A0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759696B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596A2A0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2759696F0(void *a1)
{
  v3 = v1;
  v72 = *v1;
  v73 = v2;
  v74 = sub_2759B8BD8();
  v69 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DB8, &unk_2759CD8E8);
  v70 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  *(v1 + 48) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];

  *(v3 + 16) = v11;
  v12 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596A2A0(v13, v14, v15);
  v16 = v73;
  sub_2759BAC18();
  v17 = v16;
  if (v16)
  {

LABEL_4:
    swift_deallocPartialClassInstance();
    v22 = a1;
    goto LABEL_5;
  }

  v73 = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v75[0]) = 0;
  v19 = sub_2758C7304();
  v20 = v9;
  sub_2759BAA68();
  v21 = v7;
  v68 = v19;
  a1 = v12;
  if (v77)
  {
    v67 = v7;
    v24 = *(v77 + 2);
    v25 = v73;
    if (v24)
    {
      v62 = 0;
      v63 = v18;
      v64 = v20;
      v65 = v3;
      v66 = a1;
      v76 = MEMORY[0x277D84F90];
      v26 = v77;
      sub_2759509B0(0, v24, 0);
      v27 = v76;
      v71 = *(v69 + 16);
      v28 = *(v69 + 80);
      v61 = v26;
      v29 = &v26[(v28 + 32) & ~v28];
      v30 = *(v69 + 72);
      v31 = (v69 + 8);
      do
      {
        v32 = v74;
        v71(v25, v29, v74);
        sub_2759B8BC8();
        (*v31)(v25, v32);
        v76 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2759509B0((v33 > 1), v34 + 1, 1);
          v27 = v76;
        }

        *(v27 + 16) = v34 + 1;
        sub_275827D1C(v75, v27 + 40 * v34 + 32);
        v29 += v30;
        --v24;
        v25 = v73;
      }

      while (v24);

      v3 = v65;
      a1 = v66;
      v21 = v67;
      v18 = v63;
      v20 = v64;
      v17 = v62;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
      v21 = v67;
    }
  }

  else
  {
    v27 = 0;
    v25 = v73;
  }

  *(v3 + 24) = v27;
  LOBYTE(v75[0]) = 1;
  sub_2759BAA68();
  v35 = v17;
  if (v17)
  {
    goto LABEL_27;
  }

  if (v77)
  {
    v62 = 0;
    v36 = *(v77 + 2);
    if (v36)
    {
      v63 = v18;
      v64 = v20;
      v66 = a1;
      v67 = v21;
      v65 = v3;
      v76 = MEMORY[0x277D84F90];
      v37 = v77;
      sub_2759509B0(0, v36, 0);
      v38 = v76;
      v71 = *(v69 + 16);
      v39 = *(v69 + 80);
      v61 = v37;
      v40 = &v37[(v39 + 32) & ~v39];
      v41 = *(v69 + 72);
      v42 = (v69 + 8);
      do
      {
        v43 = v74;
        v71(v25, v40, v74);
        sub_2759B8BC8();
        (*v42)(v25, v43);
        v76 = v38;
        v45 = *(v38 + 16);
        v44 = *(v38 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2759509B0((v44 > 1), v45 + 1, 1);
          v38 = v76;
        }

        *(v38 + 16) = v45 + 1;
        sub_275827D1C(v75, v38 + 40 * v45 + 32);
        v40 += v41;
        --v36;
        v25 = v73;
      }

      while (v36);

      v3 = v65;
      a1 = v66;
      v21 = v67;
      v20 = v64;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v35 = v62;
  }

  else
  {
    v38 = 0;
  }

  *(v3 + 32) = v38;
  LOBYTE(v75[0]) = 2;
  sub_2759BAA68();
  if (v35)
  {
LABEL_27:
    (*(v70 + 8))(v20, v21);

    if (!v35)
    {
    }

    goto LABEL_4;
  }

  v66 = a1;
  v46 = v70;
  if (!v77)
  {
    (*(v70 + 8))(v20, v21);
    v59 = 0;
LABEL_38:
    v22 = v66;
    *(v3 + 40) = v59;
    goto LABEL_5;
  }

  v47 = *(v77 + 2);
  if (!v47)
  {

    (*(v46 + 8))(v20, v21);
    v59 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v62 = 0;
  v64 = v20;
  v65 = v3;
  v67 = v21;
  v76 = MEMORY[0x277D84F90];
  v48 = v77;
  sub_2759509B0(0, v47, 0);
  v49 = v76;
  v51 = *(v69 + 16);
  v50 = v69 + 16;
  v71 = v48;
  v72 = v51;
  v52 = v48 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v53 = *(v69 + 72);
  v54 = (v69 + 8);
  do
  {
    v55 = v74;
    v56 = v50;
    v72(v25, v52, v74);
    sub_2759B8BC8();
    (*v54)(v25, v55);
    v76 = v49;
    v58 = *(v49 + 16);
    v57 = *(v49 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_2759509B0((v57 > 1), v58 + 1, 1);
      v49 = v76;
    }

    *(v49 + 16) = v58 + 1;
    sub_275827D1C(v75, v49 + 40 * v58 + 32);
    v52 += v53;
    --v47;
    v50 = v56;
    v25 = v73;
  }

  while (v47);
  (*(v70 + 8))(v64, v67);

  v3 = v65;
  v22 = v66;
  *(v65 + 40) = v49;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v3;
}

uint64_t sub_275969EB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275969F2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_2759687E8(a1, a2);
}

uint64_t sub_27596A088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759696F0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_27596A194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_275968CEC(a1, v4, v5, v6, v7, v8);
}

void sub_27596A25C(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 48);
  *(v1 + 48) = *a1;
  v3 = v2;
}

unint64_t sub_27596A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11DC0;
  if (!qword_280A11DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DC0);
  }

  return result;
}

uint64_t sub_27596A2F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_27596A350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11DC8;
  if (!qword_280A11DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DC8);
  }

  return result;
}

unint64_t sub_27596A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11DD0;
  if (!qword_280A11DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DD0);
  }

  return result;
}

unint64_t sub_27596A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11DD8;
  if (!qword_280A11DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DD8);
  }

  return result;
}

unint64_t sub_27596A454(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_27596A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_2759BA258();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2758B677C;
  v11[3] = &block_descriptor_15;
  v9 = _Block_copy(v11);

  [v7 fetchStorageByApp:v8 completion:v9];
  _Block_release(v9);

  return result;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_27596A598@<X0>(void *a2@<X8>)
{
  type metadata accessor for ICSDriveCellularViewModel(0);

  result = sub_2759B9D58();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id DriveCellularViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriveCellularViewPresenter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DriveCellularViewPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DriveCellularViewPresenter.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DriveCellularViewPresenter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s14iCloudSettings26DriveCellularViewPresenterC7present4from14accountManagerySo16UIViewControllerC_So011AIDAAccountJ0CtFZ_0(void *a1, void *a2)
{
  v40 = a1;
  v3 = sub_2759B87B8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2759B8788();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2759B8798();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = [objc_opt_self() sharedConnection];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for ICSDriveCellularViewModel(0);
    swift_allocObject();
    v16 = a2;
    v17 = sub_2759645EC(v16, v15, 0);

    v18 = [v40 traitCollection];
    sub_2759BA6E8();

    (*(v8 + 104))(v11, *MEMORY[0x277D40278], v7);
    sub_27596AD0C(&qword_280A11DE0, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
    sub_2759BA3B8();
    sub_2759BA3B8();
    v19 = *(v8 + 8);
    v19(v11, v7);
    v20 = (v19)(v13, v7);
    if (v41 == v42)
    {
      sub_27596ACB8(v20, v21, v22);
      sub_2759B8778();
      v23 = [v40 traitCollection];
      v24 = v36;
      sub_2759BA6D8();

      sub_27596AD0C(&unk_280A10D60, MEMORY[0x277D40260], MEMORY[0x277D40268]);
      v25 = v37;
      sub_2759B87A8();

      (*(v38 + 8))(v24, v39);
      (*(v35 + 8))(v6, v25);
    }

    else
    {
      v26 = [v40 navigationController];
      if (v26)
      {
        v27 = v26;
        v42 = v17;

        sub_2759B9D58();
        v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11DE8, &unk_2759CDAF0));
        v29 = sub_2759B9508();
        [v27 pushViewController:v29 animated:1];
      }

      else
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v30 = sub_2759B89A8();
        __swift_project_value_buffer(v30, qword_2815ADE70);
        v31 = sub_2759B8988();
        v32 = sub_2759BA648();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_275819000, v31, v32, "DriveCellularViewController: no navigation controller", v33, 2u);
          MEMORY[0x277C85860](v33, -1, -1);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_27596ACB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11DF0;
  if (!qword_280A11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11DF0);
  }

  return result;
}

uint64_t sub_27596AD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_27596AD54()
{
  sub_2759B89E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759BA258();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2759B8228();
    }
  }

  else
  {
    sub_275860FE4(v7);
  }

  sub_2759B8A18();
  sub_2759B8228();

  return result;
}

uint64_t sub_27596AF28(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = a2 & 1;
  sub_2759BA4D8();
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  *(v15 + 40) = xmmword_2759CDB00;
  *(v15 + 56) = 10;
  *(v15 + 57) = a4;
  *(v15 + 58) = 0;
  *(v15 + 64) = a1;
  *(v15 + 72) = 0;
  *(v15 + 80) = v12;
  *(v15 + 88) = 0;
  *(v15 + 96) = 4;
  sub_275931D20(0, 0, v11, a5, v15);

  return sub_275936100(v11);
}

uint64_t ICSAnalyticsController.sendToggleEvent(for:actionType:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = a4 & 1;

  sub_2759BA4D8();
  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = 1282;
  *(v14 + 58) = 0;
  *(v14 + 64) = a3;
  *(v14 + 72) = 0;
  *(v14 + 80) = v11;
  *(v14 + 88) = 0;
  *(v14 + 96) = 1;

  sub_275931D20(0, 0, v10, &unk_2759CDB18, v14);

  return sub_275936100(v10);
}

uint64_t ICSAnalyticsController.sendBackupToggleEvent(actionType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_2759BA4D8();
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v7 + 40) = xmmword_2759C7B30;
  *(v7 + 56) = 522;
  *(v7 + 58) = 0;
  *(v7 + 64) = a1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = -1;
  sub_275931D20(0, 0, v4, &unk_2759CDB20, v7);

  return sub_275936100(v4);
}

uint64_t sub_27596B530@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v7, OpaqueTypeMetadata2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_27596B758()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27596B848(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27596B924(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_27596BA10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27596D324(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27596BA40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xEB00000000444974;
  v6 = 0x6E656E6F706D6F63;
  v7 = 0xEA00000000006570;
  v8 = 0x79546E6F69746361;
  if (v2 != 3)
  {
    v8 = 0x6956746567726174;
    v7 = 0xEC00000044497765;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x444977656976;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_27596BAEC()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x6E656E6F706D6F63;
  v4 = 0x79546E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x6956746567726174;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x444977656976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_27596BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27596D324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27596BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596D170(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27596BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596D170(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

id *sub_27596BC34(void *a1)
{
  v3 = v1;
  v51 = *v3;
  v52 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v46 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v45 = v43 - v9;
  MEMORY[0x28223BE20](v8);
  v44 = v43 - v10;
  v11 = sub_2759B8C48();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E18, &qword_2759CDCB8);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v43 - v19;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v47 = v12;
  v23 = *(v12 + 56);
  v21 = v12 + 56;
  v22 = v23;
  v53 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID;
  v23(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID, 1, 1, v11);
  v54 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType;
  v23(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType, 1, 1, v11);
  v55 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID;
  v23(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID, 1, 1, v11);
  v24 = a1[3];
  v57 = a1;
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_27596D170(v25, v26, v27);
  v28 = v52;
  sub_2759BAC18();
  if (v28)
  {

    sub_27586BF04(v3 + v53, &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v54, &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v55, &qword_280A0E8A8, qword_2759C2120);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43[1] = v21;
    v43[2] = v22;
    v52 = v15;
    v29 = v47;
    v56 = 0;
    v30 = sub_27596D1C4(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v31 = v48;
    sub_2759BAA78();
    v33 = v50;
    v50 = *(v29 + 32);
    (v50)(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_event, v33, v11);
    v56 = 1;
    v34 = v52;
    sub_2759BAA78();
    (v50)(v3 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_viewID, v34, v11);
    v56 = 2;
    v35 = v44;
    v51 = v30;
    v52 = v20;
    sub_2759BAA68();
    v36 = v45;
    v37 = v53;
    swift_beginAccess();
    sub_27585F470(v35, v3 + v37);
    swift_endAccess();
    v56 = 3;
    sub_2759BAA68();
    v38 = v49;
    v39 = v54;
    swift_beginAccess();
    sub_27585F470(v36, v3 + v39);
    swift_endAccess();
    v56 = 4;
    v40 = v46;
    v41 = v52;
    sub_2759BAA68();
    (*(v38 + 8))(v41, v31);
    v42 = v55;
    swift_beginAccess();
    sub_27585F470(v40, v3 + v42);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v3;
}

uint64_t sub_27596C348()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_event;
  v2 = sub_2759B8C48();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_viewID, v2);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID, &qword_280A0E8A8, qword_2759C2120);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendAnalyticsEventAction(uint64_t a1)
{
  result = qword_280A11DF8;
  if (!qword_280A11DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27596C4D0(uint64_t a1)
{
  sub_2759B8C48();
  if (v1 <= 0x3F)
  {
    sub_27585EA38(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27596C5AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_27596C7F8(a1);
}