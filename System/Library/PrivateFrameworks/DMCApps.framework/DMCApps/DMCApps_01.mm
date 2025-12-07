uint64_t sub_2225B2C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B2CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B2D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_2225B2E10;

  return sub_2225BB85C(a1, a3, a4);
}

uint64_t sub_2225B2E10()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B2F40, 0, 0);
  }
}

uint64_t sub_2225B2F40()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_2225B30C4;

    return MEMORY[0x282184920](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v12 = xmmword_2225C7700;
    *(v12 + 16) = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2225B30C4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225C1CA0;
  }

  else
  {
    v2 = sub_2225C1C9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B31D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B3264;

  return sub_2225B7224();
}

uint64_t sub_2225B3264(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_2225B3680;
  }

  else
  {
    v4 = sub_2225B3378;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B3378()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 25 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v23 = sub_2225C6AA0();
      __swift_project_value_buffer(v23, qword_281311550);
      v24 = sub_2225C6A80();
      v25 = sub_2225C6C50();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_222597000, v24, v25, "No unhideable apps found!", v26, 2u);
        MEMORY[0x223DBAFE0](v26, -1, -1);
      }

      v4 = 0;
      goto LABEL_23;
    }

    v7 = (v6 + 24);
    ++v1;
    v8 = *(v6 + 23);
    v6 += 24;
    if ((v8 & 1) == 0)
    {
      v9 = *(v7 - 17);
      v10 = *(v7 - 9);
      v11 = *v7;

      v30 = v2 + 25;
      v29 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2225BC9F8((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v29;
      *(v14 + 40) = v10;
      *(v14 + 48) = 0;
      *(v14 + 49) = v11;
      goto LABEL_2;
    }
  }

  v30 = v0;

  v15 = *(v5 + 16);
  if (!v15)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

LABEL_19:

    if (qword_2813114B8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_2225BCA18(0, v15, 0);
  v16 = 0;
  v17 = *(v4 + 16);
  v18 = 16 * v17;
  do
  {
    v19 = *(v5 + v16 + 32);
    v20 = *(v5 + v16 + 40);
    v21 = *(v4 + 24);

    if (v17 >= v21 >> 1)
    {
      sub_2225BCA18((v21 > 1), v17 + 1, 1);
    }

    *(v4 + 16) = v17 + 1;
    v22 = v4 + v18;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    v18 += 16;
    v16 += 24;
    ++v17;
    --v15;
  }

  while (v15);

  if (!*(v4 + 16))
  {
    goto LABEL_19;
  }

LABEL_23:
  v27 = *(v30 + 8);

  return v27(v4);
}

uint64_t sub_2225B3680()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_281311550);
  v3 = v1;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v4, v5, "Failed to fetch any bundleIDs for protected apps: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAEB0](v7);
  }

  else
  {

    MEMORY[0x223DBAEB0](v7);
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_2225B382C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B38B8;

  return sub_2225B7224();
}

uint64_t sub_2225B38B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_2225C1CA4;
  }

  else
  {
    v4 = sub_2225B39CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B39CC()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 24 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v23 = sub_2225C6AA0();
      __swift_project_value_buffer(v23, qword_281311550);
      v24 = sub_2225C6A80();
      v25 = sub_2225C6C50();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_222597000, v24, v25, "No unlockable apps found!", v26, 2u);
        MEMORY[0x223DBAFE0](v26, -1, -1);
      }

      v4 = 0;
      goto LABEL_23;
    }

    v7 = (v6 + 24);
    ++v1;
    v8 = *(v6 + 25);
    v6 += 24;
    if ((v8 & 1) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;

      v30 = v2 + 24;
      v29 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2225BC9F8((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v29;
      *(v14 + 49) = 0;
      goto LABEL_2;
    }
  }

  v30 = v0;

  v15 = *(v5 + 16);
  if (!v15)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

LABEL_19:

    if (qword_2813114B8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_2225BCA18(0, v15, 0);
  v16 = 0;
  v17 = *(v4 + 16);
  v18 = 16 * v17;
  do
  {
    v19 = *(v5 + v16 + 32);
    v20 = *(v5 + v16 + 40);
    v21 = *(v4 + 24);

    if (v17 >= v21 >> 1)
    {
      sub_2225BCA18((v21 > 1), v17 + 1, 1);
    }

    *(v4 + 16) = v17 + 1;
    v22 = v4 + v18;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    v18 += 16;
    v16 += 24;
    ++v17;
    --v15;
  }

  while (v15);

  if (!*(v4 + 16))
  {
    goto LABEL_19;
  }

LABEL_23:
  v27 = *(v30 + 8);

  return v27(v4);
}

uint64_t sub_2225B3CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B3D60;

  return sub_2225B7224();
}

uint64_t sub_2225B3D60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_2225C1CA4;
  }

  else
  {
    v4 = sub_2225B3E74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2225B3E74()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 48 + 24 * v1;
  while (v3 != v1)
  {
    v7 = v6;
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 += 24;
    ++v1;
    if ((*v7 & 1) == 0 && (v7[1] & 1) == 0)
    {
      v9 = *(v6 - 40);
      v8 = *(v6 - 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2225BC9F8((v10 > 1), v11 + 1, 1);
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 24 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      *(v12 + 48) = 0;
      goto LABEL_2;
    }
  }

  v22 = v0;

  v13 = *(v5 + 16);
  if (v13)
  {
    sub_2225BCA18(0, v13, 0);
    v14 = 0;
    v15 = *(v4 + 16);
    v16 = 16 * v15;
    do
    {
      v18 = *(v5 + v14 + 32);
      v17 = *(v5 + v14 + 40);
      v19 = *(v4 + 24);

      if (v15 >= v19 >> 1)
      {
        sub_2225BCA18((v19 > 1), v15 + 1, 1);
      }

      *(v4 + 16) = v15 + 1;
      v20 = v4 + v16;
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
      v16 += 16;
      v14 += 24;
      ++v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v21 = *(v22 + 8);

  v21(v4);
}

uint64_t sub_2225B40A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B4134;

  return sub_2225B7224();
}

uint64_t sub_2225B4134(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_2225C1CA4;
  }

  else
  {
    v4 = sub_2225B4248;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2225B4248()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v4 + 24 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v7 + 24;
    ++v1;
    v9 = *v7;
    v10 = v7[1];
    if (v9 == 1)
    {
      v7 += 24;
      if (v10)
      {
        continue;
      }
    }

    v23 = *(v8 - 5);
    v24 = *(v8 - 4);

    v25 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2225BC9F8(0, *(v6 + 16) + 1, 1);
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2225BC9F8((v11 > 1), v12 + 1, 1);
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 24 * v12;
    *(v13 + 32) = v23;
    *(v13 + 40) = v24;
    *(v13 + 48) = v9;
    *(v13 + 49) = v10;
    v4 = v25;
    goto LABEL_2;
  }

  v26 = v0;

  v14 = *(v6 + 16);
  if (v14)
  {
    sub_2225BCA18(0, v14, 0);
    v15 = 0;
    v16 = *(v5 + 16);
    v17 = 16 * v16;
    do
    {
      v19 = *(v6 + v15 + 32);
      v18 = *(v6 + v15 + 40);
      v20 = *(v5 + 24);

      if (v16 >= v20 >> 1)
      {
        sub_2225BCA18((v20 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      v21 = v5 + v17;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      v17 += 16;
      v15 += 24;
      ++v16;
      --v14;
    }

    while (v14);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v22 = *(v26 + 8);

  v22(v5);
}

uint64_t sub_2225B44A4()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "preserveAppIDsOnDisk() called!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2225AD2F0;

  return sub_2225B46E8();
}

uint64_t sub_2225B45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2225C6E00();
  sub_2225C6B70();
  v6 = sub_2225C6E20();
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
    if (v11 || (sub_2225C6D90() & 1) != 0)
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

uint64_t sub_2225B4708()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  *(v0 + 48) = __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "preserveApps() called! trying self.fetchAppBundleIDs()...", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2225B4858;

  return sub_2225B7684();
}

uint64_t sub_2225B4858(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_2225B4C00;
  }

  else
  {
    v4 = sub_2225B496C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B496C()
{

  v1 = sub_2225C6A80();
  v2 = sub_2225C6C70();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_222597000, v1, v2, "Successfully returned from self.fetchAppBundleIDs() with %ld bundleIDs", v5, 0xCu);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[9];
  sub_2225BFF94();
  if (v6)
  {

    v7 = v0[1];
  }

  else
  {
    sub_2225C07F8(v0[8]);

    v9 = sub_2225C6A80();
    v10 = sub_2225C6C70();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222597000, v9, v10, "writeAppIDPlistToDiskWith completed successfully! \n preserveApps() completed successfully!", v11, 2u);
      MEMORY[0x223DBAFE0](v11, -1, -1);
    }

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_2225B4C00()
{
  v1 = v0[9];
  v2 = v1;
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_222597000, v3, v4, "DMF Fetch Apps Info request threw error: %@!", v6, 0xCu);
    sub_2225B01A4(v7, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  v10 = v0[9];

  sub_2225C6D30();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223DBA8C0](0xD00000000000002FLL, 0x80000002225C8CA0);
  v0[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBA8C0](33, 0xE100000000000000);
  v11 = v0[2];
  v12 = v0[3];
  sub_2225B02BC();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v10);
  v14 = v0[1];

  return v14();
}

uint64_t sub_2225B4E34()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  v0[4] = __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "removeUnusedPreservedApps() beginning!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = sub_2225C6A80();
  v6 = sub_2225C6C70();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_222597000, v5, v6, "Checking for unenroll with preserved Apps status!", v7, 2u);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  if (sub_2225C145C())
  {
    v13 = sub_2225C6A80();
    v14 = sub_2225C6C70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222597000, v13, v14, "attempting to call self.fetchAppBundleIDs()...", v15, 2u);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[5] = v16;
    *v16 = v0;
    v16[1] = sub_2225B5214;

    return sub_2225B7684();
  }

  else
  {
    v8 = sub_2225C6A80();
    v9 = sub_2225C6C70();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222597000, v8, v9, "Unenroll for preserved apps status file did not exist!! Returning", v10, 2u);
      MEMORY[0x223DBAFE0](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2225B5214(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_2225B5DA8;
  }

  else
  {
    v4 = sub_2225B5328;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B5328()
{
  v41 = v0;
  v0[2] = v0[6];
  v1 = v0[7];
  v0[8] = sub_2225BF720();
  v2 = sub_2225C6A80();
  if (v1)
  {
    v3 = sub_2225C6C60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_222597000, v2, v3, "Failed to Fetch AppIDs from Disk!", v4, 2u);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    sub_2225B02BC();
    swift_allocError();
    *v5 = 0xD000000000000021;
    *(v5 + 8) = 0x80000002225C8DF0;
    *(v5 + 16) = 0;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v1);

    v6 = v0[1];
    goto LABEL_5;
  }

  v8 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v9 = 136315394;

    v11 = sub_2225C6C10();
    v13 = v12;

    v14 = sub_2225AD5C8(v11, v13, v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;

    v16 = MEMORY[0x223DBA900](v15, MEMORY[0x277D837D0]);
    v18 = v17;

    v19 = sub_2225AD5C8(v16, v18, v40);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_222597000, v2, v8, "Resolving which apps need to be removed from this list of preserved apps: %s, based on the list of apps managed by the server: %s !", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v10, -1, -1);
    MEMORY[0x223DBAFE0](v9, -1, -1);
  }

  v21 = sub_2225B63D0(v20, v0 + 2);
  v0[9] = v21;
  v22 = sub_2225C6A80();
  v23 = sub_2225C6C70();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40[0] = v25;
    *v24 = 136315138;

    v27 = MEMORY[0x223DBA900](v26, MEMORY[0x277D837D0]);
    v29 = v28;

    v30 = sub_2225AD5C8(v27, v29, v40);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_222597000, v22, v23, "The apps that need to be removed are: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x223DBAFE0](v25, -1, -1);
    MEMORY[0x223DBAFE0](v24, -1, -1);
  }

  v31 = *(v21 + 16);
  v0[10] = v31;
  if (!v31)
  {
    sub_2225C187C();

    v6 = v0[1];
LABEL_5:

    return v6();
  }

  v0[11] = 0;
  v32 = v0[9];
  v33 = *(v32 + 32);
  v0[12] = v33;
  v34 = *(v32 + 40);
  v0[13] = v34;
  swift_bridgeObjectRetain_n();

  v35 = sub_2225C6A80();
  v36 = sub_2225C6C70();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2225AD5C8(v33, v34, v40);
    _os_log_impl(&dword_222597000, v35, v36, "Calling self.removeAppForAppID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x223DBAFE0](v38, -1, -1);
    MEMORY[0x223DBAFE0](v37, -1, -1);
  }

  v39 = swift_task_alloc();
  v0[14] = v39;
  *v39 = v0;
  v39[1] = sub_2225B597C;

  return sub_2225B67D0(v33, v34);
}

uint64_t sub_2225B597C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2225B5F44;
  }

  else
  {

    v2 = sub_2225B5A98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B5A98()
{
  v21 = v0;
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v2 = v0[15];

    sub_2225C187C();
    if (v2)
    {
      v3 = v2;
      v4 = sub_2225C6A80();
      v5 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v2);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = v2;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        _os_log_impl(&dword_222597000, v4, v5, "Failed to clear preserved apps list with error: %@", v6, 0xCu);
        sub_2225B01A4(v7, &qword_27D00FBC8, &unk_2225C7C40);
        MEMORY[0x223DBAFE0](v7, -1, -1);
        MEMORY[0x223DBAFE0](v6, -1, -1);
        MEMORY[0x223DBAEB0](v2);
      }

      else
      {

        MEMORY[0x223DBAEB0](v2);
      }
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v0[11] = v1;
    v10 = v0[9] + 16 * v1;
    v11 = *(v10 + 32);
    v0[12] = v11;
    v12 = *(v10 + 40);
    v0[13] = v12;
    swift_bridgeObjectRetain_n();
    v13 = sub_2225C6A80();
    v14 = sub_2225C6C70();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2225AD5C8(v11, v12, &v20);
      _os_log_impl(&dword_222597000, v13, v14, "Calling self.removeAppForAppID: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x223DBAFE0](v16, -1, -1);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_2225B597C;

    return sub_2225B67D0(v11, v12);
  }
}

uint64_t sub_2225B5DA8()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_222597000, v3, v4, "DMF Fetch Apps Info request returned error: %@!", v6, 0xCu);
    sub_2225B01A4(v7, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  v10 = *(v0 + 56);

  sub_2225B02BC();
  swift_allocError();
  *v11 = 0xD000000000000032;
  *(v11 + 8) = 0x80000002225C8DB0;
  *(v11 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v10);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2225B5F44()
{
  v27 = v0;
  v1 = v0[15];

  v2 = v1;
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C60();

  MEMORY[0x223DBAEB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[13];
  if (v5)
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v9 = 136315394;
    v12 = sub_2225AD5C8(v8, v7, v26);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_222597000, v3, v4, "Failed to remove app: %s with error: %@, continuing..", v9, 0x16u);
    sub_2225B01A4(v10, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DBAFE0](v11, -1, -1);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAEB0](v6);
  }

  else
  {

    MEMORY[0x223DBAEB0](v6);
  }

  v15 = v0[11] + 1;
  if (v15 == v0[10])
  {

    sub_2225C187C();

    v25 = v0[1];

    return v25();
  }

  else
  {
    v0[11] = v15;
    v16 = v0[9] + 16 * v15;
    v17 = *(v16 + 32);
    v0[12] = v17;
    v18 = *(v16 + 40);
    v0[13] = v18;
    swift_bridgeObjectRetain_n();
    v19 = sub_2225C6A80();
    v20 = sub_2225C6C70();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2225AD5C8(v17, v18, v26);
      _os_log_impl(&dword_222597000, v19, v20, "Calling self.removeAppForAppID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DBAFE0](v22, -1, -1);
      MEMORY[0x223DBAFE0](v21, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_2225B597C;

    return sub_2225B67D0(v17, v18);
  }
}

unint64_t sub_2225B63D0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v27 = a2;
  v28 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  result = swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  v26 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v11;
LABEL_9:
    v29 = &v25;
    v12 = (*(v28 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = *v27;
    v7 &= v7 - 1;
    v30[0] = *v12;
    v30[1] = v14;
    MEMORY[0x28223BE20](result);
    v24[2] = v30;

    v16 = v3;
    v17 = sub_2225BC94C(sub_2225C1AC8, v24, v15);

    if ((v17 & 1) == 0)
    {
      v29 = v13;
      v18 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v18;
      if ((result & 1) == 0)
      {
        result = sub_2225BCA18(0, *(v18 + 16) + 1, 1);
        v18 = v31;
      }

      v3 = v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v20 + 1;
      v22 = v29;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        result = sub_2225BCA18((v19 > 1), v20 + 1, 1);
        v21 = v26;
        v18 = v31;
      }

      *(v18 + 16) = v21;
      v26 = v18;
      v23 = v18 + 16 * v20;
      *(v23 + 32) = v22;
      *(v23 + 40) = v14;
      goto LABEL_4;
    }

    v11 = v9;
    v3 = v16;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      return v26;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2225B6608(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v8 = sub_2225ADB70(a1, a2);
    if (v9)
    {
      sub_2225B0214(*(a4 + 56) + 32 * v8, v18);
      sub_2225B0214(v18, v17);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        a3 = v16;
      }

      else
      {
        if (qword_2813114B8 != -1)
        {
          swift_once();
        }

        v10 = sub_2225C6AA0();
        __swift_project_value_buffer(v10, qword_281311550);

        v11 = sub_2225C6A80();
        v12 = sub_2225C6C60();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v17[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_2225AD5C8(a1, a2, v17);
          _os_log_impl(&dword_222597000, v11, v12, "non-BOOL value specified for %{public}s, using default value", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x223DBAFE0](v14, -1, -1);
          MEMORY[0x223DBAFE0](v13, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }
    }
  }

  return a3 & 1;
}

uint64_t sub_2225B67D0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return MEMORY[0x2822009F8](sub_2225B67F4, 0, 0);
}

uint64_t sub_2225B67F4()
{
  v30 = v0;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  v0[26] = __swift_project_value_buffer(v1, qword_281311550);

  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[23];
    v4 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2225AD5C8(v5, v4, v29);
    _os_log_impl(&dword_222597000, v2, v3, "Creating dmfRemoveAppRequest for app: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D04CB8]) init];
  v0[27] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = sub_2225C6B40();
    [v10 setBundleIdentifier_];

    v12 = v10;
    v13 = sub_2225C6A80();
    v14 = sub_2225C6C70();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[23];
      v15 = v0[24];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_2225AD5C8(v16, v15, v29);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v12;
      *v18 = v9;
      v20 = v12;
      _os_log_impl(&dword_222597000, v13, v14, "attempting to remove app: %s on DMFConnection with request: %@", v17, 0x16u);
      sub_2225B01A4(v18, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DBAFE0](v19, -1, -1);
      MEMORY[0x223DBAFE0](v17, -1, -1);
    }

    v21 = *(v0[25] + 16);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_2225B6CBC;
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2225B7154;
    v0[13] = &block_descriptor_61;
    v0[14] = v22;
    [v21 performRequest:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v23 = sub_2225C6A80();
    v24 = sub_2225C6C60();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_222597000, v23, v24, "Failed to create a DMFRemoveAppRequest object", v25, 2u);
      MEMORY[0x223DBAFE0](v25, -1, -1);
    }

    sub_2225BC524();
    swift_allocError();
    *v26 = 0xD00000000000002DLL;
    *(v26 + 8) = 0x80000002225C8C70;
    *(v26 + 16) = 5;
    swift_willThrow();
    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_2225B6CBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2225B6F24;
  }

  else
  {
    v2 = sub_2225B6DCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B6DCC()
{
  v13 = v0;
  v1 = *(v0 + 168);

  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 216);
  if (v4)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2225AD5C8(v7, v6, &v12);
    _os_log_impl(&dword_222597000, v2, v3, "Successfully returned from dmfConnection.perform(dmfRemoveRequest) for appID: %s!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2225B6F24()
{
  v23 = v0;
  v2 = v0[27];
  v1 = v0[28];
  swift_willThrow();

  v3 = v1;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();

  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v8 = v0[23];
    v7 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2225AD5C8(v8, v7, &v22);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_222597000, v4, v5, "Remove App request for app: %s on DMFConnection failed with error: %@", v9, 0x16u);
    sub_2225B01A4(v10, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DBAFE0](v11, -1, -1);
    MEMORY[0x223DBAFE0](v9, -1, -1);
  }

  v15 = v0[27];
  v14 = v0[28];
  swift_getErrorValue();
  v16 = sub_2225C6DB0();
  v18 = v17;
  sub_2225BC524();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 5;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v14);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2225B7154(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2225B7224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B72B0;

  return sub_2225B7C24();
}

uint64_t sub_2225B72B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B73E4, 0, 0);
  }
}

uint64_t sub_2225B73E4()
{
  v26 = v0;
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v2 + 48 + 24 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = v5 + 24;
    ++v1;
    v7 = *v5;
    v8 = v5[1];
    if (v7 == 1)
    {
      v5 += 24;
      if (v8)
      {
        continue;
      }
    }

    v9 = *(v6 - 4);
    v23 = *(v6 - 5);

    v24 = v0;
    v25 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2225BC9F8(0, *(v4 + 16) + 1, 1);
      v4 = v25;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2225BC9F8((v10 > 1), v11 + 1, 1);
      v4 = v25;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 24 * v11;
    v0 = v24;
    *(v12 + 32) = v23;
    *(v12 + 40) = v9;
    *(v12 + 48) = v7;
    *(v12 + 49) = v8;
    goto LABEL_2;
  }

  if (qword_2813114B8 == -1)
  {
    goto LABEL_13;
  }

LABEL_19:
  swift_once();
LABEL_13:
  v13 = sub_2225C6AA0();
  __swift_project_value_buffer(v13, qword_281311550);

  v14 = sub_2225C6A80();
  v15 = sub_2225C6C70();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;
    v18 = MEMORY[0x223DBA900](v4, &type metadata for DMCAppsManager.AppProtectionStatus);
    v20 = sub_2225AD5C8(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_222597000, v14, v15, "appsWithNonDefaultProtectionAttributes = %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x223DBAFE0](v17, -1, -1);
    MEMORY[0x223DBAFE0](v16, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t sub_2225B76A4()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D04C28]) init];
  v0[20] = v2;
  v3 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2225B77F4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2225B7154;
  v0[13] = &block_descriptor_54;
  v0[14] = v4;
  [v3 performRequest:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2225B77F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2225B7B74;
  }

  else
  {
    v2 = sub_2225B7904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B7904()
{
  v19 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v2;

  if (!v2)
  {
LABEL_7:
    v10 = v0[20];
    sub_2225BC524();
    swift_allocError();
    *v11 = xmmword_2225C7700;
    *(v11 + 16) = 6;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
LABEL_6:

    goto LABEL_7;
  }

  v5 = [v4 managedApps];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
  v6 = sub_2225C6B20();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_2225BC89C(*(v6 + 16), 0);
    v17 = sub_2225BDFFC(&v18, v8 + 4, v7, v6);
    v9 = v18;

    sub_2225BE154(v9);
    if (v17 != v7)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v18 = v8;
  sub_2225BD524(&v18);
  v14 = v0[20];

  v15 = v18;
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_2225B7B74()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_2225BC524();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 4;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2225B7C44()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D04C28]) init];
  v0[20] = v2;
  v3 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2225B7D90;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2225B7154;
  v0[13] = &block_descriptor_50;
  v0[14] = v4;
  [v3 performRequest:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2225B7D90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2225B82B8;
  }

  else
  {
    v2 = sub_2225B7EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2225B7EA0()
{
  v1 = v0[18];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v33 = v0;
    v36 = (v0 + 10);
    v37 = v0 + 18;
    v34 = v1;
    v4 = [v3 managedApps];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
    v5 = sub_2225C6B20();

    v6 = 0;
    v7 = -1;
    v8 = -1 << *(v5 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v5 + 64);
    v35 = MEMORY[0x277D84F90];
    v10 = (63 - v8) >> 6;
    v11 = 0x7475626972747441;
    while (v9)
    {
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v6 << 6);
      v18 = *(*(v5 + 56) + 8 * v17);
      if (*(v18 + 16))
      {
        v19 = (*(v5 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];

        v22 = sub_2225ADB70(v11, 0xEA00000000007365);
        if (v23)
        {
          v24 = v11;
          sub_2225B0214(*(v18 + 56) + 32 * v22, v36);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC10, &qword_2225C7D98);
          if (swift_dynamicCast())
          {
            v25 = sub_2225B8364(*v37);

            v32 = sub_2225B6608(0x657355776F6C6C41, 0xEF656469486F5472, 1, v25);
            v31 = sub_2225B6608(0x657355776F6C6C41, 0xEF6B636F4C6F5472, 1, v25);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_2225BC578(0, *(v35 + 2) + 1, 1, v35);
            }

            v11 = v24;
            v27 = *(v35 + 2);
            v26 = *(v35 + 3);
            if (v27 >= v26 >> 1)
            {
              v35 = sub_2225BC578((v26 > 1), v27 + 1, 1, v35);
            }

            *(v35 + 2) = v27 + 1;
            v28 = &v35[24 * v27];
            *(v28 + 4) = v20;
            *(v28 + 5) = v21;
            v28[48] = v32 & 1;
            v28[49] = v31 & 1;
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v10)
      {
        break;
      }

      v9 = *(v5 + 64 + 8 * v15);
      ++v6;
      if (v9)
      {
        v6 = v15;
        goto LABEL_15;
      }
    }

    v29 = v33[20];

    v30 = v33[1];

    v30(v35);
  }

  else
  {
    v12 = v0[20];
    sub_2225BC524();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 6;
    swift_willThrow();

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_2225B82B8()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  sub_2225BC524();
  swift_allocError();
  *v2 = v1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 4;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_2225B8364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC20, &qword_2225C7DA8);
    v2 = sub_2225C6D60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2225B0204(&v22, v24);
        sub_2225B0204(v24, v25);
        sub_2225B0204(v25, &v23);
        result = sub_2225ADB70(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_2225B0204(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2225B0204(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2225B85AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 200) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2225B85D4, 0, 0);
}

uint64_t sub_2225B85D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D04C38]) init];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = v1;
    [v1 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2225C7C60;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;

    v8 = sub_2225C6BB0();

    [v6 setBundleIdentifiers_];

    [v6 setManagedAppsOnly_];
    v9 = sub_2225C6BB0();
    [v6 setPropertyKeys_];

    v10 = *(v3 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2225B8910;
    v11 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2225B7154;
    *(v0 + 104) = &block_descriptor_80;
    *(v0 + 112) = v11;
    [v10 performRequest:v6 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v12 = sub_2225C6AA0();
    __swift_project_value_buffer(v12, qword_281311550);
    v13 = sub_2225C6A80();
    v14 = sub_2225C6C60();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222597000, v13, v14, "Failed to create fetch request", v15, 2u);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16(0);
  }
}

uint64_t sub_2225B8910()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2225B8B54;
  }

  else
  {
    v2 = sub_2225B8A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B8A20()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v2;

  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v0[23];
    if (v4)
    {
      v6 = [v4 appsByBundleIdentifier];
      sub_2225C1B74(0, &qword_281311210, 0x277D04BD0);
      v7 = sub_2225C6B20();

      v8 = sub_2225B8D24(v7);

      v9 = v8;
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = v0[23];
  }

LABEL_8:
  v9 = 0;
LABEL_9:
  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_2225B8B54()
{
  v1 = v0[23];
  swift_willThrow();

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_2225C6AA0();
  __swift_project_value_buffer(v3, qword_281311550);
  v4 = v2;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to fetch apps with error: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v13 = v0[23];
  v12 = v0[24];

  sub_2225BC524();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

void *sub_2225B8D24(uint64_t a1)
{
  v2 = sub_2225C6CD0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2225BE170(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_2225B8D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2225B8DB8, 0, 0);
}

uint64_t sub_2225B8DB8()
{
  v168 = v0;
  v1 = (v0 + 80);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = sub_2225C6AA0();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_281311550);
  sub_2225B0314(v2, v0 + 80);
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v167[0] = v7;
    *v6 = 136446210;
    v8 = *(v0 + 104);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v13 = sub_2225AD5C8(v10, v12, v167);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_222597000, v4, v5, "Start managing app: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D04C10]) init];
  *(v0 + 216) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = v17[3];
    v19 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v20 = *(v19 + 8);
    v21 = v15;
    v22 = v19;
    v23 = v21;
    v20(v18, v22);
    v24 = sub_2225C6B40();

    [v23 setBundleIdentifier_];

    v25 = sub_2225C6B40();
    [v23 setSourceIdentifier_];

    if (v16)
    {
      v26 = sub_2225C6B40();
    }

    else
    {
      v26 = 0;
    }

    v37 = *(v0 + 176);
    [v23 setPersonaIdentifier_];

    v38 = v17[3];
    v39 = v37[7];
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    (*(v39 + 8))(v167, v38, v39);
    sub_2225C1B74(0, &qword_27D00FBE0, 0x277CCABB0);
    v40 = sub_2225C6CA0();
    [v23 setRemovable_];

    v41 = v17[3];
    v42 = v37[4];
    __swift_project_boxed_opaque_existential_1Tm(v37, v41);
    (*(v42 + 8))(v167, v41, v42);
    v43 = 5;
    if (v167[0])
    {
      v43 = 1;
    }

    if (LOBYTE(v167[0]) == 2)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v0 + 176);
    [v23 setManagementOptions_];
    v46 = v17[3];
    v47 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    v48 = (*(v47 + 104))(v46, v47);
    if (!v48)
    {
      goto LABEL_28;
    }

    v49 = v48;
    v50 = sub_2225C6B50();
    if (*(v49 + 16))
    {
      v52 = sub_2225ADB70(v50, v51);
      v54 = v53;

      if (v54)
      {
        sub_2225B0214(*(v49 + 56) + 32 * v52, v0 + 80);

        if (swift_dynamicCast())
        {
          v55 = sub_2225C6B40();

          goto LABEL_29;
        }

LABEL_28:
        v55 = 0;
LABEL_29:
        v59 = *(v0 + 176);
        [v23 setVPNUUIDString_];

        v60 = v17[3];
        v61 = v17[5];
        __swift_project_boxed_opaque_existential_1Tm(v59, v60);
        v62 = (*(v61 + 104))(v60, v61);
        if (!v62)
        {
          goto LABEL_36;
        }

        v63 = v62;
        v64 = sub_2225C6B50();
        if (*(v63 + 16))
        {
          v66 = sub_2225ADB70(v64, v65);
          v68 = v67;

          if (v68)
          {
            sub_2225B0214(*(v63 + 56) + 32 * v66, v0 + 80);

            if (swift_dynamicCast())
            {
              v69 = sub_2225C6B40();

              goto LABEL_37;
            }

LABEL_36:
            v69 = 0;
LABEL_37:
            v70 = *(v0 + 176);
            [v23 setCellularSliceUUIDString_];

            v71 = v17[3];
            v72 = v17[5];
            __swift_project_boxed_opaque_existential_1Tm(v70, v71);
            v73 = (*(v72 + 104))(v71, v72);
            if (!v73)
            {
              goto LABEL_44;
            }

            v74 = v73;
            v75 = sub_2225C6B50();
            if (*(v74 + 16))
            {
              v77 = sub_2225ADB70(v75, v76);
              v79 = v78;

              if (v79)
              {
                sub_2225B0214(*(v74 + 56) + 32 * v77, v0 + 80);

                if (swift_dynamicCast())
                {
                  v80 = sub_2225C6B40();

                  goto LABEL_45;
                }

LABEL_44:
                v80 = 0;
LABEL_45:
                v81 = *(v0 + 176);
                [v23 setContentFilterUUIDString_];

                v82 = v17[3];
                v83 = v17[5];
                __swift_project_boxed_opaque_existential_1Tm(v81, v82);
                v84 = (*(v83 + 104))(v82, v83);
                if (!v84)
                {
                  goto LABEL_52;
                }

                v85 = v84;
                v86 = sub_2225C6B50();
                if (*(v85 + 16))
                {
                  v88 = sub_2225ADB70(v86, v87);
                  v90 = v89;

                  if (v90)
                  {
                    sub_2225B0214(*(v85 + 56) + 32 * v88, v0 + 80);

                    if (swift_dynamicCast())
                    {
                      v91 = sub_2225C6B40();

                      goto LABEL_53;
                    }

LABEL_52:
                    v91 = 0;
LABEL_53:
                    v92 = *(v0 + 176);
                    [v23 setDNSProxyUUIDString_];

                    v93 = v17[3];
                    v94 = v17[5];
                    __swift_project_boxed_opaque_existential_1Tm(v92, v93);
                    v95 = (*(v94 + 104))(v93, v94);
                    if (!v95)
                    {
                      goto LABEL_60;
                    }

                    v96 = v95;
                    v97 = sub_2225C6B50();
                    if (*(v96 + 16))
                    {
                      v99 = sub_2225ADB70(v97, v98);
                      v101 = v100;

                      if (v101)
                      {
                        sub_2225B0214(*(v96 + 56) + 32 * v99, v0 + 80);

                        if (swift_dynamicCast())
                        {
                          v102 = sub_2225C6B40();

                          goto LABEL_61;
                        }

LABEL_60:
                        v102 = 0;
LABEL_61:
                        v103 = *(v0 + 176);
                        [v23 setRelayUUIDString_];

                        v104 = v17[3];
                        v105 = v17[5];
                        __swift_project_boxed_opaque_existential_1Tm(v103, v104);
                        v106 = (*(v105 + 104))(v104, v105);
                        if (!v106)
                        {
                          goto LABEL_68;
                        }

                        v107 = v106;
                        v108 = sub_2225C6B50();
                        if (*(v107 + 16))
                        {
                          v110 = sub_2225ADB70(v108, v109);
                          v112 = v111;

                          if (v112)
                          {
                            sub_2225B0214(*(v107 + 56) + 32 * v110, v0 + 80);

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
                            if (swift_dynamicCast())
                            {
                              v113 = sub_2225C6BB0();

                              goto LABEL_69;
                            }

LABEL_68:
                            v113 = 0;
LABEL_69:
                            v114 = *(v0 + 176);
                            [v23 setAssociatedDomains_];

                            v115 = v17[3];
                            v116 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v114, v115);
                            v117 = (*(v116 + 104))(v115, v116);
                            if (v117)
                            {
                              v118 = v117;
                              v119 = sub_2225C6B50();
                              if (*(v118 + 16))
                              {
                                v121 = sub_2225ADB70(v119, v120);
                                v123 = v122;

                                if (v123)
                                {
                                  sub_2225B0214(*(v118 + 56) + 32 * v121, v0 + 80);

                                  goto LABEL_76;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_76:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v124 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_82;
                              }

                              v125 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v125 = v166;
                            }

                            sub_2225B01A4(v125, &qword_27D00FBD8, &qword_2225C7D80);
                            v124 = 0;
LABEL_82:
                            v126 = *(v0 + 176);
                            [v23 setAssociatedDomainsEnableDirectDownloads_];

                            v127 = v17[3];
                            v128 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v126, v127);
                            v129 = (*(v128 + 104))(v127, v128);
                            if (v129)
                            {
                              v130 = v129;
                              v131 = sub_2225C6B50();
                              if (*(v130 + 16))
                              {
                                v133 = sub_2225ADB70(v131, v132);
                                v135 = v134;

                                if (v135)
                                {
                                  sub_2225B0214(*(v130 + 56) + 32 * v133, v0 + 80);

                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_89:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v136 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_95;
                              }

                              v137 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v137 = v166;
                            }

                            sub_2225B01A4(v137, &qword_27D00FBD8, &qword_2225C7D80);
                            v136 = 0;
LABEL_95:
                            v138 = *(v0 + 176);
                            [v23 setTapToPayScreenLock_];

                            v139 = v17[3];
                            v140 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v138, v139);
                            v141 = (*(v140 + 104))(v139, v140);
                            if (v141)
                            {
                              v142 = v141;
                              v143 = sub_2225C6B50();
                              if (*(v142 + 16))
                              {
                                v145 = sub_2225ADB70(v143, v144);
                                v147 = v146;

                                if (v147)
                                {
                                  sub_2225B0214(*(v142 + 56) + 32 * v145, v0 + 80);

                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_102:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v148 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_108;
                              }

                              v149 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v149 = v166;
                            }

                            sub_2225B01A4(v149, &qword_27D00FBD8, &qword_2225C7D80);
                            v148 = 0;
LABEL_108:
                            v150 = *(v0 + 176);
                            [v23 setAllowUserToHide_];

                            v151 = v17[3];
                            v152 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v150, v151);
                            v153 = (*(v152 + 104))(v151, v152);
                            if (v153)
                            {
                              v154 = v153;
                              v155 = sub_2225C6B50();
                              if (*(v154 + 16))
                              {
                                v157 = sub_2225ADB70(v155, v156);
                                v159 = v158;

                                if (v159)
                                {
                                  sub_2225B0214(*(v154 + 56) + 32 * v157, v0 + 80);

                                  goto LABEL_115;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_115:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v160 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
LABEL_121:
                                v162 = *(v0 + 200);
                                [v23 setAllowUserToLock_];

                                v163 = *(v162 + 16);
                                *(v0 + 16) = v0;
                                *(v0 + 56) = v166;
                                *(v0 + 24) = sub_2225BA020;
                                v164 = v23;
                                v165 = swift_continuation_init();
                                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
                                *(v0 + 80) = MEMORY[0x277D85DD0];
                                *(v0 + 88) = 1107296256;
                                *(v0 + 96) = sub_2225B7154;
                                *(v0 + 104) = &block_descriptor_46;
                                *(v0 + 112) = v165;
                                [v163 performRequest:v164 completion:v0 + 80];

                                return MEMORY[0x282200938](v0 + 16);
                              }

                              v161 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v161 = v166;
                            }

                            sub_2225B01A4(v161, &qword_27D00FBD8, &qword_2225C7D80);
                            v160 = 0;
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                }

                goto LABEL_52;
              }
            }

            else
            {
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        goto LABEL_36;
      }
    }

    else
    {
    }

    goto LABEL_28;
  }

  sub_2225B0314(*(v0 + 176), v0 + 80);
  v27 = sub_2225C6A80();
  v28 = sub_2225C6C60();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v167[0] = v30;
    *v29 = 136446210;
    v31 = *(v0 + 104);
    v32 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v31);
    v33 = (*(v32 + 8))(v31, v32);
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v36 = sub_2225AD5C8(v33, v35, v167);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_222597000, v27, v28, "Unable to create DMFDDMStartManagingAppRequest for %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DBAFE0](v30, -1, -1);
    MEMORY[0x223DBAFE0](v29, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  sub_2225BC524();
  swift_allocError();
  *v56 = 0;
  *(v56 + 8) = 0;
  *(v56 + 16) = 1;
  swift_willThrow();
  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_2225BA020()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2225BA1A0;
  }

  else
  {
    v2 = sub_2225BA130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225BA130()
{
  v1 = v0[27];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225BA1A0()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v2;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_222597000, v4, v5, "Failed to perform start managing request with error: %{public}@", v7, 0xCu);
    sub_2225B01A4(v8, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v12 = v0[27];
  v11 = v0[28];

  sub_2225BC524();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225BA330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2225BA354, 0, 0);
}

uint64_t sub_2225BA354()
{
  v168 = v0;
  v1 = (v0 + 80);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = sub_2225C6AA0();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_281311550);
  sub_2225B0314(v2, v0 + 80);
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v167[0] = v7;
    *v6 = 136446210;
    v8 = *(v0 + 104);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v13 = sub_2225AD5C8(v10, v12, v167);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_222597000, v4, v5, "Update managing app: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D04D78]) init];
  *(v0 + 216) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = v17[3];
    v19 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v20 = *(v19 + 8);
    v21 = v15;
    v22 = v19;
    v23 = v21;
    v20(v18, v22);
    v24 = sub_2225C6B40();

    [v23 setBundleIdentifier_];

    v25 = sub_2225C6B40();
    [v23 setSourceIdentifier_];

    if (v16)
    {
      v26 = sub_2225C6B40();
    }

    else
    {
      v26 = 0;
    }

    v37 = *(v0 + 176);
    [v23 setPersonaIdentifier_];

    v38 = v17[3];
    v39 = v37[7];
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    (*(v39 + 8))(v167, v38, v39);
    sub_2225C1B74(0, &qword_27D00FBE0, 0x277CCABB0);
    v40 = sub_2225C6CA0();
    [v23 setRemovable_];

    v41 = v17[3];
    v42 = v37[4];
    __swift_project_boxed_opaque_existential_1Tm(v37, v41);
    (*(v42 + 8))(v167, v41, v42);
    v43 = 5;
    if (v167[0])
    {
      v43 = 1;
    }

    if (LOBYTE(v167[0]) == 2)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v0 + 176);
    [v23 setManagementOptions_];
    v46 = v17[3];
    v47 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v45, v46);
    v48 = (*(v47 + 104))(v46, v47);
    if (!v48)
    {
      goto LABEL_28;
    }

    v49 = v48;
    v50 = sub_2225C6B50();
    if (*(v49 + 16))
    {
      v52 = sub_2225ADB70(v50, v51);
      v54 = v53;

      if (v54)
      {
        sub_2225B0214(*(v49 + 56) + 32 * v52, v0 + 80);

        if (swift_dynamicCast())
        {
          v55 = sub_2225C6B40();

          goto LABEL_29;
        }

LABEL_28:
        v55 = 0;
LABEL_29:
        v59 = *(v0 + 176);
        [v23 setVPNUUIDString_];

        v60 = v17[3];
        v61 = v17[5];
        __swift_project_boxed_opaque_existential_1Tm(v59, v60);
        v62 = (*(v61 + 104))(v60, v61);
        if (!v62)
        {
          goto LABEL_36;
        }

        v63 = v62;
        v64 = sub_2225C6B50();
        if (*(v63 + 16))
        {
          v66 = sub_2225ADB70(v64, v65);
          v68 = v67;

          if (v68)
          {
            sub_2225B0214(*(v63 + 56) + 32 * v66, v0 + 80);

            if (swift_dynamicCast())
            {
              v69 = sub_2225C6B40();

              goto LABEL_37;
            }

LABEL_36:
            v69 = 0;
LABEL_37:
            v70 = *(v0 + 176);
            [v23 setCellularSliceUUIDString_];

            v71 = v17[3];
            v72 = v17[5];
            __swift_project_boxed_opaque_existential_1Tm(v70, v71);
            v73 = (*(v72 + 104))(v71, v72);
            if (!v73)
            {
              goto LABEL_44;
            }

            v74 = v73;
            v75 = sub_2225C6B50();
            if (*(v74 + 16))
            {
              v77 = sub_2225ADB70(v75, v76);
              v79 = v78;

              if (v79)
              {
                sub_2225B0214(*(v74 + 56) + 32 * v77, v0 + 80);

                if (swift_dynamicCast())
                {
                  v80 = sub_2225C6B40();

                  goto LABEL_45;
                }

LABEL_44:
                v80 = 0;
LABEL_45:
                v81 = *(v0 + 176);
                [v23 setContentFilterUUIDString_];

                v82 = v17[3];
                v83 = v17[5];
                __swift_project_boxed_opaque_existential_1Tm(v81, v82);
                v84 = (*(v83 + 104))(v82, v83);
                if (!v84)
                {
                  goto LABEL_52;
                }

                v85 = v84;
                v86 = sub_2225C6B50();
                if (*(v85 + 16))
                {
                  v88 = sub_2225ADB70(v86, v87);
                  v90 = v89;

                  if (v90)
                  {
                    sub_2225B0214(*(v85 + 56) + 32 * v88, v0 + 80);

                    if (swift_dynamicCast())
                    {
                      v91 = sub_2225C6B40();

                      goto LABEL_53;
                    }

LABEL_52:
                    v91 = 0;
LABEL_53:
                    v92 = *(v0 + 176);
                    [v23 setDNSProxyUUIDString_];

                    v93 = v17[3];
                    v94 = v17[5];
                    __swift_project_boxed_opaque_existential_1Tm(v92, v93);
                    v95 = (*(v94 + 104))(v93, v94);
                    if (!v95)
                    {
                      goto LABEL_60;
                    }

                    v96 = v95;
                    v97 = sub_2225C6B50();
                    if (*(v96 + 16))
                    {
                      v99 = sub_2225ADB70(v97, v98);
                      v101 = v100;

                      if (v101)
                      {
                        sub_2225B0214(*(v96 + 56) + 32 * v99, v0 + 80);

                        if (swift_dynamicCast())
                        {
                          v102 = sub_2225C6B40();

                          goto LABEL_61;
                        }

LABEL_60:
                        v102 = 0;
LABEL_61:
                        v103 = *(v0 + 176);
                        [v23 setRelayUUIDString_];

                        v104 = v17[3];
                        v105 = v17[5];
                        __swift_project_boxed_opaque_existential_1Tm(v103, v104);
                        v106 = (*(v105 + 104))(v104, v105);
                        if (!v106)
                        {
                          goto LABEL_68;
                        }

                        v107 = v106;
                        v108 = sub_2225C6B50();
                        if (*(v107 + 16))
                        {
                          v110 = sub_2225ADB70(v108, v109);
                          v112 = v111;

                          if (v112)
                          {
                            sub_2225B0214(*(v107 + 56) + 32 * v110, v0 + 80);

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
                            if (swift_dynamicCast())
                            {
                              v113 = sub_2225C6BB0();

                              goto LABEL_69;
                            }

LABEL_68:
                            v113 = 0;
LABEL_69:
                            v114 = *(v0 + 176);
                            [v23 setAssociatedDomains_];

                            v115 = v17[3];
                            v116 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v114, v115);
                            v117 = (*(v116 + 104))(v115, v116);
                            if (v117)
                            {
                              v118 = v117;
                              v119 = sub_2225C6B50();
                              if (*(v118 + 16))
                              {
                                v121 = sub_2225ADB70(v119, v120);
                                v123 = v122;

                                if (v123)
                                {
                                  sub_2225B0214(*(v118 + 56) + 32 * v121, v0 + 80);

                                  goto LABEL_76;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_76:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v124 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_82;
                              }

                              v125 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v125 = v166;
                            }

                            sub_2225B01A4(v125, &qword_27D00FBD8, &qword_2225C7D80);
                            v124 = 0;
LABEL_82:
                            v126 = *(v0 + 176);
                            [v23 setAssociatedDomainsEnableDirectDownloads_];

                            v127 = v17[3];
                            v128 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v126, v127);
                            v129 = (*(v128 + 104))(v127, v128);
                            if (v129)
                            {
                              v130 = v129;
                              v131 = sub_2225C6B50();
                              if (*(v130 + 16))
                              {
                                v133 = sub_2225ADB70(v131, v132);
                                v135 = v134;

                                if (v135)
                                {
                                  sub_2225B0214(*(v130 + 56) + 32 * v133, v0 + 80);

                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_89:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v136 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_95;
                              }

                              v137 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v137 = v166;
                            }

                            sub_2225B01A4(v137, &qword_27D00FBD8, &qword_2225C7D80);
                            v136 = 0;
LABEL_95:
                            v138 = *(v0 + 176);
                            [v23 setTapToPayScreenLock_];

                            v139 = v17[3];
                            v140 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v138, v139);
                            v141 = (*(v140 + 104))(v139, v140);
                            if (v141)
                            {
                              v142 = v141;
                              v143 = sub_2225C6B50();
                              if (*(v142 + 16))
                              {
                                v145 = sub_2225ADB70(v143, v144);
                                v147 = v146;

                                if (v147)
                                {
                                  sub_2225B0214(*(v142 + 56) + 32 * v145, v0 + 80);

                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_102:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v148 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_108;
                              }

                              v149 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v149 = v166;
                            }

                            sub_2225B01A4(v149, &qword_27D00FBD8, &qword_2225C7D80);
                            v148 = 0;
LABEL_108:
                            v150 = *(v0 + 176);
                            [v23 setAllowUserToHide_];

                            v151 = v17[3];
                            v152 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v150, v151);
                            v153 = (*(v152 + 104))(v151, v152);
                            if (v153)
                            {
                              v154 = v153;
                              v155 = sub_2225C6B50();
                              if (*(v154 + 16))
                              {
                                v157 = sub_2225ADB70(v155, v156);
                                v159 = v158;

                                if (v159)
                                {
                                  sub_2225B0214(*(v154 + 56) + 32 * v157, v0 + 80);

                                  goto LABEL_115;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_115:
                            sub_2225B013C(v0 + 80, v166, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v160 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
LABEL_121:
                                v162 = *(v0 + 200);
                                [v23 setAllowUserToLock_];

                                v163 = *(v162 + 16);
                                *(v0 + 16) = v0;
                                *(v0 + 56) = v166;
                                *(v0 + 24) = sub_2225BB5BC;
                                v164 = v23;
                                v165 = swift_continuation_init();
                                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
                                *(v0 + 80) = MEMORY[0x277D85DD0];
                                *(v0 + 88) = 1107296256;
                                *(v0 + 96) = sub_2225B7154;
                                *(v0 + 104) = &block_descriptor_42;
                                *(v0 + 112) = v165;
                                [v163 performRequest:v164 completion:v0 + 80];

                                return MEMORY[0x282200938](v0 + 16);
                              }

                              v161 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v161 = v166;
                            }

                            sub_2225B01A4(v161, &qword_27D00FBD8, &qword_2225C7D80);
                            v160 = 0;
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                }

                goto LABEL_52;
              }
            }

            else
            {
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        goto LABEL_36;
      }
    }

    else
    {
    }

    goto LABEL_28;
  }

  sub_2225B0314(*(v0 + 176), v0 + 80);
  v27 = sub_2225C6A80();
  v28 = sub_2225C6C60();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v167[0] = v30;
    *v29 = 136446210;
    v31 = *(v0 + 104);
    v32 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v31);
    v33 = (*(v32 + 8))(v31, v32);
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v36 = sub_2225AD5C8(v33, v35, v167);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_222597000, v27, v28, "Unable to create DMFUpdateAppAttributesRequest for %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DBAFE0](v30, -1, -1);
    MEMORY[0x223DBAFE0](v29, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  sub_2225BC524();
  swift_allocError();
  *v56 = 0;
  *(v56 + 8) = 0;
  *(v56 + 16) = 1;
  swift_willThrow();
  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_2225BB5BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2225BB6CC;
  }

  else
  {
    v2 = sub_2225C1C98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225BB6CC()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v2;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_222597000, v4, v5, "Failed to perform update app attributes request with error: %{public}@", v7, 0xCu);
    sub_2225B01A4(v8, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v12 = v0[27];
  v11 = v0[28];

  sub_2225BC524();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225BB85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  return MEMORY[0x2822009F8](sub_2225BB880, 0, 0);
}

uint64_t sub_2225BB880()
{
  v22 = v0;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_2225C6AA0();
  v0[47] = __swift_project_value_buffer(v2, qword_281311550);
  sub_2225B0314(v1, (v0 + 10));
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = v0[13];
    v8 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v12 = sub_2225AD5C8(v9, v11, &v21);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "Stop managing app: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v13 = v0[43];
  v14 = v13[3];
  v15 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  v0[48] = v17;
  v19 = swift_task_alloc();
  v0[49] = v19;
  *v19 = v0;
  v19[1] = sub_2225BBAE4;

  return sub_2225B0FA4(v16, v18);
}

uint64_t sub_2225BBAE4(char a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_2225BC2EC;
  }

  else
  {

    *(v4 + 424) = a1;
    v5 = sub_2225BBC14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225BBC14()
{
  v28 = v0;
  if (*(v0 + 424) == 2)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D04D68]) init];
    *(v0 + 408) = v1;
    v2 = *(v0 + 344);
    if (v1)
    {
      v3 = *(v0 + 360);
      v4 = v2[3];
      v5 = v2[5];
      __swift_project_boxed_opaque_existential_1Tm(v2, v4);
      v6 = *(v5 + 8);
      v7 = v1;
      v6(v4, v5);
      v8 = sub_2225C6B40();

      [v7 setBundleIdentifier_];

      v9 = sub_2225C6B40();
      [v7 setSourceIdentifier_];

      if (v3)
      {
        v10 = sub_2225C6B40();
      }

      else
      {
        v10 = 0;
      }

      v22 = *(v0 + 368);
      [v7 setPersonaIdentifier_];

      [v7 setShouldPreserveAppBinary_];
      v23 = *(v22 + 16);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = sub_2225BC018;
      v24 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_2225B7154;
      *(v0 + 232) = &block_descriptor_0;
      *(v0 + 240) = v24;
      [v23 performRequest:v7 completion:v0 + 208];

      return MEMORY[0x282200938](v0 + 16);
    }

    sub_2225B0314(v2, v0 + 144);
    v12 = sub_2225C6A80();
    v13 = sub_2225C6C60();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446210;
      v16 = *(v0 + 168);
      v17 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v16);
      v18 = (*(v17 + 8))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
      v21 = sub_2225AD5C8(v18, v20, &v27);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_222597000, v12, v13, "Unable to create DMFStopManagingAppRequest for %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DBAFE0](v15, -1, -1);
      MEMORY[0x223DBAFE0](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    }

    sub_2225BC524();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    swift_willThrow();
    v11 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_2225BC018()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_2225BC350;
  }

  else
  {

    v3 = sub_2225BC130;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225BC130()
{
  v18 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);

  sub_2225B0314(v1, v0 + 272);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C50();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = *(v0 + 296);
    v10 = *(v0 + 312);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 272), v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
    v14 = sub_2225AD5C8(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_222597000, v3, v4, "Removed DMF app data for: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2225BC2EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225BC350(uint64_t a1)
{
  v2 = v1[51];
  v3 = v1[52];
  swift_willThrow();

  v4 = v3;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[52];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to remove DMF app data: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v12 = v1[51];

  swift_willThrow();
  v13 = v1[1];

  return v13();
}

uint64_t sub_2225BC4B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_2225BC524()
{
  result = qword_281311218[0];
  if (!qword_281311218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281311218);
  }

  return result;
}

char *sub_2225BC578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC18, &qword_2225C7DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2225BC694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC60, &qword_2225C7DD8);
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

char *sub_2225BC798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC28, &qword_2225C7DB0);
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

void *sub_2225BC89C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2225BC94C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_2225BC9F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2225BCA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225BCA18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2225BCB54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225BCA38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC18, &qword_2225C7DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2225BCB54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
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

uint64_t sub_2225BCC60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2225C6E00();
  sub_2225C6B70();
  v8 = sub_2225C6E20();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2225C6D90() & 1) != 0)
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

    sub_2225BD010(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2225BCDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  result = sub_2225C6D10();
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
      sub_2225C6E00();
      sub_2225C6B70();
      result = sub_2225C6E20();
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

uint64_t sub_2225BD010(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2225BCDB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2225BD190();
      goto LABEL_16;
    }

    sub_2225BD2EC(v8 + 1);
  }

  v10 = *v4;
  sub_2225C6E00();
  sub_2225C6B70();
  result = sub_2225C6E20();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2225C6D90();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2225C6DA0();
  __break(1u);
  return result;
}

void *sub_2225BD190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  v2 = *v0;
  v3 = sub_2225C6D00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_2225BD2EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  result = sub_2225C6D10();
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
      sub_2225C6E00();

      sub_2225C6B70();
      result = sub_2225C6E20();
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

uint64_t sub_2225BD524(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2225BE15C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2225BD590(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2225BD590(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2225C6D70();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2225C6BE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2225BD758(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2225BD688(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2225BD688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2225C6D90(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2225BD758(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2225BDFE8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2225BDD34((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2225C6D90();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2225C6D90();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2225BC798(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2225BC798((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2225BDD34((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2225BDFE8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2225BDF5C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2225C6D90(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2225BDD34(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2225C6D90() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2225C6D90() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2225BDF5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2225BDFE8(v3);
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

void *sub_2225BDFFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2225BE170(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2225BE1C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225BE1E0, 0, 0);
}

uint64_t sub_2225BE1E0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[4] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v9 = v0[2];
    v8 = v0[3];
    v10 = v8[6];
    v11 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v10);
    v12 = v1[3];
    v13 = v1[5];
    __swift_project_boxed_opaque_existential_1Tm(v9, v12);
    v14 = (*(v13 + 8))(v12, v13);
    v16 = v15;
    v0[5] = v15;
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_2225BE3C8;

    return MEMORY[0x282184930](v6, v7, v14, v16, v10, v11);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v18 = xmmword_2225C7700;
    *(v18 + 16) = 2;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2225BE3C8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225BE510, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2225BE510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225BE57C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225BE59C, 0, 0);
}

uint64_t sub_2225BE59C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[4] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_2225BE720;

    return MEMORY[0x282184940](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v12 = xmmword_2225C7700;
    *(v12 + 16) = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2225BE720()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2225BE898;
  }

  else
  {
    v2 = sub_2225BE834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225BE834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225BE898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225BE8FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2225BE91C, 0, 0);
}

uint64_t sub_2225BE91C()
{
  v30 = v0;
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = objc_opt_self();
    v10 = sub_2225C6B40();
    LOBYTE(v8) = [v9 verifySignatureForPath:v10 composedIdentifier:v8];

    if (v8)
    {

      v11 = v0[1];
      goto LABEL_12;
    }

    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v14 = sub_2225C6AA0();
    __swift_project_value_buffer(v14, qword_281311550);

    v15 = v13;
    v16 = sub_2225C6A80();
    v17 = sub_2225C6C60();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315394;
      v21 = sub_2225AD5C8(v6, v7, v29);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      v22 = [v18 composedIdentifier];
      v23 = sub_2225C6B50();
      v25 = v24;

      v26 = sub_2225AD5C8(v23, v25, v29);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_222597000, v16, v17, "App at path %s does not match %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v20, -1, -1);
      MEMORY[0x223DBAFE0](v19, -1, -1);
    }

    else
    {
    }

    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  sub_2225B02BC();
  swift_allocError();
  *v27 = v12;
  *(v27 + 8) = 0;
  *(v27 + 16) = 2;
  swift_willThrow();
  v11 = v0[1];
LABEL_12:

  return v11();
}

unint64_t sub_2225BEC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC20, &qword_2225C7DA8);
    v3 = sub_2225C6D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_2225B013C(v4, &v13, &qword_27D00FC40, &qword_2225C7DC8);
      v5 = v13;
      v6 = v14;
      result = sub_2225ADB70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2225B0204(&v15, (v3[7] + 32 * result));
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

void *sub_2225BED44(uint64_t a1)
{
  v2 = sub_2225C69E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v86 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v94 = &v86 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - v12;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v14 = sub_2225C6AA0();
  v15 = __swift_project_value_buffer(v14, qword_281311550);
  v89 = *(v3 + 16);
  v90 = v3 + 16;
  v89(v13, a1, v2);
  v16 = sub_2225C6A80();
  v17 = sub_2225C6C70();
  v18 = os_log_type_enabled(v16, v17);
  v92 = v15;
  v87 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v86 = v6;
    v20 = v3;
    v21 = v2;
    v22 = v19;
    v23 = swift_slowAlloc();
    v88 = a1;
    v24 = v23;
    v95[0] = v23;
    *v22 = 136315138;
    sub_2225C1404();
    v25 = sub_2225C6D80();
    v27 = v26;
    v91 = *(v20 + 8);
    v91(v13, v21);
    v28 = sub_2225AD5C8(v25, v27, v95);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_222597000, v16, v17, "beginning getPreservedAppIDArrayFromPlistOnDiskAt with url: %s !", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v29 = v24;
    a1 = v88;
    MEMORY[0x223DBAFE0](v29, -1, -1);
    v30 = v22;
    v2 = v21;
    v6 = v86;
    MEMORY[0x223DBAFE0](v30, -1, -1);
  }

  else
  {

    v91 = *(v3 + 8);
    v91(v13, v2);
  }

  v31 = v93;
  v32 = sub_2225C63E8();
  v33 = v31;
  v34 = v94;
  if (v31)
  {
    goto LABEL_7;
  }

  v46 = v32;
  if (v32)
  {
    v89(v94, a1, v2);
    v47 = sub_2225C6A80();
    v48 = v2;
    v49 = sub_2225C6C70();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = v34;
      v51 = swift_slowAlloc();
      v92 = v51;
      v93 = swift_slowAlloc();
      v95[0] = v93;
      *v51 = 136315138;
      sub_2225C1404();
      v52 = sub_2225C6D80();
      v54 = v53;
      v91(v50, v48);
      v55 = sub_2225AD5C8(v52, v54, v95);

      v56 = v92;
      *(v92 + 1) = v55;
      v57 = v56;
      _os_log_impl(&dword_222597000, v47, v49, "ReadPlist(from: url) returned successfully with dict from %s", v56, 0xCu);
      v58 = v93;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x223DBAFE0](v58, -1, -1);
      MEMORY[0x223DBAFE0](v57, -1, -1);

      if (!v46[2])
      {
        goto LABEL_25;
      }
    }

    else
    {

      v91(v34, v48);
      if (!v46[2])
      {
        goto LABEL_25;
      }
    }

    v82 = sub_2225ADB70(0x6576726573657250, 0xED00007370704164);
    if (v83)
    {
      sub_2225B0214(v46[7] + 32 * v82, v95);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
      if (swift_dynamicCast())
      {
        return v96;
      }

      else
      {
        return 0;
      }
    }

LABEL_25:

    return 0;
  }

  v69 = v87;
  v89(v87, a1, v2);
  v70 = sub_2225C6A80();
  v71 = sub_2225C6C60();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v88 = a1;
    v74 = v2;
    v75 = v73;
    v95[0] = v73;
    *v72 = 136315138;
    sub_2225C1404();
    v76 = sub_2225C6D80();
    v77 = v69;
    v79 = v78;
    v91(v77, v74);
    v80 = sub_2225AD5C8(v76, v79, v95);

    *(v72 + 4) = v80;
    _os_log_impl(&dword_222597000, v70, v71, "Could not ReadPList data from URL: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    v81 = v75;
    v2 = v74;
    a1 = v88;
    MEMORY[0x223DBAFE0](v81, -1, -1);
    MEMORY[0x223DBAFE0](v72, -1, -1);
  }

  else
  {

    v91(v69, v2);
  }

  sub_2225C1B20();
  v33 = swift_allocError();
  *v85 = 1;
  swift_willThrow();
LABEL_7:
  v95[0] = v33;
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  if (swift_dynamicCast())
  {
    MEMORY[0x223DBAEB0](v33);
    v36 = v97;
    v37 = sub_2225C6A80();
    v38 = sub_2225C6C60();
    v39 = os_log_type_enabled(v37, v38);
    LODWORD(v94) = v36;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      sub_2225C1B20();
      swift_allocError();
      *v42 = v94;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_222597000, v37, v38, "ReadPlist(from: url) threw an error: %@!", v40, 0xCu);
      sub_2225B01A4(v41, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v41, -1, -1);
      v44 = v40;
      v36 = v94;
      MEMORY[0x223DBAFE0](v44, -1, -1);
    }

    if (v36 == 2)
    {
      MEMORY[0x223DBAEB0](v95[0]);
      return MEMORY[0x277D84F90];
    }

    v89(v6, a1, v2);
    v59 = sub_2225C6A80();
    v60 = sub_2225C6C60();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v6;
      v63 = v2;
      v64 = swift_slowAlloc();
      v96 = v64;
      *v61 = 136315138;
      sub_2225C1404();
      v65 = sub_2225C6D80();
      v67 = v66;
      v91(v62, v63);
      v68 = sub_2225AD5C8(v65, v67, &v96);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_222597000, v59, v60, "Could not ReadPList data from URL: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x223DBAFE0](v64, -1, -1);
      MEMORY[0x223DBAFE0](v61, -1, -1);
    }

    else
    {

      v91(v6, v2);
    }

    sub_2225C1B20();
    swift_allocError();
    *v84 = v94;
    swift_willThrow();
  }

  return MEMORY[0x223DBAEB0](v95[0]);
}

uint64_t sub_2225BF688(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DBA960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2225BCC60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

NSObject *sub_2225BF720()
{
  v1 = v0;
  v2 = sub_2225C69E0();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v6 = sub_2225C6AA0();
  __swift_project_value_buffer(v6, qword_281311550);
  v7 = sub_2225C6A80();
  v8 = sub_2225C6C70();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222597000, v7, v8, "beginning preservedAppIDs() to fetch AppIDs from disk!", v9, 2u);
    MEMORY[0x223DBAFE0](v9, -1, -1);
  }

  v10 = sub_2225C6A80();
  v11 = sub_2225C6C70();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_222597000, v10, v11, "Attempting to call getPreservedAppIDArrayFromPlistOnDiskAt...", v12, 2u);
    MEMORY[0x223DBAFE0](v12, -1, -1);
  }

  if (qword_27D00FB08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27D0107D0);
  (*(isa + 2))(v5, v13, v2);
  v14 = sub_2225BED44(v5);
  if (v0)
  {
    (*(isa + 1))(v5, v2);
  }

  else
  {
    v23 = v14;
    (*(isa + 1))(v5, v2);
    if (v23)
    {

      v24 = sub_2225C6A80();
      v25 = sub_2225C6C70();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = *(v23 + 16);

        _os_log_impl(&dword_222597000, v24, v25, "Successfully retrieved %ld AppIDs from disk! Returning Set...", v26, 0xCu);
        MEMORY[0x223DBAFE0](v26, -1, -1);
      }

      else
      {
      }

      v2 = sub_2225BF688(v23);

      return v2;
    }

    v27 = sub_2225C6A80();
    v28 = sub_2225C6C60();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_222597000, v27, v28, "getArrayFromPlistOnDiskAt returned nil value!", v29, 2u);
      MEMORY[0x223DBAFE0](v29, -1, -1);
    }

    v2 = 0x80000002225C8E50;
    sub_2225B02BC();
    v1 = swift_allocError();
    *v30 = 0xD00000000000002DLL;
    *(v30 + 8) = 0x80000002225C8E50;
    *(v30 + 16) = 0;
    swift_willThrow();
  }

  v33 = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  if (swift_dynamicCast())
  {
    MEMORY[0x223DBAEB0](v1);
    v16 = v32[7];
    v2 = sub_2225C6A80();
    v17 = sub_2225C6C60();
    if (os_log_type_enabled(v2, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_2225C1B20();
      swift_allocError();
      *v20 = v16;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_222597000, v2, v17, "Failed to getArrayFromPlistOnDiskAt with Plist Error: %@", v18, 0xCu);
      sub_2225B01A4(v19, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v19, -1, -1);
      MEMORY[0x223DBAFE0](v18, -1, -1);
    }

    sub_2225C1B20();
    swift_allocError();
    *v22 = v16;
    swift_willThrow();
  }

  MEMORY[0x223DBAEB0](v33);
  return v2;
}

uint64_t sub_2225BFC70(uint64_t a1, unint64_t a2)
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v5 = sub_2225C6AA0();
  __swift_project_value_buffer(v5, qword_281311550);

  v6 = sub_2225C6A80();
  v7 = sub_2225C6C70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2225AD5C8(a1, a2, &v20);
    _os_log_impl(&dword_222597000, v6, v7, " isPreservedAppFor(bundleID: String) called with bundleID: %s!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v10 = sub_2225BF720();
  if (v2)
  {
    v11 = sub_2225C6A80();
    v12 = sub_2225C6C60();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222597000, v11, v12, "Failed to Fetch AppIDs from Disk!", v13, 2u);
      MEMORY[0x223DBAFE0](v13, -1, -1);
    }

    sub_2225B02BC();
    swift_allocError();
    *v14 = 0xD000000000000021;
    *(v14 + 8) = 0x80000002225C8DF0;
    *(v14 + 16) = 0;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v2);
  }

  else
  {
    LOBYTE(v6) = sub_2225B45F0(a1, a2, v10);

    v15 = sub_2225C6A80();
    v16 = sub_2225C6C70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 67109378;
      *(v17 + 4) = v6 & 1;
      *(v17 + 8) = 2080;
      *(v17 + 10) = sub_2225AD5C8(a1, a2, &v20);
      _os_log_impl(&dword_222597000, v15, v16, "isPreservedAppFor(bundleID: String) returning %{BOOL}d for %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DBAFE0](v18, -1, -1);
      MEMORY[0x223DBAFE0](v17, -1, -1);
    }
  }

  return v6 & 1;
}

void sub_2225BFF94()
{
  v60[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2225C69E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v4 = sub_2225C6AA0();
  v58 = __swift_project_value_buffer(v4, qword_281311550);
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C70();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v60[0] = v8;
    *v7 = 136315138;
    if (qword_27D00FB10 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v0, qword_27D0107E8);
    (*(v1 + 16))(v3, v9, v0);
    v10 = sub_2225C69C0();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
    v13 = sub_2225AD5C8(v10, v12, v60);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_222597000, v5, v6, "Creating File on disk: %s !!", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v14 = v3;
  v59 = 1;
  v57 = objc_opt_self();
  v15 = [v57 defaultManager];
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_27D0107B8);
  v56 = *(v1 + 16);
  v56(v14, v16, v0);
  sub_2225C69C0();
  v18 = v1 + 8;
  v17 = *(v1 + 8);
  v17(v14, v0);
  v19 = sub_2225C6B40();

  v20 = [v15 fileExistsAtPath:v19 isDirectory:&v59];

  v55[1] = v18;
  if (v20)
  {
    v21 = v56;
    v22 = v14;
    if ((v59 & 1) == 0)
    {
      v23 = sub_2225C6A80();
      v24 = sub_2225C6C60();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_222597000, v23, v24, "A non directory file with same name already exists at preserved apps directory path!", v25, 2u);
        MEMORY[0x223DBAFE0](v25, -1, -1);
      }

      v26 = 0x80000002225C8D20;
      sub_2225B02BC();
      swift_allocError();
      v28 = 0xD000000000000046;
LABEL_28:
      *v27 = v28;
      *(v27 + 8) = v26;
      *(v27 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  else
  {
    v29 = [v57 defaultManager];
    v30 = v16;
    v31 = v56;
    v56(v14, v30, v0);
    v32 = sub_2225C69A0();
    v17(v14, v0);
    v60[0] = 0;
    v33 = [v29 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v60];

    if (!v33)
    {
      v42 = v60[0];
      v43 = sub_2225C6970();

      swift_willThrow();
      v44 = v43;
      v45 = sub_2225C6A80();
      v46 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v43);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60[0] = v48;
        *v47 = 136315138;
        swift_getErrorValue();
        v49 = sub_2225C6DB0();
        v51 = sub_2225AD5C8(v49, v50, v60);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_222597000, v45, v46, "Error creating Features/Migration/ Directory! Error: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x223DBAFE0](v48, -1, -1);
        MEMORY[0x223DBAFE0](v47, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v52 = 0xD00000000000002FLL;
      *(v52 + 8) = 0x80000002225C8CD0;
      *(v52 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v43);
      return;
    }

    v21 = v31;
    v22 = v14;
    v34 = v60[0];
  }

  v35 = [v57 defaultManager];
  if (qword_27D00FB10 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v0, qword_27D0107E8);
  v21(v22, v36, v0);
  sub_2225C69C0();
  v17(v22, v0);
  v37 = sub_2225C6B40();

  v38 = [v35 createFileAtPath:v37 contents:0 attributes:0];

  v39 = sub_2225C6A80();
  if ((v38 & 1) == 0)
  {
    v53 = sub_2225C6C60();
    if (os_log_type_enabled(v39, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_222597000, v39, v53, "Failed to write UnenrollWithPreservedAppsStatus file to disk!", v54, 2u);
      MEMORY[0x223DBAFE0](v54, -1, -1);
    }

    v26 = 0x80000002225C8D70;
    sub_2225B02BC();
    swift_allocError();
    v28 = 0xD000000000000039;
    goto LABEL_28;
  }

  v40 = sub_2225C6C70();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_222597000, v39, v40, "Successfully wrote UnenrollWithPreservedAppsStatus file to disk!", v41, 2u);
    MEMORY[0x223DBAFE0](v41, -1, -1);
  }
}

void sub_2225C07F8(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = sub_2225C69E0();
  v90 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v81 - v5;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v7 = sub_2225C6AA0();
  v8 = __swift_project_value_buffer(v7, qword_281311550);

  v89 = v8;
  v9 = sub_2225C6A80();
  v10 = sub_2225C6C70();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v92 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x223DBA900](a1, MEMORY[0x277D837D0]);
    v15 = sub_2225AD5C8(v13, v14, &v92);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_222597000, v9, v10, "writeAppIDPlistToDiskWith with stringArray: %s !", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x223DBAFE0](v12, -1, -1);
    MEMORY[0x223DBAFE0](v11, -1, -1);
  }

  v91 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC38, &qword_2225C7DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2225C7C60;
  strcpy((inited + 32), "PreservedApps");
  *(inited + 46) = -4864;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
  *(inited + 48) = a1;

  v88 = sub_2225BEC14(inited);
  swift_setDeallocating();
  sub_2225B01A4(inited + 32, &qword_27D00FC40, &qword_2225C7DC8);
  v85 = objc_opt_self();
  v17 = [v85 defaultManager];
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_27D0107B8);
  v19 = v90;
  v20 = v90 + 16;
  v21 = *(v90 + 16);
  v82 = v18;
  v21(v6);
  sub_2225C69C0();
  v22 = *(v19 + 8);
  v22(v6, v2);
  v23 = sub_2225C6B40();

  v24 = [v17 fileExistsAtPath:v23 isDirectory:&v91];

  v90 = v19 + 8;
  v81 = v6;
  v84 = v20;
  v83 = v21;
  if (v24)
  {
    v25 = v2;
    v85 = v22;
    v26 = v88;
    if ((v91 & 1) == 0)
    {

      v27 = sub_2225C6A80();
      v28 = sub_2225C6C60();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_222597000, v27, v28, "A file with same name already exists at preserved apps directory path!", v29, 2u);
        MEMORY[0x223DBAFE0](v29, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v30 = 0xD000000000000046;
      *(v30 + 8) = 0x80000002225C8D20;
      *(v30 + 16) = 0;
      swift_willThrow();
      return;
    }

    goto LABEL_14;
  }

  v31 = [v85 defaultManager];
  (v21)(v6, v82, v2);
  v32 = sub_2225C69A0();
  v25 = v2;
  v22(v6, v2);
  v92 = 0;
  v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v92];

  if (v33)
  {
    v85 = v22;
    v34 = v92;
    v26 = v88;
LABEL_14:

    v35 = sub_2225C6A80();
    v36 = sub_2225C6C70();

    v37 = 0x27D00F000uLL;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v92 = v82;
      *v38 = 136315394;
      v39 = sub_2225C6B30();
      v41 = sub_2225AD5C8(v39, v40, &v92);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = v25;
      v43 = v83;
      if (qword_27D00FB08 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v25, qword_27D0107D0);
      v45 = v81;
      v43(v81, v44, v25);
      sub_2225C1404();
      v46 = sub_2225C6D80();
      v48 = v47;
      (v85)(v45, v25);
      v49 = sub_2225AD5C8(v46, v48, &v92);

      *(v38 + 14) = v49;
      _os_log_impl(&dword_222597000, v35, v36, "Writing plist: %s to url: %s !", v38, 0x16u);
      v50 = v82;
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v50, -1, -1);
      MEMORY[0x223DBAFE0](v38, -1, -1);

      v26 = v88;
      v37 = 0x27D00F000;
    }

    else
    {

      v42 = v25;
      v43 = v83;
    }

    v62 = v86;
    if (*(v37 + 2824) != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v42, qword_27D0107D0);
    v43(v62, v63, v42);
    v64 = v87;
    sub_2225C6630(v62, v26);
    if (v64)
    {
      (v85)(v62, v42);

      v65 = v64;
      v66 = sub_2225C6A80();
      v67 = sub_2225C6C60();

      MEMORY[0x223DBAEB0](v64);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v92 = v70;
        *v68 = 136315394;
        v71 = sub_2225C6B30();
        v73 = v72;

        v74 = sub_2225AD5C8(v71, v73, &v92);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2112;
        v75 = v64;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 14) = v76;
        *v69 = v76;
        _os_log_impl(&dword_222597000, v66, v67, "Failed to write plist: %s, to disk with error: %@ !", v68, 0x16u);
        sub_2225B01A4(v69, &qword_27D00FBC8, &unk_2225C7C40);
        MEMORY[0x223DBAFE0](v69, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x223DBAFE0](v70, -1, -1);
        MEMORY[0x223DBAFE0](v68, -1, -1);
      }

      else
      {
      }

      sub_2225B02BC();
      swift_allocError();
      *v80 = 0xD00000000000001ELL;
      *(v80 + 8) = 0x80000002225C8D00;
      *(v80 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v64);
    }

    else
    {
      (v85)(v62, v42);

      v77 = sub_2225C6A80();
      v78 = sub_2225C6C70();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_222597000, v77, v78, "returned from WritePlist without error !", v79, 2u);
        MEMORY[0x223DBAFE0](v79, -1, -1);
      }
    }

    return;
  }

  v51 = v92;

  v52 = sub_2225C6970();

  swift_willThrow();
  v53 = v52;
  v54 = sub_2225C6A80();
  v55 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v52);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v92 = v57;
    *v56 = 136315138;
    swift_getErrorValue();
    v58 = sub_2225C6DB0();
    v60 = sub_2225AD5C8(v58, v59, &v92);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_222597000, v54, v55, "Error creating Features/Migration/ Directory! Error: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x223DBAFE0](v57, -1, -1);
    MEMORY[0x223DBAFE0](v56, -1, -1);
  }

  sub_2225B02BC();
  swift_allocError();
  *v61 = 0xD00000000000002FLL;
  *(v61 + 8) = 0x80000002225C8CD0;
  *(v61 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v52);
}

unint64_t sub_2225C1404()
{
  result = qword_27D00FC48;
  if (!qword_27D00FC48)
  {
    sub_2225C69E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC48);
  }

  return result;
}

id sub_2225C145C()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2225C69E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_opt_self();
  v4 = [v27 defaultManager];
  if (qword_27D00FB10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27D0107E8);
  v26 = *(v1 + 16);
  v26(v3, v5, v0);
  sub_2225C69C0();
  v25 = *(v1 + 8);
  v25(v3, v0);
  v6 = sub_2225C6B40();

  v7 = [v4 fileExistsAtPath_];

  if (v7)
  {
    v8 = [v27 defaultManager];
    v26(v3, v5, v0);
    v9 = sub_2225C69A0();
    v25(v3, v0);
    v28[0] = 0;
    v10 = [v8 removeItemAtURL:v9 error:v28];

    if (v10)
    {
      v11 = v28[0];
    }

    else
    {
      v12 = v28[0];
      v13 = sub_2225C6970();

      swift_willThrow();
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v14 = sub_2225C6AA0();
      __swift_project_value_buffer(v14, qword_281311550);
      v15 = v13;
      v16 = sub_2225C6A80();
      v17 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v13);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28[0] = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_2225C6DB0();
        v22 = sub_2225AD5C8(v20, v21, v28);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_222597000, v16, v17, "Error removing plist from Disk! Error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x223DBAFE0](v19, -1, -1);
        MEMORY[0x223DBAFE0](v18, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v23 = 0xD00000000000002ALL;
      *(v23 + 8) = 0x80000002225C8E20;
      *(v23 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v13);
    }
  }

  return v7;
}

void sub_2225C187C()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "Clearing Preserved Apps list!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  sub_2225C07F8(MEMORY[0x277D84F90]);
  if (v0)
  {
    v5 = v0;
    v6 = sub_2225C6A80();
    v7 = sub_2225C6C60();
    MEMORY[0x223DBAEB0](v0);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v0;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_222597000, v6, v7, "writeAppIDPlistToDiskWith with empty array failed with error: %@!", v8, 0xCu);
      sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v9, -1, -1);
      MEMORY[0x223DBAFE0](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = sub_2225C6A80();
    v13 = sub_2225C6C70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222597000, v12, v13, "Successfully cleared preserved apps list", v14, 2u);
      MEMORY[0x223DBAFE0](v14, -1, -1);
    }
  }
}

uint64_t sub_2225C1AC8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2225C6D90() & 1;
  }
}

unint64_t sub_2225C1B20()
{
  result = qword_27D00FC50;
  if (!qword_27D00FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC50);
  }

  return result;
}

uint64_t sub_2225C1B74(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2225C1BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225C1C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DMCAppsPreservable.preserveApps()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225ACB0C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DMCAppsPreservable.removeUnusedPreservedApps()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return v7(a1, a2);
}

uint64_t _s7DMCApps0A17RemoveStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_2225AFF20(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_2225AFF20(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_2225C6D90();
      sub_2225AFF0C(v4, v5);
      sub_2225AFF0C(v2, v3);
      sub_2225AFF20(v2, v3);
      sub_2225AFF20(v4, v5);
      return v11 & 1;
    }

    sub_2225AFF0C(v9, v3);
    sub_2225AFF0C(v2, v3);
    sub_2225AFF20(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_2225AFF0C(*a2, *(a2 + 8));
    sub_2225AFF0C(v2, v3);
    sub_2225AFF20(v2, v3);
    sub_2225AFF20(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_2225AFF20(*a1, 1uLL);
  sub_2225AFF20(v4, 1uLL);
  return v6;
}

uint64_t _s7DMCApps0A18InstallStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v5 == 2)
        {
          sub_2225AFE34(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_34;
        }
      }

      else if (v5 == 3)
      {
        sub_2225AFE34(*a1, 3uLL);
        v6 = v4;
        v7 = 3;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (!v3)
    {
      if (!v5)
      {
        sub_2225AFE34(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_2225AFE34(*a1, 1uLL);
        sub_2225AFE34(v4, 1uLL);
        return v8;
      }

LABEL_30:
      sub_2225AFE20(*a2, *(a2 + 8));
      sub_2225AFE20(v2, v3);
      sub_2225AFE34(v2, v3);
      sub_2225AFE34(v4, v5);
      return 0;
    }
  }

  else
  {
    if (v3 <= 5)
    {
      if (v3 == 4)
      {
        if (v5 == 4)
        {
          sub_2225AFE34(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_34;
        }
      }

      else if (v5 == 5)
      {
        sub_2225AFE34(*a1, 5uLL);
        v6 = v4;
        v7 = 5;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    switch(v3)
    {
      case 6:
        if (v5 == 6)
        {
          sub_2225AFE34(*a1, 6uLL);
          v6 = v4;
          v7 = 6;
          goto LABEL_34;
        }

        goto LABEL_30;
      case 7:
        if (v5 == 7)
        {
          sub_2225AFE34(*a1, 7uLL);
          v6 = v4;
          v7 = 7;
          goto LABEL_34;
        }

        goto LABEL_30;
      case 8:
        if (v5 == 8)
        {
          sub_2225AFE34(*a1, 8uLL);
          v6 = v4;
          v7 = 8;
LABEL_34:
          sub_2225AFE34(v6, v7);
          return 1;
        }

        goto LABEL_30;
    }
  }

  if (v5 < 9)
  {
    goto LABEL_30;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2225AFE20(*a1, v3);
    sub_2225AFE20(v2, v3);
    sub_2225AFE34(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_34;
  }

  v10 = sub_2225C6D90();
  sub_2225AFE20(v4, v5);
  sub_2225AFE20(v2, v3);
  sub_2225AFE34(v2, v3);
  sub_2225AFE34(v4, v5);
  return v10 & 1;
}

uint64_t _s7DMCApps0A29OtherAppNowPresentStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_2225AFF48(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_2225AFF48(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_2225AFF48(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_2225AFF34(*a2, *(a2 + 8));
        sub_2225AFF34(v2, v3);
        sub_2225AFF48(v2, v3);
        sub_2225AFF48(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_2225AFF48(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_2225AFF48(*a1, 1uLL);
          sub_2225AFF48(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_2225AFF48(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_2225AFF48(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2225AFF34(*a1, v3);
    sub_2225AFF34(v2, v3);
    sub_2225AFF48(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = sub_2225C6D90();
  sub_2225AFF34(v4, v5);
  sub_2225AFF34(v2, v3);
  sub_2225AFF48(v2, v3);
  sub_2225AFF48(v4, v5);
  return v10 & 1;
}

uint64_t sub_2225C2618(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  switch(v6)
  {
    case 0:
      if (!v8)
      {
        (a3)(*a1, 0, a3, a4);
        v9 = v7;
        v10 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1:
      if (v8 == 1)
      {
        v11 = 1;
        (a3)(*a1, 1, a3, a4);
        a3(v7, 1);
        return v11;
      }

      goto LABEL_11;
    case 2:
      if (v8 == 2)
      {
        (a3)(*a1, 2, a3, a4);
        v9 = v7;
        v10 = 2;
LABEL_15:
        a3(v9, v10);
        return 1;
      }

      goto LABEL_11;
  }

  if (v8 < 3)
  {
LABEL_11:
    a4(*a2, a2[1]);
    a4(v5, v6);
    a3(v5, v6);
    a3(v7, v8);
    return 0;
  }

  if (v5 == v7 && v6 == v8)
  {
    a4(*a1, v6);
    a4(v5, v6);
    a3(v5, v6);
    v9 = v5;
    v10 = v6;
    goto LABEL_15;
  }

  v16 = sub_2225C6D90();
  a4(v7, v8);
  a4(v5, v6);
  a3(v5, v6);
  a3(v7, v8);
  return v16 & 1;
}

uint64_t sub_2225C27F8(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_2225C6D90();
}

uint64_t dispatch thunk of DMCAppStateReporting.willInstallApplication(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225C4468;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting.didInstallApplication(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225C2AD0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2225C2AD0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DMCAppStateReporting.updateApp(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225C4468;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting2.isManaged(bundleID:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2225C4468;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DMCAppStateReporting3.shouldPromptForInstallConsent(for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225C2F74;

  return v11(a1, a2 & 1, a3, a4);
}

uint64_t sub_2225C2F74(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DMCAppStateReporting5.configurationApplied(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DMCAppStateReporting5.configurationRemoved(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.optionalAppRequested(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DMCAppStateReporting5.otherAppNowPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.canTakeOverManagementOfExistingApp(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willDownload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willInstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didInstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225ACB0C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didUninstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didRemoveConfiguration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.installFailed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225B04A8;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2225C4048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C40A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_2225C4100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C4154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2225C41D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C4228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_2225C4288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C42E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2225C43A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C43F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2225C44B8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2225C6B40();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2225C6970();

    swift_willThrow();
  }

  return v6;
}

id sub_2225C4594(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = sub_2225C6B40();
  v8 = [v6 codeIdentityForPath_];

  result = v8;
  if (v8)
  {
    return result;
  }

  sub_2225C1B74(0, &qword_27D00FC88, 0x277D03500);
  v10 = sub_2225C6C90();
  result = 0;
  if ((v10 & 1) == 0)
  {
    return result;
  }

  v11 = [a3 bundleIdentifier];
  if (!v11)
  {
    sub_2225C6C80();
LABEL_12:

    return 0;
  }

  v12 = v11;
  sub_2225C6B50();
  v14 = v13;

  sub_2225C6C80();
  if (!v14 || !v15)
  {
    goto LABEL_12;
  }

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v16 = sub_2225C6AA0();
  __swift_project_value_buffer(v16, qword_281311550);

  v17 = sub_2225C6A80();
  v18 = sub_2225C6C40();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2225AD5C8(a1, a2, &v26);
    _os_log_impl(&dword_222597000, v17, v18, "Overriding code identity for bundle: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DBAFE0](v20, -1, -1);
    MEMORY[0x223DBAFE0](v19, -1, -1);
  }

  v21 = objc_allocWithZone(MEMORY[0x277D034C8]);
  v22 = sub_2225C6B40();

  v23 = sub_2225C6B40();

  v24 = sub_2225C6B40();
  v25 = [v21 initWithCodeSigningID:v22 teamID:v23 path:v24];

  return v25;
}

void sub_2225C4850(void *a1)
{
  v46 = sub_2225C69E0();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x277D84F90];
  v4 = [a1 applicationExtensionRecords];
  v5 = sub_2225C1B74(0, &qword_27D00FC78, 0x277CC1E50);
  sub_2225C5CD4();
  v42 = v5;
  v6 = sub_2225C6C00();

  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_2225C6CE0();
    sub_2225C6C30();
    v6 = v50;
    v8 = v51;
    v9 = v52;
    v10 = v53;
    v11 = v54;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
  }

  v38 = v9;
  v15 = (v9 + 64) >> 6;
  v44 = (v2 + 8);
  v39 = MEMORY[0x277D84F90];
  *&v7 = 136315138;
  v40 = v7;
  v41 = v8;
  v43 = v15;
LABEL_8:
  v16 = v10;
  while (v6 < 0)
  {
    v21 = sub_2225C6CF0();
    if (!v21 || (v47 = v21, swift_dynamicCast(), v20 = v48, v10 = v16, v19 = v11, !v48))
    {
LABEL_28:
      sub_2225BE154(v6);
      return;
    }

LABEL_20:
    v22 = [v20 URL];
    v23 = v45;
    sub_2225C69B0();

    v24 = sub_2225C69C0();
    v26 = v25;
    (*v44)(v23, v46);
    v27 = sub_2225C4594(v24, v26, v20);
    if (v27)
    {
      v36 = v27;

      v37 = v36;
      MEMORY[0x223DBA8E0]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2225C6BD0();
      }

      sub_2225C6BF0();

      v39 = v49;
      v11 = v19;
      goto LABEL_8;
    }

    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v28 = sub_2225C6AA0();
    __swift_project_value_buffer(v28, qword_281311550);

    v29 = sub_2225C6A80();
    v30 = sub_2225C6C60();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = v40;
      v34 = sub_2225AD5C8(v24, v26, &v48);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_222597000, v29, v30, "Failed to get code identity for extension %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x223DBAFE0](v33, -1, -1);
      v35 = v32;
      v6 = v31;
      v8 = v41;
      MEMORY[0x223DBAFE0](v35, -1, -1);
    }

    else
    {
    }

    v16 = v10;
    v11 = v19;
    v15 = v43;
  }

  v17 = v16;
  v18 = v11;
  v10 = v16;
  if (v11)
  {
LABEL_16:
    v19 = (v18 - 1) & v18;
    v20 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v20)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_28;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_2225C4D04(void *a1)
{
  v2 = sub_2225C69E0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC68, &qword_2225C8588);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v125 = (&v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v119 - v7;
  MEMORY[0x28223BE20](v6);
  v126 = &v119 - v9;
  v10 = sub_2225C6AF0();
  v128 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v123 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v119 - v20;
  v22 = a1[3];
  v23 = a1[5];
  __swift_project_boxed_opaque_existential_1Tm(a1, v22);
  v24 = (*(v23 + 32))(v22, v23);
  if (v25)
  {
    MEMORY[0x223DBA840](v24);
    sub_2225C6AC0();
    v26 = a1[3];
    v27 = a1[5];
    __swift_project_boxed_opaque_existential_1Tm(a1, v26);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    v31 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v32 = v127;
    v33 = sub_2225C44B8(v28, v30, 1);
    if (v32)
    {
      MEMORY[0x223DBAEB0](v32);
      v34 = v10;
LABEL_4:
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v35 = sub_2225C6AA0();
      __swift_project_value_buffer(v35, qword_281311550);
      sub_2225B0314(a1, v129);
      v36 = sub_2225C6A80();
      v37 = sub_2225C6C60();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v132 = v39;
        *v38 = 136315138;
        v40 = v130;
        v41 = v21;
        v42 = v131;
        __swift_project_boxed_opaque_existential_1Tm(v129, v130);
        v43 = *(v42 + 8);
        v44 = v42;
        v21 = v41;
        v45 = v43(v40, v44);
        v47 = v46;
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        v48 = sub_2225AD5C8(v45, v47, &v132);

        *(v38 + 4) = v48;
        _os_log_impl(&dword_222597000, v36, v37, "Failed to get record for app %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x223DBAFE0](v39, -1, -1);
        MEMORY[0x223DBAFE0](v38, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v129);
      }

      v53 = 0x80000002225C8EA0;
      sub_2225B02BC();
      swift_allocError();
      *v55 = 0xD000000000000014;
      *(v55 + 8) = 0x80000002225C8EA0;
      *(v55 + 16) = 0;
      swift_willThrow();
      (v128[1].isa)(v21, v34);
      return v53;
    }

    v34 = v10;
    if (!v33)
    {
      goto LABEL_4;
    }

    v127 = v21;
    v120 = v33;
    v57 = [v120 URL];
    sub_2225C69B0();

    sub_2225C6AB0();
    v58 = v128;
    isa = v128[6].isa;
    v60 = v128 + 7;
    if ((isa)(v8, 1, v34) == 1)
    {
      sub_2225B01A4(v8, &qword_27D00FC68, &qword_2225C8588);
      v61 = 1;
      v62 = v126;
    }

    else
    {
      v62 = v126;
      sub_2225C6AC0();
      v61 = 0;
    }

    v63 = v125;
    (v60->isa)(v62, v61, 1, v34);
    sub_2225C5C0C(v62, v63);
    if ((isa)(v63, 1, v34) == 1)
    {
      sub_2225B01A4(v63, &qword_27D00FC68, &qword_2225C8588);
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v64 = sub_2225C6AA0();
      __swift_project_value_buffer(v64, qword_281311550);
      v65 = sub_2225C6A80();
      v66 = sub_2225C6C60();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_222597000, v65, v66, "Missing app record path", v67, 2u);
        MEMORY[0x223DBAFE0](v67, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v68 = 0xD000000000000017;
      *(v68 + 8) = 0x80000002225C8EC0;
      *(v68 + 16) = 0;
      swift_willThrow();
      v53 = v120;

      sub_2225B01A4(v62, &qword_27D00FC68, &qword_2225C8588);
      (v58[1].isa)(v127, v34);
    }

    else
    {
      v69 = v124;
      (v58[4].isa)(v124, v63, v34);
      if (sub_2225C6AD0())
      {
        v70 = sub_2225C6AE0();
        v72 = sub_2225C4594(v70, v71, v120);

        if (v72)
        {
          if (qword_2813114B8 != -1)
          {
            swift_once();
          }

          v73 = sub_2225C6AA0();
          __swift_project_value_buffer(v73, qword_281311550);
          v53 = v72;
          v74 = sub_2225C6A80();
          v75 = sub_2225C6C50();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138412290;
            *(v76 + 4) = v53;
            *v77 = v72;
            v78 = v53;
            _os_log_impl(&dword_222597000, v74, v75, "Got code identity %@", v76, 0xCu);
            sub_2225B01A4(v77, &qword_27D00FBC8, &unk_2225C7C40);
            MEMORY[0x223DBAFE0](v77, -1, -1);
            v79 = v76;
            v69 = v124;
            MEMORY[0x223DBAFE0](v79, -1, -1);
          }

          v80 = v120;
          sub_2225C4850(v120);

          v81 = v128[1].isa;
          (v81)(v69, v34);
          sub_2225B01A4(v62, &qword_27D00FC68, &qword_2225C8588);
          (v81)(v127, v34);
        }

        else
        {
          if (qword_2813114B8 != -1)
          {
            swift_once();
          }

          v105 = sub_2225C6AA0();
          __swift_project_value_buffer(v105, qword_281311550);
          v106 = v121;
          (v58[2].isa)(v121, v127, v34);
          v107 = sub_2225C6A80();
          v108 = v58;
          v109 = sub_2225C6C60();
          if (os_log_type_enabled(v107, v109))
          {
            v110 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v129[0] = v125;
            *v110 = 136315138;
            sub_2225C5C7C();
            v111 = sub_2225C6D80();
            v112 = v106;
            v114 = v113;
            v115 = v108[1].isa;
            v115(v112, v34);
            v116 = sub_2225AD5C8(v111, v114, v129);

            *(v110 + 4) = v116;
            _os_log_impl(&dword_222597000, v107, v109, "Failed to get code identity for app %s", v110, 0xCu);
            v117 = v125;
            __swift_destroy_boxed_opaque_existential_1Tm(v125);
            MEMORY[0x223DBAFE0](v117, -1, -1);
            MEMORY[0x223DBAFE0](v110, -1, -1);
          }

          else
          {

            v115 = v108[1].isa;
            v115(v106, v34);
          }

          sub_2225B02BC();
          swift_allocError();
          *v118 = 0xD00000000000001FLL;
          *(v118 + 8) = 0x80000002225C8F00;
          *(v118 + 16) = 0;
          swift_willThrow();
          v53 = v120;

          v115(v124, v34);
          sub_2225B01A4(v126, &qword_27D00FC68, &qword_2225C8588);
          v115(v127, v34);
        }
      }

      else
      {
        if (qword_2813114B8 != -1)
        {
          swift_once();
        }

        v82 = sub_2225C6AA0();
        __swift_project_value_buffer(v82, qword_281311550);
        v83 = v58[2].isa;
        v84 = v122;
        v83(v122, v127, v34);
        v85 = v123;
        v83(v123, v69, v34);
        v86 = sub_2225C6A80();
        v87 = sub_2225C6C60();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v129[0] = v125;
          *v88 = 136315394;
          sub_2225C5C7C();
          LODWORD(v121) = v87;
          v89 = sub_2225C6D80();
          v91 = v90;
          v92 = v84;
          v93 = v58[1].isa;
          v93(v92, v34);
          v94 = sub_2225AD5C8(v89, v91, v129);
          v62 = v126;

          *(v88 + 4) = v94;
          *(v88 + 12) = 2080;
          v95 = v123;
          v96 = sub_2225C6D80();
          v128 = v86;
          v97 = v96;
          v99 = v98;
          v93(v95, v34);
          v100 = sub_2225AD5C8(v97, v99, v129);
          v69 = v124;

          *(v88 + 14) = v100;
          v101 = v128;
          _os_log_impl(&dword_222597000, v128, v121, "Path %s does not match record path %s", v88, 0x16u);
          v102 = v125;
          swift_arrayDestroy();
          MEMORY[0x223DBAFE0](v102, -1, -1);
          MEMORY[0x223DBAFE0](v88, -1, -1);
        }

        else
        {

          v103 = v84;
          v93 = v58[1].isa;
          v93(v85, v34);
          v93(v103, v34);
        }

        sub_2225B02BC();
        swift_allocError();
        *v104 = 0xD00000000000001CLL;
        *(v104 + 8) = 0x80000002225C8EE0;
        *(v104 + 16) = 0;
        swift_willThrow();
        v53 = v120;

        v93(v69, v34);
        sub_2225B01A4(v62, &qword_27D00FC68, &qword_2225C8588);
        v93(v127, v34);
      }
    }
  }

  else
  {
    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v49 = sub_2225C6AA0();
    __swift_project_value_buffer(v49, qword_281311550);
    v50 = sub_2225C6A80();
    v51 = sub_2225C6C60();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_222597000, v50, v51, "Missing app path", v52, 2u);
      MEMORY[0x223DBAFE0](v52, -1, -1);
    }

    v53 = 0x80000002225C8E80;
    sub_2225B02BC();
    swift_allocError();
    *v54 = 0xD000000000000010;
    *(v54 + 8) = 0x80000002225C8E80;
    *(v54 + 16) = 0;
    swift_willThrow();
  }

  return v53;
}

uint64_t sub_2225C5C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC68, &qword_2225C8588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2225C5C7C()
{
  result = qword_27D00FC70;
  if (!qword_27D00FC70)
  {
    sub_2225C6AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC70);
  }

  return result;
}

unint64_t sub_2225C5CD4()
{
  result = qword_27D00FC80;
  if (!qword_27D00FC80)
  {
    sub_2225C1B74(255, &qword_27D00FC78, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC80);
  }

  return result;
}

uint64_t sub_2225C5D78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2225C6AA0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2225C6A90();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_2225C5E54()
{
  v0 = sub_2225C69E0();
  __swift_allocate_value_buffer(v0, qword_27D0107B8);
  __swift_project_value_buffer(v0, qword_27D0107B8);
  result = MDMMigrationDirectory();
  if (result)
  {
    v2 = result;
    sub_2225C6B50();

    sub_2225C6990();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2225C5EF0()
{
  v0 = sub_2225C6980();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2225C69E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_27D0107D0);
  __swift_project_value_buffer(v4, qword_27D0107D0);
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27D0107B8);
  (*(v5 + 16))(v8, v9, v4);
  v11[0] = 0xD000000000000013;
  v11[1] = 0x80000002225C8F60;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_2225C6394();
  sub_2225C69D0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2225C6130()
{
  v0 = sub_2225C6980();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2225C69E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_27D0107E8);
  __swift_project_value_buffer(v4, qword_27D0107E8);
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27D0107B8);
  (*(v5 + 16))(v8, v9, v4);
  v11[0] = 0xD000000000000021;
  v11[1] = 0x80000002225C8F80;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_2225C6394();
  sub_2225C69D0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2225C6394()
{
  result = qword_27D00FC90;
  if (!qword_27D00FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC90);
  }

  return result;
}

id sub_2225C63E8()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v1 = sub_2225C69A0();
  v2 = [v0 initWithURL_];

  if (!v2)
  {
    sub_2225C1B20();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return v0;
  }

  v3 = v2;
  [v3 open];
  sub_2225BEC14(MEMORY[0x277D84F90]);

  v12[0] = 0;
  v4 = [objc_opt_self() propertyListWithStream:v3 options:0 format:0 error:v12];
  if (!v4)
  {
    v7 = v12[0];
    v0 = sub_2225C6970();

    swift_willThrow();
    sub_2225C1B20();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v0);
LABEL_8:
    [v3 close];

    return v0;
  }

  v0 = v4;
  v5 = v12[0];
  sub_2225C6CC0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2225C1B20();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v0 = v11;
  [v3 close];

  return v0;
}

uint64_t sub_2225C6630(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_2225C6B10();
  v17 = 0;
  v5 = [v3 dataWithPropertyList:v4 format:100 options:0 error:&v17];

  v6 = v17;
  if (v5)
  {
    v7 = sub_2225C69F0();
    v9 = v8;

    sub_2225C6A00();
    if (v2)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_2225C6D30();

      v17 = 0xD000000000000017;
      v18 = 0x80000002225C8FD0;
      v10 = sub_2225C6B30();
      MEMORY[0x223DBA8C0](v10);

      MEMORY[0x223DBA8C0](0x3A6C7275206F7420, 0xE900000000000020);
      sub_2225C69E0();
      sub_2225C1404();
      v11 = sub_2225C6D80();
      MEMORY[0x223DBA8C0](v11);

      MEMORY[0x223DBA8C0](8480, 0xE200000000000000);
      v12 = v17;
      v13 = v18;
      sub_2225B02BC();
      swift_allocError();
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v2);
    }

    return sub_2225C68B4(v7, v9);
  }

  else
  {
    v16 = v6;
    sub_2225C6970();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2225C68B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2225C691C()
{
  result = qword_27D00FC98;
  if (!qword_27D00FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC98);
  }

  return result;
}