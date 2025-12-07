uint64_t sub_2697D1F84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F0, &qword_2698659F8);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_269694FFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_269694FFC(v29, v30);
    result = sub_269855194();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_269694FFC(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_2697D2248(char a1)
{
  result = 0x6F632F697269732FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x696C68637461772FLL;
      break;
    case 3:
      result = 0x61772F697269732FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x746E65746E6F632FLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697D2348(char a1)
{
  if (!a1)
  {
    return 5522759;
  }

  if (a1 == 1)
  {
    return 1414745936;
  }

  return 0x4554454C4544;
}

unint64_t sub_2697D238C(void *a1)
{
  v1 = 0xD000000000000031;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      sub_269855204();
      MEMORY[0x26D645A60](0xD000000000000039, 0x80000002698803E0);
      v3 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v4 = sub_269854AE4();
      MEMORY[0x26D645A60](v4);

      return 0;
    }
  }

  return v1;
}

uint64_t sub_2697D2484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697D2348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697D24B0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v13 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_269854F74();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v10 = sub_269854994();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_3_1();
  *a2 = 0x401E000000000000;
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854974();
  sub_2697D5034(&qword_2815718E8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v13);
  a2[1] = sub_269854FB4();
  return sub_26968E5D4(a1, (a2 + 2));
}

uint64_t sub_2697D270C()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 249) = v2;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v0;
  v5 = sub_2698548D4();
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_5_12(v5);
  *(v1 + 136) = v6;
  *(v1 + 144) = swift_task_alloc();
  v7 = sub_269854324();
  *(v1 + 152) = v7;
  OUTLINED_FUNCTION_5_12(v7);
  *(v1 + 160) = v8;
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v9 = sub_269854824();
  *(v1 + 184) = v9;
  OUTLINED_FUNCTION_5_12(v9);
  *(v1 + 192) = v10;
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2697D2884()
{
  v25 = v0;
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v1 = sub_269854854();
  __swift_project_value_buffer(v1, qword_28033D958);
  sub_269854814();
  v2 = sub_269854844();
  v3 = sub_269854FF4();
  if (sub_269855074())
  {
    v4 = *(v0 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v7 = sub_2697D2248(v4);
    v9 = sub_26974F520(v7, v8, &v24);

    *(v5 + 4) = v9;
    v10 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v2, v3, v10, "UTSOperation.request", "endpoint=%{signpost.telemetry:string1,public}s enableTelemetry=YES", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D647170](v6, -1, -1);
    MEMORY[0x26D647170](v5, -1, -1);
  }

  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 249);
  v15 = *(v0 + 248);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  (*(v13 + 16))(*(v0 + 200), v11, v12);
  sub_269854894();
  swift_allocObject();
  *(v0 + 216) = sub_269854884();
  (*(v13 + 8))(v11, v12);
  v18 = *v17;
  sub_2697D4CBC(v17, v0 + 16);
  v19 = swift_allocObject();
  v20 = *(v0 + 32);
  *(v19 + 40) = *(v0 + 16);
  *(v0 + 224) = v19;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v15;
  *(v19 + 56) = v20;
  *(v19 + 72) = *(v0 + 48);
  *(v19 + 88) = *(v0 + 64);

  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_2697D2B68;
  v22.n128_u64[0] = v18;

  return MEMORY[0x2821C8618](v0 + 72, &unk_2698659C8, v19, &type metadata for UTSResponse, v22);
}

uint64_t sub_2697D2B68()
{
  OUTLINED_FUNCTION_2_7();
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v2 = v5;
  *(v5 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697D2C74()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];
  v6 = v0[12];
  sub_2697D305C(v0[27]);

  v4 = v0[1];

  return v4(v1, v2, v3, v6);
}

uint64_t sub_2697D2D54()
{
  v1 = *(v0 + 240);

  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);

    (*(v6 + 32))(v3, v4, v5);
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = __swift_project_value_buffer(v9, qword_281571B38);
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_269684000, v11, v12, "UTSOperation timed out waiting on a response", v13, 2u);
      MEMORY[0x26D647170](v13, -1, -1);
    }

    v14 = *(v0 + 160);
    v25 = *(v0 + 168);
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    v20 = *(v0 + 248);
    v21 = *(v0 + 249);

    (*(v18 + 8))(v15, v17);
    __swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40));
    sub_2697B3060(v20, v21);
    sub_2697D5034(&qword_2803253C8, MEMORY[0x277D61CF0], MEMORY[0x277D61CF8]);
    swift_allocError();
    (*(v14 + 16))(v22, v25, v16);
    swift_willThrow();
    (*(v14 + 8))(v25, v16);
  }

  else
  {

    swift_willThrow();
  }

  sub_2697D305C(*(v0 + 216));

  OUTLINED_FUNCTION_7_7();

  return v23();
}

uint64_t sub_2697D305C(uint64_t a1)
{
  v1 = sub_269854864();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v9 = sub_269854854();
  __swift_project_value_buffer(v9, qword_28033D958);
  v10 = sub_269854844();
  sub_269854874();
  v11 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v10, v11, v14, "UTSOperation.request", v12, v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2697D32E8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a5;
  *(v5 + 65) = a4;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2697D3314);
}

uint64_t sub_2697D3314()
{
  v1 = *(v0 + 65);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_2697D3424;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822008A0](v7);
}

uint64_t sub_2697D3424()
{
  OUTLINED_FUNCTION_2_7();
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v2 = v6;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v3);
  }

  else
  {

    OUTLINED_FUNCTION_7_7();

    return v4();
  }
}

uint64_t sub_2697D354C()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697D35A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v84 = a5;
  v85 = a1;
  v8 = sub_269854954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269854994();
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  v82 = *(v83 - 8);
  v80 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v72 - v13;
  v77 = sub_269854AD4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269851B24();
  v16 = *(v15 - 8);
  v97 = v15;
  v98 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269851B64();
  v20 = MEMORY[0x28223BE20](v19);
  v91 = v8;
  v92 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  v90 = v9;
  v79 = v20;
  v78 = v22;
  if (a2 == 1)
  {
  }

  else
  {
    v23 = sub_269855584();

    if ((v23 & 1) == 0)
    {

      v49 = 0;
      v51 = 0xF000000000000000;
LABEL_30:
      v101 = v49;
      v52 = MEMORY[0x277D84F90];
      v53 = sub_2697D1F84(a3);

      v54 = a2;
      v55 = qword_269865B08[a2];
      v56 = qword_269865B20[v54];
      v57 = sub_2697D2248(a4);
      v59 = v58;
      sub_26969329C(0, &qword_2803253D8, 0x277D7A978);
      sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
      v60 = sub_269855044();
      sub_2697D4DCC(v49, v51);
      v61 = sub_2697D4028(v57, v59, v53, v55, v56, v49, v51, 0, 0x696C632D69726973, 0xEB00000000746E65, 0, v60, 0);
      v62 = v82;
      v63 = v81;
      v64 = v83;
      (*(v82 + 16))(v81, v85, v83);
      v65 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      (*(v62 + 32))(v66 + v65, v63, v64);
      aBlock[4] = sub_2697D4DE0;
      aBlock[5] = v66;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2696A8DD0;
      aBlock[3] = &block_descriptor_19;
      v67 = _Block_copy(aBlock);
      v68 = v61;
      v69 = v86;
      sub_269854974();
      v102 = v52;
      sub_2697D5034(&qword_281571918, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
      sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
      v70 = v88;
      v71 = v91;
      sub_269855174();
      MEMORY[0x26D645EA0](0, v69, v70, v67);
      _Block_release(v67);

      sub_2696CE4BC(v101, v51);
      (*(v90 + 8))(v70, v71);
      (*(v87 + 8))(v69, v89);
    }
  }

  v24 = MEMORY[0x277D84F90];
  v74 = sub_269854A04();
  sub_269851B54();
  v25 = *(a3 + 16);
  if (!v25)
  {
LABEL_25:
    v45 = v92;
    v46 = sub_269851B34();
    MEMORY[0x26D642A40](v46);
    if (v47)
    {
      v48 = v75;
      sub_269854AC4();
      v49 = sub_269854AA4();
      v51 = v50;

      (*(v76 + 8))(v48, v77);
      (*(v78 + 8))(v45, v79);
    }

    else
    {
      (*(v78 + 8))(v45, v79);
      v49 = 0;
      v51 = 0xF000000000000000;
    }

    a3 = v74;
    goto LABEL_30;
  }

  v72 = a2;
  v73 = a4;
  aBlock[0] = v24;
  sub_269815390(0, v25, 0);
  v26 = aBlock[0];
  result = sub_2697F1D9C();
  v30 = result;
  v31 = 0;
  v32 = a3 + 64;
  v95 = a3 + 64;
  v96 = v98 + 32;
  v93 = a3 + 72;
  v94 = v25;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v30 < 1 << *(a3 + 32))
    {
      v33 = v30 >> 6;
      if ((*(v32 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_32;
      }

      if (*(a3 + 36) != v28)
      {
        goto LABEL_33;
      }

      v99 = v29;
      v100 = v31;
      v101 = v28;

      sub_269851B14();

      aBlock[0] = v26;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_269815390(v34 > 1, v35 + 1, 1);
        v26 = aBlock[0];
      }

      *(v26 + 16) = v35 + 1;
      result = (*(v98 + 32))(v26 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v35, v18, v97);
      v36 = 1 << *(a3 + 32);
      if (v30 >= v36)
      {
        goto LABEL_34;
      }

      v32 = v95;
      v37 = *(v95 + 8 * v33);
      if ((v37 & (1 << v30)) == 0)
      {
        goto LABEL_35;
      }

      if (*(a3 + 36) != v101)
      {
        goto LABEL_36;
      }

      v38 = v37 & (-2 << (v30 & 0x3F));
      if (v38)
      {
        v36 = __clz(__rbit64(v38)) | v30 & 0x7FFFFFFFFFFFFFC0;
        v39 = v94;
      }

      else
      {
        v40 = v33 << 6;
        v41 = v33 + 1;
        v39 = v94;
        v42 = (v93 + 8 * v33);
        while (v41 < (v36 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_26968E5C8(v30, v101, v99 & 1);
            v36 = __clz(__rbit64(v43)) + v40;
            goto LABEL_21;
          }
        }

        result = sub_26968E5C8(v30, v101, v99 & 1);
      }

LABEL_21:
      v31 = v100 + 1;
      if (v100 + 1 == v39)
      {
        LOBYTE(a4) = v73;
        LOBYTE(a2) = v72;
        goto LABEL_25;
      }

      v29 = 0;
      v28 = *(a3 + 36);
      v30 = v36;
      if (v36 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_2697D4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13)
{
  v18 = sub_269854A64();

  if (a3)
  {
    v19 = sub_2698549D4();

    if (a5)
    {
LABEL_3:
      v20 = sub_269854A64();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if (a7 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_269851C84();
    sub_2696CE4BC(a6, a7);
  }

  if (a8)
  {
    v22 = sub_2698549D4();
  }

  else
  {
    v22 = 0;
  }

  if (a10)
  {
    v23 = sub_269854A64();
  }

  else
  {
    v23 = 0;
  }

  v24 = [swift_getObjCClassFromMetadata() requestPropertiesWithEndpoint:v18 queryParameters:v19 httpMethod:v20 httpBody:v21 headers:v22 caller:v23 timeout:a11 apiVersion:a12 options:a13];

  return v24;
}

void sub_2697D41F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D7A980]) initWithRequestProperties_];
  (*(v5 + 16))(v7, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_2697D4ED4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_14_1;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  sub_269687554(sub_2697D4ED4, v10);

  [v12 setCompletionBlock_];

  _Block_release(v11);

  [v12 start];
}

uint64_t sub_2697D4408(void *a1, uint64_t a2)
{
  v77 = a2;
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253E0, &unk_2698659E8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - v20;
  v22 = [a1 error];
  if (!v22)
  {
    v76 = v3;
    v38 = [a1 responseDictionary];
    v39 = sub_2698549E4();

    v40 = [a1 request];
    if (v40)
    {
      v41 = v40;
      sub_269851A54();

      v42 = sub_269851A74();
      v43 = 0;
    }

    else
    {
      v42 = sub_269851A74();
      v43 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v43, 1, v42);
    sub_2697D4F70(v16, v18);
    sub_269851A74();
    if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
    {
      v44 = &qword_2803253E0;
      v45 = &unk_2698659E8;
      v46 = v18;
    }

    else
    {
      sub_269851A64();
      (*(*(v42 - 8) + 8))(v18, v42);
      v47 = sub_269851C74();
      if (__swift_getEnumTagSinglePayload(v21, 1, v47) != 1)
      {
        v48 = sub_269851BF4();
        v49 = v50;
        (*(*(v47 - 8) + 8))(v21, v47);
LABEL_16:
        v51 = [a1 responseStatusCode];
        v52 = qword_280322700;

        if (v51 == 200)
        {
          if (v52 != -1)
          {
            swift_once();
          }

          v53 = v76;
          v54 = __swift_project_value_buffer(v76, qword_281571B38);
          (*(v4 + 16))(v7, v54, v53);

          v55 = sub_2698548B4();
          v56 = sub_269854F14();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v75 = v39;
            v59 = v48;
            v60 = v58;
            v79[0] = v58;
            *v57 = 136315138;
            v61 = sub_26974F520(v59, v49, v79);

            *(v57 + 4) = v61;
            _os_log_impl(&dword_269684000, v55, v56, "UTSOperation received success status for url: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v60);
            v62 = v60;
            v48 = v59;
            v39 = v75;
            MEMORY[0x26D647170](v62, -1, -1);
            MEMORY[0x26D647170](v57, -1, -1);

            v63 = *(v4 + 8);
            v64 = v7;
LABEL_25:
            v74 = v76;
LABEL_29:
            v63(v64, v74);
            v79[0] = v39;
            v79[1] = v48;
            v79[2] = v49;
            v79[3] = v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
            return sub_269854D54();
          }

          v63 = *(v4 + 8);
          v64 = v7;
        }

        else
        {
          if (v52 != -1)
          {
            swift_once();
          }

          v53 = v76;
          v65 = __swift_project_value_buffer(v76, qword_281571B38);
          (*(v4 + 16))(v10, v65, v53);

          v66 = sub_2698548B4();
          v67 = sub_269854F24();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v79[0] = v75;
            *v68 = 134349314;
            *(v68 + 4) = v51;

            *(v68 + 12) = 2080;
            v69 = v51;
            v70 = v39;
            v71 = v48;
            v72 = sub_26974F520(v48, v49, v79);

            *(v68 + 14) = v72;
            v48 = v71;
            v39 = v70;
            v51 = v69;
            _os_log_impl(&dword_269684000, v66, v67, "UTSOperation received failure status %{public}ld for url: %s", v68, 0x16u);
            v73 = v75;
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x26D647170](v73, -1, -1);
            MEMORY[0x26D647170](v68, -1, -1);

            v63 = *(v4 + 8);
            v64 = v10;
            goto LABEL_25;
          }

          swift_bridgeObjectRelease_n();

          v63 = *(v4 + 8);
          v64 = v10;
        }

        v74 = v53;
        goto LABEL_29;
      }

      v44 = &qword_280323030;
      v45 = &qword_26985BAE0;
      v46 = v21;
    }

    sub_269698048(v46, v44, v45);
    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_16;
  }

  v23 = v22;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v3, qword_281571B38);
  (*(v4 + 16))(v12, v24, v3);
  v25 = v3;
  v26 = v23;
  v27 = sub_2698548B4();
  v28 = sub_269854F24();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v78 = v26;
    v79[0] = v30;
    *v29 = 136315138;
    v31 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v32 = sub_269854AE4();
    v34 = sub_26974F520(v32, v33, v79);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_269684000, v27, v28, "UTSOperation returned an error: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x26D647170](v30, -1, -1);
    MEMORY[0x26D647170](v29, -1, -1);
  }

  (*(v4 + 8))(v12, v25);
  sub_2697D4FE0();
  v35 = swift_allocError();
  *v36 = v23;
  v79[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  return sub_269854D44();
}

uint64_t sub_2697D4CF4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2696BBE14;

  return sub_2697D32E8(a1, v6, v4, v5, v1 + 40);
}

uint64_t sub_2697D4DCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2696CE464(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_7Tm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8);
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2697D4EEC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253D0, &unk_2698659D8) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_2697D4F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253E0, &unk_2698659E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2697D4FE0()
{
  result = qword_2803253E8;
  if (!qword_2803253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253E8);
  }

  return result;
}

uint64_t sub_2697D5034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents17UTSOperationErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2697D5094(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2697D50E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2697D5170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_26977D4F4(*(a1 + 16), 0);
  sub_2697E21C8(&v8, (v3 + 4), v1, a1);
  v5 = v4;
  v6 = v8;

  sub_26968E614(v6);
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v8 = v3;
  sub_2697B4758(&v8);
  return v8;
}

uint64_t sub_2697D5254()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269851D34();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D52F8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2697DA7E8(v0[2]);
  v0[7] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[3];
    sub_269851D24();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_10_24(v3);

    return sub_2697D270C();
  }

  else
  {

    v5 = sub_2697D9F34();
    OUTLINED_FUNCTION_30_1(&type metadata for ContentResolutionError, v5);
    OUTLINED_FUNCTION_30_15(v6, 3);

    OUTLINED_FUNCTION_7_7();

    return v7();
  }
}

uint64_t sub_2697D5424()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  *v6 = *v2;
  v5[9] = v7;
  v5[10] = v8;
  v5[11] = v1;

  if (v1)
  {
  }

  else
  {
    v5[12] = v3;
    v5[13] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

void sub_2697D5548()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_2696C9DAC();
  sub_2697D5170(v4);

  sub_2697B1BA4();

  OUTLINED_FUNCTION_40_7();
  if (v2)
  {
    v5 = OUTLINED_FUNCTION_17_20();
    v6(v5);

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_71();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38_12();

  sub_2697C3B1C(v3, v4, v1);

  v9 = OUTLINED_FUNCTION_17_20();
  v10(v9);

  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_71();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697D56BC()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

id sub_2697D5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[5] = *MEMORY[0x277D85DE8];
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2698549D4();
  v34[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v34];

  v12 = v34[0];
  if (v11)
  {
    v13 = sub_269851C94();
    v15 = v14;

    sub_269851AA4();
    swift_allocObject();
    sub_269851A94();
    sub_2697DA2AC();
    sub_269851A84();
    if (!v3)
    {

      sub_2696C1F3C(v13, v15);
      return v34[1];
    }

    sub_2696C1F3C(v13, v15);
  }

  else
  {
    v16 = v12;
    v4 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v6 + 16))(v8, v17, v5);

  v18 = v4;
  v19 = sub_2698548B4();
  v20 = sub_269854F24();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136315394;
    v23 = sub_2698549F4();
    v25 = sub_26974F520(v23, v24, v34);
    v33[0] = v5;
    v26 = v6;
    v27 = v25;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v33[1] = v4;
    v28 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v29 = sub_269854AE4();
    v31 = sub_26974F520(v29, v30, v34);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_269684000, v19, v20, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v22, -1, -1);
    MEMORY[0x26D647170](v21, -1, -1);

    (*(v26 + 8))(v8, v33[0]);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return swift_willThrow();
}

id sub_2697D5B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2698549D4();
  v36[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v36];

  v12 = v36[0];
  if (v11)
  {
    v13 = sub_269851C94();
    v15 = v14;

    sub_269851AA4();
    swift_allocObject();
    sub_269851A94();
    sub_2697DA134();
    sub_269851A84();
    if (!v3)
    {

      sub_2696C1F3C(v13, v15);
      return v36[1];
    }

    sub_2696C1F3C(v13, v15);
  }

  else
  {
    v16 = v12;
    v4 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v6 + 16))(v8, v17, v5);

  v18 = v4;
  v19 = sub_2698548B4();
  v20 = sub_269854F24();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136315394;
    v23 = sub_2698549F4();
    v25 = sub_26974F520(v23, v24, v36);
    v34 = v5;
    v26 = v6;
    v27 = v25;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v35 = v4;
    v28 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v29 = sub_269854AE4();
    v31 = sub_26974F520(v29, v30, v36);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_269684000, v19, v20, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v22, -1, -1);
    MEMORY[0x26D647170](v21, -1, -1);

    (*(v26 + 8))(v8, v34);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return swift_willThrow();
}

uint64_t sub_2697D5FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2698549D4();
  v37[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v37];

  v12 = v37[0];
  if (v11)
  {
    v13 = sub_269851C94();
    v15 = v14;

    sub_269851AA4();
    swift_allocObject();
    sub_269851A94();
    sub_2697DA258();
    sub_269851A84();
    if (!v3)
    {

      sub_2696C1F3C(v13, v15);
      return v36;
    }

    sub_2696C1F3C(v13, v15);
  }

  else
  {
    v16 = v12;
    v4 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v6 + 16))(v8, v17, v5);

  v18 = v4;
  v19 = sub_2698548B4();
  v20 = sub_269854F24();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37[0] = v22;
    *v21 = 136315394;
    v23 = sub_2698549F4();
    v25 = sub_26974F520(v23, v24, v37);
    v34 = v5;
    v26 = v6;
    v27 = v25;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v35 = v4;
    v28 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v29 = sub_269854AE4();
    v31 = sub_26974F520(v29, v30, v37);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_269684000, v19, v20, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v22, -1, -1);
    MEMORY[0x26D647170](v21, -1, -1);

    (*(v26 + 8))(v8, v34);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return swift_willThrow();
}

uint64_t sub_2697D63D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = v6;
  v36[1] = a3;
  v40[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = sub_2698549D4();
  v40[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v40];

  v16 = v40[0];
  v37 = v9;
  if (v15)
  {
    v17 = v10;
    v18 = sub_269851C94();
    v20 = v19;

    sub_269851AA4();
    swift_allocObject();
    sub_269851A94();
    a5();
    sub_269851A84();
    if (!v6)
    {

      sub_2696C1F3C(v18, v20);
      return v39;
    }

    sub_2696C1F3C(v18, v20);
    v10 = v17;
    v9 = v37;
  }

  else
  {
    v21 = v16;
    v8 = sub_269851BD4();

    swift_willThrow();
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_281571B38);
  (*(v10 + 16))(v12, v22, v9);

  v23 = v8;
  v24 = sub_2698548B4();
  v25 = sub_269854F24();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_2698549F4();
    v29 = v10;
    v30 = sub_26974F520(v27, v28, v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v38 = v8;
    v31 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v32 = sub_269854AE4();
    v34 = sub_26974F520(v32, v33, v40);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_269684000, v24, v25, "Unexpected exception when serializing dictionary to/from JSON for content conversion: %s, error: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v29 + 8))(v12, v37);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  return swift_willThrow();
}

uint64_t sub_2697D680C()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269851D34();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D68B0()
{
  OUTLINED_FUNCTION_2_7();
  sub_269851D24();
  OUTLINED_FUNCTION_43_6();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2697D695C;

  return sub_2697D270C();
}

uint64_t sub_2697D695C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  *v6 = *v2;
  v5[8] = v7;
  v5[9] = v8;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v3;
    v5[12] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

void sub_2697D6A78()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  sub_2696C9DAC();
  v5 = sub_2697D5170(v4);
  sub_2697B1BA4();

  OUTLINED_FUNCTION_40_7();
  if (v2)
  {
    v6 = OUTLINED_FUNCTION_17_20();
    v7(v6);

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_71();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38_12();

  sub_2697C3B1C(v3, v5, v1);

  v10 = OUTLINED_FUNCTION_17_20();
  v11(v10);

  OUTLINED_FUNCTION_16_19();
  OUTLINED_FUNCTION_71();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2697D6BE4()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_2697D6C58()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v3 = _s11ContentLiteOMa(0);
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D6CF8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 7562345;
  *(inited + 40) = 0xE300000000000000;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  v3 = sub_2697B47C4();
  v4 = OUTLINED_FUNCTION_36_9(v3);
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(v0 + 120) = OUTLINED_FUNCTION_11_5(v4, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_10_24(v7);

  return sub_2697D270C();
}

uint64_t sub_2697D6E24()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_24();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  *v6 = *v2;
  v5[17] = v7;
  v5[18] = v8;
  v5[19] = v1;

  if (!v1)
  {

    v5[20] = v3;
    v5[21] = v0;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697D6F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v15 = v14[19];
  v16 = sub_2697D5FA0(v14[17], v14[21], v14[18]);
  if (v15)
  {

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_116();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v26 = v14[13];

    v44 = MEMORY[0x277D84F90];
    v27 = -1;
    v28 = -1 << *(v16 + 32);
    if (-v28 < 64)
    {
      v27 = ~(-1 << -v28);
    }

    v29 = v27 & *(v16 + 64);
    v30 = (63 - v28) >> 6;

    v31 = 0;
    while (v29)
    {
LABEL_13:
      v33 = v14[14];
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      sub_2697DA198(*(v16 + 56) + *(v26 + 72) * (v34 | (v31 << 6)), v33);
      v35 = sub_2697CB710();
      result = sub_2697DA1FC(v33);
      if (v35)
      {
        MEMORY[0x26D645B90](result);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        result = sub_269854CF4();
      }
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v30)
      {
        break;
      }

      v29 = *(v16 + 64 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_116();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v44, a11, a12, a13, a14);
  }
}

uint64_t sub_2697D7134()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697D7198()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698548D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697D7240()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v0[8] = sub_2697D76BC(v1, v0[3]);
    OUTLINED_FUNCTION_43_6();
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_24_16(v2);

    return sub_2697D270C();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v5 = v0[6];
    v4 = v0[7];
    OUTLINED_FUNCTION_33_0(v0[5], qword_281571B38);
    (*(v5 + 16))(v4);
    v6 = sub_2698548B4();
    v7 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v7))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v8, v9, "Request to getPlayables with empty list of canonical IDs");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v10 = OUTLINED_FUNCTION_12_23();
    v11(v10);
    v12 = sub_2697D9F34();
    OUTLINED_FUNCTION_30_1(&type metadata for ContentResolutionError, v12);
    OUTLINED_FUNCTION_30_15(v13, 4);

    OUTLINED_FUNCTION_7_7();

    return v14();
  }
}

uint64_t sub_2697D740C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_14_6();
  v10 = v9;
  OUTLINED_FUNCTION_3_6();
  *v11 = v10;
  v10[10] = v0;

  if (!v0)
  {
    v10[11] = v4;
    v10[12] = v8;

    v10[13] = v2;
    v10[14] = v6;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2697D7548()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  sub_2697D63D4(v0[12], v0[14], v0[11], v0[13], sub_2697D9F88, &_s17SmartPlayResponseVN);
  v3 = v2;

  if (v1)
  {

    OUTLINED_FUNCTION_7_7();

    return v4();
  }

  else
  {

    v6 = v0[1];

    return v6(v3);
  }
}

uint64_t sub_2697D7658()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697D76BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000269880460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  *(inited + 48) = sub_269854A44();
  *(inited + 56) = v4;
  v5 = sub_269854A04();
  if (*(a2 + 16))
  {
    sub_269854A44();
    swift_isUniquelyReferenced_nonNull_native();
    sub_269840AF0();
  }

  return v5;
}

uint64_t sub_2697D780C()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2698548D4();
  v1[13] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[14] = v4;
  v1[15] = OUTLINED_FUNCTION_37_0();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D78D4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269857710;
    *(inited + 32) = 0x7364497374617473;
    *(inited + 40) = 0xE800000000000000;
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    v3 = sub_2697B47C4();
    v4 = OUTLINED_FUNCTION_36_9(v3);
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    *(v0 + 152) = OUTLINED_FUNCTION_11_5(v4, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_10_24(v7);

    return sub_2697D270C();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    OUTLINED_FUNCTION_33_0(*(v0 + 104), qword_281571B38);
    (*(v10 + 16))(v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v12))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v13, v14, "Request to sportsTuneIn with empty list of matchup IDs");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v15 = OUTLINED_FUNCTION_12_23();
    v16(v15);
    v17 = sub_2697D9F34();
    OUTLINED_FUNCTION_30_1(&type metadata for ContentResolutionError, v17);
    OUTLINED_FUNCTION_30_15(v18, 4);

    OUTLINED_FUNCTION_7_7();

    return v19();
  }
}

uint64_t sub_2697D7B44()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  v3[21] = v5;
  v3[22] = v6;
  v3[23] = v7;
  v3[24] = v8;
  v3[25] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697D7C54()
{
  if (v0[24] != 200)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    __swift_project_value_buffer(v0[13], qword_281571B38);
    v18 = OUTLINED_FUNCTION_4_32();
    v19(v18);

    v20 = sub_2698548B4();
    v21 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v21))
    {
      v22 = v0[24];
      v23 = OUTLINED_FUNCTION_27_2();
      *v23 = 134217984;
      *(v23 + 4) = v22;

      OUTLINED_FUNCTION_9_30(&dword_269684000, v24, v25, "Unexpected failure code %ld while requesting sportsTuneIn");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
    }

    (*(v0[14] + 8))(v0[16], v0[13]);
    v26 = sub_2697D9F34();
    OUTLINED_FUNCTION_30_1(&type metadata for ContentResolutionError, v26);
    OUTLINED_FUNCTION_30_15(v27, 5);
    goto LABEL_14;
  }

  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  OUTLINED_FUNCTION_33_0(v0[13], qword_28033D910);
  v39 = *(v2 + 16);
  v40 = v3;
  v39(v1);
  v4 = sub_2698548B4();
  v5 = sub_269854F04();
  if (OUTLINED_FUNCTION_19_5(v5))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v6, v7, "Retrieving UTS sportsTuneIn Response");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v8 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v12 = v0[18];
  v14 = v0[13];
  v13 = v0[14];

  v15 = *(v13 + 8);
  v15(v12, v14);
  v16 = sub_2697D63D4(v11, v10, v9, 200, sub_2697D9FDC, &unk_287A43B78);
  if (v8)
  {
LABEL_14:

    OUTLINED_FUNCTION_7_7();

    return v28();
  }

  v36 = v17;
  v37 = v16;
  v38 = v15;
  (v39)(v0[17], v40, v0[13]);
  v30 = sub_2698548B4();
  v31 = sub_269854F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_16_2();
    *v32 = 0;
    _os_log_impl(&dword_269684000, v30, v31, "Successfully deserialized sportsTuneIn response", v32, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v33 = v0[17];
  v34 = v0[13];

  v38(v33, v34);

  v35 = v0[1];

  return v35(v37, v36);
}

uint64_t sub_2697D8078()
{
  OUTLINED_FUNCTION_8_5();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697D8100()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2698548D4();
  v1[11] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[12] = v4;
  v1[13] = OUTLINED_FUNCTION_37_0();
  v1[14] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D81B0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[9];
  OUTLINED_FUNCTION_43_6();
  v0[15] = sub_2697D8798(v1);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_10_24(v2);

  return sub_2697D270C();
}

uint64_t sub_2697D8264()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  v3[17] = v5;
  v3[18] = v6;
  v3[19] = v7;
  v3[20] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

void sub_2697D8370()
{
  OUTLINED_FUNCTION_49();
  if (v0[19] == 200)
  {

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    __swift_project_value_buffer(v0[11], qword_281571B38);
    v1 = OUTLINED_FUNCTION_4_32();
    v2(v1);

    v3 = sub_2698548B4();
    v4 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v4))
    {
      v5 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v5, 3.852e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v6, v7, "Unexpected failure code %ld while adding to WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    (*(v0[12] + 8))(v0[14], v0[11]);
    v8 = sub_2697DA0E0();
    v9 = OUTLINED_FUNCTION_30_1(&type metadata for UTSError, v8);
    OUTLINED_FUNCTION_15_24(v9, v10);
    swift_willThrow();

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = *(v22 + 160);

  *(v22 + 56) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v27 = *(v22 + 64);
  if (v27)
  {
    sub_2697DA188(v27);
LABEL_4:

    goto LABEL_5;
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v38 = *(v22 + 96);
  v37 = *(v22 + 104);
  v39 = *(v22 + 72);
  OUTLINED_FUNCTION_33_0(*(v22 + 88), qword_281571B38);
  (*(v38 + 16))(v37);
  sub_2697DA030(v39, v22 + 16);
  v40 = sub_2698548B4();
  v41 = sub_269854F24();
  sub_2697DA08C(v39);
  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v22 + 96);
  v43 = *(v22 + 104);
  v45 = *(v22 + 88);
  if (v42)
  {
    a9 = *(v22 + 104);
    v46 = OUTLINED_FUNCTION_27_2();
    v47 = swift_slowAlloc();
    a10 = v47;
    *v46 = 136315138;
    v48 = sub_2697DBFB8();
    v50 = sub_26974F520(v48, v49, &a10);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_269684000, v40, v41, "Timed out adding %s to WatchList", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v44 + 8))(a9, v45);
  }

  else
  {

    (*(v44 + 8))(v43, v45);
  }

  v51 = sub_2697B9A20();
  OUTLINED_FUNCTION_30_1(&type metadata for WatchListError, v51);
  OUTLINED_FUNCTION_30_15(v52, 2);

LABEL_5:

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D8798(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (a1[4])
  {
    v4 = a1[2];
    v3 = a1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26985C7B0;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 64) = 0x6449646E617262;
    *(inited + 72) = 0xE700000000000000;
    *(inited + 80) = v4;
    *(inited + 88) = v3;
    *(inited + 96) = 0x657079546469;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 112) = 0x6C616E7265747845;
    *(inited + 120) = 0xE800000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2698580D0;
    *(v6 + 32) = 25705;
    *(v6 + 40) = 0xE200000000000000;
    *(v6 + 48) = v2;
    *(v6 + 56) = v1;
    *(v6 + 64) = 0x657079546469;
    *(v6 + 72) = 0xE600000000000000;
    *(v6 + 80) = 0x6163696E6F6E6143;
    *(v6 + 88) = 0xE90000000000006CLL;
  }

  return sub_269854A04();
}

uint64_t sub_2697D88FC()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2698548D4();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697D89AC()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[8];
  OUTLINED_FUNCTION_43_6();
  v0[14] = sub_2697D8798(v1);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_10_24(v2);

  return sub_2697D270C();
}

uint64_t sub_2697D8A60()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v6;
  v3[18] = v7;
  v3[19] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

void sub_2697D8B6C()
{
  OUTLINED_FUNCTION_49();
  if (v0[18] == 200)
  {

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    __swift_project_value_buffer(v0[10], qword_281571B38);
    v1 = OUTLINED_FUNCTION_4_32();
    v2(v1);

    v3 = sub_2698548B4();
    v4 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v4))
    {
      v5 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v5, 3.9122e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v6, v7, "Unexpected failure code %{public}ld while removing from WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    v8 = sub_2697DA0E0();
    v9 = OUTLINED_FUNCTION_30_1(&type metadata for UTSError, v8);
    OUTLINED_FUNCTION_15_24(v9, v10);
    swift_willThrow();

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D8D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v25 = v22[19];
  v26 = v22[13];
  v27 = v22[11];
  v28 = v22[8];
  OUTLINED_FUNCTION_33_0(v22[10], qword_281571B38);
  (*(v27 + 16))(v26);
  sub_2697DA030(v28, (v22 + 2));
  v29 = v25;
  v30 = sub_2698548B4();
  v31 = sub_269854F24();
  sub_2697DA08C(v28);

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[19];
    a9 = v22[13];
    v34 = v22[10];
    v33 = v22[11];
    v35 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = sub_2697DBFB8();
    v38 = sub_26974F520(v36, v37, &a10);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v22[7] = v32;
    v39 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v40 = sub_269854AE4();
    v42 = sub_26974F520(v40, v41, &a10);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_269684000, v30, v31, "Error removing %s from WatchList: %s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v33 + 8))(a9, v34);
  }

  else
  {
    v43 = v22[13];
    v44 = v22[10];
    v45 = v22[11];

    (*(v45 + 8))(v43, v44);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D8FA4()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_2698548D4();
  v1[14] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697D9058()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  *(v0 + 144) = OUTLINED_FUNCTION_11_5(v4, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_24_16(v6);

  return sub_2697D270C();
}

uint64_t sub_2697D9168()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_39_6(v5, v6, v7, v8);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

void sub_2697D9268()
{
  OUTLINED_FUNCTION_49();
  if (v0[23] == 200)
  {
    v2 = v0[13];
    sub_2697D966C(v0[20], v0[21], v0[22], 200);
    OUTLINED_FUNCTION_33_13();
    if (!v2)
    {

      OUTLINED_FUNCTION_35_13();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_34_10();
    __swift_project_value_buffer(v1, qword_281571B38);
    v3 = OUTLINED_FUNCTION_4_32();
    v4(v3);

    v5 = sub_2698548B4();
    v6 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v6))
    {
      v7 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v7, 3.9122e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v8, v9, "Unexpected failure code %{public}ld while removing from WatchList");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v10 = OUTLINED_FUNCTION_32_11();
    v11(v10);
    v12 = sub_2697DA0E0();
    v13 = OUTLINED_FUNCTION_30_1(&type metadata for UTSError, v12);
    OUTLINED_FUNCTION_15_24(v13, v14);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_35_13();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697D947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v25 = v22[24];
  v26 = v22[17];
  v27 = v22[15];
  OUTLINED_FUNCTION_33_0(v22[14], qword_281571B38);
  (*(v27 + 16))(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  LOBYTE(v27) = sub_269854F24();

  if (os_log_type_enabled(v29, v27))
  {
    v30 = v22[24];
    v31 = v22[17];
    v32 = v22[14];
    v33 = v22[15];
    v34 = OUTLINED_FUNCTION_27_2();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v34 = 136315138;
    v22[10] = v30;
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a10);

    *(v34 + 4) = v39;
    OUTLINED_FUNCTION_119(&dword_269684000, v40, v41, "Error searching against WatchList: %s");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v33 + 8))(v31, v32);
  }

  else
  {

    v42 = OUTLINED_FUNCTION_12_23();
    v43(v42);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697D966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_269854824();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226D8 != -1)
  {
    swift_once();
  }

  v13 = qword_281571B68;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547E4();
  v14 = sub_2697D5B68(a1, a2, a3);
  if (!v4)
  {
    a4 = sub_2697C3B1C(v14, v15, v16);

    sub_269854FE4();
    sub_2698547E4();
  }

  (*(v10 + 8))(v12, v9);
  return a4;
}

uint64_t sub_2697D984C()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_2698548D4();
  v1[14] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697D9900()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  *(v0 + 144) = OUTLINED_FUNCTION_11_5(v4, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_24_16(v6);

  return sub_2697D270C();
}

uint64_t sub_2697D9A0C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_39_6(v5, v6, v7, v8);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697D9B0C()
{
  OUTLINED_FUNCTION_49();
  if (v2[23] != 200)
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_34_10();
    __swift_project_value_buffer(v3, qword_281571B38);
    v7 = OUTLINED_FUNCTION_4_32();
    v8(v7);

    v9 = sub_2698548B4();
    v10 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v10))
    {
      v11 = OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_42_8(v11, 3.852e-34);

      OUTLINED_FUNCTION_46_4();

      OUTLINED_FUNCTION_9_30(&dword_269684000, v12, v13, "Unexpected failure code %ld while searching for live services");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_44_8();
    }

    v14 = OUTLINED_FUNCTION_32_11();
    v15(v14);
    v16 = sub_2697DA0E0();
    v17 = OUTLINED_FUNCTION_30_1(&type metadata for UTSError, v16);
    OUTLINED_FUNCTION_15_24(v17, v18);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_2697D5730(v2[20], v2[21], v2[22]);
  OUTLINED_FUNCTION_33_13();
  if (v1)
  {

LABEL_10:

    OUTLINED_FUNCTION_7_7();

    return v19();
  }

  v21 = v4;
  v22 = v5;
  v23 = v6;

  v24 = v2[1];

  return v24(v0, v21, v22, v23);
}

uint64_t sub_2697D9D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v25 = v22[24];
  v26 = v22[17];
  v27 = v22[15];
  OUTLINED_FUNCTION_33_0(v22[14], qword_281571B38);
  (*(v27 + 16))(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  LOBYTE(v27) = sub_269854F24();

  if (os_log_type_enabled(v29, v27))
  {
    v30 = v22[24];
    v31 = v22[17];
    v32 = v22[14];
    v33 = v22[15];
    v34 = OUTLINED_FUNCTION_27_2();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v34 = 136315138;
    v22[10] = v30;
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a10);

    *(v34 + 4) = v39;
    OUTLINED_FUNCTION_119(&dword_269684000, v40, v41, "Error searching for live services: %s");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v33 + 8))(v31, v32);
  }

  else
  {

    v42 = OUTLINED_FUNCTION_12_23();
    v43(v42);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

unint64_t sub_2697D9F34()
{
  result = qword_280325400;
  if (!qword_280325400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325400);
  }

  return result;
}

unint64_t sub_2697D9F88()
{
  result = qword_280325408;
  if (!qword_280325408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325408);
  }

  return result;
}

unint64_t sub_2697D9FDC()
{
  result = qword_280325410;
  if (!qword_280325410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325410);
  }

  return result;
}

unint64_t sub_2697DA0E0()
{
  result = qword_280325418;
  if (!qword_280325418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325418);
  }

  return result;
}

unint64_t sub_2697DA134()
{
  result = qword_280325420;
  if (!qword_280325420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325420);
  }

  return result;
}

void sub_2697DA188(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_2697DA198(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentLiteOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697DA1FC(uint64_t a1)
{
  v2 = _s11ContentLiteOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697DA258()
{
  result = qword_280325428;
  if (!qword_280325428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325428);
  }

  return result;
}

unint64_t sub_2697DA2AC()
{
  result = qword_280325430;
  if (!qword_280325430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325430);
  }

  return result;
}

uint64_t sub_2697DA30C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DA34C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_30_15@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1)
{

  return sub_269854A44();
}

uint64_t OUTLINED_FUNCTION_38_12()
{
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[23] = a4;
  v4[24] = v5;
}

id OUTLINED_FUNCTION_40_7()
{

  return sub_2697D5B68(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_42_8(float *a1, float a2)
{
  *a1 = a2;
}

void *OUTLINED_FUNCTION_43_6()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_44_8()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  *(v0 + 4) = v1;
}

void *sub_2697DA594(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v41 = *(a1 + 16);
  v4 = (a1 + 48);
  v39 = xmmword_269857710;
  while (1)
  {
    if (v41 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v42 = v4;
    v7 = *v4;
    v8 = sub_26973D314(v7);
    v10 = v3[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    v14 = v9;
    v15 = v3[3];

    if (v15 < v12)
    {
      sub_26980E770(v12, 1, v16, v17, v18, v19, v20, v21, v37, v38, v39, SBYTE4(v39));
      v3 = v43;
      v22 = sub_26973D314(v7);
      if ((v14 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v13 = v22;
    }

    if (v14)
    {
      v24 = v3[7];
      v25 = *(v24 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v13) = v25;
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26977CBAC();
        v25 = v34;
        *(v24 + 8 * v13) = v34;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_26977CBAC();
        v25 = v35;
        *(v24 + 8 * v13) = v35;
      }

      v28 = v42;
      *(v25 + 16) = v27 + 1;
      v29 = v25 + 24 * v27;
      *(v29 + 32) = v5;
      *(v29 + 40) = v6;
      *(v29 + 48) = v7;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A0, &qword_26985F418);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      *(v30 + 32) = v5;
      *(v30 + 40) = v6;
      *(v30 + 48) = v7;
      v3[(v13 >> 6) + 8] |= 1 << v13;
      *(v3[6] + v13) = v7;
      *(v3[7] + 8 * v13) = v30;
      v31 = v3[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v3[2] = v33;
      v28 = v42;
    }

    v4 = v28 + 24;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325438, qword_269865CA8);
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2697DA7E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_24_3();
  v54 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v53 - v6;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_3();
  v53[0] = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v53 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BC0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v15 = *(a1 + 8);
  *(inited + 48) = *a1;
  *(inited + 56) = v15;
  *(inited + 64) = 0x6163696E6F6E6163;
  *(inited + 72) = 0xEF6449776F68536CLL;
  v16 = *(a1 + 24);
  *(inited + 80) = *(a1 + 16);
  *(inited + 88) = v16;
  *(inited + 96) = 0x6F54676E69676170;
  *(inited + 104) = 0xEB000000006E656BLL;
  v17 = *(a1 + 40);
  *(inited + 112) = *(a1 + 32);
  *(inited + 120) = v17;
  *(inited + 128) = 0x7365726E6567;
  *(inited + 136) = 0xE600000000000000;
  v18 = *(a1 + 104);
  *(inited + 144) = *(a1 + 96);
  *(inited + 152) = v18;
  *(inited + 160) = 0x4E736F6964757473;
  *(inited + 168) = 0xEF736B726F777465;
  v55 = type metadata accessor for ContentResolutionParameters(0);
  v19 = (a1 + *(v55 + 60));
  v20 = v19[1];
  *(inited + 176) = *v19;
  *(inited + 184) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v21 = sub_269854A04();
  v57[0] = v21;
  v22 = *(a1 + 56);
  if (v22 > 5)
  {
    v16 = *(a1 + 48);
    sub_2697DBE0C(v16, *(a1 + 56));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_44();
    *(v52 - 256) = v21;
    OUTLINED_FUNCTION_6_36();
    sub_26984076C();
    OUTLINED_FUNCTION_0_49();
    v23 = v9;
  }

  else if (((1 << v22) & 0x1B) != 0)
  {
    v23 = v9;
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v24 = __swift_project_value_buffer(v8, qword_281571B38);
    (*(v9 + 16))(v13, v24, v8);
    v25 = sub_2698548B4();
    v26 = sub_269854F14();
    if (os_log_type_enabled(v25, v26))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269684000, v25, v26, "Unsupported value for episode while mapping parameters", v16, 2u);
      MEMORY[0x26D647170](v16, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v23 = v9;
    if (v22 == 2)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v31 - 256) = v21;
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
    }
  }

  switch(*(a1 + 72))
  {
    case 0:
      if (qword_280322700 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_10;
    case 1:
      OUTLINED_FUNCTION_4_33();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v32 - 256) = v16;
      OUTLINED_FUNCTION_3_40();
      goto LABEL_18;
    case 2:
      OUTLINED_FUNCTION_4_33();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v33 - 256) = v16;
      goto LABEL_18;
    case 3:
      goto LABEL_19;
    default:
      v16 = *(a1 + 64);
      sub_2697DBDF8(v16, *(a1 + 72));
      v34 = v57[0];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v35 - 256) = v34;
      OUTLINED_FUNCTION_3_40();
LABEL_18:
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
      break;
  }

  while (1)
  {
LABEL_19:
    v36 = v55;
    switch(*(a1 + 80))
    {
      case 1:
      case 2:
      case 4:
        break;
      default:
        OUTLINED_FUNCTION_4_33();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_44();
        *(v37 - 256) = v16;
        OUTLINED_FUNCTION_7_36();
        sub_26984076C();
        OUTLINED_FUNCTION_0_49();
        break;
    }

    sub_269707020(a1 + v36[13], v7);
    v8 = sub_269851D34();
    v23 = &unk_26985A000;
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_2697DB144(v7);
    }

    else
    {
      sub_269851D04();
      OUTLINED_FUNCTION_8_33();
      (*(v38 + 8))(v7, v8);
      if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
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
        __break(1u);
        goto LABEL_48;
      }

      if (v1 <= -9.22337204e18)
      {
        goto LABEL_42;
      }

      if (v1 >= 9.22337204e18)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_5_32();
      if (!v40)
      {
        goto LABEL_46;
      }

      v7 = "contentConversion";
      v56[0] = v39;
      v16 = sub_269855544();
      v41 = v57[0];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_44();
      *(v42 - 256) = v41;
      OUTLINED_FUNCTION_6_36();
      sub_26984076C();
      OUTLINED_FUNCTION_0_49();
    }

    v43 = v54;
    sub_269707020(a1 + v36[14], v54);
    if (__swift_getEnumTagSinglePayload(v43, 1, v8) == 1)
    {
      sub_2697DB144(v43);
      goto LABEL_37;
    }

    sub_269851D04();
    OUTLINED_FUNCTION_8_33();
    (*(v44 + 8))(v43, v8);
    if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_43;
    }

    if (v1 <= -9.22337204e18)
    {
      goto LABEL_45;
    }

    if (v1 >= 9.22337204e18)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_5_32();
    if (v40)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_0_4(&qword_280322700);
LABEL_10:
    v27 = __swift_project_value_buffer(v8, qword_281571B38);
    v28 = v53[0];
    v23[2](v53[0], v27, v8);
    v29 = sub_2698548B4();
    v30 = sub_269854F14();
    if (os_log_type_enabled(v29, v30))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269684000, v29, v30, "Unsupported value for season while mapping parameters", v16, 2u);
      MEMORY[0x26D647170](v16, -1, -1);
    }

    (v23[1])(v28, v8);
  }

  v56[0] = v45;
  sub_269855544();
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_1_44();
  *(v46 - 256) = v56;
  OUTLINED_FUNCTION_6_36();
  sub_26984076C();
  OUTLINED_FUNCTION_0_49();
LABEL_37:
  v47 = a1 + v36[16];
  if ((*(v47 + 8) & 1) == 0)
  {
    v56[0] = *v47;
    sub_269855544();
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_1_44();
    *(v48 - 256) = v56;
    OUTLINED_FUNCTION_6_36();
    sub_26984076C();
    OUTLINED_FUNCTION_0_49();
  }

  sub_2697DB1AC(*(a1 + 88), v57);
  sub_2697DB2D4(*(a1 + 81), v57);
  sub_2697DB47C(a1, v57);
  v49 = OUTLINED_FUNCTION_4_33();
  v50 = sub_2697DB828(v49);

  return v50;
}

uint64_t sub_2697DB144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697DB1AC(uint64_t a1, uint64_t *a2)
{

  v5 = sub_2697DA594(v4);
  v6 = v5;
  v7 = v5 + 8;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5[8];
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(v6[7] + 8 * v16);
      v18 = *(v6[6] + v16);

      sub_2697DBA78(v18, v17, v2, a2);

      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = v7[v14];
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }
}

void sub_2697DB2D4(uint64_t result, void *a2)
{
  switch(result)
  {
    case 9:
      return;
    default:
      swift_isUniquelyReferenced_nonNull_native();
      v3 = *a2;
      sub_26984076C();
      *a2 = v3;
      break;
  }
}

void sub_2697DB47C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ContentResolutionParameters(0);
  v5 = *(a1 + v4[17]);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26977BCE4();
    v7 = v6;
    v8 = *(v6 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_26977BCE4();
      v9 = v8 + 1;
      v7 = v24;
    }

    *(v7 + 16) = v9;
    v10 = v7 + 16 * v8;
    *(v10 + 32) = 4474965;
    *(v10 + 40) = 0xE300000000000000;
  }

  v11 = *(a1 + v4[18]);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977BCE4();
      v7 = v25;
    }

    v12 = *(v7 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v13 = v12 + 1;
      v7 = v26;
    }

    *(v7 + 16) = v13;
    v14 = v7 + 16 * v12;
    strcpy((v14 + 32), "DolbyVisionHDR");
    *(v14 + 47) = -18;
  }

  v15 = *(a1 + v4[19]);
  if (v15 != 2 && (v15 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977BCE4();
      v7 = v27;
    }

    v16 = *(v7 + 16);
    v17 = v16 + 1;
    if (v16 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v17 = v16 + 1;
      v7 = v28;
    }

    *(v7 + 16) = v17;
    v18 = v7 + 16 * v16;
    *(v18 + 32) = 0x736F6D7441;
    *(v18 + 40) = 0xE500000000000000;
  }

  v19 = *(a1 + v4[20]);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977BCE4();
      v7 = v29;
    }

    v20 = *(v7 + 16);
    v21 = v20 + 1;
    if (v20 >= *(v7 + 24) >> 1)
    {
      sub_26977BCE4();
      v21 = v20 + 1;
      v7 = v30;
    }

    *(v7 + 16) = v21;
    v22 = v7 + 16 * v20;
    *(v22 + 32) = 5391432;
    *(v22 + 40) = 0xE300000000000000;
  }

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    sub_269854A44();

    swift_isUniquelyReferenced_nonNull_native();
    v31 = *a2;
    sub_26984076C();
    *a2 = v31;
  }

  else
  {
  }

  v23 = *(a1 + v4[22]);
  if (v23 != 2 && (v23 & 1) != 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *a2;
    sub_26984076C();
    *a2 = v32;
  }
}

uint64_t sub_2697DB828(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = (*(a1 + 48) + 16 * v12);
      v30 = v15[1];
      v31 = *v15;
      v29 = *v13;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_26980E904(v16 + 1, 1);
        v2 = v32;
      }

      else
      {
      }

      sub_269855674();
      sub_269854B34();
      result = sub_2698556C4();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v18) >> 6;
        v22 = v30;
        while (++v20 != v24 || (v23 & 1) == 0)
        {
          v25 = v20 == v24;
          if (v20 == v24)
          {
            v20 = 0;
          }

          v23 |= v25;
          v26 = *(v17 + 8 * v20);
          if (v26 != -1)
          {
            v21 = __clz(__rbit64(~v26)) + (v20 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v30;
LABEL_23:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (*(v2 + 48) + 16 * v21);
      *v27 = v31;
      v27[1] = v22;
      v28 = (*(v2 + 56) + 16 * v21);
      *v28 = v29;
      v28[1] = v14;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2697DBA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325438, qword_269865CA8);
  sub_2697DBE20();
  v11 = sub_269854A04();
  v12 = sub_26981D6D4(a1, v11);
  v14 = v13;

  if (v14)
  {
    v15 = *(a2 + 16);
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v32[1] = v12;
      v34 = MEMORY[0x277D84F90];
      sub_269814F0C(0, v15, 0);
      v16 = v34;
      v17 = (a2 + 40);
      do
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v34 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_269814F0C(v20 > 1, v21 + 1, 1);
          v16 = v34;
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        v17 += 3;
        --v15;
      }

      while (v15);
    }

    v34 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    sub_269854A44();

    swift_isUniquelyReferenced_nonNull_native();
    v34 = *a4;
    sub_26984076C();
    *a4 = v34;
  }

  else
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v7, qword_281571B38);
    (*(v8 + 16))(v10, v24, v7);
    v25 = sub_2698548B4();
    v26 = sub_269854F24();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      v33 = a1;
      v29 = sub_269854AE4();
      v31 = sub_26974F520(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_269684000, v25, v26, "Unexpected role: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D647170](v28, -1, -1);
      MEMORY[0x26D647170](v27, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2697DBDF8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_2697DBE0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

unint64_t sub_2697DBE20()
{
  result = qword_280325440;
  if (!qword_280325440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325438, qword_269865CA8);
    sub_2697DBEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325440);
  }

  return result;
}

unint64_t sub_2697DBEA4()
{
  result = qword_280325448[0];
  if (!qword_280325448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280325448);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2697DBFB8()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v7 = 0;
    sub_269855204();

    v3 = OUTLINED_FUNCTION_0_50();
    MEMORY[0x26D645A60](v3);
    MEMORY[0x26D645A60](0x49646E617262202CLL, 0xEB00000000203A64);
    v4 = v2;
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_0_50();
  }

  MEMORY[0x26D645A60](v4, v5);
  MEMORY[0x26D645A60](41, 0xE100000000000000);
  return v7;
}

uint64_t sub_2697DC0B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2697DC16C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697DC204(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_2697DC27C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_2697DC380(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2697DC530()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001ELL, 0x80000002698804C0);
  v1 = sub_269855544();
  MEMORY[0x26D645A60](v1);

  MEMORY[0x26D645A60](0x746C75736572202CLL, 0xEA0000000000203ALL);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_269855564();
  MEMORY[0x26D645A60](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2697DC628(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents17AppPredictorModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents16TrialIdentifiersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2697DC6FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697DC73C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2697DC7B8(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_269851C24();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_269851C74();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_269851BD4();

    swift_willThrow();
    v11 = sub_269851C74();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_2697DC920()
{
  type metadata accessor for TrialAppPredictorConfigProvider();
  v0 = swift_allocObject();
  result = sub_2697DE150();
  qword_28033D8A8 = v0;
  return result;
}

void sub_2697DC998(uint64_t a1@<X8>)
{
  v2 = v1;
  v174 = 0;
  v177 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v176 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v173 = &v162[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v175 = &v162[-v8];
  v9 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v179 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v162[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v162[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v162[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v162[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v162[-v24];
  OUTLINED_FUNCTION_0_51();
  v26 = sub_2697E902C(0xD000000000000014, 0x800000026987BBA0);
  if (!v26)
  {
    v36 = 0;
    goto LABEL_47;
  }

  v1 = v26;
  v172 = v14;
  v178 = v2;
  v27 = [v26 BOOLeanValue];

  if (v27)
  {
    v171 = v23;
    OUTLINED_FUNCTION_0_51();
    v28 = sub_2697E902C(0xD000000000000014, 0x80000002698806D0);
    if (v28 && (v29 = v28, v30 = [v28 directoryValue], v29, v30))
    {
      if ([v30 hasPath] && (v31 = sub_2697DE354(v30), v32))
      {
        v167 = v32;
        v168 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2698580D0;
        v34 = [v30 asset];
        if (v34)
        {
          v34 = sub_2696D1E04(v34, &selRef_name);
        }

        else
        {
          v35 = 0;
        }

        *(inited + 32) = v34;
        *(inited + 40) = v35;
        v48 = [v30 asset];
        v169 = v30;
        if (v48)
        {
          v49 = v48;
          v50 = inited;
          v51 = [v48 size];

          *&v181[0] = 0x20657A6973;
          *(&v181[0] + 1) = 0xE500000000000000;
          v180 = v51;
          v52 = sub_269855544();
          MEMORY[0x26D645A60](v52);
          inited = v50;

          v54 = *(&v181[0] + 1);
          v53 = *&v181[0];
        }

        else
        {
          v53 = 0;
          v54 = 0;
        }

        v55 = 0;
        *(inited + 48) = v53;
        *(inited + 56) = v54;
        v166 = inited;
        v56 = inited + 40;
        v57 = MEMORY[0x277D84F90];
        v170 = v9;
LABEL_25:
        v58 = (v56 + 16 * v55);
        while (++v55 != 3)
        {
          v59 = v58 + 2;
          v60 = *v58;
          v58 += 2;
          if (v60)
          {
            v165 = *(v59 - 3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26977BCE4();
              v57 = v63;
            }

            v61 = *(v57 + 16);
            if (v61 >= *(v57 + 24) >> 1)
            {
              sub_26977BCE4();
              v57 = v64;
            }

            *(v57 + 16) = v61 + 1;
            v62 = v57 + 16 * v61;
            *(v62 + 32) = v165;
            *(v62 + 40) = v60;
            v9 = v170;
            goto LABEL_25;
          }
        }

        swift_setDeallocating();
        sub_269819D58();
        *&v181[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
        sub_2697B47C4();
        v65 = sub_269854A44();
        v67 = v66;

        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_2_1(&qword_280322708);
        }

        __swift_project_value_buffer(v9, qword_281571B50);
        OUTLINED_FUNCTION_5_33();
        v164 = v68;
        v166 = v69;
        v165 = v70;
        v70(v25);

        v71 = sub_2698548B4();
        v72 = sub_269854F14();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = OUTLINED_FUNCTION_27_2();
          v163 = v72;
          v74 = v65;
          v75 = v73;
          v76 = OUTLINED_FUNCTION_9_3();
          *&v181[0] = v76;
          *v75 = 136315138;
          v77 = sub_26974F520(v74, v67, v181);

          *(v75 + 4) = v77;
          _os_log_impl(&dword_269684000, v71, v163, "TrialAppPredictorConfigProvider attempting to load model %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        else
        {
        }

        v78 = MEMORY[0x280322008];
        MEMORY[0x280322008](v25, v9);
        v79 = v172;
        v80 = v175;
        sub_269851C14();

        v81 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
        [v81 setComputeUnits_];
        sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
        v82 = v173;
        (*(v176 + 16))(v173, v80, v177);
        v83 = v81;
        v84 = v174;
        v85 = sub_2697DC7B8(v82, v83);
        v86 = v171;
        if (!v84)
        {
          v98 = v85;
          v173 = v83;
          v99 = v170;
          OUTLINED_FUNCTION_7_37();
          v100();
          v36 = v98;
          v1 = sub_2698548B4();
          v101 = sub_269854F14();

          if (os_log_type_enabled(v1, v101))
          {
            v102 = OUTLINED_FUNCTION_27_2();
            v168 = v102;
            v172 = OUTLINED_FUNCTION_9_3();
            *&v181[0] = v172;
            *v102 = 136315138;
            v103 = [v36 modelDescription];
            v104 = [v103 outputDescriptionsByName];
            LODWORD(v167) = v101;
            v105 = v104;

            sub_26969329C(0, &qword_2803254D8, 0x277CBFEE0);
            v174 = v78;
            sub_2698549E4();

            v106 = sub_269854A14();
            v108 = v107;

            v109 = sub_26974F520(v106, v108, v181);

            v110 = v168;
            *(v168 + 1) = v109;
            _os_log_impl(&dword_269684000, v1, v167, "TrialAppPredictorConfigProvider loaded model with outputs %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v172);
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_11_31();
            OUTLINED_FUNCTION_2_31();
            v174(v171, v99);
          }

          else
          {

            OUTLINED_FUNCTION_11_31();
            OUTLINED_FUNCTION_2_31();
            v78(v86, v99);
          }

          v160 = OUTLINED_FUNCTION_3_41();
          v161(v160);
          goto LABEL_46;
        }

        v87 = v170;
        OUTLINED_FUNCTION_7_37();
        v88();
        v89 = v84;
        v1 = sub_2698548B4();
        v90 = sub_269854F24();

        if (os_log_type_enabled(v1, v90))
        {
          v91 = OUTLINED_FUNCTION_27_2();
          v92 = OUTLINED_FUNCTION_9_3();
          v174 = v78;
          v93 = v92;
          *&v181[0] = v92;
          *v91 = 136315138;
          v180 = v84;
          v94 = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
          v95 = sub_269854AE4();
          v97 = sub_26974F520(v95, v96, v181);

          *(v91 + 4) = v97;
          _os_log_impl(&dword_269684000, v1, v90, "TrialAppPredictorConfigProvider error loading model, %s", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          OUTLINED_FUNCTION_11_31();
          OUTLINED_FUNCTION_2_31();
          v174(v172, v170);
        }

        else
        {

          OUTLINED_FUNCTION_11_31();
          OUTLINED_FUNCTION_2_31();
          v78(v79, v87);
        }

        v111 = OUTLINED_FUNCTION_3_41();
        v112(v111);
      }

      else
      {
        v42 = v30;
        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_2_1(&qword_280322708);
        }

        v43 = __swift_project_value_buffer(v9, qword_281571B50);
        v44 = v179;
        (*(v179 + 16))(v20, v43, v9);
        v1 = sub_2698548B4();
        v45 = v9;
        v46 = sub_269854F14();
        if (os_log_type_enabled(v1, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_269684000, v1, v46, "TrialAppPredictorConfigProvider no model", v47, 2u);
          OUTLINED_FUNCTION_10();
        }

        (*(v44 + 8))(v20, v45);
      }
    }

    else
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      __swift_project_value_buffer(v9, qword_281571B50);
      OUTLINED_FUNCTION_5_33();
      v37(v17);
      v1 = sub_2698548B4();
      v38 = v9;
      v39 = sub_269854F24();
      if (os_log_type_enabled(v1, v39))
      {
        v40 = OUTLINED_FUNCTION_27_2();
        v41 = OUTLINED_FUNCTION_9_3();
        *&v181[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_26974F520(0xD000000000000014, 0x80000002698806D0, v181);
        _os_log_impl(&dword_269684000, v1, v39, "TrialAppPredictorConfigProvider no directoryValue for %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      MEMORY[0x280322008](v17, v38);
    }
  }

  v36 = 0;
LABEL_46:
  v2 = v178;
LABEL_47:
  OUTLINED_FUNCTION_0_51();
  v113 = sub_2697E902C(0xD000000000000029, 0x8000000269880530);
  if (v113)
  {
    v114 = v113;
    v1 = [v113 longValue];

    v115 = 0;
    while (v115 != 2)
    {
      v116 = &unk_287A39468 + v115++;
      v117 = v116[32];
      if (v117)
      {
        v118 = 2;
      }

      else
      {
        v118 = 1;
      }

      if (v118 == v1)
      {
        goto LABEL_56;
      }
    }
  }

  v117 = 1;
LABEL_56:
  OUTLINED_FUNCTION_0_51();
  v119 = sub_2697E902C(0xD000000000000022, 0x8000000269880560);
  if (v119)
  {
    v179 = OUTLINED_FUNCTION_6_37(v119);
  }

  else
  {
    v179 = 5;
  }

  OUTLINED_FUNCTION_0_51();
  v120 = sub_2697E902C(0xD00000000000002ALL, 0x8000000269880590);
  v121 = 0.0;
  v122 = 0.0;
  if (v120)
  {
    v123 = OUTLINED_FUNCTION_6_37(v120);

    if (v123 >= 1)
    {
      v122 = 1.0 / v123;
    }

    else
    {
      v122 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v124 = sub_2697E902C(0xD00000000000002CLL, 0x80000002698805C0);
  if (v124)
  {
    v125 = OUTLINED_FUNCTION_6_37(v124);

    if (v125 >= 1)
    {
      v121 = 1.0 / v125;
    }

    else
    {
      v121 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v126 = sub_2697E902C(0xD000000000000029, 0x80000002698805F0);
  if (v126)
  {
    v178 = OUTLINED_FUNCTION_6_37(v126);
  }

  else
  {
    v178 = 240;
  }

  OUTLINED_FUNCTION_0_51();
  v127 = sub_2697E902C(0xD000000000000031, 0x8000000269880620);
  v128 = 0.0;
  v129 = 0.0;
  if (v127)
  {
    v130 = OUTLINED_FUNCTION_6_37(v127);

    if (v130 >= 1)
    {
      v129 = 1.0 / v130;
    }

    else
    {
      v129 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v131 = sub_2697E902C(0xD000000000000033, 0x8000000269880660);
  if (v131)
  {
    v132 = OUTLINED_FUNCTION_6_37(v131);

    if (v132 >= 1)
    {
      v128 = 1.0 / v132;
    }

    else
    {
      v128 = 0.0;
    }
  }

  OUTLINED_FUNCTION_0_51();
  v133 = sub_2697E902C(0xD000000000000023, 0x800000026987BAF0);
  if (v133 && (v134 = sub_2696D1E04(v133, &selRef_stringValue), v135))
  {
    v1 = v2;
    sub_2697DDB30(v134, v135);
    v177 = v136;
  }

  else
  {
    v177 = MEMORY[0x277D84FA0];
  }

  OUTLINED_FUNCTION_0_51();
  v137 = sub_2697E902C(0xD000000000000023, 0x800000026987BAC0);
  if (v137 && (v1 = v2, v138 = sub_2696D1E04(v137, &selRef_stringValue), v139))
  {
    sub_2697DDB30(v138, v139);
    v176 = v140;

    if (!v36)
    {
LABEL_85:
      v141 = 0;
      v175 = 0;
      goto LABEL_88;
    }
  }

  else
  {
    v176 = MEMORY[0x277D84FA0];
    if (!v36)
    {
      goto LABEL_85;
    }
  }

  v141 = sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
  v175 = &off_287A44328;
LABEL_88:
  OUTLINED_FUNCTION_0_51();
  v142 = v36;
  v143 = v36;
  v144 = sub_2697E902C(0xD000000000000027, 0x800000026987BB40);
  v145 = 0;
  v146 = 0;
  if (v144)
  {
    v1 = v144;
    [v144 doubleValue];
    v146 = v147;
  }

  OUTLINED_FUNCTION_0_51();
  v148 = sub_2697E902C(0xD000000000000029, 0x800000026987BB70);
  if (v148)
  {
    v1 = v148;
    [v148 doubleValue];
    v145 = v149;
  }

  v150 = OUTLINED_FUNCTION_0_51();
  v151 = v150[3];
  v152 = v150[4];
  __swift_project_boxed_opaque_existential_1(v150, v151);
  (*(v152 + 40))(v181, v1[5].isa, v1[6].isa, v151, v152);
  OUTLINED_FUNCTION_0_51();
  v153 = sub_2697E902C(0xD000000000000023, 0x80000002698806A0);
  if (!v153)
  {

    goto LABEL_96;
  }

  v154 = v153;
  v155 = [v153 longValue];

  if (v155 < 1)
  {
LABEL_96:
    v156 = 0.0;
    goto LABEL_97;
  }

  v156 = 1.0 / v155;
LABEL_97:
  *a1 = v142;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v141;
  *(a1 + 32) = v175;
  *(a1 + 40) = v146;
  *(a1 + 48) = v145;
  *(a1 + 56) = v179;
  *(a1 + 64) = v122;
  *(a1 + 72) = v121;
  *(a1 + 80) = v178;
  *(a1 + 88) = v117;
  *(a1 + 96) = v129;
  *(a1 + 104) = v128;
  v157 = v181[2];
  v158 = v181[0];
  *(a1 + 128) = v181[1];
  *(a1 + 144) = v157;
  *(a1 + 112) = v158;
  v159 = v176;
  *(a1 + 160) = v177;
  *(a1 + 168) = v159;
  *(a1 + 176) = v156;
}

void sub_2697DDB30(uint64_t a1, unint64_t a2)
{
  v21 = sub_269851B04();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_2697DDD28(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2);
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v8, 0);
    v9 = v25;
    v10 = (v4 + 8);
    v20 = v7;
    v11 = (v7 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v22 = *(v11 - 3);
      v23 = v12;
      v24 = v13;

      sub_269851AF4();
      sub_2696A8114();
      v14 = sub_2698550F4();
      v16 = v15;
      (*v10)(v6, v21);

      v25 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_269814F0C(v17 > 1, v18 + 1, 1);
        v9 = v25;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_2697F1EE0(v9);
}

uint64_t sub_2697DDD28(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = a4;
  v7 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v4 = sub_269854C04();
    v7 = v28;
    v8 = v29;
    v9 = v30;

    sub_26977BDB4();
    v27 = v31;
    v5 = *(v31 + 16);
    v6 = v5 + 1;
    if (v5 < *(v31 + 24) >> 1)
    {
LABEL_41:
      *(v27 + 16) = v6;
      v32 = (v27 + 32 * v5);
      v32[4] = v4;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v9;
      return v27;
    }

LABEL_50:
    sub_26977BDB4();
    v27 = v39;
    goto LABEL_41;
  }

  v12 = 4 * v11;
  v47 = MEMORY[0x277D84F90];
  v13 = 15;
  v5 = 0xE100000000000000;
LABEL_8:
  for (i = v13; ; i = sub_269854B44())
  {
    v9 = i >> 14;
    if (i >> 14 == v12)
    {
      break;
    }

    v15 = sub_269854BE4();
    v17 = v16;
    v18 = v15 == 32 && v16 == 0xE100000000000000;
    if (v18 || (v8 = v15, (sub_269855584() & 1) != 0) || (v8 == 44 ? (v19 = v17 == 0xE100000000000000) : (v19 = 0), v19))
    {

LABEL_22:
      v4 = (v13 >> 14 == v9) & a2;
      if (((v13 >> 14 == v9) & a2) == 0)
      {
        if (v9 < v13 >> 14)
        {
          goto LABEL_49;
        }

        v20 = sub_269854C04();
        v44 = v22;
        v45 = v21;
        v43 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977BDB4();
          v47 = v25;
        }

        v8 = *(v47 + 16);
        v9 = v8 + 1;
        if (v8 >= *(v47 + 24) >> 1)
        {
          sub_26977BDB4();
          v47 = v26;
        }

        *(v47 + 16) = v9;
        v24 = (v47 + 32 * v8);
        v24[4] = v20;
        v24[5] = v45;
        v24[6] = v44;
        v24[7] = v43;
      }

      v13 = sub_269854B44();
      if ((v4 & 1) != 0 || *(v47 + 16) != a1)
      {
        goto LABEL_8;
      }

      break;
    }

    v8 = sub_269855584();

    if (v8)
    {
      goto LABEL_22;
    }
  }

  if (v13 >> 14 == v12 && (a2 & 1) != 0)
  {

    return v47;
  }

  if (v12 < v13 >> 14)
  {
    __break(1u);
    goto LABEL_52;
  }

  v7 = sub_269854C04();
  v8 = v33;
  v9 = v34;
  v12 = v35;

  v27 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_52:
    sub_26977BDB4();
    v27 = v40;
  }

  v36 = *(v27 + 16);
  if (v36 >= *(v27 + 24) >> 1)
  {
    sub_26977BDB4();
    v27 = v41;
  }

  *(v27 + 16) = v36 + 1;
  v37 = (v27 + 32 * v36);
  v37[4] = v7;
  v37[5] = v8;
  v37[6] = v9;
  v37[7] = v12;
  return v27;
}

uint64_t sub_2697DE118()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2697DE150()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803254D0, qword_269866000);
  v2 = swift_allocObject();
  *(v0 + 16) = sub_2697EA120(v1, 0xD000000000000018, 0x800000026987BA10, v2);
  return v0;
}

id sub_2697DE28C(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 predictionsFromBatch:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_269851BD4();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2697DE354(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

id OUTLINED_FUNCTION_6_37(void *a1)
{

  return [a1 (v1 + 2720)];
}

void OUTLINED_FUNCTION_11_31()
{
  v2 = *(v0 - 352);
}

_BYTE *storeEnumTagSinglePayload for AppPredictorUsecase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697DE544()
{
  result = qword_2803254E0;
  if (!qword_2803254E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803254E0);
  }

  return result;
}

uint64_t sub_2697DE598(char a1)
{
  if (a1)
  {
    sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
    v1 = &qword_280322F80;
    v2 = &unk_2698660B0;
  }

  else
  {
    sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
    v1 = &qword_280322F78;
    v2 = &qword_269858E08;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  return sub_269854AE4();
}

void sub_2697DE69C(uint64_t a1)
{
  sub_2697DEA84(319, &qword_280325500, &type metadata for PredictedApp, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ModelParams(319);
    if (v2 <= 0x3F)
    {
      sub_2697DE7B8(319);
      if (v3 <= 0x3F)
      {
        sub_2697DEA84(319, &qword_280323CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2697DE7B8(uint64_t a1)
{
  if (!qword_280325508)
  {
    sub_269853984();
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280325508);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PredictedApp.Order(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_2697DE954(uint64_t a1)
{
  type metadata accessor for ModelInput(319);
  if (v1 <= 0x3F)
  {
    sub_2697DEA84(319, &qword_280325500, &type metadata for PredictedApp, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2697DEA84(319, &qword_280325520, &type metadata for TrialIdentifiers, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2697DEA84(319, &qword_280323CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2697DEA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2697DEAFC(uint64_t a1)
{
  sub_2697DEB54();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2697DEB54()
{
  if (!qword_280325538)
  {
    v0 = sub_269853984();
    if (!v1)
    {
      atomic_store(v0, &qword_280325538);
    }
  }
}

unint64_t sub_2697DEBA0()
{
  result = qword_280325540;
  if (!qword_280325540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325548, qword_2698661A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325540);
  }

  return result;
}

void *sub_2697DEC04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26977D4F4(*(a1 + 16), 0);
  sub_2697E1B98(v15, (v3 + 4), v2, a1);
  v5 = v4;
  OUTLINED_FUNCTION_15_25(v4, v6, v7, v8, v9, v10, v11, v12, v14, v15[0]);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2697DEC88(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2;
  if (!__OFSUB__(result, a2))
  {
    if (v3)
    {
      v6 = result;
      v7 = sub_26977D55C(result - a2, 0);
      v8 = sub_2697E22C0(&v9, v7 + 4, v3, v6, a2, a3);

      if (v8 == v3)
      {
        return v7;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_2697DEDB0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = sub_2697E1C90(v20, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v5, a1, a4);
  OUTLINED_FUNCTION_15_25(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20[0]);
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_2697DEE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2697DEF98(uint64_t a1)
{
  OUTLINED_FUNCTION_16_20(a1);
  sub_2697DF7FC();
  return sub_2698556C4();
}

uint64_t sub_2697DF050(char a1)
{
  sub_269855674();
  MEMORY[0x26D646580]((a1 & 1u) + 1);
  return sub_2698556C4();
}

uint64_t sub_2697DF09C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_16_20(a1);
  MEMORY[0x26D646580](v1);
  return sub_2698556C4();
}

uint64_t sub_2697DF0F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_20(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_14_23(v4, v5, v6);

  return sub_2698556C4();
}

uint64_t sub_2697DF144(uint64_t a1)
{
  OUTLINED_FUNCTION_16_20(a1);
  MEMORY[0x26D646580](a1);
  return sub_2698556C4();
}

uint64_t sub_2697DF19C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_45();
  }

  else
  {
    OUTLINED_FUNCTION_8_34();
  }

  sub_269854B34();
}

uint64_t sub_2697DF1F4(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF260(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_16();
  }

  sub_269854B34();
}

uint64_t sub_2697DF2D0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_7_38();
  }

  sub_269854B34();
}

uint64_t sub_2697DF390(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF444(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF574(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF6E4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_21_17();
  }

  sub_269854B34();
}

uint64_t sub_2697DF764()
{
  OUTLINED_FUNCTION_10_26();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_22_17();
      break;
    default:
      break;
  }

  sub_269854B34();
}

uint64_t sub_2697DF7FC()
{
  OUTLINED_FUNCTION_10_26();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_22_17();
      break;
    default:
      break;
  }

  sub_269854B34();
}

uint64_t sub_2697DF884(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_269854B34();
}

uint64_t sub_2697DF944(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DF9B4(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DFAF8(uint64_t a1, char a2)
{
  sub_269854B34();
}

uint64_t sub_2697DFC28(uint64_t a1, char a2)
{
  sub_269855674();
  MEMORY[0x26D646580]((a2 & 1u) + 1);
  return sub_2698556C4();
}

uint64_t sub_2697DFCA0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    v5 = 0x69736976656C6574;
  }

  else
  {
    v5 = 0x76745F656C707061;
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697DFD2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_31(a1, a2);
  sub_269854B34();

  return sub_2698556C4();
}

uint64_t sub_2697DFD90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_31(a1, a2);
  sub_2697DF7FC();
  return sub_2698556C4();
}

uint64_t sub_2697DFDE4(uint64_t a1, char a2)
{
  v3 = sub_269855674();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x7473696C68736977;
    }

    else
    {
      v5 = 0x73696C6863746177;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697DFEE8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x4974694B69726973;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697DFF7C(uint64_t a1, unsigned __int8 a2)
{
  sub_269855674();
  MEMORY[0x26D646580](a2);
  return sub_2698556C4();
}

uint64_t sub_2697DFFC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 1836019538;
    }

    else
    {
      v5 = 0x797469746E45;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_16();
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697E0034(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    v5 = 0x656B6F547478656ELL;
  }

  else
  {
    v5 = 0x736D657469;
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697E00A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    v5 = 0x656C626179616C70;
  }

  else
  {
    v5 = 0x736C656E6E616863;
  }

  OUTLINED_FUNCTION_13_25(v3, v5, v4);

  return sub_2698556C4();
}

uint64_t sub_2697E0118(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_31(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_1_45();
  }

  else
  {
    OUTLINED_FUNCTION_8_34();
  }

  OUTLINED_FUNCTION_13_25(v3, v4, v5);

  return sub_2698556C4();
}

uint64_t sub_2697E0174(uint64_t a1, uint64_t a2)
{
  sub_269855674();
  MEMORY[0x26D646580](a2);
  return sub_2698556C4();
}

uint64_t sub_2697E01D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_269855674();
  v5 = a3(a2);
  OUTLINED_FUNCTION_14_23(v5, v6, v7);

  return sub_2698556C4();
}

BOOL sub_2697E0230(uint64_t a1, uint64_t a2)
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() >= v2;
}

BOOL sub_2697E0274(uint64_t a1)
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() >= v1;
}

BOOL sub_2697E02A8(uint64_t a1, uint64_t a2)
{
  sub_2698547B4();
  OUTLINED_FUNCTION_11_16();
  return sub_2698547B4() < v2;
}

void *sub_2697E0304(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a4)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = a4;
      *(v11 + 24) = a5;
      v12 = sub_2697E0F08;
      if (a3)
      {
LABEL_4:
        v27 = a1;
        sub_269687554(a4, a5);
        v12(&v26, &v27);
LABEL_10:

        return v26;
      }
    }

    else
    {
      v12 = sub_2697E054C;
      if (a3)
      {
        goto LABEL_4;
      }
    }

    v27 = a1;

    sub_269687554(a4, a5);
    sub_2697E0E9C(&v27);
    v20 = sub_269771A0C(a2, v27);
    v27 = sub_2697DEC88(v20, v21, v22);
    v12(&v26, &v27);

    goto LABEL_10;
  }

  v27 = a1;

  sub_2697E0E9C(&v27);
  v13 = sub_2697E0D64(v27);

  if ((a3 & 1) == 0)
  {
    v14 = sub_26977E488();
    v13 = v15;
    v17 = v16;
    v19 = v18;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      sub_2697E0C90(v14, v13, v17, v19);
      OUTLINED_FUNCTION_11_16();
      swift_unknownObjectRelease();
      return v13;
    }

    sub_2698555A4();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);

    if (__OFSUB__(v19 >> 1, v17))
    {
      __break(1u);
    }

    else if (v25 == (v19 >> 1) - v17)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_11_16();
      swift_unknownObjectRelease();
      if (!v13)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x277D84F90];
      }

      return v13;
    }

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  return v13;
}

void sub_2697E054C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  sub_2697E19E4();
  *a2 = v3;
}

uint64_t sub_2697E0590(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2697E05C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697E0590(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2697E05EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697E02F8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_2697E062C()
{
  result = qword_280325550;
  if (!qword_280325550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325550);
  }

  return result;
}

BOOL sub_2697E068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_269855584();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_2697E06D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_269854B34();
  v5 = 0.0;
  if (a4 != 0.0)
  {
    v5 = a4;
  }

  return MEMORY[0x26D6465A0](*&v5);
}

uint64_t sub_2697E071C(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_16_20(a1);
  sub_2697E06D8(v7, a1, a2, a3);
  return sub_2698556C4();
}

uint64_t sub_2697E078C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  sub_269855674();
  sub_2697E06D8(v6, v2, v3, v4);
  return sub_2698556C4();
}

uint64_t sub_2697E0878@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_5();
  *a1 = result;
  return result;
}

unint64_t sub_2697E08A4()
{
  result = qword_280325558;
  if (!qword_280325558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325558);
  }

  return result;
}

unint64_t sub_2697E08FC()
{
  result = qword_280325560;
  if (!qword_280325560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325560);
  }

  return result;
}

unint64_t sub_2697E0954()
{
  result = qword_280325568;
  if (!qword_280325568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325568);
  }

  return result;
}

unint64_t sub_2697E09AC()
{
  result = qword_280325570;
  if (!qword_280325570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325570);
  }

  return result;
}

unint64_t sub_2697E0A04()
{
  result = qword_280325578;
  if (!qword_280325578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325578);
  }

  return result;
}

unint64_t sub_2697E0A5C()
{
  result = qword_280325580;
  if (!qword_280325580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325580);
  }

  return result;
}

unint64_t sub_2697E0AB4()
{
  result = qword_280325588;
  if (!qword_280325588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325588);
  }

  return result;
}

unint64_t sub_2697E0B0C()
{
  result = qword_280325590;
  if (!qword_280325590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325590);
  }

  return result;
}

unint64_t sub_2697E0B60()
{
  result = qword_280325598;
  if (!qword_280325598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325598);
  }

  return result;
}

void sub_2697E0BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for Content();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2697E0C90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_2697E0D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_26977D55C(*(a1 + 16), 0);
  v4 = sub_2697E1F2C(&v6, v3 + 4, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2697E0DF8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_269855324();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26977D62C(v2, 0);

    v1 = sub_2697E2008(v13, v3 + 4, v2, v1);
    OUTLINED_FUNCTION_15_25(v1, v4, v5, v6, v7, v8, v9, v10, v12, v13[0]);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2697E0E9C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2697E23D8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2697E0F3C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2697E0F08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2697E0F3C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_269855534();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_269854CE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2697E10B0(v7, v8, a1, v4);
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
    return sub_2697E1030(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2697E1030(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2697E10B0(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 - 1))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977BE84();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_26977BE84();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2697E16FC((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_2697E15C4(&v89, *result, a3);
LABEL_89:
}

uint64_t sub_2697E15C4(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2697E18A4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2697E16FC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2697E16FC(char *a1, char *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_26977D8A4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_26977D8A4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_2697E18B8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2697E18E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324230, &qword_26985F270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2697E19E4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v22 = 0;
      MEMORY[0x26D647190](&v22, 8);
      v5 = (v22 * v2) >> 64;
      if (v2 > v22 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v22 * v2)
        {
          do
          {
            v22 = 0;
            MEMORY[0x26D647190](&v22, 8);
          }

          while (v6 > v22 * v2);
          v5 = (v22 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = (v1 + 32 + 24 * v4);
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v13 = (v1 + 32 + 24 * v7);
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2697E23D8(v1);
          v1 = v17;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v18 = (v1 + 32 + 24 * v4);
        *v18 = v15;
        v18[1] = v14;
        v18[2] = v16;

        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        v19 = (v1 + 32 + 24 * v7);
        *v19 = v11;
        v19[1] = v10;
        v19[2] = v12;

        *v21 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_2697E1B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 56;
  OUTLINED_FUNCTION_4_34();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_11_32(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_34();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v6)
          {
            goto LABEL_17;
          }

          v5 = *(v7 + 8 * v14);
          ++v11;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_0_52();
      if (v15)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v4 += 16;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2697E1C90(void *a1, char *a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2697E1F2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 1);
      v14 = *i;
      *v8 = *(i - 2);
      v8[1] = v13;
      v8[2] = v14;
      if (!(v10 + v9))
      {

        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 3;

      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2697E2008(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_269855314();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_269855344() || (sub_269854664(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 48) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2697E21C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  OUTLINED_FUNCTION_4_34();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_11_32(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_34();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v6)
          {
            goto LABEL_17;
          }

          v5 = *(v7 + 8 * v14);
          ++v11;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_0_52();
      if (v15)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v4 += 16;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_2697E22C0(void *result, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
LABEL_14:
    v14 = a4;
LABEL_17:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = (a6 + 24 * a4 + 24);
    v14 = a4;
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_19;
      }

      if (a5 == v14)
      {
        v14 = a5;
        v10 = a4 - a5;
        goto LABEL_17;
      }

      if (v14 <= a5)
      {
        goto LABEL_20;
      }

      if (v14-- < 1)
      {
        goto LABEL_21;
      }

      if (v14 >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      v16 = *(v13 - 1);
      v17 = *v13;
      *v11 = *(v13 - 2);
      v11[1] = v16;
      v11[2] = v17;
      if (v12 + 1 == v10)
      {

        goto LABEL_17;
      }

      v11 += 3;

      ++v12;
      v13 -= 3;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2697E2434(uint64_t a1)
{
  sub_2697E2500(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppDisambiguationContext(319);
    if (v2 <= 0x3F)
    {
      sub_2697E25B8(319, &qword_2803255B8, &qword_280322878, &qword_2698587A0);
      if (v3 <= 0x3F)
      {
        sub_2697E25B8(319, &qword_2803255C0, &qword_2803255C8, &unk_269866690);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2697E2500(uint64_t a1)
{
  if (!qword_2803255B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323CC8, &unk_269866680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2803255B0);
    }
  }
}

void sub_2697E25B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_52()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

void *OUTLINED_FUNCTION_9_31(uint64_t a1, uint64_t a2, ...)
{

  return sub_269855674();
}

uint64_t OUTLINED_FUNCTION_11_32@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_13_25(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_14_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_15_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_26968E614(a10);
}

void *OUTLINED_FUNCTION_16_20(uint64_t a1, ...)
{

  return sub_269855674();
}

uint64_t OUTLINED_FUNCTION_20_15@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

id sub_2697E28FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2697017A0();
    v4 = sub_2698549D4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2697E2988(uint64_t a1)
{
  v2 = type metadata accessor for AppDisambiguationContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  v6 = type metadata accessor for AppSelectionResult(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  sub_2697E2F08(a1, v8 - v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26971522C(v9, v5);
      sub_2697E2B70(0, (*(v5 + 16) & 4) != 0, (*(v5 + 16) & 2) != 0, 0, 0, 0, 1);
      sub_2697E2F6C(v5, type metadata accessor for AppDisambiguationContext);
      return;
    case 2u:
      OUTLINED_FUNCTION_0_53();
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_0_53();
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      v19 = 0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_2_33();
      v19 = 0;
      v20 = 1;
      goto LABEL_9;
    case 5u:
LABEL_5:
      OUTLINED_FUNCTION_2_33();
      v19 = 1;
LABEL_6:
      v20 = 0;
LABEL_9:
      sub_2697E2B70(v15, v16, v17, v18, v19, v20, 0);
      break;
    default:

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0) + 64);

      OUTLINED_FUNCTION_2_33();
      sub_2697E2B70(v11, v12, v13, v14, 0, 0, 0);
      sub_2697E2FCC(v9 + v10);
      break;
  }
}

void sub_2697E2B70(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  (*(v7 + 56))(v35);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_281571B38);
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (os_log_type_enabled(v19, v20))
  {
    v31 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "sending com.apple.siri.video.appSelectionEngagement", v25, 2u);
    v26 = v25;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v31;
    MEMORY[0x26D647170](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v27 = sub_269854A64();
  v28 = swift_allocObject();
  v29 = v35[1];
  *(v28 + 24) = v35[0];
  *(v28 + 16) = a1 & 1;
  *(v28 + 17) = a2 & 1;
  *(v28 + 18) = a3 & 1;
  *(v28 + 19) = a4 & 1;
  *(v28 + 20) = a5 & 1;
  *(v28 + 21) = a6 & 1;
  *(v28 + 22) = a7 & 1;
  *(v28 + 40) = v29;
  *(v28 + 56) = v35[2];
  aBlock[4] = sub_2697E2ECC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2697E28FC;
  aBlock[3] = &block_descriptor_20;
  v30 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v30);
}

uint64_t sub_2697E2E68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2697E2F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSelectionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697E2F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2697E2FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_2697E2F6C(v0, type metadata accessor for AppSelectionResult);
}

uint64_t sub_2697E30C8(uint64_t a1)
{
  *(v1 + 16) = a1;

  *(v1 + 24) = sub_2697F8D7C();
  return v1;
}

id sub_2697E30F0(uint64_t a1, unint64_t a2)
{
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26981CF80(a1, a2, *(v2 + 16));
  if ((v10 & 1) == 0)
  {
    return [objc_opt_self() featureValueWithInt64_];
  }

  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_281571B50);
  (*(v6 + 16))(v8, v11, v5);

  v12 = sub_2698548B4();
  v13 = sub_269854F24();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_26974F520(a1, a2, &v18);
    _os_log_impl(&dword_269684000, v12, v13, "IntDictionaryFeatureProvider featureValue for %s has no value", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

uint64_t sub_2697E33AC()
{

  return v0;
}

uint64_t sub_2697E33D4()
{
  sub_2697E33AC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2697E342C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255F0, &unk_269866820);
    OUTLINED_FUNCTION_86();
    v2 = sub_2698553C4();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v5 &= v5 - 1;

    v16 = v13;
    v17 = sub_26973CEF8(v12, v11);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      *v20 = v12;
      v20[1] = v11;

      v21 = v2[7];
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v23 = (v2[6] + 16 * v17);
      *v23 = v12;
      v23[1] = v11;
      *(v2[7] + 8 * v17) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_22;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2697E3630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FC0, qword_269859000);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2696B8A68(*(a1 + 48) + 40 * v11, v29);
    v12 = *(*(a1 + 56) + 8 * v11);
    *(&v30 + 1) = v12;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v28 = v30;
    sub_2696B8A68(v27, &v25);
    v13 = v12;
    if (!swift_dynamicCast())
    {
      sub_26969B0C0(v27, &qword_2803255D8, &unk_269866800);

      goto LABEL_28;
    }

    v14 = *(&v28 + 1);
    sub_26969B0C0(v27, &qword_2803255D8, &unk_269866800);
    v25 = 0;
    v26 = 1;
    MEMORY[0x26D645D00](v14, &v25);

    if (v26)
    {
      break;
    }

    v15 = v25;
    result = sub_269855664();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_23;
        }
      }

LABEL_31:
      __break(1u);
      return result;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v2 + 48) + 8 * v19) = v24;
    *(*(v2 + 56) + 8 * v19) = v15;
    ++*(v2 + 16);
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

LABEL_28:

  return 0;
}

id sub_2697E3918(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
  v2 = sub_269854CA4();

  v3 = [v1 initWithFeatureProviderArray_];

  return v3;
}

uint64_t sub_2697E399C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2697E6F80(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_2697E3A34()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = swift_retain_n();

  return sub_2697E72B8(v0, sub_2697E72AC, v0);
}

uint64_t sub_2697E3AB0(char a1)
{
  sub_2697EABE0(v7);
  v2 = v8;
  v3 = v9;
  v4 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v5 = sub_2697F17C8(a1 & 1, v2, v3, v4);

  sub_2697E719C(v7);
  return v5;
}

uint64_t sub_2697E3B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697EABE0(v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  sub_2697E6F30(v11, v12, v13, v14, v15, v16);
  result = sub_2697E719C(v10);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

uint64_t sub_2697E3BC8()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 144) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  v8 = sub_2698548D4();
  *(v1 + 80) = v8;
  OUTLINED_FUNCTION_5_12(v8);
  *(v1 + 88) = v9;
  *(v1 + 96) = OUTLINED_FUNCTION_37_0();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697E3C98);
}

uint64_t sub_2697E3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 48);
  v28 = (*(*(v24 + 72) + 56))(*(v24 + 144) & 1);
  v29 = v28;
  *(v24 + 120) = v28;
  if (!v27)
  {

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(*(v24 + 80), qword_281571B50);
    v52 = OUTLINED_FUNCTION_2_8();
    v53(v52);
    v54 = sub_2698548B4();
    v55 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v55))
    {
      v56 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v56);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v62 = OUTLINED_FUNCTION_22_3();
    v63(v62);
    type metadata accessor for AppSelectionResult(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  if (v28[2] == 1)
  {
    v30 = v28[4];
    v31 = v28[5];
    v32 = qword_280322708;

    if (v32 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v33 = *(v24 + 112);
    v35 = *(v24 + 80);
    v34 = *(v24 + 88);
    v36 = __swift_project_value_buffer(v35, qword_281571B50);
    (*(v34 + 16))(v33, v36, v35);

    v37 = sub_2698548B4();
    v38 = sub_269854F14();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v24 + 88);
    if (v39)
    {
      a9 = *(v24 + 80);
      a10 = *(v24 + 112);
      v42 = *(v24 + 56);
      v41 = *(v24 + 64);
      OUTLINED_FUNCTION_27_2();
      a12 = v30;
      a11 = v31;
      v43 = OUTLINED_FUNCTION_14_24();
      a13 = v43;
      *v30 = 136315138;
      *(v24 + 16) = v42;
      *(v24 + 24) = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v44 = sub_269854AE4();
      v46 = sub_26974F520(v44, v45, &a13);

      *(v30 + 4) = v46;
      OUTLINED_FUNCTION_40();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v31 = a11;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v40 + 8))(a10, a9);
    }

    else
    {

      v86 = OUTLINED_FUNCTION_44_0();
      v88(v86, v87);
    }

    v90 = *(v24 + 56);
    v89 = *(v24 + 64);
    v91 = *(v24 + 32);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v93 = *(v92 + 64);
    v94 = (v91 + *(v92 + 80));
    *v91 = v30;
    v91[1] = v31;
    v91[2] = v29;
    v95 = type metadata accessor for ModelParams(0);
    __swift_storeEnumTagSinglePayload(v91 + v93, 1, 1, v95);
    *v94 = v90;
    v94[1] = v89;
    type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_86();
    swift_storeEnumTagMultiPayload();

LABEL_18:

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    return v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v64 = *(v24 + 48);
  __swift_project_boxed_opaque_existential_1((*(v24 + 72) + 72), *(*(v24 + 72) + 96));
  sub_269818540();
  v66 = v65;
  *(v24 + 128) = v65;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v67 = *(v24 + 104);
  v69 = *(v24 + 80);
  v68 = *(v24 + 88);
  v70 = __swift_project_value_buffer(v69, qword_281571B50);
  (*(v68 + 16))(v67, v70, v69);

  v71 = sub_2698548B4();
  v72 = sub_269854F14();

  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v24 + 104);
  v75 = *(v24 + 80);
  v76 = *(v24 + 88);
  if (v73)
  {
    swift_slowAlloc();
    v77 = OUTLINED_FUNCTION_14_24();
    a13 = v77;
    *v64 = 134218242;
    *(v64 + 4) = *(v66 + 16);

    *(v64 + 12) = 2080;
    v78 = MEMORY[0x26D645BC0](v29, MEMORY[0x277D837D0]);
    v107 = v75;
    v80 = sub_26974F520(v78, v79, &a13);

    *(v64 + 14) = v80;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v76 + 8))(v74, v107);
  }

  else
  {

    (*(v76 + 8))(v74, v75);
  }

  v105 = swift_task_alloc();
  *(v24 + 136) = v105;
  *v105 = v24;
  v105[1] = sub_2697E422C;
  OUTLINED_FUNCTION_7_8();

  return sub_2697E43AC();
}

uint64_t sub_2697E422C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2697E43AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[39] = v5;
  v1[40] = v6;
  v1[37] = v7;
  v1[38] = v8;
  v1[45] = *v0;
  v9 = sub_2698548D4();
  v1[46] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[47] = v10;
  v1[48] = OUTLINED_FUNCTION_37_0();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v11 = sub_269853984();
  v1[56] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[57] = v12;
  v1[58] = OUTLINED_FUNCTION_37_0();
  v1[59] = swift_task_alloc();
  v1[60] = type metadata accessor for AppSelectionResult(0);
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697E4578);
}

uint64_t sub_2697E4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  __swift_project_boxed_opaque_existential_1((*(v16 + 352) + 16), *(*(v16 + 352) + 40));
  sub_2697EABE0(v16 + 16);
  sub_2697E6EC0(v16 + 16, v16 + 240);
  if (*(v16 + 264))
  {
    sub_26968E5D4((v16 + 240), v16 + 200);
    __swift_project_boxed_opaque_existential_1((v16 + 200), *(v16 + 224));
    v17 = OUTLINED_FUNCTION_22_3();
    *(v16 + 512) = v18(v17);
    *(v16 + 520) = v19;
    if (v19)
    {
      v20 = swift_task_alloc();
      *(v16 + 528) = v20;
      *v20 = v16;
      v20[1] = sub_2697E4968;
      OUTLINED_FUNCTION_7_8();

      return sub_2697B7D94(v21, v22, v23);
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(*(v16 + 368), qword_281571B50);
    v42 = OUTLINED_FUNCTION_2_8();
    v43(v42);
    v44 = sub_2698548B4();
    v45 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v45))
    {
      v46 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v46);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v36 = *(v16 + 504);
    v52 = *(v16 + 352);
    v53 = *(v16 + 312);
    v54 = *(v16 + 296);

    v55 = OUTLINED_FUNCTION_44_0();
    v56(v55);
    __swift_project_boxed_opaque_existential_1((v16 + 200), *(v16 + 224));
    OUTLINED_FUNCTION_23_17();
    v57 = OUTLINED_FUNCTION_44_0();
    v59 = v58(v57);
    v61 = v60;
    sub_2697E719C(v16 + 16);
    *v36 = v53;
    v36[1] = v59;
    v36[2] = v61;
    OUTLINED_FUNCTION_22_3();
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v36, v54);

    __swift_destroy_boxed_opaque_existential_0((v16 + 200));
    v41 = *(v52 + 112);
  }

  else
  {
    sub_26969B0C0(v16 + 240, &qword_2803255D0, &unk_2698667D0);
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(*(v16 + 368), qword_281571B50);
    v26 = OUTLINED_FUNCTION_2_8();
    v27(v26);
    v28 = sub_2698548B4();
    v29 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v30);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v36 = *(v16 + 504);
    v37 = *(v16 + 352);
    v38 = *(v16 + 296);

    v39 = OUTLINED_FUNCTION_44_0();
    v40(v39);
    sub_2697E719C(v16 + 16);
    OUTLINED_FUNCTION_22_3();
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v36, v38);
    v41 = *(v37 + 112);
  }

  sub_2697E2988(v36);
  OUTLINED_FUNCTION_2_34();
  v72 = v63;
  v73 = v62;
  v74 = *(v16 + 392);
  v75 = *(v16 + 384);
  sub_2697E71F0(v41);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, v72, v73, v74, v75, a14, a15, a16);
}

uint64_t sub_2697E4968()
{
  OUTLINED_FUNCTION_2_7();
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v2 = v5;
  *(v5 + 536) = v0;

  if (v0)
  {

    v3 = sub_2697E55BC;
  }

  else
  {
    v3 = sub_2697E4A78;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697E4A78()
{
  v157 = v0;
  (*(v0[57] + 32))(v0[59], v0[58], v0[56]);
  v1 = *(sub_269853964() + 16);

  if (!v1)
  {

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(v0[46], qword_281571B50);
    v16 = OUTLINED_FUNCTION_2_8();
    v17(v16);
    v18 = sub_2698548B4();
    v19 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v19))
    {
      v20 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v20);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v26 = v0[63];
    v27 = v0[52];
    v28 = v0[46];
    v29 = v0[47];
    v154 = v0[44];
    v30 = v0[39];
    v149 = v0[37];

    (*(v29 + 8))(v27, v28);
    v31 = v0[28];
    v32 = v0[29];
    __swift_project_boxed_opaque_existential_1(v0 + 25, v31);
    OUTLINED_FUNCTION_23_17();
    v34 = v33(v31, v32);
    v36 = v35;
    v37 = OUTLINED_FUNCTION_44_0();
    v38(v37);
    sub_2697E719C((v0 + 2));
    *v26 = v30;
    v26[1] = v34;
    v26[2] = v36;
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v26, v149);
    goto LABEL_29;
  }

  v2 = v0[39];
  v3 = sub_269853964();
  sub_2697E589C(v3, v2);
  v5 = v4;

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = v0[55];
  v7 = v0[47];
  v8 = __swift_project_value_buffer(v0[46], qword_281571B50);
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  v152 = v8;
  v10(v6);

  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  v148 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_27_2();
    *v13 = 134217984;
    *(v13 + 4) = *(v5 + 16);

    OUTLINED_FUNCTION_119(&dword_269684000, v14, v15, "ModelAppPredictor signal gatherer returned %ld rows");
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v39 = v0[47];
  v41 = *(v39 + 8);
  v40 = v39 + 8;
  v155 = v41;
  v41(v0[55], v0[46]);
  v42 = *(v5 + 16);
  if (v42)
  {
    v43 = v9;
    v156[0] = MEMORY[0x277D84F90];
    sub_2698552A4();
    type metadata accessor for IntDictionaryFeatureProvider();
    v44 = 32;
    do
    {
      swift_allocObject();

      sub_2697E30C8(v45);
      sub_269855284();
      OUTLINED_FUNCTION_28_13();
      sub_2698552B4();
      OUTLINED_FUNCTION_28_13();
      sub_2698552C4();
      sub_269855294();
      v44 += 8;
      --v42;
    }

    while (v42);

    v46 = v156[0];
    v9 = v43;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v47 = v0[28];
  v48 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v47);

  if (v46 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
    OUTLINED_FUNCTION_86();
    sub_269855364();
  }

  else
  {
    sub_269855594();
  }

  v49 = v0[67];

  sub_26969329C(0, &qword_280322FB8, 0x277CBFEB0);
  v50 = OUTLINED_FUNCTION_86();
  v51 = sub_2697E3918(v50);
  v52 = (*(v48 + 24))(v51, v47, v48);
  if (v49)
  {
    v53 = v0[48];
    v54 = v0[46];

    v148(v53, v152, v54);
    v55 = v49;
    v56 = sub_2698548B4();
    v57 = sub_269854F24();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[48];
    v60 = v0[46];
    v146 = v49;
    if (v58)
    {
      v61 = OUTLINED_FUNCTION_27_2();
      v62 = OUTLINED_FUNCTION_9_3();
      v156[0] = v62;
      *v61 = 136315138;
      v0[36] = v49;
      v63 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v64 = sub_269854AE4();
      v66 = sub_26974F520(v64, v65, v156);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_269684000, v56, v57, "ModelAppPredictor error getting model predictions, %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v155(v59, v60);
    }

    else
    {

      v155(v59, v60);
    }

    v26 = v0[63];
    v74 = v0[59];
    v76 = v0[56];
    v75 = v0[57];
    v154 = v0[44];
    v77 = v0[39];
    v78 = v0[37];
    v80 = v0[28];
    v79 = v0[29];
    __swift_project_boxed_opaque_existential_1(v0 + 25, v80);
    OUTLINED_FUNCTION_23_17();
    v82 = v81(v80, v79);
    v84 = v83;

    (*(v75 + 8))(v74, v76);
    sub_2697E719C((v0 + 2));
    *v26 = v77;
    v26[1] = v82;
    v26[2] = v84;
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v26, v78);
LABEL_29:

    __swift_destroy_boxed_opaque_existential_0(v0 + 25);
    v85 = *(v154 + 112);
    goto LABEL_38;
  }

  v67 = v52;

  result = [swift_unknownObjectRetain() count];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v69 = result;
  v144 = v40;
  if (result)
  {
    v145 = 0;
    v156[0] = MEMORY[0x277D84F90];
    sub_2698552A4();
    v70 = 0;
    do
    {
      v71 = v70 + 1;
      v72 = [v67 featuresAtIndex_];
      sub_269855284();
      OUTLINED_FUNCTION_28_13();
      sub_2698552B4();
      OUTLINED_FUNCTION_28_13();
      sub_2698552C4();
      sub_269855294();
      v70 = v71;
    }

    while (v69 != v71);
    swift_unknownObjectRelease();
    v73 = v156[0];
  }

  else
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x277D84F90];
  }

  v86 = v0[65];
  v87 = v0[64];
  v88 = v0[54];
  v89 = v0[46];
  v90 = swift_task_alloc();
  *(v90 + 16) = v87;
  *(v90 + 24) = v86;

  sub_2697E6148(v91, v73, sub_2697E724C);
  v93 = v92;

  v94 = v148;
  v148(v88, v152, v89);

  v95 = sub_2698548B4();
  LOBYTE(v89) = sub_269854F14();

  v96 = os_log_type_enabled(v95, v89);
  v97 = v0[54];
  v98 = v0[46];
  if (v96)
  {
    OUTLINED_FUNCTION_27_2();
    v99 = OUTLINED_FUNCTION_14_24();
    v156[0] = v99;
    *v9 = 136315138;
    sub_2697F01B8(v93, v100, v101, v102, v103, v104, v105, v106, v141, v9, v144, v145, v148, v152, v155, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v157);
    v109 = sub_26974F520(v107, v108, v156);

    *(v9 + 4) = v109;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    v94 = v150;
    OUTLINED_FUNCTION_10();
    v9 = v142;
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v155(v97, v98);
  v115 = v0[62];
  v116 = v0[63];
  v117 = v0[53];
  v118 = v0[46];
  sub_2697E64B0(v93, v0[40], v0[41], v0[39], (v0 + 2), v0[42], v0[43], v116);

  v94(v117, v152, v118);
  sub_2697E2F08(v116, v115);
  v119 = sub_2698548B4();
  v120 = sub_269854F14();
  v121 = os_log_type_enabled(v119, v120);
  v122 = v0[62];
  if (v121)
  {
    v123 = v0[61];
    v124 = v0[57];
    v151 = v0[56];
    v153 = v0[59];
    v147 = v0[53];
    v143 = v0[46];
    OUTLINED_FUNCTION_27_2();
    v125 = OUTLINED_FUNCTION_14_24();
    v156[0] = v125;
    *v9 = 136315138;
    sub_2697E2F08(v122, v123);
    OUTLINED_FUNCTION_22_3();
    sub_269854AE4();
    sub_2697E71F0(v122);
    v126 = OUTLINED_FUNCTION_22_3();
    v129 = sub_26974F520(v126, v127, v128);

    *(v9 + 4) = v129;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
    swift_unknownObjectRelease();

    v155(v147, v143);
    (*(v124 + 8))(v153, v151);
  }

  else
  {
    v135 = v0[53];
    v136 = v0[46];
    swift_unknownObjectRelease();

    sub_2697E71F0(v122);
    v155(v135, v136);
    v137 = OUTLINED_FUNCTION_22_3();
    v138(v137);
  }

  sub_2697E719C((v0 + 2));
  v26 = v0[63];
  v139 = v0[44];
  sub_2697E2F08(v26, v0[37]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  v85 = *(v139 + 112);
LABEL_38:
  sub_2697E2988(v26);
  OUTLINED_FUNCTION_2_34();
  sub_2697E71F0(v85);

  OUTLINED_FUNCTION_7_7();

  return v140();
}