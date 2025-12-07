uint64_t sub_237FF9560()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237FF96D4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_237FF9DD4;
  }

  else
  {

    v2 = sub_237FF97F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_237FF97F0(uint64_t a1)
{
  v57 = v1;
  v2 = v1[25];
  sub_238031634();
  sub_238031624();
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v4 = v1[35];
      v5 = v2 & 0xC000000000000001;
      v6 = v1[31];
      swift_beginAccess();
      v7 = 0;
      v47 = v2 + 32;
      v48 = v2 & 0xFFFFFFFFFFFFFF8;
      v53 = (v4 + 40);
      v54 = (v6 + 8);
      v8 = v1[41];
      v55 = (v4 + 8);
      v52 = v2;
      v49 = v2 & 0xC000000000000001;
      v50 = v3;
LABEL_4:
      if (v5)
      {
        v9 = MEMORY[0x2383E5440](v7, v2);
      }

      else
      {
        if (v7 >= *(v48 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v47 + 8 * v7);
      }

      v10 = v9;
      v11 = __OFADD__(v7, 1);
      v12 = v7 + 1;
      if (!v11)
      {
        break;
      }

      __break(1u);
LABEL_24:
      v3 = sub_238032374();
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    v51 = v12;
    swift_beginAccess();
    while (1)
    {
      v13 = v1[36];
      v15 = v1[33];
      v14 = v1[34];
      v16 = v1[32];
      v17 = v1[30];
      swift_beginAccess();
      sub_238031634();
      swift_endAccess();
      v18 = v10;
      v19 = [v10 interval];
      sub_2380315F4();

      sub_238031634();
      v20 = *v55;
      (*v55)(v13, v14);
      LOBYTE(v19) = sub_238031A14();
      v21 = *v54;
      (*v54)(v16, v17);
      v21(v15, v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v22 = sub_238031DB4();
      __swift_project_value_buffer(v22, qword_280C36C80);
      v23 = sub_238031D94();
      v24 = sub_2380320E4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v56 = v26;
        *v25 = 136446210;
        sub_237FFCDA8(&qword_280C35068, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
        v27 = sub_2380324C4();
        v29 = sub_237FDF8EC(v27, v28, &v56);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_237FA1000, v23, v24, "Creating empty usage report for interval: %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x2383E5E30](v26, -1, -1);
        MEMORY[0x2383E5E30](v25, -1, -1);
      }

      v30 = v1[27];
      v31 = objc_opt_self();
      v32 = sub_2380315D4();
      v33 = [v31 emptyReportForInterval_];

      v30(v33);
      v34 = v1[37];
      if (v8)
      {
        v41 = v1[34];

        v42 = v34;
        v43 = v41;
LABEL_21:
        v20(v42, v43);

        v44 = v1[1];
        goto LABEL_27;
      }

      v35 = v1[36];
      v36 = v1[34];

      swift_beginAccess();
      sub_238031604();
      swift_endAccess();
      sub_238031624();
      (*v53)(v34, v35, v36);
      v8 = 0;
      v10 = v18;
    }

    v37 = v18;
    (v1[27])(v18);
    v38 = v1[37];
    v5 = v49;
    v7 = v51;
    if (v8)
    {
      v45 = v1[34];

      v42 = v38;
      v43 = v45;
      goto LABEL_21;
    }

    v39 = v1[36];
    v40 = v1[34];
    swift_beginAccess();
    sub_238031604();
    swift_endAccess();
    sub_238031624();

    (*v53)(v38, v39, v40);
    v8 = 0;
    v2 = v52;
    if (v51 != v50)
    {
      goto LABEL_4;
    }
  }

  else
  {
LABEL_25:
    v46 = v1[35];

    v20 = *(v46 + 8);
  }

  v20(v1[37], v1[34]);

  v44 = v1[1];
LABEL_27:

  v44();
}

uint64_t sub_237FF9DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_237FF9E64(uint64_t *a1, uint64_t a2)
{
  v4 = sub_238031A64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v20 = 0.0;
  if (sub_238010DB8(v8, v9, &v20))
  {
    v10 = v20;
    (*(v5 + 16))(v7, a2, v4);
    sub_2380319E4();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    sub_2380319E4();
    if (v12 <= v10)
    {
      return v10 < v13;
    }
  }

  else
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v15 = sub_238031DB4();
    __swift_project_value_buffer(v15, qword_280C36C80);
    v16 = sub_238031D94();
    v17 = sub_238032104();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_237FA1000, v16, v17, "Failed to create hourly segment start date", v18, 2u);
      MEMORY[0x2383E5E30](v18, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_237FFA068(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_23800F1B4(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_23800F1B4((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

void sub_237FFA208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(v3 + 176))();
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v11[4] = a2;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_237FC0DB8;
  v11[3] = a3;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v7 proxyFromConnection:v10 withRetryCount:1 proxyHandler:v9];
  _Block_release(v9);
}

id sub_237FFA304(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  sub_237FA90E4(a1, aBlock, &qword_27DEE50F8, &qword_238033EC0);
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54C8, &qword_238035878);
    if (swift_dynamicCast())
    {
      v12 = v31;
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      v29 = a5;
      v30 = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_237FE7844;
      v28 = a6;
      v14 = _Block_copy(aBlock);
      v15 = a3;

      [v12 *a7];
      _Block_release(v14);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_237FA5750(aBlock, &qword_27DEE50F8, &qword_238033EC0);
  }

  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v17 = sub_238031DB4();
  __swift_project_value_buffer(v17, qword_280C36C80);
  v18 = a2;
  v19 = sub_238031D94();
  v20 = sub_2380320F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v31 = a2;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54C0, &unk_238035868);
    v24 = sub_238031EB4();
    v26 = sub_237FDF8EC(v24, v25, aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_237FA1000, v19, v20, "Failed to request UsageTrackingAgent proxy with error: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x2383E5E30](v22, -1, -1);
    MEMORY[0x2383E5E30](v21, -1, -1);
  }

  return [a3 invalidate];
}

id sub_237FFA5B0(void *a1, void *a2, const char *a3, const char *a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v8 = sub_238031DB4();
    __swift_project_value_buffer(v8, qword_280C36C80);
    v9 = a1;
    v10 = sub_238031D94();
    v11 = sub_2380320F4();

    if (!os_log_type_enabled(v10, v11))
    {

      return [a2 invalidate];
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = a1;
    v24 = v13;
    *v12 = 136446210;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    v15 = sub_238031EB4();
    v17 = sub_237FDF8EC(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_237FA1000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2383E5E30](v13, -1, -1);
    MEMORY[0x2383E5E30](v12, -1, -1);
  }

  else
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v19 = sub_238031DB4();
    __swift_project_value_buffer(v19, qword_280C36C80);
    v10 = sub_238031D94();
    v20 = sub_238032114();
    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_237FA1000, v10, v20, a4, v21, 2u);
      MEMORY[0x2383E5E30](v21, -1, -1);
    }
  }

  return [a2 invalidate];
}

uint64_t sub_237FFA81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4[40] = swift_task_alloc();
  v5 = sub_238031654();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FFA918, 0, 0);
}

uint64_t sub_237FFA918()
{
  v1 = v0[43];
  static EventStreams.adjust(_:)(v0[36], v1);
  v0[44] = static EventStreams.identifiers(during:)(v1);
  v0[45] = v2;
  v3 = [objc_opt_self() sharedCategories];
  v0[46] = v3;

  v4 = sub_238031F84();
  v0[47] = v4;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_237FFAAAC;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54D8, &qword_238035890);
  v0[48] = v6;
  v0[25] = v6;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_237FFB40C;
  v0[21] = &block_descriptor_43;
  v0[22] = v5;
  [v3 categoriesForBundleIDs:v4 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_237FFAAAC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {

    v2 = sub_237FFB294;
  }

  else
  {
    v2 = sub_237FFABCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237FFABCC()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v0[50] = v0[34];

  v4 = sub_238031F84();
  v0[51] = v4;

  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_237FFAD20;
  v5 = swift_continuation_init();
  v0[33] = v2;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_237FFB40C;
  v0[29] = &block_descriptor_46;
  v0[30] = v5;
  [v3 categoriesForDomainNames:v4 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_237FFAD20()
{
  v1 = *(*v0 + 112);
  *(*v0 + 416) = v1;
  if (v1)
  {

    v2 = sub_237FFB350;
  }

  else
  {
    v2 = sub_237FFAE38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_237FFAE38()
{
  v1 = v0[51];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v0[53] = v0[35];

  v6 = *(v3 + 8);
  sub_238031634();
  v7 = sub_238031A64();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = _s14DeviceActivity12EventStreamsV5BiomeV3allSaySo8NSObjectCGvgZ_0();
  v0[54] = sub_23802E628(v8);

  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = *(v6 + 24);

  v12 = v10 + *v10;
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_237FFB050;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237FFB050()
{
  v1 = *(*v0 + 320);

  sub_237FA5750(v1, &qword_27DEE51E0, &qword_2380365F0);

  return MEMORY[0x2822009F8](sub_237FFB1F8, 0, 0);
}

uint64_t sub_237FFB1F8()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_237FFB294(uint64_t a1)
{
  v3 = v1[46];
  v2 = v1[47];
  v5 = v1[42];
  v4 = v1[43];
  v6 = v1[41];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_237FFB350(uint64_t a1)
{
  v2 = v1[51];
  v3 = v1[46];
  v5 = v1[42];
  v4 = v1[43];
  v6 = v1[41];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_237FFB40C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_237FFCE24(0, &qword_280C34A28, 0x277CF9658);
    **(*(v4 + 64) + 40) = sub_238031DF4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_237FFB6D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = a2[20];
  v11 = a2[21];
  __swift_project_boxed_opaque_existential_1(a2 + 17, v10);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  (*(v11 + 16))(a3, sub_237FFCE6C, v13, v10, v11, 3600.0);
}

uint64_t sub_237FFB864(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  if (a1)
  {
    v19 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);
    return sub_238032044();
  }

  else
  {
    if (a4)
    {
      v6 = a4;
      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v7 = sub_238031DB4();
      __swift_project_value_buffer(v7, qword_280C36C80);
      v8 = a4;
      v9 = sub_238031D94();
      v10 = sub_2380320F4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19 = v12;
        *v11 = 136446210;
        v13 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
        v14 = sub_238031EB4();
        v16 = sub_237FDF8EC(v14, v15, &v19);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_237FA1000, v9, v10, "Failed to query UsageTracking with error: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x2383E5E30](v12, -1, -1);
        MEMORY[0x2383E5E30](v11, -1, -1);
      }

      else
      {
      }
    }

    sub_237FFC764(a1, a2, a3);
    v17 = swift_allocError();
    *v18 = 0;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);
    return sub_238032034();
  }
}

uint64_t sub_237FFBA84(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_238010DA4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2380324B4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
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
      v7 = sub_238031FD4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_237FFBFE4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_237FFBBFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_237FA4E8C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_237FA4E8C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_238032534();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t sub_237FFBD68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = *v4;
  result = sub_237FA4E8C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_237FCECB0();
      result = v19;
      goto LABEL_8;
    }

    sub_237FCD92C(v16, a4 & 1);
    result = sub_237FA4E8C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_238032534();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = v9;
  }

  else
  {
    sub_23801007C(result, a2, a3, v9, v21);
  }

  return result;
}

_OWORD *sub_237FFBE98(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_237FCC410(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_237FCEE18();
      goto LABEL_7;
    }

    sub_237FCDBCC(v13, a3 & 1);
    v19 = sub_237FCC410(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_237FD4F00(a2, v21);
      return sub_2380100C4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_238032534();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_237FC156C(a1, v17);
}

uint64_t sub_237FFBFE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_238010D30(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_237FFC520((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5990(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_237FB5990((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_237FFC520((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_238010D30(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_238010CA4(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_237FFC520(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_237FFC70C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2380324E4() & 1;
  }
}

unint64_t sub_237FFC764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5490;
  if (!qword_27DEE5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5490);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237FFC938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.User(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for _DeviceActivityData.User(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8);
  v6 = *(v5 + 80);
  v7 = (((v4 + 199) & 0xFFFFFFFFFFFFFFF8) + v6 + 56) & ~v6;
  v15 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = v1[8];
  v10 = sub_2380317D4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 136));

  v12 = sub_238031654();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  return MEMORY[0x2821FE8E8](v0, ((v15 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_237FFCCAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_237FFCCF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237FFCDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237FFCE24(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_237FFCE6C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);

  return sub_237FFB864(a1, a2, a3, a4);
}

uint64_t sub_237FFCF30(void *a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.User(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 199) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8);
  v8 = (v6 + *(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_237FF8A80(a1, (v1 + v4), (v1 + v5), (v1 + v6), (v1 + v8), *v9, v9[1]);
}

uint64_t sub_237FFD060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DeviceActivityDataSource.RequestError.errorDescription.getter()
{
  v0 = [objc_opt_self() usageTrackingBundle];
  v1 = sub_2380316F4();

  return v1;
}

uint64_t DeviceActivityDataSource.RequestError.recoverySuggestion.getter()
{
  v0 = [objc_opt_self() usageTrackingBundle];
  v1 = sub_2380316F4();

  return v1;
}

uint64_t DeviceActivityDataSource.RequestError.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

unint64_t sub_237FFD384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE54F8;
  if (!qword_27DEE54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE54F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SegmentInterval(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _SegmentInterval(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void DeviceActivityDataStore.init()(void *a1@<X8>)
{
  v4[3] = &type metadata for DeviceActivityDataLocations;
  v4[4] = &protocol witness table for DeviceActivityDataLocations;
  sub_237FC1C9C(v4, a1);
  v2 = sub_237FFD6A8();
  a1[7] = [objc_opt_self() defaultManager];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  a1[8] = v3;
  a1[5] = v2;
  a1[6] = &off_284AE4AE8;
  _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0();
}

uint64_t sub_237FFD5EC()
{
  result = type metadata accessor for DeviceActivityAuthorization();
  qword_280C36C98 = result;
  return result;
}

uint64_t DeviceActivityDataStore.init(locations:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_237FC1C9C(a1, a2);
  v4 = sub_237FFD6A8();
  a2[7] = [objc_opt_self() defaultManager];
  v5 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  a2[8] = v5;
  a2[5] = v4;
  a2[6] = &off_284AE4AE8;
  return result;
}

unint64_t sub_237FFD6A8()
{
  result = qword_280C356D0;
  if (!qword_280C356D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C356D0);
  }

  return result;
}

void DeviceActivityDataStore.fetchLocal(userAltDSID:segmentInterval:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  v75 = a1;
  v77 = a4;
  v81 = sub_238031994();
  v79 = *(v81 - 8);
  v6 = MEMORY[0x28223BE20](v81);
  v74 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = v67 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v76 = v67 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v67 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v67 - v15;
  v17 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v67 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v67 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v67 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v67 - v30;
  v32 = *a3;
  v84 = MEMORY[0x277D84FA0];
  v33 = DeviceActivityDataStore.localDeviceIdentifier()();
  if (!v34)
  {
    object = v26;
    v70 = v29;
    v67[1] = v20;
    v68 = v14;
    v73 = v32;
    v82 = v4;
    v71 = v23;
    v72 = v31;
    v35 = v79;
    if (v80)
    {
      v67[0] = v33._countAndFlagsBits;
      object = v33._object;
      v36 = v82[3];
      v37 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v36);
      LOBYTE(v83) = v73;
      (*(v37 + 56))(&v83, v36, v37);
      v38 = v70;
      sub_238000CE8(v16, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v70);
      v76 = 0;
      v43 = *(v35 + 8);
      v44 = v81;
      v43(v16, v81);
      sub_237FA509C(v38, v72, type metadata accessor for _DeviceActivityData.Metadata);
      v45 = v71;
      v46 = v82[3];
      v47 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v46);
      LOBYTE(v83) = v73;
      v48 = v46;
      v49 = v68;
      (*(v47 + 120))(v75, v80, v67[0], object, &v83, v48, v47);

      v50 = v76;
      v51 = sub_237FFE2B4();
      v54 = v78;
      if (v50)
      {

        v52 = v44;
        v53 = v43;
        v43(v49, v52);
      }

      else
      {
        v55 = v51;
        v56 = v44;
        v53 = v43;
        v43(v49, v56);
        sub_237FA78D4(v55);
      }
    }

    else
    {

      v39 = v82[3];
      v40 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v39);
      LOBYTE(v83) = v73;
      v41 = v76;
      (*(v40 + 56))(&v83, v39, v40);
      v42 = object;
      sub_238000CE8(v41, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, object);
      v53 = *(v35 + 8);
      v53(v41, v81);
      sub_237FA509C(v42, v72, type metadata accessor for _DeviceActivityData.Metadata);
      v54 = v78;
      v45 = v71;
    }

    v57 = v82[3];
    v58 = v82[4];
    __swift_project_boxed_opaque_existential_1(v82, v57);
    LOBYTE(v83) = v73;
    (*(v58 + 64))(&v83, v57, v58);
    v59 = sub_237FFE2B4();
    sub_237FA78D4(v59);

    v60 = v72;
    sub_237FA4FE0(v72, v45, type metadata accessor for _DeviceActivityData.Metadata);
    v61 = v84;
    v62 = *(v84 + 16);
    if (v62)
    {
      v63 = sub_237FCC224(*(v84 + 16), 0);
      v64 = sub_237FD1008(&v83, v63 + 4, v62, v61);
      sub_237FBDBF0(v83);
      if (v64 == v62)
      {
LABEL_12:
        v65 = v77;
        sub_237FA4FE0(v45, v77, type metadata accessor for _DeviceActivityData.Metadata);
        v83 = v63;

        sub_237FC696C(&v83);

        sub_238011DF0(v45, type metadata accessor for _DeviceActivityData.Metadata);
        v53(v54, v81);
        sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);
        v66 = v83;
        *(v65 + *(type metadata accessor for _DeviceActivityData(0) + 20)) = v66;
        return;
      }

      __break(1u);
    }

    v63 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }
}

uint64_t DeviceActivityDataStore.fetchLocalMetadata(segmentInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  v15 = v10;
  (*(v12 + 56))(&v15, v11, v12);
  sub_238000CE8(v9, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, a2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DeviceActivityDataStore.fetchCloudMetadata(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v7 = v6;
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v15 = v7[3];
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v15);
  v23 = v14;
  (*(v16 + 112))(a1, v19, v20, v21, &v23, v15, v16);
  sub_238000CE8(v13, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v22);
  return (*(v11 + 8))(v13, v10);
}

char *sub_237FFE2B4()
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = v29 - v6;
  v7 = *(v0 + 56);
  v8 = sub_2380318D4();
  v36[0] = 0;
  v9 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:v36];

  v10 = v36[0];
  if (v9)
  {
    v11 = sub_238031F94();
    v12 = v10;

    v13 = *(v11 + 16);
    if (v13)
    {
      v29[0] = v11;
      v29[1] = v1;
      v14 = v3 + 16;
      v15 = *(v3 + 16);
      v16 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v30 = *(v14 + 56);
      v31 = v15;
      v32 = v14;
      v17 = (v14 - 8);
      v7 = MEMORY[0x277D84F90];
      v33 = v2;
      do
      {
        v18 = v34;
        v31(v34, v16, v2);
        v19 = v35;
        sub_2380318E4();
        v20 = *v17;
        (*v17)(v18, v2);
        v21 = sub_2380318B4();
        v23 = v22;
        v20(v19, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_237FB5A94(0, *(v7 + 2) + 1, 1, v7);
        }

        v25 = *(v7 + 2);
        v24 = *(v7 + 3);
        if (v25 >= v24 >> 1)
        {
          v7 = sub_237FB5A94((v24 > 1), v25 + 1, 1, v7);
        }

        *(v7 + 2) = v25 + 1;
        v26 = &v7[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        v16 += v30;
        --v13;
        v2 = v33;
      }

      while (v13);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v27 = v36[0];
    sub_238031864();

    swift_willThrow();
  }

  return v7;
}

uint64_t DeviceActivityDataStore.fetchRemote(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v7 = v6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v10 = type metadata accessor for _DeviceActivityData.Metadata(0);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238031994();
  v36 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *a5;
  v20 = v7[3];
  v19 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v20);
  v43 = v18;
  v21 = *(v19 + 120);
  v35 = a1;
  v21(a1, v38, v39, v40, &v43, v20, v19);
  v22 = v34;
  v23 = sub_237FFE2B4();
  if (v22)
  {

    v34 = 0;
  }

  else
  {
    v34 = v23;
  }

  v24 = *(v36 + 8);
  v24(v17, v12);
  v36 = v12;
  v25 = v7[3];
  v26 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v25);
  v42 = v18;
  (*(v26 + 112))(v35, v38, v39, v40, &v42, v25, v26);
  v27 = v37;
  sub_238000CE8(v15, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v37);
  v24(v15, v36);
  v28 = v33;
  if (v34)
  {
    v29 = v34;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  sub_237FA4FE0(v27, v33, type metadata accessor for _DeviceActivityData.Metadata);
  v41 = v29;

  sub_237FC696C(&v41);

  sub_238011DF0(v27, type metadata accessor for _DeviceActivityData.Metadata);
  v30 = v41;
  result = type metadata accessor for _DeviceActivityData(0);
  *(v28 + *(result + 20)) = v30;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.deleteAllData()()
{
  v1 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0[8];
  [v30 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v6 = sub_238031DB4();
  __swift_project_value_buffer(v6, qword_280C36C80);
  v7 = sub_238031D94();
  v8 = sub_238032104();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_237FA1000, v7, v8, "Deleting all device activity data", v9, 2u);
    MEMORY[0x2383E5E30](v9, -1, -1);
  }

  v10 = v1[7];
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  (*(v12 + 40))(v11, v12);
  sub_238031964();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v14 = sub_238031E74();

  v31 = v2;
  LODWORD(v11) = [v10 fileExistsAtPath_];

  if (v11)
  {
    v15 = v1[3];
    v16 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v15);
    (*(v16 + 40))(v15, v16);
    v17 = sub_2380318D4();
    v29 = v13;
    v13(v5, v31);
    v32[0] = 0;
    LODWORD(v15) = [v10 removeItemAtURL:v17 error:v32];

    v18 = v32[0];
    if (!v15)
    {
      goto LABEL_12;
    }

    v19 = v32[0];
    v13 = v29;
  }

  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  (*(v21 + 80))(v20, v21);
  sub_238031964();
  v13(v5, v31);
  v22 = sub_238031E74();

  LODWORD(v20) = [v10 fileExistsAtPath_];

  if (!v20)
  {
LABEL_11:
    [v30 unlock];
    return;
  }

  v23 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v23);
  (*(v24 + 80))(v23, v24);
  v25 = sub_2380318D4();
  v13(v5, v31);
  v32[0] = 0;
  v26 = [v10 removeItemAtURL:v25 error:v32];

  v18 = v32[0];
  if (v26)
  {
    v27 = v32[0];
    goto LABEL_11;
  }

LABEL_12:
  v28 = v18;
  sub_238031864();

  swift_willThrow();
  [v30 unlock];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.deleteLocalData(deleteDeviceIdentifier:segmentIntervals:)(Swift::Bool deleteDeviceIdentifier, Swift::OpaquePointer segmentIntervals)
{
  v3 = v2;
  rawValue = segmentIntervals._rawValue;
  v96 = deleteDeviceIdentifier;
  v107[1] = *MEMORY[0x277D85DE8];
  v101 = sub_238031994();
  v4 = *(v101 - 8);
  v5 = MEMORY[0x28223BE20](v101);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v92 - v7;
  v8 = v2[8];
  [v8 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v9 = sub_238031DB4();
  v10 = __swift_project_value_buffer(v9, qword_280C36C80);
  v11 = sub_238031D94();
  v12 = sub_238032104();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v8;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_237FA1000, v11, v12, "Deleting all local device activity data", v14, 2u);
    v15 = v14;
    v8 = v13;
    MEMORY[0x2383E5E30](v15, -1, -1);
  }

  v17 = DeviceActivityDataStore.localDeviceIdentifier()();
  if (v18)
  {
    [v8 unlock];
    return;
  }

  object = v17._object;
  v94 = v8;
  v20 = rawValue;
  v21 = *(rawValue + 2);
  v104 = v3;
  v92 = v21;
  if (v21)
  {
    countAndFlagsBits = v17._countAndFlagsBits;
    v93 = v4;
    v23 = rawValue + 32;
    v16._countAndFlagsBits = 136315138;
    v98 = v16;
    v16._countAndFlagsBits = 136315394;
    v100 = v16;
    v24 = v21;
    v102 = v10;
    v103 = v17._object;
    v105 = v17._countAndFlagsBits;
    while (1)
    {
      while (1)
      {
        v26 = *v23++;
        v25 = v26;
        LOBYTE(v107[0]) = v26;
        v27._countAndFlagsBits = countAndFlagsBits;
        v27._object = object;
        DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)(v27, v107);
        if (!v28)
        {
          break;
        }

        v29 = v28;
        v30 = sub_238031D94();
        v31 = sub_238032114();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v107[0] = v33;
          *v32 = v100._countAndFlagsBits;
          v34 = 0x796C6B656557;
          if (v25 == 1)
          {
            v34 = 0x796C696144;
          }

          v35 = 0xE500000000000000;
          if (v25 != 1)
          {
            v35 = 0xE600000000000000;
          }

          if (v25)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0x796C72756F48;
          }

          if (v25)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0xE600000000000000;
          }

          v38 = sub_237FDF8EC(v36, v37, v107);

          *(v32 + 4) = v38;
          *(v32 + 12) = 2082;
          v106 = v28;
          v39 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
          v40 = sub_238031EB4();
          v42 = sub_237FDF8EC(v40, v41, v107);

          *(v32 + 14) = v42;
          _os_log_impl(&dword_237FA1000, v30, v31, "Failed to delete synced local %s data: %{public}s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2383E5E30](v33, -1, -1);
          MEMORY[0x2383E5E30](v32, -1, -1);

LABEL_36:
          object = v103;
          v3 = v104;
          goto LABEL_10;
        }

LABEL_10:
        countAndFlagsBits = v105;
        if (!--v24)
        {
          goto LABEL_38;
        }
      }

      v43 = sub_238031D94();
      v44 = sub_238032104();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v107[0] = v46;
        *v45 = v98._countAndFlagsBits;
        v47 = 0x796C6B656557;
        if (v25 == 1)
        {
          v47 = 0x796C696144;
        }

        v48 = 0xE500000000000000;
        if (v25 != 1)
        {
          v48 = 0xE600000000000000;
        }

        if (v25)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0x796C72756F48;
        }

        if (v25)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0xE600000000000000;
        }

        v51 = sub_237FDF8EC(v49, v50, v107);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_237FA1000, v43, v44, "Deleted all remote device activity data for %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x2383E5E30](v46, -1, -1);
        MEMORY[0x2383E5E30](v45, -1, -1);

        goto LABEL_36;
      }

      object = v103;
      if (!--v24)
      {
LABEL_38:

        v4 = v93;
        v20 = rawValue;
        goto LABEL_40;
      }
    }
  }

LABEL_40:
  v52 = v3[7];
  v53 = v3[3];
  v54 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v53);
  v55 = v99;
  (*(v54 + 40))(v53, v54);
  sub_238031964();
  v103 = *(v4 + 8);
  (v103)(v55, v101);
  v56 = sub_238031E74();

  v105 = v52;
  v57 = [v52 fileExistsAtPath_];

  if (v57)
  {
    v106 = &unk_284AE5B08;
    v107[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5500, &qword_238035F40);
    v58 = sub_2380113A4();
    sub_238011408(v58, v59, v60);
    if (sub_2380320C4())
    {
      v61 = v3[3];
      v62 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v61);
      v63 = v99;
      (*(v62 + 40))(v61, v62);
      v64 = sub_2380318D4();
      (v103)(v63, v101);
      v107[0] = 0;
      v65 = [v105 removeItemAtURL:v64 error:v107];

      v66 = v107[0];
      if (!v65)
      {
LABEL_54:
        v90 = v66;
        sub_238031864();

        swift_willThrow();
        goto LABEL_55;
      }

      v67 = v107[0];
    }

    else
    {
      v68 = v92;
      if (v92)
      {
        v69 = (v20 + 32);
        v70 = v95;
        do
        {
          v71 = *v69++;
          v72 = v104[3];
          v73 = v104[4];
          __swift_project_boxed_opaque_existential_1(v104, v72);
          LOBYTE(v107[0]) = v71;
          (*(v73 + 64))(v107, v72, v73);
          sub_238031964();
          v74 = sub_238031E74();

          LODWORD(v72) = [v105 fileExistsAtPath_];

          if (v72)
          {
            v75 = sub_2380318D4();
            v107[0] = 0;
            v76 = [v105 removeItemAtURL:v75 error:v107];

            if (!v76)
            {
              v91 = v107[0];
              sub_238031864();

              swift_willThrow();
              (v103)(v70, v101);
              goto LABEL_55;
            }

            v77 = v107[0];
          }

          (v103)(v70, v101);
          --v68;
        }

        while (v68);
      }
    }
  }

  v78 = v104;
  if (v96)
  {
    v79 = v104[3];
    v80 = v104[4];
    __swift_project_boxed_opaque_existential_1(v104, v79);
    v81 = v99;
    (*(v80 + 16))(v79, v80);
    sub_238031954();
    (v103)(v81, v101);
    v82 = sub_238031E74();

    v83 = [v105 fileExistsAtPath_];

    if (v83)
    {
      v84 = v78[3];
      v85 = v78[4];
      __swift_project_boxed_opaque_existential_1(v78, v84);
      v86 = v99;
      (*(v85 + 16))(v84, v85);
      v87 = sub_2380318D4();
      (v103)(v86, v101);
      v107[0] = 0;
      v88 = [v105 removeItemAtURL:v87 error:v107];

      v66 = v107[0];
      if (v88)
      {
        v89 = v107[0];
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

LABEL_55:
  [v94 unlock];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)(Swift::String deviceIdentifier, DeviceActivity::_SegmentInterval segmentInterval)
{
  v153 = deviceIdentifier;
  v3 = segmentInterval;
  v156 = *MEMORY[0x277D85DE8];
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v151 = v4;
  v152 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v136[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v136[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v136[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v136[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v136[-v21];
  v23 = *v3;
  v24 = v154;
  v25 = DeviceActivityDataStore.deviceIdentifiersByUserAltDSID()();
  v154 = v24;
  if (!v24)
  {
    v26 = v25;
    LODWORD(v147) = v23;
    v148 = v20;
    v149 = v2;
    v144 = v11;
    v145 = v14;
    v143 = v8;
    v146 = v17;
    v150 = v22;
    v27 = v25 + 8;
    v28 = 1 << *(v25 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v25[8];
    v31 = (v28 + 63) >> 6;

    v33 = 0;
    if (v30)
    {
      while (1)
      {
        v34 = v33;
LABEL_9:
        v22 = v136;
        v35 = __clz(__rbit64(v30)) | (v34 << 6);
        v36 = v26[6] + 16 * v35;
        v8 = *v36;
        v20 = *(v36 + 8);
        v17 = *(v26[7] + 8 * v35);
        v155 = v153;
        MEMORY[0x28223BE20](v32);
        *&v136[-16] = &v155;

        v37 = v154;
        v38 = sub_237FDEE8C(sub_23801145C, &v136[-32], v17);
        v154 = v37;
        if (v38)
        {
          break;
        }

        v30 &= v30 - 1;

        v33 = v34;
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      v44 = v149;
      v142 = v149[8];
      [v142 lock];
      v46 = v44[3];
      v45 = v44[4];
      __swift_project_boxed_opaque_existential_1(v44, v46);
      LOBYTE(v155._countAndFlagsBits) = v147;
      v47 = *(v45 + 104);
      v48 = v150;
      v147 = v8;
      v47(v8, v20, v153._countAndFlagsBits, v153._object, &v155, v46, v45);
      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v49 = sub_238031DB4();
      v50 = __swift_project_value_buffer(v49, qword_280C36C80);
      v22 = v151;
      v51 = v152;
      v52 = v148;
      v139 = *(v152 + 16);
      v140 = v152 + 16;
      v139(v148, v48, v151);
      v141 = v50;
      v53 = sub_238031D94();
      v54 = sub_238032104();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v155._countAndFlagsBits = v138;
        *v55 = 136446210;
        sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v137 = v54;
        v56 = sub_2380324C4();
        v58 = v57;
        v148 = *(v51 + 8);
        v148(v52, v22);
        v59 = sub_237FDF8EC(v56, v58, &v155._countAndFlagsBits);

        v60 = v55;
        v48 = v150;
        *(v60 + 1) = v59;
        v61 = v60;
        _os_log_impl(&dword_237FA1000, v53, v137, "Deleting data from %{public}s", v60, 0xCu);
        v62 = v138;
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        MEMORY[0x2383E5E30](v62, -1, -1);
        MEMORY[0x2383E5E30](v61, -1, -1);
      }

      else
      {

        v148 = *(v51 + 8);
        v148(v52, v22);
      }

      v8 = v44[7];
      v63 = sub_2380318D4();
      v155._countAndFlagsBits = 0;
      v64 = [v8 removeItemAtURL:v63 error:&v155];

      countAndFlagsBits = v155._countAndFlagsBits;
      if (!v64)
      {
        v80 = v155._countAndFlagsBits;

        v81 = sub_238031864();

        v154 = v81;
        swift_willThrow();
        v148(v48, v22);
LABEL_37:
        [v142 unlock];
        return;
      }

      v66 = v44[3];
      v67 = v44[4];
      v138 = __swift_project_boxed_opaque_existential_1(v44, v66);
      v68 = *(v67 + 96);
      v69 = countAndFlagsBits;
      v70 = v66;
      v17 = v146;
      v68(v147, v20, v153._countAndFlagsBits, v153._object, v70, v67);
      v71 = sub_2380318D4();
      v155._countAndFlagsBits = 0;
      v72 = [v8 contentsOfDirectoryAtURL:v71 includingPropertiesForKeys:0 options:0 error:&v155];

      v73 = v155._countAndFlagsBits;
      if (!v72)
      {
        v82 = v155._countAndFlagsBits;

        v83 = sub_238031864();

        v154 = v83;
        swift_willThrow();
        v84 = v148;
        v148(v17, v22);
        v85 = v48;
        v86 = v22;
LABEL_26:
        v84(v85, v86);
        goto LABEL_37;
      }

      v74 = sub_238031F94();
      v75 = v73;

      v76 = *(v74 + 16);

      v77 = v142;
      if (v76)
      {

        v78 = v22;
LABEL_23:
        v79 = v148;
        v148(v17, v78);
        v79(v150, v78);
        [v77 unlock];
        return;
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v31)
        {

          sub_237FAC9F0(v39, v40, v41);
          v42 = swift_allocError();
          *v43 = 0;
          v154 = v42;
          swift_willThrow();
          return;
        }

        v30 = v27[v34];
        ++v33;
        if (v30)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    v153._object = v8;
    v87 = v145;
    v139(v145, v17, v22);
    v88 = sub_238031D94();
    v89 = sub_238032104();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v155._countAndFlagsBits = v91;
      *v90 = 136446210;
      sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v92 = sub_2380324C4();
      v94 = v93;
      v148(v87, v22);
      v95 = sub_237FDF8EC(v92, v94, &v155._countAndFlagsBits);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_237FA1000, v88, v89, "Deleting device from %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x2383E5E30](v91, -1, -1);
      MEMORY[0x2383E5E30](v90, -1, -1);
    }

    else
    {

      v148(v87, v22);
    }

    v96 = v150;
    v97 = v146;
    v98 = sub_2380318D4();
    v155._countAndFlagsBits = 0;
    object = v153._object;
    v100 = [v153._object removeItemAtURL:v98 error:&v155];

    v101 = v155._countAndFlagsBits;
    if (!v100)
    {
      v113 = v155._countAndFlagsBits;

      v114 = sub_238031864();

      v154 = v114;
      swift_willThrow();
      v115 = v97;
      v116 = v151;
      v117 = v148;
      v148(v115, v151);
      v117(v96, v116);
      goto LABEL_37;
    }

    v102 = v149[3];
    v103 = v149[4];
    __swift_project_boxed_opaque_existential_1(v149, v102);
    v104 = *(v103 + 88);
    v105 = v101;
    v106 = v144;
    v104(v147, v20, v102, v103);

    v107 = sub_2380318D4();
    v155._countAndFlagsBits = 0;
    v108 = [object contentsOfDirectoryAtURL:v107 includingPropertiesForKeys:0 options:0 error:&v155];

    v109 = v155._countAndFlagsBits;
    if (!v108)
    {
      v118 = v155._countAndFlagsBits;
      v119 = sub_238031864();

      v154 = v119;
      swift_willThrow();
      v120 = v151;
      v121 = v148;
      v148(v106, v151);
      v121(v146, v120);
      v121(v150, v120);
      goto LABEL_37;
    }

    v78 = v151;
    v110 = sub_238031F94();
    v111 = v109;

    v112 = *(v110 + 16);

    if (v112)
    {
      v148(v106, v78);
LABEL_43:
      v17 = v146;
      v77 = v142;
      goto LABEL_23;
    }

    v122 = v143;
    v139(v143, v106, v78);
    v123 = sub_238031D94();
    v124 = sub_238032104();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v155._countAndFlagsBits = v126;
      *v125 = 136446210;
      sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v127 = sub_2380324C4();
      v129 = v128;
      v148(v122, v151);
      v130 = sub_237FDF8EC(v127, v129, &v155._countAndFlagsBits);
      v78 = v151;

      *(v125 + 4) = v130;
      _os_log_impl(&dword_237FA1000, v123, v124, "Deleting user from %{public}s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      MEMORY[0x2383E5E30](v126, -1, -1);
      MEMORY[0x2383E5E30](v125, -1, -1);
    }

    else
    {

      v148(v122, v78);
    }

    v131 = sub_2380318D4();
    v155._countAndFlagsBits = 0;
    v132 = [v153._object removeItemAtURL:v131 error:&v155];

    if (v132)
    {
      v133 = v155._countAndFlagsBits;
      v148(v106, v78);
      goto LABEL_43;
    }

    v134 = v155._countAndFlagsBits;
    v135 = sub_238031864();

    v154 = v135;
    swift_willThrow();
    v84 = v148;
    v148(v106, v78);
    v84(v146, v78);
    v85 = v150;
    v86 = v78;
    goto LABEL_26;
  }
}

void *DeviceActivityDataStore.deviceIdentifiersByUserAltDSID()()
{
  v101 = *MEMORY[0x277D85DE8];
  v83 = sub_238031744();
  v99 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v2 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v11 = v0[8];
  [v11 lock];
  v12 = v0[7];
  v13 = v0[3];
  v14 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v13);
  (*(v14 + 80))(v13, v14);
  v15 = sub_2380318D4();
  v84 = v4;
  v94 = *(v4 + 8);
  v95 = v4 + 8;
  v94(v10, v3);
  v100 = 0;
  v77 = v12;
  v16 = [v12 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:&v100];

  v17 = v100;
  if (!v16)
  {
    v70 = v100;
    sub_238031864();

    swift_willThrow();
    return [v11 unlock];
  }

  v18 = sub_238031F94();
  v19 = v17;

  v82 = *(v18 + 16);
  v20 = v11;
  if (!v82)
  {

    v21 = 0;
    v99 = MEMORY[0x277D84F98];
LABEL_35:
    [v20 unlock];
    sub_23801147C(v21, 0);
    return v99;
  }

  v21 = 0;
  v22 = 0;
  v81 = *MEMORY[0x277CBE868];
  v74 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v80 = v18 + v74;
  v93 = v84 + 16;
  v23 = MEMORY[0x277D84F98];
  v78 = (v99 + 1);
  v79 = xmmword_238035770;
  v76 = v11;
  v87 = v2;
  v75 = v18;
  while (1)
  {
    if (v22 >= *(v18 + 16))
    {
      goto LABEL_40;
    }

    v99 = v23;
    v24 = *(v84 + 72);
    v85 = v22;
    v25 = *(v84 + 16);
    v91 = v24;
    v92 = v25;
    v25(v96, v80 + v24 * v22, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5518, &qword_2380359D0);
    inited = swift_initStackObject();
    *(inited + 16) = v79;
    v27 = v81;
    *(inited + 32) = v81;
    v28 = v27;
    sub_238010EC4(inited);
    swift_setDeallocating();
    sub_238011DF0(inited + 32, type metadata accessor for URLResourceKey);
    v29 = v86;
    sub_2380318A4();
    if (v29)
    {
      v94(v96, v3);

      [v20 unlock];
      return sub_23801147C(v21, 0);
    }

    v86 = 0;

    v30 = sub_238031704();
    (*v78)(v2, v83);
    if (v30 == 2 || (v30 & 1) == 0)
    {
      goto LABEL_5;
    }

    v31 = sub_2380318D4();
    v100 = 0;
    v32 = [v77 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:0 options:0 error:&v100];

    v33 = v100;
    if (!v32)
    {
      v72 = v100;

      sub_238031864();

      swift_willThrow();
      v94(v96, v3);
      [v20 unlock];
      return sub_23801147C(v21, 0);
    }

    v34 = sub_238031F94();
    v35 = v33;

    v36 = v34;
    v90 = *(v34 + 16);
    if (v90)
    {
      break;
    }

LABEL_4:

    v20 = v76;
    v18 = v75;
LABEL_5:
    v22 = v85 + 1;
    v94(v96, v3);
    v23 = v99;
    if (v22 == v82)
    {

      goto LABEL_35;
    }
  }

  v37 = 0;
  v38 = v34 + v74;
  v88 = v34;
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v39 = v89;
    v92(v89, v38, v3);
    v40 = sub_2380318B4();
    v42 = v41;
    v43 = sub_2380318B4();
    v97 = v44;
    v98 = v43;
    v45 = v3;
    v94(v39, v3);
    sub_23801147C(v21, 0);
    v46 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v46;
    v49 = sub_237FA4E8C(v40, v42);
    v50 = v46[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_38;
    }

    v53 = v48;
    if (v46[3] < v52)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v56 = v100;
      if ((v48 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_237FCE9B0();
      v56 = v100;
      if ((v53 & 1) == 0)
      {
LABEL_18:
        v56[(v49 >> 6) + 8] |= 1 << v49;
        v57 = (v56[6] + 16 * v49);
        *v57 = v40;
        v57[1] = v42;
        *(v56[7] + 8 * v49) = MEMORY[0x277D84F90];
        v58 = v56[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_39;
        }

        v56[2] = v60;
        goto LABEL_23;
      }
    }

LABEL_22:
    v61 = v56;

    v56 = v61;
LABEL_23:
    v99 = v56;
    v62 = v56[7];
    v63 = *(v62 + 8 * v49);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v62 + 8 * v49) = v63;
    v3 = v45;
    if ((v64 & 1) == 0)
    {
      v63 = sub_237FB5A94(0, *(v63 + 2) + 1, 1, v63);
      *(v62 + 8 * v49) = v63;
    }

    v65 = v98;
    v67 = *(v63 + 2);
    v66 = *(v63 + 3);
    if (v67 >= v66 >> 1)
    {
      v63 = sub_237FB5A94((v66 > 1), v67 + 1, 1, v63);
      *(v62 + 8 * v49) = v63;
    }

    ++v37;
    *(v63 + 2) = v67 + 1;
    v68 = &v63[16 * v67];
    v69 = v97;
    *(v68 + 4) = v65;
    *(v68 + 5) = v69;
    v38 += v91;
    v21 = sub_238009D58;
    v2 = v87;
    v36 = v88;
    if (v90 == v37)
    {
      goto LABEL_4;
    }
  }

  sub_237FCD3A4(v52, isUniquelyReferenced_nonNull_native);
  v54 = sub_237FA4E8C(v40, v42);
  if ((v53 & 1) == (v55 & 1))
  {
    v49 = v54;
    v56 = v100;
    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  result = sub_238032534();
  __break(1u);
  return result;
}

id sub_238000CE8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v45 = a5;
  v8 = a2(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_238031994();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v5;
  v15 = *(v5 + 64);
  [v15 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v16 = sub_238031DB4();
  __swift_project_value_buffer(v16, qword_280C36C80);
  v17 = *(v12 + 16);
  v50 = a1;
  v17(v14, a1, v11);
  v18 = sub_238031D94();
  v19 = sub_2380320E4();
  v20 = os_log_type_enabled(v18, v19);
  v46 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v44 = a4;
    v22 = v21;
    v43 = swift_slowAlloc();
    v51 = v43;
    *v22 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_2380324C4();
    v24 = v15;
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    v27 = sub_237FDF8EC(v23, v26, &v51);
    v15 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_237FA1000, v18, v19, "Reading object from URL %{public}s", v22, 0xCu);
    v28 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x2383E5E30](v28, -1, -1);
    v29 = v22;
    a4 = v44;
    MEMORY[0x2383E5E30](v29, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v30 = *(v49 + 56);
  sub_238031964();
  v31 = sub_238031E74();

  LODWORD(v30) = [v30 fileExistsAtPath_];

  if (v30)
  {
    v35 = v48;
    v36 = sub_2380319A4();
    if (!v35)
    {
      v38 = v46;
      v39 = v36;
      v40 = v37;
      v47();
      sub_237FA5048(v39, v40);
      sub_237FA509C(v38, v45, a4);
    }
  }

  else
  {
    sub_237FAC9F0(v32, v33, v34);
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
  }

  return [v15 unlock];
}

id sub_2380010BC(uint64_t a1)
{
  v3 = v2;
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  v9 = *(v1 + 64);
  [v9 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v10 = sub_238031DB4();
  __swift_project_value_buffer(v10, qword_280C36C80);
  v11 = *(v6 + 16);
  v38 = a1;
  v11(v8, a1, v5);
  v12 = sub_238031D94();
  v13 = sub_2380320E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v2;
    v15 = v14;
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_2380324C4();
    v17 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_237FDF8EC(v16, v19, &v39);
    v9 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_237FA1000, v12, v13, "Reading object from URL %{public}s", v15, 0xCu);
    v21 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2383E5E30](v21, -1, -1);
    v22 = v15;
    v3 = v36;
    MEMORY[0x2383E5E30](v22, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v23 = *(v37 + 56);
  sub_238031964();
  v24 = sub_238031E74();

  v25 = [v23 fileExistsAtPath_];

  if (!v25)
  {
    sub_237FAC9F0(v26, v27, v28);
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v29 = sub_2380319A4();
  if (v3)
  {
LABEL_10:
    [v9 unlock];
    return v25;
  }

  v31 = v29;
  v32 = v30;
  v25 = sub_23800D06C(v29, v30);
  sub_237FA5048(v31, v32);
  [v9 unlock];
  return v25;
}

id sub_238001444@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v6 = a3;
  v7 = a2;
  v44 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_238031994();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v50 = *(v5 + 64);
  [v50 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v16 = sub_238031DB4();
  __swift_project_value_buffer(v16, qword_280C36C80);
  v17 = *(v13 + 16);
  v49 = a1;
  v17(v15, a1, v12);
  v18 = sub_238031D94();
  v19 = sub_2380320E4();
  v20 = os_log_type_enabled(v18, v19);
  v45 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v6;
    v51 = v42;
    *v21 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_2380324C4();
    v23 = v7;
    v25 = v24;
    (*(v13 + 8))(v15, v12);
    v26 = sub_237FDF8EC(v22, v25, &v51);
    v7 = v23;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_237FA1000, v18, v19, "Reading object from URL %{public}s", v21, 0xCu);
    v27 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v6 = v43;
    MEMORY[0x2383E5E30](v27, -1, -1);
    MEMORY[0x2383E5E30](v21, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v28 = *(v48 + 56);
  sub_238031964();
  v29 = sub_238031E74();

  LODWORD(v28) = [v28 fileExistsAtPath_];

  if (v28)
  {
    v33 = v47;
    v34 = sub_2380319A4();
    if (!v33)
    {
      v36 = v45;
      v37 = v34;
      v38 = v35;
      v46();
      sub_237FA5048(v37, v38);
      sub_237FA5AE0(v36, v44, v7, v6);
    }
  }

  else
  {
    sub_237FAC9F0(v30, v31, v32);
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }

  return [v50 unlock];
}

id sub_23800181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v5 = a2;
  v41 = a4;
  v40 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238031994();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4;
  v47 = *(v4 + 64);
  [v47 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v13 = sub_238031DB4();
  __swift_project_value_buffer(v13, qword_280C36C80);
  v14 = *(v10 + 16);
  v46 = a1;
  v14(v12, a1, v9);
  v15 = sub_238031D94();
  v16 = sub_2380320E4();
  v17 = os_log_type_enabled(v15, v16);
  v42 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v18 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_2380324C4();
    v20 = v5;
    v22 = v21;
    (*(v10 + 8))(v12, v9);
    v23 = sub_237FDF8EC(v19, v22, &v48);
    v5 = v20;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_237FA1000, v15, v16, "Reading object from URL %{public}s", v18, 0xCu);
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x2383E5E30](v24, -1, -1);
    MEMORY[0x2383E5E30](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v25 = *(v45 + 56);
  sub_238031964();
  v26 = sub_238031E74();

  LODWORD(v25) = [v25 fileExistsAtPath_];

  if (v25)
  {
    v30 = v44;
    v31 = sub_2380319A4();
    if (!v30)
    {
      v33 = v42;
      v34 = v31;
      v35 = v32;
      static DeviceActivityDataStore.decode<A>(_:)(v5, v43, v42);
      sub_237FA5048(v34, v35);
      (*(v40 + 32))(v41, v33, v5);
    }
  }

  else
  {
    sub_237FAC9F0(v27, v28, v29);
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  return [v47 unlock];
}

uint64_t DeviceActivityDataStore.fetchLocalEncodedMetadata(segmentInterval:)(char *a1)
{
  v2 = v1;
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = v2[3];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v12);
  v33 = v11;
  (*(v13 + 56))(&v33, v12, v13);
  v31 = v2[8];
  [v31 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C80);
  (*(v5 + 16))(v8, v10, v4);
  v15 = sub_238031D94();
  v16 = sub_2380320E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v18 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_2380324C4();
    v20 = v4;
    v22 = v21;
    v23 = *(v30 + 8);
    v23(v8, v20);
    v24 = sub_237FDF8EC(v19, v22, &v32);
    v4 = v20;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_237FA1000, v15, v16, "Reading encoded data from URL %{public}s", v18, 0xCu);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x2383E5E30](v25, -1, -1);
    MEMORY[0x2383E5E30](v18, -1, -1);
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v8, v4);
  }

  v26 = sub_2380319A4();
  [v31 unlock];
  v23(v10, v4);
  return v26;
}

uint64_t DeviceActivityDataStore.saveLocalMetadata(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5520, &qword_2380359D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v15 = sub_238031994();
  v14 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v9 = *(a1 + *(v8 + 32));
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v16 = v9;
  (*(v10 + 56))(&v16, v11, v10);
  sub_237FA4FE0(a1, v5, type metadata accessor for _DeviceActivityData.Metadata);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_238002614(v5, v7);
  sub_237FA5750(v5, &qword_27DEE5520, &qword_2380359D8);
  return (*(v14 + 8))(v7, v15);
}

id sub_23800217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v49 = a1;
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v50 = *(v3 + 64);
  v51 = v3;
  [v50 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C80);
  (*(v9 + 16))(v13, a3, v8);
  v15 = sub_238031D94();
  v16 = sub_2380320E4();
  v17 = os_log_type_enabled(v15, v16);
  v48 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v45 = v4;
    v19 = v18;
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v19 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = sub_2380324C4();
    v21 = v8;
    v22 = a2;
    v24 = v23;
    v46 = *(v9 + 8);
    v46(v13, v21);
    v25 = sub_237FDF8EC(v20, v24, v52);
    a2 = v22;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_237FA1000, v15, v16, "Writing object to URL %{public}s", v19, 0xCu);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x2383E5E30](v26, -1, -1);
    v27 = v19;
    v5 = v45;
    MEMORY[0x2383E5E30](v27, -1, -1);
  }

  else
  {

    v46 = *(v9 + 8);
    v46(v13, v8);
  }

  v28 = *(v51 + 56);
  sub_238031964();
  v29 = sub_238031E74();

  v30 = [v28 fileExistsAtPath_];

  if (!a2)
  {
    if ((v30 & 1) == 0)
    {
      return [v50 unlock];
    }

    v39 = sub_2380318D4();
    v52[0] = 0;
    v40 = [v28 removeItemAtURL:v39 error:v52];

    v34 = v52[0];
    if (v40)
    {
      v41 = v52[0];
      return [v50 unlock];
    }

    goto LABEL_15;
  }

  sub_23800D5D0();
  if (!v5)
  {
    if (v30)
    {
LABEL_11:
      v36 = sub_23800D9F4(v49, a2);
      v38 = v37;
      sub_2380319C4();
      sub_237FA5048(v36, v38);
      return [v50 unlock];
    }

    v31 = v47;
    sub_238031914();
    v32 = sub_2380318D4();
    v46(v31, v48);
    v52[0] = 0;
    v33 = [v28 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v52];

    v34 = v52[0];
    if (v33)
    {
      v35 = v52[0];
      goto LABEL_11;
    }

LABEL_15:
    v42 = v34;
    sub_238031864();

    swift_willThrow();
  }

  return [v50 unlock];
}

id sub_238002614(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v61[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5520, &qword_2380359D8);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v49 - v8;
  v9 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238031994();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v59 = v2;
  v57 = *(v2 + 64);
  [v57 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v17 = sub_238031DB4();
  __swift_project_value_buffer(v17, qword_280C36C80);
  (*(v12 + 16))(v16, a2, v11);
  v18 = sub_238031D94();
  v19 = sub_2380320E4();
  v20 = os_log_type_enabled(v18, v19);
  v53 = v12;
  v54 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v50 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v3;
    v49 = v23;
    v61[0] = v23;
    *v22 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v24 = sub_2380324C4();
    v26 = v25;
    v27 = *(v12 + 8);
    v27(v16, v11);
    v28 = sub_237FDF8EC(v24, v26, v61);

    *(v22 + 4) = v28;
    v29 = v19;
    v30 = v27;
    _os_log_impl(&dword_237FA1000, v18, v29, "Writing object to URL %{public}s", v22, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v4 = v51;
    MEMORY[0x2383E5E30](v31, -1, -1);
    v32 = v22;
    a1 = v50;
    MEMORY[0x2383E5E30](v32, -1, -1);
  }

  else
  {

    v30 = *(v12 + 8);
    v30(v16, v11);
  }

  v33 = *(v59 + 56);
  sub_238031964();
  v34 = sub_238031E74();

  v35 = [v33 fileExistsAtPath_];

  v36 = v58;
  sub_237FA90E4(a1, v58, &qword_27DEE5520, &qword_2380359D8);
  if ((*(v55 + 48))(v36, 1, v56) != 1)
  {
    sub_237FA509C(v36, v60, type metadata accessor for _DeviceActivityData.Metadata);
    sub_23800D5D0();
    if (!v4)
    {
      if (v35)
      {
LABEL_14:
        v43 = sub_23800DB5C(v60);
        v45 = v44;
        sub_2380319C4();
        sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);
        sub_237FA5048(v43, v45);
        return [v57 unlock];
      }

      v40 = v52;
      sub_238031914();
      v41 = sub_2380318D4();
      v30(v40, v54);
      v61[0] = 0;
      LOBYTE(v40) = [v33 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v61];

      if (v40)
      {
        v42 = v61[0];
        goto LABEL_14;
      }

      v47 = v61[0];
      sub_238031864();

      swift_willThrow();
    }

    sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);
    return [v57 unlock];
  }

  sub_237FA5750(v36, &qword_27DEE5520, &qword_2380359D8);
  if (v35)
  {
    v37 = sub_2380318D4();
    v61[0] = 0;
    v38 = [v33 removeItemAtURL:v37 error:v61];

    if (v38)
    {
      v39 = v61[0];
    }

    else
    {
      v46 = v61[0];
      sub_238031864();

      swift_willThrow();
    }
  }

  return [v57 unlock];
}

id sub_238002C34(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v61[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v49 - v8;
  v9 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238031994();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v59 = v2;
  v57 = *(v2 + 64);
  [v57 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v17 = sub_238031DB4();
  __swift_project_value_buffer(v17, qword_280C36C80);
  (*(v12 + 16))(v16, a2, v11);
  v18 = sub_238031D94();
  v19 = sub_2380320E4();
  v20 = os_log_type_enabled(v18, v19);
  v53 = v12;
  v54 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v50 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v3;
    v49 = v23;
    v61[0] = v23;
    *v22 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v24 = sub_2380324C4();
    v26 = v25;
    v27 = *(v12 + 8);
    v27(v16, v11);
    v28 = sub_237FDF8EC(v24, v26, v61);

    *(v22 + 4) = v28;
    v29 = v19;
    v30 = v27;
    _os_log_impl(&dword_237FA1000, v18, v29, "Writing object to URL %{public}s", v22, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v4 = v51;
    MEMORY[0x2383E5E30](v31, -1, -1);
    v32 = v22;
    a1 = v50;
    MEMORY[0x2383E5E30](v32, -1, -1);
  }

  else
  {

    v30 = *(v12 + 8);
    v30(v16, v11);
  }

  v33 = *(v59 + 56);
  sub_238031964();
  v34 = sub_238031E74();

  v35 = [v33 fileExistsAtPath_];

  v36 = v58;
  sub_237FA90E4(a1, v58, &qword_27DEE54A8, &qword_2380359E0);
  if ((*(v55 + 48))(v36, 1, v56) != 1)
  {
    sub_237FA509C(v36, v60, type metadata accessor for _DeviceActivityData.ActivitySegment);
    sub_23800D5D0();
    if (!v4)
    {
      if (v35)
      {
LABEL_14:
        v43 = sub_23800DD30(v60);
        v45 = v44;
        sub_2380319C4();
        sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.ActivitySegment);
        sub_237FA5048(v43, v45);
        return [v57 unlock];
      }

      v40 = v52;
      sub_238031914();
      v41 = sub_2380318D4();
      v30(v40, v54);
      v61[0] = 0;
      LOBYTE(v40) = [v33 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v61];

      if (v40)
      {
        v42 = v61[0];
        goto LABEL_14;
      }

      v47 = v61[0];
      sub_238031864();

      swift_willThrow();
    }

    sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.ActivitySegment);
    return [v57 unlock];
  }

  sub_237FA5750(v36, &qword_27DEE54A8, &qword_2380359E0);
  if (v35)
  {
    v37 = sub_2380318D4();
    v61[0] = 0;
    v38 = [v33 removeItemAtURL:v37 error:v61];

    if (v38)
    {
      v39 = v61[0];
    }

    else
    {
      v46 = v61[0];
      sub_238031864();

      swift_willThrow();
    }
  }

  return [v57 unlock];
}

id sub_238003254(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v4;
  v49 = a3;
  v46 = a2;
  v44 = a1;
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v47 = v3;
  v45 = *(v3 + 64);
  [v45 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v12 = sub_238031DB4();
  __swift_project_value_buffer(v12, qword_280C36C80);
  (*(v7 + 16))(v11, v49, v6);
  v13 = sub_238031D94();
  v14 = sub_2380320E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v48 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v50[0] = v17;
    *v16 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_2380324C4();
    v21 = v20;
    v42 = *(v7 + 8);
    v42(v11, v48);
    v22 = sub_237FDF8EC(v19, v21, v50);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_237FA1000, v13, v14, "Writing object to URL %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v5 = v41;
    MEMORY[0x2383E5E30](v18, -1, -1);
    v23 = v16;
    v6 = v48;
    MEMORY[0x2383E5E30](v23, -1, -1);
  }

  else
  {

    v42 = *(v7 + 8);
    v42(v11, v6);
  }

  v24 = *(v47 + 56);
  sub_238031964();
  v25 = sub_238031E74();

  v26 = [v24 fileExistsAtPath_];

  if ((v46 & 1) == 0)
  {
    sub_23800D5D0();
    if (v5)
    {
      return [v45 unlock];
    }

    if ((v26 & 1) == 0)
    {
      v31 = v43;
      sub_238031914();
      v32 = sub_2380318D4();
      v42(v31, v6);
      v50[0] = 0;
      v33 = [v24 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v50];

      v29 = v50[0];
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

      v34 = v50[0];
    }

    v35 = sub_23800E0F4(v44);
    v37 = v36;
    sub_2380319C4();
    sub_237FA5048(v35, v37);
    return [v45 unlock];
  }

  if (v26)
  {
    v27 = sub_2380318D4();
    v50[0] = 0;
    v28 = [v24 removeItemAtURL:v27 error:v50];

    v29 = v50[0];
    if (v28)
    {
      v30 = v50[0];
      return [v45 unlock];
    }

LABEL_15:
    v38 = v29;
    sub_238031864();

    swift_willThrow();
  }

  return [v45 unlock];
}

id sub_2380036E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v68 = a6;
  v69 = a1;
  v8 = v6;
  v78[1] = *MEMORY[0x277D85DE8];
  v70 = a3;
  v71 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = a5(0);
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v62 - v15;
  v16 = sub_238031994();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v72 = *(v6 + 64);
  [v72 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v22 = sub_238031DB4();
  __swift_project_value_buffer(v22, qword_280C36C80);
  v23 = *(v17 + 16);
  v74 = a2;
  v23(v21, a2, v16);
  v24 = sub_238031D94();
  v25 = sub_2380320E4();
  v26 = os_log_type_enabled(v24, v25);
  v66 = v17;
  v67 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v63 = v6;
    v28 = v17;
    v29 = v27;
    v30 = swift_slowAlloc();
    v78[0] = v30;
    *v29 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v31 = sub_2380324C4();
    v32 = v16;
    v33 = v12;
    v35 = v34;
    v64 = *(v28 + 8);
    v64(v21, v32);
    v36 = sub_237FDF8EC(v31, v35, v78);
    v12 = v33;

    *(v29 + 4) = v36;
    _os_log_impl(&dword_237FA1000, v24, v25, "Writing object to URL %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2383E5E30](v30, -1, -1);
    v8 = v63;
    MEMORY[0x2383E5E30](v29, -1, -1);
  }

  else
  {

    v64 = *(v17 + 8);
    v64(v21, v16);
  }

  v37 = *(v8 + 56);
  sub_238031964();
  v38 = sub_238031E74();

  v39 = [v37 fileExistsAtPath_];

  v40 = v70;
  v41 = v71;
  sub_237FA90E4(v69, v12, v70, v71);
  v42 = (*(v76 + 48))(v12, 1, v75);
  v43 = v73;
  if (v42 != 1)
  {
    (*(v76 + 32))(v73, v12, v75);
    v47 = v77;
    sub_23800D5D0();
    v77 = v47;
    if (!v47)
    {
      if ((v39 & 1) == 0)
      {
        v48 = v65;
        sub_238031914();
        v49 = sub_2380318D4();
        v64(v48, v67);
        v78[0] = 0;
        v50 = [v37 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:v78];

        if ((v50 & 1) == 0)
        {
          v59 = v78[0];
          v60 = sub_238031864();

          v77 = v60;
          swift_willThrow();
          goto LABEL_18;
        }

        v51 = v78[0];
      }

      v52 = v77;
      v53 = v68(v43);
      v77 = v52;
      if (!v52)
      {
        v55 = v53;
        v56 = v54;
        sub_2380319C4();
        v77 = 0;
        (*(v76 + 8))(v43, v75);
        sub_237FA5048(v55, v56);
        return [v72 unlock];
      }
    }

LABEL_18:
    (*(v76 + 8))(v43, v75);
    return [v72 unlock];
  }

  sub_237FA5750(v12, v40, v41);
  if (v39)
  {
    v44 = sub_2380318D4();
    v78[0] = 0;
    v45 = [v37 removeItemAtURL:v44 error:v78];

    if (v45)
    {
      v46 = v78[0];
    }

    else
    {
      v57 = v78[0];
      v58 = sub_238031864();

      v77 = v58;
      swift_willThrow();
    }
  }

  return [v72 unlock];
}

id sub_238003D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v60 = a5;
  v62 = a1;
  v71[1] = *MEMORY[0x277D85DE8];
  v10 = sub_2380321B4();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v63 = &v55 - v12;
  v66 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v70 = v5;
  v68 = *(v5 + 64);
  [v68 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v67 = a3;
  v20 = sub_238031DB4();
  __swift_project_value_buffer(v20, qword_280C36C80);
  (*(v15 + 16))(v19, a2, v14);
  v21 = sub_238031D94();
  v22 = sub_2380320E4();
  v23 = os_log_type_enabled(v21, v22);
  v58 = v15;
  v59 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v61 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v71[0] = v26;
    *v25 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = sub_2380324C4();
    v28 = v15;
    v29 = a2;
    v31 = v30;
    v56 = *(v28 + 8);
    v56(v19, v14);
    v32 = sub_237FDF8EC(v27, v31, v71);
    a2 = v29;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_237FA1000, v21, v22, "Writing object to URL %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2383E5E30](v26, -1, -1);
    v33 = v25;
    v7 = v61;
    MEMORY[0x2383E5E30](v33, -1, -1);
  }

  else
  {

    v56 = *(v15 + 8);
    v56(v19, v14);
  }

  v34 = *(v70 + 56);
  v61 = a2;
  sub_238031964();
  v35 = sub_238031E74();

  v36 = [v34 fileExistsAtPath_];

  v37 = v63;
  v38 = v64;
  v39 = v65;
  (*(v64 + 16))(v63, v62, v65);
  v41 = v66;
  v40 = v67;
  if ((*(v66 + 48))(v37, 1, v67) != 1)
  {
    (*(v41 + 32))(v69, v37, v40);
    sub_23800D5D0();
    if (!v7)
    {
      if (v36)
      {
LABEL_14:
        v49 = static DeviceActivityDataStore.encode<A>(_:)(v69, v40, v45, v60);
        v51 = v50;
        sub_2380319C4();
        (*(v41 + 8))(v69, v40);
        sub_237FA5048(v49, v51);
        return [v68 unlock];
      }

      v46 = v57;
      sub_238031914();
      v47 = sub_2380318D4();
      v56(v46, v59);
      v71[0] = 0;
      LODWORD(v46) = [v34 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:v71];

      if (v46)
      {
        v48 = v71[0];
        goto LABEL_14;
      }

      v53 = v71[0];
      sub_238031864();

      swift_willThrow();
    }

    (*(v41 + 8))(v69, v40);
    return [v68 unlock];
  }

  (*(v38 + 8))(v37, v39);
  if (v36)
  {
    v42 = sub_2380318D4();
    v71[0] = 0;
    v43 = [v34 removeItemAtURL:v42 error:v71];

    if (v43)
    {
      v44 = v71[0];
    }

    else
    {
      v52 = v71[0];
      sub_238031864();

      swift_willThrow();
    }
  }

  return [v68 unlock];
}

uint64_t DeviceActivityDataStore.saveEncodedCloudMetadata(_:userAltDSID:deviceIdentifier:segmentInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v23 = a2;
  v8 = v7;
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v22 = a1;
  v11 = sub_238031994();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a7;
  v16 = v8[3];
  v17 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v16);
  v24 = v15;
  (*(v17 + 112))(a3, v19, v20, v21, &v24, v16, v17);
  sub_2380044C4(v22, v23, v14);
  return (*(v12 + 8))(v14, v11);
}

id sub_2380044C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v44 = a2;
  v47[1] = *MEMORY[0x277D85DE8];
  v7 = sub_238031994();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v45 = v3;
  v13 = *(v3 + 64);
  [v13 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C80);
  v15 = *(v8 + 16);
  v46 = a3;
  v15(v12, a3, v7);
  v16 = sub_238031D94();
  v17 = sub_2380320E4();
  v18 = os_log_type_enabled(v16, v17);
  v42 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v43 = v8;
    v20 = v19;
    v38 = swift_slowAlloc();
    v39 = v4;
    v47[0] = v38;
    *v20 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_2380324C4();
    v22 = v13;
    v24 = v23;
    v40 = *(v43 + 8);
    v40(v12, v7);
    v25 = sub_237FDF8EC(v21, v24, v47);
    v13 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_237FA1000, v16, v17, "Writing encoded data to URL %{public}s", v20, 0xCu);
    v26 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v27 = v26;
    v5 = v39;
    MEMORY[0x2383E5E30](v27, -1, -1);
    MEMORY[0x2383E5E30](v20, -1, -1);
  }

  else
  {

    v40 = *(v8 + 8);
    v40(v12, v7);
  }

  v28 = *(v45 + 56);
  sub_238031964();
  v29 = sub_238031E74();

  v30 = [v28 fileExistsAtPath_];

  if ((v30 & 1) == 0)
  {
    sub_23800D5D0();
    if (v5)
    {
      return [v13 unlock];
    }

    v31 = v41;
    sub_238031914();
    v32 = sub_2380318D4();
    v40(v31, v42);
    v47[0] = 0;
    v33 = [v28 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v47];

    if (!v33)
    {
      v35 = v47[0];
      sub_238031864();

      swift_willThrow();
      return [v13 unlock];
    }

    v34 = v47[0];
  }

  sub_2380319C4();
  return [v13 unlock];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.moveLocalMetadataToCloud(userAltDSID:deviceIdentifier:segmentInterval:)(Swift::String userAltDSID, Swift::String deviceIdentifier, DeviceActivity::_SegmentInterval segmentInterval)
{
  v21 = deviceIdentifier;
  v4 = v3;
  v5 = segmentInterval;
  v20 = userAltDSID;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v5;
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  v23 = v13;
  (*(v15 + 56))(&v23, v14, v15);
  v16 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v16);
  v22 = v13;
  (*(v17 + 112))(v20._countAndFlagsBits, v20._object, v21._countAndFlagsBits, v21._object, &v22, v16, v17);
  sub_238004AB0(v12, v10);
  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v12, v6);
}

id sub_238004AB0(uint64_t a1, uint64_t a2)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v55[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-v11];
  v61 = v2;
  v13 = *(v2 + 64);
  [v13 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C80);
  v15 = *(v6 + 16);
  v15(v12, a1, v5);
  v63 = a2;
  v15(v65, a2, v5);
  v16 = sub_238031D94();
  v17 = sub_2380320E4();
  v18 = os_log_type_enabled(v16, v17);
  v59 = v6;
  v60 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v58 = v13;
    v20 = v19;
    v57 = swift_slowAlloc();
    v66[0] = v57;
    *v20 = 136446466;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v56 = v17;
    v21 = sub_2380324C4();
    v23 = v22;
    v24 = *(v6 + 8);
    v24(v12, v5);
    v25 = sub_237FDF8EC(v21, v23, v66);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = v65;
    v27 = sub_2380324C4();
    v29 = v28;
    v24(v26, v5);
    v30 = sub_237FDF8EC(v27, v29, v66);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_237FA1000, v16, v56, "Moving item from %{public}s to %{public}s", v20, 0x16u);
    v31 = v57;
    swift_arrayDestroy();
    MEMORY[0x2383E5E30](v31, -1, -1);
    v32 = v20;
    v13 = v58;
    MEMORY[0x2383E5E30](v32, -1, -1);
  }

  else
  {

    v24 = *(v6 + 8);
    v24(v65, v5);
    v24(v12, v5);
  }

  v33 = *(v61 + 56);
  sub_238031964();
  v34 = sub_238031E74();

  v35 = [v33 fileExistsAtPath_];

  v36 = v62;
  if (v35)
  {
    v37 = sub_2380318D4();
    v66[0] = 0;
    v38 = [v33 removeItemAtURL:v37 error:v66];

    v39 = v66[0];
    if (!v38)
    {
LABEL_15:
      v50 = v39;
      v51 = sub_238031864();

      v64 = v51;
      swift_willThrow();
      return [v13 unlock];
    }

    v40 = v66[0];
  }

  else
  {
    sub_238031914();
    sub_238031964();
    v41 = sub_238031E74();

    v42 = [v33 fileExistsAtPath_];

    if (v42)
    {
      v24(v36, v5);
    }

    else
    {
      v43 = sub_2380318D4();
      v66[0] = 0;
      v44 = [v33 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:v66];

      if (!v44)
      {
        v53 = v66[0];
        v54 = sub_238031864();

        v64 = v54;
        swift_willThrow();
        v24(v36, v5);
        return [v13 unlock];
      }

      v45 = v66[0];
      v24(v36, v5);
    }
  }

  v46 = sub_2380318D4();
  v47 = sub_2380318D4();
  v66[0] = 0;
  v48 = [v33 moveItemAtURL:v46 toURL:v47 error:v66];

  v39 = v66[0];
  if ((v48 & 1) == 0)
  {
    goto LABEL_15;
  }

  v49 = v66[0];
  return [v13 unlock];
}

uint64_t DeviceActivityDataStore.fetchLocalSegment(segmentInterval:recordName:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v5 = v4;
  v9 = sub_238031994();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  v18 = v13;
  (*(v15 + 72))(&v18, a2, a3, v14, v15);
  sub_238000CE8(v12, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t DeviceActivityDataStore.fetchLocalEncodedSegment(segmentInterval:recordName:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_238031994();
  v8 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *a1;
  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v41 = v14;
  (*(v16 + 72))(&v41, a2, a3, v15, v16);
  v17 = v4[8];
  [v17 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v18 = sub_238031DB4();
  __swift_project_value_buffer(v18, qword_280C36C80);
  (*(v8 + 16))(v11, v13, v39);
  v19 = sub_238031D94();
  v20 = sub_2380320E4();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v8;
  v38 = v8;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v37 = v17;
    v24 = v23;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v24 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = v39;
    v26 = sub_2380324C4();
    v27 = v25;
    v29 = v28;
    v30 = *(v22 + 8);
    v30(v11, v27);
    v31 = sub_237FDF8EC(v26, v29, &v40);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_237FA1000, v19, v20, "Reading encoded data from URL %{public}s", v24, 0xCu);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x2383E5E30](v32, -1, -1);
    v33 = v24;
    v17 = v37;
    MEMORY[0x2383E5E30](v33, -1, -1);
  }

  else
  {

    v30 = *(v8 + 8);
    v30(v11, v39);
  }

  v34 = sub_2380319A4();
  [v17 unlock];
  v30(v13, v39);
  return v34;
}

uint64_t DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a5;
  v14 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  v23 = v12;
  sub_2380319E4();
  v15 = sub_238032054();
  (*(v13 + 128))(v18, v19, v20, v21, &v23, v15, v16, v14, v13);

  sub_238000CE8(v11, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v22);
  return (*(v9 + 8))(v11, v8);
}

uint64_t DeviceActivityDataStore.fetchCloudSegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  v9 = v8;
  v23 = a6;
  v24 = a7;
  v21 = a3;
  v22 = a4;
  v13 = sub_238031994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v19 = v9[3];
  v18 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v19);
  v26 = v17;
  (*(v18 + 128))(a1, a2, v21, v22, &v26, v23, v24, v19, v18);
  sub_238000CE8(v16, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t DeviceActivityDataStore.saveLocalSegment(_:segmentInterval:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v27 = sub_238031994();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238031A64();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  sub_238031634();
  v15 = v3;
  v23 = v3;
  v16 = v3[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v28 = v13;
  sub_2380319E4();
  v18 = sub_238032054();
  (*(v17 + 72))(&v28, v18, v19, v16, v17);

  sub_237FA4FE0(v22, v7, type metadata accessor for _DeviceActivityData.ActivitySegment);
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_238002C34(v7, v9);
  sub_237FA5750(v7, &qword_27DEE54A8, &qword_2380359E0);
  (*(v26 + 8))(v9, v27);
  return (*(v24 + 8))(v12, v25);
}

uint64_t DeviceActivityDataStore.saveEncodedCloudSegment(_:userAltDSID:deviceIdentifier:segmentInterval:recordName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v27 = a2;
  v10 = v9;
  v24 = a6;
  v25 = a8;
  v22 = a4;
  v23 = a5;
  v26 = a1;
  v13 = sub_238031994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a7;
  v18 = v10[3];
  v19 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v18);
  v28 = v17;
  (*(v19 + 128))(a3, v22, v23, v24, &v28, v25, a9, v18, v19);
  sub_2380044C4(v26, v27, v16);
  return (*(v14 + 8))(v16, v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.moveLocalActivitySegmentToCloud(userAltDSID:deviceIdentifier:segmentInterval:recordName:)(Swift::String userAltDSID, Swift::String deviceIdentifier, DeviceActivity::_SegmentInterval segmentInterval, Swift::String recordName)
{
  v5 = v4;
  v23 = recordName;
  countAndFlagsBits = recordName._countAndFlagsBits;
  v7 = segmentInterval;
  v25 = deviceIdentifier;
  v24 = userAltDSID;
  v26 = sub_238031994();
  v8 = *(v26 - 8);
  v9 = MEMORY[0x28223BE20](v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *v7;
  v16 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v16);
  v28 = v14;
  v17 = countAndFlagsBits;
  object = v23._object;
  (*(v15 + 72))(&v28, v17, v23._object, v16, v15);
  v19 = v5[3];
  v20 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v19);
  v27 = v14;
  (*(v20 + 128))(v24._countAndFlagsBits, v24._object, v25._countAndFlagsBits, v25._object, &v27, v23._countAndFlagsBits, object, v19, v20);
  sub_238004AB0(v13, v11);
  v21 = *(v8 + 8);
  v22 = v26;
  v21(v11, v26);
  v21(v13, v22);
}

_BYTE *DeviceActivityDataStore.deleteData(olderThan:)(uint64_t a1)
{
  v254 = a1;
  v282 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5520, &qword_2380359D8);
  MEMORY[0x28223BE20](v2 - 8);
  v244 = &v203[-v3];
  v249 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v275 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v252 = &v203[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v203[-v6];
  v222 = sub_238031B64();
  v8 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v221 = &v203[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = sub_238031B74();
  v274 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v224 = &v203[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v276 = sub_238031994();
  v235 = *(v276 - 8);
  v11 = MEMORY[0x28223BE20](v276);
  v273 = &v203[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v268 = &v203[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v267 = &v203[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v248 = &v203[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v203[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v255 = &v203[-v23];
  MEMORY[0x28223BE20](v22);
  v234 = &v203[-v24];
  v260 = sub_238031A64();
  v25 = *(v260 - 8);
  v26 = MEMORY[0x28223BE20](v260);
  v258 = &v203[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v206 = &v203[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v223 = &v203[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v203[-v33];
  MEMORY[0x28223BE20](v32);
  v253 = &v203[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v219 = &v203[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v203[-v40];
  MEMORY[0x28223BE20](v39);
  v236 = &v203[-v42];
  v272 = v1;
  v44 = DeviceActivityDataStore.localDeviceIdentifier()();
  if (v43)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    countAndFlagsBits = v44._countAndFlagsBits;
    object = v44._object;
  }

  v45 = (*(v272[6] + 32))();
  v46 = v260;
  v226 = v7;
  v232 = v45;
  v241 = v47;
  DeviceActivityDataStore.localStartDate()(v236);
  v237 = DeviceActivityDataStore.deviceIdentifiersByUserAltDSID()();
  v271 = 0;
  v48 = v236;
  v228 = v272[8];
  [v228 lock];
  v49 = v25[2];
  v257 = v25 + 2;
  v256 = v49;
  v49(v253, v254, v46);
  sub_237FA90E4(v48, v41, &qword_27DEE51E0, &qword_2380365F0);
  v50 = v25[6];
  v218 = v25 + 6;
  v217 = v50;
  if (v50(v41, 1, v46) == 1)
  {
    sub_237FA5750(v41, &qword_27DEE51E0, &qword_2380365F0);
  }

  else
  {
    v52 = v25[4];
    v52(v34, v41, v46);
    v53 = sub_238031A04();
    v54 = v25[1];
    if (v53)
    {
      v55 = v253;
      v54(v253, v46);
      v52(v55, v34, v46);
    }

    else
    {
      v54(v34, v46);
    }
  }

  v56 = v275;
  v57 = 0;
  v216 = (v8 + 104);
  v215 = (v8 + 8);
  v214 = (v274 + 8);
  v205 = (v25 + 4);
  v279 = MEMORY[0x277D84FA0];
  v259 = (v25 + 1);
  v275 = (v235 + 8);
  v204 = *MEMORY[0x277CC9940];
  v227 = v237 + 8;
  v243 = (v56 + 7);
  v207 = *MEMORY[0x277CC9968];
  v266 = v235 + 16;
  v213 = *MEMORY[0x277CC9980];
  v58 = 7104878;
  if (v241)
  {
    v58 = v232;
  }

  v210 = v58;
  v59 = 0xE300000000000000;
  v230 = MEMORY[0x277D84F98];
  if (v241)
  {
    v59 = v241;
  }

  v209 = v59;
  *&v51 = 136446210;
  v240 = v51;
  *&v51 = 136446466;
  v208 = v51;
  v60 = v252;
  v251 = v21;
  while (1)
  {
    v238 = v57;
    v61 = *(&unk_284AE5B58 + v57 + 32);
    v62 = v272[3];
    v63 = v272[4];
    __swift_project_boxed_opaque_existential_1(v272, v62);
    LOBYTE(v280) = v61;
    v64 = v234;
    (*(v63 + 64))(&v280, v62, v63);
    v65 = v271;
    v66 = sub_237FFE2B4();
    v263 = v61;
    if (!v65)
    {
      v68 = v66;
      v271 = 0;
      v274 = *(v66 + 2);
      if (!v274)
      {
LABEL_52:

        v46 = v260;
        v67 = v271;
        goto LABEL_53;
      }

      v69 = 0;
      v70 = (v66 + 40);
      while (1)
      {
        if (v69 >= *(v68 + 2))
        {
          goto LABEL_158;
        }

        v71 = v61;
        v73 = *(v70 - 1);
        v72 = *v70;
        v75 = v272[3];
        v74 = v272[4];
        __swift_project_boxed_opaque_existential_1(v272, v75);
        LOBYTE(v280) = v71;
        v64 = *(v74 + 72);

        v76 = (v64)(&v280, v73, v72, v75, v74);
        v62 = v203;
        v278 = 0;
        MEMORY[0x28223BE20](v76);
        if ((v72 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v72 & 0x2000000000000000) != 0)
        {
          v280 = v73;
          v281 = (v72 & 0xFFFFFFFFFFFFFFLL);
          if (v73 <= 0x20u && ((1 << v73) & 0x100003E01) != 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if ((v73 & 0x1000000000000000) == 0)
          {
            break;
          }

          v77 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v78 = v77 > 0x20;
          v79 = (1 << v77) & 0x100003E01;
          if (!v78 && v79 != 0)
          {
LABEL_30:
            if (qword_280C353A0 != -1)
            {
              swift_once();
            }

            v81 = sub_238031DB4();
            __swift_project_value_buffer(v81, qword_280C36C80);

            v82 = sub_238031D94();
            v83 = sub_2380320F4();

            if (os_log_type_enabled(v82, v83))
            {
              v62 = swift_slowAlloc();
              v64 = v68;
              v84 = swift_slowAlloc();
              v280 = v84;
              *v62 = v240;
              *(v62 + 4) = sub_237FDF8EC(v73, v72, &v280);
              _os_log_impl(&dword_237FA1000, v82, v83, "Activity segment record name is not a time interval: %{public}s", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v84);
              v85 = v84;
              v68 = v64;
              MEMORY[0x2383E5E30](v85, -1, -1);
              MEMORY[0x2383E5E30](v62, -1, -1);
            }

            v60 = v252;
            goto LABEL_35;
          }
        }

        v86 = _swift_stdlib_strtod_clocale();
        if (!v86)
        {
          goto LABEL_30;
        }

        v62 = v226;
        if (*v86)
        {
          goto LABEL_30;
        }

LABEL_39:
        v270 = v68;
        v87 = v223;
        sub_2380319D4();
        sub_238031B44();
        v88 = v213;
        if (v263)
        {
          v88 = v207;
          if (v263 != 1)
          {
            v88 = v204;
          }
        }

        v89 = v221;
        v90 = v222;
        (*v216)(v221, v88, v222);
        v91 = v219;
        v92 = v224;
        sub_238031B24();
        v93 = v90;
        v64 = v91;
        (*v215)(v89, v93);
        (*v214)(v92, v220);
        v94 = v260;
        v95 = v217(v91, 1, v260);
        v60 = v252;
        if (v95 == 1)
        {
          (*v259)(v87, v94);
          sub_237FA5750(v64, &qword_27DEE51E0, &qword_2380365F0);
        }

        else
        {
          v96 = v64;
          v64 = v206;
          (*v205)(v206, v96, v94);
          sub_238011FC8(&qword_280C35028, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          if (sub_238031E44())
          {
            v62 = *v259;
            (*v259)(v64, v94);
          }

          else
          {
            v97 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
            (*(*(v97 - 8) + 56))(v62, 1, 1, v97);
            v98 = v271;
            sub_238002C34(v62, v255);
            v271 = v98;
            if (v98)
            {
              goto LABEL_160;
            }

            sub_237FA5750(v62, &qword_27DEE54A8, &qword_2380359E0);
            v62 = *v259;
            v94 = v260;
            (*v259)(v64, v260);
          }

          (v62)(v223, v94);
        }

        v68 = v270;
LABEL_35:
        ++v69;
        (*v275)(v255, v276);

        v70 += 2;
        v61 = v263;
        if (v274 == v69)
        {
          goto LABEL_52;
        }
      }

      v99 = v271;
      sub_2380322A4();
      v271 = v99;
      v62 = v226;
      if ((v277 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    v67 = 0;
LABEL_53:
    v271 = v67;
    if (object)
    {
      v280 = countAndFlagsBits;
      v281 = object;

      MEMORY[0x2383E5050](95, 0xE100000000000000);
      if (v61)
      {
        v100 = v61 == 1 ? 0x796C696144 : 0x796C6B656557;
        v62 = (v61 == 1 ? 0xE500000000000000 : 0xE600000000000000);
      }

      else
      {
        v62 = 0xE600000000000000;
        v100 = 0x796C72756F48;
      }

      MEMORY[0x2383E5050](v100, v62);

      v225 = v280;
      v231 = v281;
    }

    else
    {
      v225 = 0;
      v231 = 0;
    }

    ++v238;
    v278 = MEMORY[0x277D84FA0];
    v101 = 1 << *(v237 + 32);
    v102 = v101 < 64 ? ~(-1 << v101) : -1;
    v103 = v102 & v237[8];
    v229 = (v101 + 63) >> 6;

    v105 = v103;
    v106 = 0;
LABEL_68:
    if (v105)
    {
      goto LABEL_73;
    }

LABEL_69:
    v107 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v107 < v229)
    {
      v105 = v227[v107];
      ++v106;
      if (!v105)
      {
        goto LABEL_69;
      }

      v106 = v107;
LABEL_73:
      v108 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v109 = v108 | (v106 << 6);
      v62 = *(*(v104 + 56) + 8 * v109);
      v242 = *(v62 + 2);
      if (v242)
      {
        v211 = v105;
        v212 = v106;
        v110 = (*(v104 + 48) + 16 * v109);
        v111 = v110[1];
        v261 = *v110;
        v246 = v62 + 32;
        v262 = v111;

        v112 = 0;
        v245 = v62;
        while (1)
        {
          if (v112 >= *(v62 + 2))
          {
            goto LABEL_159;
          }

          v250 = v112;
          v113 = &v246[16 * v112];
          v114 = *v113;
          v115 = v113[1];
          v116 = v272[3];
          v117 = v272[4];
          __swift_project_boxed_opaque_existential_1(v272, v116);
          LOBYTE(v280) = v61;
          v118 = *(v117 + 112);

          v264 = v114;
          v265 = v115;
          v119 = v115;
          v120 = v251;
          v118(v261, v262, v114, v119, &v280, v116, v117);
          v121 = v244;
          v122 = v271;
          sub_238000CE8(v120, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v244);
          if (v122)
          {

            v274 = *v275;
            (v274)(v120, v276);
            (*v243)(v121, 1, 1, v249);
            sub_237FA5750(v121, &qword_27DEE5520, &qword_2380359D8);
            v271 = 0;
            v46 = v260;
            goto LABEL_80;
          }

          v271 = 0;
          v274 = *v275;
          (v274)(v120, v276);
          v145 = v249;
          (*v243)(v121, 0, 1, v249);
          sub_237FA509C(v121, v60, type metadata accessor for _DeviceActivityData.Metadata);
          v146 = (v60 + *(v145 + 28));
          v147 = v146[3];
          v270 = v146[4];
          v148 = v146[5];
          if (v147)
          {
            v64 = v265;
            v46 = v260;
            if (v241)
            {
              v149 = v146[2] == v232 && v147 == v241;
              if (v149 || (sub_2380324E4() & 1) != 0)
              {
LABEL_116:
                if (!object || (v264 != countAndFlagsBits || object != v64) && (sub_2380324E4() & 1) == 0)
                {
                  v171 = qword_280C353A0;

                  if (v171 != -1)
                  {
                    swift_once();
                  }

                  v172 = sub_238031DB4();
                  __swift_project_value_buffer(v172, qword_280C36C80);

                  v173 = sub_238031D94();
                  v174 = sub_238032104();
                  v64 = v265;

                  if (os_log_type_enabled(v173, v174))
                  {
                    v175 = swift_slowAlloc();
                    v269 = swift_slowAlloc();
                    v280 = v269;
                    *v175 = v208;

                    v176 = v270;
                    if (!v148)
                    {

                      v176 = v264;
                      v148 = v64;
                    }

                    v177 = sub_237FDF8EC(v176, v148, &v280);

                    *(v175 + 4) = v177;
                    *(v175 + 12) = 2082;

                    v178 = sub_237FDF8EC(v210, v209, &v280);
                    v64 = v265;

                    *(v175 + 14) = v178;
                    _os_log_impl(&dword_237FA1000, v173, v174, "Deleting duplicated device: %{public}s with CoreDuet identifier: %{public}s)", v175, 0x16u);
                    v179 = v269;
                    swift_arrayDestroy();
                    MEMORY[0x2383E5E30](v179, -1, -1);
                    MEMORY[0x2383E5E30](v175, -1, -1);

                    v60 = v252;
                    v61 = v263;
                  }

                  else
                  {

                    v60 = v252;
                  }

                  LOBYTE(v280) = v61;
                  v182 = v264;
                  v183._countAndFlagsBits = v264;
                  v183._object = v64;
                  DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)(v183, &v280);
                  v271 = v184;
                  if (v184)
                  {
LABEL_155:

                    sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);

                    (v274)(v234, v276);

                    (*v259)(v253, v46);
                    goto LABEL_153;
                  }

                  v280 = v182;
                  v281 = v64;
                  MEMORY[0x2383E5050](95, 0xE100000000000000);
                  if (v61)
                  {
                    if (v61 == 1)
                    {
                      v185 = 0xE500000000000000;
                      v186 = 0x796C696144;
LABEL_145:
                      MEMORY[0x2383E5050](v186, v185);

                      sub_237FB5F68(&v280, v280, v281);

                      sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);
                      goto LABEL_76;
                    }

                    v185 = 0xE600000000000000;
                    v187 = 1801807191;
                  }

                  else
                  {
                    v185 = 0xE600000000000000;
                    v187 = 1920298824;
                  }

                  v186 = v187 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                  goto LABEL_145;
                }
              }
            }
          }

          else
          {
            v64 = v265;
            v46 = v260;
            if (!v241)
            {
              goto LABEL_116;
            }
          }

          v161 = v252;
          if (sub_238031A14())
          {
            if (qword_280C353A0 != -1)
            {
              swift_once();
            }

            v162 = sub_238031DB4();
            __swift_project_value_buffer(v162, qword_280C36C80);

            v163 = sub_238031D94();
            v164 = sub_238032104();

            if (os_log_type_enabled(v163, v164))
            {
              v269 = v163;
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v280 = v166;
              *v165 = v240;

              v167 = v270;
              if (!v148)
              {

                v167 = v264;
                v148 = v64;
              }

              v168 = sub_237FDF8EC(v167, v148, &v280);

              *(v165 + 4) = v168;
              v169 = v164;
              v170 = v269;
              _os_log_impl(&dword_237FA1000, v269, v169, "Deleting expired device: %{public}s", v165, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v166);
              MEMORY[0x2383E5E30](v166, -1, -1);
              MEMORY[0x2383E5E30](v165, -1, -1);

              v60 = v252;
              v61 = v263;
            }

            else
            {

              v60 = v252;
            }

            LOBYTE(v280) = v61;
            v180._countAndFlagsBits = v264;
            v180._object = v64;
            DeviceActivityDataStore.deleteRemoteData(deviceIdentifier:segmentInterval:)(v180, &v280);
            v271 = v181;
            if (v181)
            {
              goto LABEL_155;
            }

            sub_238011DF0(v60, type metadata accessor for _DeviceActivityData.Metadata);

            goto LABEL_76;
          }

          sub_238011DF0(v161, type metadata accessor for _DeviceActivityData.Metadata);

          v60 = v161;
LABEL_80:
          v123 = v272;
          v124 = v272[3];
          v125 = v272[4];
          __swift_project_boxed_opaque_existential_1(v272, v124);
          LOBYTE(v280) = v61;
          v126 = v248;
          (*(v125 + 120))(v261, v262, v264, v265, &v280, v124, v125);
          v127 = v123[7];
          v128 = sub_2380318D4();
          v280 = 0;
          v129 = [v127 contentsOfDirectoryAtURL:v128 includingPropertiesForKeys:0 options:0 error:&v280];

          v62 = v280;
          if (v129)
          {
            v130 = sub_238031F94();
            v131 = v62;

            v64 = *(v130 + 16);
            if (v64)
            {
              v132 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v233 = v130;
              v62 = (v130 + v132);
              v133 = *(v235 + 72);
              v269 = *(v235 + 16);
              v270 = v133;
              v134 = MEMORY[0x277D84F90];
              do
              {
                v135 = v267;
                v136 = v276;
                (v269)(v267, v62, v276);
                v137 = v268;
                sub_2380318E4();
                v138 = v274;
                (v274)(v135, v136);
                v139 = sub_2380318B4();
                v141 = v140;
                v138(v137, v136);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v134 = sub_237FB5A94(0, *(v134 + 2) + 1, 1, v134);
                }

                v143 = *(v134 + 2);
                v142 = *(v134 + 3);
                if (v143 >= v142 >> 1)
                {
                  v134 = sub_237FB5A94((v142 > 1), v143 + 1, 1, v134);
                }

                *(v134 + 2) = v143 + 1;
                v144 = &v134[16 * v143];
                *(v144 + 4) = v139;
                *(v144 + 5) = v141;
                v62 += v270;
                v64 = (v64 - 1);
              }

              while (v64);

              v46 = v260;
              v61 = v263;
            }

            else
            {

              v134 = MEMORY[0x277D84F90];
            }

            if (object)
            {
              if (v264 == countAndFlagsBits && object == v265)
              {
                LODWORD(v270) = 1;
              }

              else
              {
                LODWORD(v270) = sub_2380324E4();
              }
            }

            else
            {
              LODWORD(v270) = 0;
            }

            v269 = *(v134 + 2);
            if (v269)
            {
              v64 = 0;
              v151 = v134 + 40;
              while (v64 < *(v134 + 2))
              {
                v152 = *(v151 - 1);
                v62 = *v151;
                v153 = v272[3];
                v154 = v272[4];
                __swift_project_boxed_opaque_existential_1(v272, v153);
                LOBYTE(v280) = v61;
                v155 = *(v154 + 128);

                v155(v261, v262, v264, v265, &v280, v152, v62, v153, v154);
                v156 = v258;
                if (v270)
                {
                  v157 = &v283;
                }

                else
                {
                  v157 = &v284;
                }

                v46 = v260;
                v256(v258, *(v157 - 32), v260);
                v61 = v263;
                LOBYTE(v280) = v263;
                v158 = v271;
                v159 = sub_2380083B8(v152, v62, v156, &v280, v273);
                v271 = v158;
                if (v158)
                {

                  v194 = *v259;
                  (*v259)(v156, v46);
                  v195 = v274;
                  v196 = v276;
                  (v274)(v273, v276);
                  v195(v248, v196);

                  v195(v234, v196);

                  (v194)(v253, v46);
                  goto LABEL_153;
                }

                v160 = v159;
                (*v259)(v156, v46);
                if (v160 & v270)
                {
                  sub_237FB5F68(&v280, v152, v62);
                }

                (v274)(v273, v276);
                v64 = (v64 + 1);
                v151 += 2;
                if (v269 == v64)
                {
                  goto LABEL_75;
                }
              }

              __break(1u);
              goto LABEL_157;
            }

LABEL_75:

            (v274)(v248, v276);
            v60 = v252;
          }

          else
          {
            v64 = v280;

            v150 = sub_238031864();

            swift_willThrow();
            (v274)(v126, v276);
            v271 = 0;
          }

LABEL_76:
          v112 = v250 + 1;
          v62 = v245;
          if (v250 + 1 == v242)
          {

            v104 = v237;
            v106 = v212;
            v105 = v211;
            goto LABEL_68;
          }
        }
      }

      goto LABEL_68;
    }

    v188 = v231;
    if (v231)
    {
      v189 = v278;
      v190 = v230;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v280 = v190;
      sub_237FFBBBC(v189, v225, v188, isUniquelyReferenced_nonNull_native);

      v230 = v280;
    }

    else
    {
    }

    v192 = v236;
    (*v275)(v234, v276);
    v57 = v238;
    if (v238 == 3)
    {

      (*v259)(v253, v46);
      v193 = v279;
      [v228 unlock];
      sub_237FA5750(v192, &qword_27DEE51E0, &qword_2380365F0);
      return v193;
    }
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_237FA5750(v62, &qword_27DEE54A8, &qword_2380359E0);
  v198 = *v259;
  v199 = v64;
  v200 = v260;
  (*v259)(v199, v260);
  (v198)(v223, v200);

  v201 = v276;
  v202 = *v275;
  (*v275)(v255, v276);
  v202(v234, v201);

  (v198)(v253, v200);
LABEL_153:
  v193 = v236;
  [v228 unlock];
  sub_237FA5750(v193, &qword_27DEE51E0, &qword_2380365F0);
  return v193;
}

id DeviceActivityDataStore.localStartDate()@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[8];
  [v13 lock];
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 24))(v8, v9);
  sub_238001444(v7, &qword_27DEE51E0, &qword_2380365F0, sub_23800CD70, a1);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
    v15 = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    if (swift_dynamicCast() && !v14)
    {

      v11 = sub_238031A64();
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    else
    {
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return [v13 unlock];
}

uint64_t sub_2380083B8(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v46 = a5;
  v49 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v44 - v9;
  v53 = sub_238031B64();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238031B74();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_238031A64();
  v50 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v47 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v24 = *a4;
  v55 = 0;
  v48 = a1;
  v25 = v54;
  v26 = sub_238010DB8(a1, a2, &v55);
  v54 = v25;
  if (!v26)
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v30 = sub_238031DB4();
    __swift_project_value_buffer(v30, qword_280C36C80);

    v31 = sub_238031D94();
    v32 = sub_2380320F4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_237FDF8EC(v48, a2, &v55);
      _os_log_impl(&dword_237FA1000, v31, v32, "Activity segment record name is not a time interval: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2383E5E30](v34, -1, -1);
      MEMORY[0x2383E5E30](v33, -1, -1);
    }

    goto LABEL_9;
  }

  sub_2380319D4();
  sub_238031B44();
  v27 = **(&unk_278A454C8 + v24);
  v28 = v53;
  (*(v10 + 104))(v12, v27, v53);
  sub_238031B24();
  (*(v10 + 8))(v12, v28);
  (*(v51 + 8))(v15, v52);
  v29 = v50;
  if ((*(v50 + 48))(v18, 1, v19) == 1)
  {
    (*(v29 + 8))(v23, v19);
    sub_237FA5750(v18, &qword_27DEE51E0, &qword_2380365F0);
LABEL_9:
    v35 = 0;
    return v35 & 1;
  }

  v37 = v47;
  (*(v29 + 32))(v47, v18, v19);
  sub_238011FC8(&qword_280C35028, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_238031E44())
  {
    v38 = *(v29 + 8);
    v38(v37, v19);
    v38(v23, v19);
    goto LABEL_9;
  }

  v39 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v40 = v45;
  (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
  v41 = v54;
  sub_238002C34(v40, v46);
  sub_237FA5750(v40, &qword_27DEE54A8, &qword_2380359E0);
  if (v41)
  {
    v42 = *(v29 + 8);
    v42(v37, v19);
    v42(v23, v19);
  }

  else
  {
    v43 = *(v29 + 8);
    v43(v37, v19);
    v43(v23, v19);
    v35 = 1;
  }

  return v35 & 1;
}

char *DeviceActivityDataStore.deviceIdentifierByCoreDuetIdentifier.getter()
{
  v0 = DeviceActivityDataStore.deviceIdentifiersByCoreDuetIdentifier.getter();
  v1 = v0 + 8;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & v0[8];
  v5 = (v2 + 63) >> 6;
  v52 = v0;

  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v47 = v1;
  v50 = v5;
LABEL_4:
  v9 = v6;
  v51 = v8;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    v6 = v9;
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v6 << 6);
    v11 = (v52[6] + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(v52[7] + 8 * v10);
    v15 = *(v14 + 16);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v18 = v17 - 32;
      if (v17 < 32)
      {
        v18 = v17 - 17;
      }

      v16[2] = v15;
      v16[3] = 2 * (v18 >> 4);
      v19 = sub_237FD1008(v53, v16 + 4, v15, v14);
      v7 = v53[1];
      v48 = v53[0];
      v49 = v19;
      v20 = v12;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_237FBDBF0(v48);
      if (v49 != v15)
      {
        goto LABEL_35;
      }

      v1 = v47;
    }

    else
    {
      v20 = v11[1];
      swift_bridgeObjectRetain_n();

      v16 = MEMORY[0x277D84F90];
    }

    v53[0] = v16;
    v7 = 0;
    sub_23800A2CC(v53);
    v4 &= v4 - 1;
    v5 = v50;
    v8 = v51;
    v21 = v20;
    if (*(v53[0] + 2))
    {
      v7 = *(v53[0] + 4);
      v25 = *(v53[0] + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v51;
      v27 = v13;
      v28 = v13;
      v29 = v21;
      v30 = sub_237FA4E8C(v28, v21);
      v32 = *(v51 + 2);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_36;
      }

      v36 = v31;
      if (*(v51 + 3) >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v41 = v30;
        sub_237FCEB38();
        v30 = v41;
        if ((v36 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_28:
        v39 = v30;

        v8 = v53[0];
        v40 = (*(v53[0] + 7) + 16 * v39);
        *v40 = v7;
        v40[1] = v25;
      }

      else
      {
        sub_237FCD66C(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_237FA4E8C(v27, v29);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_38;
        }

LABEL_27:
        if (v36)
        {
          goto LABEL_28;
        }

LABEL_30:
        v8 = v53[0];
        *&v53[0][8 * (v30 >> 6) + 64] |= 1 << v30;
        v42 = (*(v8 + 6) + 16 * v30);
        *v42 = v27;
        v42[1] = v29;
        v43 = (*(v8 + 7) + 16 * v30);
        *v43 = v7;
        v43[1] = v25;

        v44 = *(v8 + 2);
        v34 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v34)
        {
          goto LABEL_37;
        }

        *(v8 + 2) = v45;
      }

      v5 = v50;
      v7 = 0;
      goto LABEL_4;
    }

    v22 = sub_237FA4E8C(v13, v20);
    v24 = v23;

    if (v24)
    {
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v51;
      if (!v38)
      {
        sub_237FCEB38();
        v8 = v53[0];
      }

      sub_23800FE84(v22, v8);

      goto LABEL_4;
    }

    v9 = v6;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return v8;
    }

    v4 = v1[v6];
    ++v9;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);

  __break(1u);
LABEL_38:
  result = sub_238032534();
  __break(1u);
  return result;
}

void *DeviceActivityDataStore.deviceIdentifiersByCoreDuetIdentifier.getter()
{
  v1 = v0;
  v137 = sub_238031994();
  v2 = *(v137 - 8);
  v3 = MEMORY[0x28223BE20](v137);
  v135 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v138 = &v111 - v5;
  v125 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v124 = *(v125 - 8);
  v6 = MEMORY[0x28223BE20](v125);
  v123 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v111 - v9;
  MEMORY[0x28223BE20](v8);
  v121 = &v111 - v10;
  v11 = DeviceActivityDataStore.localDeviceIdentifier()();
  v13 = v12;
  if (!v12)
  {
    v14 = 0;
    v32 = (*(v0[6] + 32))();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238035770;
    *(inited + 32) = v11;
    v13 = (inited + 32);
    v36 = sub_238011560(inited);
    swift_setDeallocating();
    sub_2380116C8(v13);
    v37 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v37;
    sub_237FFBBBC(v36, v32, v34, isUniquelyReferenced_nonNull_native);

    v120 = v141;
    v39 = v138;
LABEL_15:
    v40 = DeviceActivityDataStore.deviceIdentifiersByUserAltDSID()();
    v42 = 0;
    v43 = v40 + 8;
    v44 = 1 << *(v40 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & v40[8];
    v47 = (v44 + 63) >> 6;
    v132 = (v2 + 16);
    v140 = (v2 + 8);
    *&v41 = 136446210;
    v127 = v41;
    v48 = v137;
    if (v46)
    {
LABEL_18:
      while (1)
      {
        v49 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v50 = v49 | (v42 << 6);
        v51 = *(v40[7] + 8 * v50);
        v52 = *(v51 + 16);
        if (v52)
        {
          break;
        }

        if (!v46)
        {
          goto LABEL_20;
        }
      }

      v112 = v46;
      v113 = v47;
      v114 = v43;
      v115 = v42;
      v116 = v40;
      v54 = (v40[6] + 16 * v50);
      v55 = v54[1];
      v130 = *v54;
      v118 = v51 + 32;
      v131 = v55;

      v56 = 0;
      v57 = v1[7];
      v139 = v1[8];
      v129 = v57;
      v117 = v51;
      v119 = v52;
      while (1)
      {
        if (v56 >= *(v51 + 16))
        {
          goto LABEL_59;
        }

        v58 = (v118 + 16 * v56);
        v13 = v58[1];
        v136 = *v58;
        v126 = v56 + 1;

        v59 = 0;
        v134 = v13;
        while (1)
        {
          v60 = byte_284AE5B80[v59 + 32];
          v61 = v1[3];
          v62 = v1[4];
          __swift_project_boxed_opaque_existential_1(v1, v61);
          LOBYTE(v141) = v60;
          (*(v62 + 112))(v130, v131, v136, v13, &v141, v61, v62);
          [v139 lock];
          if (qword_280C353A0 != -1)
          {
            swift_once();
          }

          v63 = sub_238031DB4();
          v64 = __swift_project_value_buffer(v63, qword_280C36C80);
          v65 = v135;
          (*v132)(v135, v39, v48);
          v133 = v64;
          v66 = sub_238031D94();
          v67 = sub_2380320E4();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = v65;
            v70 = swift_slowAlloc();
            v141 = v70;
            *v68 = v127;
            sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v71 = v59;
            v72 = sub_2380324C4();
            v128 = v14;
            v73 = v1;
            v75 = v74;
            v76 = *v140;
            (*v140)(v69, v137);
            v77 = v72;
            v59 = v71;
            v78 = sub_237FDF8EC(v77, v75, &v141);
            v1 = v73;
            v14 = v128;
            v48 = v137;

            *(v68 + 4) = v78;
            _os_log_impl(&dword_237FA1000, v66, v67, "Reading object from URL %{public}s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
            MEMORY[0x2383E5E30](v70, -1, -1);
            MEMORY[0x2383E5E30](v68, -1, -1);
          }

          else
          {

            v76 = *v140;
            (*v140)(v65, v48);
          }

          v39 = v138;
          sub_238031964();
          v79 = sub_238031E74();

          v80 = [v129 fileExistsAtPath_];

          if (!v80)
          {
            [v139 unlock];
            goto LABEL_42;
          }

          v81 = sub_2380319A4();
          if (v14)
          {
            [v139 unlock];

            v14 = 0;
            goto LABEL_41;
          }

          v83 = v81;
          v84 = v82;
          sub_238031774();
          swift_allocObject();
          sub_238031764();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5528, &unk_2380359E8);
          sub_2380114A4();
          sub_238031754();
          v85 = v141;
          if (!v141[2] || (v86 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v87 & 1) == 0))
          {

            sub_237FAC9F0(v95, v96, v97);
            v98 = swift_allocError();
            *v99 = 0;
            swift_willThrow();

            sub_237FA5048(v83, v84);
            v14 = 0;
            [v139 unlock];

LABEL_41:
            v39 = v138;
LABEL_42:
            v13 = v134;
            v76(v39, v48);
            goto LABEL_43;
          }

          v88 = v85[7] + *(v124 + 72) * v86;
          v128 = v76;
          v89 = v123;
          sub_237FA4FE0(v88, v123, type metadata accessor for _DeviceActivityData.Metadata);

          sub_237FA5048(v83, v84);
          v90 = v122;
          sub_237FA509C(v89, v122, type metadata accessor for _DeviceActivityData.Metadata);
          [v139 unlock];
          v39 = v138;
          v128(v138, v48);
          v91 = v90;
          v92 = v121;
          sub_237FA509C(v91, v121, type metadata accessor for _DeviceActivityData.Metadata);
          v93 = v92 + *(v125 + 28);
          v13 = *(v93 + 16);
          v94 = *(v93 + 24);

          sub_238011DF0(v92, type metadata accessor for _DeviceActivityData.Metadata);
          if (v94)
          {
            break;
          }

          v13 = v134;
LABEL_43:
          if (++v59 == 3)
          {

            v100 = sub_238031D94();
            v101 = sub_238032114();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v141 = v103;
              *v102 = v127;
              v13 = sub_237FDF8EC(v136, v13, &v141);

              *(v102 + 4) = v13;
              _os_log_impl(&dword_237FA1000, v100, v101, "%{public}s has no CoreDuet identifier", v102, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v103);
              v104 = v103;
              v48 = v137;
              MEMORY[0x2383E5E30](v104, -1, -1);
              MEMORY[0x2383E5E30](v102, -1, -1);
            }

            else
            {
            }

            v51 = v117;
            goto LABEL_48;
          }
        }

        v105 = v120;
        if (v120[2] && (v106 = sub_237FA4E8C(v13, v94), (v107 & 1) != 0))
        {
          v142 = *(v105[7] + 8 * v106);
        }

        else
        {
          v142 = MEMORY[0x277D84FA0];
        }

        v51 = v117;
        sub_237FB5F68(&v141, v136, v134);

        v108 = v142;
        v109 = v120;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v141 = v109;
        sub_237FFBBBC(v108, v13, v94, v110);

        v120 = v141;
LABEL_48:
        v56 = v126;
        if (v126 == v119)
        {

          v40 = v116;
          v42 = v115;
          v43 = v114;
          v47 = v113;
          v46 = v112;
          if (!v112)
          {
            break;
          }

          goto LABEL_18;
        }
      }
    }

LABEL_20:
    while (1)
    {
      v53 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v53 >= v47)
      {

        return v120;
      }

      v46 = v43[v53];
      ++v42;
      if (v46)
      {
        v42 = v53;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v14 = 0;
  v141 = v13;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  if (swift_dynamicCast() && v142 == 1)
  {

    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v16 = sub_238031DB4();
    __swift_project_value_buffer(v16, qword_280C36C80);
    v17 = sub_238031D94();
    v18 = sub_238032114();
    v19 = os_log_type_enabled(v17, v18);
    v39 = v138;
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_237FA1000, v17, v18, "Couldn't fetch local device identifiers because DeviceActivity is unavailable for the local device.", v20, 2u);
      MEMORY[0x2383E5E30](v20, -1, -1);
    }

    v120 = MEMORY[0x277D84F98];
    goto LABEL_15;
  }

  if (qword_280C353A0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_280C36C80);
  v22 = v13;
  v23 = sub_238031D94();
  v24 = sub_2380320F4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v141 = v26;
    *v25 = 136446210;
    v142 = v13;
    v27 = v13;
    v28 = sub_238031EB4();
    v30 = sub_237FDF8EC(v28, v29, &v141);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_237FA1000, v23, v24, "Failed to get local device identifiers: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2383E5E30](v26, -1, -1);
    MEMORY[0x2383E5E30](v25, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84F98];
}

char *DeviceActivityDataStore.localRecordNames(forZoneName:segmentInterval:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v57 = a1;
  v4 = v3;
  v64 = a2;
  v71[2] = *MEMORY[0x277D85DE8];
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = *a3;
  v62 = v4[8];
  [v62 lock];
  v17 = v4[3];
  v18 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v17);
  v58 = v16;
  LOBYTE(v71[0]) = v16;
  (*(v18 + 64))(v71, v17, v18);
  v19 = v4[7];
  v61 = v15;
  v20 = sub_2380318D4();
  v71[0] = 0;
  v59 = v19;
  v21 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v71];

  v22 = v71[0];
  v63 = v7;
  if (!v21)
  {
    v42 = v71[0];
    v43 = sub_238031864();

    swift_willThrow();
    v30 = MEMORY[0x277D84F90];
LABEL_12:
    v41 = v64;
    goto LABEL_13;
  }

  v70 = v6;
  v23 = sub_238031F94();
  v24 = v22;

  v25 = *(v23 + 16);
  if (!v25)
  {

    v30 = MEMORY[0x277D84F90];
    v6 = v70;
    goto LABEL_12;
  }

  v55 = v23;
  v56 = v4;
  v27 = *(v7 + 16);
  v26 = v7 + 16;
  v28 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v65 = *(v26 + 56);
  v66 = v27;
  v67 = v26;
  v29 = (v26 - 8);
  v30 = MEMORY[0x277D84F90];
  v31 = v69;
  do
  {
    v32 = v68;
    v33 = v70;
    v66(v68, v28, v70);
    sub_2380318E4();
    v34 = *v29;
    (*v29)(v32, v33);
    v35 = sub_2380318B4();
    v37 = v36;
    v34(v31, v33);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_237FB5A94(0, *(v30 + 2) + 1, 1, v30);
    }

    v39 = *(v30 + 2);
    v38 = *(v30 + 3);
    if (v39 >= v38 >> 1)
    {
      v30 = sub_237FB5A94((v38 > 1), v39 + 1, 1, v30);
    }

    *(v30 + 2) = v39 + 1;
    v40 = &v30[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v37;
    v28 += v65;
    --v25;
  }

  while (v25);

  v6 = v70;
  v41 = v64;
  v4 = v56;
LABEL_13:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_238010EB0(v30);
  }

  v44 = *(v30 + 2);
  v71[0] = v30 + 32;
  v71[1] = v44;
  sub_2380102C8(v71, sub_2380104A0, sub_2380103D0);
  v45 = v4;
  v46 = v4[3];
  v47 = v4[4];
  __swift_project_boxed_opaque_existential_1(v45, v46);
  LOBYTE(v71[0]) = v58;
  v48 = v60;
  (*(v47 + 56))(v71, v46, v47);
  sub_238031964();
  v49 = *(v63 + 8);
  v49(v48, v6);
  v50 = sub_238031E74();

  LODWORD(v46) = [v59 fileExistsAtPath_];

  if (v46)
  {
    v51 = *(v30 + 2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v30;
    if (!isUniquelyReferenced_nonNull_native || v51 >= *(v30 + 3) >> 1)
    {
      v30 = sub_237FB5A94(isUniquelyReferenced_nonNull_native, v51 + 1, 1, v30);
      v71[0] = v30;
    }

    v53 = v62;
    sub_23801171C(0, 0, 1, v57, v41);
  }

  else
  {
    v53 = v62;
  }

  v49(v61, v6);
  [v53 unlock];
  return v30;
}

uint64_t sub_23800A2CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_238010D44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_2380102C8(v5, sub_237FC6BA0, sub_237FC6AD0);
  *a1 = v2;
  return result;
}

uint64_t DeviceActivityDataStore.localZones.getter()
{
  v1 = DeviceActivityDataStore.localDeviceIdentifier()();
  if (v2)
  {
    return v0;
  }

  v26 = MEMORY[0x277D84F90];
  sub_23800F29C(0, 3, 0);
  v0 = v26;
  v3 = byte_284AE5BC8;

  MEMORY[0x2383E5050](95, 0xE100000000000000);
  v4 = 0xE500000000000000;
  v5 = 0x796C696144;
  if (v3 != 1)
  {
    v5 = 0x796C6B656557;
    v4 = 0xE600000000000000;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x796C72756F48;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x2383E5050](v6, v7);

  v9 = *(v26 + 16);
  v8 = *(v26 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_23800F29C((v8 > 1), v9 + 1, 1);
    v0 = v26;
  }

  *(v0 + 16) = v9 + 1;
  v10 = v0 + 24 * v9;
  *(v10 + 32) = v1;
  *(v10 + 48) = v3;
  v11 = byte_284AE5BC9;

  MEMORY[0x2383E5050](95, 0xE100000000000000);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0xE500000000000000;
      v13 = 0x796C696144;
      goto LABEL_18;
    }

    v12 = 0xE600000000000000;
    v14 = 1801807191;
  }

  else
  {
    v12 = 0xE600000000000000;
    v14 = 1920298824;
  }

  v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
LABEL_18:
  MEMORY[0x2383E5050](v13, v12);

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_23800F29C((v15 > 1), v16 + 1, 1);
  }

  *(v0 + 16) = v16 + 1;
  v17 = v0 + 24 * v16;
  *(v17 + 32) = v1;
  *(v17 + 48) = v11;
  v18 = byte_284AE5BCA;

  MEMORY[0x2383E5050](95, 0xE100000000000000);
  if (!v18)
  {
    v19 = 0xE600000000000000;
    v21 = 1920298824;
LABEL_25:
    v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
    goto LABEL_26;
  }

  if (v18 != 1)
  {
    v19 = 0xE600000000000000;
    v21 = 1801807191;
    goto LABEL_25;
  }

  v19 = 0xE500000000000000;
  v20 = 0x796C696144;
LABEL_26:
  MEMORY[0x2383E5050](v20, v19);

  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_23800F29C((v22 > 1), v23 + 1, 1);
  }

  *(v0 + 16) = v23 + 1;
  v24 = v0 + 24 * v23;
  *(v24 + 32) = v1;
  *(v24 + 48) = v18;

  return v0;
}

id DeviceActivityDataStore.write(localStartDate:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238031994();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = sub_238031A64();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = v2[8];
  [v21 lock];
  v67 = a1;
  sub_237FA90E4(a1, v10, &qword_27DEE51E0, &qword_2380365F0);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    v23 = v21;
    sub_237FA5750(v10, &qword_27DEE51E0, &qword_2380365F0);
    v24 = v72;
  }

  else
  {
    v63 = v21;
    v25 = v12;
    v26 = v11;
    v27 = *(v25 + 32);
    v27(v20, v10, v26);
    v28 = v72;
    DeviceActivityDataStore.localStartDate()(v71);
    v72 = v28;
    if (v28)
    {
      (*(v25 + 8))(v20, v26);
      v29 = v63;
      return [v29 unlock];
    }

    if (v22(v71, 1, v26) == 1)
    {
      (*(v25 + 8))(v20, v26);
      sub_237FA5750(v71, &qword_27DEE51E0, &qword_2380365F0);
    }

    else
    {
      v30 = v66;
      v27(v66, v71, v26);
      v31 = v20;
      if (sub_238031A14())
      {
        v32 = v26;
        v23 = v63;
        if (qword_280C353A0 != -1)
        {
          swift_once();
        }

        v33 = sub_238031DB4();
        __swift_project_value_buffer(v33, qword_280C36C80);
        v34 = v25;
        v35 = *(v25 + 16);
        v35(v65, v31, v32);
        v36 = v64;
        v35(v64, v66, v32);
        v37 = sub_238031D94();
        v38 = sub_2380320F4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v69 = v37;
          v40 = v39;
          v67 = v39;
          v70 = swift_slowAlloc();
          v73 = v70;
          *v40 = 136446466;
          sub_238011FC8(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v71 = v31;
          LODWORD(v68) = v38;
          v41 = v65;
          v42 = sub_2380324C4();
          v43 = v36;
          v45 = v44;
          v62 = *(v34 + 8);
          v62(v41, v32);
          v46 = sub_237FDF8EC(v42, v45, &v73);

          v47 = v67;
          *(v67 + 4) = v46;
          *(v47 + 12) = 2082;
          v48 = sub_2380324C4();
          v50 = v49;
          v51 = v62;
          v62(v43, v32);
          v52 = sub_237FDF8EC(v48, v50, &v73);

          *(v47 + 14) = v52;
          v53 = v69;
          _os_log_impl(&dword_237FA1000, v69, v68, "Not writing local start date: %{public}s because the current start date is earlier: %{public}s", v47, 0x16u);
          v54 = v70;
          swift_arrayDestroy();
          MEMORY[0x2383E5E30](v54, -1, -1);
          MEMORY[0x2383E5E30](v47, -1, -1);

          v51(v66, v32);
          v51(v71, v32);
        }

        else
        {

          v60 = *(v34 + 8);
          v60(v36, v32);
          v60(v65, v32);
          v60(v66, v32);
          v60(v31, v32);
        }

        return [v23 unlock];
      }

      v55 = *(v25 + 8);
      v55(v30, v26);
      v55(v20, v26);
    }

    v24 = v72;
    v23 = v63;
  }

  v56 = v2[3];
  v57 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v56);
  v58 = v68;
  (*(v57 + 24))(v56, v57);
  sub_2380036E4(v67, v58, &qword_27DEE51E0, &qword_2380365F0, MEMORY[0x277CC9578], sub_23800DF04);
  if (v24)
  {
    (v69[1].isa)(v58, v70);
    v29 = v23;
    return [v29 unlock];
  }

  (v69[1].isa)(v58, v70);
  return [v23 unlock];
}

id DeviceActivityDataStore.overwrite(localStartDate:)(uint64_t a1)
{
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[8];
  [v7 lock];
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 24))(v8, v9);
  sub_2380036E4(a1, v6, &qword_27DEE51E0, &qword_2380365F0, MEMORY[0x277CC9578], sub_23800DF04);
  (*(v4 + 8))(v6, v3);
  return [v7 unlock];
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.localFirstWeekday()()
{
  v24 = sub_238031B74();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v25 = v0[8];
  [v25 lock];
  v11 = v0[3];
  v10 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v11);
  (*(v10 + 32))(v11, v10);
  v12 = sub_2380010BC(v9);
  if (v1)
  {
    v13 = *(v5 + 8);
    v13(v9, v4);
    v27 = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    if (!swift_dynamicCast() || v26)
    {

      return [v25 unlock];
    }

    sub_238031B44();
    v15 = sub_238031AE4();
    (*(v22 + 8))(v3, v24);
    v16 = v0[3];
    v17 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v16);
    v18 = v23;
    (*(v17 + 32))(v16, v17);
    v19 = v15;
    sub_238003254(v15, 0, v18);
    v13(v18, v4);
  }

  else
  {
    v19 = v12;
    (*(v5 + 8))(v9, v4);
  }

  [v25 unlock];
  return v19;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.write(localFirstWeekday:)(Swift::Int localFirstWeekday)
{
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[8];
  [v7 lock];
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 32))(v8, v9);
  sub_238003254(localFirstWeekday, 0, v6);
  (*(v4 + 8))(v6, v3);
  [v7 unlock];
}

id DeviceActivityDataStore.localTimeZone()@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v2 = v1;
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v20 = v1[8];
  [v20 lock];
  v13 = v1[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  DeviceActivityDataLocating.localTimeZoneURL.getter(v13, v14);
  v15 = v19[1];
  sub_238001444(v6, &qword_27DEE54B0, &qword_2380357B0, sub_23800D1BC, v10);
  if (!v15)
  {
    (*(v4 + 8))(v6, v3);
    sub_237FA5AE0(v10, v12, &qword_27DEE54B0, &qword_2380357B0);
LABEL_7:
    sub_237FA5AE0(v12, v19[0], &qword_27DEE54B0, &qword_2380357B0);
    return [v20 unlock];
  }

  (*(v4 + 8))(v6, v3);
  v22 = v15;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  if (swift_dynamicCast() && !v21)
  {

    v17 = sub_238031B94();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);

    goto LABEL_7;
  }

  return [v20 unlock];
}

id DeviceActivityDataStore.write(localTimeZone:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = v2[8];
  [v11 lock];
  v12 = sub_238031B94();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  DeviceActivityDataLocating.localTimeZoneURL.getter(v14, v15);
  sub_2380036E4(v10, v7, &qword_27DEE54B0, &qword_2380357B0, MEMORY[0x277CC9A70], sub_23800E250);
  (*(v5 + 8))(v7, v4);
  sub_237FA5750(v10, &qword_27DEE54B0, &qword_2380357B0);
  return [v11 unlock];
}

id DeviceActivityDataStore.lastLocalRefreshDate(userAltDSID:segmentIntervals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v120 = a2;
  v103 = a1;
  v96 = a4;
  v7 = sub_238031A64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5520, &qword_2380359D8);
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v96 - v14;
  v132 = sub_238031994();
  v15 = *(v132 - 8);
  v16 = MEMORY[0x28223BE20](v132);
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v96 - v19;
  MEMORY[0x28223BE20](v18);
  v126 = &v96 - v20;
  v112 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v129 = *(v112 - 8);
  v21 = MEMORY[0x28223BE20](v112);
  v99 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v96 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v98 = &v96 - v27;
  MEMORY[0x28223BE20](v26);
  v97 = &v96 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v118 = &v96 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v96 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v96 - v38;
  v130 = v5[8];
  [v130 lock];
  v123 = *(v8 + 56);
  v124 = v8 + 56;
  v123(v39, 1, 1, v7);
  v41 = *(a3 + 16);
  if (v41)
  {
    v42 = v15;
    v43 = 0;
    v44 = (a3 + 32);
    v117 = v5[7];
    v116 = (v42 + 16);
    v131 = (v42 + 8);
    v110 = (v129 + 56);
    v100 = (v8 + 16);
    v115 = (v8 + 48);
    v107 = (v8 + 32);
    v104 = (v8 + 8);
    *&v40 = 136446210;
    v106 = v40;
    v127 = v5;
    v109 = v12;
    v101 = v25;
    v108 = v32;
    v125 = v37;
    v122 = v39;
    v114 = v7;
    do
    {
      v45 = *v44;
      v128 = v44 + 1;
      v129 = v41;
      v123(v37, 1, 1, v7);
      v46 = v5[3];
      v47 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v46);
      LODWORD(v121) = v45;
      LOBYTE(v133) = v45;
      v48 = v126;
      (*(v47 + 56))(&v133, v46, v47);
      [v130 lock];
      if (qword_280C353A0 != -1)
      {
        swift_once();
      }

      v49 = sub_238031DB4();
      __swift_project_value_buffer(v49, qword_280C36C80);
      v50 = v119;
      v51 = v132;
      (*v116)(v119, v48, v132);
      v52 = sub_238031D94();
      v53 = sub_2380320E4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = v50;
        v56 = swift_slowAlloc();
        v133 = v56;
        *v54 = v106;
        sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v57 = v43;
        v58 = sub_2380324C4();
        v60 = v59;
        v61 = *v131;
        (*v131)(v55, v51);
        v62 = v58;
        v43 = v57;
        v48 = v126;
        v63 = sub_237FDF8EC(v62, v60, &v133);
        v5 = v127;

        *(v54 + 4) = v63;
        _os_log_impl(&dword_237FA1000, v52, v53, "Reading object from URL %{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x2383E5E30](v56, -1, -1);
        MEMORY[0x2383E5E30](v54, -1, -1);
      }

      else
      {

        v61 = *v131;
        (*v131)(v50, v51);
      }

      v37 = v125;
      sub_238031964();
      v64 = sub_238031E74();

      v65 = [v117 fileExistsAtPath_];

      v7 = v114;
      v66 = v118;
      if (v65)
      {
        v67 = sub_2380319A4();
        if (!v43)
        {
          v78 = v101;
          v79 = v67;
          v80 = v68;
          sub_23800CF0C(v101);
          sub_237FA5048(v79, v80);
          v85 = v98;
          sub_237FA509C(v78, v98, type metadata accessor for _DeviceActivityData.Metadata);
          [v130 unlock];
          v61(v126, v132);
          v37 = v125;
          sub_237FA5750(v125, &qword_27DEE51E0, &qword_2380365F0);
          v86 = v85;
          v87 = v97;
          sub_237FA509C(v86, v97, type metadata accessor for _DeviceActivityData.Metadata);
          (*v100)(v37, v87 + *(v112 + 36), v7);
          v84 = v87;
          goto LABEL_19;
        }

        [v130 unlock];

        v61(v48, v132);
        v43 = 0;
        if (!v120)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [v130 unlock];
        v61(v48, v132);
        if (!v120)
        {
          goto LABEL_20;
        }
      }

      v69 = DeviceActivityDataStore.localDeviceIdentifier()();
      if (!v43)
      {
        v71 = v127[3];
        v72 = v127[4];
        __swift_project_boxed_opaque_existential_1(v127, v71);
        LOBYTE(v133) = v121;
        v73 = *(v72 + 112);
        v74 = v71;
        v5 = v127;
        v75 = v72;
        v76 = v102;
        v73(v103, v120, v69._countAndFlagsBits, v69._object, &v133, v74, v75);

        v77 = v111;
        sub_238000CE8(v76, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v111);
        v61(v76, v132);
        v37 = v125;
        sub_237FA5750(v125, &qword_27DEE51E0, &qword_2380365F0);
        v81 = v112;
        (*v110)(v77, 0, 1, v112);
        v82 = v77;
        v83 = v99;
        sub_237FA509C(v82, v99, type metadata accessor for _DeviceActivityData.Metadata);
        (*v100)(v37, v83 + *(v81 + 36), v7);
        v84 = v83;
LABEL_19:
        sub_238011DF0(v84, type metadata accessor for _DeviceActivityData.Metadata);
        v123(v37, 0, 1, v7);
        goto LABEL_20;
      }

      v43 = 0;
      v70 = v111;
      (*v110)(v111, 1, 1, v112);
      sub_237FA5750(v70, &qword_27DEE5520, &qword_2380359D8);
LABEL_20:
      sub_237FA90E4(v37, v66, &qword_27DEE51E0, &qword_2380365F0);
      v88 = *v115;
      if ((*v115)(v66, 1, v7) == 1)
      {
        sub_237FA5750(v37, &qword_27DEE51E0, &qword_2380365F0);
        sub_237FA5750(v66, &qword_27DEE51E0, &qword_2380365F0);
        v39 = v122;
      }

      else
      {
        v113 = v43;
        v89 = v109;
        v121 = *v107;
        v121(v109, v66, v7);
        v39 = v122;
        v90 = v108;
        sub_237FA90E4(v122, v108, &qword_27DEE51E0, &qword_2380365F0);
        if (v88(v90, 1, v7) == 1)
        {
          sub_237FA5750(v37, &qword_27DEE51E0, &qword_2380365F0);
          sub_237FA5750(v39, &qword_27DEE51E0, &qword_2380365F0);
          sub_237FA5750(v90, &qword_27DEE51E0, &qword_2380365F0);
          v121(v39, v89, v7);
          v123(v39, 0, 1, v7);
          v5 = v127;
        }

        else
        {
          v91 = v105;
          v121(v105, v90, v7);
          v92 = sub_238031A14();
          v93 = *v104;
          v94 = v91;
          v37 = v125;
          (*v104)(v94, v7);
          sub_237FA5750(v37, &qword_27DEE51E0, &qword_2380365F0);
          if (v92)
          {
            v39 = v122;
            sub_237FA5750(v122, &qword_27DEE51E0, &qword_2380365F0);
            v121(v39, v89, v7);
            v123(v39, 0, 1, v7);
            v5 = v127;
          }

          else
          {
            v93(v89, v7);
            v5 = v127;
            v39 = v122;
          }
        }

        v43 = v113;
      }

      v44 = v128;
      v41 = v129 - 1;
    }

    while (v129 != 1);
  }

  sub_237FA5AE0(v39, v96, &qword_27DEE51E0, &qword_2380365F0);
  return [v130 unlock];
}

uint64_t DeviceActivityDataStore.SyncStateType.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t DeviceActivityDataStore.syncState<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v9 = sub_238031994();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  LOBYTE(a1) = *a1;
  v16 = v6[3];
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v16);
  if (a1)
  {
    (*(v17 + 144))(v16, v17);
    sub_23800181C(v13, v20, v21, a5);
    v15 = v13;
  }

  else
  {
    (*(v17 + 136))(v16, v17);
    sub_23800181C(v15, v20, v21, a5);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t DeviceActivityDataStore.write<A>(_:type:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v30 = a4;
  v34 = sub_238031994();
  v33 = *(v34 - 8);
  v9 = MEMORY[0x28223BE20](v34);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v32 = sub_2380321B4();
  v14 = *(v32 - 8);
  v15 = MEMORY[0x28223BE20](v32);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *a2;
  v21 = *(a3 - 8);
  v22 = *(v21 + 16);
  v23 = (v21 + 56);
  if (v20)
  {
    v22(v17, a1, a3);
    (*v23)(v17, 0, 1, a3);
    v24 = v5[3];
    v25 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v24);
    (*(v25 + 144))(v24, v25);
    sub_238003D08(v17, v11, a3, v30, v31);
    v13 = v11;
    v19 = v17;
  }

  else
  {
    v22(&v29 - v18, a1, a3);
    (*v23)(v19, 0, 1, a3);
    v26 = v5[3];
    v27 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v26);
    (*(v27 + 136))(v26, v27);
    sub_238003D08(v19, v13, a3, v30, v31);
  }

  (*(v33 + 8))(v13, v34);
  return (*(v14 + 8))(v19, v32);
}

uint64_t sub_23800CC10@<X0>(uint64_t a3@<X8>)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55C8, &qword_238035C28);
  sub_237FA2D38();
  sub_238031754();
  if (!v3)
  {
    if (*(v15 + 16) && (v5 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v6 & 1) != 0))
    {
      v7 = v5;
      v8 = *(v15 + 56);
      v9 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
      sub_237FA4FE0(v8 + *(*(v9 - 8) + 72) * v7, a3, type metadata accessor for _DeviceActivityData.ActivitySegment);
    }

    else
    {

      sub_237FAC9F0(v10, v11, v12);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_23800CD70@<X0>(uint64_t a3@<X8>)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55B8, &qword_238035C10);
  sub_238011A58(&qword_280C34AB8, &qword_27DEE55B8, &qword_238035C10, sub_238011CBC);
  sub_238031754();
  if (!v3)
  {
    if (*(v15 + 16) && (v5 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v6 & 1) != 0))
    {
      v7 = v5;
      v8 = *(v15 + 56);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
      sub_237FA90E4(v8 + *(*(v9 - 8) + 72) * v7, a3, &qword_27DEE51E0, &qword_2380365F0);
    }

    else
    {

      sub_237FAC9F0(v10, v11, v12);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_23800CF0C@<X0>(uint64_t a3@<X8>)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5528, &unk_2380359E8);
  sub_2380114A4();
  sub_238031754();
  if (!v3)
  {
    if (*(v15 + 16) && (v5 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v6 & 1) != 0))
    {
      v7 = v5;
      v8 = *(v15 + 56);
      v9 = type metadata accessor for _DeviceActivityData.Metadata(0);
      sub_237FA4FE0(v8 + *(*(v9 - 8) + 72) * v7, a3, type metadata accessor for _DeviceActivityData.Metadata);
    }

    else
    {

      sub_237FAC9F0(v10, v11, v12);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_23800D06C(uint64_t a1, uint64_t a2)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5588, &qword_238035BE0);
  sub_238011B90(&qword_280C34A90, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_238031754();
  if (v2)
  {
    goto LABEL_6;
  }

  if (!*(v11 + 16) || (v4 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v5 & 1) == 0))
  {

    sub_237FAC9F0(v6, v7, v8);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
LABEL_6:

    return a2;
  }

  a2 = *(*(v11 + 56) + 8 * v4);

  return a2;
}

uint64_t sub_23800D1BC@<X0>(uint64_t a3@<X8>)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5570, &qword_238035BC8);
  sub_238011A58(&qword_280C34AB0, &qword_27DEE5570, &qword_238035BC8, sub_238011ADC);
  sub_238031754();
  if (!v3)
  {
    if (*(v15 + 16) && (v5 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v6 & 1) != 0))
    {
      v7 = v5;
      v8 = *(v15 + 56);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
      sub_237FA90E4(v8 + *(*(v9 - 8) + 72) * v7, a3, &qword_27DEE54B0, &qword_2380357B0);
    }

    else
    {

      sub_237FAC9F0(v10, v11, v12);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t static DeviceActivityDataStore.decode<A>(_:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v8 = sub_2380321B4();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  sub_238031E04();
  v23 = MEMORY[0x277D83808];
  v24 = a4;
  swift_getWitnessTable();
  sub_238031754();
  if (v5)
  {
  }

  v11 = v20;
  v12 = v25;
  v21 = 0x65756C6176;
  v22 = 0xE500000000000000;
  sub_238031E14();

  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v10, 1, a3) == 1)
  {
    v14 = (*(v11 + 8))(v10, v8);
    sub_237FAC9F0(v14, v15, v16);
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  return (*(v13 + 32))(v12, v10, a3);
}

uint64_t sub_23800D5D0()
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = sub_238031744();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v34 = sub_238031994();
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v14);
  (*(v13 + 8))(v14, v13);
  sub_238031964();
  v15 = v0[7];
  v16 = sub_238031E74();

  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5518, &qword_2380359D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238035770;
    v19 = *MEMORY[0x277CBE878];
    *(inited + 32) = *MEMORY[0x277CBE878];
    v20 = v19;
    sub_238010EC4(inited);
    swift_setDeallocating();
    sub_238011DF0(inited + 32, type metadata accessor for URLResourceKey);
    v21 = v33;
    sub_2380318A4();
    if (v21)
    {
      (*(v10 + 8))(v12, v34);
    }

    v27 = sub_238031714();
    if (v27 == 2 || (v27 & 1) == 0)
    {
      sub_238031734();
      sub_238031724();
      sub_2380318C4();
      v28 = v32;
      v29 = *(v31 + 8);
      v29(v4, v32);
      v29(v7, v28);
    }

    else
    {
      (*(v31 + 8))(v7, v32);
    }
  }

  else
  {
    v23 = sub_2380318D4();
    v35 = 0;
    v24 = [v15 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v35];

    if (v24)
    {
      v25 = v35;
      sub_238031734();
      sub_238031724();
      sub_2380318C4();
      (*(v31 + 8))(v9, v32);
    }

    else
    {
      v26 = v35;
      sub_238031864();

      swift_willThrow();
    }
  }

  return (*(v10 + 8))(v12, v34);
}

uint64_t sub_23800D9F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55E0, &qword_238035C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238035770;
  *(inited + 32) = 0x65756C6176;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_237FD37A8(inited);
  swift_setDeallocating();
  sub_237FA5750(inited + 32, &qword_27DEE55E8, &qword_238035C50);
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55F0, &qword_238035C58);
  sub_237FAC418(&qword_280C34AC8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v5 = sub_238031794();

  return v5;
}

uint64_t sub_23800DB5C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55D0, &unk_238035C30);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE52A8, &qword_238034738) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238035770;
  v5 = (v4 + v3);
  v6 = v2[14];
  *v5 = 0x65756C6176;
  v5[1] = 0xE500000000000000;
  sub_237FA4FE0(a1, v5 + v6, type metadata accessor for _DeviceActivityData.Metadata);
  sub_237FD4204(v4);
  swift_setDeallocating();
  sub_237FA5750(v5, &qword_27DEE52A8, &qword_238034738);
  swift_deallocClassInstance();
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5528, &unk_2380359E8);
  sub_238011F0C();
  v7 = sub_238031794();

  return v7;
}

uint64_t sub_23800DD30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55C0, &qword_238035C18);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5298, &qword_238035C20) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238035770;
  v5 = (v4 + v3);
  v6 = v2[14];
  *v5 = 0x65756C6176;
  v5[1] = 0xE500000000000000;
  sub_237FA4FE0(a1, v5 + v6, type metadata accessor for _DeviceActivityData.ActivitySegment);
  sub_237FD4400(v4);
  swift_setDeallocating();
  sub_237FA5750(v5, &qword_27DEE5298, &qword_238035C20);
  swift_deallocClassInstance();
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55C8, &qword_238035C28);
  sub_238011E50();
  v7 = sub_238031794();

  return v7;
}

uint64_t sub_23800DF04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5598, &qword_238035BE8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5278, &qword_238035BF0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238035770;
  v5 = (v4 + v3);
  v6 = v2[14];
  *v5 = 0x65756C6176;
  *(v5 + 1) = 0xE500000000000000;
  v7 = sub_238031A64();
  (*(*(v7 - 8) + 16))(&v5[v6], a1, v7);
  sub_237FD45FC(v4);
  swift_setDeallocating();
  sub_237FA5750(v5, &qword_27DEE5278, &qword_238035BF0);
  swift_deallocClassInstance();
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55A0, &qword_238035BF8);
  sub_238011C00();
  v8 = sub_238031794();

  return v8;
}

uint64_t sub_23800E0F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5578, &unk_238035BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238035770;
  *(inited + 32) = 0x65756C6176;
  v3 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  sub_237FD47FC(inited);
  swift_setDeallocating();
  sub_237FA5750(v3, &qword_27DEE5580, &qword_238036580);
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5588, &qword_238035BE0);
  sub_238011B90(&qword_27DEE5590, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  v4 = sub_238031794();

  return v4;
}

uint64_t sub_23800E250(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5550, &unk_238035BB0);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5268, &qword_238034708) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238035770;
  v5 = (v4 + v3);
  v6 = v2[14];
  *v5 = 0x65756C6176;
  *(v5 + 1) = 0xE500000000000000;
  v7 = sub_238031B94();
  (*(*(v7 - 8) + 16))(&v5[v6], a1, v7);
  sub_237FD490C(v4);
  swift_setDeallocating();
  sub_237FA5750(v5, &qword_27DEE5268, &qword_238034708);
  swift_deallocClassInstance();
  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5558, &qword_238035BC0);
  sub_23801199C();
  v8 = sub_238031794();

  return v8;
}

uint64_t static DeviceActivityDataStore.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D837D0];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2380324D4();
  swift_allocObject();
  v8 = sub_238031FB4();
  v9 = *(TupleTypeMetadata2 + 48);
  *v10 = 0x65756C6176;
  *(v10 + 1) = 0xE500000000000000;
  (*(*(a2 - 8) + 16))(&v10[v9], a1, a2);
  sub_238032024();
  sub_2380110B8(v8, v6, a2, MEMORY[0x277D837E0]);

  sub_2380317B4();
  swift_allocObject();
  sub_2380317A4();
  sub_238031784();
  sub_238031E04();
  swift_getWitnessTable();
  v11 = sub_238031794();

  return v11;
}

uint64_t DeviceActivityDataStore.saveMetadata(for:user:lastUpdatedDate:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v50 = sub_238031994();
  v7 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5520, &qword_2380359D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v41 - v14;
  v51 = a2[1];
  if (v51)
  {
    v16 = 0;
    v17 = a1[1];
    v58 = *a1;
    v42 = (v7 + 8);
    v18 = a1[2];
    v47 = a1[3];
    v48 = v18;
    v19 = a1[4];
    v45 = a1[5];
    v46 = v19;
    v44 = a1[6];
    v55 = xmmword_238033ED0;
    v43 = *a2;
    v49 = v9;
    v41 = a2;
    while (1)
    {
      v54 = v4;
      v20 = byte_284AE5BD0[v16 + 32];
      v56 = v58;
      v57 = v17;

      MEMORY[0x2383E5050](95, 0xE100000000000000);
      if (v20)
      {
        v21 = v20 == 1 ? 0x796C696144 : 0x796C6B656557;
        v22 = v20 == 1 ? 0xE500000000000000 : 0xE600000000000000;
      }

      else
      {
        v22 = 0xE600000000000000;
        v21 = 0x796C72756F48;
      }

      MEMORY[0x2383E5050](v21, v22);

      v23 = v56;
      v24 = v57;
      v25 = type metadata accessor for _DeviceActivityData.Metadata(0);
      sub_237FA4FE0(a2, &v15[v25[6]], type metadata accessor for _DeviceActivityData.User);
      v26 = v25[9];
      v27 = sub_238031A64();
      (*(*(v27 - 8) + 16))(&v15[v26], v52, v27);
      *(v15 + 1) = v55;
      *v15 = v23;
      *(v15 + 1) = v24;

      v28 = v47;

      v29 = v45;

      sub_237FA38D0(0, 0xF000000000000000);
      *(v15 + 1) = v55;
      v30 = &v15[v25[7]];
      v31 = v17;
      v32 = v58;
      *v30 = v58;
      *(v30 + 1) = v31;
      *(v30 + 2) = v48;
      *(v30 + 3) = v28;
      *(v30 + 4) = v46;
      *(v30 + 5) = v29;
      *(v30 + 6) = v44;
      v15[v25[8]] = v20;
      (*(*(v25 - 1) + 56))(v15, 0, 1, v25);
      v33 = v53[3];
      v34 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v33);
      LOBYTE(v56) = v20;
      v35 = v32;
      v17 = v31;
      v36 = v33;
      v37 = v49;
      (*(v34 + 112))(v43, v51, v35, v31, &v56, v36, v34);
      v38 = v54;
      sub_238002614(v15, v37);
      v4 = v38;
      if (v38)
      {
        break;
      }

      ++v16;
      (*v42)(v37, v50);
      result = sub_237FA5750(v15, &qword_27DEE5520, &qword_2380359D8);
      a2 = v41;
      if (v16 == 3)
      {
        return result;
      }
    }

    (*v42)(v37, v50);
    return sub_237FA5750(v15, &qword_27DEE5520, &qword_2380359D8);
  }

  else
  {
    sub_237FAC9F0(v11, v12, v13);
    swift_allocError();
    *v40 = 2;
    return swift_willThrow();
  }
}

void sub_23800EA8C(void *a1@<X8>)
{
  v4[3] = &type metadata for DeviceActivityDataLocations;
  v4[4] = &protocol witness table for DeviceActivityDataLocations;
  sub_237FC1C9C(v4, a1);
  v2 = sub_237FFD6A8();
  a1[7] = [objc_opt_self() defaultManager];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  a1[8] = v3;
  a1[5] = v2;
  a1[6] = &off_284AE4AE8;
  _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0();
}

uint64_t sub_23800EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v7 = v6;
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v15 = v7[3];
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v15);
  v23 = v14;
  (*(v16 + 112))(a1, v19, v20, v21, &v23, v15, v16);
  sub_238000CE8(v13, type metadata accessor for _DeviceActivityData.Metadata, sub_23800CF0C, type metadata accessor for _DeviceActivityData.Metadata, v22);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23800ED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a5;
  v14 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  v23 = v12;
  sub_2380319E4();
  v15 = sub_238032054();
  (*(v13 + 128))(v18, v19, v20, v21, &v23, v15, v16, v14, v13);

  sub_238000CE8(v11, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v22);
  return (*(v9 + 8))(v11, v8);
}

id sub_23800EFAC(uint64_t a1)
{
  v3 = sub_238031994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[8];
  [v7 lock];
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 32))(v8, v9);
  sub_238003254(a1, 0, v6);
  (*(v4 + 8))(v6, v3);
  return [v7 unlock];
}

void *sub_23800F134(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23800F154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23800F174(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23800F194(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23800F1B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F8D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23800F1D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800F9DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23800F1F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800FBE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23800F214(void *a1, int64_t a2, char a3)
{
  result = sub_237FAA9EC(a1, a2, a3, *v3, &qword_27DEE5030, &qword_238033C18, type metadata accessor for _DeviceActivityData);
  *v3 = result;
  return result;
}

void *sub_23800F258(void *a1, int64_t a2, char a3)
{
  result = sub_237FAA9EC(a1, a2, a3, *v3, &qword_27DEE5038, &unk_238033C20, type metadata accessor for _DeviceActivityData.CategoryActivity);
  *v3 = result;
  return result;
}

void *sub_23800F29C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23800FCE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23800F2BC(void *a1, int64_t a2, char a3)
{
  result = sub_237FAA9EC(a1, a2, a3, *v3, &qword_27DEE5040, &qword_238035C60, type metadata accessor for _DeviceActivityData.WebDomainActivity);
  *v3 = result;
  return result;
}

void *sub_23800F300(void *a1, int64_t a2, char a3)
{
  result = sub_237FAA9EC(a1, a2, a3, *v3, &qword_27DEE5048, &unk_238033C30, type metadata accessor for _DeviceActivityData.ApplicationActivity);
  *v3 = result;
  return result;
}

void *sub_23800F344(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5608, &unk_238035C80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8) - 8);
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

void *sub_23800F534(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5540, &qword_238035B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5548, &unk_238035BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23800F67C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5068, &unk_238035CA0);
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

void *sub_23800F788(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5610, &qword_238035C90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5618, &qword_238035C98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23800F8D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
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

char *sub_23800F9DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5018, &qword_238033C00);
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

char *sub_23800FAEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55F8, &qword_238035C68);
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

char *sub_23800FBE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5600, &unk_238035C70);
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

void *sub_23800FCE4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55A8, &qword_238035C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55B0, &qword_238035C08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23800FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031E24();

  return sub_238010140(a1, v6, a2, a3);
}

uint64_t sub_23800FE84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_238032204() + 1) & ~v5;
    do
    {
      sub_2380325B4();

      sub_238031ED4();
      v9 = sub_2380325F4();

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

unint64_t sub_238010034(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_23801007C(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_2380100C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_237FC156C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_238010140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_238031E64();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2380102C8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2380324B4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_238031FD4();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}