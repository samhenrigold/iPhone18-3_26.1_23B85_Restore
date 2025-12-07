uint64_t sub_221EDE338()
{
  v30 = v0;
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
  v2 = objc_opt_self();

  sub_221F17A54(v3);

  sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v4 = sub_221FB64E8();

  v5 = [v2 relationshipsWithRelationshipAndEventRecords_];

  if (v5)
  {
    v6 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v7 = sub_221FB6438();

    v8 = swift_task_alloc();
    *(v8 + 16) = v1;
    sub_221F41DC4(sub_221EBCCB0, v8, v7);

    v9 = v0[13];
    if (v9 >> 62)
    {
      v10 = sub_221FB6868();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {

      v11 = sub_221FB61B8();
      v12 = sub_221FB65C8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v0[13];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v29 = v15;
        *v14 = 136315138;
        v16 = MEMORY[0x223DAC810](v13, v6);
        v18 = sub_221EF4114(v16, v17, &v29);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_221E93000, v11, v12, "Found secure cloud relationships to consolidate: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223DADA80](v15, -1, -1);
        MEMORY[0x223DADA80](v14, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
      v19 = swift_task_alloc();
      v0[17] = v19;
      *v19 = v0;
      v19[1] = sub_221EDE79C;
      v20 = v0[13];
      v21 = v0[2];
      v22 = v0[3];

      return sub_221EBB94C(v20, v21, v22);
    }

    v26 = sub_221FB61B8();
    v27 = sub_221FB65C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_221E93000, v26, v27, "No secure cloud relationships to consolidate", v28, 2u);
      MEMORY[0x223DADA80](v28, -1, -1);
    }

    v25 = v0[1];
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v24 = 13;
    swift_willThrow();

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_221EDE79C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221EDE92C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EDE950, 0, 0);
}

uint64_t sub_221EDE950()
{
  if (qword_281307080 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC1ED0, 0xD00000000000002BLL, 0x8000000221FC1F70);
  v3 = [*v1 contacts];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v5 = sub_221FB64F8();

  sub_221EDB6E8(v5);
  v7 = v6;
  v0[6] = v6;

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v8 = sub_221FB6868();
  if (!v8)
  {
LABEL_20:

LABEL_21:
    v17 = v0[1];

    return v17();
  }

LABEL_5:
  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DACD50](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    ASUpdateSupportedFeaturesForRelationship();

    ++v9;
  }

  while (v12 != v8);
  __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_221EDEC04;
  v14 = v0[2];
  v15 = v0[3];

  return sub_221EBB94C(v7, v14, v15);
}

uint64_t sub_221EDEC04()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_221EDEEA8;
  }

  else
  {
    v2 = sub_221EDED18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EDED18()
{
  v15 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v8 = MEMORY[0x223DAC810](v4, v7);
    v10 = v9;

    v11 = sub_221EF4114(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_221E93000, v1, v2, "Updated relationships with supported features: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221EDEEA8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_221EDEF1C()
{
  result = qword_27CFEC120;
  if (!qword_27CFEC120)
  {
    sub_221FB5BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC120);
  }

  return result;
}

uint64_t sub_221EDEF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_221EDEFEC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221EDF104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E96070;

  return v9(a1, a2, a3);
}

uint64_t sub_221EDF22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221EDF368(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221EDF480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EDF5B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_221FB5EC8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC130, &qword_221FBA608);
  v3[11] = swift_task_alloc();
  v6 = sub_221FB6128();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_221FB5D78();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_221FB5EA8();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EDF84C, 0, 0);
}

uint64_t sub_221EDF84C()
{
  v94 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v91 = *(v3 + 16);
  v91(v1, v4, v2);
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v93[0] = v13;
    *v12 = 136315138;
    v14 = sub_221FB5E98();
    v16 = v15;
    v90 = *(v10 + 8);
    v90(v9, v11);
    v17 = sub_221EF4114(v14, v16, v93);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_221E93000, v6, v7, "Received secure cloud ping request %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v90 = *(v10 + 8);
    v90(v9, v11);
  }

  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  (*(v19 + 16))(v18, v0[3], v20);
  v21 = (*(v19 + 88))(v18, v20);
  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[16];
  if (v21 != *MEMORY[0x277CE9388])
  {
    (*(v22 + 8))(v0[18], v24);
LABEL_13:
    sub_221EC459C();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();

    v34 = v0[1];
LABEL_21:

    return v34();
  }

  (*(v22 + 96))(v0[18], v24);
  v25 = *v23;
  v0[25] = *v23;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {

    goto LABEL_13;
  }

  v89 = v26;
  v27 = v0[4];
  v28 = *(v27 + 80);
  v29 = *(v27 + 96);
  v30 = *(v27 + 104);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v93[0]) = v28;
    UserDefaultsKeys.rawValue.getter();
    v31 = sub_221FB62E8();

    v32 = [v30 stringForKey_];

    if (v32)
    {
      sub_221FB6318();

      goto LABEL_16;
    }

LABEL_18:
    v39 = sub_221FB61B8();
    v40 = sub_221FB65C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_221E93000, v39, v40, "Not responding, no type set", v41, 2u);
      MEMORY[0x223DADA80](v41, -1, -1);
    }

    v34 = v0[1];
    goto LABEL_21;
  }

  if (!v29)
  {
    goto LABEL_18;
  }

LABEL_16:
  v36 = v0[12];
  v35 = v0[13];
  v37 = v0[11];

  sub_221FB6118();
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    v38 = v0[11];

    sub_221EE2954(v38);
    goto LABEL_18;
  }

  v87 = v0[15];
  v88 = v0[14];
  v44 = v0[12];
  v43 = v0[13];
  v45 = v0[6];
  v46 = v0[7];
  v86 = v0[5];
  (*(v43 + 32))();
  sub_221FB5E98();
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v45 + 8))(v46, v86);
  sub_221FB5EB8();
  (*(v43 + 16))(v88, v87, v44);
  v47 = (*(v43 + 88))(v88, v44);
  if (v47 == *MEMORY[0x277CE9430])
  {
    v48 = v0[23];
    v49 = v0[19];
    v50 = v0[2];

    v91(v48, v50, v49);
    v51 = sub_221FB61B8();
    v52 = sub_221FB65C8();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[23];
    if (v53)
    {
      v55 = v0[22];
      v56 = v0[19];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v93[0] = v58;
      *v57 = 136315138;
      v91(v55, v54, v56);
      v59 = sub_221FB6328();
      v61 = v60;
      v90(v54, v56);
      v62 = sub_221EF4114(v59, v61, v93);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_221E93000, v51, v52, "Accepting invitation ping %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x223DADA80](v58, -1, -1);
      MEMORY[0x223DADA80](v57, -1, -1);
    }

    else
    {
      v77 = v0[19];

      v90(v54, v77);
    }

    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v92 = sub_221FA806C;
    v78 = swift_task_alloc();
    v0[26] = v78;
    *v78 = v0;
    v78[1] = sub_221EE02A0;
    v79 = v0[10];
    v80 = v89;
    v81 = 1151;
LABEL_37:

    return v92(v80, v79, v81);
  }

  if (v47 == *MEMORY[0x277CE9438])
  {
    v63 = v0[21];
    v64 = v0[19];
    v65 = v0[2];

    v91(v63, v65, v64);
    v66 = sub_221FB61B8();
    v67 = sub_221FB65C8();
    if (os_log_type_enabled(v66, v67))
    {
      v69 = v0[21];
      v68 = v0[22];
      v70 = v0[19];
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v93[0] = v72;
      *v71 = 136315138;
      v91(v68, v69, v70);
      v73 = sub_221FB6328();
      v75 = v74;
      v90(v69, v70);
      v76 = sub_221EF4114(v73, v75, v93);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_221E93000, v66, v67, "Declining invitation ping %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x223DADA80](v72, -1, -1);
      MEMORY[0x223DADA80](v71, -1, -1);
    }

    else
    {
      v83 = v0[21];
      v84 = v0[19];

      v90(v83, v84);
    }

    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v92 = sub_221EE1E14;
    v85 = swift_task_alloc();
    v0[28] = v85;
    *v85 = v0;
    v85[1] = sub_221EE060C;
    v79 = v0[10];
    v80 = v89;
    v81 = 1152;
    goto LABEL_37;
  }

  v82 = v0[12];

  return MEMORY[0x2821FDEB8](v82, v82);
}

uint64_t sub_221EE02A0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_221EE04DC;
  }

  else
  {
    v2 = sub_221EE03B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE03B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EE04DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EE060C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_221EE0720;
  }

  else
  {
    v2 = sub_221EE2AA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE0720()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EE0850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_221FB5EA8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE091C, 0, 0);
}

uint64_t sub_221EE091C()
{
  v25 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Received secure cloud accept: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223DADA80](v23, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_221EE0B50(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_221FB5EA8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE0C1C, 0, 0);
}

uint64_t sub_221EE0C1C()
{
  v25 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Received secure cloud decline: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223DADA80](v23, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_221EE0E70()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  v5 = *(v0 + 96);
  v4[5] = *(v0 + 80);
  v4[6] = v5;
  v4[7] = *(v0 + 112);
  v6 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v6;
  v7 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v7;
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  v9 = sub_221FB5EA8();
  *(v0 + 376) = v9;
  *v8 = v0;
  v8[1] = sub_221EE0FB4;
  v10 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1150, &unk_221FBA5C8, v4, v2, v9, v3, v10);
}

uint64_t sub_221EE0FB4()
{

  return MEMORY[0x2822009F8](sub_221EE10CC, 0, 0);
}

uint64_t sub_221EE10CC()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 128);
  v4 = swift_allocObject();
  *(v0 + 384) = v4;
  v5 = *(v0 + 208);
  v4[5] = *(v0 + 192);
  v4[6] = v5;
  v4[7] = *(v0 + 224);
  v6 = *(v0 + 144);
  v4[1] = *(v0 + 128);
  v4[2] = v6;
  v7 = *(v0 + 176);
  v4[3] = *(v0 + 160);
  v4[4] = v7;
  v8 = swift_task_alloc();
  *(v0 + 392) = v8;
  *v8 = v0;
  v8[1] = sub_221EE11F8;
  v9 = *(v0 + 376);
  v10 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1151, &unk_221FBA5D8, v4, v2, v9, v3, v10);
}

uint64_t sub_221EE11F8()
{

  return MEMORY[0x2822009F8](sub_221EE1310, 0, 0);
}

uint64_t sub_221EE1310()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 240);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  v5 = *(v0 + 320);
  v4[5] = *(v0 + 304);
  v4[6] = v5;
  v4[7] = *(v0 + 336);
  v6 = *(v0 + 256);
  v4[1] = *(v0 + 240);
  v4[2] = v6;
  v7 = *(v0 + 288);
  v4[3] = *(v0 + 272);
  v4[4] = v7;
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_221EE143C;
  v9 = *(v0 + 376);
  v10 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1152, &unk_221FBA5E8, v4, v2, v9, v3, v10);
}

uint64_t sub_221EE143C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221EE154C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EDF5B0(a1, a2);
}

uint64_t sub_221EE162C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EE154C(a1, a2);
}

uint64_t sub_221EE16D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221EE0850(a1);
}

uint64_t sub_221EE177C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221EE16D4(a1);
}

uint64_t sub_221EE1824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221EE0B50(a1);
}

uint64_t sub_221EE18CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221EE1824(a1);
}

uint64_t sub_221EE1974(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_221FB5EA8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE1A94, 0, 0);
}

uint64_t sub_221EE1A94()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v2 + 8))(v1, v3);
  sub_221FB5E88();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_221EE1BBC;
  v5 = *(v0 + 80);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_221F422A8(v7, v6, v5, 1150, 0, 0);
}

uint64_t sub_221EE1BBC(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[12] = v1;

  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  if (v1)
  {
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x2822009F8](sub_221EE1DA4, 0, 0);
  }

  else
  {

    (*(v7 + 8))(v6, v8);

    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_221EE1DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EE1E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE1ED8, 0, 0);
}

uint64_t sub_221EE1ED8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002BLL, 0x8000000221FC2090);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5EC8();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2220;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002BLL, 0x8000000221FC2090, sub_221EE29BC, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221EE2220()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_221EE23B0;
  }

  else
  {

    v2 = sub_221EE233C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE233C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EE23B0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EE242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE24F0, 0, 0);
}

uint64_t sub_221EE24F0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002BLL, 0x8000000221FC2090);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    sub_221FB5FF8();
    v6 = sub_221FB5E58();
    v10 = v0[8];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[2];
    v11 = v6;
    v13 = v12;
    sub_221EBEF90(v6, v12);
    sub_221FB5D48();
    sub_221EF9080();
    v14 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v15 = sub_221FB6278();

    v16 = sub_221FB62E8();
    v17 = [v14 initWithDictionary:v15 schema:v16];
    v0[10] = v17;

    sub_221EBEF30(v11, v13);
    (*(v21 + 8))(v10, v22);
    v18 = swift_task_alloc();
    v0[11] = v18;
    v18[2] = v5;
    v18[3] = v23;
    v18[4] = v17;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_221EE2838;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000002BLL, 0x8000000221FC2090, sub_221EE2AA0, v18, v20);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221EE2838()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_221EE2AAC;
  }

  else
  {

    v2 = sub_221EE2AA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE2954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC130, &qword_221FBA608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_221EE29EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_221EE2A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221EE2AB0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221EE2BC8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221EE2CE0()
{
  v1 = v0;
  if (*(*(v0 + 120) + 16))
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DF0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, v3, v4, "Unexpected deinit of SecureCloudActivationGateway", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }

  sub_221EE3290(v1 + 128);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_221EE2DEC()
{
  sub_221EE2CE0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221EE2E3C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC138, &qword_221FBA728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7 + 16;
  swift_beginAccess();
  sub_221EE3220(v3 + 128, v15);
  if (v15[3])
  {
    memcpy(v16, v15, sizeof(v16));
    sub_221EE32F8(v16, v15);
    sub_221FB64A8();
    return sub_221E95288(v16);
  }

  else
  {
    sub_221EE3290(v15);
    (*(v6 + 16))(v8, v4, v5);
    v10 = *(v3 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_221EF3930(0, v10[2] + 1, 1, v10);
      *(v3 + 120) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_221EF3930((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    result = (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
    *(v3 + 120) = v10;
  }

  return result;
}

uint64_t sub_221EE304C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC138, &qword_221FBA728);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  swift_beginAccess();
  sub_221EE3220(v1 + 128, v16);
  if (!v16[3])
  {
    return sub_221EE3290(v16);
  }

  memcpy(v17, v16, 0xD38uLL);
  v6 = *(v1 + 120);
  v7 = *(v6 + 16);
  if (v7)
  {
    v14 = *(v1 + 120);
    v15 = v1;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v5, v11, v2);
      sub_221EE32F8(v17, v16);
      sub_221FB64A8();
      (*(v8 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);

    v1 = v15;
  }

  *(v1 + 120) = MEMORY[0x277D84F90];

  return sub_221E95288(v17);
}

uint64_t sub_221EE3220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EE3290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EE3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221EE34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_221E96070;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221EE35F4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221EE370C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v11 = sub_221FB6438();
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v12 = sub_221FB6438();
    v13 = *(*(v7 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221EE383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  return MEMORY[0x2822009F8](sub_221EE3864, 0, 0);
}

uint64_t sub_221EE3864()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
  }

  v0[26] = v2;
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221EE39C4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECC80, &unk_221FBA7B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE370C;
  v0[13] = &block_descriptor_11;
  v0[14] = v7;
  [v3 fetchChangesInSharedDatabaseWithServerChangeTokenCache:v6 priority:v5 activity:v2 group:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE39C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_221EE3D48;
  }

  else
  {
    v2 = sub_221EE3AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE3AD4()
{
  v22 = v0;
  v1 = v0[19];

  swift_unknownObjectRelease();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);

  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 134349314;
    if (v1 >> 62)
    {
      v9 = sub_221FB6868();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[23];
    *(v7 + 4) = v9;

    *(v7 + 12) = 2080;
    v11 = [v10 name];
    if (v11)
    {
      v12 = v11;
      v13 = sub_221FB6318();
      v15 = v14;

      v0[10] = 0;
      v0[11] = 0xE000000000000000;
      v0[18] = v13;
      v0[19] = v15;
      sub_221FB6A08();

      v16 = v0[10];
      v17 = v0[11];
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_221EF4114(v16, v17, &v21);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_221E93000, v5, v6, "Fetched %{public}ld records from secure cloud shared database, group: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(v1);
}

uint64_t sub_221EE3D48(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221EE3DDC()
{
  v1 = v0[25];
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();
  v2 = sub_221FB65D8();
  v0[26] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221FB81B0;
  *(inited + 32) = v2;
  v4 = v2;
  sub_221F17D6C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_221EE4328();
  v5 = sub_221FB64E8();
  v0[27] = v5;

  v6 = ASCloudKitGroupInitialSetup();
  v0[28] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221EE4014;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC148, &qword_221FBA7D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE4220;
  v0[13] = &block_descriptor_9_1;
  v0[14] = v7;
  [v1 createRecordZonesWithIDs:v5 priority:2 useZoneWideSharing:1 group:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE4014()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_221EE419C;
  }

  else
  {
    v2 = sub_221EE4124;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE4124()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EE419C(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_221EE4220(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    sub_221E9D138(0, &unk_281306F10, 0x277CBC5E8);
    v10 = sub_221FB6438();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = v10;

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_221EE4328()
{
  result = qword_281306EE8;
  if (!qword_281306EE8)
  {
    sub_221E9D138(255, &qword_281306EF0, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EE8);
  }

  return result;
}

uint64_t sub_221EE43A8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221EE44C0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221EE45D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221EE581C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EE4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9E350;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221EE4848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

char *sub_221EE4978(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 UUID];
  if (v9)
  {
    v10 = v9;
    sub_221FB5C18();

    v11 = sub_221FB5BE8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = sub_221ECB494(v11, v13);

    if (v14)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = sub_221ED82C0(MEMORY[0x277D84F90]);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }
    }

    v15 = sub_221ED4C68(a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

LABEL_9:

      v19 = sub_221F71540(v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC158, &qword_221FBA948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_221FB81A0;
      *(inited + 32) = a2;
      v21 = inited + 32;
      *(inited + 40) = v19;
      v22 = sub_221ED82C0(inited);
      swift_setDeallocating();
      sub_221EE555C(v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v14;
      sub_221EE55C4(v22, sub_221EE5550, 0, isUniquelyReferenced_nonNull_native, &v27);

      v24 = sub_221F921A4(3, v27);

      return v24;
    }

LABEL_8:
    v17 = MEMORY[0x277D84FA0];
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_221EE4BD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  sub_221E967CC(*(v0 + 176));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221EE4C4C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF88, &qword_221FBE3D0);
    sub_221EE4D44(a2, 255, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221EE4CEC(uint64_t a1, uint64_t a2)
{
  result = sub_221EE4D44(&qword_27CFEC150, a2, type metadata accessor for WorkoutCompletionAnchorStore, &unk_221FBA90C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221EE4D44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_221EE4D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221EE4DB0, v3, 0);
}

uint64_t sub_221EE4DB0()
{
  v1 = sub_221ECB494(v0[2], v0[3]);
  if (!v1)
  {
    v1 = sub_221ED82C0(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  if (*(v1 + 16) && (v3 = sub_221ED4C68(v0[4]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_221EE4E64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE4F28, v2, 0);
}

id sub_221EE4F28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 112) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 64) = v5;
    *(v0 + 72) = v7;
    v9 = *(v0 + 24);
    v10 = *(*(v6 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    v12 = sub_221EE4978(v11, v10, v9);
    *(v0 + 80) = v12;
    result = [v9 UUID];
    if (result)
    {
      v14 = result;
      v16 = *(v0 + 48);
      v15 = *(v0 + 56);
      v17 = *(v0 + 40);

      sub_221FB5C18();

      v18 = sub_221FB5BE8();
      v20 = v19;
      *(v0 + 88) = v19;
      (*(v16 + 8))(v15, v17);
      v21 = swift_task_alloc();
      *(v0 + 96) = v21;
      *v21 = v0;
      v21[1] = sub_221EE515C;

      return sub_221ED0378(v12, v18, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_221EE515C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_221EE54E0;
  }

  else
  {
    v4 = sub_221EE52C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_221EE52C0()
{
  v1 = *(v0 + 72);
  v2 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (v2)
  {
    v3 = *(v0 + 16);
LABEL_7:
    *(v0 + 64) = v2;
    *(v0 + 72) = v1;
    v5 = *(v0 + 24);
    v6 = *(*(v3 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));

    v8 = sub_221EE4978(v7, v6, v5);
    *(v0 + 80) = v8;
    v9 = [v5 UUID];
    if (v9)
    {
      v10 = v9;
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = *(v0 + 40);

      sub_221FB5C18();

      v14 = sub_221FB5BE8();
      v16 = v15;
      *(v0 + 88) = v15;
      (*(v12 + 8))(v11, v13);
      v17 = swift_task_alloc();
      *(v0 + 96) = v17;
      *v17 = v0;
      v17[1] = sub_221EE515C;

      sub_221ED0378(v8, v14, v16);
    }

    else
    {
LABEL_15:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v4 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 16);
      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_221EE54E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EE5550@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_221EE555C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC160, &qword_221FBA950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EE55C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 56) + v14);
    v36[0] = *(*(a1 + 48) + v14);
    v36[1] = v15;

    a2(v35, v36);

    v17 = v35[0];
    v16 = v35[1];
    v18 = *v37;
    v20 = sub_221ED4C68(v35[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        sub_221ED729C();
      }
    }

    else
    {
      sub_221ED5E3C(v23, v34 & 1);
      v25 = sub_221ED4C68(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v37;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v16;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_221E96470(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

uint64_t sub_221EE5820(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221EE5938(char a1)
{
  *(v2 + 536) = v1;
  *(v2 + 805) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  *(v2 + 544) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE59D8, v1, 0);
}

uint64_t sub_221EE59D8()
{
  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = sub_221FB61D8();
  v0[69] = __swift_project_value_buffer(v2, qword_281307DD8);
  sub_221E9DCE8(0xD000000000000076, 0x8000000221FC2320, 0xD00000000000001ALL, 0x8000000221FC23A0);
  v0[70] = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_221EE5AF4;

  return sub_221F7E048();
}

uint64_t sub_221EE5AF4()
{
  v1 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_221EE5C04, v1, 0);
}

uint64_t sub_221EE5C04()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v2 = swift_task_alloc();
  *(v0 + 576) = v2;
  *v2 = v0;
  v2[1] = sub_221EE5CC0;

  return sub_221EBD594(0xD000000000000016, 0x8000000221FC16E0, v1);
}

uint64_t sub_221EE5CC0(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 792) = a1;
  *(v4 + 584) = v1;

  v5 = *(v3 + 536);
  if (v1)
  {
    v6 = sub_221EE5FD0;
  }

  else
  {
    v6 = sub_221EE5DF8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EE5DF8()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 248), *(*(v0 + 536) + 272));
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v1[1] = sub_221EE5E98;

  return sub_221EF490C();
}

uint64_t sub_221EE5E98(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 794) = a1;
  *(v4 + 600) = v1;

  v5 = *(v3 + 536);
  if (v1)
  {
    v6 = sub_221EE62CC;
  }

  else
  {
    v6 = sub_221EE60D8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EE5FD0()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FB9A50, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE60D8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v2 = swift_task_alloc();
  *(v0 + 608) = v2;
  *v2 = v0;
  v2[1] = sub_221EE6194;

  return sub_221EBD594(0xD000000000000011, 0x8000000221FC1700, v1);
}

uint64_t sub_221EE6194(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 796) = a1;
  *(v4 + 616) = v1;

  v5 = *(v3 + 536);
  if (v1)
  {
    v6 = sub_221EE6678;
  }

  else
  {
    v6 = sub_221EE63D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EE62CC()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAD0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE63D4()
{
  *(v0 + 624) = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 160), *(*(v0 + 536) + 184));

  return MEMORY[0x2822009F8](sub_221EE644C, 0, 0);
}

uint64_t sub_221EE644C()
{
  v1 = v0[78];
  v0[2] = v0;
  v0[7] = v0 + 66;
  v0[3] = sub_221EE6568;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC168, &qword_221FBAAE0);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221EF4C50;
  v0[21] = &block_descriptor_12;
  v0[22] = v2;
  [v1 fetchCloudKitAccountInfoWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE6568()
{
  v1 = *(*v0 + 48);
  *(*v0 + 632) = v1;
  if (v1)
  {
    v2 = sub_221EE6A60;
  }

  else
  {
    v2 = sub_221EE6780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE6678()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAD8, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE6780()
{
  v1 = *(v0 + 536);
  *(v0 + 798) = sub_221EF6738(*(v0 + 528));

  return MEMORY[0x2822009F8](sub_221EE67F0, v1, 0);
}

uint64_t sub_221EE67F0()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v3 = off_283558638 + *off_283558638;
  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  *v1 = v0;
  v1[1] = sub_221EE6924;

  return (v3)(&type metadata for SecureCloudAccountStore, &off_283558620);
}

uint64_t sub_221EE6924(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[81] = a1;
  v5[82] = a2;
  v5[83] = v2;

  v6 = v4[67];
  if (v2)
  {
    v7 = sub_221EE9538;
  }

  else
  {
    v7 = sub_221EE6BDC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_221EE6A60(uint64_t a1)
{
  v2 = *(v1 + 536);
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_221EE6AD4, v2, 0);
}

uint64_t sub_221EE6AD4()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAE8, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE6BDC()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 248), *(*(v0 + 536) + 272));
  v1 = swift_task_alloc();
  *(v0 + 672) = v1;
  *v1 = v0;
  v1[1] = sub_221EE6C7C;

  return sub_221EF4D28();
}

uint64_t sub_221EE6C7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[85] = a1;
  v5[86] = a2;
  v5[87] = v2;

  v6 = v4[67];
  if (v2)
  {
    v7 = sub_221EE6EB8;
  }

  else
  {
    v7 = sub_221EE6DB8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_221EE6DB8()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm((v0[67] + 160) *(v0[67] + 184))];
  if (v1)
  {
    v2 = v1;
    v3 = sub_221FB6318();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v0[89] = v5;
  v0[88] = v3;
  v6 = *__swift_project_boxed_opaque_existential_0Tm((v0[67] + 160), *(v0[67] + 184));
  v7 = swift_task_alloc();
  v0[90] = v7;
  *v7 = v0;
  v7[1] = sub_221EE6FC8;

  return sub_221F991FC(v6);
}

uint64_t sub_221EE6EB8()
{
  v1 = v0[70];
  v2 = v0[68];

  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAF8, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE6FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[91] = a1;
  v4[92] = a2;
  v4[93] = v2;

  if (v2)
  {
    v5 = v4[67];

    v6 = sub_221EE8A1C;
    v7 = v5;
  }

  else
  {
    v7 = v4[67];
    v6 = sub_221EE7118;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_221EE7118(uint64_t a1)
{
  v179 = v1;
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking CloudKit account status", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 736);
  v6 = *(v1 + 712);

  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  v172 = v5;

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 712);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v178 = v11;
    *v10 = 136315394;
    if (v9)
    {
      v12 = *(v1 + 704);
      *(v1 + 352) = 0;
      *(v1 + 360) = 0xE000000000000000;
      *(v1 + 320) = v12;
      *(v1 + 328) = v6;
      sub_221FB6A08();
      v13 = *(v1 + 352);
      v14 = *(v1 + 360);
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v15 = *(v1 + 736);
    v16 = sub_221EF4114(v13, v14, &v178);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    if (v15)
    {
      v17 = *(v1 + 728);
      *(v1 + 288) = 0;
      *(v1 + 296) = 0xE000000000000000;
      *(v1 + 416) = v17;
      *(v1 + 424) = v172;
      sub_221FB6A08();
      v18 = *(v1 + 288);
      v19 = *(v1 + 296);
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_221EF4114(v18, v19, &v178);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_221E93000, v7, v8, "Legacy CloudKit address: %s vs %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }

  v21 = *(v1 + 688);
  v22 = *(v1 + 656);

  v23 = sub_221FB61B8();
  v24 = sub_221FB65C8();
  v175 = v22;

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v1 + 656);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v178 = v27;
    *v26 = 136315394;
    if (v25)
    {
      v28 = *(v1 + 648);
      *(v1 + 496) = 0;
      *(v1 + 504) = 0xE000000000000000;
      *(v1 + 512) = v28;
      *(v1 + 520) = v175;
      sub_221FB6A08();
      v29 = *(v1 + 496);
      v30 = *(v1 + 504);
    }

    else
    {
      v30 = 0xE300000000000000;
      v29 = 7104878;
    }

    v31 = *(v1 + 688);
    v32 = sub_221EF4114(v29, v30, &v178);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    if (v31)
    {
      v33 = *(v1 + 680);
      *(v1 + 272) = 0;
      *(v1 + 280) = 0xE000000000000000;
      *(v1 + 448) = v33;
      *(v1 + 456) = v21;
      sub_221FB6A08();
      v34 = *(v1 + 272);
      v35 = *(v1 + 280);
    }

    else
    {
      v35 = 0xE300000000000000;
      v34 = 7104878;
    }

    v36 = sub_221EF4114(v34, v35, &v178);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_221E93000, v23, v24, "Secure Cloud CloudKit address: %s vs %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v27, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  else
  {
  }

  v37 = sub_221FB61B8();
  v38 = sub_221FB65C8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v1 + 797) << 8;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v178 = v41;
    *v40 = 136315394;
    if (v39 == 768)
    {
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v44 = *(v1 + 796);
      *(v1 + 432) = 0;
      *(v1 + 440) = 0xE000000000000000;
      *(v1 + 800) = v44;
      sub_221FB6A08();
      v45 = *(v1 + 432);
      v46 = *(v1 + 440);
      *(v1 + 464) = 0;
      *(v1 + 472) = 0xE000000000000000;
      *(v1 + 480) = v45;
      *(v1 + 488) = v46;
      sub_221FB6A08();

      v43 = *(v1 + 464);
      v42 = *(v1 + 472);
    }

    v47 = *(v1 + 798);
    v48 = sub_221EF4114(v43, v42, &v178);

    *(v40 + 4) = v48;
    *(v40 + 12) = 2080;
    *(v1 + 400) = 0;
    *(v1 + 408) = 0xE000000000000000;
    *(v1 + 804) = v47;
    sub_221FB6A08();
    v49 = sub_221EF4114(*(v1 + 400), *(v1 + 408), &v178);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_221E93000, v37, v38, "Legacy account status: %s vs %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v41, -1, -1);
    MEMORY[0x223DADA80](v40, -1, -1);
  }

  else
  {
  }

  v50 = sub_221FB61B8();
  v51 = sub_221FB65C8();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v1 + 792);
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v178 = v55;
    *v54 = 136315394;
    v56 = v53 & 0xFF00;
    if (v56 == 768)
    {
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v59 = *(v1 + 792);
      *(v1 + 336) = 0;
      *(v1 + 344) = 0xE000000000000000;
      *(v1 + 801) = v59;
      sub_221FB6A08();
      v60 = *(v1 + 336);
      v61 = *(v1 + 344);
      *(v1 + 368) = 0;
      *(v1 + 376) = 0xE000000000000000;
      *(v1 + 384) = v60;
      *(v1 + 392) = v61;
      sub_221FB6A08();

      v58 = *(v1 + 368);
      v57 = *(v1 + 376);
    }

    v62 = *(v1 + 794);
    v63 = sub_221EF4114(v58, v57, &v178);

    *(v54 + 4) = v63;
    *(v54 + 12) = 2080;
    *(v1 + 304) = 0;
    *(v1 + 312) = 0xE000000000000000;
    *(v1 + 802) = v62;
    sub_221FB6A08();
    v64 = sub_221EF4114(*(v1 + 304), *(v1 + 312), &v178);

    *(v54 + 14) = v64;
    _os_log_impl(&dword_221E93000, v50, v51, "Secure cloud account status: %s vs %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v55, -1, -1);
    MEMORY[0x223DADA80](v54, -1, -1);
  }

  else
  {

    v56 = v53 & 0xFF00;
  }

  v65 = *(v1 + 798);
  v66 = *(v1 + 794);
  v67 = *(v1 + 792);
  v68 = *(v1 + 796) & 0xFF00;
  v69 = *(v1 + 796);
  if (v56 == 768 || v66 != v67 || v68 == 768 || v65 != v69 || (*(v1 + 792) ^ *(v1 + 794)) > 0xFF)
  {
LABEL_52:
    v74 = sub_221FB61B8();
    v75 = sub_221FB65C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_221E93000, v74, v75, "CloudKit account status changed", v76, 2u);
      MEMORY[0x223DADA80](v76, -1, -1);
    }

    v78 = v66 == 1 || v65 == 1;
    if (v56 == 768)
    {
      if (v66 != 5)
      {
LABEL_67:
        if (v68 != 768)
        {
          if (v65 == 5)
          {
            v80 = v69 == 1;
            goto LABEL_72;
          }

LABEL_79:

          if (v66 != 5)
          {
            v85 = *(v1 + 795) << 8;

            v84 = v85 == 512;
            if (!v78)
            {
              v80 = 0;
              goto LABEL_164;
            }

            v86 = v78;
            v87 = 0;
            if (v85 != 512)
            {
              goto LABEL_153;
            }

            v88 = 1;
            v80 = 0;
            v173 = 0;
            v89 = 0;
            v79 = 0;
            v167 = 0;
LABEL_180:
            v116 = 1;
            goto LABEL_181;
          }

          v79 = 0;
          v80 = 0;
LABEL_102:
          v102 = *(v1 + 688);
          v103 = *(v1 + 656);
          if (v103)
          {
            if (!v102)
            {
              v105 = *(v1 + 712);

              if (v105)
              {
                v86 = v78;
                v167 = v80;
                v106 = *(v1 + 795) << 8;

                v173 = 0;
                v87 = v106 == 512;
                goto LABEL_155;
              }

LABEL_126:
              v86 = v78;
              v167 = v80;
              v111 = *(v1 + 795) << 8;
              v87 = v111 == 512;
              if (v65 == 1)
              {
                if ((v79 & 1) == 0)
                {
                  v87 = 0;
                  if (v111 != 512)
                  {
                    v80 = 1;
                    v88 = 1;
                    v173 = 0;
                    v89 = 1;
                    v79 = 0;
                    v116 = 0;
                    goto LABEL_181;
                  }

                  v173 = 0;
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v79)
              {
LABEL_135:
                v173 = 0;
                goto LABEL_158;
              }

              v173 = 0;
              v79 = 0;
LABEL_155:
              v80 = 1;
              v88 = 1;
              v89 = 1;
              v116 = v87;
              goto LABEL_181;
            }

            if (*(v1 + 648) == *(v1 + 680) && v103 == v102)
            {

LABEL_115:

              v108 = *(v1 + 795) << 8;
              v86 = v78;
              if (v65 == 1)
              {
                if ((v79 & 1) == 0)
                {
                  if (v108 == 512)
                  {
LABEL_118:
                    v173 = 0;
                    v89 = 0;
                    v79 = 0;
                    v87 = 1;
                    v167 = v80;
                    v88 = 1;
                    goto LABEL_180;
                  }

LABEL_152:
                  v87 = v80;
LABEL_153:
                  v173 = 0;
                  v89 = 0;
                  v79 = 0;
                  v116 = 0;
                  v80 = v87;
                  v88 = 1;
                  v167 = v87;
                  v87 = 0;
LABEL_181:
                  v117 = v88;
                  *(v1 + 809) = v79 & 1;
                  v176 = v89;
                  *(v1 + 808) = v89;
                  v168 = v80;
                  *(v1 + 807) = v80;
                  v170 = v87;
                  *(v1 + 806) = v87;
                  v118 = sub_221FB61B8();
                  v119 = sub_221FB65C8();
                  if (os_log_type_enabled(v118, v119))
                  {
                    v120 = swift_slowAlloc();
                    *v120 = 67109120;
                    *(v120 + 4) = v86;
                    _os_log_impl(&dword_221E93000, v118, v119, "Signed out: %{BOOL}d", v120, 8u);
                    MEMORY[0x223DADA80](v120, -1, -1);
                  }

                  v121 = sub_221FB61B8();
                  v122 = sub_221FB65C8();
                  if (os_log_type_enabled(v121, v122))
                  {
                    v123 = swift_slowAlloc();
                    *v123 = 67109120;
                    *(v123 + 4) = v79 & 1;
                    _os_log_impl(&dword_221E93000, v121, v122, "New legacy account: %{BOOL}d", v123, 8u);
                    MEMORY[0x223DADA80](v123, -1, -1);
                  }

                  v124 = sub_221FB61B8();
                  v125 = sub_221FB65C8();
                  if (os_log_type_enabled(v124, v125))
                  {
                    v126 = swift_slowAlloc();
                    *v126 = 67109120;
                    *(v126 + 4) = v176;
                    _os_log_impl(&dword_221E93000, v124, v125, "New secure cloud account: %{BOOL}d", v126, 8u);
                    MEMORY[0x223DADA80](v126, -1, -1);
                  }

                  v127 = sub_221FB61B8();
                  v128 = sub_221FB65C8();
                  if (os_log_type_enabled(v127, v128))
                  {
                    v129 = swift_slowAlloc();
                    *v129 = 67109120;
                    *(v129 + 4) = v167;
                    _os_log_impl(&dword_221E93000, v127, v128, "Signed in after sign out: %{BOOL}d", v129, 8u);
                    MEMORY[0x223DADA80](v129, -1, -1);
                  }

                  v130 = sub_221FB61B8();
                  v131 = sub_221FB65C8();
                  if (os_log_type_enabled(v130, v131))
                  {
                    v132 = swift_slowAlloc();
                    *v132 = 67109120;
                    *(v132 + 4) = v173 & 1;
                    _os_log_impl(&dword_221E93000, v130, v131, "Secure cloud account sign in on upgrade: %{BOOL}d", v132, 8u);
                    MEMORY[0x223DADA80](v132, -1, -1);
                  }

                  v133 = sub_221FB61B8();
                  v134 = sub_221FB65C8();
                  if (os_log_type_enabled(v133, v134))
                  {
                    v135 = swift_slowAlloc();
                    *v135 = 67109120;
                    *(v135 + 4) = v116;
                    _os_log_impl(&dword_221E93000, v133, v134, "Secure cloud E2E encryption enabled: %{BOOL}d", v135, 8u);
                    MEMORY[0x223DADA80](v135, -1, -1);
                  }

                  v136 = sub_221FB61B8();
                  v137 = sub_221FB65C8();
                  if (os_log_type_enabled(v136, v137))
                  {
                    v138 = swift_slowAlloc();
                    *v138 = 67109120;
                    *(v138 + 4) = v117 & 1;
                    _os_log_impl(&dword_221E93000, v136, v137, "Should clear state: %{BOOL}d", v138, 8u);
                    MEMORY[0x223DADA80](v138, -1, -1);
                  }

                  v139 = sub_221FB61B8();
                  v140 = sub_221FB65C8();
                  if (os_log_type_enabled(v139, v140))
                  {
                    v141 = swift_slowAlloc();
                    *v141 = 67109120;
                    *(v141 + 4) = v168;
                    _os_log_impl(&dword_221E93000, v139, v140, "Should perform fetch: %{BOOL}d", v141, 8u);
                    MEMORY[0x223DADA80](v141, -1, -1);
                  }

                  v142 = sub_221FB61B8();
                  v143 = sub_221FB65C8();
                  if (os_log_type_enabled(v142, v143))
                  {
                    v144 = swift_slowAlloc();
                    *v144 = 67109120;
                    *(v144 + 4) = v79 & 1;
                    _os_log_impl(&dword_221E93000, v142, v143, "Should create legacy subscriptions: %{BOOL}d", v144, 8u);
                    MEMORY[0x223DADA80](v144, -1, -1);
                  }

                  v145 = sub_221FB61B8();
                  v146 = sub_221FB65C8();
                  if (os_log_type_enabled(v145, v146))
                  {
                    v147 = swift_slowAlloc();
                    *v147 = 67109120;
                    *(v147 + 4) = v176;
                    _os_log_impl(&dword_221E93000, v145, v146, "Should create secure cloud subscriptions: %{BOOL}d", v147, 8u);
                    MEMORY[0x223DADA80](v147, -1, -1);
                  }

                  v148 = sub_221FB61B8();
                  v149 = sub_221FB65C8();
                  if (os_log_type_enabled(v148, v149))
                  {
                    v150 = swift_slowAlloc();
                    *v150 = 67109120;
                    *(v150 + 4) = v170;
                    _os_log_impl(&dword_221E93000, v148, v149, "Should bootstrap secure cloud container: %{BOOL}d", v150, 8u);
                    MEMORY[0x223DADA80](v150, -1, -1);
                  }

                  if (v117)
                  {
                    v151 = sub_221FB61B8();
                    v152 = sub_221FB65C8();
                    if (os_log_type_enabled(v151, v152))
                    {
                      v153 = swift_slowAlloc();
                      *v153 = 0;
                      _os_log_impl(&dword_221E93000, v151, v152, "Clearing token cache and friend list for account update", v153, 2u);
                      MEMORY[0x223DADA80](v153, -1, -1);
                    }

                    v154 = *(v1 + 536);

                    *(v1 + 752) = *__swift_project_boxed_opaque_existential_0Tm((v154 + 160), *(v154 + 184));
                    v155 = sub_221EE8B24;
                    v156 = 0;
                  }

                  else
                  {
                    v157 = *(v1 + 809);
                    v169 = *(v1 + 808);
                    v171 = *(v1 + 807);
                    v158 = *(v1 + 806);
                    v174 = *(v1 + 680);
                    v177 = *(v1 + 688);
                    v159 = *(v1 + 798);
                    v160 = *(v1 + 794);
                    v161 = *(v1 + 536);
                    v162 = swift_allocObject();
                    swift_weakInit();
                    v163 = swift_allocObject();
                    *(v163 + 16) = v157;
                    *(v163 + 24) = v162;
                    *(v163 + 32) = v169;
                    *(v163 + 33) = v158;
                    *(v163 + 34) = v171;
                    *(v163 + 35) = v159;
                    *(v163 + 37) = v160;
                    *(v163 + 40) = v174;
                    *(v163 + 48) = v177;
                    sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
                    v164 = sub_221FB6628();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC170, &qword_221FBAB18);
                    v165 = swift_allocObject();
                    *(v1 + 768) = v165;
                    swift_defaultActor_initialize();
                    *(v165 + 176) = 0;
                    *(v165 + 184) = 0;
                    *(v165 + 192) = 0;
                    *(v165 + 112) = xmmword_221FBA960;
                    *(v165 + 128) = 0;
                    *(v165 + 136) = 0x405E000000000000;
                    *(v165 + 144) = 0x7FFFFFFFFFFFFFFFLL;
                    *(v165 + 152) = &unk_221FBAB10;
                    *(v165 + 160) = v163;
                    *(v165 + 168) = v164;
                    v166 = *(v161 + 408);
                    *(v161 + 408) = v165;

                    sub_221EEDBE0(v166);
                    v155 = sub_221EE90CC;
                    v156 = v165;
                  }

                  return MEMORY[0x2822009F8](v155, v156, 0);
                }

LABEL_131:
                v167 = v80;
                v173 = 0;
                if (v108 == 512)
                {
LABEL_132:
                  v87 = 1;
                  v80 = 1;
                  v88 = 1;
                  v89 = 0;
                  goto LABEL_133;
                }

                goto LABEL_149;
              }

              if (v79)
              {
                goto LABEL_131;
              }

              if (v108 != 512)
              {
                goto LABEL_172;
              }

LABEL_170:
              v88 = 0;
              v173 = 0;
              v89 = 0;
              v79 = 0;
              v87 = 1;
              goto LABEL_171;
            }

            v107 = sub_221FB6B58();

            if (v107)
            {
              goto LABEL_115;
            }
          }

          else if (!v102)
          {
            v104 = *(v1 + 795) << 8;

            v86 = v78;
            if (v65 == 1)
            {
              if ((v79 & 1) == 0)
              {
                if (v104 == 512)
                {
                  goto LABEL_118;
                }

                goto LABEL_152;
              }
            }

            else if ((v79 & 1) == 0)
            {
              if (v104 != 512)
              {
                goto LABEL_172;
              }

              goto LABEL_170;
            }

            v167 = v80;
            v173 = 0;
            if (v104 == 512)
            {
              goto LABEL_132;
            }

LABEL_149:
            v87 = 0;
LABEL_168:
            v116 = 0;
            v89 = v87;
            v80 = 1;
            v88 = 1;
            v79 = 1;
            v87 = 0;
            goto LABEL_181;
          }

          v109 = *(v1 + 712);
          if (v109)
          {
            v110 = *(v1 + 794);
            v167 = v80;
            if (*(v1 + 704) == *(v1 + 680) && v109 == *(v1 + 688))
            {

              v111 = v110 & 0xFF00;
              if (v65 == 1)
              {
                if ((v79 & 1) == 0)
                {
                  v86 = v78;
                  v80 = 1;
                  if (v111 != 512)
                  {
                    v87 = 0;
                    v79 = 0;
                    v116 = 0;
                    v88 = 1;
                    v173 = 1;
                    v89 = 1;
                    goto LABEL_181;
                  }

                  v173 = 1;
LABEL_139:
                  v79 = 0;
                  v87 = 1;
                  v80 = 1;
                  v88 = 1;
LABEL_179:
                  v89 = 1;
                  goto LABEL_180;
                }

                goto LABEL_160;
              }

              if (v79)
              {
LABEL_160:
                v86 = v78;
                v88 = 1;
                v173 = 1;
                v87 = 1;
                v80 = 1;
LABEL_161:
                v89 = 1;
                v79 = 1;
                v116 = 1;
                if (v111 == 512)
                {
                  goto LABEL_181;
                }

                goto LABEL_168;
              }

              v86 = v78;
              v88 = 0;
              v173 = 1;
              if (v111 != 512)
              {
                v87 = 0;
                v80 = 1;
                v89 = 1;
                v79 = 0;
                v116 = 0;
                goto LABEL_181;
              }

LABEL_178:
              v79 = 0;
              v87 = 1;
              v80 = 1;
              goto LABEL_179;
            }

            v112 = sub_221FB6B58();

            v111 = v110 & 0xFF00;
            v173 = v112;
            if (v65 == 1)
            {
              if ((v79 & 1) == 0)
              {
                v86 = v78;
                if (v111 != 512)
                {
                  v87 = 0;
                  v79 = 0;
                  v116 = 0;
                  v80 = 1;
                  v88 = 1;
                  v89 = 1;
                  goto LABEL_181;
                }

                goto LABEL_139;
              }
            }

            else if ((v79 & 1) == 0)
            {
              v88 = v112 ^ 1;
              v86 = v78;
              if (v111 != 512)
              {
                v87 = 0;
                v79 = 0;
                v116 = 0;
                v80 = 1;
                v89 = 1;
                goto LABEL_181;
              }

              goto LABEL_178;
            }

            v86 = v78;
LABEL_158:
            v87 = 1;
            v80 = 1;
            v88 = 1;
            goto LABEL_161;
          }

          goto LABEL_126;
        }

        if (v65 != 5)
        {
          goto LABEL_79;
        }

LABEL_71:
        v80 = 1;
LABEL_72:
        v81 = *(v1 + 736);
        v82 = *(v1 + 712);
        if (v82)
        {
          if (v81)
          {
            if (*(v1 + 704) == *(v1 + 728) && v82 == v81)
            {

              if (v66 != 5)
              {
                v83 = *(v1 + 795) << 8;

                v84 = v83 == 512;
                if (!v78)
                {
LABEL_164:
                  v86 = v78;
                  if (v84)
                  {
                    v87 = 0;
                    v88 = 0;
                    v173 = 0;
                    v89 = 0;
                    v79 = 0;
                    v116 = 1;
LABEL_173:
                    v167 = v80;
                    goto LABEL_181;
                  }

LABEL_172:
                  v87 = 0;
                  v88 = 0;
                  v173 = 0;
                  v89 = 0;
                  v79 = 0;
                  v116 = 0;
                  goto LABEL_173;
                }

LABEL_143:
                v86 = v78;
                if (v84)
                {
LABEL_144:
                  v87 = 0;
                  v173 = 0;
                  v89 = 0;
                  v79 = 0;
                  v88 = 1;
LABEL_171:
                  v167 = v80;
                  goto LABEL_180;
                }

                goto LABEL_152;
              }

LABEL_101:
              v79 = 0;
              goto LABEL_102;
            }

            v101 = sub_221FB6B58();

            if (v66 == 5)
            {
              v79 = v101 ^ 1;
              goto LABEL_102;
            }

            v113 = v80;
            v114 = *(v1 + 795) << 8;

            v84 = v114 == 512;
            v80 = v113;
            if (v78)
            {
              if (v101)
              {
                goto LABEL_143;
              }

              goto LABEL_89;
            }

            if (v101)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }
        }

        else
        {
          if (!v81)
          {
            if (v66 != 5)
            {
              v115 = *(v1 + 795) << 8;

              v84 = v115 == 512;
              if (!v78)
              {
                goto LABEL_164;
              }

              v86 = v78;
              if (v115 == 512)
              {
                goto LABEL_144;
              }

              goto LABEL_152;
            }

            goto LABEL_101;
          }
        }

        if (v66 == 5)
        {
          v79 = 1;
          goto LABEL_102;
        }

        v90 = *(v1 + 795) << 8;

        v84 = v90 == 512;
        if (v78)
        {
LABEL_89:
          v86 = v78;
          v87 = 0;
          v167 = v80;
          if (v84)
          {
LABEL_90:
            v80 = 1;
            v88 = 1;
            v173 = 0;
            v89 = 0;
LABEL_133:
            v79 = 1;
            goto LABEL_180;
          }

LABEL_167:
          v173 = 0;
          goto LABEL_168;
        }

LABEL_166:
        v86 = v78;
        v167 = v80;
        v87 = 0;
        if (v84)
        {
          goto LABEL_90;
        }

        goto LABEL_167;
      }
    }

    else if (v66 != 5 || v67 != 1)
    {
      goto LABEL_67;
    }

    if (v65 != 5)
    {

      v79 = 0;
      v80 = 1;
      goto LABEL_102;
    }

    goto LABEL_71;
  }

  v70 = *(v1 + 688);
  v71 = *(v1 + 656);
  if (v71)
  {
    if (!v70 || (*(v1 + 648) != *(v1 + 680) || v71 != v70) && (sub_221FB6B58() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v70)
  {
    goto LABEL_52;
  }

  v72 = *(v1 + 736);
  v73 = *(v1 + 712);
  if (v73)
  {
    if (!v72 || (*(v1 + 704) != *(v1 + 728) || v73 != v72) && (sub_221FB6B58() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v72)
  {
    goto LABEL_52;
  }

  v91 = sub_221FB61B8();
  v92 = sub_221FB65C8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_221E93000, v91, v92, "CloudKit account status did not change for any container, not updating", v93, 2u);
    MEMORY[0x223DADA80](v93, -1, -1);
  }

  v94 = *(v1 + 805);

  if (v94 == 1)
  {
    sub_221EEBF38(*(v1 + 794), *(v1 + 798));
  }

  v95 = *(v1 + 560);
  v96 = *(v1 + 544);
  v97 = sub_221FB64C8();
  (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
  v98 = swift_allocObject();
  v98[2] = 0;
  v98[3] = 0;
  v98[4] = v95;

  sub_221FA7A78(0, 0, v96, &unk_221FBAB40, v98);

  v99 = *(v1 + 8);

  return v99();
}

uint64_t sub_221EE8A1C()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB00, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE8B24()
{
  v1 = v0[94];
  v0[10] = v0;
  v0[15] = v0 + 803;
  v0[11] = sub_221EE8C40;
  v2 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_221FA909C;
  v0[29] = &block_descriptor_77;
  v0[30] = v2;
  [v1 clearChangeTokenCacheAndFriendListWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221EE8C40()
{
  v1 = *(*v0 + 112);
  *(*v0 + 760) = v1;
  if (v1)
  {

    v2 = sub_221EE8F50;
  }

  else
  {
    v2 = sub_221EE8D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE8D74()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 120), *(*(v0 + 536) + 144));
  sub_221F7C11C();
  v1 = *(v0 + 809);
  v12 = *(v0 + 808);
  v13 = *(v0 + 807);
  v2 = *(v0 + 806);
  v14 = *(v0 + 680);
  v15 = *(v0 + 688);
  v3 = *(v0 + 798);
  v4 = *(v0 + 794);
  v5 = *(v0 + 536);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v12;
  *(v7 + 33) = v2;
  *(v7 + 34) = v13;
  *(v7 + 35) = v3;
  *(v7 + 37) = v4;
  *(v7 + 40) = v14;
  *(v7 + 48) = v15;
  sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
  v8 = sub_221FB6628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC170, &qword_221FBAB18);
  v9 = swift_allocObject();
  *(v0 + 768) = v9;
  swift_defaultActor_initialize();
  *(v9 + 176) = 0;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 112) = xmmword_221FBA960;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0x405E000000000000;
  *(v9 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(v9 + 152) = &unk_221FBAB10;
  *(v9 + 160) = v7;
  *(v9 + 168) = v8;
  v10 = *(v5 + 408);
  *(v5 + 408) = v9;

  sub_221EEDBE0(v10);

  return MEMORY[0x2822009F8](sub_221EE90CC, v9, 0);
}

uint64_t sub_221EE8F50(uint64_t a1)
{
  v2 = *(v1 + 536);
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_221EE8FC4, v2, 0);
}

uint64_t sub_221EE8FC4()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB38, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE90CC()
{
  v1 = *(v0 + 768);
  v2 = sub_221EB83D0(qword_281307C40, &qword_27CFEC170, &qword_221FBAB18, &unk_221FBD6D8);
  v3 = swift_task_alloc();
  *(v0 + 776) = v3;
  *v3 = v0;
  v3[1] = sub_221EE91D0;
  v4 = *(v0 + 768);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, v1, v2, 0x29286E7572, 0xE500000000000000, sub_221EEE040, v4, v5);
}

uint64_t sub_221EE91D0()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 768);
    v4 = sub_221EE940C;
  }

  else
  {
    v3 = *(v2 + 536);
    v4 = sub_221EE92E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221EE92E8()
{
  sub_221EEBF38(*(v0 + 794), *(v0 + 798));

  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB28, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221EE9428()
{
  v1 = v0[70];
  v2 = v0[68];

  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB20, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE9538()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAF0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EE9640(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, __int16 a7, __int16 a8)
{
  *(v8 + 616) = v11;
  *(v8 + 608) = v10;
  *(v8 + 762) = a8;
  *(v8 + 760) = a7;
  *(v8 + 769) = a6;
  *(v8 + 768) = a5;
  *(v8 + 767) = a4;
  *(v8 + 600) = a3;
  *(v8 + 766) = a2;
  return MEMORY[0x2822009F8](sub_221EE9688, 0, 0);
}

uint64_t sub_221EE9688()
{
  if (*(v0 + 766) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Creating legacy subscriptions for account update", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = v0 + 80;
      sub_221EA4AB4(Strong + 160, v0 + 392);

      v7 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 392), *(v0 + 416));
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 765;
      *(v0 + 88) = sub_221EE9E7C;
      v8 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_221FA909C;
      *(v0 + 232) = &block_descriptor_119;
      *(v0 + 240) = v8;
      [v7 subscribeToCloudKitDatabaseChangesWithCompletion_];
LABEL_34:

      return MEMORY[0x282200938](v6);
    }
  }

  if (*(v0 + 767) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DD8);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_221E93000, v10, v11, "Creating secure cloud subscriptions for account update", v12, 2u);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      sub_221EA4AB4(v13 + 368, v0 + 352);

      __swift_project_boxed_opaque_existential_0Tm((v0 + 352), *(v0 + 376));
      v14 = swift_task_alloc();
      *(v0 + 632) = v14;
      *v14 = v0;
      v14[1] = sub_221EEA62C;

      return sub_221F907F4();
    }
  }

  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v16 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v16, qword_281307DD8);
    v17 = sub_221FB61B8();
    v18 = sub_221FB65C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_221E93000, v17, v18, "Bootstrapping secure cloud container", v19, 2u);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    *(v0 + 656) = v20;
    if (v20)
    {
      v21 = v20;
      v22 = sub_221EEAC5C;
LABEL_43:

      return MEMORY[0x2822009F8](v22, v21, 0);
    }

    v23 = sub_221FB61B8();
    v24 = sub_221FB65C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_221E93000, v23, v24, "Bootstrapping complete", v25, 2u);
      MEMORY[0x223DADA80](v25, -1, -1);
    }
  }

  if (*(v0 + 769) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v26 = sub_221FB61D8();
    __swift_project_value_buffer(v26, qword_281307DD8);
    v27 = sub_221FB61B8();
    v28 = sub_221FB65C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_221E93000, v27, v28, "Fetching all changes for account update", v29, 2u);
      MEMORY[0x223DADA80](v29, -1, -1);
    }

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      v6 = v0 + 16;
      sub_221EA4AB4(v30 + 160, v0 + 272);

      v31 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 764;
      *(v0 + 24) = sub_221EEB2A4;
      v32 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_221FA909C;
      *(v0 + 168) = &block_descriptor_114;
      *(v0 + 176) = v32;
      [v31 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];
      goto LABEL_34;
    }
  }

  swift_beginAccess();
  v33 = swift_weakLoadStrong();
  *(v0 + 688) = v33;
  if (v33)
  {
    v21 = v33;
    v22 = sub_221EEB564;
    goto LABEL_43;
  }

  swift_beginAccess();
  v34 = swift_weakLoadStrong();
  *(v0 + 712) = v34;
  if (v34)
  {
    v21 = v34;
    v22 = sub_221EEB920;
    goto LABEL_43;
  }

  swift_beginAccess();
  v35 = swift_weakLoadStrong();
  *(v0 + 752) = v35;
  if (v35)
  {
    v21 = v35;
    v22 = sub_221EEBEC0;
    goto LABEL_43;
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_221EE9E7C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 624) = v1;
  if (v1)
  {
    v2 = sub_221EEA5B8;
  }

  else
  {
    v2 = sub_221EE9F8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EE9F8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  if (*(v0 + 767) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Creating secure cloud subscriptions for account update", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_221EA4AB4(Strong + 368, v0 + 352);

      __swift_project_boxed_opaque_existential_0Tm((v0 + 352), *(v0 + 376));
      v6 = swift_task_alloc();
      *(v0 + 632) = v6;
      *v6 = v0;
      v6[1] = sub_221EEA62C;

      return sub_221F907F4();
    }
  }

  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v8, qword_281307DD8);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_221E93000, v9, v10, "Bootstrapping secure cloud container", v11, 2u);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    *(v0 + 656) = v12;
    if (v12)
    {
      v13 = v12;
      v14 = sub_221EEAC5C;
LABEL_35:

      return MEMORY[0x2822009F8](v14, v13, 0);
    }

    v15 = sub_221FB61B8();
    v16 = sub_221FB65C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_221E93000, v15, v16, "Bootstrapping complete", v17, 2u);
      MEMORY[0x223DADA80](v17, -1, -1);
    }
  }

  if (*(v0 + 769) != 1)
  {
    goto LABEL_29;
  }

  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v18 = sub_221FB61D8();
  __swift_project_value_buffer(v18, qword_281307DD8);
  v19 = sub_221FB61B8();
  v20 = sub_221FB65C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_221E93000, v19, v20, "Fetching all changes for account update", v21, 2u);
    MEMORY[0x223DADA80](v21, -1, -1);
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (v22)
  {
    sub_221EA4AB4(v22 + 160, v0 + 272);

    v23 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 764;
    *(v0 + 24) = sub_221EEB2A4;
    v24 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_114;
    *(v0 + 176) = v24;
    [v23 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
LABEL_29:
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    *(v0 + 688) = v25;
    if (v25)
    {
      v13 = v25;
      v14 = sub_221EEB564;
      goto LABEL_35;
    }

    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    *(v0 + 712) = v26;
    if (v26)
    {
      v13 = v26;
      v14 = sub_221EEB920;
      goto LABEL_35;
    }

    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    *(v0 + 752) = v27;
    if (v27)
    {
      v13 = v27;
      v14 = sub_221EEBEC0;
      goto LABEL_35;
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_221EEA5B8(uint64_t a1)
{
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v1 + 392));
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221EEA62C()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_221EEABF8;
  }

  else
  {
    v2 = sub_221EEA740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EEA740()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Bootstrapping secure cloud container", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 656) = Strong;
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_221EEAC5C;
LABEL_26:

      return MEMORY[0x2822009F8](v7, v6, 0);
    }

    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_221E93000, v8, v9, "Bootstrapping complete", v10, 2u);
      MEMORY[0x223DADA80](v10, -1, -1);
    }
  }

  if (*(v0 + 769) != 1)
  {
    goto LABEL_20;
  }

  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v11 = sub_221FB61D8();
  __swift_project_value_buffer(v11, qword_281307DD8);
  v12 = sub_221FB61B8();
  v13 = sub_221FB65C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_221E93000, v12, v13, "Fetching all changes for account update", v14, 2u);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    sub_221EA4AB4(v15 + 160, v0 + 272);

    v16 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 764;
    *(v0 + 24) = sub_221EEB2A4;
    v17 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_114;
    *(v0 + 176) = v17;
    [v16 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
LABEL_20:
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    *(v0 + 688) = v18;
    if (v18)
    {
      v6 = v18;
      v7 = sub_221EEB564;
      goto LABEL_26;
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    *(v0 + 712) = v19;
    if (v19)
    {
      v6 = v19;
      v7 = sub_221EEB920;
      goto LABEL_26;
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    *(v0 + 752) = v20;
    if (v20)
    {
      v6 = v20;
      v7 = sub_221EEBEC0;
      goto LABEL_26;
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_221EEABF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EEAC5C()
{
  sub_221EA4AB4(*(v0 + 656) + 328, v0 + 312);

  return MEMORY[0x2822009F8](sub_221EEACD4, 0, 0);
}

uint64_t sub_221EEACD4()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm(v0 + 39, v0[42]);
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_221EEAD74;

  return sub_221EE3DBC(v1);
}

uint64_t sub_221EEAD74()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_221EEB240;
  }

  else
  {
    v2 = sub_221EEAE88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EEAE88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_221E93000, v1, v2, "Bootstrapping complete", v3, 2u);
    MEMORY[0x223DADA80](v3, -1, -1);
  }

  if (*(v0 + 769) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DD8);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "Fetching all changes for account update", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_221EA4AB4(Strong + 160, v0 + 272);

      v9 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 764;
      *(v0 + 24) = sub_221EEB2A4;
      v10 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_221FA909C;
      *(v0 + 168) = &block_descriptor_114;
      *(v0 + 176) = v10;
      [v9 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  *(v0 + 688) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = sub_221EEB564;
LABEL_18:

    return MEMORY[0x2822009F8](v13, v12, 0);
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  *(v0 + 712) = v14;
  if (v14)
  {
    v12 = v14;
    v13 = sub_221EEB920;
    goto LABEL_18;
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  *(v0 + 752) = v15;
  if (v15)
  {
    v12 = v15;
    v13 = sub_221EEBEC0;
    goto LABEL_18;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221EEB240()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EEB2A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_221EEB4F0;
  }

  else
  {
    v2 = sub_221EEB3B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EEB3B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[86] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_221EEB564;
LABEL_7:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  v0[89] = v4;
  if (v4)
  {
    v2 = v4;
    v3 = sub_221EEB920;
    goto LABEL_7;
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  v0[94] = v5;
  if (v5)
  {
    v2 = v5;
    v3 = sub_221EEBEC0;
    goto LABEL_7;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_221EEB4F0(uint64_t a1)
{
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v1 + 272));
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_221EEB564()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 688) + 288), *(*(v0 + 688) + 312));
  v2 = swift_task_alloc();
  *(v0 + 696) = v2;
  *v2 = v0;
  v2[1] = sub_221EEB610;
  v3 = *(v0 + 760);

  return sub_221EBE07C(v3, v1);
}

uint64_t sub_221EEB610()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 688);
  if (v0)
  {
    v4 = sub_221EEB8BC;
  }

  else
  {
    v4 = sub_221EEB73C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221EEB73C()
{
  [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 688) + 160) *(*(v0 + 688) + 184))];

  return MEMORY[0x2822009F8](sub_221EEB7C4, 0, 0);
}

uint64_t sub_221EEB7C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[89] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_221EEB920;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  v0[94] = v4;
  if (v4)
  {
    v2 = v4;
    v3 = sub_221EEBEC0;
    goto LABEL_5;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EEB8BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EEB920()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 712) + 288), *(*(v0 + 712) + 312));
  v2 = swift_task_alloc();
  *(v0 + 720) = v2;
  *v2 = v0;
  v2[1] = sub_221EEB9CC;
  v3 = *(v0 + 762);

  return sub_221EBE478(v3, v1);
}

uint64_t sub_221EEB9CC()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 712);
  if (v0)
  {
    v4 = sub_221EEBCD4;
  }

  else
  {
    v4 = sub_221EEBAF8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221EEBAF8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[89] + 288), *(v0[89] + 312));
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_221EEBBA8;
  v3 = v0[77];
  v4 = v0[76];

  return sub_221EBE794(v4, v3, v1);
}

uint64_t sub_221EEBBA8()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 712);
  if (v0)
  {
    v4 = sub_221EEBE5C;
  }

  else
  {
    v4 = sub_221EEBD38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221EEBCD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EEBD38()
{

  return MEMORY[0x2822009F8](sub_221EEBDA0, 0, 0);
}

uint64_t sub_221EEBDA0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 752) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_221EEBEC0, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_221EEBE5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EEBEC0()
{
  v1 = *(v0 + 752);
  v2 = *(v1 + 408);
  *(v1 + 408) = 1;
  sub_221EEDBE0(v2);

  v3 = *(v0 + 8);

  return v3();
}

id sub_221EEBF38(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 >= a1 || a2 == 1)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (a1 == 1)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 160), *(v2 + 184));
  v7 = qword_221FBAB90[v5];
  v8 = *v6;

  return [v8 notifyOfCloudKitAccountStatusUpdate_];
}

void *sub_221EEBFA8()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  __swift_destroy_boxed_opaque_existential_0(v0 + 46);
  sub_221EEDBE0(v0[51]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_221EEC018()
{
  sub_221EEBFA8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices13AccountSystemC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221EEC08C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_221EEC0E0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_221EEC13C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_221EEC16C()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EEC208, v0, 0);
}

uint64_t sub_221EEC208()
{
  v1 = v0[2];
  if (*(v1 + 408))
  {
    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DC0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, v3, v4, "Account System already active", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }

  else
  {
    v6 = v0[3];
    v7 = *MEMORY[0x277CBBF00];
    v8 = objc_opt_self();

    v9 = [v8 mainQueue];
    sub_221E9FCB8(v7, v9, &unk_221FBAAB0, v1);

    v10 = sub_221FB64C8();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v12 = sub_221EEE2C0(&qword_281307C38, v11, type metadata accessor for AccountSystem, &unk_221FBAA70);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    sub_221EEC69C(0, 0, v6, &unk_221FBAAC0, v13);

    v14 = *(v1 + 408);
    *(v1 + 408) = 1;
    sub_221EEDBE0(v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221EEC4B8()
{
  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DD8);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "CloudKit account changed notification", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_221E9DA9C;

  return sub_221EE5938(0);
}

uint64_t sub_221EEC608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9544C;

  return sub_221EE5938(1);
}

uint64_t sub_221EEC69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_221EEDBF0(a3, v22 - v9);
  v11 = sub_221FB64C8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_221EEDC60(v10);
  }

  else
  {
    sub_221FB64B8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_221FB6488();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_221FB6338() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_221EEDC60(a3);

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

  sub_221EEDC60(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_221EEC908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_221FB64C8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_221EB83D0(qword_281307C40, &qword_27CFEC170, &qword_221FBAB18, &unk_221FBD6D8);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = v12;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  swift_retain_n();
  sub_221FA7A78(0, 0, v10, &unk_221FBAB58, v14);
}

uint64_t sub_221EECB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EECB4C, a4, 0);
}

uint64_t sub_221EECB4C()
{
  v1 = v0[2];
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_221ECAE18;
  v5 = v0[3];

  return sub_221EECBF4(v3, v2, v5);
}

uint64_t sub_221EECBF4(int *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_221EECCEC;

  return v7();
}

uint64_t sub_221EECCEC()
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_221EECE8C;
  }

  else
  {
    v3 = sub_221EECE14;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_221EECE14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  sub_221FB64A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EECE8C()
{
  v1 = v0[6];
  if (v1[24])
  {
    v2 = v1[23] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v0[2] = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
    sub_221FB6498();
  }

  else
  {
    v3 = sub_221EECFC8(v0[3], v0[4], v0[5]);
    v5 = v4;
    v6 = v3;
    v8 = v7;
    swift_getObjectType();
    sub_221FB66A8();
    v9 = v0[8];
    if (v1[24])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_221FB6698();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v1[22] = v5;
    v1[23] = v6;
    v1[24] = v8;
    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_221EECFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v65 = a1;
  v67 = a2;
  v4 = sub_221FB6208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221FB6238();
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v62 = *(v10 - 8);
  v63 = v10;
  v60 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = v46 - v11;
  v12 = sub_221FB61F8();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = v46 - v15;
  v56 = sub_221FB6258();
  v55 = *(v56 - 8);
  v16 = MEMORY[0x28223BE20](v56);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = v46 - v19;
  v20 = sub_221FB6668();
  v21 = *(v20 - 8);
  result = MEMORY[0x28223BE20](v20);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 184);
  if (!*(v3 + 192))
  {
    v25 = 0;
  }

  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    v47 = v3;
    v52 = v27;
    sub_221E9D138(0, &qword_281306EA0, 0x277D85CA0);
    v51 = v8;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_221EEE2C0(&qword_281306EA8, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    v48 = v7;
    v50 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC178, &qword_221FBAB68);
    v49 = v5;
    sub_221EB83D0(&qword_281306F40, &qword_27CFEC178, &qword_221FBAB68, MEMORY[0x277D83970]);
    sub_221FB67D8();
    v69 = sub_221FB6678();
    (*(v21 + 8))(v24, v20);
    ObjectType = swift_getObjectType();
    v46[1] = ObjectType;
    sub_221FB6248();
    v29 = v54;
    sub_221FB6268();
    v30 = v53;
    v55 = *(v55 + 8);
    v31 = v56;
    (v55)(v18, v56);
    v33 = v57;
    v32 = v58;
    v34 = *(v58 + 104);
    v35 = v59;
    v34(v57, *MEMORY[0x277D85180], v59);
    *v30 = 0;
    v34(v30, *MEMORY[0x277D85168], v35);
    MEMORY[0x223DACAC0](v29, v33, v30, ObjectType);
    v36 = *(v32 + 8);
    v36(v30, v35);
    v36(v33, v35);
    (v55)(v29, v31);
    v38 = v61;
    v37 = v62;
    v39 = v63;
    (*(v62 + 16))(v61, v64, v63);
    v40 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v41 = swift_allocObject();
    v42 = v65;
    *(v41 + 2) = v47;
    *(v41 + 3) = v42;
    *(v41 + 4) = v67;
    (*(v37 + 32))(&v41[v40], v38, v39);
    aBlock[4] = sub_221EEE234;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F560F8;
    aBlock[3] = &block_descriptor_99;
    v43 = _Block_copy(aBlock);

    v44 = v66;
    sub_221FB6228();
    v45 = v48;
    sub_221EED9AC();
    sub_221FB6688();
    _Block_release(v43);
    (*(v49 + 8))(v45, v50);
    (*(v68 + 8))(v44, v51);

    return v52;
  }

  return result;
}

uint64_t sub_221EED788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, a4, v7);
  v16 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v15;
  *(v17 + 5) = a2;
  *(v17 + 6) = a3;
  (*(v8 + 32))(&v17[v16], v10, v7);

  sub_221FA7D68(0, 0, v13, &unk_221FBAB80, v17);
}

uint64_t sub_221EED9AC()
{
  sub_221FB6208();
  sub_221EEE2C0(&qword_281306F80, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221EB83D0(&qword_281306F58, &qword_27CFEC180, &qword_221FBAB70, MEMORY[0x277D83970]);
  return sub_221FB67D8();
}

uint64_t sub_221EEDA9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_221E963B4;

  return sub_221EEC498(v0);
}

uint64_t sub_221EEDB2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E963B4;

  return sub_221EEC608();
}

unint64_t sub_221EEDBE0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_221EEDBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EEDC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EEDCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_221EEDD00, 0, 0);
}

uint64_t sub_221EEDD00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_221EEDE00;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_221EECBF4(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_221EEDE00()
{

  return MEMORY[0x2822009F8](sub_221EEDF18, 0, 0);
}

uint64_t sub_221EEDF40(uint64_t a1)
{
  v12 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 34);
  v8 = *(v1 + 35);
  v9 = *(v1 + 37);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_221E9544C;

  return sub_221EE9640(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_221EEE048(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_221E9544C;

  return sub_221EECB2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_89Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  a1(*(v1 + 16));

  (*(v4 + 8))(v1 + v6, v3);

  return MEMORY[0x2821FE8E8](v1, v6 + v7, v5 | 7);
}

uint64_t sub_221EEE234()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_221EED788(v2, v3, v4, v5);
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221EEE2C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_221EEE308(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_221E963B4;

  return sub_221EEDCD8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_221EEE4B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221EEE4EC(uint64_t a1)
{
  result = type metadata accessor for IDSErrorAction(319);
  if (v2 <= 0x3F)
  {
    result = sub_221EEE570();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221EEE570()
{
  result = qword_27CFEC198;
  if (!qword_27CFEC198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFEC198);
  }

  return result;
}

uint64_t sub_221EEE624(uint64_t a1)
{
  result = sub_221FB5C38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221EEE690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EEE7E0()
{
  if (qword_281307080 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v0 = sub_221FB61D8();
    __swift_project_value_buffer(v0, qword_281307DF0);
    v1 = sub_221FB61B8();
    v2 = sub_221FB65C8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_221E93000, v1, v2, "Collecting updates to push to CloudKit", v3, 2u);
      MEMORY[0x223DADA80](v3, -1, -1);
    }

    v4 = ASContactsPreferringPlaceholders();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    v5 = sub_221FB6438();

    v38 = MEMORY[0x277D84F90];
    v6 = v5 >> 62 ? sub_221FB6868() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = MEMORY[0x277D84F90];
    if (!v6)
    {
      break;
    }

    v8 = 0;
    v9 = 0x1FCD97000uLL;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v9;
      v14 = [v10 relationshipStorage];
      v15 = [v14 primaryRelationship];

      v16 = [v11 relationshipStorage];
      v17 = [v16 primaryRemoteRelationship];

      if ([v15 cloudType] != 1)
      {

        goto LABEL_20;
      }

      v9 = v13;
      if ([v15 (v13 + 2203)] & 1) != 0 && (objc_msgSend(v17, (v13 + 2203)))
      {
        v18 = [v15 isHidingActivityData];

        if (!v18)
        {
          sub_221FB69B8();
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
LABEL_21:
          v9 = v13;
          goto LABEL_9;
        }

LABEL_20:

        goto LABEL_21;
      }

LABEL_9:
      ++v8;
      if (v12 == v6)
      {
        v19 = v38;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_25;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v19 = MEMORY[0x277D84F90];
LABEL_25:

  v39 = v7;
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    v20 = sub_221FB6868();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v37[4] = MEMORY[0x277D84F90];
  while (v20 != v21)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223DACD50](v21, v19);
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_43;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v26 = [v23 relationshipStorage];
    v27 = [v26 primaryRelationship];

    ++v21;
    if (v27)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
      v22 = v39;
      v37[4] = v39;
      v21 = v25;
    }
  }

  v28 = v37[3];

  v29 = *(v28 + 96);
  v37[5] = v29;
  v37[2] = v29;
  v30 = swift_task_alloc();
  v37[6] = v30;
  *(v30 + 16) = v22;

  v31 = swift_task_alloc();
  v37[7] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1B0, &qword_221FBACC0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v34 = sub_221EB83D0(&qword_27CFEC1B8, &qword_27CFEC1B0, &qword_221FBACC0, MEMORY[0x277D83988]);
  v35 = sub_221EB83D0(&qword_27CFEC1D8, &qword_27CFEBE40, &qword_221FBD750, MEMORY[0x277D83970]);
  *v31 = v37;
  v31[1] = sub_221EEEDA0;

  return MEMORY[0x28213AEC0](&unk_221FBACE0, v30, v32, v33, v34, v35);
}

void sub_221EEEDA0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v5 = *(v4 + 8);

    v5(a1);
  }
}

uint64_t sub_221EEEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_221EEEF14, 0, 0);
}

uint64_t sub_221EEEF14()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_221EEF038;

  return v6(v2, v3);
}

uint64_t sub_221EEF038()
{

  return MEMORY[0x2822009F8](sub_221EEF134, 0, 0);
}

uint64_t sub_221EEF134()
{
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_221EEF260;
  v5 = v0[14];

  return v7(v5, v2, v3);
}

uint64_t sub_221EEF260(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_221EEF3AC;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_221EEF388;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EEF3AC()
{
  v20 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221EA4AB4(v2, v0 + 16);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    sub_221EA4AB4(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E0, &unk_221FBACF0);
    v11 = sub_221FB6328();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v14 = sub_221EF4114(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_221E93000, v5, v6, "Error fetching record updates for %s, error: %@", v8, 0x16u);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  **(v0 + 96) = MEMORY[0x277D84F90];
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EEF608(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_221EEF628, 0, 0);
}

uint64_t sub_221EEF628()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_221EAA6C0;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_221EEF754(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EEF7F4, 0, 0);
}

uint64_t sub_221EEF7F4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_221FB61D8();
  v0[40] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC23F0, 0xD000000000000022, 0x8000000221FC2480);
  v0[41] = *(v1 + 104);
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_221EEF910;

  return sub_221F7E048();
}

uint64_t sub_221EEF910()
{

  return MEMORY[0x2822009F8](sub_221EEFA0C, 0, 0);
}

id sub_221EEFA0C()
{
  v1 = *(v0[38] + 48);
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result fitnessMode];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1;
  }

  if (v5 == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm((v0[38] + 8) *(v0[38] + 32)) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      v6 = swift_task_alloc();
      v0[43] = v6;
      *v6 = v0;
      v6[1] = sub_221EEFD60;

      return sub_221EEE7C0();
    }

    v7 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (!os_log_type_enabled(v7, v11))
    {
      v10 = &unk_221FBAC90;
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_221E93000, v7, v11, "Not pushing activity data updates to CloudKit, protected data unavailable", v9, 2u);
    v10 = &unk_221FBAC90;
  }

  else
  {
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (!os_log_type_enabled(v7, v8))
    {
      v10 = &unk_221FB9A50;
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 8) = 1024;
    *(v9 + 10) = 0;
    _os_log_impl(&dword_221E93000, v7, v8, "Not pushing activity data updates to CloudKit, apple watch: %{BOOL}d, standalone phone %{BOOL}d", v9, 0xEu);
    v10 = &unk_221FB9A50;
  }

  MEMORY[0x223DADA80](v9, -1, -1);
LABEL_17:
  v12 = v0[41];
  v13 = v0[39];

  v14 = sub_221FB64C8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;

  sub_221FA7A78(0, 0, v13, v10, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_221EEFD60(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_221EEFE60, 0, 0);
}

uint64_t sub_221EEFE60(uint64_t a1)
{
  v42 = v1;
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Pushing updates:", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v1 + 352);

  v41[0] = v5;

  sub_221EF1294(v41);
  v37 = v41[0];
  v36 = *(v41[0] + 2);
  if (v36)
  {
    v7 = 0;
    v8 = (v41[0] + 72);
    v40 = v1;
    while (v7 < *(v37 + 2))
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      *(v1 + 144) = *(v8 - 5);
      *(v1 + 152) = v9;
      *(v1 + 160) = v10;
      *(v1 + 168) = v11;
      *(v1 + 176) = v12;
      *(v1 + 184) = v13;

      v14 = v10;
      sub_221ED4904(v11, v12, v13);
      v15 = sub_221FB61B8();
      LOBYTE(v10) = sub_221FB65C8();

      sub_221ED4948(v11, v12, v13);
      v38 = v10;
      if (os_log_type_enabled(v15, v10))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v41[0] = v35;
        *v34 = 136315138;

        v16 = v14;
        sub_221ED4904(v11, v12, v13);
        v33 = v15;
        v17 = sub_221F297F4();
        v19 = v18;

        sub_221ED4948(v11, v12, v13);
        v20 = sub_221EF4114(v17, v19, v41);

        *(v34 + 4) = v20;
        _os_log_impl(&dword_221E93000, v33, v38, "%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x223DADA80](v35, -1, -1);
        MEMORY[0x223DADA80](v34, -1, -1);
      }

      else
      {
      }

      ++v7;
      v8 += 48;
      v1 = v40;
      if (v36 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v21 = v1 + 16;
    v22 = v1 + 80;
    v23 = *(v1 + 352);
    v25 = *(v1 + 296);
    v24 = *(v1 + 304);
    v26 = v1;
    v39 = *(v1 + 288);

    v27 = __swift_project_boxed_opaque_existential_0Tm((v24 + 56), *(v24 + 80));
    sub_221F12048(v23);
    sub_221EF0F94(v23);
    *(v1 + 360) = 0;
    v28 = *v27;
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v29 = sub_221FB6428();
    *(v1 + 368) = v29;

    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v30 = sub_221FB6428();
    *(v1 + 376) = v30;

    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 232;
    *(v1 + 24) = sub_221EF0334;
    v31 = swift_continuation_init();
    v26[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
    v26[10] = MEMORY[0x277D85DD0];
    v26[11] = 1107296256;
    v26[12] = sub_221EBA78C;
    v26[13] = &block_descriptor_13;
    v26[14] = v31;
    [v28 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v29 recordIDsToDelete:v30 priority:2 activity:v25 useZoneWideSharing:1 group:v39 completion:v22];
    v6 = v21;
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_221EF0334()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {

    v2 = sub_221EF0B9C;
  }

  else
  {
    v2 = sub_221EF044C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EF044C()
{
  v1 = v0[46];
  v2 = v0[30];

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_221FB6868();
    v3 = v2;
    v92 = v0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v92 = v0;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = v3;
  v93 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = sub_221F77644(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_46;
  }

  v10 = 0;
  v11 = v5;
  v90 = v5 & 0xC000000000000001;
  v12 = v5;
  v13 = v4;
  do
  {
    if (v90)
    {
      v14 = MEMORY[0x223DACD50](v10, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = [v15 recordID];
    v17 = [v16 zoneID];
    v18 = [v17 zoneName];
    v19 = sub_221FB6318();
    v21 = v20;

    v23 = *(v93 + 16);
    v22 = *(v93 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_221F77644((v22 > 1), v23 + 1, 1);
    }

    ++v10;
    *(v93 + 16) = v23 + 1;
    v24 = v93 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v11 = v12;
  }

  while (v13 != v10);

  isUniquelyReferenced_nonNull_native = v93;
  v0 = v92;
LABEL_14:
  v25 = v0[44];
  v26 = *(v25 + 16);
  if (!v26)
  {
    v68 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
LABEL_41:
    v0[49] = v68;
    v0[50] = v50;
    v69 = v68;
    v70 = v0[38];

    v71 = *(v70 + 96);
    v0[51] = v71;
    v0[35] = v71;
    v72 = swift_task_alloc();
    v0[52] = v72;
    *(v72 + 16) = v69;

    v73 = swift_task_alloc();
    v0[53] = v73;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1B0, &qword_221FBACC0);
    v9 = sub_221EB83D0(&qword_27CFEC1B8, &qword_27CFEC1B0, &qword_221FBACC0, MEMORY[0x277D83988]);
    *v73 = v0;
    v73[1] = sub_221EF0CC0;
    isUniquelyReferenced_nonNull_native = &unk_221FBACB8;
    v7 = v72;
    v8 = v74;

    return MEMORY[0x28213AEC8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
  }

  v27 = 0;
  v80 = v0 + 33;
  v81 = -v26;
  v83 = v0 + 31;
  v28 = v25 + 72;
  v77 = *(v25 + 16);
  v79 = MEMORY[0x277D84F90];
  v89 = v0[44];
  v91 = isUniquelyReferenced_nonNull_native;
  v76 = v25 + 72;
  do
  {
    v29 = (v28 + 48 * v27++);
    while (1)
    {
      if ((v27 - 1) >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v31 = *(v29 - 5);
      v30 = *(v29 - 4);
      v32 = *(v29 - 3);
      v33 = *(v29 - 2);
      v34 = *(v29 - 1);
      v35 = *v29;

      v36 = v32;
      v85 = v34;
      v87 = v35;
      sub_221ED4904(v33, v34, v35);
      isUniquelyReferenced_nonNull_native = [v36 secureCloudZoneName];
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      v37 = isUniquelyReferenced_nonNull_native;
      v38 = sub_221FB6318();
      v40 = v39;

      v92[31] = v38;
      v92[32] = v40;
      v41 = swift_task_alloc();
      *(v41 + 16) = v83;
      LOBYTE(v38) = sub_221F7B864(sub_221EB8534, v41, v91);

      if (v38)
      {
        break;
      }

      sub_221ED4948(v33, v85, v87);
      ++v27;
      v29 += 48;
      v25 = v89;
      if (v81 + v27 == 1)
      {
        v47 = v77;
        goto LABEL_27;
      }
    }

    v42 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_221F77624(0, *(v79 + 16) + 1, 1);
      v42 = v79;
    }

    v28 = v76;
    v47 = v77;
    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    v45 = v44 + 1;
    v25 = v89;
    if (v44 >= v43 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_221F77624((v43 > 1), v44 + 1, 1);
      v45 = v44 + 1;
      v28 = v76;
      v42 = v79;
    }

    *(v42 + 16) = v45;
    v79 = v42;
    v46 = v42 + 48 * v44;
    *(v46 + 32) = v31;
    *(v46 + 40) = v30;
    *(v46 + 48) = v36;
    *(v46 + 56) = v33;
    *(v46 + 64) = v85;
    *(v46 + 72) = v87;
  }

  while (v81 + v27);
LABEL_27:
  v48 = 0;
  v84 = -v47;
  v49 = v92[44] + 72;
  v50 = MEMORY[0x277D84F90];
  v78 = v49;
LABEL_28:
  v82 = v50;
  v51 = (v49 + 48 * v48++);
  while ((v48 - 1) < *(v25 + 16))
  {
    v53 = *(v51 - 5);
    v52 = *(v51 - 4);
    v54 = *(v51 - 3);
    v55 = *(v51 - 2);
    v56 = *(v51 - 1);
    v57 = *v51;

    v58 = v54;
    v86 = v56;
    v88 = v57;
    sub_221ED4904(v55, v56, v57);
    isUniquelyReferenced_nonNull_native = [v58 secureCloudZoneName];
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v59 = isUniquelyReferenced_nonNull_native;
    v60 = sub_221FB6318();
    v62 = v61;

    v92[33] = v60;
    v92[34] = v62;
    v63 = swift_task_alloc();
    *(v63 + 16) = v80;
    LOBYTE(v60) = sub_221F7B864(sub_221EB9CF4, v63, v91);

    if ((v60 & 1) == 0)
    {
      v50 = v82;
      v25 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_221F77624(0, *(v82 + 16) + 1, 1);
        v50 = v82;
      }

      isUniquelyReferenced_nonNull_native = v91;
      v49 = v78;
      v65 = *(v50 + 16);
      v64 = *(v50 + 24);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        sub_221F77624((v64 > 1), v65 + 1, 1);
        v66 = v65 + 1;
        isUniquelyReferenced_nonNull_native = v91;
        v50 = v82;
      }

      *(v50 + 16) = v66;
      v67 = v50 + 48 * v65;
      *(v67 + 32) = v53;
      *(v67 + 40) = v52;
      *(v67 + 48) = v58;
      *(v67 + 56) = v55;
      *(v67 + 64) = v86;
      *(v67 + 72) = v88;
      if (!(v84 + v48))
      {
        v0 = v92;
        v68 = v79;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    sub_221ED4948(v55, v86, v88);
    ++v48;
    v51 += 48;
    v25 = v89;
    if (v84 + v48 == 1)
    {
      v0 = v92;
      v68 = v79;
      v50 = v82;
      goto LABEL_41;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return MEMORY[0x28213AEC8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
}

uint64_t sub_221EF0B9C(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[46];
  v4 = v1[41];
  v5 = v1[39];
  swift_willThrow();

  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_221FA7A78(0, 0, v5, &unk_221FBACA8, v7);

  v8 = v1[1];

  return v8();
}

void sub_221EF0CC0()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221EF0E10, 0, 0);
  }
}

uint64_t sub_221EF0E10()
{
  v1 = v0[51];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = v0[50];
      sub_221EA4AB4(v3, (v0 + 24));
      v5 = v0[27];
      v6 = v0[28];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v5);
      (*(v6 + 32))(v4, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v0 + 24);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = v0[41];
  v8 = v0[39];

  v9 = sub_221FB64C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;

  sub_221FA7A78(0, 0, v8, &unk_221FBACC8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221EF0F94(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v27 = a1 + 40;
  v2 = MEMORY[0x277D84F90];
  v3 = &unk_27CFEC1C0;
  while (1)
  {
    v5 = *(v27 + 48 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_221FB6868();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_221FB6868();
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
      sub_221FB6868();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_221FB6998();
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

      sub_221EB83D0(&qword_27CFEC1C8, v3, &qword_221FBACD0, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_221FBACD0);
        v18 = v3;
        v19 = sub_221F12454(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
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
  result = sub_221FB6868();
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

void sub_221EF1294(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_221F93428(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_221EF1300(v4);
  *a1 = v2;
}

void sub_221EF1300(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_221FB6AF8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_221FB6468();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_221EF173C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_221EF13F8(0, v2, 1, a1);
  }
}

void sub_221EF13F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = sub_221FB5C38();
  v8 = MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v44 - v11;
  v45 = a2;
  if (a3 != a2)
  {
    v49 = *a4;
    v50 = (v10 + 8);
    v12 = v49 + 48 * a3 - 48;
    v13 = a1 - a3;
LABEL_5:
    v47 = v12;
    v48 = a3;
    v46 = v13;
    v53 = v13;
    while (1)
    {
      v15 = (v12 + 48);
      v14 = *(v12 + 48);
      v17 = *(v12 + 56);
      v16 = *(v12 + 64);
      v18 = *(v12 + 72);
      v19 = *(v12 + 80);
      v65 = *(v12 + 88);
      v20 = *v12;
      v21 = *(v12 + 8);
      v22 = *(v12 + 24);
      v62 = *(v12 + 16);
      v63 = v18;
      v23 = *(v12 + 32);
      v24 = *(v12 + 40);
      v60 = v14;

      v59 = v17;

      v25 = v16;
      v56 = v20;

      v55 = v21;

      v62 = v62;
      v26 = v19;
      sub_221ED4904(v63, v19, v65);
      v57 = v23;
      v58 = v22;
      v64 = v24;
      v27 = v24;
      v28 = v25;
      sub_221ED4904(v22, v23, v27);
      v29 = [v25 UUID];
      if (!v29)
      {
        break;
      }

      v30 = v29;
      sub_221FB5C18();

      v31 = [v62 UUID];
      if (!v31)
      {
        goto LABEL_14;
      }

      v32 = v31;
      v33 = v51;
      sub_221FB5C18();

      sub_221EF29B8();
      v34 = v61;
      v35 = v52;
      v54 = sub_221FB62C8();
      v36 = *v50;
      (*v50)(v33, v35);
      v36(v34, v35);

      sub_221ED4948(v58, v57, v64);

      sub_221ED4948(v63, v26, v65);
      if (v54)
      {
        if (!v49)
        {
          goto LABEL_15;
        }

        v37 = *(v12 + 64);
        v38 = *(v12 + 72);
        v39 = *(v12 + 16);
        v41 = *(v12 + 32);
        v40 = *(v12 + 48);
        *v15 = *v12;
        *(v12 + 64) = v39;
        v42 = *(v12 + 88);
        *v12 = v40;
        *(v12 + 16) = v37;
        *(v12 + 24) = v38;
        *(v12 + 40) = v42;
        v12 -= 48;
        v15[2] = v41;
        if (!__CFADD__(v53++, 1))
        {
          continue;
        }
      }

      a3 = v48 + 1;
      v12 = v47 + 48;
      v13 = v46 - 1;
      if (v48 + 1 == v45)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_221EF173C(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v152 = sub_221FB5C38();
  v8 = MEMORY[0x28223BE20](v152);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v140 = &v136 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_85:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_117:
      v18 = sub_221F93414(v18);
    }

    v165 = v18;
    v132 = *(v18 + 2);
    if (v132 < 2)
    {
      goto LABEL_95;
    }

    while (*a3)
    {
      v133 = *&v18[16 * v132];
      v134 = *&v18[16 * v132 + 24];
      sub_221EF2118((*a3 + 48 * v133), (*a3 + 48 * *&v18[16 * v132 + 16]), (*a3 + 48 * v134), a4);
      if (v5)
      {
        goto LABEL_95;
      }

      if (v134 < v133)
      {
        goto LABEL_110;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_221F93414(v18);
      }

      if (v132 - 2 >= *(v18 + 2))
      {
        goto LABEL_111;
      }

      v135 = &v18[16 * v132];
      *v135 = v133;
      *(v135 + 1) = v134;
      v165 = v18;
      sub_221F93388(v132 - 1);
      v18 = v165;
      v132 = *(v165 + 2);
      if (v132 <= 1)
      {
        goto LABEL_95;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
  }

  else
  {
    v139 = &v136 - v14;
    v146 = v15;
    v137 = a4;
    v17 = 0;
    v151 = (v13 + 8);
    v18 = MEMORY[0x277D84F90];
    v138 = a3;
    while (1)
    {
      v19 = v17;
      v20 = v17 + 1;
      if (v17 + 1 >= v16)
      {
        v49 = v17 + 1;
        goto LABEL_23;
      }

      v150 = v16;
      v142 = v18;
      v143 = v5;
      v21 = *a3;
      v22 = *a3 + 48 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v144 = v19;
      v29 = v21 + 48 * v19;
      v31 = *v29;
      v30 = *(v29 + 8);
      v32 = *(v29 + 16);
      v33 = *(v29 + 24);
      v162 = v23;
      v163 = v32;
      v34 = *(v29 + 32);
      v164 = *(v29 + 40);

      v161 = v24;

      v35 = v25;
      v158 = v31;

      v157 = v30;

      v36 = v163;
      LODWORD(v163) = v28;
      sub_221ED4904(v26, v27, v28);
      v159 = v34;
      v160 = v33;
      v37 = v34;
      v38 = v164;
      sub_221ED4904(v33, v37, v164);
      v39 = [v35 UUID];
      if (!v39)
      {
        break;
      }

      v40 = v39;
      v155 = v27;
      v156 = v21;
      v41 = v139;
      sub_221FB5C18();

      v42 = [v36 UUID];
      if (!v42)
      {
        goto LABEL_125;
      }

      v43 = v42;
      v44 = v140;
      sub_221FB5C18();

      v45 = sub_221EF29B8();
      v46 = v152;
      v149 = v45;
      v153 = sub_221FB62C8();
      v47 = *v151;
      (*v151)(v44, v46);
      v148 = v47;
      v47(v41, v46);

      sub_221ED4948(v160, v159, v38);

      sub_221ED4948(v26, v155, v163);
      v48 = v144 + 2;
      v141 = 48 * v144;
      a4 = v156 + 48 * v144 + 136;
      do
      {
        v49 = v150;
        if (v150 == v48)
        {
          goto LABEL_13;
        }

        v50 = *(a4 - 40);
        v51 = *(a4 - 32);
        v52 = *(a4 - 24);
        v53 = *(a4 - 16);
        v54 = *(a4 - 8);
        v55 = *a4;
        v56 = *(a4 - 88);
        v57 = *(a4 - 80);
        v58 = *(a4 - 64);
        v59 = *(a4 - 56);
        v162 = *(a4 - 72);
        v163 = v59;
        v164 = *(a4 - 48);
        v160 = v50;

        v159 = v51;

        v60 = v52;
        v157 = v56;

        v156 = v57;

        v61 = v162;
        v162 = v54;
        LODWORD(v161) = v55;
        sub_221ED4904(v53, v54, v55);
        v158 = v58;
        v62 = v58;
        v63 = v163;
        sub_221ED4904(v62, v163, v164);
        v155 = v60;
        v64 = [v60 UUID];
        if (!v64)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        v65 = v64;
        v154 = v48;
        v66 = v146;
        sub_221FB5C18();

        v67 = [v61 UUID];
        if (!v67)
        {
          goto LABEL_119;
        }

        v68 = v67;
        v69 = v147;
        sub_221FB5C18();

        v70 = v152;
        v71 = sub_221FB62C8() & 1;
        v72 = v148;
        v148(v69, v70);
        v72(v66, v70);

        sub_221ED4948(v158, v63, v164);

        sub_221ED4948(v53, v162, v161);
        v48 = v154 + 1;
        a4 += 48;
      }

      while ((v153 & 1) == v71);
      v49 = v154;
LABEL_13:
      v5 = v143;
      a3 = v138;
      v18 = v142;
      v19 = v144;
      v73 = v141;
      if (v153)
      {
        if (v49 < v144)
        {
          goto LABEL_114;
        }

        if (v144 < v49)
        {
          v74 = 48 * v49 - 48;
          v75 = v49;
          v76 = v144;
          do
          {
            if (v76 != --v75)
            {
              v85 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v77 = v85 + v73;
              v78 = *(v85 + v73 + 16);
              v79 = v85 + v74;
              v80 = *(v77 + 40);
              v81 = *(v77 + 24);
              v82 = *v77;
              v84 = *(v79 + 16);
              v83 = *(v79 + 32);
              *v77 = *v79;
              *(v77 + 16) = v84;
              *(v77 + 32) = v83;
              *v79 = v82;
              *(v79 + 16) = v78;
              *(v79 + 24) = v81;
              *(v79 + 40) = v80;
            }

            ++v76;
            v74 -= 48;
            v73 += 48;
          }

          while (v76 < v75);
        }
      }

LABEL_23:
      v86 = a3[1];
      if (v49 >= v86)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v49, v19))
      {
        goto LABEL_113;
      }

      if (v49 - v19 >= v137)
      {
LABEL_33:
        v17 = v49;
        goto LABEL_34;
      }

      if (__OFADD__(v19, v137))
      {
        goto LABEL_115;
      }

      if (v137 + v19 >= v86)
      {
        v17 = a3[1];
      }

      else
      {
        v17 = v137 + v19;
      }

      if (v17 < v19)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      sub_221EF13F8(v19, v17, v49, a3);
      if (v5)
      {
LABEL_95:

        return;
      }

LABEL_34:
      if (v17 < v19)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_221EF3710(0, *(v18 + 2) + 1, 1, v18);
      }

      a4 = *(v18 + 2);
      v87 = *(v18 + 3);
      v88 = a4 + 1;
      if (a4 >= v87 >> 1)
      {
        v18 = sub_221EF3710((v87 > 1), a4 + 1, 1, v18);
      }

      *(v18 + 2) = v88;
      v89 = &v18[16 * a4];
      *(v89 + 4) = v19;
      *(v89 + 5) = v17;
      v90 = *v145;
      if (!*v145)
      {
        goto LABEL_123;
      }

      if (a4)
      {
        while (1)
        {
          v91 = v88 - 1;
          if (v88 >= 4)
          {
            break;
          }

          if (v88 == 3)
          {
            v92 = *(v18 + 4);
            v93 = *(v18 + 5);
            v102 = __OFSUB__(v93, v92);
            v94 = v93 - v92;
            v95 = v102;
LABEL_54:
            if (v95)
            {
              goto LABEL_101;
            }

            v108 = &v18[16 * v88];
            v110 = *v108;
            v109 = *(v108 + 1);
            v111 = __OFSUB__(v109, v110);
            v112 = v109 - v110;
            v113 = v111;
            if (v111)
            {
              goto LABEL_104;
            }

            v114 = &v18[16 * v91 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v102 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v102)
            {
              goto LABEL_107;
            }

            if (__OFADD__(v112, v117))
            {
              goto LABEL_108;
            }

            if (v112 + v117 >= v94)
            {
              if (v94 < v117)
              {
                v91 = v88 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v118 = &v18[16 * v88];
          v120 = *v118;
          v119 = *(v118 + 1);
          v102 = __OFSUB__(v119, v120);
          v112 = v119 - v120;
          v113 = v102;
LABEL_68:
          if (v113)
          {
            goto LABEL_103;
          }

          v121 = &v18[16 * v91];
          v123 = *(v121 + 4);
          v122 = *(v121 + 5);
          v102 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v102)
          {
            goto LABEL_106;
          }

          if (v124 < v112)
          {
            goto LABEL_3;
          }

LABEL_75:
          a4 = v91 - 1;
          if (v91 - 1 >= v88)
          {
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_120;
          }

          v129 = *&v18[16 * a4 + 32];
          v130 = *&v18[16 * v91 + 40];
          sub_221EF2118((*a3 + 48 * v129), (*a3 + 48 * *&v18[16 * v91 + 32]), (*a3 + 48 * v130), v90);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v130 < v129)
          {
            goto LABEL_97;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_221F93414(v18);
          }

          if (a4 >= *(v18 + 2))
          {
            goto LABEL_98;
          }

          v131 = &v18[16 * a4];
          *(v131 + 4) = v129;
          *(v131 + 5) = v130;
          v165 = v18;
          sub_221F93388(v91);
          v18 = v165;
          v88 = *(v165 + 2);
          if (v88 <= 1)
          {
            goto LABEL_3;
          }
        }

        v96 = &v18[16 * v88 + 32];
        v97 = *(v96 - 64);
        v98 = *(v96 - 56);
        v102 = __OFSUB__(v98, v97);
        v99 = v98 - v97;
        if (v102)
        {
          goto LABEL_99;
        }

        v101 = *(v96 - 48);
        v100 = *(v96 - 40);
        v102 = __OFSUB__(v100, v101);
        v94 = v100 - v101;
        v95 = v102;
        if (v102)
        {
          goto LABEL_100;
        }

        v103 = &v18[16 * v88];
        v105 = *v103;
        v104 = *(v103 + 1);
        v102 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v102)
        {
          goto LABEL_102;
        }

        v102 = __OFADD__(v94, v106);
        v107 = v94 + v106;
        if (v102)
        {
          goto LABEL_105;
        }

        if (v107 >= v99)
        {
          v125 = &v18[16 * v91 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v102 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v102)
          {
            goto LABEL_109;
          }

          if (v94 < v128)
          {
            v91 = v88 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      v16 = a3[1];
      if (v17 >= v16)
      {
        goto LABEL_85;
      }
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_221EF2118(void **a1, void **a2, char *a3, void **a4)
{
  v108 = sub_221FB5C38();
  v8 = *(v108 - 8);
  v9 = MEMORY[0x28223BE20](v108);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v87 - v15;
  v16 = (a2 - a1) / 48;
  v17 = (a3 - a2) / 48;
  if (v16 >= v17)
  {
    v55 = 6 * v17;
    v19 = a4;
    if (a4 != a2 || &a2[v55] <= a4)
    {
      memmove(a4, a2, 48 * v17);
      v19 = a4;
    }

    v20 = &v19[v55];
    if (a3 - a2 >= 48 && a2 > a1)
    {
      v106 = a1;
      v90 = (v8 + 8);
      v112 = v19;
LABEL_24:
      v56 = 0;
      v57 = v20;
      v88 = a2 - 6;
      v113 = a2;
      v91 = v20;
      v107 = a3;
      do
      {
        v105 = v56;
        v59 = &v56[v57 - 48];
        v58 = *v59;
        v61 = *&v56[v57 - 40];
        v60 = *&v56[v57 - 32];
        v62 = *&v56[v57 - 24];
        v63 = *&v56[v57 - 16];
        v95 = &v56[v57];
        LODWORD(v111) = v56[v57 - 8];
        v64 = *(a2 - 6);
        v65 = *(a2 - 5);
        v66 = *(a2 - 3);
        v109 = *(a2 - 4);
        v110 = v66;
        v67 = *(a2 - 2);
        v68 = *(a2 - 8);
        v104 = v58;

        v103 = v61;

        v69 = v60;
        v100 = v64;

        v99 = v65;

        v109 = v109;
        sub_221ED4904(v62, v63, v111);
        v102 = v67;
        LODWORD(v101) = v68;
        v70 = v68;
        v71 = v69;
        sub_221ED4904(v110, v67, v70);
        result = [v69 UUID];
        if (!result)
        {
          goto LABEL_43;
        }

        v72 = result;
        v97 = v63;
        v98 = v62;
        v73 = v93;
        sub_221FB5C18();

        result = [v109 UUID];
        if (!result)
        {
          goto LABEL_44;
        }

        v74 = result;
        v75 = v107;
        v76 = v105;
        v89 = &v105[v107];
        v94 = &v105[v107 - 48];
        v77 = v92;
        sub_221FB5C18();

        sub_221EF29B8();
        v78 = v108;
        LODWORD(v96) = sub_221FB62C8();
        v79 = *v90;
        (*v90)(v77, v78);
        v79(v73, v78);

        sub_221ED4948(v110, v102, v101);

        sub_221ED4948(v98, v97, v111);
        if (v96)
        {
          v19 = v112;
          v54 = v88;
          v83 = v91;
          a3 = v94;
          if (v89 != v113)
          {
            v84 = *v88;
            v85 = *(v88 + 2);
            *(v94 + 16) = *(v88 + 1);
            *(a3 + 2) = v85;
            *a3 = v84;
          }

          v20 = &v105[v83];
          if (&v105[v83] <= v19 || (a2 = v54, v54 <= v106))
          {
            v20 = &v105[v83];
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        v19 = v112;
        a2 = v113;
        v57 = v91;
        if (&v76[v75] != v95)
        {
          v80 = *v59;
          v81 = *(v59 + 32);
          v82 = v94;
          *(v94 + 16) = *(v59 + 16);
          v82[2] = v81;
          *v82 = v80;
        }

        v56 = v76 - 48;
        v20 = &v56[v57];
      }

      while (&v56[v57] > v19);
    }

    v54 = a2;
LABEL_37:
    v86 = 6 * ((v20 - v19) / 48);
    if (v54 != v19 || v54 >= &v19[v86])
    {
      memmove(v54, v19, v86 * 8);
    }

    return 1;
  }

  v18 = 6 * v16;
  v19 = a4;
  if (a4 != a1 || &a1[v18] <= a4)
  {
    memmove(a4, a1, v18 * 8);
    v19 = a4;
  }

  v20 = &v19[v18];
  if (a2 - a1 < 48 || a2 >= a3)
  {
LABEL_17:
    v54 = a1;
    goto LABEL_37;
  }

  v95 = (v8 + 8);
  v96 = &v19[v18];
  v21 = &off_278497000;
  v107 = a3;
  while (1)
  {
    v106 = a1;
    v22 = *a2;
    v23 = a2[1];
    v24 = a2[2];
    v25 = a2[3];
    v26 = a2[4];
    v113 = a2;
    v27 = *(a2 + 40);
    v29 = *v19;
    v28 = v19[1];
    v30 = v19[3];
    v31 = v19[4];
    v110 = v19[2];
    v111 = v31;
    v112 = v19;
    v32 = *(v19 + 40);
    v109 = v22;

    v105 = v23;

    v33 = v24;
    v102 = v29;

    v101 = v28;

    v34 = v110;
    LODWORD(v110) = v27;
    sub_221ED4904(v25, v26, v27);
    v104 = v30;
    v35 = v30;
    v36 = v111;
    LODWORD(v103) = v32;
    v37 = v32;
    v38 = v33;
    sub_221ED4904(v35, v111, v37);
    result = [v33 v21[311]];
    if (!result)
    {
      break;
    }

    v40 = result;
    v100 = v26;
    v41 = v25;
    v42 = v98;
    sub_221FB5C18();

    v43 = v34;
    result = [v34 v21[311]];
    if (!result)
    {
      goto LABEL_42;
    }

    v44 = result;
    v45 = v97;
    sub_221FB5C18();

    sub_221EF29B8();
    v46 = v108;
    LODWORD(v99) = sub_221FB62C8();
    v47 = *v95;
    (*v95)(v45, v46);
    v47(v42, v46);

    sub_221ED4948(v104, v36, v103);

    sub_221ED4948(v41, v100, v110);
    if (v99)
    {
      v48 = v113;
      a2 = v113 + 6;
      v49 = v106;
      v50 = v106 == v113;
      v19 = v112;
    }

    else
    {
      v48 = v112;
      v19 = v112 + 6;
      v49 = v106;
      v50 = v106 == v112;
      a2 = v113;
    }

    v51 = v107;
    v20 = v96;
    if (!v50)
    {
      v52 = *v48;
      v53 = *(v48 + 2);
      *(v49 + 1) = *(v48 + 1);
      *(v49 + 2) = v53;
      *v49 = v52;
    }

    a1 = v49 + 6;
    v21 = &off_278497000;
    if (v19 >= v20 || a2 >= v51)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_221EF2868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F7E4EC(a1, v4, v5, v6);
}

uint64_t sub_221EF291C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EEF608(a1, v4);
}

unint64_t sub_221EF29B8()
{
  result = qword_27CFEC1D0;
  if (!qword_27CFEC1D0)
  {
    sub_221FB5C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC1D0);
  }

  return result;
}

uint64_t sub_221EF2A10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return sub_221EEEEF0(a1, a2, v6);
}

uint64_t sub_221EF2AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_221EF2B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static Sandbox.bootstrap(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB6468();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x400uLL);
  sub_221FB6338();

  v5 = _set_user_dir_suffix();

  if (!v5)
  {
    v11 = MEMORY[0x223DAC5B0](v6);
    if (strerror(v11))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v4 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_221EF3B2C(0, *(v4 + 16), 0, v4);
  }

  if (!confstr(65537, (v4 + 32), v7))
  {
LABEL_16:
    v12 = MEMORY[0x223DAC5B0]();
    if (strerror(v12))
    {
      v25 = sub_221FB6388();
      v27 = v26;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_221FB6978();
      MEMORY[0x223DAC740](0xD000000000000034, 0x8000000221FC2540);
      MEMORY[0x223DAC740](a1, a2);
      v28 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
      LODWORD(v46) = MEMORY[0x223DAC5B0](v28);
      v29 = sub_221FB6B08();
      MEMORY[0x223DAC740](v29);

      MEMORY[0x223DAC740](2112041, 0xE300000000000000);
      MEMORY[0x223DAC740](v25, v27);
      v30 = qword_281307070;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_221FB61D8();
      __swift_project_value_buffer(v31, qword_281307DC0);

      v21 = sub_221FB61B8();
      v32 = sub_221FB65A8();

      if (os_log_type_enabled(v21, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
        _os_log_impl(&dword_221E93000, v21, v32, "Sandbox bootstrap error: %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223DADA80](v34, -1, -1);
        MEMORY[0x223DADA80](v33, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!mkdir((v4 + 32), 0x2BCu) && MEMORY[0x223DAC5B0]() != 17)
  {
LABEL_18:
    v13 = MEMORY[0x223DAC5B0]();
    if (strerror(v13))
    {
      v35 = sub_221FB6388();
      v37 = v36;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_221FB6978();
      MEMORY[0x223DAC740](0xD000000000000029, 0x8000000221FC2510);
      MEMORY[0x223DAC740](a1, a2);
      v38 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
      LODWORD(v46) = MEMORY[0x223DAC5B0](v38);
      v39 = sub_221FB6B08();
      MEMORY[0x223DAC740](v39);

      MEMORY[0x223DAC740](2112041, 0xE300000000000000);
      MEMORY[0x223DAC740](v35, v37);
      v40 = qword_281307070;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = sub_221FB61D8();
      __swift_project_value_buffer(v41, qword_281307DC0);

      v21 = sub_221FB61B8();
      v42 = sub_221FB65A8();

      if (os_log_type_enabled(v21, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
        _os_log_impl(&dword_221E93000, v21, v42, "Sandbox bootstrap error: %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x223DADA80](v44, -1, -1);
        MEMORY[0x223DADA80](v43, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_20:
    v14 = sub_221FB6388();
    v16 = v15;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_221FB6978();
    MEMORY[0x223DAC740](0xD00000000000002DLL, 0x8000000221FC24B0);
    MEMORY[0x223DAC740](a1, a2);
    v17 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
    LODWORD(v46) = MEMORY[0x223DAC5B0](v17);
    v18 = sub_221FB6B08();
    MEMORY[0x223DAC740](v18);

    MEMORY[0x223DAC740](2112041, 0xE300000000000000);
    MEMORY[0x223DAC740](v14, v16);
    v19 = qword_281307070;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_221FB61D8();
    __swift_project_value_buffer(v20, qword_281307DC0);

    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
      _os_log_impl(&dword_221E93000, v21, v22, "Sandbox bootstrap error: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DADA80](v24, -1, -1);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

LABEL_34:

    sub_221FB6A68();
    __break(1u);
    return;
  }

  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DC0);
  oslog = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_221E93000, oslog, v9, "Sandbox bootstrapped successfully", v10, 2u);
    MEMORY[0x223DADA80](v10, -1, -1);
  }
}

uint64_t sub_221EF333C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_221EF3388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB50, &qword_221FB8B68);
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

void *sub_221EF34BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC210, &unk_221FBADB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221EF35F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC220, &qword_221FBADC0);
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

char *sub_221EF3710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F8, &qword_221FBAD98);
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

char *sub_221EF3814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E8, &unk_221FBAD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_221EF3954(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F0, &qword_221FBAD90);
  v10 = *(sub_221FB5C38() - 8);
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
  v15 = *(sub_221FB5C38() - 8);
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

char *sub_221EF3B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC238, &qword_221FBAE00);
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

char *sub_221EF3C20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
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

void *sub_221EF3D50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_221EF3EA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_221EF40B8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_221EF4114(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_221EF4114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221EF41E0(v11, 0, 0, 1, a1, a2);
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
    sub_221E951A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_221EF41E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_221EF42EC(a5, a6);
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
    result = sub_221FB69A8();
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

void *sub_221EF42EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_221EF4338(a1, a2);
  sub_221EF4468(&unk_283557670);
  return v3;
}

void *sub_221EF4338(uint64_t a1, unint64_t a2)
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

  v6 = sub_221EF4554(v5, 0);
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

  result = sub_221FB69A8();
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
        v10 = sub_221FB6398();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221EF4554(v10, 0);
        result = sub_221FB6958();
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

uint64_t sub_221EF4468(uint64_t result)
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

  result = sub_221EF45C8(result, v11, 1, v3);
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

void *sub_221EF4554(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC240, qword_221FBAE08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221EF45C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC240, qword_221FBAE08);
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

_BYTE **sub_221EF46BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_221EF46DC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return v7(a1, a2);
}

uint64_t sub_221EF47F4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EBD108;

  return v7(a1, a2);
}

uint64_t sub_221EF492C()
{
  __swift_project_boxed_opaque_existential_0Tm(*(v0 + 152), *(*(v0 + 152) + 24));
  v1 = sub_221F9ACE4();
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_221EF4A60;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC168, &qword_221FBAAE0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF4C50;
  *(v0 + 104) = &block_descriptor_14;
  *(v0 + 112) = v2;
  [v1 accountInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EF4A60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_221EF4BE0;
  }

  else
  {
    v2 = sub_221EF4B70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EF4B70()
{
  v1 = *(v0 + 144);

  v2 = sub_221EF6738(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221EF4BE0(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_221EF4C50(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}