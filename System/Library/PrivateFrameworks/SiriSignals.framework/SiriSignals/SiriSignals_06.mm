uint64_t sub_23150D784()
{
  type metadata accessor for INMediaItemType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9D0, &unk_23158B800);
  sub_23150D7E8();
  result = sub_2315860F4();
  qword_280D72130 = result;
  return result;
}

unint64_t sub_23150D7E8()
{
  result = qword_280D6C690;
  if (!qword_280D6C690)
  {
    type metadata accessor for INMediaItemType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6C690);
  }

  return result;
}

uint64_t sub_23150D840(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);

  v5 = sub_231585FE4();
  v6 = sub_2315865D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = sub_231566740(a1);

    *(v7 + 12) = 2080;
    v8 = type metadata accessor for AppMetadata();
    MEMORY[0x231930080](a1, v8);
    v9 = sub_2314A22E8();

    *(v7 + 14) = v9;
    _os_log_impl(&dword_231496000, v5, v6, "InstalledAppProvider#installedApps computed: %ld apps: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v7, -1, -1);
  }

  else
  {
  }

  return a2(a1);
}

uint64_t sub_23150D9EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_23150DA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23150DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v38 = a1;
  v39 = sub_231586024();
  v32 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_231586064();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = dispatch_group_create();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = (a2 + 32);
    v34 = (v32 + 8);
    v35 = &v44;
    v33 = (v31 + 8);
    do
    {
      v40 = v9;
      v12 = swift_allocObject();
      v13 = *v11++;
      *(v12 + 16) = v13;

      v14 = v37;
      dispatch_group_enter(v37);
      v15 = swift_allocObject();
      v15[2] = sub_2315116C0;
      v15[3] = v12;
      v15[4] = v14;
      v46 = sub_2315116C8;
      v47 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_23149B484;
      v45 = &block_descriptor_9;
      v16 = _Block_copy(&aBlock);

      v17 = v14;
      sub_231586054();
      v41 = v10;
      sub_23151262C(&qword_280D6FEC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
      v18 = v6;
      v19 = v39;
      sub_2315867C4();
      MEMORY[0x231930370](0, v8, v18, v16);
      _Block_release(v16);

      v20 = v19;
      v6 = v18;
      v21 = v36;
      (*v34)(v18, v20);
      (*v33)(v8, v21);

      v9 = v40 - 1;
    }

    while (v40 != 1);
  }

  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v29;
  *(v22 + 24) = v23;
  v46 = sub_2315116D4;
  v47 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_23149B484;
  v45 = &block_descriptor_22;
  v24 = _Block_copy(&aBlock);

  sub_231586054();
  v41 = v10;
  sub_23151262C(&qword_280D6FEC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
  v25 = v8;
  v26 = v39;
  sub_2315867C4();
  v27 = v37;
  sub_231586634();
  _Block_release(v24);

  (*(v32 + 8))(v6, v26);
  (*(v31 + 8))(v25, v36);
}

uint64_t sub_23150DF80(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2315116D4;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_23150E01C(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_2315116FC, v5);
}

uint64_t sub_23150E0A8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231586C44();
  }
}

uint64_t sub_23150E0D8()
{
  sub_231586D14();
  sub_231586274();
  return sub_231586D44();
}

uint64_t sub_23150E1AC(uint64_t a1)
{
  sub_231586D14();
  sub_231586274();
  return sub_231586D44();
}

uint64_t sub_23150E1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_23150E0A8(v5, v7) & 1;
}

uint64_t sub_23150E250()
{
  v7 = sub_231586674();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_231586654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_231586064();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586054();
  v8 = MEMORY[0x277D84F90];
  sub_23151262C(&qword_280D6FE90, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314CBD60(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_2315866A4();
  qword_280D6CCB0 = result;
  return result;
}

uint64_t sub_23150E4B0()
{
  result = sub_2314B890C(&unk_284612078);
  qword_280D72150 = result;
  return result;
}

uint64_t sub_23150E4D8()
{
  result = sub_2314B890C(&unk_2846120B8);
  qword_280D72148 = result;
  return result;
}

uint64_t sub_23150E500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158B830;
  sub_2314A207C(0, &qword_280D6C660, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F0, &qword_23158B8C0);
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  sub_2314A207C(0, &qword_280D6C618, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F8, &qword_23158B8C8);
  *(inited + 48) = sub_231586204();
  *(inited + 56) = v2;
  sub_2314A207C(0, &qword_280D6C610, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA00, &qword_23158B8D0);
  *(inited + 64) = sub_231586204();
  *(inited + 72) = v3;
  sub_2314A207C(0, &qword_280D6C678, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA08, &qword_23158B8D8);
  *(inited + 80) = sub_231586204();
  *(inited + 88) = v4;
  result = sub_2314B890C(inited);
  qword_280D72168 = result;
  return result;
}

uint64_t sub_23150E660()
{
  result = sub_2314B890C(&unk_2846120E8);
  qword_280D72160 = result;
  return result;
}

uint64_t sub_23150E688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  sub_2314A207C(0, &qword_280D6C660, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9F0, &qword_23158B8C0);
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  sub_2314A207C(0, &qword_280D6C678, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA08, &qword_23158B8D8);
  *(inited + 48) = sub_231586204();
  *(inited + 56) = v2;
  result = sub_2314B890C(inited);
  qword_280D72158 = result;
  return result;
}

uint64_t sub_23150E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v47 = a3;
  v48 = a4;
  sub_231585884();
  OUTLINED_FUNCTION_5_0();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);

  v18 = sub_231585FE4();
  v19 = sub_2315865D4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v49[0] = v45;
    *v20 = 136315138;
    *&v51 = a1;
    *(&v51 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v21 = v10;
    v22 = v12;
    v23 = v16;
    v24 = v4;
    v25 = v6;
    v26 = sub_2314A22E8();

    *(v20 + 4) = v26;
    v6 = v25;
    v4 = v24;
    v16 = v23;
    v12 = v22;
    v10 = v21;
    _os_log_impl(&dword_231496000, v18, v19, "InstalledAudioAppProvider#generalOSInstalledApps gathering apps for user: %s...", v20, 0xCu);
    v27 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x231931280](v27, -1, -1);
    MEMORY[0x231931280](v20, -1, -1);
  }

  sub_231585874();
  OUTLINED_FUNCTION_0_52();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D84F98];
  *(v28 + 16) = MEMORY[0x277D84F98];
  OUTLINED_FUNCTION_0_52();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  if (qword_280D6CCA8 != -1)
  {
    swift_once();
  }

  v45 = qword_280D6CCB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9D8, &qword_23158B890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  sub_2314BF8FC(v6, &v51);
  v32 = swift_allocObject();
  v33 = v53;
  v34 = v52;
  *(v32 + 16) = v51;
  *(v32 + 32) = v34;
  *(v32 + 48) = v33;
  *(v32 + 56) = v28;
  *(inited + 32) = sub_231511580;
  *(inited + 40) = v32;
  sub_2314BF8FC(v6, v49);
  v35 = swift_allocObject();
  v36 = v49[1];
  *(v35 + 16) = v49[0];
  *(v35 + 32) = v36;
  *(v35 + 48) = v50;
  *(v35 + 56) = v30;
  *(inited + 48) = sub_2315115F4;
  *(inited + 56) = v35;
  sub_2314BF8FC(v6, &v51);
  v37 = v46;
  (*(v10 + 16))(v46, v16, v4);
  v38 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v28;
  *(v39 + 24) = v30;
  v40 = v52;
  *(v39 + 32) = v51;
  *(v39 + 48) = v40;
  *(v39 + 64) = v53;
  (*(v10 + 32))(v39 + v38, v37, v4);
  v41 = (v39 + ((v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v48;
  *v41 = v47;
  v41[1] = v42;
  swift_retain_n();
  swift_retain_n();

  sub_23150DA84(v45, inited, sub_231511628, v39);

  swift_setDeallocating();
  sub_231536DF0();
  (*(v10 + 8))(v16, v4);
}

uint64_t sub_23150EC10()
{
  v0 = sub_231585884();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v69 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v69 - v7;
  if (qword_280D70420 != -1)
  {
LABEL_58:
    swift_once();
  }

  v9 = sub_231585FF4();
  v81 = __swift_project_value_buffer(v9, qword_280D72248);
  v10 = sub_231585FE4();
  v11 = sub_2315865D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_231496000, v10, v11, "InstalledAudioAppProvider#lsRecordApps...", v12, 2u);
    MEMORY[0x231931280](v12, -1, -1);
  }

  sub_231585874();
  v84 = [objc_opt_self() enumeratorWithOptions_];
  v82 = 0x8000000231591CC0;
  *&v13 = 136315650;
  v71 = v13;
  v80 = MEMORY[0x277D84F90];
  v75 = v1;
  v76 = v0;
  v78 = v8;
  v83 = v6;
  while (1)
  {
    v14 = [v84 nextObject];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v16 = sub_2314E0C98(v15);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      if (v16 == 0x6C7070612E6D6F63 && v17 == 0xEF636973754D2E65)
      {
        v18 = 0x6C7070612E6D6F63;
LABEL_25:

        if (qword_280D6CCC0 != -1)
        {
          swift_once();
        }

        v25 = qword_280D72150;
        goto LABEL_32;
      }

      if (sub_231586C44())
      {
        goto LABEL_25;
      }

      if (v18 == 0xD000000000000012 && v82 == v19)
      {
        v18 = 0xD000000000000012;
LABEL_29:

        if (qword_280D6CCB8 != -1)
        {
          swift_once();
        }

        v25 = qword_280D72148;
LABEL_32:
        v30 = qword_280D6CCD0;

        if (v30 != -1)
        {
          swift_once();
        }

        v79 = qword_280D72158;

        goto LABEL_35;
      }

      if (sub_231586C44())
      {
        goto LABEL_29;
      }

      if (qword_280D6CCD8 != -1)
      {
        swift_once();
      }

      v22 = qword_280D72160;

      v23 = [v15 supportedIntentMediaCategories];
      v24 = sub_231586384();

      v25 = sub_231511E5C(v24, v22);

      if (!v25[2])
      {

        v26 = v15;
        v6 = v83;
        goto LABEL_23;
      }

      if (qword_280D6CCE0 != -1)
      {
        swift_once();
      }

      v54 = qword_280D72168;

      v55 = [v15 supportedIntents];

      v56 = sub_231586384();
      v79 = sub_231511E5C(v56, v54);

LABEL_35:

      v31 = sub_231585FE4();
      v32 = sub_2315865D4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v85 = v77;
        *v33 = v71;
        *(v33 + 4) = sub_2314A22E8();
        *(v33 + 12) = 2080;

        sub_231586524();

        v34 = sub_2314A22E8();

        *(v33 + 14) = v34;
        *(v33 + 22) = 2080;

        sub_231586524();

        v35 = sub_2314A22E8();

        *(v33 + 24) = v35;
        _os_log_impl(&dword_231496000, v31, v32, "InstalledAudioAppProvider#lsRecordApps found bundle: %s, supportedCategories: %s, supportedIntents: %s", v33, 0x20u);
        v36 = v77;
        swift_arrayDestroy();
        MEMORY[0x231931280](v36, -1, -1);
        MEMORY[0x231931280](v33, -1, -1);
      }

      v37 = v25[2];
      if (v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
        v38 = swift_allocObject();
        v39 = _swift_stdlib_malloc_size(v38);
        v38[2] = v37;
        v38[3] = 2 * ((v39 - 32) / 16);
        v77 = v38;
        sub_231572A38();
        v73 = v40;
        v8 = v85;
        v6 = v86;
        v0 = v87;
        v1 = v88;

        sub_2314A4B70(v8);
        if (v73 != v37)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else
      {
        v77 = MEMORY[0x277D84F90];
      }

      v41 = v79[2];
      if (v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
        v42 = swift_allocObject();
        v43 = _swift_stdlib_malloc_size(v42);
        v42[2] = v41;
        v42[3] = 2 * ((v43 - 32) / 16);
        sub_231572A38();
        v73 = v44;
        v6 = v85;
        v0 = v86;
        v1 = v87;
        v8 = v88;
        v72 = v89;

        sub_2314A4B70(v6);
        if (v73 != v41)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      v45 = v74[3];
      v46 = v74[4];
      __swift_project_boxed_opaque_existential_1(v74, v45);
      v47 = (*(v46 + 8))(v18, v19, v45, v46);
      v49 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2314F17C4();
        v80 = v57;
      }

      v51 = *(v80 + 16);
      if (v51 >= *(v80 + 24) >> 1)
      {
        sub_2314F17C4();
        v80 = v58;
      }

      v52 = v80;
      *(v80 + 16) = v51 + 1;
      v53 = (v52 + 56 * v51);
      v53[4] = v18;
      v53[5] = v19;
      v53[6] = v77;
      v53[7] = v42;
      v53[8] = v47;
      v53[9] = v49;
      v53[10] = MEMORY[0x277D84F90];

      v0 = v76;
      v8 = v78;
      v6 = v83;
    }

    else
    {

      v26 = sub_231585FE4();
      v27 = sub_2315865E4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_231496000, v26, v27, "InstalledAudioAppProvider#lsRecordApps error missing bundle identifier for LSApplicationRecord", v28, 2u);
        v29 = v28;
        v8 = v78;
        MEMORY[0x231931280](v29, -1, -1);
      }

LABEL_23:
    }
  }

  v1[2](v6, v8, v0);
  v59 = sub_231585FE4();
  v60 = sub_2315865D4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v8;
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    v63 = v70;
    sub_231585874();
    sub_2315857A4();
    v65 = v64;
    v66 = v1[1];
    (v66)(v63, v0);
    (v66)(v6, v0);
    *(v62 + 4) = v65;
    _os_log_impl(&dword_231496000, v59, v60, "InstalledAudioAppProvider#lsRecordApps complete in %fms", v62, 0xCu);
    MEMORY[0x231931280](v62, -1, -1);

    (v66)(v61, v0);
  }

  else
  {

    v67 = v1[1];
    (v67)(v6, v0);
    (v67)(v8, v0);
  }

  return v80;
}

uint64_t sub_23150F6C0(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  v4 = (result + 80);
  v24 = a2;
  if (v3)
  {
    while (1)
    {
      v25 = v3;
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 1);
      v27 = *(v4 - 2);
      v9 = *v4;
      swift_beginAccess();
      v28 = v8;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v29 = v7;

      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v30 = *v2;
      v11 = sub_23149C888(v5, v6);
      if (__OFADD__(v10[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9E8, &unk_23158B8A0);
      if (sub_231586A64())
      {
        v15 = sub_23149C888(v5, v6);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_14;
        }

        v13 = v15;
      }

      if (v14)
      {
        OUTLINED_FUNCTION_1_21((v30[7] + 56 * v13), v21, *(v30[7] + 56 * v13 + 8), *(v30[7] + 56 * v13 + 40), v24, v25, v27, v9, v28, v29);
      }

      else
      {
        v30[(v13 >> 6) + 8] |= 1 << v13;
        v17 = (v30[6] + 16 * v13);
        *v17 = v5;
        v17[1] = v6;
        OUTLINED_FUNCTION_1_21((v30[7] + 56 * v13), v21, v22, v23, v24, v25, v27, v9, v28, v29);
        v18 = v30[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_13;
        }

        v30[2] = v20;
      }

      v2 = v24;
      *v24 = v30;

      swift_endAccess();

      v3 = v26 - 1;
      v4 += 7;
      if (v26 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
  }

  return result;
}

uint64_t sub_23150F940(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = a4();
  sub_23150F6C0(v6, (a3 + 16));

  return v5(v7);
}

uint64_t sub_23150F9AC()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v39 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v39 - v8;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v10 = sub_231585FF4();
  __swift_project_value_buffer(v10, qword_280D72248);
  v11 = sub_231585FE4();
  v12 = sub_2315865D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_231496000, v11, v12, "InstalledAudioAppProvider#pluginKitExtensions...", v13, 2u);
    MEMORY[0x231931280](v13, -1, -1);
  }

  v41 = v7;

  sub_231585874();
  if (qword_280D6CCE0 != -1)
  {
    swift_once();
  }

  v15 = sub_2315715F4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  *(inited + 32) = sub_2315861A4();
  *(inited + 40) = v17;
  v18 = sub_2315861A4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  *(inited + 80) = sub_2315861A4();
  *(inited + 88) = v20;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  *(inited + 96) = v15;
  v21 = sub_2315860F4();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    sub_2314BF8FC(v0, v43);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    v26 = v43[1];
    *(v25 + 32) = v43[0];
    *(v25 + 48) = v26;
    *(v25 + 64) = v44;
    aBlock[4] = sub_231512604;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2315114F4;
    aBlock[3] = &block_descriptor_37;
    v27 = _Block_copy(aBlock);

    sub_231512450(v21, v27, v24);

    _Block_release(v27);
  }

  else
  {
  }

  v28 = v41;
  (*(v2 + 16))(v41, v9, v1);
  v29 = sub_231585FE4();
  v30 = sub_2315865D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    v32 = v40;
    sub_231585874();
    sub_2315857A4();
    v34 = v33;
    v39[1] = v22 + 16;
    v35 = *(v2 + 8);
    v35(v32, v1);
    v35(v28, v1);
    *(v31 + 4) = v34;
    _os_log_impl(&dword_231496000, v29, v30, "InstalledAudioAppProvider#pluginKitExtensions complete in %fms", v31, 0xCu);
    MEMORY[0x231931280](v31, -1, -1);

    v35(v9, v1);
  }

  else
  {

    v36 = *(v2 + 8);
    v36(v28, v1);
    v36(v9, v1);
  }

  swift_beginAccess();
  v37 = *(v22 + 16);

  return v37;
}

uint64_t sub_23150FF48(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t))
{
  v32 = a5;
  v7 = sub_231585884();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  swift_beginAccess();
  v33 = a3;
  swift_beginAccess();

  sub_2315123BC(v14, sub_231512578, 0, sub_231511704);
  swift_endAccess();
  swift_beginAccess();

  v16 = sub_231571668(v15);
  if (qword_280D70420 != -1)
  {
LABEL_13:
    swift_once();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  (*(v8 + 16))(v13, a4, v7);

  a4 = sub_231585FE4();
  v18 = sub_2315865D4();
  if (os_log_type_enabled(a4, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = *(v16 + 16);

    *(v19 + 12) = 2048;
    sub_231585874();
    sub_2315857A4();
    v21 = v20;
    v22 = *(v8 + 8);
    v22(v11, v7);
    v22(v13, v7);
    *(v19 + 14) = v21;
    _os_log_impl(&dword_231496000, a4, v18, "InstalledAudioAppProvider#generalOSInstalledApps found %ld bundles in %fms", v19, 0x16u);
    MEMORY[0x231931280](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  sub_231510848(v16);
  v7 = v23;

  v8 = 0;
  v16 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v24 = *(v7 + 16);
  v25 = v7 + 40;
  while (v24 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    a4 = *v25;
    v11 = *(v25 + 8);
    v28 = *(v25 - 8);
    type metadata accessor for AppMetadata();
    swift_allocObject();
    AppMetadata.init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(v28, a4, v26, v27, v11);

    MEMORY[0x231930040](v29);
    v13 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2315863C4();
    }

    sub_231586404();
    v16 = v34;
    v25 += 56;
    ++v8;
  }

  v32(v16);
}

void sub_231510364(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[6];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v102 = a1[3];

  sub_23149B228(v9);
  v18 = sub_23149FF38(v102, v11, v12, v13, v14, v15, v16, v17, v62, v65, v69, v72, a3, a4, v84, v87, v91, v95, v99, v102, v104, v107);
  v88 = sub_2315715F4(v18);
  sub_23149B228(v8);
  v26 = sub_23149FF38(v6, v19, v20, v21, v22, v23, v24, v25, v63, v66, v70, v73, v76, v81, v85, v88, v92, v96, v100, v6, v105, v108);
  v97 = sub_2315715F4(v26);
  sub_23149B228(v10);
  v34 = sub_23149FF38(v7, v27, v28, v29, v30, v31, v32, v33, v64, v67, v71, v74, v77, v82, v86, v89, v93, v97, v101, v7, v106, v109);
  v35 = sub_2315715F4(v34);
  v36 = 0;
  v37 = *(v35 + 16);
  v38 = v35 + 40;
  v94 = MEMORY[0x277D84F90];
LABEL_2:
  v39 = (v38 + 16 * v36);
  while (v37 != v36)
  {
    if (v36 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(v39 - 1);
    v9 = *v39;
    v40 = v7 == v4 && v9 == v5;
    if (!v40 && (sub_231586C44() & 1) == 0)
    {

      v41 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23152D598(0, *(v94 + 16) + 1, 1);
        v41 = v94;
      }

      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        sub_23152D598(v42 > 1, v43 + 1, 1);
        v44 = v43 + 1;
        v41 = v94;
      }

      ++v36;
      *(v41 + 16) = v44;
      v94 = v41;
      v45 = v41 + 16 * v43;
      *(v45 + 32) = v7;
      *(v45 + 40) = v9;
      v38 = v35 + 40;
      goto LABEL_2;
    }

    v39 += 2;
    ++v36;
  }

  v46 = v78[3];
  v47 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v46);
  v48 = *(v47 + 8);

  v9 = v94;

  v35 = v48(v4, v5, v46, v47);
  v7 = v49;
  if (qword_280D70420 == -1)
  {
    goto LABEL_17;
  }

LABEL_22:
  swift_once();
LABEL_17:
  v50 = sub_231585FF4();
  __swift_project_value_buffer(v50, qword_280D72248);

  v51 = v98;

  v52 = sub_231585FE4();
  v53 = sub_2315865F4();

  if (os_log_type_enabled(v52, v53))
  {
    v79 = v35;
    v54 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v54 = 136446978;

    v55 = sub_2314A22E8();

    *(v54 + 4) = v55;
    *(v54 + 12) = 2082;

    v68 = v53;
    v56 = MEMORY[0x277D837D0];
    MEMORY[0x231930080](v98);

    v57 = sub_2314A22E8();

    *(v54 + 14) = v57;
    *(v54 + 22) = 2082;

    MEMORY[0x231930080](v58, v56);

    v59 = sub_2314A22E8();

    *(v54 + 24) = v59;
    *(v54 + 32) = 2082;
    MEMORY[0x231930080](v9, v56);

    v60 = sub_2314A22E8();

    *(v54 + 34) = v60;
    v51 = v98;
    _os_log_impl(&dword_231496000, v52, v68, "InstalledAudioAppProvider#generalOSInstalledApps merged bundle: %{public}s, supportedCategories: %{public}s, supportedIntents: %{public}s, counterpartBundleIdentifiers: %{public}s", v54, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231931280](v103, -1, -1);
    v61 = v54;
    v35 = v79;
    MEMORY[0x231931280](v61, -1, -1);
  }

  else
  {
  }

  *v83 = v4;
  v83[1] = v5;
  v83[2] = v51;
  v83[3] = v90;
  v83[4] = v35;
  v83[5] = v7;
  v83[6] = v9;
}

void sub_231510848(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v23 = a1 + 80;
  v24 = MEMORY[0x277D84F90];
  v25 = v2;
LABEL_2:
  v3 = (v23 + 56 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_21;
    }

    v27 = v1 + 1;
    v28 = v1;
    v4 = *(v3 - 6);
    v5 = *(v3 - 5);
    v6 = *(v3 - 4);
    v7 = *(v3 - 3);
    v8 = *(v3 - 1);
    v26 = *(v3 - 2);
    v9 = *v3;
    v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    swift_bridgeObjectRetain_n();
    v11 = v6;

    v12 = sub_2314BA520(v4, v5, 0);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    if (([v12 appProtectionHidden] & 1) == 0)
    {

LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D814(0, *(v24 + 16) + 1, 1);
        v19 = v24;
      }

      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23152D814(v20 > 1, v21 + 1, 1);
        v19 = v24;
      }

      *(v19 + 16) = v21 + 1;
      v24 = v19;
      v22 = (v19 + 56 * v21);
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v11;
      v22[7] = v7;
      v22[8] = v26;
      v22[9] = v8;
      v22[10] = v9;
      v1 = v27;
      v2 = v25;
      goto LABEL_2;
    }

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);

    v15 = sub_231585FE4();
    v16 = sub_2315865D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v17 = 136315138;
      *(v17 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v15, v16, "App %s is hidden, removing from installed apps", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v17, -1, -1);
    }

    v2 = v25;
    v1 = v28 + 1;
    v3 += 7;
  }
}

void sub_231510BD8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1 || a2)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);

    v7 = a2;
    oslog = sub_231585FE4();
    v8 = sub_2315865E4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315394;
      sub_2315860E4();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      *(v9 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v12 = sub_231586C94();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *&v70[0] = v12;
      *(&v70[0] + 1) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
      sub_231586204();
      v35 = sub_2314A22E8();

      *(v9 + 14) = v35;
      _os_log_impl(&dword_231496000, oslog, v8, "InstalledAudioAppProvider#pluginKitApps error enumerating plugins matching query: %s, %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v10, -1, -1);
      MEMORY[0x231931280](v9, -1, -1);

      return;
    }

    goto LABEL_24;
  }

  v17 = a1;
  v18 = [v17 containingBundle];
  if (!v18)
  {
LABEL_19:
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v36 = sub_231585FF4();
    __swift_project_value_buffer(v36, qword_280D72248);
    v37 = v17;
    oslog = sub_231585FE4();
    v38 = sub_2315865E4();

    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = a1;
      v62 = v37;
      _os_log_impl(&dword_231496000, oslog, v38, "InstalledAudioAppProvider#pluginKitApps missing containing bundle of plugin: %@", v39, 0xCu);
      sub_2314CC1C4(v40, &unk_27DD5B410, &unk_2315890B0);
      MEMORY[0x231931280](v40, -1, -1);
      MEMORY[0x231931280](v39, -1, -1);

      v41 = v62;
LABEL_25:

      return;
    }

LABEL_24:
    v41 = oslog;
    goto LABEL_25;
  }

  v19 = v18;
  v20 = sub_2314D7D2C(v18);
  if (!v21)
  {

    goto LABEL_19;
  }

  v22 = v20;
  v23 = v21;
  if (qword_280D6CCD8 != -1)
  {
    swift_once();
  }

  v24 = qword_280D72160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_231588FF0;
  *(v25 + 32) = v17;
  sub_2314A207C(0, &qword_280D6C668, 0x277CC1ED8);
  v26 = v17;

  v27 = sub_231586374();

  v28 = INSupportedMediaCategories();

  if (v28)
  {
    v29 = sub_231586514();

    v30 = sub_231512188(v29, v24);

    if (v30[2])
    {
      v31 = sub_2315861A4();
      v33 = v32;
      sub_2314A207C(0, &qword_280D6C5F0, 0x277CBEA60);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if (sub_2315124CC(v31, v33, ObjCClassFromMetadata, 0, v26))
      {
        sub_2315867A4();
        swift_unknownObjectRelease();
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
      }

      v70[0] = v68;
      v70[1] = v69;
      if (*(&v69 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
        if (swift_dynamicCast())
        {
          if (qword_280D6CCE0 != -1)
          {
            swift_once();
          }

          v42 = qword_280D72168;

          v43 = sub_231511E5C(v67, v42);

          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v44 = sub_231585FF4();
          __swift_project_value_buffer(v44, qword_280D72248);

          v45 = sub_231585FE4();
          v46 = sub_2315865D4();

          v63 = v46;
          osloga = v22;
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *&v70[0] = v61;
            *v47 = 136315650;
            *(v47 + 4) = sub_2314A22E8();
            *(v47 + 12) = 2080;
            sub_231586524();
            log = v45;
            v48 = v43;
            v49 = sub_2314A22E8();

            *(v47 + 14) = v49;
            *(v47 + 22) = 2080;
            sub_231586524();
            v50 = sub_2314A22E8();

            *(v47 + 24) = v50;
            v43 = v48;
            _os_log_impl(&dword_231496000, log, v63, "InstalledAudioAppProvider#pluginKitExtensions found bundle: %s, supportedCategories: %s, supportedIntents: %s", v47, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x231931280](v61, -1, -1);
            MEMORY[0x231931280](v47, -1, -1);
          }

          else
          {
          }

          v64 = sub_2315715F4(v30);
          v51 = sub_2315715F4(v43);
          v52 = a5[3];
          v53 = a5[4];
          __swift_project_boxed_opaque_existential_1(a5, v52);
          v54 = (*(v53 + 8))(osloga, v23, v52, v53);
          v56 = v55;
          swift_beginAccess();
          sub_2314D4620();
          v57 = *(*(a4 + 16) + 16);
          sub_2314D46AC(v57);
          v58 = *(a4 + 16);
          *(v58 + 16) = v57 + 1;
          v59 = (v58 + 56 * v57);
          v59[4] = osloga;
          v59[5] = v23;
          v59[6] = v64;
          v59[7] = v51;
          v59[8] = v54;
          v59[9] = v56;
          v59[10] = MEMORY[0x277D84F90];
          *(a4 + 16) = v58;
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {

        sub_2314CC1C4(v70, &qword_27DD5B218, &unk_23158A010);
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2315114F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t objectdestroy_3Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231511628()
{
  v1 = *(sub_231585884() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23150FF48(v3, v4, v0 + 32, (v0 + v2), v5);
}

void sub_231511720(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_BYTE *__return_ptr, id *, void *, __n128))
{
  sub_2314D7DC8(v80);
  v6 = v80[1];
  v7 = v80[3];
  v8 = v80[4];
  v59 = v80[5];
  v65 = v80[0];
  v9 = (v80[2] + 64) >> 6;

  v57 = v9;
  v58 = v6;
  if (!v8)
  {
LABEL_3:
    v12 = v7;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_23;
      }

      v10 = *(v6 + 8 * v11);
      ++v12;
      if (v10)
      {
        v66 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_231586C84();
    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v66 = a4;
    v10 = v8;
    v11 = v7;
LABEL_8:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v65 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v65 + 56) + 56 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = v17[6];
    *__src = v15;
    *&__src[8] = v16;
    *&__src[16] = v18;
    *&__src[24] = v19;
    *&__src[32] = v20;
    *&__src[40] = v21;
    *&__src[48] = v23;
    *&__src[56] = v22;
    *&__src[64] = v24;

    v59(&v71, __src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2314CC1C4(__dst, &qword_27DD5B9E0, &qword_23158B898);
    if (!v72)
    {
LABEL_23:
      sub_2314A4B70(v65);

      return;
    }

    v25 = v71;
    v26 = v74;
    v68[7] = v71;
    v68[8] = v72;
    v27 = v75;
    v28 = v76;
    v62 = v77;
    v63 = v73;
    __dst[0] = v73;
    __dst[1] = v74;
    __dst[2] = v75;
    __dst[3] = v76;
    __dst[4] = v77;
    __dst[5] = v78;
    v60 = v79;
    v61 = v78;
    __dst[6] = v79;
    v29 = *v81;
    v67 = v72;
    v31 = sub_23149C888(v71, v72);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_27;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (v66)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B9E8, &unk_23158B8A0);
        sub_231586A74();
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_2315089F8(v34, v66 & 1);
      v36 = sub_23149C888(v25, v67);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }

      v31 = v36;
      if ((v35 & 1) == 0)
      {
LABEL_19:
        v49 = *v81;
        v49[(v31 >> 6) + 8] |= 1 << v31;
        v50 = (v49[6] + 16 * v31);
        *v50 = v25;
        v50[1] = v67;
        v51 = (v49[7] + 56 * v31);
        *v51 = v63;
        v51[1] = v26;
        v51[2] = v27;
        v51[3] = v28;
        v51[4] = v62;
        v51[5] = v61;
        v51[6] = v60;
        v52 = v49[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_28;
        }

        v49[2] = v54;
        goto LABEL_21;
      }
    }

    v38 = *v81;
    v39 = *(*v81 + 56) + 56 * v31;
    v40 = *(v39 + 8);
    v41 = *(v39 + 16);
    v42 = *(v39 + 24);
    v44 = *(v39 + 32);
    v43 = *(v39 + 40);
    v45 = *(v39 + 48);
    v68[0] = *v39;
    v68[1] = v40;
    v68[2] = v41;
    v68[3] = v42;
    v68[4] = v44;
    v68[5] = v43;
    v68[6] = v45;

    (a5)(__src, v68, __dst);
    if (v64)
    {
      break;
    }

    v46 = v38[7] + 56 * v31;
    v47 = *&__src[24];
    v48 = *&__src[48];
    *v46 = *__src;
    *(v46 + 8) = *&__src[8];
    *(v46 + 24) = v47;
    *(v46 + 32) = *&__src[32];
    *(v46 + 48) = v48;

LABEL_21:
    v8 = (v10 - 1) & v10;
    a4 = 1;
    v7 = v11;
    v9 = v57;
    v6 = v58;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v68[0] = v64;
  v55 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2314A4B70(v65);

    return;
  }

LABEL_30:
  *__src = 0;
  *&__src[8] = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

unint64_t *sub_231511D50(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_23156259C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_231511DE0(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void *sub_231511E5C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_23149BEE0(0, v5, v6);
    sub_231511FFC(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_231511DE0(v10, v5, sub_231512610);

    MEMORY[0x231931280](v10, -1, -1);
  }

  return v8;
}

void sub_231511FFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_231586D14();

    sub_231586274();
    v11 = sub_231586D44();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_231586C44();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = result[v14];
    result[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      sub_23152B004(result, a2, v21, a4);
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t *sub_231512188(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_23149BEE0(0, v6, v8);
    sub_23156259C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_231511D50(v12, v6, a2, a1);

    MEMORY[0x231931280](v12, -1, -1);
  }

  return v10;
}

uint64_t sub_231512350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  *a1 = *a4;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a4 + 32);
  *(a1 + 48) = *(a4 + 48);

  sub_2315125CC(a4, v8);
  return a2;
}

void sub_2315123BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *__return_ptr, id *, void *, __n128))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  sub_231511720(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4);
  *v4 = v10;
}

void sub_231512450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2315860C4();
  [a3 enumeratePluginsMatchingQuery:v5 withBlock:a2];
}

id sub_2315124CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_231586174();

  v9 = [a5 objectForInfoDictionaryKey:v8 ofClass:a3 inScope:a4];

  return v9;
}

void sub_231512548(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_231511FFC(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_231512578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v8[2] = *(a1 + 48);
  v9 = *(a1 + 64);
  result = sub_231512350((a2 + 2), v3, v4, v8);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_23151262C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231512690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2315126D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231512730()
{
  result = qword_27DD5BA10;
  if (!qword_27DD5BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BA10);
  }

  return result;
}

uint64_t sub_231512794(uint64_t a1, uint64_t a2)
{
  v2 = sub_2315861A4();
  v4 = v3;
  v5 = sub_2315861A4();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_23151280C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656E6F685069;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F685069;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684099177;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x646F50656D6F68;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x5654656C707061;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684099177;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x646F50656D6F68;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x5654656C707061;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2315129B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "kout";
  v4 = "kout";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "INMediaCategoryGeneral";
      break;
    case 2:
      v4 = "INMediaCategoryRadio";
      v6 = 0xD000000000000017;
      break;
    case 3:
      v4 = "INMediaCategoryMusic";
      break;
    case 4:
      v4 = "INMediaCategoryPodcasts";
      v6 = 0xD000000000000019;
      break;
    case 5:
      v4 = "INMediaCategoryAudiobooks";
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "INMediaCategoryGeneral";
      break;
    case 2:
      v3 = "INMediaCategoryRadio";
      v2 = 0xD000000000000017;
      break;
    case 3:
      v3 = "INMediaCategoryMusic";
      break;
    case 4:
      v3 = "INMediaCategoryPodcasts";
      v2 = 0xD000000000000019;
      break;
    case 5:
      v3 = "INMediaCategoryAudiobooks";
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231512AFC(char a1, uint64_t a2)
{
  v3 = 0xD000000000000019;
  v4 = "tionDisambiguationFrequency";
  v5 = "tionDisambiguationFrequency";
  switch(a1)
  {
    case 1:
      v5 = "";
      goto LABEL_4;
    case 2:
      v5 = "candidate_bundles";
LABEL_4:
      v3 = 0xD000000000000011;
      break;
    case 3:
      v5 = "candidate_actions";
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000019;
  switch(a2)
  {
    case 1:
      v4 = "";
      goto LABEL_9;
    case 2:
      v4 = "candidate_bundles";
LABEL_9:
      v6 = 0xD000000000000011;
      break;
    case 3:
      v4 = "candidate_actions";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_231512C1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 2036625250;
    }

    else
    {
      v4 = 0x70756F7267;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 2036625250;
    }

    else
    {
      v2 = 0x70756F7267;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231512CF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x636973754DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x636973754DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7374736163646F50;
      break;
    case 2:
      v5 = 0x736B6F6F42;
      break;
    case 3:
      v5 = 0x6F69646152;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x80000002315904C0;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7374736163646F50;
      break;
    case 2:
      v2 = 0x736B6F6F42;
      break;
    case 3:
      v2 = 0x6F69646152;
      break;
    case 4:
      v2 = 0xD000000000000011;
      v6 = 0x80000002315904C0;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231512E3C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6449656C646E7562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449656C646E7562;
  switch(v4)
  {
    case 1:
      v5 = 0x6449797469746E65;
      break;
    case 2:
      v5 = 0x73556E69616D6F64;
      v3 = 0xED00006573614365;
      break;
    case 3:
      v5 = 0x7355646572616873;
      v3 = 0xEC00000064497265;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x746E65746E69;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6449797469746E65;
      break;
    case 2:
      v2 = 0x73556E69616D6F64;
      v6 = 0xED00006573614365;
      break;
    case 3:
      v2 = 0x7355646572616873;
      v6 = 0xEC00000064497265;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x746E65746E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231512FC4(char a1, uint64_t a2)
{
  v2 = 808465261;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x303035326DLL;
    }

    else
    {
      v3 = 0x3635316D6BLL;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 808465261;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x303035326DLL;
    }

    else
    {
      v2 = 0x3635316D6BLL;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_53(v3, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_2315130A0(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000006BLL;
  v3 = 0x656557664F796164;
  v4 = 0xE90000000000006BLL;
  v5 = a1;
  v6 = 0x656557664F796164;
  switch(v5)
  {
    case 1:
      v6 = 0x6144664F72756F68;
      v4 = 0xE900000000000079;
      break;
    case 2:
      v6 = 0x59664F68746E6F6DLL;
      v7 = 7496037;
      goto LABEL_5;
    case 3:
      v6 = 0x6F4D664F6B656577;
      v7 = 6845550;
LABEL_5:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6144664F72756F68;
      v2 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0x59664F68746E6F6DLL;
      v8 = 7496037;
      goto LABEL_10;
    case 3:
      v3 = 0x6F4D664F6B656577;
      v8 = 6845550;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231586C44();
  }

  return v10 & 1;
}

uint64_t sub_23151320C()
{
  v0 = DomainUseCase.rawValue.getter();
  v2 = v1;
  v3 = DomainUseCase.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_53(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_231513294(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 27954;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 7155761;
      break;
    case 2:
      v4 = 26673;
      break;
    case 3:
      v4 = 26678;
      break;
    case 4:
      v4 = 25649;
      break;
    case 5:
      v4 = 25655;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v4 = 6567986;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 6712937;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 27954;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 7155761;
      break;
    case 2:
      v6 = 26673;
      break;
    case 3:
      v6 = 26678;
      break;
    case 4:
      v6 = 25649;
      break;
    case 5:
      v6 = 25655;
      break;
    case 6:
      v5 = 0xE300000000000000;
      v6 = 6567986;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 6712937;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_53(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_2315133DC()
{
  sub_231585F64();
  sub_231513F60();
  sub_231586354();
  sub_231586354();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_231586C44();
  }

  return v1 & 1;
}

Swift::Bool __swiftcall INIntent.isRequestByHandleType()()
{
  v3 = v0;
  v4 = objc_opt_self();
  v5 = OUTLINED_FUNCTION_4_16(v4);
  if (v5)
  {
    v6 = v5;
    v7 = v3;
    v8 = sub_231513F08(v6, &selRef_recipients);
    if (v8)
    {
      v1 = v8;
      if (sub_2314AA920(v8))
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_8_14();
        }

        else
        {
          OUTLINED_FUNCTION_6_15();
          if (!v9)
          {
            __break(1u);
            goto LABEL_71;
          }

          v10 = *(v1 + 32);
        }

        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
      }
    }

    v16 = sub_231513F08(v6, &selRef_recipients);
    if (!v16)
    {
      goto LABEL_65;
    }

    v12 = v16;
    if (!sub_2314AA920(v16))
    {
      goto LABEL_66;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_1_22();
      if (v17)
      {
        v18 = *(v12 + 32);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    OUTLINED_FUNCTION_2_20();
LABEL_25:
    OUTLINED_FUNCTION_3_19();
    v19 = [v1 personHandle];

    if (v19)
    {
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v7 = v3;
    v13 = sub_231513F08(v12, &selRef_contacts);
    if (v13)
    {
      v1 = v13;
      if (sub_2314AA920(v13))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_6_15();
          if (!v14)
          {
            __break(1u);
            goto LABEL_83;
          }

          v15 = *(v1 + 32);
          goto LABEL_16;
        }

LABEL_73:
        OUTLINED_FUNCTION_8_14();
LABEL_16:
        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v25 = sub_231513F08(v12, &selRef_contacts);
    if (!v25)
    {
      goto LABEL_65;
    }

    v21 = v25;
    if (!sub_2314AA920(v25))
    {
      goto LABEL_66;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_1_22();
    if (v26)
    {
LABEL_62:
      v36 = *(v21 + 32);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_77;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v7 = v3;
    v22 = sub_231513F08(v21, &selRef_contacts);
    if (v22)
    {
      v1 = v22;
      if (sub_2314AA920(v22))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_6_15();
          if (!v23)
          {
            __break(1u);
            goto LABEL_83;
          }

          v24 = *(v1 + 32);
          goto LABEL_33;
        }

LABEL_77:
        OUTLINED_FUNCTION_8_14();
LABEL_33:
        OUTLINED_FUNCTION_7_18();
        v1 = [v2 personHandle];

        if (v1)
        {
          v2 = [v1 type];

          if (v2 == 2)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_52;
      }
    }

LABEL_52:
    v32 = sub_231513F08(v21, &selRef_contacts);
    if (!v32)
    {
      goto LABEL_65;
    }

    v21 = v32;
    if (!sub_2314AA920(v32))
    {
      goto LABEL_66;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_1_22();
    if (v33)
    {
      goto LABEL_62;
    }

    __break(1u);
LABEL_81:
    OUTLINED_FUNCTION_8_14();
    goto LABEL_48;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_15();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    return v27;
  }

  v21 = v27;
  v7 = v3;
  v28 = sub_231513F08(v21, &selRef_contacts);
  if (!v28)
  {
LABEL_58:
    v34 = sub_231513F08(v21, &selRef_contacts);
    if (v34)
    {
      v21 = v34;
      if (sub_2314AA920(v34))
      {
        if ((v21 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (!v35)
          {
            __break(1u);
            return v27;
          }

          goto LABEL_62;
        }

LABEL_83:
        OUTLINED_FUNCTION_2_20();
LABEL_63:
        OUTLINED_FUNCTION_3_19();
        v19 = [v1 personHandle];

        if (v19)
        {
LABEL_64:
          v37 = [v19 type];

          LOBYTE(v27) = v37 == 1;
          return v27;
        }

        goto LABEL_65;
      }

LABEL_66:

      goto LABEL_67;
    }

LABEL_65:

LABEL_67:
    LOBYTE(v27) = 0;
    return v27;
  }

  v1 = v28;
  if (!sub_2314AA920(v28))
  {

    goto LABEL_58;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_6_15();
  if (!v29)
  {
    __break(1u);
    goto LABEL_83;
  }

  v30 = *(v1 + 32);
LABEL_48:
  OUTLINED_FUNCTION_7_18();
  v1 = [v2 personHandle];

  if (!v1)
  {
    goto LABEL_58;
  }

  v31 = [v1 type];

  if (v31 != 2)
  {
    goto LABEL_58;
  }

LABEL_50:

  LOBYTE(v27) = 1;
  return v27;
}

Swift::Bool __swiftcall INIntent.isRequestByContactLabel()()
{
  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_4_16(v1);
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    v5 = sub_231513F08(v3, &selRef_recipients);
    if (!v5)
    {
      goto LABEL_34;
    }

    v6 = v5;
    if (sub_2314AA920(v5))
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_2_20();
LABEL_7:
        OUTLINED_FUNCTION_3_19();
        v9 = [v3 personHandle];

        if (v9)
        {
          goto LABEL_32;
        }

LABEL_34:

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_1_22();
      if (v7)
      {
        v8 = *(v6 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_35:

    goto LABEL_36;
  }

  v10 = objc_opt_self();
  v11 = OUTLINED_FUNCTION_4_16(v10);
  if (!v11)
  {
    v16 = objc_opt_self();
    v17 = OUTLINED_FUNCTION_4_16(v16);
    if (v17)
    {
      v3 = v17;
      v4 = v0;
      v18 = sub_231513F08(v3, &selRef_contacts);
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v18;
      if (!sub_2314AA920(v18))
      {
        goto LABEL_35;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_22();
      if (v20)
      {
        v21 = *(v19 + 32);
        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
      v22 = objc_opt_self();
      v23 = OUTLINED_FUNCTION_4_16(v22);
      if (!v23)
      {
        return v23;
      }

      v3 = v23;
      v4 = v0;
      v24 = sub_231513F08(v3, &selRef_contacts);
      if (!v24)
      {
        goto LABEL_34;
      }

      v25 = v24;
      if (!sub_2314AA920(v24))
      {
        goto LABEL_35;
      }

      if ((v25 & 0xC000000000000001) == 0)
      {
        OUTLINED_FUNCTION_1_22();
        if (!v26)
        {
          __break(1u);
          return v23;
        }

        v27 = *(v25 + 32);
LABEL_31:
        OUTLINED_FUNCTION_3_19();
        v9 = [v3 personHandle];

        if (v9)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

    OUTLINED_FUNCTION_2_20();
    goto LABEL_31;
  }

  v3 = v11;
  v4 = v0;
  v12 = sub_231513F08(v3, &selRef_contacts);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = v12;
  if (!sub_2314AA920(v12))
  {
    goto LABEL_35;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_1_22();
    if (v14)
    {
      v15 = *(v13 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_2_20();
LABEL_23:
    OUTLINED_FUNCTION_3_19();
    v9 = [v3 personHandle];

    if (!v9)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_40:
  OUTLINED_FUNCTION_2_20();
LABEL_15:
  OUTLINED_FUNCTION_3_19();
  v9 = [v3 personHandle];

  if (!v9)
  {
    goto LABEL_34;
  }

LABEL_32:
  v28 = [v9 label];

  if (!v28)
  {
LABEL_36:
    LOBYTE(v23) = 0;
    return v23;
  }

  LOBYTE(v23) = 1;
  return v23;
}

Swift::Bool __swiftcall INIntent.isRequestByPhoneNumber()()
{
  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_4_16(v1);
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    v5 = sub_231513F08(v3, &selRef_recipients);
    if (v5)
    {
      v6 = v5;
      if (sub_2314AA920(v5))
      {
        if ((v6 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (v7)
          {
LABEL_24:
            v20 = *(v6 + 32);
            goto LABEL_25;
          }

          __break(1u);
        }

        goto LABEL_37;
      }

LABEL_28:

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_4_16(v8);
  if (!v9)
  {
    v12 = objc_opt_self();
    v13 = OUTLINED_FUNCTION_4_16(v12);
    if (!v13)
    {
      v16 = objc_opt_self();
      v17 = OUTLINED_FUNCTION_4_16(v16);
      if (!v17)
      {
        return v17;
      }

      v3 = v17;
      v4 = v0;
      v18 = sub_231513F08(v3, &selRef_contacts);
      if (!v18)
      {
        goto LABEL_27;
      }

      v6 = v18;
      if (sub_2314AA920(v18))
      {
        if ((v6 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (!v19)
          {
            __break(1u);
            return v17;
          }

          goto LABEL_24;
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

    v3 = v13;
    v4 = v0;
    v14 = sub_231513F08(v3, &selRef_contacts);
    if (v14)
    {
      v6 = v14;
      if (sub_2314AA920(v14))
      {
        if ((v6 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_1_22();
          if (v15)
          {
            goto LABEL_24;
          }

          __break(1u);
        }

        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_27:

LABEL_29:
    LOBYTE(v17) = 0;
    return v17;
  }

  v3 = v9;
  v4 = v0;
  v10 = sub_231513F08(v3, &selRef_contacts);
  if (!v10)
  {
    goto LABEL_27;
  }

  v6 = v10;
  if (!sub_2314AA920(v10))
  {
    goto LABEL_28;
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_1_22();
    if (v11)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

LABEL_37:
  OUTLINED_FUNCTION_2_20();
LABEL_25:
  OUTLINED_FUNCTION_3_19();
  v21 = [v3 personHandle];

  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = [v21 type];

  LOBYTE(v17) = v22 == 2;
  return v17;
}

unint64_t sub_231513EE4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231513F08(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_231513FB8();
  OUTLINED_FUNCTION_5_15();
  v4 = sub_231586384();

  return v4;
}

unint64_t sub_231513F60()
{
  result = qword_27DD5BA18;
  if (!qword_27DD5BA18)
  {
    sub_231585F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BA18);
  }

  return result;
}

unint64_t sub_231513FB8()
{
  result = qword_27DD5BA20;
  if (!qword_27DD5BA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5BA20);
  }

  return result;
}

uint64_t sub_231514004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231515024;
  *(v8 + 24) = v7;
  v11[4] = sub_2315116D4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231514320;
  v11[3] = &block_descriptor_10;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231514164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_4_17();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231515050;
  *(v8 + 24) = v7;
  v11[4] = sub_231515048;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231514320;
  v11[3] = &block_descriptor_17;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

double sub_2315142C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  return result;
}

void *sub_231514348()
{
  type metadata accessor for InteractionStoreFactory();
  OUTLINED_FUNCTION_4_17();
  v0 = swift_allocObject();
  result = sub_2315143F8();
  qword_280D72208 = v0;
  return result;
}

uint64_t sub_231514380@<X0>(uint64_t a1@<X8>)
{
  sub_231585D24();
  v2 = sub_231585D34();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

void *sub_2315143F8()
{
  v1 = v0;
  sub_231585D34();
  v2 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BA28, &qword_23158B9D0);
  swift_allocObject();
  v1[2] = sub_23151FC94(v2, 0xD000000000000012, 0x8000000231591330);
  v1[3] = sub_231514380;
  v1[4] = 0;
  return v1;
}

uint64_t sub_2315144B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_231585B34();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_231514674(a1, v12 - v11);
  v14 = sub_2314CD8A4();
  v15 = sub_2315147E0();
  sub_231566760(v15, v16, v14, v6);

  v17 = sub_231585D34();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v17);
  sub_2314B5064(v6);
  if (a1 == 1)
  {
    sub_231514930(v13);
  }

  v18 = sub_2314CD8A4();
  v19 = sub_2315147E0();
  sub_231566760(v19, v20, v18, a2);

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_231514674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231585B34();
  OUTLINED_FUNCTION_4_1();
  v17 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  if (v13)
  {
    *v9 = v12;
    v9[1] = v13;
    (*(v17 + 104))(v9, *MEMORY[0x277D5FF38], v4);
    return (*(v17 + 32))(a2, v9, v4);
  }

  else
  {
    v15 = *MEMORY[0x277D5FF40];
    v16 = *(v17 + 104);

    return v16(a2, v15, v4);
  }
}

uint64_t sub_2315147E0()
{
  v1 = v0;
  v2 = sub_231585B34();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D5FF38])
  {
    (*(v4 + 96))(v8, v2);
    return *v8;
  }

  else if (v9 == *MEMORY[0x277D5FF40])
  {
    return 0;
  }

  else
  {
    (*(v4 + 8))(v8, v2);
    return 0x454E494645444E55;
  }
}

uint64_t sub_231514930(uint64_t a1)
{
  v52 = a1;
  v48 = sub_231585B34();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v45 - v9;
  v11 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v50 = v15 - v14;
  v16 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1();
  v49 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v19 = qword_280D72240;
  sub_231585FC4();
  sub_2315866D4();
  v43 = MEMORY[0x277D84F90];
  v42 = 2;
  v41 = 19;
  OUTLINED_FUNCTION_3_20();
  sub_231585FA4();
  v20 = *(v1 + 24);

  v20(v52);

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2314B5064(v10);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_231496000, v22, v23, "InteractionStoreFactory: Error initializing interactionStore", v24, 2u);
      MEMORY[0x231931280](v24, -1, -1);
    }

    v25 = OUTLINED_FUNCTION_5_16();
  }

  else
  {
    (*(v51 + 32))(v50, v10, v11);
    sub_2315866C4();
    OUTLINED_FUNCTION_3_20();
    sub_231585FB4();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v28 = sub_231585FF4();
    __swift_project_value_buffer(v28, qword_280D72248);
    v29 = v48;
    (*(v3 + 16))(v7, v52, v48);
    v30 = sub_231585FE4();
    v31 = sub_2315865D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v16;
      v34 = v33;
      v53 = v33;
      *v32 = 136315138;
      sub_2315147E0();
      v45[1] = v1;
      v46 = v11;
      (*(v3 + 8))(v7, v48);
      v35 = sub_2314A22E8();
      v11 = v46;

      *(v32 + 4) = v35;
      _os_log_impl(&dword_231496000, v30, v31, "InteractionStoreFactory: created InteractionStore for [%s]", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x231931280](v34, -1, -1);
      MEMORY[0x231931280](v32, -1, -1);
    }

    else
    {

      v36 = (*(v3 + 8))(v7, v29);
    }

    MEMORY[0x28223BE20](v36);
    v37 = v50;
    v43 = v52;
    v44 = v50;
    sub_231514004(sub_23151501C, &v41);
    v38 = OUTLINED_FUNCTION_5_16();
    v39(v38);
    v27 = *(v51 + 8);
    v25 = v37;
    v26 = v11;
  }

  return v27(v25, v26);
}

uint64_t sub_231514EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_2315147E0();
  v7 = sub_231585D34();
  (*(*(v7 - 8) + 16))(v6, a3, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_23155C5E8();
}

uint64_t sub_231514FA0()
{

  return v0;
}

uint64_t sub_231514FC8()
{
  sub_231514FA0();
  OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_231515068()
{
  result = sub_231586964();
  qword_280D6F178 = result;
  qword_280D6F180 = v1;
  return result;
}

uint64_t *sub_23151509C()
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_280D6F170);
  }

  return &qword_280D6F178;
}

uint64_t static IsCarPlayConnectedSignal.signalName.getter()
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_280D6F170);
  }

  swift_beginAccess();
  v0 = qword_280D6F178;

  return v0;
}

uint64_t static IsCarPlayConnectedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_280D6F170);
  }

  swift_beginAccess();
  qword_280D6F178 = a1;
  qword_280D6F180 = a2;
}

uint64_t (*static IsCarPlayConnectedSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_280D6F170);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231515244@<D0>(void *a1@<X8>)
{
  sub_23151509C();
  swift_beginAccess();
  v2 = qword_280D6F180;
  *a1 = qword_280D6F178;
  a1[1] = v2;

  return result;
}

uint64_t sub_231515298(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151509C();
  swift_beginAccess();
  qword_280D6F178 = v2;
  qword_280D6F180 = v1;
}

uint64_t IsCarPlayConnectedSignal.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

id sub_23151532C@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = [result starting];
    v3 = result;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static IsCarPlayConnectedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    OUTLINED_FUNCTION_0_54(&qword_280D6F170);
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t static IsCarPlayConnectedSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231515564();
}

uint64_t sub_231515508(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231515564();
}

uint64_t sub_231515564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315156B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2315156F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IsFirstPartyAppSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2315157A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = sub_2315860F4();
  v6 = 0;
  v24 = *(v4 + 16);
  v7 = (v4 + 40);
  while (v24 != v6)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_231586C84();
      __break(1u);
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;

    if (sub_231586304())
    {
      v10 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_55();
      v10 = sub_231586304() & 1;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_23149C888(v9, v8);
    if (__OFADD__(v5[2], (v12 & 1) == 0))
    {
      goto LABEL_20;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v15 = sub_23149C888(v9, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v13 = v15;
    }

    if (v14)
    {
      *(v5[7] + 8 * v13) = v10;
    }

    else
    {
      v5[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v5[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v8;
      *(v5[7] + 8 * v13) = v10;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v5[2] = v20;
    }

    v7 += 2;
    ++v6;
  }

  *a2 = 0xD000000000000016;
  a2[1] = 0x80000002315917D0;
  a2[2] = &unk_2846102C8;
  a2[3] = v5;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static IsFirstPartyAppSignal.isFirstParty(bundleId:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (sub_231586304())
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_55();

  return sub_231586304();
}

uint64_t static IsFirstPartyAppSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231515CD4(v3);
}

uint64_t static IsFirstPartyAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231515DD0(v3, v1, v2);
}

uint64_t static IsFirstPartyAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612168);
  *a1 = result;
  return result;
}

uint64_t IsFirstPartyAppSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v6 = *(v1 + 24);
  v7 = 1;

  a1(&v6);
  v3 = v6;
  v4 = v7;

  return sub_2314A5EEC(v3, v4);
}

uint64_t sub_231515BB4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231515DD0(v3, v1, v2);
}

uint64_t sub_231515C1C()
{
  v4[3] = &type metadata for NoParameters;
  v4[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v4, v3);
  *(v0 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v0 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_2315157A4(v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v0;
}

uint64_t sub_231515CD4(_OWORD *a1)
{
  v9[3] = &type metadata for SignalComputationContext;
  v9[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v9[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v9, v8);
  *(v4 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v4 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, &v7);
  sub_2315157A4(v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4;
}

uint64_t sub_231515DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v10, v9);
  *(v6 + 56) = &type metadata for IsFirstPartyAppSignal;
  *(v6 + 64) = &protocol witness table for IsFirstPartyAppSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_2315157A4(v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

uint64_t sub_231515EDC()
{
  result = sub_231586964();
  qword_280D6F7A0 = result;
  qword_280D6F7A8 = v1;
  return result;
}

uint64_t *sub_231515F10()
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_280D6F798);
  }

  return &qword_280D6F7A0;
}

uint64_t static IsScreenLockedSignal.signalName.getter()
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_280D6F798);
  }

  swift_beginAccess();
  v0 = qword_280D6F7A0;

  return v0;
}

uint64_t static IsScreenLockedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_280D6F798);
  }

  swift_beginAccess();
  qword_280D6F7A0 = a1;
  qword_280D6F7A8 = a2;
}

uint64_t (*static IsScreenLockedSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_280D6F798);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_2315160B8@<D0>(void *a1@<X8>)
{
  sub_231515F10();
  swift_beginAccess();
  v2 = qword_280D6F7A8;
  *a1 = qword_280D6F7A0;
  a1[1] = v2;

  return result;
}

uint64_t sub_23151610C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231515F10();
  swift_beginAccess();
  qword_280D6F7A0 = v2;
  qword_280D6F7A8 = v1;
}

uint64_t IsScreenLockedSignal.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

id sub_2315161B4@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = sub_2314D6B64(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t static IsScreenLockedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_280D6F798);
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610848;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t static IsScreenLockedSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231516590();
}

void sub_2315163A4(uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = [v3 eventBody]) != 0)
  {
    v5 = v4;
    sub_2314D6B64(&v11);

    swift_unknownObjectRelease();
    v6 = v12;
    *a2 = v11;
    *(a2 + 8) = v6;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v7 = sub_231585FF4();
    __swift_project_value_buffer(v7, qword_280D72248);
    v8 = sub_231585FE4();
    v9 = sub_2315865E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_231496000, v8, v9, "IsScreenLockedSignal: ignoring event of wrong type", v10, 2u);
      MEMORY[0x231931280](v10, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = -1;
  }
}

uint64_t sub_23151651C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231516590();
}

uint64_t sub_231516590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610270;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t static LastActionDisambiguationRecencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA40 = a1;
  *(&xmmword_27DD5BA40 + 1) = a2;
  byte_27DD5BA50 = a3;
  return result;
}

double sub_2315167DC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA50;
  result = *&xmmword_27DD5BA40;
  *a1 = xmmword_27DD5BA40;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231516830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA40 = v1;
  *(&xmmword_27DD5BA40 + 1) = v2;
  byte_27DD5BA50 = v3;
  return result;
}

uint64_t sub_231516888()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EC78 = result;
  qword_280D6EC80 = v1;
  return result;
}

uint64_t *sub_2315168E0()
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
  }

  return &qword_280D6EC78;
}

uint64_t static LastActionDisambiguationRecencySignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6EC70 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6EC78;

  return v1;
}

uint64_t static LastActionDisambiguationRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
  }

  swift_beginAccess();
  qword_280D6EC78 = a1;
  qword_280D6EC80 = a2;
}

uint64_t (*static LastActionDisambiguationRecencySignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6EC70 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_231516A68@<D0>(void *a1@<X8>)
{
  sub_2315168E0();
  swift_beginAccess();
  v2 = qword_280D6EC80;
  *a1 = qword_280D6EC78;
  a1[1] = v2;

  return result;
}

uint64_t sub_231516ABC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315168E0();
  swift_beginAccess();
  qword_280D6EC78 = v2;
  qword_280D6EC80 = v1;
}

uint64_t LastActionDisambiguationRecencySignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LastActionDisambiguationRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231517404(v3, v1, v2);
}

void LastActionDisambiguationRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for LastActionDisambiguationRecencySignal(0) + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(v4, v7, v8);
      v41 = v40;

      *a2 = v41;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v7(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *a2 = v15;
      goto LABEL_38;
    case 3:
      v43 = a2;
      v44 = *v6;
      v42 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v18;
      v20 = v4 + 64;
      v21 = 1 << *(v4 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & *(v4 + 64);
      v24 = (v21 + 63) >> 6;
      v46 = v18 + 64;
      swift_retain_n();
      v25 = 0;
      v45 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {

        v10 = v7(v9);

        if (v10 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v10 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v27 = v25;
  do
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v25 >= v24)
    {

      LOBYTE(v5) = v42;
      a2 = v43;
      *v43 = v19;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v28 = *(v20 + 8 * v25);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v25 << 6);
    v30 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v29));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v31 = (*(v4 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v30;

    if ((v34 & 0x8000000000000000) == 0)
    {
      v36 = v44(v35);
      if (v36 < v34)
      {
        v34 = -1;
      }

      else
      {
        v34 = v36 - v34;
      }
    }

    *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v32;
    v37[1] = v33;
    *(v19[7] + 8 * v29) = v34;
    v38 = v19[2];
    v14 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v19[2] = v39;
    v4 = v45;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
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
}

uint64_t sub_231516EBC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231517404(v3, v1, v2);
}

__n128 *_s11SiriSignals37LastActionDisambiguationRecencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  v21[3] = &type metadata for NoParameters;
  v21[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v21, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_19();
    v2(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v10 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_3_21(v10, xmmword_231588340);
    v13(v12);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal(0);
    v10[3].n128_u64[1] = ActionDisambiguationRecencySignal;
    v10[4].n128_u64[0] = &protocol witness table for LastActionDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[2]);
    if (qword_280D6EC70 != -1)
    {
      OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
    }

    swift_beginAccess();
    v16 = qword_280D6EC80;
    *boxed_opaque_existential_1 = qword_280D6EC78;
    boxed_opaque_existential_1[1] = v16;
    v17 = OUTLINED_FUNCTION_1_23(*(ActionDisambiguationRecencySignal + 24));
    v2(v17);
    v18 = *(v5 + 8);

    v18(v9, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v10;
}

__n128 *sub_231517168(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10 - 8];
  v26[3] = &type metadata for SignalComputationContext;
  v26[4] = &protocol witness table for SignalComputationContext;
  v12 = swift_allocObject();
  v26[0] = v12;
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  sub_2314B5008(a1, v25);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v26, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_19();
    v3(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_21(v14, xmmword_231588340);
    v17(v16);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal(0);
    v14[3].n128_u64[1] = ActionDisambiguationRecencySignal;
    v14[4].n128_u64[0] = &protocol witness table for LastActionDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14[2]);
    if (qword_280D6EC70 != -1)
    {
      OUTLINED_FUNCTION_0_57(&qword_280D6EC70);
    }

    swift_beginAccess();
    v20 = qword_280D6EC80;
    *boxed_opaque_existential_1 = qword_280D6EC78;
    boxed_opaque_existential_1[1] = v20;
    v21 = OUTLINED_FUNCTION_1_23(*(ActionDisambiguationRecencySignal + 24));
    v3(v21);
    v22 = *(v7 + 8);

    v22(v11, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v14;
}

uint64_t sub_231517404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-v14];
  v26[3] = a2;
  v26[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v26, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v15, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_231588340;
    (*(v10 + 16))(v13, v15, v9);
    ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal(0);
    *(v17 + 56) = ActionDisambiguationRecencySignal;
    *(v17 + 64) = &protocol witness table for LastActionDisambiguationRecencySignal;
    v20 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
    if (qword_280D6EC70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_280D6EC80;
    *v20 = qword_280D6EC78;
    v20[1] = v21;
    *(v20 + ActionDisambiguationRecencySignal[6]) = &unk_2846105B8;
    v22 = (v20 + ActionDisambiguationRecencySignal[7]);
    *v22 = sub_2314E03E4;
    v22[1] = 0;
    v18(v20 + ActionDisambiguationRecencySignal[5], v13, v9);
    v23 = *(v10 + 8);

    v23(v15, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v17;
}

uint64_t type metadata accessor for LastActionDisambiguationRecencySignal(uint64_t a1)
{
  result = qword_280D6EC58;
  if (!qword_280D6EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2315177B4(uint64_t a1)
{
  sub_231585D34();
  if (v1 <= 0x3F)
  {
    sub_2314B73AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_231517868()
{
  result = sub_231586964();
  qword_27DD5BA58 = result;
  qword_27DD5BA60 = v1;
  return result;
}

uint64_t *sub_23151789C()
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_27DD5AE18);
  }

  return &qword_27DD5BA58;
}

uint64_t static ClientWorkoutSignal.signalName.getter()
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_27DD5AE18);
  }

  swift_beginAccess();
  v0 = qword_27DD5BA58;

  return v0;
}

uint64_t static ClientWorkoutSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_27DD5AE18);
  }

  swift_beginAccess();
  qword_27DD5BA58 = a1;
  qword_27DD5BA60 = a2;
}

uint64_t (*static ClientWorkoutSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_27DD5AE18);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231517A44@<D0>(void *a1@<X8>)
{
  sub_23151789C();
  swift_beginAccess();
  v2 = qword_27DD5BA60;
  *a1 = qword_27DD5BA58;
  a1[1] = v2;

  return result;
}

uint64_t sub_231517A98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151789C();
  swift_beginAccess();
  qword_27DD5BA58 = v2;
  qword_27DD5BA60 = v1;
}

uint64_t ClientWorkoutSignal.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_231517B34(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    if ([v3 eventType] != 1)
    {
      v5 = [v3 eventType];

      v4 = v5 == 3;
      goto LABEL_6;
    }
  }

  v4 = 1;
LABEL_6:
  *a2 = v4;
  *(a2 + 8) = 0;
}

uint64_t static ClientWorkoutSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_27DD5AE18);
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_284610818;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t static ClientWorkoutSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231517DB0();
}

uint64_t sub_231517D54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_231517DB0();
}

uint64_t sub_231517DB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846101C8;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t static LastActionDisambiguationResultSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA68 = a1;
  *(&xmmword_27DD5BA68 + 1) = a2;
  byte_27DD5BA78 = a3;
  return result;
}

double sub_231517FFC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA78;
  result = *&xmmword_27DD5BA68;
  *a1 = xmmword_27DD5BA68;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231518050(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA68 = v1;
  *(&xmmword_27DD5BA68 + 1) = v2;
  byte_27DD5BA78 = v3;
  return result;
}

uint64_t sub_2315180A8()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6ED28 = result;
  qword_280D6ED30 = v1;
  return result;
}

uint64_t *sub_231518100()
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
  }

  return &qword_280D6ED28;
}

uint64_t static LastActionDisambiguationResultSignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6ED20 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6ED28;

  return v1;
}

uint64_t static LastActionDisambiguationResultSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
  }

  swift_beginAccess();
  qword_280D6ED28 = a1;
  qword_280D6ED30 = a2;
}

uint64_t (*static LastActionDisambiguationResultSignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6ED20 != -1)
  {
    OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_231518288@<D0>(void *a1@<X8>)
{
  sub_231518100();
  swift_beginAccess();
  v2 = qword_280D6ED30;
  *a1 = qword_280D6ED28;
  a1[1] = v2;

  return result;
}

uint64_t sub_2315182DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231518100();
  swift_beginAccess();
  qword_280D6ED28 = v2;
  qword_280D6ED30 = v1;
}

uint64_t LastActionDisambiguationResultSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LastActionDisambiguationResultSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151889C(v3, v1, v2);
}

uint64_t sub_2315183BC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151889C(v3, v1, v2);
}

uint64_t _s11SiriSignals36LastActionDisambiguationResultSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v16, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_2314B5064(v2);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_17();
    v9(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal(0);
    *(v7 + 56) = ActionDisambiguationResultSignal;
    *(v7 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
    if (qword_280D6ED20 != -1)
    {
      OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
    }

    swift_beginAccess();
    v12 = OUTLINED_FUNCTION_2_21();
    v13(v12);
    *(boxed_opaque_existential_1 + *(ActionDisambiguationResultSignal + 24)) = &unk_284610710;
    v14 = *(v5 + 8);

    v14(v1, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v7;
}

uint64_t sub_231518634(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_19();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v21[0] = v9;
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v21, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v1) == 1)
  {
    sub_2314B5064(v3);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_17();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal(0);
    *(v11 + 56) = ActionDisambiguationResultSignal;
    *(v11 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    if (qword_280D6ED20 != -1)
    {
      OUTLINED_FUNCTION_0_59(&qword_280D6ED20);
    }

    swift_beginAccess();
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    *(boxed_opaque_existential_1 + *(ActionDisambiguationResultSignal + 24)) = &unk_2846100F8;
    v18 = *(v7 + 8);

    v18(v2, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v11;
}

uint64_t sub_23151889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_231588340;
    ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal(0);
    *(v14 + 56) = ActionDisambiguationResultSignal;
    *(v14 + 64) = &protocol witness table for LastActionDisambiguationResultSignal;
    v16 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    if (qword_280D6ED20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_280D6ED30;
    *v16 = qword_280D6ED28;
    v16[1] = v17;
    (*(v10 + 16))(v16 + *(ActionDisambiguationResultSignal + 20), v12, v9);
    *(v16 + *(ActionDisambiguationResultSignal + 24)) = &unk_284610590;
    v18 = *(v10 + 8);

    v18(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v14;
}

uint64_t type metadata accessor for LastActionDisambiguationResultSignal(uint64_t a1)
{
  result = qword_280D6ED10;
  if (!qword_280D6ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231518BF0(uint64_t a1)
{
  sub_231585D34();
  if (v1 <= 0x3F)
  {
    sub_2314B73AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t static LastAppDisambiguationRecencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA80 = a1;
  *(&xmmword_27DD5BA80 + 1) = a2;
  byte_27DD5BA90 = a3;
  return result;
}

double sub_231518D60@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BA90;
  result = *&xmmword_27DD5BA80;
  *a1 = xmmword_27DD5BA80;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231518DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA80 = v1;
  *(&xmmword_27DD5BA80 + 1) = v2;
  byte_27DD5BA90 = v3;
  return result;
}

uint64_t sub_231518E0C()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EEA0 = result;
  qword_280D6EEA8 = v1;
  return result;
}

uint64_t *sub_231518E64()
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
  }

  return &qword_280D6EEA0;
}

uint64_t static LastAppDisambiguationRecencySignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6EE98 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6EEA0;

  return v1;
}

uint64_t static LastAppDisambiguationRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
  }

  swift_beginAccess();
  qword_280D6EEA0 = a1;
  qword_280D6EEA8 = a2;
}

uint64_t (*static LastAppDisambiguationRecencySignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6EE98 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_231518FEC@<D0>(void *a1@<X8>)
{
  sub_231518E64();
  swift_beginAccess();
  v2 = qword_280D6EEA8;
  *a1 = qword_280D6EEA0;
  a1[1] = v2;

  return result;
}

uint64_t sub_231519040(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231518E64();
  swift_beginAccess();
  qword_280D6EEA0 = v2;
  qword_280D6EEA8 = v1;
}

uint64_t LastAppDisambiguationRecencySignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LastAppDisambiguationRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231519988(v3, v1, v2);
}

void LastAppDisambiguationRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for LastAppDisambiguationRecencySignal(0) + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(v4, v7, v8);
      v41 = v40;

      *a2 = v41;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v7(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *a2 = v15;
      goto LABEL_38;
    case 3:
      v43 = a2;
      v44 = *v6;
      v42 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v18;
      v20 = v4 + 64;
      v21 = 1 << *(v4 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & *(v4 + 64);
      v24 = (v21 + 63) >> 6;
      v46 = v18 + 64;
      swift_retain_n();
      v25 = 0;
      v45 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {

        v10 = v7(v9);

        if (v10 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v10 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v27 = v25;
  do
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v25 >= v24)
    {

      LOBYTE(v5) = v42;
      a2 = v43;
      *v43 = v19;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v28 = *(v20 + 8 * v25);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v25 << 6);
    v30 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v29));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v31 = (*(v4 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v30;

    if ((v34 & 0x8000000000000000) == 0)
    {
      v36 = v44(v35);
      if (v36 < v34)
      {
        v34 = -1;
      }

      else
      {
        v34 = v36 - v34;
      }
    }

    *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v32;
    v37[1] = v33;
    *(v19[7] + 8 * v29) = v34;
    v38 = v19[2];
    v14 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v19[2] = v39;
    v4 = v45;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
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
}

uint64_t sub_231519440(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231519988(v3, v1, v2);
}

__n128 *_s11SiriSignals34LastAppDisambiguationRecencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  v21[3] = &type metadata for NoParameters;
  v21[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v21, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_19();
    v2(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v10 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_3_21(v10, xmmword_231588340);
    v13(v12);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal(0);
    v10[3].n128_u64[1] = AppDisambiguationRecencySignal;
    v10[4].n128_u64[0] = &protocol witness table for LastAppDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[2]);
    if (qword_280D6EE98 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
    }

    swift_beginAccess();
    v16 = qword_280D6EEA8;
    *boxed_opaque_existential_1 = qword_280D6EEA0;
    boxed_opaque_existential_1[1] = v16;
    v17 = OUTLINED_FUNCTION_1_23(*(AppDisambiguationRecencySignal + 24));
    v2(v17);
    v18 = *(v5 + 8);

    v18(v9, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v10;
}

__n128 *sub_2315196EC(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_18();
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10 - 8];
  v26[3] = &type metadata for SignalComputationContext;
  v26[4] = &protocol witness table for SignalComputationContext;
  v12 = swift_allocObject();
  v26[0] = v12;
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  sub_2314B5008(a1, v25);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v26, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_19();
    v3(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_21(v14, xmmword_231588340);
    v17(v16);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal(0);
    v14[3].n128_u64[1] = AppDisambiguationRecencySignal;
    v14[4].n128_u64[0] = &protocol witness table for LastAppDisambiguationRecencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14[2]);
    if (qword_280D6EE98 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_280D6EE98);
    }

    swift_beginAccess();
    v20 = qword_280D6EEA8;
    *boxed_opaque_existential_1 = qword_280D6EEA0;
    boxed_opaque_existential_1[1] = v20;
    v21 = OUTLINED_FUNCTION_1_23(*(AppDisambiguationRecencySignal + 24));
    v3(v21);
    v22 = *(v7 + 8);

    v22(v11, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v14;
}

uint64_t sub_231519988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-v14];
  v26[3] = a2;
  v26[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v26, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v15, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_231588340;
    (*(v10 + 16))(v13, v15, v9);
    AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal(0);
    *(v17 + 56) = AppDisambiguationRecencySignal;
    *(v17 + 64) = &protocol witness table for LastAppDisambiguationRecencySignal;
    v20 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
    if (qword_280D6EE98 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_280D6EEA8;
    *v20 = qword_280D6EEA0;
    v20[1] = v21;
    *(v20 + AppDisambiguationRecencySignal[6]) = &unk_284610568;
    v22 = (v20 + AppDisambiguationRecencySignal[7]);
    *v22 = sub_2314E03E4;
    v22[1] = 0;
    v18(v20 + AppDisambiguationRecencySignal[5], v13, v9);
    v23 = *(v10 + 8);

    v23(v15, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v17;
}

uint64_t type metadata accessor for LastAppDisambiguationRecencySignal(uint64_t a1)
{
  result = qword_280D6EE88;
  if (!qword_280D6EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static LastAppDisambiguationResultSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BA98 = a1;
  *(&xmmword_27DD5BA98 + 1) = a2;
  byte_27DD5BAA8 = a3;
  return result;
}

double sub_231519E14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BAA8;
  result = *&xmmword_27DD5BA98;
  *a1 = xmmword_27DD5BA98;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231519E68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BA98 = v1;
  *(&xmmword_27DD5BA98 + 1) = v2;
  byte_27DD5BAA8 = v3;
  return result;
}

uint64_t sub_231519EC0()
{
  swift_beginAccess();
  result = sub_231586964();
  qword_280D6EF58 = result;
  qword_280D6EF60 = v1;
  return result;
}

uint64_t *sub_231519F18()
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
  }

  return &qword_280D6EF58;
}

uint64_t static LastAppDisambiguationResultSignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6EF50 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6EF58;

  return v1;
}

uint64_t static LastAppDisambiguationResultSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
  }

  swift_beginAccess();
  qword_280D6EF58 = a1;
  qword_280D6EF60 = a2;
}

uint64_t (*static LastAppDisambiguationResultSignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6EF50 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_23151A0A0@<D0>(void *a1@<X8>)
{
  sub_231519F18();
  swift_beginAccess();
  v2 = qword_280D6EF60;
  *a1 = qword_280D6EF58;
  a1[1] = v2;

  return result;
}

uint64_t sub_23151A0F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231519F18();
  swift_beginAccess();
  qword_280D6EF58 = v2;
  qword_280D6EF60 = v1;
}

uint64_t LastAppDisambiguationResultSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LastAppDisambiguationResultSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151A6B4(v3, v1, v2);
}

uint64_t sub_23151A1D4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23151A6B4(v3, v1, v2);
}

uint64_t _s11SiriSignals33LastAppDisambiguationResultSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_19();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v16, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_2314B5064(v2);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_17();
    v9(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal(0);
    *(v7 + 56) = AppDisambiguationResultSignal;
    *(v7 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
    if (qword_280D6EF50 != -1)
    {
      OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
    }

    swift_beginAccess();
    v12 = OUTLINED_FUNCTION_2_21();
    v13(v12);
    *(boxed_opaque_existential_1 + *(AppDisambiguationResultSignal + 24)) = &unk_284610760;
    v14 = *(v5 + 8);

    v14(v1, v0);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v7;
}

uint64_t sub_23151A44C(_OWORD *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_19();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v21[0] = v9;
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v21, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v1) == 1)
  {
    sub_2314B5064(v3);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_17();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal(0);
    *(v11 + 56) = AppDisambiguationResultSignal;
    *(v11 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    if (qword_280D6EF50 != -1)
    {
      OUTLINED_FUNCTION_0_61(&qword_280D6EF50);
    }

    swift_beginAccess();
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    *(boxed_opaque_existential_1 + *(AppDisambiguationResultSignal + 24)) = &unk_284610148;
    v18 = *(v7 + 8);

    v18(v2, v1);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v11;
}

uint64_t sub_23151A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_231588340;
    AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal(0);
    *(v14 + 56) = AppDisambiguationResultSignal;
    *(v14 + 64) = &protocol witness table for LastAppDisambiguationResultSignal;
    v16 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    if (qword_280D6EF50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_280D6EF60;
    *v16 = qword_280D6EF58;
    v16[1] = v17;
    (*(v10 + 16))(v16 + *(AppDisambiguationResultSignal + 20), v12, v9);
    *(v16 + *(AppDisambiguationResultSignal + 24)) = &unk_284610518;
    v18 = *(v10 + 8);

    v18(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v14;
}

uint64_t type metadata accessor for LastAppDisambiguationResultSignal(uint64_t a1)
{
  result = qword_280D6EF38;
  if (!qword_280D6EF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23151AA6C()
{
  result = sub_231586964();
  qword_280D6D120 = result;
  unk_280D6D128 = v1;
  return result;
}

uint64_t static LastNowPlayingAtSignal.signalName.getter()
{
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6D120;

  return v0;
}

uint64_t LastNowPlayingAtSignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23151AB38()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[10];
    v5 = v0[2];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v5;
  }

  else
  {
    v3 = v0[2];
  }

  return v3;
}

double sub_23151ABD0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static LastNowPlayingAtSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v2 = swift_allocObject();
  v3 = sub_23151B688(v2);
  *(v0 + 56) = NowPlayingAtSignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingAtSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151B4F8(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingAtSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151B76C(v8, v4);
  *(v2 + 56) = NowPlayingAtSignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingAtSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612258);
  *a1 = result;
  return result;
}

uint64_t sub_23151ADB8(uint64_t (*a1)(uint64_t *))
{

  v2 = sub_2314CE684();

  if (v2)
  {
    v4 = v2;
    v5 = 1;
    a1(&v4);
    return sub_2314A5EEC(v4, v5);
  }

  else
  {
    v4 = -1;
    v5 = 0;
    return a1(&v4);
  }
}

void sub_23151AE6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23151AEC0(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v30 = *a2;
  LOBYTE(v31) = v4;
  swift_unknownObjectRetain();
  sub_2315074D0(v30, v4);
  sub_2314D6BA0(&v30, v29);
  v5 = v29[0];
  if (!v29[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231496000, v20, v21, "LastNowPlayingAtSignal: Invalid input", v22, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_17;
  }

  v7 = v29[1];
  v6 = v29[2];
  v9 = v29[3];
  v8 = v29[4];
  if ([v29[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    v25 = sub_2315865D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_231496000, v24, v25, "LastNowPlayingAtSignal: Ignore non-start events", v26, 2u);
      OUTLINED_FUNCTION_10();
    }

    v30 = v7;
    v31 = v6;
    sub_2315074E4(&v30);
    v32 = v8;
    sub_231507538(&v32);
LABEL_17:
    v11 = 0;
    v27 = -1;
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v8;
  sub_23157562C(v9, v7, v6, isUniquelyReferenced_nonNull_native);
  v11 = v30;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v12 = sub_231585FF4();
  __swift_project_value_buffer(v12, qword_280D72248);

  v13 = v5;

  v14 = sub_231585FE4();
  v15 = sub_2315865D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315394;

    sub_2315860E4();
    v28 = v13;

    v17 = sub_2314A22E8();

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;

    sub_2315860E4();

    v18 = sub_2314A22E8();

    *(v16 + 14) = v18;
    _os_log_impl(&dword_231496000, v14, v15, "LastNowPlayingAtSignal: updated %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v27 = 1;
LABEL_20:
  *a3 = v11;
  *(a3 + 8) = v27;
}

void *LastNowPlayingAtSignal.deinit()
{

  return v0;
}

uint64_t LastNowPlayingAtSignal.__deallocating_deinit()
{
  LastNowPlayingAtSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_23151B408(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151B4F8(v4, v1, v2, v3);
}

uint64_t sub_23151B4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  NowPlayingAtSignal = type metadata accessor for LastNowPlayingAtSignal();
  v15 = swift_allocObject();
  (v12)(v9, v11, a3);
  v16 = sub_23151B99C(v9, v15, a3, a4);
  *(v13 + 56) = NowPlayingAtSignal;
  *(v13 + 64) = &protocol witness table for LastNowPlayingAtSignal;
  *(v13 + 32) = v16;
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_23151B688(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = (a1 + 80);
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v3 = unk_280D6D128;
  *(a1 + 16) = qword_280D6D120;
  *(a1 + 24) = v3;
  *v2 = 0;
  v2[1] = 0;

  type metadata accessor for BiomeQueriesNowPlaying(0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v4);
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return a1;
}

uint64_t sub_23151B76C(uint64_t *a1, uint64_t a2)
{
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v4 = (a2 + 80);
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v5 = unk_280D6D128;
  *(a2 + 16) = qword_280D6D120;
  *(a2 + 24) = v5;
  v11 = *(a1 + 3);
  *v4 = v11;

  sub_23151B92C(&v11, &v10);

  v6 = *a1;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v7 = swift_allocObject();

  *(a2 + 32) = sub_231528564(v8, sub_23149A718, 0, v7);

  sub_2314C1D18(a1);
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  return a2;
}

uint64_t sub_23151B92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23151B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (qword_280D6D118 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6D128;
  *(a2 + 16) = qword_280D6D120;
  *(a2 + 24) = v10;
  v11 = *(a4 + 16);

  *(a2 + 80) = v11(a3, a4);
  *(a2 + 88) = v12;

  v13 = *(a4 + 8);
  v14 = v13(a3, a4);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v15 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v14, sub_23149A718, 0, v15);
  *(a2 + 40) = v13(a3, a4);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  (*(v7 + 8))(v9, a3);
  return a2;
}

uint64_t sub_23151BB90()
{
  result = sub_231586964();
  qword_280D6F148 = result;
  unk_280D6F150 = v1;
  return result;
}

uint64_t static LastNowPlayingRecencySignal.signalName.getter()
{
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F148;

  return v0;
}

uint64_t LastNowPlayingRecencySignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23151BC5C()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[12];
    v5 = v0[2];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v5;
  }

  else
  {
    v3 = v0[2];
  }

  return v3;
}

uint64_t static LastNowPlayingRecencySignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v2 = swift_allocObject();
  v3 = sub_23151CA4C(sub_2314E03E4, 0, v2);
  *(v0 + 56) = NowPlayingRecencySignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingRecencySignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151C8A4(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151CB44(v8, sub_2314E03E4, 0, v4);
  *(v2 + 56) = NowPlayingRecencySignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612280);
  *a1 = result;
  return result;
}

uint64_t sub_23151BECC(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 32);

  sub_2314CE684();
  OUTLINED_FUNCTION_6_3();

  if (v3)
  {
    v5 = v3;
    v6 = 1;
    a1(&v5);
    return sub_2314A5EEC(v5, v6);
  }

  else
  {
    v5 = -1;
    v6 = 0;
    return a1(&v5);
  }
}

void sub_23151BF7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = a2;
  switch(v4)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(*&v3, v5, v6);
      OUTLINED_FUNCTION_6_3();

      *v7 = v2;
      goto LABEL_38;
    case 2:
      v9 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v11 ^ v12 | v10))
      {
        goto LABEL_44;
      }

      if (v9 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v9 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v13 = v9;
      if ((v9 & 0x8000000000000000) == 0)
      {

        v5(v14);
        OUTLINED_FUNCTION_6_3();

        if (v6 < v13)
        {
          v13 = -1;
        }

        else
        {
          v13 = v6 - v13;
        }
      }

      *v7 = v13;
      goto LABEL_38;
    case 3:
      v39 = *(v2 + 80);
      v37 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v15 = sub_231586AC4();
      v16 = v15;
      v17 = *&v3 + 64;
      v18 = 1 << *(*&v3 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      i = v19 & *(*&v3 + 64);
      v21 = (v18 + 63) >> 6;
      v41 = v15 + 64;
      swift_retain_n();
      v22 = 0;
      v40 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {

        v5(v8);
        OUTLINED_FUNCTION_6_3();

        if (v6 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v6 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v24 = v22;
  do
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v22 >= v21)
    {

      v4 = v37;
      v7 = a2;
      *a2 = v16;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v25 = *(v17 + 8 * v22);
    ++v24;
  }

  while (!v25);
  v23 = __clz(__rbit64(v25));
  for (i = (v25 - 1) & v25; ; i &= i - 1)
  {
    v26 = v23 | (v22 << 6);
    v27 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v26));
    if (!(v11 ^ v12 | v10))
    {
      break;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v28 = (*(*&v3 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v27;

    if ((v31 & 0x8000000000000000) == 0)
    {
      v33 = v39(v32);
      if (v33 < v31)
      {
        v31 = -1;
      }

      else
      {
        v31 = v33 - v31;
      }
    }

    *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v34 = (v16[6] + 16 * v26);
    *v34 = v29;
    v34[1] = v30;
    *(v16[7] + 8 * v26) = v31;
    v35 = v16[2];
    v12 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v12)
    {
      goto LABEL_43;
    }

    v16[2] = v36;
    v3 = v40;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v23 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
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
}

void sub_23151C27C(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v30 = *a2;
  LOBYTE(v31) = v4;
  swift_unknownObjectRetain();
  sub_2315074D0(v30, v4);
  sub_2314D6BA0(&v30, v29);
  v5 = v29[0];
  if (!v29[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231496000, v20, v21, "LastNowPlayingRecencySignal: Invalid input", v22, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_17;
  }

  v7 = v29[1];
  v6 = v29[2];
  v9 = v29[3];
  v8 = v29[4];
  if ([v29[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    v25 = sub_2315865D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_231496000, v24, v25, "LastNowPlayingRecencySignal: Ignore non-start events", v26, 2u);
      OUTLINED_FUNCTION_10();
    }

    v30 = v7;
    v31 = v6;
    sub_2315074E4(&v30);
    v32 = v8;
    sub_231507538(&v32);
LABEL_17:
    v11 = 0;
    v27 = -1;
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v8;
  sub_23157562C(v9, v7, v6, isUniquelyReferenced_nonNull_native);
  v11 = v30;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v12 = sub_231585FF4();
  __swift_project_value_buffer(v12, qword_280D72248);

  v13 = v5;

  v14 = sub_231585FE4();
  v15 = sub_2315865D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315394;

    sub_2315860E4();
    v28 = v13;

    v17 = sub_2314A22E8();

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;

    sub_2315860E4();

    v18 = sub_2314A22E8();

    *(v16 + 14) = v18;
    _os_log_impl(&dword_231496000, v14, v15, "LastNowPlayingRecencySignal: updated %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v27 = 1;
LABEL_20:
  *a3 = v11;
  *(a3 + 8) = v27;
}

void *LastNowPlayingRecencySignal.deinit()
{

  return v0;
}

uint64_t LastNowPlayingRecencySignal.__deallocating_deinit()
{
  LastNowPlayingRecencySignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_23151C7B4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151C8A4(v4, v1, v2, v3);
}

uint64_t sub_23151C8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  NowPlayingRecencySignal = type metadata accessor for LastNowPlayingRecencySignal();
  v15 = swift_allocObject();
  (v12)(v9, v11, a3);
  v16 = sub_23151CD3C(v9, sub_2314E03E4, 0, v15, a3, a4);
  *(v13 + 56) = NowPlayingRecencySignal;
  *(v13 + 64) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v13 + 32) = v16;
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_23151CA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  v6 = (a3 + 96);
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v7 = unk_280D6F150;
  *(a3 + 16) = qword_280D6F148;
  *(a3 + 24) = v7;
  *v6 = 0;
  v6[1] = 0;

  type metadata accessor for BiomeQueriesNowPlaying(0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(a3 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v8);
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = a1;
  *(a3 + 88) = a2;
  return a3;
}

uint64_t sub_23151CB44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  v8 = (a4 + 96);
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v9 = unk_280D6F150;
  *(a4 + 16) = qword_280D6F148;
  *(a4 + 24) = v9;
  v15 = *(a1 + 3);
  *v8 = v15;

  sub_23151B92C(&v15, &v14);

  v10 = *a1;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v11 = swift_allocObject();

  *(a4 + 32) = sub_231528564(v12, sub_23149A718, 0, v11);

  sub_2314C1D18(a1);
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return a4;
}

uint64_t sub_23151CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v13);
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  if (qword_280D6F140 != -1)
  {
    swift_once();
  }

  v14 = unk_280D6F150;
  *(a4 + 16) = qword_280D6F148;
  *(a4 + 24) = v14;
  v15 = *(a6 + 16);

  *(a4 + 96) = v15(a5, a6);
  *(a4 + 104) = v16;

  v17 = *(a6 + 8);
  v18 = v17(a5, a6);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v19 = swift_allocObject();
  *(a4 + 32) = sub_231528564(v18, sub_23149A718, 0, v19);
  *(a4 + 40) = v17(a5, a6);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  (*(v11 + 8))(v13, a5);
  return a4;
}

uint64_t sub_23151CF48()
{
  result = sub_231586964();
  qword_280D6F780 = result;
  unk_280D6F788 = v1;
  return result;
}

uint64_t static LastNowPlayingSignal.signalName.getter()
{
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F780;

  return v0;
}

uint64_t LastNowPlayingSignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23151D014()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v5 = v0[2];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v5;
  }

  else
  {
    v3 = v0[2];
  }

  return v3;
}

uint64_t static LastNowPlayingSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v2 = swift_allocObject();
  v3 = sub_23151E208(v2);
  *(v0 + 56) = NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151E078(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151E2EC(v8, v4);
  *(v2 + 56) = NowPlayingSignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846122A8);
  *a1 = result;
  return result;
}

uint64_t sub_23151D250(uint64_t (*a1)(uint64_t *))
{

  v2 = sub_2314CE684();

  if (v2)
  {
    v4 = v2;
    v5 = 1;
    a1(&v4);
    return sub_2314A5EEC(v4, v5);
  }

  else
  {
    v4 = -1;
    v5 = 0;
    return a1(&v4);
  }
}

void sub_23151D304(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = -1;
  if (a1[8] == 1)
  {
    v4 = *a1;
    v5 = *a1 + 64;
    v6 = 1 << *(*a1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(*a1 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
      v12 = (v6 + 63) >> 6;
      goto LABEL_12;
    }

    v14 = 0;
    v12 = (v6 + 63) >> 6;
    do
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        v13 = 0;
        v3 = -1;
        goto LABEL_61;
      }

      v15 = *(v4 + 72 + 8 * v8);
      v14 += 64;
      ++v8;
    }

    while (!v15);
    v11 = (v15 - 1) & v15;
    v10 = __clz(__rbit64(v15)) + v14;
LABEL_12:
    v16 = (*(v4 + 48) + 16 * v10);
    v17 = v16[1];
    v67 = *v16;
    v18 = *(*(v4 + 56) + 8 * v10);

    sub_2314A5168(v4, 1u);
    while (v11)
    {
LABEL_18:
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = v20 | (v9 << 6);
      v22 = *(*(v4 + 56) + 8 * v21);
      if (v18 < v22)
      {
        v23 = *(*(v4 + 48) + 16 * v21 + 8);
        v67 = *(*(v4 + 48) + 16 * v21);

        v17 = v23;
        v18 = v22;
      }
    }

    while (1)
    {
      v19 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v19 >= v12)
      {
        break;
      }

      v11 = *(v5 + 8 * v19);
      ++v9;
      if (v11)
      {
        v9 = v19;
        goto LABEL_18;
      }
    }

    if (v18 > 0)
    {
      v63 = a2;
      v3 = sub_2315860F4();
      v24 = 1 << *(v4 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v4 + 64);
      sub_2314A5168(v4, 1u);
      v27 = 0;
      v28 = (v24 + 63) >> 6;
      v65 = v4;
      v66 = v17;
      for (i = v28; v26; v4 = v65)
      {
        v29 = v27;
LABEL_28:
        v30 = (*(v4 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v26)))));
        v31 = *v30;
        v32 = v30[1];
        v33 = *v30 == v67 && v32 == v17;
        v68 = v33 || (sub_231586C44() & 1) != 0;

        swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_23149C888(v31, v32);
        if (__OFADD__(*(v3 + 16), (v35 & 1) == 0))
        {
          goto LABEL_65;
        }

        v36 = v34;
        v37 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v38 = sub_23149C888(v31, v32);
          v17 = v66;
          if ((v37 & 1) != (v39 & 1))
          {
            goto LABEL_68;
          }

          v36 = v38;
        }

        else
        {
          v17 = v66;
        }

        v26 &= v26 - 1;
        if (v37)
        {
          *(*(v3 + 56) + 8 * v36) = v68;
        }

        else
        {
          *(v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v40 = (*(v3 + 48) + 16 * v36);
          *v40 = v31;
          v40[1] = v32;
          *(*(v3 + 56) + 8 * v36) = v68;
          v41 = *(v3 + 16);
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_67;
          }

          *(v3 + 16) = v43;
        }

        v27 = v29;
        v28 = i;
      }

      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v28)
        {

          v13 = 1;
          a2 = v63;
          goto LABEL_61;
        }

        v26 = *(v5 + 8 * v29);
        ++v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
    v44 = sub_231586AC4();
    v3 = v44;
    v45 = 0;
    v46 = 1 << *(v4 + 32);
    v47 = *(v4 + 64);
    v48 = -1;
    if (v46 < 64)
    {
      v48 = ~(-1 << v46);
    }

    v49 = v48 & v47;
    v50 = (v46 + 63) >> 6;
    v51 = v44 + 64;
    if ((v48 & v47) == 0)
    {
LABEL_51:
      v53 = v45;
      while (1)
      {
        v45 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_64;
        }

        if (v45 >= v50)
        {
          v13 = 1;
          goto LABEL_61;
        }

        v54 = *(v5 + 8 * v45);
        ++v53;
        if (v54)
        {
          v52 = __clz(__rbit64(v54));
          v49 = (v54 - 1) & v54;
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
LABEL_56:
      v55 = v52 | (v45 << 6);
      v56 = (*(v4 + 48) + 16 * v55);
      v58 = *v56;
      v57 = v56[1];
      v59 = *(*(v4 + 56) + 8 * v55);
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v60 = (*(v3 + 48) + 16 * v55);
      *v60 = v58;
      v60[1] = v57;
      *(*(v3 + 56) + 8 * v55) = v59 & ~(v59 >> 63);
      v61 = *(v3 + 16);
      v42 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v42)
      {
        break;
      }

      *(v3 + 16) = v62;

      if (!v49)
      {
        goto LABEL_51;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_231586C84();
    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_61:
    *a2 = v3;
    *(a2 + 8) = v13;
  }
}

void sub_23151D80C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 72);
  v8 = *(v2 + 56);
  v9 = v5;
  v10 = *(v2 + 88);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23151D860(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  v45 = v11;
  LOBYTE(v46) = a2;
  swift_unknownObjectRetain();
  sub_2315074D0(v11, a2);
  sub_2314D6BA0(&v45, v44);
  v12 = v44[0];
  if (!v44[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_231496000, v21, v22, "LastNowPlayingSignal: Invalid input", v23, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_22;
  }

  v14 = v44[1];
  v13 = v44[2];
  v15 = v44[4];
  if ([v44[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "LastNowPlayingSignal: ignoring stop event";
    goto LABEL_20;
  }

  v16 = [v12 absoluteTimestamp];
  if (v16)
  {
    v17 = v16;
    sub_231585834();

    v18 = sub_231585884();
    v19 = 0;
  }

  else
  {
    v18 = sub_231585884();
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v19, 1, v18);
  sub_2314A0710(v8, v10);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {
    sub_2314CC1C4(v10, &qword_27DD5BF60, &qword_231587FD0);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "LastNowPlayingSignal: no timestamp";
LABEL_20:
    _os_log_impl(&dword_231496000, v25, v26, v28, v27, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

    v45 = v14;
    v46 = v13;
    sub_2315074E4(&v45);
    v47 = v15;
    sub_2314CC1C4(&v47, &qword_27DD5B2E8, &unk_23158B460);
LABEL_22:
    v30 = 0;
    v31 = -1;
    goto LABEL_23;
  }

  sub_23149C774();
  v33 = v32;
  (*(*(v18 - 8) + 8))(v10, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v15;
  sub_23157562C(v33, v14, v13, isUniquelyReferenced_nonNull_native);
  v30 = v45;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v35 = sub_231585FF4();
  __swift_project_value_buffer(v35, qword_280D72248);

  v36 = v12;

  v37 = sub_231585FE4();
  v38 = sub_2315865D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v39 = 136315394;

    sub_2315860E4();
    v43 = v36;

    v40 = sub_2314A22E8();

    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;

    sub_2315860E4();

    v41 = sub_2314A22E8();

    *(v39 + 14) = v41;
    _os_log_impl(&dword_231496000, v37, v38, "LastNowPlayingSignal: updated %s to %s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v31 = 1;
LABEL_23:
  *a3 = v30;
  *(a3 + 8) = v31;
}

void *LastNowPlayingSignal.deinit()
{

  return v0;
}

uint64_t LastNowPlayingSignal.__deallocating_deinit()
{
  LastNowPlayingSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

uint64_t sub_23151DF88(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151E078(v4, v1, v2, v3);
}

uint64_t sub_23151E078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v15 = swift_allocObject();
  (v12)(v9, v11, a3);
  v16 = sub_23151E4D0(v9, v15, a3, a4);
  *(v13 + 56) = NowPlayingSignal;
  *(v13 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v13 + 32) = v16;
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_23151E208(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v3 = unk_280D6F788;
  *(a1 + 16) = qword_280D6F780;
  *(a1 + 24) = v3;
  *v2 = 0;
  v2[1] = 0;

  type metadata accessor for BiomeQueriesNowPlaying(0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v4);
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  return a1;
}

uint64_t sub_23151E2EC(uint64_t *a1, uint64_t a2)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v4 = (a2 + 40);
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v5 = unk_280D6F788;
  *(a2 + 16) = qword_280D6F780;
  *(a2 + 24) = v5;
  v11 = *(a1 + 3);
  *v4 = v11;

  sub_23151B92C(&v11, &v10);

  v6 = *a1;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v7 = swift_allocObject();

  *(a2 + 32) = sub_231528564(v8, sub_23149A718, 0, v7);

  sub_2314C1D18(a1);
  *(a2 + 56) = v6;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return a2;
}

uint64_t sub_23151E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6F788;
  *(a2 + 16) = qword_280D6F780;
  *(a2 + 24) = v10;
  v11 = *(a4 + 16);

  *(a2 + 40) = v11(a3, a4);
  *(a2 + 48) = v12;

  v13 = *(a4 + 8);
  v14 = v13(a3, a4);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v15 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v14, sub_23149A718, 0, v15);
  *(a2 + 56) = v13(a3, a4);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  (*(v7 + 8))(v9, a3);
  return a2;
}

uint64_t sub_23151E6B0()
{
  sub_23151EDC8();
  sub_23151E708(v2);
  type metadata accessor for MeDeviceCheck();
  v0 = swift_allocObject();
  result = sub_23151E76C(v2);
  qword_280D721C8 = v0;
  return result;
}

unint64_t sub_23151E708@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D02938]) init];
  [v2 setMeDeviceUseFindMyLocate_];
  result = sub_23151EDC8();
  a1[3] = result;
  a1[4] = &off_284619668;
  *a1 = v2;
  return result;
}

uint64_t sub_23151E76C(void *a1)
{
  *(v1 + 56) = 2;
  sub_2314A2C74(a1, v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 24);

  v5(sub_23151EE0C, v1, v3, v4);
  swift_endAccess();
  sub_2314A2C74(v1 + 16, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 40))(sub_23151EA80, 0, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

void sub_23151E894(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 16), v3);
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v2 + 8))(v3, v2);
  (*(v5 + 8))(v7, v3);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);
  v10 = sub_231585FE4();
  v11 = sub_2315865D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8 & 1;
    _os_log_impl(&dword_231496000, v10, v11, "MeDeviceCheck detected whether meDevice: %{BOOL}d", v12, 8u);
    MEMORY[0x231931280](v12, -1, -1);
  }

  *(a1 + 56) = v8 & 1;
}

void sub_23151EA80()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  oslog = sub_231585FE4();
  v1 = sub_2315865D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_231496000, oslog, v1, "MeDeviceCheck activated SystemMonitor", v2, 2u);
    MEMORY[0x231931280](v2, -1, -1);
  }
}

uint64_t sub_23151EB68()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

void sub_23151EC10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23149B484;
    v4[3] = &block_descriptor_13;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setMeDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_23151ECB8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  sub_23151ED08(a1, a2);
}

void sub_23151ED08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23149B484;
    v4[3] = &block_descriptor_11;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_23151EDC8()
{
  result = qword_280D6C6A8;
  if (!qword_280D6C6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6C6A8);
  }

  return result;
}

uint64_t sub_23151EE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231586674();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_231586654();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v10 = sub_231586064();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586054();
  sub_23151FBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_23151FC30();
  sub_2315867C4();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v4);
  *(v3 + 16) = sub_2315866A4();
  *(v3 + 24) = a1;
  return v3;
}

uint64_t static MediaCategorySupportedSignal.instances(candidateAppBundleIds:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23158C0A0;
  *(v2 + 56) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 64) = &protocol witness table for MediaCategorySupportedSignal;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  *(v2 + 48) = OUTLINED_FUNCTION_2_22();
  *(v2 + 40) = 0;
  *(v2 + 32) = a1;
  *(v2 + 96) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 104) = &protocol witness table for MediaCategorySupportedSignal;
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 88) = OUTLINED_FUNCTION_2_22();
  *(v2 + 80) = 1;
  *(v2 + 72) = a1;
  *(v2 + 136) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 144) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 128) = OUTLINED_FUNCTION_2_22();
  *(v2 + 120) = 2;
  *(v2 + 112) = a1;
  *(v2 + 176) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 184) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 168) = OUTLINED_FUNCTION_2_22();
  *(v2 + 160) = 3;
  *(v2 + 152) = a1;
  *(v2 + 216) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 224) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 208) = OUTLINED_FUNCTION_2_22();
  *(v2 + 200) = 4;
  *(v2 + 192) = a1;
  *(v2 + 256) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 264) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 248) = OUTLINED_FUNCTION_2_22();
  *(v2 + 240) = 5;
  *(v2 + 232) = a1;
  return v2;
}

SiriSignals::MediaCategorySupportedSignal::MediaCategory_optional __swiftcall MediaCategorySupportedSignal.MediaCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaCategorySupportedSignal.MediaCategory.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23151F334@<X0>(unint64_t *a1@<X8>)
{
  result = MediaCategorySupportedSignal.MediaCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MediaCategorySupportedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158C0A0;
  *(v0 + 56) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 64) = &protocol witness table for MediaCategorySupportedSignal;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  OUTLINED_FUNCTION_4_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  *(v0 + 48) = OUTLINED_FUNCTION_1_24();
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 96) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 104) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 88) = OUTLINED_FUNCTION_1_24();
  *(v0 + 80) = 1;
  *(v0 + 72) = 0;
  *(v0 + 136) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 144) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 128) = OUTLINED_FUNCTION_1_24();
  *(v0 + 120) = 2;
  *(v0 + 112) = 0;
  *(v0 + 176) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 184) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 168) = OUTLINED_FUNCTION_1_24();
  *(v0 + 160) = 3;
  *(v0 + 152) = 0;
  *(v0 + 216) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 224) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 208) = OUTLINED_FUNCTION_1_24();
  *(v0 + 200) = 4;
  *(v0 + 192) = 0;
  *(v0 + 256) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 264) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 248) = OUTLINED_FUNCTION_1_24();
  *(v0 + 240) = 5;
  *(v0 + 232) = 0;
  return v0;
}

uint64_t MediaCategorySupportedSignal.init(category:candidateAppBundleIds:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  v6 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  result = sub_23151EE1C(v6, 0xD000000000000012, 0x8000000231591330);
  *(a3 + 16) = result;
  *(a3 + 8) = v5;
  *a3 = a2;
  return result;
}

uint64_t sub_23151F5E4(uint64_t (*a1)(uint64_t))
{
  qword_280D6C9A0 = MEMORY[0x277D84F90];

  return a1(1);
}

uint64_t sub_23151F640()
{
  result = sub_231586964();
  qword_280D6C990 = result;
  qword_280D6C998 = v1;
  return result;
}

uint64_t *sub_23151F674()
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_280D6C988);
  }

  return &qword_280D6C990;
}

uint64_t static MediaCategorySupportedSignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6C988 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_62(&qword_280D6C988);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6C990;

  return v1;
}

uint64_t static MediaCategorySupportedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_280D6C988);
  }

  swift_beginAccess();
  qword_280D6C990 = a1;
  qword_280D6C998 = a2;
}

uint64_t (*static MediaCategorySupportedSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_280D6C988);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23151F80C@<D0>(void *a1@<X8>)
{
  sub_23151F674();
  swift_beginAccess();
  v2 = qword_280D6C998;
  *a1 = qword_280D6C990;
  a1[1] = v2;

  return result;
}

uint64_t sub_23151F860(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151F674();
  swift_beginAccess();
  qword_280D6C990 = v2;
  qword_280D6C998 = v1;
}

uint64_t MediaCategorySupportedSignal.id.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (qword_280D6C988 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_62(&qword_280D6C988);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v7 = qword_280D6C990;
  v3 = 0xE500000000000000;
  v4 = 0x636973754DLL;
  switch(v2)
  {
    case 1:
      v5 = 1701079382;
      goto LABEL_8;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x74736163646F50;
      break;
    case 3:
      v5 = 1768186194;
LABEL_8:
      v4 = v5 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v3 = 0xE90000000000006BLL;
      v4 = 0x6F6F626F69647541;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v4 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v4, v3);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  return v7;
}

uint64_t MediaCategorySupportedSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = -1;
  v3 = 0;
  return a1(&v2);
}

unint64_t sub_23151FA98()
{
  result = qword_27DD5BAD8;
  if (!qword_27DD5BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCategorySupportedSignal.MediaCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23151FBD8()
{
  result = qword_280D6FE90;
  if (!qword_280D6FE90)
  {
    sub_231586654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FE90);
  }

  return result;
}

unint64_t sub_23151FC30()
{
  result = qword_280D6FEA8;
  if (!qword_280D6FEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B228, &qword_23158B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEA8);
  }

  return result;
}

uint64_t sub_23151FCC8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

uint64_t sub_23151FD50(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_63();
  a2(a1);
  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_23151FDF0(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_0_63();
  a2(v5, a1);
  return sub_231586D44();
}

uint64_t sub_23151FE3C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

uint64_t sub_23151FE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v3 += 8;
      v5 = INMediaItemTypeGetName();
      if (v5)
      {
        v6 = v5;
        v7 = sub_2315861A4();
        v9 = v8;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23149D588();
          v4 = v12;
        }

        v10 = v4[2];
        if (v10 >= v4[3] >> 1)
        {
          sub_23149D588();
          v4 = v13;
        }

        v4[2] = v10 + 1;
        v11 = &v4[2 * v10];
        v11[4] = v7;
        v11[5] = v9;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v14 = v4[2];
  if (v14)
  {
    sub_23152D598(0, v14, 0);
    v15 = v2;
    v16 = v4 + 5;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      MEMORY[0x23192FF80](v17, v18);

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23152D598(v19 > 1, v20 + 1, 1);
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = 0x707974616964656DLL;
      *(v21 + 40) = 0xEA00000000003D65;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_231520080(v15, 1);
  v23 = v22;

  return v23;
}

void sub_231520080(uint64_t result, char a2)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v4 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v7 - 1);
    v9 = *v7;
    v11 = HIBYTE(*v7) & 0xF;
    if ((*v7 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    ++v2;
    v7 += 2;
    if (v11)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23152D598(0, v6[2] + 1, 1);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_23152D598(v12 > 1, v13 + 1, 1);
      }

      v6[2] = v13 + 1;
      v14 = &v6[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      v2 = v8;
      goto LABEL_2;
    }
  }

  v15 = v6[2];
  if (v15)
  {
    sub_23152D598(0, v15, 0);
    v16 = v5;
    v17 = v6 + 5;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      MEMORY[0x23192FF80](v18, v19);
      MEMORY[0x23192FF80](34, 0xE100000000000000);

      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23152D598(v20 > 1, v21 + 1, 1);
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = 34;
      *(v22 + 40) = 0xE100000000000000;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  sub_231586A54();
  MEMORY[0x23192FF80](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320, MEMORY[0x277D83958]);
  sub_231586154();
}

uint64_t sub_231520360(char a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1 & 1);
  return sub_231586D44();
}

unint64_t sub_2315203D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586B04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23152041C(char a1)
{
  result = 0x636973754DLL;
  switch(a1)
  {
    case 1:
      result = 0x7374736163646F50;
      break;
    case 2:
      result = 0x736B6F6F42;
      break;
    case 3:
      result = 0x6F69646152;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2315204F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2315203D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_231520524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23152041C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaItemsBucketProvider.MediaBuckets(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2315206E4()
{
  result = qword_27DD5BAF0;
  if (!qword_27DD5BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaItemsBucketProvider.SiriRemembersQueryOperator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231520818()
{
  result = qword_27DD5BAF8;
  if (!qword_27DD5BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAF8);
  }

  return result;
}

void sub_231520870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_23152D598(0, v1, 0);
    v5 = sub_23152B4D0(v2);
    v6 = 0;
    v7 = v2 + 64;
    v25 = v2 + 72;
    v26 = v1;
    v27 = v2 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_24;
        }

        v28 = v4;
        v29 = v6;
        v30 = v3;

        v9 = sub_231586334();
        v11 = v10;
        v12 = v2;
        v14 = *(v31 + 16);
        v13 = *(v31 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_23152D598(v13 > 1, v14 + 1, 1);
        }

        *(v31 + 16) = v14 + 1;
        v15 = v31 + 16 * v14;
        *(v15 + 32) = v9;
        *(v15 + 40) = v11;
        v16 = 1 << *(v12 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = v27;
        v17 = *(v27 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v12;
        if (*(v12 + 36) != v30)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v19 = v26;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v19 = v26;
          v22 = (v25 + 8 * v8);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_2314ABA68(v5, v30, v28 & 1);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          sub_2314ABA68(v5, v30, v28 & 1);
        }

LABEL_18:
        v6 = v29 + 1;
        if (v29 + 1 == v19)
        {
          return;
        }

        v4 = 0;
        v3 = *(v2 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
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
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_231520AEC()
{
  result = sub_231586964();
  qword_280D6C978 = result;
  qword_280D6C980 = v1;
  return result;
}

uint64_t *sub_231520B20()
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64(&qword_280D6C970);
  }

  return &qword_280D6C978;
}

uint64_t static MediaSubscriptionStatusSignal.signalName.getter()
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64(&qword_280D6C970);
  }

  swift_beginAccess();
  v0 = qword_280D6C978;

  return v0;
}

uint64_t static MediaSubscriptionStatusSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64(&qword_280D6C970);
  }

  swift_beginAccess();
  qword_280D6C978 = a1;
  qword_280D6C980 = a2;
}

uint64_t (*static MediaSubscriptionStatusSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64(&qword_280D6C970);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231520CC8@<D0>(void *a1@<X8>)
{
  sub_231520B20();
  swift_beginAccess();
  v2 = qword_280D6C980;
  *a1 = qword_280D6C978;
  a1[1] = v2;

  return result;
}

uint64_t sub_231520D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231520B20();
  swift_beginAccess();
  qword_280D6C978 = v2;
  qword_280D6C980 = v1;
}

uint64_t MediaSubscriptionStatusSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MediaSubscriptionStatusSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v6 = &type metadata for SubscriptionStatusProvider;
  v7 = &off_28461D0D8;
  *(v0 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64(&qword_280D6C970);
  }

  swift_beginAccess();
  v2 = qword_280D6C980;
  *(v1 + 16) = qword_280D6C978;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = &unk_2846108D0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  sub_23149FD3C(&v5, v1 + 88);

  return v0;
}

uint64_t static MediaSubscriptionStatusSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231521500(v3, v1, v2);
}

uint64_t static MediaSubscriptionStatusSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_23152133C(v3);
}

double MediaSubscriptionStatusSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t MediaSubscriptionStatusSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  sub_2315216FC(v2, v7);
  v5 = swift_allocObject();
  memcpy(v5 + 2, v7, 0x70uLL);
  v5[16] = a1;
  v5[17] = a2;

  sub_2315773B4(sub_231521734, v5);
}

uint64_t sub_231521038(uint64_t a1, uint64_t a2, void (*a3)(void **))
{
  v3 = a1;
  v30 = *(*(a2 + 24) + 16);
  if (v30)
  {
  }

  else
  {
    sub_231520870(a1);
    v30 = *(v4 + 16);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v7 = (v4 + 40);
  v28 = v4;
  v29 = v3;
  while (v30 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_231586C84();
      __break(1u);
      return result;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v3 + 16);

    if (v10 && (v11 = sub_23149C888(v8, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v3 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v31 = v6;
    v14 = sub_23149C888(v8, v9);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_24;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v18 = sub_23149C888(v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_26;
      }

      v16 = v18;
    }

    v6 = v31;
    if (v17)
    {
      *(v31[7] + 8 * v16) = v13;
    }

    else
    {
      v31[(v16 >> 6) + 8] |= 1 << v16;
      v20 = (v6[6] + 16 * v16);
      *v20 = v8;
      v20[1] = v9;
      *(v6[7] + 8 * v16) = v13;
      v21 = v6[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v6[2] = v23;
    }

    v7 += 2;
    ++v5;
    v4 = v28;
    v3 = v29;
  }

  v31 = v6;
  v32 = 1;
  a3(&v31);
  v24 = v31;
  v25 = v32;

  return sub_2314A5EEC(v24, v25);
}

void MediaSubscriptionStatusSignal.adaptCached(value:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_2315212E0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231521500(v3, v1, v2);
}