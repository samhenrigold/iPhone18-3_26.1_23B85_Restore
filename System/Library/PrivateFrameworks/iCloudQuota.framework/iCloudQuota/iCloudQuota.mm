id _ICQGetLogSystem()
{
  if (_ICQGetLogSystem_onceToken != -1)
  {
    _ICQGetLogSystem_cold_1();
  }

  v1 = _ICQGetLogSystem_log;

  return v1;
}

id _ICQSignpostLogSystem(uint64_t a1)
{
  if (_ICQSignpostLogSystem_onceToken != -1)
  {
    _ICQSignpostLogSystem_cold_1();
  }

  v2 = _ICQSignpostLogSystem_log;

  return v2;
}

os_signpost_id_t _ICQSignpostCreateWithObject(NSObject *a1, const void *a2)
{
  v2 = os_signpost_id_make_with_pointer(a1, a2);
  mach_continuous_time();
  return v2;
}

uint64_t sub_275575050()
{
  v0[10] = sub_275575888(v0[3], v0[4]);

  return MEMORY[0x2822009F8](sub_2755759B0);
}

unint64_t sub_2755750C0(uint64_t a1, uint64_t a2)
{
  sub_2755ECD7C();
  sub_2755EC9AC();
  v4 = sub_2755ECD9C();

  return sub_275575138(a1, a2, v4);
}

unint64_t sub_275575138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2755ECD0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2755751F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v7[26] = swift_task_alloc();
  v8 = sub_2755EC82C();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275575B64);
}

uint64_t sub_275575318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_27557645C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_275576474(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2755756C0(a1, &qword_2809F9D38, &qword_2755F3818);
    sub_2755786E4(a2, a3, v9);

    return sub_2755756C0(v9, &qword_2809F9D38, &qword_2755F3818);
  }

  return result;
}

uint64_t sub_2755753F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_275575414);
}

uint64_t sub_275575414()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_275578F68;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000033, 0x80000002755FA1D0, sub_2755768B8, v1, v4);
}

uint64_t sub_2755756C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t _ICQSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_ICQSignpostGetNanoseconds_onceToken != -1)
  {
    _ICQSignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _ICQSignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_280C851AC;
  return (v4 / v5 * (v3 - a2));
}

uint64_t sub_275575784()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_27557726C;

  return sub_275575854(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_275575854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_275575024);
}

uint64_t sub_275575888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (*(v6 + 16) && (v7 = sub_2755750C0(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for TaskLimiter();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = MEMORY[0x277D84F98];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    sub_2755D0824(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 112) = v12;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_2755759B0()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(*v1 + 120);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_275579188;

  return v8();
}

uint64_t sub_275575B2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275575B64()
{
  v93 = v0;
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_2755750C0(v4, v3);
    if (v6)
    {
      sub_2755D0230(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_2755D0230((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D28, &qword_2755F3760);
      v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809F9F90, &qword_2755F3A50);
      sub_2755ECABC();
      if (swift_dynamicCast())
      {
        v8 = v0[32];
        v10 = v0[27];
        v9 = v0[28];
        v11 = v0[18];
        v0[33] = v11;
        v12 = sub_2755763AC();
        (*(v9 + 16))(v8, v12, v10);

        v13 = sub_2755EC81C();
        v14 = sub_2755ECB0C();

        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[32];
        v18 = v0[27];
        v17 = v0[28];
        if (v15)
        {
          v89 = v11;
          v20 = v0[20];
          v19 = v0[21];
          v21 = swift_slowAlloc();
          v86 = v16;
          v22 = swift_slowAlloc();
          v92[0] = v22;
          *v21 = 136315138;
          v23 = v19;
          v11 = v89;
          *(v21 + 4) = sub_2755CC688(v20, v23, v92);
          _os_log_impl(&dword_275572000, v13, v14, "TaskLimiter: reusing existing task for identifier %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x277C7DA70](v22, -1, -1);
          MEMORY[0x277C7DA70](v21, -1, -1);

          (*(v17 + 8))(v86, v18);
        }

        else
        {

          (*(v17 + 8))(v16, v18);
        }

        v82 = swift_task_alloc();
        v0[34] = v82;
        *v82 = v0;
        v82[1] = sub_2755CFBA4;
        v77 = v0[24];
        v78 = v0[19];
        v79 = MEMORY[0x277D84950];
        v80 = v11;
        v81 = v7;
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v24 = v0[31];
  v25 = v0[28];
  v26 = sub_2755763AC();
  v87 = *(v25 + 16);
  v90 = v26;
  v87(v24);

  v27 = sub_2755EC81C();
  v28 = sub_2755ECB0C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[31];
  v32 = v0[27];
  v31 = v0[28];
  if (v29)
  {
    v34 = v0[20];
    v33 = v0[21];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v92[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2755CC688(v34, v33, v92);
    _os_log_impl(&dword_275572000, v27, v28, "TaskLimiter: creating new task for identifier %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x277C7DA70](v36, -1, -1);
    MEMORY[0x277C7DA70](v35, -1, -1);
  }

  v85 = *(v31 + 8);
  v85(v30, v32);
  v37 = v0[30];
  v38 = v0[26];
  v39 = v0[27];
  v41 = v0[23];
  v40 = v0[24];
  v42 = v0[22];
  v43 = sub_2755ECA9C();
  (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v40;
  v44[5] = v42;
  v44[6] = v41;

  v45 = sub_2755CFE20(0, 0, v38, &unk_2755F3758, v44, v40);
  v0[36] = v45;
  (v87)(v37, v90, v39);

  v46 = sub_2755EC81C();
  v47 = sub_2755ECB0C();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[30];
  v50 = v0[27];
  if (v48)
  {
    v51 = v45;
    v53 = v0[20];
    v52 = v0[21];
    v54 = swift_slowAlloc();
    v84 = v49;
    v55 = swift_slowAlloc();
    v92[0] = v55;
    *v54 = 136315138;
    v56 = v53;
    v45 = v51;
    *(v54 + 4) = sub_2755CC688(v56, v52, v92);
    _os_log_impl(&dword_275572000, v46, v47, "TaskLimiter: storing task for identifier %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x277C7DA70](v55, -1, -1);
    MEMORY[0x277C7DA70](v54, -1, -1);

    v57 = v84;
  }

  else
  {

    v57 = v49;
  }

  v85(v57, v50);
  v58 = v0[29];
  v59 = v0[27];
  v60 = v0[20];
  v61 = v0[21];
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809F9F90, &qword_2755F3A50);
  v92[3] = sub_2755ECABC();
  v92[4] = &off_288430840;
  v92[0] = v45;
  swift_beginAccess();

  sub_275575318(v92, v60, v61);
  swift_endAccess();
  (v87)(v58, v90, v59);

  v63 = sub_2755EC81C();
  v64 = sub_2755ECB0C();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v0[29];
  v67 = v0[27];
  if (v65)
  {
    v88 = v0[29];
    v68 = v45;
    v70 = v0[20];
    v69 = v0[21];
    v71 = swift_slowAlloc();
    v91 = v62;
    v92[0] = swift_slowAlloc();
    v72 = v92[0];
    *v71 = 136315138;
    v73 = v70;
    v45 = v68;
    *(v71 + 4) = sub_2755CC688(v73, v69, v92);
    _os_log_impl(&dword_275572000, v63, v64, "TaskLimiter: performing task operation for identifier %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v74 = v72;
    v62 = v91;
    MEMORY[0x277C7DA70](v74, -1, -1);
    MEMORY[0x277C7DA70](v71, -1, -1);

    v75 = v88;
  }

  else
  {

    v75 = v66;
  }

  v85(v75, v67);
  v76 = swift_task_alloc();
  v0[37] = v76;
  *v76 = v0;
  v76[1] = sub_2755781D4;
  v77 = v0[24];
  v78 = v0[19];
  v79 = MEMORY[0x277D84950];
  v80 = v45;
  v81 = v62;
LABEL_17:

  return MEMORY[0x282200430](v78, v80, v77, v81, v79);
}

uint64_t sub_27557636C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2755763D0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2755EC82C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_27557645C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_275576474(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2755D09C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2755D02B8(v16, a4 & 1);
    v11 = sub_2755750C0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2755ECD2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_27557645C(a1, v22);
  }

  else
  {
    sub_2755765C8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2755765C8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27557645C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_275576638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27557726C;

  return sub_275576714(a1, v4, v5, v6);
}

uint64_t sub_275576714(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_27557726C;

  return v8(a1);
}

uint64_t sub_27557680C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275577558;

  return sub_2755753F0(a1, v5, v4);
}

uint64_t sub_2755768C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275578EB8;
  v7[3] = &block_descriptor_0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275576ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_2755ECA9C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  sub_2755CEE70(0, 0, v7, &unk_2755F3CB8, v9);
}

uint64_t sub_275576BF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275576C48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_275577614;

  return v6(a1);
}

uint64_t sub_275576D40()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275577558;

  return sub_275576DD8(v4, v5, v6, v2, v3);
}

uint64_t sub_275576DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 160) & 0xFFFFFFFFFFFFLL | 0x654F000000000000;
  v5[4] = *(*a4 + 160);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_275576E14);
}

uint64_t sub_275576E14()
{
  (*(v0 + 32))();

  return MEMORY[0x2822009F8](sub_27557720C);
}

uint64_t sub_275576E80()
{
  v1 = v0;
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[17];
  v8 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v7);
  v9 = (*(v8 + 8))(0xD000000000000013, 0x80000002755FA570, v7, v8);
  if (v9 && (v10 = sub_2755D9084(v9), , v10))
  {
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_2755DD284(v28))
    {
      v17 = i;
LABEL_11:
      v18 = (*(v10 + 56) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v20 = *v18;
      v19 = v18[1];
      v13 &= v13 - 1;
      v28[0] = v20;
      v28[1] = v19;
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v25 = v1[17];
        v26 = v1[18];
        __swift_project_boxed_opaque_existential_0(v1 + 14, v25);
        return (*(v26 + 24))(0xD000000000000013, 0x80000002755FA570, v25, v26);
      }

      v13 = *(v10 + 64 + 8 * v17);
      ++i;
      if (v13)
      {
        i = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = sub_2755763AC();
    (*(v3 + 16))(v6, v21, v2);
    v22 = sub_2755EC81C();
    v23 = sub_2755ECB0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275572000, v22, v23, "No cached LiftUI data to discard", v24, 2u);
      MEMORY[0x277C7DA70](v24, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
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

uint64_t sub_275577184()
{
  v1 = *v0;
  v2 = sub_2755EC95C();
  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2755EC90C();

  return v4;
}

uint64_t sub_27557720C()
{
  MEMORY[0x277C7C7E0]();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27557726C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_275577514()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27557755C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275577558;

  return sub_275576C48(a1, v4);
}

uint64_t sub_275577614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_275577754()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_27557726C;

  return sub_275577824(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_275577824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v10;
  v8[30] = v11;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  return MEMORY[0x2822009F8](sub_275577858);
}

uint64_t sub_275577884()
{
  v0[32] = sub_275575888(v0[25], v0[26]);

  return MEMORY[0x2822009F8](sub_2755778F4);
}

uint64_t sub_2755778F4()
{
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v5 = swift_allocObject();
  v0[33] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(*v1 + 120);
  v7 = v4;

  v13 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_2755785C8;
  v9 = v0[25];
  v10 = v0[26];
  v11 = MEMORY[0x277D84F70] + 8;

  return (v13)(v0 + 12, v9, v10, &unk_2755F3728, v5, v11);
}

uint64_t sub_275577A84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275577AC4(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_275577558;

  return sub_275577B70(a1, v6, v5, v4);
}

uint64_t sub_275577B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_275577B94);
}

uint64_t sub_275577B94()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_275578034;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F70] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xEE00293A6B736174, sub_275577C90, v1, v4);
}

uint64_t sub_275577CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275577D74;
  v7[3] = &block_descriptor_32;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_275577D74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_275578D44(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_2755756C0(v10, &qword_2809F9CF8, &qword_2755F3F10);
}

uint64_t sub_275577E24(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
  if (a2)
  {
    *&v8[0] = a2;
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
    return sub_2755ECA6C();
  }

  else
  {
    sub_275578CDC(a1, &v6, &qword_2809F9CF8, &qword_2755F3F10);
    if (v7)
    {
      sub_275578D44(&v6, v8);
      sub_2755CDA88(v8, &v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
      sub_2755ECA7C();
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      return sub_2755756C0(&v6, &qword_2809F9CF8, &qword_2755F3F10);
    }
  }
}

uint64_t objectdestroy_41Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_275578034()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_275578170);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_275578170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755781D4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_275578300;
  }

  else
  {
    v2 = sub_27557907C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_275578300()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];

  sub_2755783BC(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2755783BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2755EC82C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = sub_2755763AC();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_2755EC81C();
  v12 = sub_2755ECB0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2755CC688(a1, a2, v17);
    _os_log_impl(&dword_275572000, v11, v12, "TaskLimiter: cleaning up task for identifier %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x277C7DA70](v14, -1, -1);
    MEMORY[0x277C7DA70](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  swift_beginAccess();

  sub_275575318(v17, a1, a2);
  return swift_endAccess();
}

uint64_t sub_2755785C8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_275578790;
  }

  else
  {

    v2 = sub_2755CECF4;
  }

  return MEMORY[0x2822009F8](v2);
}

double sub_2755786E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2755750C0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2755D09C4();
      v10 = v12;
    }

    sub_27557645C((*(v10 + 56) + 40 * v8), a3);
    sub_2755789F0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_275578790()
{

  v1 = sub_2755EC4FC();
  v2 = [v1 domain];
  if (!v2)
  {
    sub_2755EC98C();
    v2 = sub_2755EC95C();
  }

  v17 = *(v0 + 280);
  v3 = [v1 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D08, &unk_2755F3CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2755F3680;
  *(inited + 32) = sub_2755EC98C();
  *(inited + 40) = v5;
  v6 = [v1 localizedDescription];
  v7 = sub_2755EC98C();
  v9 = v8;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_275578BAC(inited);
  swift_setDeallocating();
  sub_2755756C0(inited + 32, &qword_2809F9D10, &qword_2755F3730);
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = sub_2755EC8FC();

  v12 = [v10 initWithDomain:v2 code:v3 userInfo:v11];

  *(v0 + 144) = 0u;
  *(v0 + 128) = 0u;
  v13 = v12;
  v16(v0 + 128, v12);

  sub_2755756C0(v0 + 128, &qword_2809F9CF8, &qword_2755F3F10);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2755789F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2755ECBDC() + 1) & ~v5;
    do
    {
      sub_2755ECD7C();

      sub_2755EC9AC();
      v11 = sub_2755ECD9C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_275578BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
    v3 = sub_2755ECC6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_275578CDC(v4, &v13, &qword_2809F9D10, &qword_2755F3730);
      v5 = v13;
      v6 = v14;
      result = sub_2755750C0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_275578D44(&v15, (v3[7] + 32 * result));
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

uint64_t sub_275578CDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_275578D44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_275578D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275578CDC(a1, v12, &qword_2809F9CF8, &qword_2755F3F10);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_2755ECCFC();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  (*(a3 + 16))(a3, v10, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_275578EB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_275578F68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27557907C()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];

  sub_2755783BC(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_275579188()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2755CF468;
  }

  else
  {

    v2 = sub_2755792A4;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2755792A4()
{
  (*(v0 + 56))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275579398()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2755793D0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275579418()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2755794B8()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275579584()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27557965C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2755796A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755796E0()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2755797D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2755EC61C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_275579850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2755EC61C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2755798CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275579904()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

_ICQAlertSpecification *_ICQAlertSpecificationForServerDict(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"alertInfo");
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_opt_new();
      [v3 setServerDict:v2];
      goto LABEL_9;
    }

    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "alertInfo: expected NSDictionary, got %@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _ICQAlertSpecificationForServerDict_cold_1(v4);
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

__CFString *_ICQStringForAction(uint64_t a1)
{
  v1 = @"ICQActionNone";
  if (a1 <= 5)
  {
    v3 = @"ICQActionPresentPurchaseFlow";
    v4 = @"ICQActionPurchaseBuy";
    v5 = @"ICQActionPurchaseComplete";
    if (a1 != 5)
    {
      v5 = @"ICQActionNone";
    }

    if (a1 != 4)
    {
      v4 = v5;
    }

    if (a1 != 3)
    {
      v3 = v4;
    }

    if (a1 == 2)
    {
      v1 = @"ICQActionRejectOffer";
    }

    if (a1 == 1)
    {
      v1 = @"ICQActionDismiss";
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 'd':
        result = @"ICQActionPresentManageStorage";
        break;
      case 'e':
        result = @"ICQActionCancel";
        break;
      case 'f':
        result = @"ICQActionShowInlineAlert";
        break;
      case 'g':
        result = @"ICQActionOpenPaymentUpdate";
        break;
      case 'h':
        result = @"ICQActionOpenCloudBackup";
        break;
      case 'i':
        result = @"ICQActionCloudUpgrade";
        break;
      case 'j':
        result = @"ICQActionPhotosOptimize";
        break;
      case 'k':
        result = @"ICQActionPhotosCloudEnable";
        break;
      case 'l':
        result = @"ICQActionPhotosCloudUpgradeEnable";
        break;
      case 'm':
        result = @"ICQActionFamilySetup";
        break;
      case 'n':
        result = @"ICQActionFamilyUsageWithRUI";
        break;
      case 'o':
        result = @"ICQActionStartFamilySharing";
        break;
      case 'p':
        result = @"ICQActionLaunchRemoteUI";
        break;
      case 'q':
        result = @"ICQActionLaunchJITAppKitUI";
        break;
      case 'r':
        result = @"ICQActionLaunchAMSDynamicUI";
        break;
      case 's':
        result = @"ICQActionLaunchLiftUI";
        break;
      case 't':
        result = @"ICQActionCloudUpgradeOslo";
        break;
      case 'u':
        result = @"ICQActionPhotosCloudUpgradeEnableOslo";
        break;
      case 'v':
        result = @"ICQActionDirectToOslo";
        break;
      case 'w':
        result = @"ICQActionLaunchLegacyPurchase";
        break;
      case 'x':
        result = @"ICQActionLaunchUpgradeFlowWithRUI";
        break;
      case 'y':
        result = @"ICQActionLaunchUpgradeFlowWithLiftUI";
        break;
      case 'z':
        result = @"ICQActionLaunchAppleOne";
        break;
      case '{':
        result = @"ICQActionHTTPCall";
        break;
      case '|':
        result = @"ICQActionHTTPGETCall";
        break;
      case '}':
        result = @"ICQActionDismissBanner";
        break;
      case '~':
        result = @"ICQActionLaunchNativeView";
        break;
      case '\x7F':
        result = @"ICQActionUpgradeOslo";
        break;
      default:
        if (a1 == 7)
        {
          v1 = @"ICQActionDriveAllowUnlimitedCellular";
        }

        if (a1 == 6)
        {
          result = @"ICQActionOpenURL";
        }

        else
        {
          result = v1;
        }

        break;
    }
  }

  return result;
}

uint64_t _ICQActionForString(void *a1)
{
  v1 = a1;
  if (_ICQActionForString_onceToken != -1)
  {
    _ICQActionForString_cold_1();
  }

  v2 = objc_msgSend_objectForKeyedSubscript_(_ICQActionForString_sActionForString);
  if (!v2)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _ICQActionForString_cold_2(v1, v3);
    }

    v2 = &unk_2884432F8;
  }

  v4 = [v2 integerValue];

  return v4;
}

void sub_27557C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v29 + 104));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 152), 8);
  objc_destroyWeak((v30 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t ___isWAPIDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  _isWAPIDevice_sIsWAPIDevice = result;
  return result;
}

uint64_t ICQUsedDiskSpaceForVolume(void *a1)
{
  v5[2] = 0;
  memset(v6, 0, 12);
  v5[0] = 5;
  v5[1] = 2155872256;
  v1 = getattrlist([a1 fileSystemRepresentation], v5, v6, 0xCuLL, 0);
  if (!v1)
  {
    return *(v6 + 4);
  }

  v2 = v1;
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ICQUsedDiskSpaceForVolume_cold_1(v2, v3);
  }

  return 0;
}

void sub_27557F398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _ICQUpgradeNowSampleLink(uint64_t a1)
{
  if (_ICQUpgradeNowSampleLink_onceToken != -1)
  {
    _ICQUpgradeNowSampleLink_cold_1();
  }

  v2 = _ICQUpgradeNowSampleLink_sUpgradeNowSampleLink;

  return v2;
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A651A08;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  return result;
}

void ICQOpenURL(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v2 openSensitiveURL:v1 withOptions:0];
  }

  else
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (v1)
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
      }

      else
      {
        v4 = @"Nil";
      }

      v5 = 138412546;
      v6 = v1;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "attempt to open URL %@ of class %@", &v5, 0x16u);
      if (v1)
      {
      }
    }
  }
}

void _ICQOpenPurchaseFlowInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/STORAGE_UPGRADE"];
  ICQOpenURL(v0);
}

void _ICQOpenManageStorageInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/MANAGE_STORAGE"];
  ICQOpenURL(v0);
}

void _ICQOpenFamilySetupInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=setupFamily&clientAppContext=iCloudStorage"];
  ICQOpenURL(v0);
}

void _ICQOpenPrimaryPaymentInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PAYMENT_AND_SHIPPING/PRIMARY_PAYMENT"];
  ICQOpenURL(v0);
}

void _ICQOpenCloudBackupInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/BACKUP"];
  ICQOpenURL(v0);
}

void __AlertSpecificationSampleForAlmostFullLevel_block_invoke()
{
  v0 = objc_opt_new();
  [v0 setTitle:@"Add iCloud Storage"];
  [v0 setMessage:{@"You are using 4.6 GB of your 5 GB iCloud storage. Add more storage to keep using iCloud Photo Library, iCloud Mail, and Backup."}];
  v1 = MEMORY[0x277CBEC10];
  v5 = [ICQLink linkWithText:@"Add iCloud Storage" action:3 parameters:MEMORY[0x277CBEC10]];
  v2 = [ICQLink linkWithText:@"Manage Storage" action:100 parameters:v1];
  v3 = [ICQLink linkWithText:@"Not Now" action:2 parameters:v1];
  [v0 setLink:v5 forButtonIndex:1];
  [v0 setLink:v2 forButtonIndex:2];
  [v0 setLink:v3 forButtonIndex:3];
  [v0 setDefaultButtonIndex:1];
  v4 = AlertSpecificationSampleForAlmostFullLevel_sAlertSpecification;
  AlertSpecificationSampleForAlmostFullLevel_sAlertSpecification = v0;
}

void __AlertSpecificationSampleForFullLevel_block_invoke()
{
  v0 = objc_opt_new();
  [v0 setTitle:@"iCloud Storage is Full"];
  [v0 setMessage:{@"iCloud Photo Library, iCloud Mail, and Backup are no longer updating. Add more storage to keep using iCloud.\n[ENG: LOCAL SAMPLE UI]"}];
  v1 = MEMORY[0x277CBEC10];
  v5 = [ICQLink linkWithText:@"Add iCloud Storage" action:3 parameters:MEMORY[0x277CBEC10]];
  v2 = [ICQLink linkWithText:@"Manage Storage" action:100 parameters:v1];
  v3 = [ICQLink linkWithText:@"Not Now" action:2 parameters:v1];
  [v0 setLink:v5 forButtonIndex:1];
  [v0 setLink:v2 forButtonIndex:2];
  [v0 setLink:v3 forButtonIndex:3];
  [v0 setDefaultButtonIndex:1];
  v4 = AlertSpecificationSampleForFullLevel_sAlertSpecification;
  AlertSpecificationSampleForFullLevel_sAlertSpecification = v0;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id getINDaemonConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_0;
  v7 = getINDaemonConnectionClass_softClass_0;
  if (!getINDaemonConnectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_0;
    v3[3] = &unk_27A6517A8;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_27558B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27558BDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27558D15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _handlePushReceivedDarwinNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handlePushReceivedDarwinNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

Class __getINDaemonConnectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A651DD8;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void ___handlePushReceivedDarwinNotification_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v1;
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "received push received darwin notification %@", &v14, 0xCu);
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationRegular"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 3;
LABEL_9:
    [v5 _handlePushReceivedDarwinNotificationRequestType:v7];
    goto LABEL_10;
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationPremium"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 2;
    goto LABEL_9;
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationDefault"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 1;
    goto LABEL_9;
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ___handlePushReceivedDarwinNotification_block_invoke_cold_1(v1, v6, v8, v9, v10, v11, v12, v13);
  }

LABEL_10:
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_27558FD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27559071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ICQModelSpecificLocalizedStringKeyForKey(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = [v2 uppercaseString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v4 hasSuffix:@"_SIMULATOR"])
  {
    v5 = [v4 substringToIndex:{objc_msgSend(v4, "rangeOfString:", @"_SIMULATOR"}];

    v4 = v5;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v1, v4];

  return v6;
}

void sub_2755933F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755964EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2755982A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27559913C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

Class __getCKContainerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A6526F0;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CloudKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerClass_block_invoke_cold_1();
  }

  getCKContainerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

__CFString *_ICQStringForOfferType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"ICQOfferTypeUnknown";
  }

  else
  {
    return off_27A652870[a1 - 1];
  }
}

uint64_t _ICQOfferTypeForString(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (_ICQOfferTypeForString_onceToken != -1)
  {
    _ICQOfferTypeForString_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = objc_msgSend_objectForKeyedSubscript_(_ICQOfferTypeForString_sOfferTypeForString);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "_ICQOfferTypeForString - illegal offer type %@", &v8, 0xCu);
    }

    v5 = 0;
  }

LABEL_11:
  return v5;
}

uint64_t _ICQOfferTypeForServerString(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (_ICQOfferTypeForServerString_onceToken != -1)
  {
    _ICQOfferTypeForServerString_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = objc_msgSend_objectForKeyedSubscript_(_ICQOfferTypeForServerString_sOfferTypeForServerString);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "_ICQOfferTypeForServerString - illegal server offer type %@", &v8, 0xCu);
    }

    v5 = 0;
  }

LABEL_11:
  return v5;
}

uint64_t _ICQIntegerFromDictionaryKey(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:a3];
  v9 = objc_opt_class();
  v10 = _ICQObjectForKey(v7, v6, v8, v9);

  v11 = [v10 integerValue];
  return v11;
}

id _ICQObjectForKey(void *a1, void *a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [a1 objectForKey:v6];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
    if (v8)
    {
      v10 = _ICQGetLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "persisted offer(s) bad %@: %@", &v12, 0x16u);
      }

      v9 = v7;
    }
  }

  return v9;
}

id _ICQStringFromDictionaryKey(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_class();
  v9 = _ICQObjectForKey(v7, v6, v5, v8);

  return v9;
}

uint64_t _ICQLevelForString(void *a1)
{
  v1 = a1;
  if (_ICQLevelForString_onceToken != -1)
  {
    _ICQLevelForString_cold_1();
  }

  v2 = objc_msgSend_objectForKeyedSubscript_(_ICQLevelForString_sLevelForString);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *_ICQStringForLevel(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"None";
  }

  else
  {
    return off_27A652908[a1 - 1];
  }
}

void sub_2755A7764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755A9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ICQCreateErrorWithMessage(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.quota" code:a1 userInfo:v5];

  return v6;
}

void sub_2755AB410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755AB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2755ABC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLIsCPLDataclassEnabledSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = PhotoLibraryServicesLibrary();
  result = dlsym(v3, "PLIsCPLDataclassEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLIsCPLDataclassEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotoLibraryServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27A652BB8;
    v5 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotoLibraryServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesLibrary();
  result = dlsym(v2, "PLCPLHasBeenEnabledForCurrentAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesLibrary();
  result = dlsym(v2, "PLCloudPhotoLibraryKeepOriginalsIsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPLPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotoLibraryServicesLibrary();
  result = objc_getClass("PLPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPLPhotoLibraryClass_block_invoke_cold_1();
    return [(ICQBackupInfo *)v3 description];
  }

  return result;
}

id getINDaemonConnectionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_1;
  v7 = getINDaemonConnectionClass_softClass_1;
  if (!getINDaemonConnectionClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_1;
    v3[3] = &unk_27A6517A8;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2755AE498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A652CD0;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_1 = result;
  return result;
}

id _ICQServerDictionaryForBundleIdentifier(void *a1, void *a2, void *a3, int a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v68 = a2;
  v69 = a3;
  if (![v68 isEqualToString:@"__WILDCARD__"])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v66 = v7;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v75;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v75 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v74 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v25)
            {
              v53 = _ICQGetLogSystem();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = objc_opt_class();
                Name = class_getName(v54);
                *buf = 136315394;
                v90 = Name;
                v91 = 2112;
                v92 = v25;
                _os_log_impl(&dword_275572000, v53, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
              }
            }

            v52 = 0;
LABEL_64:

LABEL_73:
            v32 = v68;
            v7 = v66;
            goto LABEL_90;
          }

          v26 = objc_msgSend_objectForKeyedSubscript_(v25);
          v27 = [v26 isEqualToString:v68];

          if (v27)
          {
            if (!v69 || (objc_msgSend_objectForKeyedSubscript_(v25), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isEqualToString:v69], v28, v29))
            {
              v52 = v25;
              goto LABEL_64;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v22);
    }

    v30 = _ICQGetLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v90 = v68;
      _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "app specific spec for %@ not found in appId array; using workaround", buf, 0xCu);
    }

    v31 = _ICQGetLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      _ICQServerDictionaryForBundleIdentifier_cold_1();
    }

    v32 = _ICQContainerIDForKnownBundleID(v68);
    if (!v32)
    {
      v32 = _ICQBundleIDForKnownContainerID(v68);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v33 = v20;
    v34 = [v33 countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v71;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v71 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v70 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v38)
            {
              v62 = _ICQGetLogSystem();
              v7 = v66;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v63 = objc_opt_class();
                v64 = class_getName(v63);
                *buf = 136315394;
                v90 = v64;
                v91 = 2112;
                v92 = v38;
                _os_log_impl(&dword_275572000, v62, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
              }

              v52 = 0;
              goto LABEL_86;
            }

LABEL_84:
            v52 = 0;
LABEL_85:
            v7 = v66;
LABEL_86:

            goto LABEL_90;
          }

          v39 = objc_msgSend_objectForKeyedSubscript_(v38);
          v40 = [v39 isEqualToString:v32];

          if (!v40)
          {
            if (![v32 isEqualToString:@"com.apple.icloud.docs"])
            {
              continue;
            }

            v41 = objc_msgSend_objectForKeyedSubscript_(v38);
            v42 = [v41 isEqualToString:@"com.apple.icloud.drive"];

            if (!v42)
            {
              continue;
            }
          }

          v52 = v38;
          goto LABEL_85;
        }

        v35 = [v33 countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v35);
    }

    v33 = _ICQGetLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v33, OS_LOG_TYPE_DEFAULT, "app specific spec still not found using workaround", buf, 2u);
    }

    goto LABEL_84;
  }

  if (a4)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    v10 = *v83;
    v66 = v7;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v83 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v82 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v13 = objc_msgSend_objectForKeyedSubscript_(v12);
      v14 = objc_msgSend_objectForKeyedSubscript_(v13);
      v15 = [v14 isEqualToString:@"%@"];

      if (v15)
      {
        v52 = v12;
LABEL_72:

        goto LABEL_73;
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
        v7 = v66;
        if (v9)
        {
          goto LABEL_5;
        }

LABEL_12:

        v16 = _ICQGetLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "warning: missing appBannerInfo that could be considered a button";
          v18 = v16;
          v19 = 2;
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    if (v12)
    {
      v56 = _ICQGetLogSystem();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v58 = class_getName(v57);
        *buf = 136315394;
        v90 = v58;
        v91 = 2112;
        v92 = v12;
        _os_log_impl(&dword_275572000, v56, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    v52 = 0;
    goto LABEL_72;
  }

  if (!v69)
  {
    v52 = [v7 firstObject];
    goto LABEL_89;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v43 = v7;
  v44 = [v43 countByEnumeratingWithState:&v78 objects:v88 count:16];
  if (!v44)
  {
    goto LABEL_54;
  }

  v45 = v44;
  v46 = *v79;
  while (2)
  {
    v47 = v7;
    for (k = 0; k != v45; ++k)
    {
      if (*v79 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v49 = *(*(&v78 + 1) + 8 * k);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v47;
        if (v49)
        {
          v59 = _ICQGetLogSystem();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = objc_opt_class();
            v61 = class_getName(v60);
            *buf = 136315394;
            v90 = v61;
            v91 = 2112;
            v92 = v49;
            _os_log_impl(&dword_275572000, v59, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
          }
        }

        v52 = 0;
        goto LABEL_88;
      }

      v50 = objc_msgSend_objectForKeyedSubscript_(v49);
      v51 = [v50 isEqualToString:v69];

      if (v51)
      {
        v52 = v49;
        v7 = v47;
LABEL_88:

        goto LABEL_89;
      }
    }

    v45 = [v43 countByEnumeratingWithState:&v78 objects:v88 count:16];
    v7 = v47;
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v90 = v69;
    v17 = "warning: missing appBannerInfo for reason %@";
    v18 = v16;
    v19 = 12;
LABEL_56:
    _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  }

LABEL_57:

  v52 = 0;
LABEL_89:
  v32 = v68;
LABEL_90:

  return v52;
}

_ICQBannerSpecification *_ICQBubbleBannerSpecificationForServerDict(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _ICQServerDictionaryForBundleIdentifier(v4, v3, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v5 source:@"ICQBannerSourceBubbleBannerInfo"];
LABEL_12:

      goto LABEL_13;
    }

    if (v5)
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v11 = 136315394;
        Name = class_getName(v9);
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v11, 0x16u);
      }
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v11 = 136315394;
      Name = class_getName(v7);
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v11, 0x16u);
    }

    goto LABEL_11;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

_ICQBannerSpecification *_ICQDetailBannerSpecificationForServerDict(void *a1, void *a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = _ICQBubbleBannerSpecificationForServerDict(v5, v6);
  v8 = v7;
  if (v7 && (a3 & 1) == 0)
  {
    v9 = v7;
    goto LABEL_29;
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(v5);
  if (!v10)
  {
    v11 = v6;
    v12 = v5;
    [v11 isEqualToString:@"com.apple.icq"];
    v13 = objc_msgSend_objectForKeyedSubscript_(v12);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = _ICQServerDictionaryForBundleIdentifier(v13, v11, 0, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[_ICQBannerSpecification alloc] initWithServerDictionary:v14];
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      if (v14)
      {
        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v22 = 136315394;
          Name = class_getName(v20);
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
        }
      }
    }

    else
    {
      if (!v13)
      {
        v9 = 0;
        goto LABEL_27;
      }

      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v22 = 136315394;
        Name = class_getName(v16);
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v22 = 136315394;
      Name = class_getName(v15);
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
    }

    goto LABEL_20;
  }

  v11 = _ICQServerDictionaryForBundleIdentifier(v10, v6, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      v17 = _ICQGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v22 = 136315394;
        Name = class_getName(v18);
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v22, 0x16u);
      }
    }

LABEL_20:
    v9 = 0;
    goto LABEL_28;
  }

  v9 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v11 source:@"ICQBannerSourceDetailAppBannerInfo"];
LABEL_28:

LABEL_29:

  return v9;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_2755B6CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2755B882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2755BADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ICQDoesCriterionValueEqualBOOL(void *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue] ^ a2 ^ 1;
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "criterion: expected BOOL value, got %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A652E70;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary;
    if (SetupAssistantLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getINDaemonConnectionClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A652F00;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_2 = result;
  return result;
}

id _ICQBannerLogSystem(uint64_t a1)
{
  if (_ICQBannerLogSystem_onceToken != -1)
  {
    _ICQBannerLogSystem_cold_1();
  }

  v2 = _ICQBannerLogSystem_log;

  return v2;
}

void ICQLogOfferDetailsForServerDictionary(void *a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = objc_msgSend_objectForKeyedSubscript_(v1);
      v3 = objc_msgSend_objectForKeyedSubscript_(v1);
      v4 = objc_msgSend_objectForKeyedSubscript_(v1);
      v5 = objc_msgSend_objectForKeyedSubscript_(v1);
      v81 = objc_msgSend_objectForKeyedSubscript_(v1);
      v6 = objc_msgSend_objectForKeyedSubscript_(v1);
      v80 = objc_msgSend_objectForKeyedSubscript_(v1);
      v77 = objc_msgSend_objectForKeyedSubscript_(v1);
      v79 = objc_msgSend_objectForKeyedSubscript_(v1);
      v7 = objc_msgSend_objectForKeyedSubscript_(v1);
      v72 = objc_msgSend_objectForKeyedSubscript_(v1);
      v76 = objc_msgSend_objectForKeyedSubscript_(v1);
      v75 = objc_msgSend_objectForKeyedSubscript_(v1);
      v74 = objc_msgSend_objectForKeyedSubscript_(v1);
      v78 = objc_msgSend_objectForKeyedSubscript_(v1);
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v88 = v2;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "offerType: %{public}@", buf, 0xCu);
      }

      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v88 = v3;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "type: %{public}@", buf, 0xCu);
      }

      v73 = v3;

      v10 = _ICQGetLogSystem();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v12 = v7;
      v13 = v6;
      if (v4)
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v88 = v4;
        v14 = "notificationInfo: present %@";
        v15 = v10;
        v16 = 12;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 0;
        v14 = "notificationInfo: missing";
        v15 = v10;
        v16 = 2;
      }

      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_17:

      if (v5)
      {
        v19 = objc_opt_respondsToSelector();
        v20 = _ICQGetLogSystem();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            v22 = [v5 BOOLValue];
            *buf = 67109120;
            LODWORD(v88) = v22;
            _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "iTunesAccountExists: %d", buf, 8u);
          }
        }

        else if (v21)
        {
          v23 = objc_opt_class();
          *buf = 138412290;
          v88 = v23;
          v24 = v23;
          _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "iTunesAccountExists: unexpected class %@", buf, 0xCu);
        }
      }

      if (v81)
      {
        v25 = objc_opt_respondsToSelector();
        v26 = _ICQGetLogSystem();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v27)
          {
            [v81 doubleValue];
            *buf = 134217984;
            v88 = v28;
            _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "callbackInterval: %g", buf, 0xCu);
          }
        }

        else if (v27)
        {
          v29 = objc_opt_class();
          *buf = 138412290;
          v88 = v29;
          v30 = v29;
          _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "callbackInterval: unexpected class %@", buf, 0xCu);
        }
      }

      if (v80)
      {
        v31 = objc_opt_respondsToSelector();
        v32 = _ICQGetLogSystem();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            v34 = [v80 BOOLValue];
            *buf = 67109120;
            LODWORD(v88) = v34;
            _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "showAlert: %d", buf, 8u);
          }
        }

        else if (v33)
        {
          v35 = objc_opt_class();
          *buf = 138412290;
          v88 = v35;
          v36 = v35;
          _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "showAlert: unexpected class %@", buf, 0xCu);
        }
      }

      v37 = _ICQGetLogSystem();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v77)
      {
        if (!v38)
        {
          goto LABEL_44;
        }

        *buf = 0;
        v39 = "alertInfo: present";
      }

      else
      {
        if (!v38)
        {
          goto LABEL_44;
        }

        *buf = 0;
        v39 = "alertInfo: missing";
      }

      _os_log_impl(&dword_275572000, v37, OS_LOG_TYPE_DEFAULT, v39, buf, 2u);
LABEL_44:

      if (v79)
      {
        v40 = objc_opt_respondsToSelector();
        v41 = _ICQGetLogSystem();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40)
        {
          if (v42)
          {
            v43 = [v79 BOOLValue];
            *buf = 67109120;
            LODWORD(v88) = v43;
            _os_log_impl(&dword_275572000, v41, OS_LOG_TYPE_DEFAULT, "showBanner: %d", buf, 8u);
          }
        }

        else if (v42)
        {
          v44 = objc_opt_class();
          *buf = 138412290;
          v88 = v44;
          v45 = v44;
          _os_log_impl(&dword_275572000, v41, OS_LOG_TYPE_DEFAULT, "showBanner: unexpected class %@", buf, 0xCu);
        }
      }

      v46 = _ICQGetLogSystem();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      v48 = v13;
      if (v7)
      {
        v49 = v72;
        if (!v47)
        {
          goto LABEL_57;
        }

        *buf = 0;
        v50 = "appBannerInfo: present";
      }

      else
      {
        v49 = v72;
        if (!v47)
        {
          goto LABEL_57;
        }

        *buf = 0;
        v50 = "appBannerInfo: missing";
      }

      _os_log_impl(&dword_275572000, v46, OS_LOG_TYPE_DEFAULT, v50, buf, 2u);
LABEL_57:

      v51 = v73;
      if (v49)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v68 = v48;
          v69 = v4;
          v70 = v2;
          v71 = v1;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v52 = v49;
          v53 = [v52 countByEnumeratingWithState:&v82 objects:v86 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v83;
            do
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v83 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v82 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v58 = MEMORY[0x277CCACA8];
                  v59 = objc_msgSend_objectForKeyedSubscript_(v57);
                  v60 = [v58 stringWithFormat:@"appContextInfo: appId:%@ offerInfo: ", v59];

                  v61 = objc_msgSend_objectForKeyedSubscript_(v57);
                  ICQLogDictKeys(v60, v61);
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v82 objects:v86 count:16];
            }

            while (v54);
          }

          v2 = v70;
          v1 = v71;
          v49 = v72;
          v51 = v73;
          v4 = v69;
          v48 = v68;
        }

        v62 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
LABEL_74:

          v64 = _ICQGetLogSystem();
          v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
          if (v76)
          {
            if (v65)
            {
              *buf = 0;
              v66 = "followUpInfo: present";
LABEL_79:
              _os_log_impl(&dword_275572000, v64, OS_LOG_TYPE_DEFAULT, v66, buf, 2u);
            }
          }

          else if (v65)
          {
            *buf = 0;
            v66 = "followUpInfo: missing";
            goto LABEL_79;
          }

          ICQLogDictKeys(@"app-independent offerInfo: ", v75);
          ICQLogDictKeys(@"planDetails: ", v74);
          ICQLogDictKeys(@"quotaInfo: ", v48);
          if (v78)
          {
            v67 = _ICQGetLogSystem();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v88 = v78;
              _os_log_impl(&dword_275572000, v67, OS_LOG_TYPE_DEFAULT, "container: %@", buf, 0xCu);
            }
          }

          goto LABEL_85;
        }

        *buf = 0;
        v63 = "appContextInfo: present";
      }

      else
      {
        v62 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 0;
        v63 = "appContextInfo: missing";
      }

      _os_log_impl(&dword_275572000, v62, OS_LOG_TYPE_DEFAULT, v63, buf, 2u);
      goto LABEL_74;
    }

    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138412290;
      v88 = v17;
      v18 = v17;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "event details: unexpected class %@", buf, 0xCu);
    }
  }

  else
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "event details: nil", buf, 2u);
    }
  }

LABEL_85:
}

void ICQLogDictKeys(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = [v4 allKeys];
  }

  else
  {
    v5 = @"missing";
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", &v7, 0x16u);
  }
}

__CFString *StringFromResponseData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v7 = 0;
    v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v7];
    v3 = v7;
    if (v3)
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v1 encoding:4];

      v2 = v5;
    }
  }

  else
  {
    v2 = @"<no data>";
  }

  return v2;
}

void ICQLogDataTaskComplete(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = StringFromResponseData(v8);
    v13 = 138544130;
    v14 = v7;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ request completed with data: %{public}@\n\nwith response: %{public}@\n\t\nwith error: %{public}@", &v13, 0x2Au);
  }
}

os_signpost_id_t _ICQSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

id _ICQBundleIDForKnownContainerID(void *a1)
{
  v1 = _ICQInitKnownBundleContainerMappings_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _ICQBundleIDForKnownContainerID_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sBundleIDForKnownContainerID);

  return v3;
}

id _ICQContainerIDForKnownBundleID(void *a1)
{
  v1 = _ICQInitKnownBundleContainerMappings_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _ICQBundleIDForKnownContainerID_cold_1();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(sContainerIDForKnownBundleID);

  return v3;
}

id _ICQStringForKey(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(a1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSString from key %@ but got %@", &v9, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

id _ICQStringForOneOfKeys(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _ICQStringForKey(v3, *(*(&v12 + 1) + 8 * i));
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id _ICQDictionaryForKey(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(a1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSDictionary from key %@ but got %@", &v9, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

id _ICQArrayForKey(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(a1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSDictionary from key %@ but got %@", &v9, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

id _ICQDictionaryForOneOfKeys(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _ICQDictionaryForKey(v3, *(*(&v12 + 1) + 8 * i));
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t _ICQBooleanForServerObjectDefault(void *a1, uint64_t a2)
{
  v3 = a1;
  if (_ICQBooleanForServerObjectDefault_onceToken != -1)
  {
    _ICQBooleanForServerObjectDefault_cold_1();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = _ICQBooleanForServerObjectDefault_sBoolDict;
      v5 = [v3 uppercaseString];
      v6 = [v4 objectForKey:v5];

      if (v6)
      {
        a2 = [v6 BOOLValue];
      }
    }
  }

  return a2;
}

uint64_t _ICQActionForServerActionString(void *a1)
{
  v1 = a1;
  if (_ICQActionForServerActionString_onceToken != -1)
  {
    _ICQActionForServerActionString_cold_1();
  }

  v2 = objc_msgSend_objectForKeyedSubscript_(_ICQActionForServerActionString_actionForServerActionString);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = _ICQActionForString(v1);
  }

  v5 = v4;

  return v5;
}

id _ICQActionParametersForServerActionParameters(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:@"URL"];
  }

  v25 = v5;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v24 = @"alertKey";
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        if ([(__CFString *)v13 isEqualToString:@"buyQueryParams", v24])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v15 = v7;
          v16 = v14;
          v17 = @"URLQueryParameters";
LABEL_14:
          [v15 setObject:v16 forKey:v17];
          goto LABEL_15;
        }

        if ([(__CFString *)v13 isEqualToString:@"linkURL"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v15 = v7;
          v16 = v14;
          v17 = @"URL";
          goto LABEL_14;
        }

        if ([(__CFString *)v13 isEqualToString:@"openUrl"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v15 = v7;
          v16 = v14;
          v17 = @"openURL";
          goto LABEL_14;
        }

        if ([(__CFString *)v13 isEqualToString:@"route"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v18 = v7;
          v19 = v14;
          v20 = @"route";
          goto LABEL_30;
        }

        if ([(__CFString *)v13 isEqualToString:@"purchaseAttribution"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v18 = v7;
          v19 = v14;
          v20 = @"purchaseAttribution";
          goto LABEL_30;
        }

        if (([(__CFString *)v13 isEqualToString:@"skipCFU"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"dismissLockScreen"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"zeroCFUAction"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          if ([(__CFString *)v14 BOOLValue])
          {
            v19 = @"true";
          }

          else
          {
            v19 = @"false";
          }

          v18 = v7;
LABEL_29:
          v20 = v13;
LABEL_30:
          [v18 setObject:v19 forKeyedSubscript:v20];
LABEL_15:

          goto LABEL_16;
        }

        if (([(__CFString *)v13 isEqualToString:@"amsParams"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"buyParams"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"interruptedBuyErrorCodes"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"userAgentSuffix"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"actionOnActionCompleteURL"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"actionOnActionComplete"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v18 = v7;
          v19 = v14;
          goto LABEL_29;
        }

        if ([(__CFString *)v13 isEqualToString:@"alertKey"])
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v8);
          v18 = v7;
          v19 = v14;
          v20 = v24;
          goto LABEL_30;
        }

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v21 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v10 = v21;
    }

    while (v21);
  }

  v22 = [v7 copy];

  return v22;
}

id _ICQLinkForServerValues(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (v12 && v14)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138413058;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "link overrides action in text:%@ action:%@ params:%@ link:%@", &v26, 0x2Au);
    }

    goto LABEL_7;
  }

  if (v14)
  {
LABEL_7:
    v18 = 6;
    goto LABEL_8;
  }

  if (_ICQActionForServerActionString(v12))
  {
    v15 = _ICQActionForServerActionString(v12);
  }

  else
  {
    v15 = _ICQActionForString(v12);
  }

  v18 = v15;
LABEL_8:
  v19 = _ICQActionParametersForServerActionParameters(v15, v13, v14);
  v20 = v19;
  if (v16)
  {
    if (v19)
    {
      v21 = [v19 mutableCopy];
    }

    else
    {
      v21 = objc_opt_new();
    }

    v22 = v21;
    [v21 setObject:v16 forKey:@"ServerLinkId"];
    v23 = [v22 copy];

    v20 = v23;
  }

  v24 = [ICQLink linkWithText:v11 options:a6 action:v18 parameters:v20];

  return v24;
}

id _ICQLinkForServerMessageParameterWithOptions(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

LABEL_10:
      v10 = 0;
      goto LABEL_22;
    }

    v25 = 138412290;
    v26 = v3;
    v9 = "link: expected dict: invalid server message parameter:%@";
LABEL_8:
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, v9, &v25, 0xCu);
    goto LABEL_9;
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(v3);

  if (v4)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(v3);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_msgSend_objectForKeyedSubscript_(v3);
    }

    v12 = v7;

    v13 = objc_msgSend_objectForKeyedSubscript_(v3);
    v14 = objc_msgSend_objectForKeyedSubscript_(v3);
    v15 = objc_msgSend_objectForKeyedSubscript_(v3);
    v17 = v13;
    v18 = v14;
    v19 = v12;
    v20 = v15;
    v21 = 0;
    goto LABEL_18;
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v3);

  if (v11)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v3);
    v13 = objc_msgSend_objectForKeyedSubscript_(v3);
    v14 = objc_msgSend_objectForKeyedSubscript_(v3);
    v15 = v14;
    if (!v14)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v3);
    }

    v16 = objc_msgSend_objectForKeyedSubscript_(v3);
    v10 = _ICQLinkForServerValues(v12, v13, v15, 0, v16, a2);

    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(v3);

  if (!v23)
  {
    v24 = objc_msgSend_objectForKeyedSubscript_(v3);

    if (v24)
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v3);
      v13 = objc_msgSend_objectForKeyedSubscript_(v3);
      v14 = v13;
      if (!v13)
      {
        v14 = objc_msgSend_objectForKeyedSubscript_(v3);
      }

      v10 = _ICQLinkForServerValues(0, v12, v14, 0, 0, a2);
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v8 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v25 = 138412290;
    v26 = v3;
    v9 = "Invalid link: %@";
    goto LABEL_8;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(v3);
  v13 = objc_msgSend_objectForKeyedSubscript_(v3);
  v14 = objc_msgSend_objectForKeyedSubscript_(v3);
  v15 = objc_msgSend_objectForKeyedSubscript_(v3);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = 0;
  v21 = v15;
LABEL_18:
  v10 = _ICQLinkForServerValues(v17, v18, v19, v20, v21, a2);
LABEL_19:

LABEL_20:
LABEL_21:

LABEL_22:

  return v10;
}

id _ICQLinksForServerMessageParametersWithOptions(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = objc_msgSend_objectForKeyedSubscript_(v9);
          if ([v10 isEqualToString:@"cancel"])
          {
            v11 = _ICQGetLogSystem();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v23 = v9;
              _os_log_debug_impl(&dword_275572000, v11, OS_LOG_TYPE_DEBUG, "Main links array excludes dismiss link: %@", buf, 0xCu);
            }
          }

          else
          {
            v11 = _ICQLinkForServerMessageParameterWithOptions(v9, a2);
            if (v11)
            {
              [v16 addObject:v11];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = v16;
    v13 = [v16 copy];
    v3 = v15;
LABEL_19:

    goto LABEL_20;
  }

  if (v3)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "links: expected array: invalid server message parameters:%@", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_20:

  return v13;
}

id _ICQLinksForServerActionBasedUniversalLink(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v13 = v1;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = objc_msgSend_objectForKeyedSubscript_(v3);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = _ICQLinkForServerMessageParameterWithOptions(v9, 0);
              [v2 setObject:v10 forKeyedSubscript:v8];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v5);
      v1 = v13;
    }
  }

  else
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v1;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "universal links: invalid server parameters:%@", buf, 0xCu);
    }
  }

  v11 = [v2 copy];

  return v11;
}

id _ICQBindingsKeyForServerMessageParameterKey(void *a1, void *a2)
{
  v2 = _ICQStringForKey(a1, a2);
  if ([v2 hasPrefix:@"%$"])
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"%$", "length")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _ICQMessageWithFormat(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = objc_opt_new();
  v21 = v5;
  v7 = [v3 rangeOfString:@"%@" options:2 range:{0, v5}];
  v9 = v8;
  v10 = 0;
  if ([v4 count] && v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v4 objectAtIndexedSubscript:v11];
      v13 = [v3 substringWithRange:{v10, v7 - v10}];
      [v6 appendString:v13];

      v14 = MEMORY[0x277CCACA8];
      v15 = [v12 text];
      v16 = [v14 stringWithFormat:@"%@", v15];
      [v6 appendString:v16];

      if ([v12 options])
      {
        [v6 appendString:@" >"];
      }

      v10 = v7 + v9;
      ++v11;

      v7 = [v3 rangeOfString:@"%@" options:2 range:{v7 + v9, v21 - (v7 + v9)}];
      v9 = v17;
    }

    while (v11 < [v4 count] && v9);
  }

  v18 = [v3 substringFromIndex:v10];
  [v6 appendString:v18];

  v19 = [v6 copy];

  return v19;
}

id _ICQLinkButtonForServerMessage(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(v3);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 componentsSeparatedByString:@"%@"];
      v7 = [v6 count];

      if (v7 >= 3)
      {
        v8 = _ICQGetLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "format is %@; button may not contain more than one %%@", &v13, 0xCu);
        }
      }
    }

    v9 = objc_msgSend_objectForKeyedSubscript_(v3);
    v10 = _ICQLinksForServerMessageParametersWithOptions(v9, a2);

    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void _ICQAppendServerMessageFormatAndLinks(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
LABEL_10:
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "expected message; bad plist object:%@", &v15, 0xCu);
    }

    v8 = &stru_288431E38;
    goto LABEL_10;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v5);
  v10 = v9;
  v11 = &stru_288431E38;
  if (v9)
  {
    v11 = v9;
  }

  v8 = v11;

  v12 = objc_msgSend_objectForKeyedSubscript_(v5);
  v13 = _ICQLinksForServerMessageParametersWithOptions(v12, 0);

LABEL_11:
  if ([v6 length])
  {
    [v6 appendString:@"\u2029"];
  }

  [v6 appendString:v8];
  [v7 addObjectsFromArray:v13];
}

void _ICQServerHeaderGetFormatAndLinks(void *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

      v5 = v6;
    }
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        _ICQAppendServerMessageFormatAndLinks(*(*(&v14 + 1) + 8 * v13++), v7, v8);
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (a2)
  {
    *a2 = [v7 copy];
  }

  if (a3)
  {
    *a3 = [v8 copy];
  }
}

id _ICQMessageForServerHeader(void *a1)
{
  v6 = &stru_288431E38;
  v5 = MEMORY[0x277CBEBF8];
  _ICQServerHeaderGetFormatAndLinks(a1, &v6, &v5);
  v1 = v6;
  v2 = v5;
  v3 = _ICQMessageWithFormat(v1, v2);

  return v3;
}

void _ICQServerDictToOfferTypeAndLevel(void *a1, unint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = objc_msgSend_objectForKeyedSubscript_(v5);
  v7 = _ICQOfferTypeForServerString(v6);

  v8 = objc_msgSend_objectForKeyedSubscript_(v5);

  v9 = _ICQLevelForString(v8);
  if (v7 - 2 < 7)
  {
    v10 = qword_2755F33E0[v7 - 2];
    if (!a2)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a2 = v7;
    goto LABEL_20;
  }

  v11 = v9 - 1;
  if (v7 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v12 = v7;
  }

  v14 = v11 >= 3;
  if (v11 >= 3)
  {
    v10 = v13;
  }

  else
  {
    v10 = v9;
  }

  if (v14)
  {
    v7 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (a2)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (a3)
  {
    *a3 = v10;
  }
}

uint64_t _ICQIsBuddyOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_msgSend_objectForKeyedSubscript_(v1);
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsDefaultOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_msgSend_objectForKeyedSubscript_(v1);
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsPremiumOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_msgSend_objectForKeyedSubscript_(v1);
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsEventOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_msgSend_objectForKeyedSubscript_(v1);
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Class __getINDaemonConnectionClass_block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A653020;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_3 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2755C9F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2755C9FA4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2755C9FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CA070(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CA0E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CA184;
}

uint64_t sub_2755CA1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 152))(v7);
}

uint64_t sub_2755CA2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CA41C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CA58C;
}

uint64_t sub_2755CA5C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2755CA658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CA6CC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CA73C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

uint64_t sub_2755CA82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_2755CA93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CAA74(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

uint64_t sub_2755CAC34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2755CAC80(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_2755CACD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CAD48(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CADB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

void sub_2755CAE5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2755CAF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 248))(v7);
}

uint64_t sub_2755CB024(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2755EC86C();
  return swift_endAccess();
}

uint64_t sub_2755CB09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CB1D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

void sub_2755CB344(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2755EC87C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2755EC87C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

char *StorageAppsModel.__allocating_init(account:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2755CCD98(a1);

  return v2;
}

char *StorageAppsModel.init(account:)(void *a1)
{
  v2 = sub_2755CCD98(a1);

  return v2;
}

char *StorageAppsModel.deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  type metadata accessor for StorageAppsModel(0);
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps[0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError[0];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);

  return v1;
}

uint64_t StorageAppsModel.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  type metadata accessor for StorageAppsModel(0);
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps[0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError[0];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);

  return swift_deallocClassInstance();
}

void sub_2755CB848(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 176))(0);
  v5 = [objc_allocWithZone(ICQCloudStorageDataController) initWithAccount_];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_2755CD10C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2755CBC80;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);
  sub_2755CD118(a1, a2);

  [v5 fetchStorageAppsWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_2755CB9B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2755EC8CC();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2755EC8EC();
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9CC8, 0x277D85C78);
  v25 = sub_2755ECB3C();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v19 = a5;
  aBlock[4] = sub_2755CDB30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275578EB8;
  aBlock[3] = &block_descriptor_24;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = a1;

  sub_2755CD118(a4, v19);

  sub_2755EC8DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755CDD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CD8, &unk_2755F44F0);
  sub_2755CDD60();
  sub_2755ECBBC();
  v23 = v25;
  MEMORY[0x277C7CBD0](0, v17, v13, v20);
  _Block_release(v20);

  (*(v28 + 8))(v13, v10);
  return (*(v26 + 8))(v17, v27);
}

void sub_2755CBC80(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2755CBD0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2755EC82C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v73 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v63 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v63 - v16;
  v18 = sub_2755763AC();
  v19 = *(v7 + 16);
  v68 = v18;
  v69 = v19;
  v70 = v7 + 16;
  (v19)(v17);

  v20 = sub_2755EC81C();
  v21 = sub_2755ECB2C();

  v22 = os_log_type_enabled(v20, v21);
  v72 = v6;
  v67 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v71 = v7;
    v25 = v24;
    v76[0] = v24;
    *v23 = 136315138;
    v26 = a1;
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      a1 = 7104878;
      v27 = 0xE300000000000000;
    }

    v28 = sub_2755CC688(a1, v27, v76);

    *(v23 + 4) = v28;
    a1 = v26;
    _os_log_impl(&dword_275572000, v20, v21, "Manage Storage navigation to bundleId: %s!", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v7 = v71;
    MEMORY[0x277C7DA70](v25, -1, -1);
    v29 = v23;
    v6 = v72;
    MEMORY[0x277C7DA70](v29, -1, -1);
  }

  v30 = *(v7 + 8);
  v31 = v30(v17, v6);
  v32 = (*(*v3 + 120))(v31);
  if (!v32)
  {
    v69(v73, v68, v6);
    v48 = sub_2755EC81C();
    v49 = sub_2755ECB2C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = a1;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_275572000, v48, v49, "No storage apps, delaying navigation until request returns", v51, 2u);
      v52 = v51;
      a1 = v50;
      MEMORY[0x277C7DA70](v52, -1, -1);
    }

    v30(v73, v6);
    v53 = &v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
    *v53 = a1;
    *(v53 + 1) = a2;

    return;
  }

  v33 = v32;
  v65 = v30;
  v34 = &v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
  *v34 = 0;
  *(v34 + 1) = 0;

  v36 = (*(*v3 + 216))(v35);
  v75 = a1;
  if (v36 >> 62)
  {
LABEL_32:
    v37 = sub_2755ECC3C();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = *(*v3 + 232);
  v63[1] = *v3 + 232;
  v64 = v38;
  v39 = v38(v76);
  sub_2755CC444(v37);
  v39(v76, 0);
  if (!a2)
  {

    return;
  }

  v40 = [v33 apps];
  sub_2755CDAE8(0, &qword_2809F9C88, off_27A650D00);
  v41 = sub_2755ECA1C();

  v63[0] = v3;
  v71 = v7;
  v74 = a2;
  v66 = v33;
  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_12;
    }

LABEL_34:

    return;
  }

  v42 = sub_2755ECC3C();
  if (!v42)
  {
    goto LABEL_34;
  }

LABEL_12:
  v33 = 0;
  v73 = (v41 & 0xC000000000000001);
  a2 = v41 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v73)
    {
      v43 = MEMORY[0x277C7CC90](v33, v41);
    }

    else
    {
      if (v33 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v43 = *(v41 + 8 * v33 + 32);
    }

    v44 = v43;
    v3 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v45 = [v43 bundleIds];
    v7 = sub_2755ECA1C();

    v76[0] = v75;
    v76[1] = v74;
    MEMORY[0x28223BE20](v46, v47);
    v63[-2] = v76;
    LOBYTE(v45) = sub_2755CCC30(sub_2755CD128, &v63[-4], v7);

    if (v45)
    {
      break;
    }

    ++v33;
    if (v3 == v42)
    {
      goto LABEL_34;
    }
  }

  v54 = v67;
  v55 = v72;
  v69(v67, v68, v72);
  v56 = sub_2755EC81C();
  v57 = sub_2755ECB2C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_275572000, v56, v57, "Manage Storage navigation found matching bundleId", v58, 2u);
    MEMORY[0x277C7DA70](v58, -1, -1);
  }

  v65(v54, v55);
  v59 = [v44 action];
  v60 = v64(v76);
  v62 = v61;
  MEMORY[0x277C7CA80]();
  if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2755ECA2C();
  }

  sub_2755ECA3C();
  v60(v76, 0);
}

uint64_t sub_2755CC444(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = -v3;
    if (!__OFSUB__(0, v3))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v3 = sub_2755ECC3C();
  result = v7;
  v4 = -v3;
  if (__OFSUB__(0, v3))
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = -result;
  if (v4 <= 0 && v4 > v5)
  {
    goto LABEL_22;
  }

  result = v3 - result;
  if (__OFADD__(v3, v5))
  {
    goto LABEL_20;
  }

  if (v3 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_2755CD2DC(result, v3);
}

uint64_t sub_2755CC4FC()
{
  v1 = (*(*v0 + 232))(v5);
  *v2 = MEMORY[0x277D84F90];

  v1(v5, 0);
  v3 = (v0 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId);
  *v3 = 0;
  v3[1] = 0;

  return (*(*v0 + 128))(0);
}

void sub_2755CC5C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*a2 + 296);

    v2(v3);
  }
}

uint64_t sub_2755CC63C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StorageAppsModel(0);
  result = sub_2755EC84C();
  *a2 = result;
  return result;
}

unint64_t sub_2755CC688(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2755CC754(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2755CDA88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2755CC754(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2755CC860(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2755ECC2C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2755CC860(uint64_t a1, unint64_t a2)
{
  v3 = sub_2755CC8AC(a1, a2);
  sub_2755CC9DC(&unk_288430458);
  return v3;
}

void *sub_2755CC8AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2755CCAC8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2755ECC2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2755EC9BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2755CCAC8(v10, 0);
        result = sub_2755ECBFC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2755CC9DC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2755CCB3C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2755CCAC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CB8, &unk_2755F3600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2755CCB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CB8, &unk_2755F3600);
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

uint64_t sub_2755CCC30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_2755CCCDC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_2755ECC3C();
    }

    result = sub_2755ECC1C();
    *v2 = result;
  }

  return result;
}

char *sub_2755CCD98(void *a1)
{
  v2 = v1;
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps[0];
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C48, &qword_2755F3430);
  sub_2755EC85C();
  (*(v13 + 32))(&v2[v17], v16, v12);
  v18 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError[0];
  LOBYTE(v30) = 0;
  sub_2755EC85C();
  (*(v8 + 32))(&v2[v18], v11, v7);
  v19 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v30 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C70, &qword_2755F34E8);
  sub_2755EC85C();
  (*(v3 + 32))(&v2[v19], v6, v28);
  v20 = &v2[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v29;
  *&v2[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_account] = v29;
  type metadata accessor for DarwinRegistrar();
  v22 = v21;
  v23 = sub_2755CDDE8();
  v24 = *v23;
  v25 = v23[1];
  type metadata accessor for StorageAppsModel(0);

  sub_2755CDE10(v2, v24, v25, sub_2755CC5C0);

  return v2;
}

uint64_t type metadata accessor for StorageAppsModel(uint64_t a1)
{
  result = qword_2809FA360;
  if (!qword_2809FA360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755CD118(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2755CD128(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2755ECD0C() & 1;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2755CD1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2755CDAE8(0, &qword_2809F9CC0, off_27A650CE8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2755ECC3C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2755ECC3C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2755CD2DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2755ECC3C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2755ECC3C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2755CCCDC(result, 1);

  return sub_2755CD1CC(v5, v3, 0);
}

uint64_t _s11iCloudQuota16StorageAppsModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 120))();
  v4 = (*(*a2 + 120))();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_2755CDAE8(0, &qword_2809F9CB0, off_27A650D38);
      v6 = sub_2755ECB7C();

      if ((v6 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      sub_2755CDAE8(0, &qword_2809F9CA8, 0x277D82BB8);
      return sub_2755ECB7C() & 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

void sub_2755CD4E4(uint64_t a1)
{
  sub_2755CDA34(319, &qword_2809F9C90, &qword_2809F9C48, &qword_2755F3430);
  if (v1 <= 0x3F)
  {
    sub_2755CD9E4();
    if (v2 <= 0x3F)
    {
      sub_2755CDA34(319, &qword_2809F9CA0, &qword_2809F9C70, &qword_2755F34E8);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
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

void sub_2755CD9E4()
{
  if (!qword_2809F9C98)
  {
    v0 = sub_2755EC8BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F9C98);
    }
  }
}

void sub_2755CDA34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2755EC8BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2755CDA88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2755CDAE8(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_2755CDB30()
{
  v1 = v0[3];
  if (v0[2])
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 == 0;
  }

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 176))(1);
    }
  }

  else
  {
    v4 = v0[5];
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = *(*v5 + 128);
      v7 = v1;
      v6(v1);
    }

    else
    {
      v8 = v1;
    }

    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId);
      v11 = *(v9 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8);

      if (v11)
      {
        swift_beginAccess();
        v12 = swift_weakLoadStrong();
        if (v12)
        {
          (*(*v12 + 312))(v10, v11);
        }
      }
    }

    if (v4)
    {
      v4(v9);
    }
  }
}

unint64_t sub_2755CDD08()
{
  result = qword_2809F9CD0;
  if (!qword_2809F9CD0)
  {
    sub_2755EC8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9CD0);
  }

  return result;
}

unint64_t sub_2755CDD60()
{
  result = qword_2809F9CE0;
  if (!qword_2809F9CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F9CD8, &unk_2755F44F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9CE0);
  }

  return result;
}

void sub_2755CDE10(const void *a1, uint64_t a2, unint64_t a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v8 = sub_2755EC82C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v13)
  {
    v14 = v13;
    v21 = sub_2755EC95C();
    CFNotificationCenterAddObserver(v14, a1, a4, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v15 = v21;
  }

  else
  {
    v16 = sub_2755763AC();
    (*(v9 + 16))(v12, v16, v8);

    v17 = sub_2755EC81C();
    v18 = sub_2755ECB1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2755CC688(a2, a3, &v22);
      _os_log_impl(&dword_275572000, v17, v18, "Could not get darwin notification center, failed to register object for notification %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x277C7DA70](v20, -1, -1);
      MEMORY[0x277C7DA70](v19, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_2755CE05C(const void *a1)
{
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v7)
  {
    v14 = v7;
    CFNotificationCenterRemoveEveryObserver(v7, a1);
    v8 = v14;
  }

  else
  {
    v9 = sub_2755763AC();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2755EC81C();
    v11 = sub_2755ECB1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_275572000, v10, v11, "Could not get darwin notification center, failed to unregister object.", v12, 2u);
      MEMORY[0x277C7DA70](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2755CE248(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v3 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v4 = sub_2755EC7BC();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t sub_2755CE2D8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v3 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v4 = sub_2755EC7BC();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_2755CE354()
{
  v1 = v0;
  v2 = sub_2755EC79C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  sub_2755EC78C();
  v11 = sub_2755EC7AC();
  v12 = sub_2755ECB6C();
  if (sub_2755ECB8C())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2755EC77C();
    _os_signpost_emit_with_name_impl(&dword_275572000, v11, v12, v14, "ManageStorageDrilldown", "", v13, 2u);
    MEMORY[0x277C7DA70](v13, -1, -1);
  }

  (*(v3 + 16))(v7, v10, v2);
  sub_2755EC7FC();
  swift_allocObject();
  v15 = sub_2755EC7EC();
  (*(v3 + 8))(v10, v2);
  *(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = v15;
}

uint64_t sub_2755CE534(int a1)
{
  v2 = v1;
  v4 = sub_2755EC7CC();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC79C();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v2 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v22 = a1;

    v15 = sub_2755EC7AC();
    sub_2755EC7DC();
    v21 = sub_2755ECB5C();
    if (sub_2755ECB8C())
    {

      sub_2755EC80C();

      v16 = v23;
      if ((*(v23 + 88))(v7, v4) == *MEMORY[0x277D85B00])
      {
        v17 = 0;
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v7, v4);
        v18 = "success: %{BOOL}d";
        v17 = 1;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      *(v19 + 1) = v17;
      *(v19 + 2) = 1024;
      *(v19 + 4) = v22 & 1;
      v20 = sub_2755EC77C();
      _os_signpost_emit_with_name_impl(&dword_275572000, v15, v21, v20, "ManageStorageDrilldown", v18, v19, 8u);
      MEMORY[0x277C7DA70](v19, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    *(v2 + v14) = 0;
  }

  return result;
}

uint64_t sub_2755CE7E4()
{
  v1 = v0;
  v2 = sub_2755EC7CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2755EC79C();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7, v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v21 = v3;

    v14 = sub_2755EC7AC();
    sub_2755EC7DC();
    v20 = sub_2755ECB5C();
    if (sub_2755ECB8C())
    {

      sub_2755EC80C();

      v15 = v21;
      if ((*(v21 + 88))(v6, v2) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v15 + 8))(v6, v2);
        v16 = "didExitBeforeLoaded";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_2755EC77C();
      _os_signpost_emit_with_name_impl(&dword_275572000, v14, v20, v18, "ManageStorageDrilldown", v16, v17, 2u);
      MEMORY[0x277C7DA70](v17, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    *(v1 + v13) = 0;
  }

  return result;
}

uint64_t sub_2755CEA70()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v2 = sub_2755EC7BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2755CEAE0()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v2 = sub_2755EC7BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageStorageAnalytics(uint64_t a1)
{
  result = qword_2809FA380;
  if (!qword_2809FA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755CEBE0(uint64_t a1)
{
  result = sub_2755EC7BC();
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

uint64_t sub_2755CECF4()
{
  v1 = v0[29];
  sub_2755CDA88((v0 + 12), (v0 + 20));
  v1(v0 + 20, 0);

  sub_2755756C0((v0 + 20), &qword_2809F9CF8, &qword_2755F3F10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2755CEDA0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_275577558;

  return sub_275577824(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2755CEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_275578CDC(a3, v26 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2755ECA5C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2755EC99C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2755CF170(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_275577E24, v10);
}

uint64_t sub_2755CF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void, char *, uint64_t, void *))
{
  v25 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v24 - v18;
  v20 = sub_2755ECA9C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v9;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;
  v21[10] = a6;
  v22 = v9;

  a9(0, 0, v19, v25, v21);
}

uint64_t sub_2755CF468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755CF4D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_275577558;

  return sub_275575854(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2755CF5A4(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D00, &qword_2755F3708);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_275578EFC, v10);
}

uint64_t sub_2755CF6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_275578CDC(a3, v23 - v10, &qword_2809F9CE8, &qword_2755F3690);
  v12 = sub_2755ECA9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2755756C0(v11, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2755ECA5C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2755EC99C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id ICQTaskLimiters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQTaskLimiters.init()()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters;
  type metadata accessor for TaskLimiters();
  *&v0[v1] = sub_2755D0D4C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ICQTaskLimiters();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ICQTaskLimiters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQTaskLimiters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755CFBA4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2755CFD74;
  }

  else
  {
    v2 = sub_2755CFCD0;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2755CFCD0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755CFD74()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755CFE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25[-1] - v12;
  v25[5] = a4;
  v25[6] = a5;
  sub_2755D0CDC(a3, &v25[-1] - v12);
  v14 = sub_2755ECA9C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_2755756C0(v13, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2755ECA5C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2755EC99C();
      sub_2755D0174(v21 + 32, v25);

      v22 = v25[0];
      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v20 | v18)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v18;
    v25[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2755D0094()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2755D00C0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2755D0104()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2755D013C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2755D0174@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2755D0230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2755D02B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D40, &unk_2755F3820);
  v33 = v4;
  result = sub_2755ECC5C();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_27557645C(v24, v34);
      }

      else
      {
        sub_2755D0230(v24, v34);
      }

      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_27557645C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2755D057C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D30, &qword_2755F3810);
  v34 = v4;
  result = sub_2755ECC5C();
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

      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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

uint64_t sub_2755D0824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2755D057C(v16, a4 & 1);
      v11 = sub_2755750C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2755D0B6C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_2755D09C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D40, &unk_2755F3820);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2755D0230(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27557645C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2755D0B6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D30, &qword_2755F3810);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_2755D0CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755D0D60(uint64_t a1, uint64_t a2)
{
  v2 = sub_2755ECC8C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2755D0DB4(char a1)
{
  if (a1)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 0x79616C70736964;
  }
}

uint64_t sub_2755D0DE4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7373696D736964;
  }

  else
  {
    v2 = 0x79616C70736964;
  }

  if (*a2)
  {
    v3 = 0x7373696D736964;
  }

  else
  {
    v3 = 0x79616C70736964;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2755ECD0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2755D0E6C()
{
  sub_2755ECD7C();
  sub_2755EC9AC();

  return sub_2755ECD9C();
}

uint64_t sub_2755D0EE4(uint64_t a1)
{
  sub_2755EC9AC();
}

uint64_t sub_2755D0F40(uint64_t a1)
{
  sub_2755ECD7C();
  sub_2755EC9AC();

  return sub_2755ECD9C();
}

uint64_t sub_2755D0FB4@<X0>(char *a2@<X8>)
{
  v3 = sub_2755ECC8C();

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

void sub_2755D1014(uint64_t *a1@<X8>)
{
  v2 = 0x79616C70736964;
  if (*v1)
  {
    v2 = 0x7373696D736964;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

id sub_2755D1188()
{
  v0 = objc_allocWithZone(type metadata accessor for BubbleBannerTracker());
  result = sub_2755D12FC(0);
  qword_280C85118 = result;
  return result;
}

uint64_t *sub_2755D11F4()
{
  if (qword_280C85110 != -1)
  {
    swift_once();
  }

  return &qword_280C85118;
}

id static BubbleBannerTracker.shared.getter()
{
  if (qword_280C85110 != -1)
  {
    swift_once();
  }

  v1 = qword_280C85118;

  return v1;
}

id sub_2755D12FC(id a1)
{
  v2 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey];
  *v2 = 0xD000000000000015;
  *(v2 + 1) = 0x80000002755FA290;
  v3 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000002755FA2B0;
  v4 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey];
  *v4 = 0xD00000000000001CLL;
  *(v4 + 1) = 0x80000002755FA2D0;
  v5 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason];
  *v5 = 0xD000000000000011;
  *(v5 + 1) = 0x80000002755FA2F0;
  v6 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000002755FA310;
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v1[OBJC_IVAR___ICQBubbleBannerTracker_userDefaults] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BubbleBannerTracker();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_2755D1458(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = sub_2755EC61C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755EC5EC();
  v14 = a3;
  v15 = a1;
  sub_2755D46F0(v14, v13, v6);

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_2755D1564(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DA0, &qword_2755F39A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2755F3830;
  *(inited + 32) = 0x795472656E6E6162;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_2755ECAEC();
  *(inited + 56) = 0x616C707369447369;
  *(inited + 64) = 0xEB00000000646579;
  *(inited + 72) = sub_2755ECA4C();
  strcpy((inited + 80), "lastDismissed");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_2755ECADC();
  strcpy((inited + 104), "suppressUntil");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_2755ECADC();
  v5 = sub_2755D4F9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DA8, &qword_2755F39B0);
  swift_arrayDestroy();
  return v5;
}

id sub_2755D16CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2755D4F50();
    v4 = sub_2755EC8FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2755D1758@<X0>(uint64_t a1@<X8>)
{
  sub_2755EC5FC();
  v2 = sub_2755EC61C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_2755D17C8(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v181 = a4;
  v189 = a1;
  v11 = sub_2755EC82C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v167 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v182 = &v167 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v180 = &v167 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v178 = &v167 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v183 = &v167 - v31;
  v32 = sub_2755EC6DC();
  v187 = *(v32 - 8);
  v188 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v185 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_2755EC6EC();
  v184 = *(v186 - 1);
  MEMORY[0x28223BE20](v186, v35);
  v37 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v42 = &v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v167 - v44;
  v46 = sub_2755EC61C();
  v48 = MEMORY[0x28223BE20](v46, v47);
  v50 = MEMORY[0x28223BE20](v48, &v167 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = MEMORY[0x28223BE20](v50, v51);
  v54 = MEMORY[0x28223BE20](v52, v53);
  v56 = MEMORY[0x28223BE20](v54, v55);
  if (a6)
  {
    v63 = sub_2755DEA84();
    (*(v12 + 16))(v16, v63, v11);
    v64 = sub_2755EC81C();
    v65 = sub_2755ECB0C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
      _os_log_impl(&dword_275572000, v64, v65, "%s Banner was dismissed in the same session returning false", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x277C7DA70](v67, -1, -1);
      MEMORY[0x277C7DA70](v66, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    return 0;
  }

  v168 = v58;
  v169 = v57;
  v170 = a5;
  v171 = v62;
  v173 = v61;
  v174 = &v167 - v59;
  v176 = v60;
  v177 = v56;
  v179 = v12;
  v69 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_userDefaults];
  v70 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey];
  v175 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey + 8];
  v71 = sub_2755EC95C();
  v72 = [v69 dictionaryForKey_];

  if (!v72)
  {
    goto LABEL_22;
  }

  v172 = v11;
  v73 = sub_2755EC90C();

  result = [v189 aa_altDSID];
  if (result)
  {
    v74 = result;
    v75 = sub_2755EC98C();
    v77 = v76;

    if (*(v73 + 16))
    {
      v189 = v7;
      v78 = sub_2755750C0(v75, v77);
      v80 = v79;

      if (v80)
      {
        sub_2755CDA88(*(v73 + 56) + 32 * v78, &aBlock);

        v81 = v177;
        v82 = swift_dynamicCast();
        v83 = v176;
        (*(v176 + 56))(v45, v82 ^ 1u, 1, v81);
        v84 = *(v83 + 48);
        v85 = v84(v45, 1, v81);
        v7 = v189;
        if (v85 != 1)
        {
          v86 = *(v83 + 32);
          v86(v174, v45, v81);
          result = sub_2755EC5FC();
          v87 = a2 / 1000.0;
          if (COERCE__INT64(fabs(a2 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v87 > -9.22337204e18)
          {
            if (v87 < 9.22337204e18)
            {
              sub_2755EC6CC();
              v88 = v187;
              v89 = v188;
              v90 = v185;
              v187[13](v185, *MEMORY[0x277CC99A8], v188);
              sub_2755EC6BC();
              (v88[1])(v90, v89);
              (*(v184 + 8))(v37, v186);
              v91 = v177;
              v92 = v84(v42, 1, v177);
              v93 = v179;
              v94 = (v179 + 16);
              if (v92 == 1)
              {
                sub_2755D4B88(v42);
                v95 = sub_2755DEA84();
                v96 = v182;
                v97 = v172;
                (*v94)(v182, v95, v172);
                v98 = sub_2755EC81C();
                v99 = sub_2755ECB0C();
                if (os_log_type_enabled(v98, v99))
                {
                  v100 = swift_slowAlloc();
                  v101 = swift_slowAlloc();
                  aBlock = v101;
                  *v100 = 136315138;
                  *(v100 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                  _os_log_impl(&dword_275572000, v98, v99, "%s Unable to compute endate from given info.", v100, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v101);
                  MEMORY[0x277C7DA70](v101, -1, -1);
                  MEMORY[0x277C7DA70](v100, -1, -1);
                }

                (*(v93 + 8))(v96, v97);
                v102 = *(v176 + 8);
                v103 = v177;
                v102(v173, v177);
                v102(v174, v103);
                return 0;
              }

              v86(v171, v42, v91);
              v111 = sub_2755DEA84();
              v112 = *v94;
              v113 = v183;
              v185 = v111;
              v114 = v172;
              v186 = v112;
              v187 = v94;
              (v112)(v183);
              v115 = v176;
              v116 = *(v176 + 16);
              v117 = v168;
              v116(v168, v174, v91);
              v118 = v169;
              v116(v169, v173, v91);
              v119 = sub_2755EC81C();
              v120 = sub_2755ECB0C();
              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                aBlock = v184;
                *v121 = 136315906;
                *(v121 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                *(v121 + 12) = 2080;
                sub_2755D4C00(&qword_2809F9D88, MEMORY[0x277CC95B8]);
                LODWORD(v182) = v120;
                v122 = sub_2755ECCDC();
                v124 = v123;
                v125 = *(v115 + 8);
                v125(v117, v91);
                v126 = sub_2755CC688(v122, v124, &aBlock);
                v127 = v125;

                *(v121 + 14) = v126;
                *(v121 + 22) = 2048;
                *(v121 + 24) = a2;
                *(v121 + 32) = 2080;
                v114 = v172;
                v128 = sub_2755ECCDC();
                v130 = v129;
                v188 = v127;
                v127(v118, v91);
                v131 = sub_2755CC688(v128, v130, &aBlock);
                v132 = v179;

                *(v121 + 34) = v131;
                _os_log_impl(&dword_275572000, v119, v182, "%s Checking Banner supression threshold lastDismissed: %s supressUntil: %f current: %s", v121, 0x2Au);
                v133 = v184;
                swift_arrayDestroy();
                MEMORY[0x277C7DA70](v133, -1, -1);
                MEMORY[0x277C7DA70](v121, -1, -1);

                v134 = *(v132 + 8);
                v134(v183, v114);
              }

              else
              {

                v135 = *(v115 + 8);
                v135(v118, v91);
                v188 = v135;
                v135(v117, v91);
                v134 = *(v179 + 8);
                v134(v113, v114);
              }

              v136 = v91;
              v137 = v180;
              sub_2755D4C00(&qword_2809F9D80, MEMORY[0x277CC9590]);
              if (sub_2755EC93C())
              {
                v186(v137, v185, v114);
                v138 = sub_2755EC81C();
                v139 = sub_2755ECB0C();
                if (os_log_type_enabled(v138, v139))
                {
                  v140 = swift_slowAlloc();
                  v141 = swift_slowAlloc();
                  aBlock = v141;
                  *v140 = 136315138;
                  *(v140 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                  _os_log_impl(&dword_275572000, v138, v139, "%s Supression threshold not passed. Supressing banner", v140, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v141);
                  MEMORY[0x277C7DA70](v141, -1, -1);
                  v142 = v140;
                  v136 = v177;
                  MEMORY[0x277C7DA70](v142, -1, -1);
                }

                v134(v137, v114);
                sub_2755EC5DC();
                v144 = v143;
                v145 = v189;
                v146 = v181;
                if (*&v189[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason] == v181 && *&v189[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason + 8] == v170 || (sub_2755ECD0C() & 1) != 0)
                {
                  v147 = 0;
                }

                else if (*&v145[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason] == v146 && *&v145[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason + 8] == v170)
                {
                  v147 = 1;
                }

                else if (sub_2755ECD0C())
                {
                  v147 = 1;
                }

                else
                {
                  v147 = -1;
                }

                v148 = sub_2755EC95C();
                v149 = swift_allocObject();
                *(v149 + 16) = v147;
                *(v149 + 24) = 0;
                *(v149 + 32) = v144;
                *(v149 + 40) = a2;
                v194 = sub_2755D510C;
                v195 = v149;
                aBlock = MEMORY[0x277D85DD0];
                v191 = 1107296256;
                v192 = sub_2755D16CC;
                v193 = &block_descriptor_8;
                v150 = _Block_copy(&aBlock);

                AnalyticsSendEventLazy();
                _Block_release(v150);

                v151 = v188;
                v188(v171, v136);
                v151(v173, v136);
                v151(v174, v136);
                return 0;
              }

              v152 = v178;
              v186(v178, v185, v114);
              v153 = sub_2755EC81C();
              v154 = sub_2755ECB0C();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                aBlock = v156;
                *v155 = 136315138;
                *(v155 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                _os_log_impl(&dword_275572000, v153, v154, "%s Supression threshold passed. Displaying banner", v155, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v156);
                MEMORY[0x277C7DA70](v156, -1, -1);
                v157 = v155;
                v136 = v177;
                MEMORY[0x277C7DA70](v157, -1, -1);
              }

              v134(v152, v114);
              sub_2755EC5DC();
              v159 = v158;
              v160 = v189;
              v161 = v181;
              if (*&v189[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason] == v181 && *&v189[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason + 8] == v170 || (sub_2755ECD0C() & 1) != 0)
              {
                v162 = 0;
              }

              else if (*&v160[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason] == v161 && *&v160[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason + 8] == v170)
              {
                v162 = 1;
              }

              else if (sub_2755ECD0C())
              {
                v162 = 1;
              }

              else
              {
                v162 = -1;
              }

              v163 = sub_2755EC95C();
              v164 = swift_allocObject();
              *(v164 + 16) = v162;
              *(v164 + 24) = 1;
              *(v164 + 32) = v159;
              *(v164 + 40) = a2;
              v194 = sub_2755D4BF0;
              v195 = v164;
              aBlock = MEMORY[0x277D85DD0];
              v191 = 1107296256;
              v192 = sub_2755D16CC;
              v193 = &block_descriptor_1;
              v165 = _Block_copy(&aBlock);

              AnalyticsSendEventLazy();
              _Block_release(v165);

              v166 = v188;
              v188(v171, v136);
              v166(v173, v136);
              v166(v174, v136);
              return 1;
            }

            goto LABEL_58;
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_21;
      }

      v7 = v189;
    }

    else
    {
    }

    (*(v176 + 56))(v45, 1, 1, v177);
LABEL_21:
    sub_2755D4B88(v45);
    v11 = v172;
LABEL_22:
    v104 = sub_2755DEA84();
    v105 = v179;
    (*(v179 + 16))(v20, v104, v11);
    v106 = v7;
    v107 = sub_2755EC81C();
    v108 = sub_2755ECB0C();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      *v109 = 136315394;
      *(v109 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
      *(v109 + 12) = 2080;
      *(v109 + 14) = sub_2755CC688(v70, v175, &aBlock);
      _os_log_impl(&dword_275572000, v107, v108, "%s No cached event found for, possibly first display of the banner %s returning true", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C7DA70](v110, -1, -1);
      MEMORY[0x277C7DA70](v109, -1, -1);
    }

    (*(v105 + 8))(v20, v11);
    return 1;
  }

LABEL_59:
  __break(1u);
  return result;
}

id sub_2755D2CE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v170 = a2;
  v171 = a3;
  v176 = a1;
  v174 = a4;
  v7 = sub_2755EC82C();
  v175 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v151[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v159 = &v151[-v14];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v160 = &v151[-v17];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v156 = &v151[-v20];
  MEMORY[0x28223BE20](v19, v21);
  v161 = &v151[-v22];
  v23 = sub_2755EC6DC();
  v164 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v151[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = sub_2755EC6EC();
  v162 = *(v163 - 1);
  MEMORY[0x28223BE20](v163, v27);
  v29 = &v151[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v34 = &v151[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v151[-v36];
  v38 = sub_2755EC61C();
  v177 = *(v38 - 8);
  v178 = v38;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v173 = &v151[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v40, v42);
  v165 = &v151[-v44];
  v46 = MEMORY[0x28223BE20](v43, v45);
  v158 = &v151[-v47];
  v49 = MEMORY[0x28223BE20](v46, v48);
  v157 = &v151[-v50];
  v52 = MEMORY[0x28223BE20](v49, v51);
  v166 = &v151[-v53];
  v55 = MEMORY[0x28223BE20](v52, v54);
  v167 = &v151[-v56];
  MEMORY[0x28223BE20](v55, v57);
  v168 = &v151[-v58];
  v59 = *(v5 + OBJC_IVAR___ICQBubbleBannerTracker_userDefaults);
  v172 = v5;
  v60 = sub_2755EC95C();
  v61 = [v59 dictionaryForKey_];

  if (!v61)
  {
    goto LABEL_16;
  }

  v169 = v7;
  v62 = sub_2755EC90C();

  result = [v176 aa_altDSID];
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v64 = result;
  v65 = sub_2755EC98C();
  v67 = v66;

  if (!*(v62 + 16))
  {

    goto LABEL_14;
  }

  v68 = sub_2755750C0(v65, v67);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
LABEL_14:

    (*(v177 + 56))(v37, 1, 1, v178);
    goto LABEL_15;
  }

  sub_2755CDA88(*(v62 + 56) + 32 * v68, v179);

  v71 = v178;
  v72 = swift_dynamicCast();
  v73 = v177;
  v155 = *(v177 + 56);
  v155(v37, v72 ^ 1u, 1, v71);
  v74 = *(v73 + 48);
  if (v74(v37, 1, v71) == 1)
  {
LABEL_15:
    sub_2755D4B88(v37);
    v7 = v169;
LABEL_16:
    v91 = sub_2755DEA84();
    v92 = v175;
    (*(v175 + 16))(v11, v91, v7);
    v93 = sub_2755EC81C();
    v94 = sub_2755ECB0C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v179[0] = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v179);
      _os_log_impl(&dword_275572000, v93, v94, "%s No cached events found, ignoring decay thresholds and displaying banner at the top.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x277C7DA70](v96, -1, -1);
      MEMORY[0x277C7DA70](v95, -1, -1);
    }

    (*(v92 + 8))(v11, v7);
    v98 = v173;
    v97 = v174;
    v99 = v177;
    v100 = v171;
    v101 = v172;
    v102 = v170;
    sub_2755EC5FC();
    (*((*MEMORY[0x277D85000] & *v101) + 0x88))(v176, v98, v102, v100);
    v103 = v178;
    (*(v99 + 32))(v97, v98, v178);
    return (*(v99 + 56))(v97, 0, 1, v103);
  }

  v75 = v178;
  v76 = *(v177 + 32);
  v154 = v177 + 32;
  v153 = v76;
  v76(v168, v37, v178);
  result = sub_2755EC5FC();
  v77 = a5 / 1000.0;
  if (COERCE__INT64(fabs(a5 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v77 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v77 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_2755EC6CC();
  v78 = v164;
  (v164[13])(v26, *MEMORY[0x277CC99A8], v23);
  sub_2755EC6BC();
  (v78[1])(v26, v23);
  (*(v162 + 8))(v29, v163);
  v79 = v74(v34, 1, v75);
  v80 = v175;
  v81 = (v175 + 16);
  if (v79 == 1)
  {
    sub_2755D4B88(v34);
    v82 = sub_2755DEA84();
    v83 = v159;
    v84 = v169;
    (*v81)(v159, v82, v169);
    v85 = sub_2755EC81C();
    v86 = sub_2755ECB0C();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v177;
    if (v87)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v179[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v179);
      _os_log_impl(&dword_275572000, v85, v86, "%s Unable to compute endate from given info.", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x277C7DA70](v90, -1, -1);
      MEMORY[0x277C7DA70](v89, -1, -1);
    }

    (*(v80 + 8))(v83, v84);
    (*(v88 + 8))(v167, v75);
LABEL_26:
    v138 = v174;
    v139 = v155;
    v153(v174, v168, v75);
    return v139(v138, 0, 1, v75);
  }

  v104 = v166;
  v153(v166, v34, v75);
  v105 = sub_2755DEA84();
  v106 = *v81;
  v107 = v161;
  v162 = v105;
  v164 = v81;
  v163 = v106;
  v106(v161);
  v108 = v177;
  v109 = *(v177 + 16);
  v110 = v157;
  v109(v157, v168, v75);
  v111 = v158;
  v109(v158, v167, v75);
  v109(v165, v104, v75);
  v112 = sub_2755EC81C();
  v113 = sub_2755ECB0C();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v152 = v113;
    v115 = v114;
    v159 = swift_slowAlloc();
    v179[0] = v159;
    *v115 = 136316162;
    *(v115 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v179);
    *(v115 + 12) = 2080;
    sub_2755D4C00(&qword_2809F9D88, MEMORY[0x277CC95B8]);
    v116 = sub_2755ECCDC();
    v118 = v117;
    v119 = *(v108 + 8);
    v119(v110, v178);
    v120 = sub_2755CC688(v116, v118, v179);

    *(v115 + 14) = v120;
    *(v115 + 22) = 2048;
    *(v115 + 24) = a5;
    *(v115 + 32) = 2080;
    v121 = sub_2755ECCDC();
    v123 = v122;
    v119(v111, v178);
    v124 = sub_2755CC688(v121, v123, v179);

    *(v115 + 34) = v124;
    *(v115 + 42) = 2080;
    v125 = v165;
    v75 = v178;
    v126 = sub_2755ECCDC();
    v128 = v127;
    v119(v125, v75);
    v129 = sub_2755CC688(v126, v128, v179);

    *(v115 + 44) = v129;
    _os_log_impl(&dword_275572000, v112, v152, "%s Checking Banner decay threshold lastDisplayed: %s decayUntil: %f current: %s end: %s", v115, 0x34u);
    v130 = v159;
    swift_arrayDestroy();
    MEMORY[0x277C7DA70](v130, -1, -1);
    MEMORY[0x277C7DA70](v115, -1, -1);

    v131 = *(v175 + 8);
    v131(v161, v169);
  }

  else
  {

    v119 = *(v108 + 8);
    v119(v165, v75);
    v119(v111, v75);
    v119(v110, v75);
    v131 = *(v80 + 8);
    v131(v107, v169);
  }

  v132 = v160;
  sub_2755D4C00(&qword_2809F9D80, MEMORY[0x277CC9590]);
  if (sub_2755EC93C())
  {
    v133 = v169;
    (v163)(v132, v162, v169);
    v134 = sub_2755EC81C();
    v135 = sub_2755ECB0C();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v179[0] = v137;
      *v136 = 136315138;
      *(v136 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v179);
      _os_log_impl(&dword_275572000, v134, v135, "%s Decay threshold not passed. We will let the banner decay.", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x277C7DA70](v137, -1, -1);
      MEMORY[0x277C7DA70](v136, -1, -1);
    }

    v131(v132, v133);
    v119(v166, v75);
    v119(v167, v75);
    goto LABEL_26;
  }

  v140 = v156;
  v141 = v169;
  (v163)(v156, v162, v169);
  v142 = sub_2755EC81C();
  v143 = sub_2755ECB0C();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v179[0] = v145;
    *v144 = 136315138;
    *(v144 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v179);
    _os_log_impl(&dword_275572000, v142, v143, "%s Decay threshold passed. Displaying banner at the top of the stack.", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x277C7DA70](v145, -1, -1);
    MEMORY[0x277C7DA70](v144, -1, -1);
  }

  v131(v140, v141);
  v147 = v173;
  v146 = v174;
  v148 = v171;
  v149 = v172;
  v150 = v170;
  sub_2755EC5FC();
  (*((*MEMORY[0x277D85000] & *v149) + 0x88))(v176, v147, v150, v148);
  v119(v166, v75);
  v119(v167, v75);
  v119(v168, v75);
  v153(v146, v147, v75);
  return v155(v146, 0, 1, v75);
}

id BubbleBannerTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BubbleBannerTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BubbleBannerTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755D40D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v33 = v4;
  result = sub_2755ECC5C();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_275578D44(v24, v34);
      }

      else
      {
        sub_2755CDA88(v24, v34);
      }

      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_275578D44(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_2755D4390(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2755D454C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2755D40D8(v16, a4 & 1);
    v11 = sub_2755750C0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2755ECD2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_275578D44(a1, v22);
  }

  else
  {
    sub_2755D44E0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2755D44E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_275578D44(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2755D454C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2755CDA88(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_275578D44(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_2755D46F0(void *a1, uint64_t a2, char a3)
{
  v7 = sub_2755EC82C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey;
  }

  else
  {
    v13 = sub_2755ECD0C();

    v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey;
    if (v13)
    {
      v12 = &OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey;
    }
  }

  v14 = (v3 + *v12);
  v16 = *v14;
  v15 = v14[1];

  v17 = *(v3 + OBJC_IVAR___ICQBubbleBannerTracker_userDefaults);
  v47 = v16;
  v18 = sub_2755EC95C();
  v19 = [v17 dictionaryForKey_];

  if (v19)
  {
    v20 = sub_2755EC90C();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v21 = [a1 aa_altDSID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2755EC98C();
    v25 = v24;

    v26 = sub_2755EC61C();
    v51 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v50);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, a2, v26);
    sub_275578D44(&v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v20;
    sub_2755D4390(v49, v23, v25, isUniquelyReferenced_nonNull_native);

    v29 = sub_2755DEA84();
    (*(v8 + 16))(v11, v29, v7);

    v30 = sub_2755EC81C();
    v31 = sub_2755ECB0C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v50 = v44;
      *v32 = 136315394;

      v33 = sub_2755EC91C();
      v45 = v11;
      v46 = v7;
      v34 = v33;
      v35 = v8;
      v36 = v17;
      v38 = v37;

      v39 = sub_2755CC688(v34, v38, &v50);
      v17 = v36;

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2755CC688(v47, v15, &v50);
      _os_log_impl(&dword_275572000, v30, v31, "Tracking event %s for key %s", v32, 0x16u);
      v40 = v44;
      swift_arrayDestroy();
      MEMORY[0x277C7DA70](v40, -1, -1);
      MEMORY[0x277C7DA70](v32, -1, -1);

      (*(v35 + 8))(v45, v46);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v41 = sub_2755EC8FC();

    v42 = sub_2755EC95C();

    [v17 setObject:v41 forKey:v42];
  }

  else
  {
    __break(1u);
  }
}