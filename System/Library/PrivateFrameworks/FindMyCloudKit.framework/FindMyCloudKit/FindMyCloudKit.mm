void *sub_24ACF36F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24ACF3760(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AD5E404();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24ACF380C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD5E404();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ACF38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AD5E404();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ACF395C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD5E404();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ACF3A08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ACF3A40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ACF3A80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ACF3B10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24ACF3B64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24ACF3B70()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24ACF3C34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24ACF3D98()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24ACF3E68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ACF3EA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3EE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_24ACF3F28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 160) = v2;
  return result;
}

uint64_t sub_24ACF3F90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3FC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

_OWORD *sub_24ACF4008(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24ACF40E0()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065470);
  v1 = __swift_project_value_buffer(v0, qword_281065470);
  if (qword_281064A60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065418);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24ACF41A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_24AD5E674();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACF4270, 0, 0);
}

uint64_t sub_24ACF4270()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  swift_defaultActor_initialize();
  v3[14] = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D094F8], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FB0, &qword_24AD5FE68);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v5 + *(*v5 + *MEMORY[0x277D841D0] + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  v3[15] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FB8, &unk_24AD5FE70);
  swift_allocObject();
  v3[16] = sub_24AD5E1C4();
  v6 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_logger;
  if (qword_281064A60 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 88);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = sub_24AD5E7A4();
  v13 = __swift_project_value_buffer(v12, qword_281065418);
  (*(*(v12 - 8) + 16))(v8 + v6, v13, v12);
  MEMORY[0x24C22E250](0xD000000000000013, 0x800000024AD619A0, 0, 0);
  MEMORY[0x24C22E250](0x6E616843656E6F5ALL, 0xEF6E656B6F546567, 0, 0);
  MEMORY[0x24C22E250](0x656E6F5A74736F4CLL, 0xE800000000000000, 0, 0);
  MEMORY[0x24C22E250](0x73626F6C424B43, 0xE700000000000000, 0, 0);
  *(v8 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_currentVersion) = 2;
  v14 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v15 = sub_24AD5E364();
  *(v0 + 72) = v15;
  v16 = *(v15 - 8);
  *(v0 + 80) = v16;
  (*(v16 + 16))(v8 + v14, v10, v15);
  v17 = (v8 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_prefix);
  *v17 = v11;
  v17[1] = v9;
  *(v8 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_temporary) = v7;

  return MEMORY[0x2822009F8](sub_24ACF4604, v8, 0);
}

uint64_t sub_24ACF4604()
{
  (*(v0[10] + 8))(v0[2], v0[9]);

  v1 = v0[1];
  v2 = v0[5];

  return v1(v2);
}

uint64_t sub_24ACF46A8()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 32) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF475C, 0, 0);
}

uint64_t sub_24ACF475C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24ACF48D4;

    return sub_24ACF4AF8(v1);
  }

  else
  {
    v4 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D094E0], v4);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24ACF48D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_24ACF4A94;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_24ACF49FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ACF49FC()
{
  sub_24AD5E174();
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24ACF4A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACF4AF8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_24AD5E524();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v2[18] = swift_task_alloc();
  v4 = sub_24AD5E554();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACF4C4C, v1, 0);
}

uint64_t sub_24ACF4C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24AD5F810;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v3 = __swift_project_value_buffer(v2, qword_281065048);
  *(v1 + 56) = v2;
  v4 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  *(v1 + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(boxed_opaque_existential_1, v3, v2);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v10 = __swift_project_value_buffer(v2, qword_281065028);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v11 = v10;
  v12 = __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  v6(v12, v11, v2);
  sub_24AD5E4A4();

  v13 = MEMORY[0x277D6AF40];
  v0[5] = v9;
  v0[6] = v13;
  v14 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v7 + 16))(v14, v8, v9);
  sub_24AD5E464();
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F00, &qword_24AD5FDE8);
  swift_allocObject();
  v31 = sub_24AD5E194();
  v32 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  sub_24AD5EE54();
  sub_24AD5EF24();
  v35 = *(v16 + 48);
  if (v35(v15, 1, v17) != 1)
  {
    v23 = v0[16];
    v34 = *(v23 + 32);
    v33 = (v23 + 8);
    v32 = MEMORY[0x277D84F90];
    do
    {
      v26 = v0[17];
      v27 = v0[15];
      v34(v26, v0[18], v27);
      sub_24AD5E534();
      sub_24AD5E534();
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      v28 = sub_24AD5EB74();
      v29 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];

      v30 = (*v33)(v26, v27);
      if (v29)
      {
        MEMORY[0x24C22E590](v30);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24AD5E8E4();
        }

        sub_24AD5E904();
        v32 = v36;
      }

      v24 = v0[18];
      v25 = v0[15];
      sub_24AD5EF24();
    }

    while (v35(v24, 1, v25) != 1);
  }

  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];

  v0[12] = v32;
  sub_24AD5E184();

  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21(v31);
}

uint64_t sub_24ACF5230@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v93 = a4;
  v102 = a3;
  v87 = a2;
  v84 = a1;
  v96 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v78 - v11;
  v12 = sub_24AD5E524();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v86 = &v78 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v89 = &v78 - v26;
  v27 = sub_24AD5E554();
  v90 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v97 = &v78 - v31;
  if (*a5 != -1)
  {
    swift_once();
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  v33 = __swift_project_value_buffer(v32, a6);
  v100 = v32;
  v101 = sub_24AD062C8(&qword_27EFA5F28, &qword_27EFA5EB0, &qword_24AD5FDA0, MEMORY[0x277D6AF10]);
  v34 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v35 = *(*(v32 - 8) + 16);
  v78 = v33;
  v35(v34, v33, v32);
  sub_24AD5E4B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v95 = v27;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v36, qword_281065168);
  v98 = v84;
  v99 = v87;
  v37 = v21;
  sub_24AD5E504();
  v38 = v102;
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  v87 = v30;
  __swift_project_value_buffer(v36, qword_281065188);
  v39 = [v38 recordName];
  v40 = sub_24AD5E844();
  v42 = v41;

  v98 = v40;
  v99 = v42;
  v43 = v85;
  sub_24AD5E504();

  v44 = v86;
  sub_24AD5E4F4();
  v45 = v92;
  v46 = *(v91 + 8);
  v46(v43, v92);
  v46(v37, v45);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_281065048);
  v47 = [v38 zoneID];
  v91 = v36;
  v48 = v47;
  v49 = [v47 zoneName];

  v50 = sub_24AD5E844();
  v52 = v51;

  v98 = v50;
  v99 = v52;
  sub_24AD5E504();

  v53 = v88;
  sub_24AD5E4F4();
  v46(v37, v45);
  v46(v44, v45);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v91, qword_281065028);
  v54 = [v102 zoneID];
  v55 = [v54 ownerName];

  v56 = sub_24AD5E844();
  v58 = v57;

  v98 = v56;
  v99 = v58;
  sub_24AD5E504();

  v59 = v89;
  sub_24AD5E4F4();
  v46(v44, v45);
  v46(v53, v45);
  v60 = MEMORY[0x277D6AF40];
  v61 = v97;
  v62 = v95;
  v63 = v87;
  sub_24AD5E5B4();
  v46(v59, v45);
  v64 = v90;
  v65 = *(v90 + 8);
  v65(v63, v62);
  v100 = v62;
  v101 = v60;
  v66 = __swift_allocate_boxed_opaque_existential_1(&v98);
  (*(v64 + 16))(v66, v61, v62);
  v67 = v94;
  sub_24AD5E464();
  if (v67)
  {

    v65(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(&v98);
LABEL_15:
    v71 = sub_24AD5E3C4();
    return (*(*(v71 - 8) + 56))(v96, 1, 1, v71);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  sub_24AD5EE54();
  v68 = v80;
  sub_24AD5EF24();

  v70 = v82;
  v69 = v83;
  if ((*(v82 + 48))(v68, 1, v83) == 1)
  {

    v65(v97, v62);
    goto LABEL_15;
  }

  v73 = v79;
  v74 = v68;
  v75 = *(v70 + 32);
  v75(v79, v74, v69);
  v75(v81, v73, v69);
  v76 = sub_24AD5E3C4();
  v77 = v81;
  sub_24AD5E534();

  (*(v70 + 8))(v77, v69);
  v65(v97, v95);
  return (*(*(v76 - 8) + 56))(v96, 0, 1, v76);
}

uint64_t sub_24ACF5C14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v84 = a4;
  v93 = a3;
  v88 = a2;
  v75 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v69 - v5;
  v6 = sub_24AD5E524();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v69 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v10 = *(v83 - 8);
  v11 = MEMORY[0x28223BE20](v83);
  v77 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v81 = &v69 - v19;
  v20 = sub_24AD5E554();
  v82 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v86 = &v69 - v24;
  if (qword_2810650E0 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v26 = __swift_project_value_buffer(v25, qword_2810650E8);
  v91 = v25;
  v92 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  v27 = __swift_allocate_boxed_opaque_existential_1(&v89);
  v28 = *(*(v25 - 8) + 16);
  v69 = v26;
  v28(v27, v26, v25);
  v87 = v20;
  sub_24AD5E4B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v89);
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v79 = v23;
  __swift_project_value_buffer(v25, qword_281065168);
  v89 = v75;
  v90 = v88;
  v29 = v78;
  sub_24AD5E504();
  v30 = v93;
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_281065188);
  v31 = [v30 recordName];
  v32 = sub_24AD5E844();
  v34 = v33;

  v89 = v32;
  v90 = v34;
  v35 = v77;
  sub_24AD5E504();

  v36 = v76;
  sub_24AD5E4F4();
  v37 = *(v10 + 8);
  v88 = v10 + 8;
  v38 = v83;
  v37(v35, v83);
  v37(v29, v38);
  v39 = v36;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_281065048);
  v40 = [v30 zoneID];
  v41 = [v40 zoneName];

  v42 = sub_24AD5E844();
  v44 = v43;

  v89 = v42;
  v90 = v44;
  sub_24AD5E504();

  v45 = v80;
  sub_24AD5E4F4();
  v37(v29, v38);
  v37(v39, v38);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_281065028);
  v46 = [v93 zoneID];
  v47 = [v46 ownerName];

  v48 = sub_24AD5E844();
  v50 = v49;

  v89 = v48;
  v90 = v50;
  sub_24AD5E504();

  v51 = v81;
  sub_24AD5E4F4();
  v37(v39, v38);
  v37(v45, v38);
  v52 = MEMORY[0x277D6AF40];
  v53 = v86;
  v54 = v87;
  v55 = v79;
  sub_24AD5E5B4();
  v56 = v38;
  v57 = v53;
  v37(v51, v56);
  v58 = v82;
  v59 = *(v82 + 8);
  v59(v55, v54);
  v91 = v54;
  v92 = v52;
  v60 = __swift_allocate_boxed_opaque_existential_1(&v89);
  (*(v58 + 16))(v60, v57, v54);
  v61 = v85;
  sub_24AD5E464();
  if (v61)
  {

    v59(v57, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(&v89);
    return 0;
  }

  else
  {
    v93 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v89);
    sub_24AD5EE54();
    v63 = v72;
    sub_24AD5EF24();

    v65 = v73;
    v64 = v74;
    if ((*(v73 + 48))(v63, 1, v74) == 1)
    {

      v59(v57, v54);
      return 0;
    }

    else
    {
      v66 = *(v65 + 32);
      v67 = v70;
      v66(v70, v63, v64);
      v68 = v71;
      v66(v71, v67, v64);
      sub_24AD5E534();

      (*(v65 + 8))(v68, v64);
      v59(v86, v87);
      return v89;
    }
  }
}

uint64_t sub_24ACF6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24ACF65AC, v3, 0);
}

uint64_t sub_24ACF65AC()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF6660, 0, 0);
}

uint64_t sub_24ACF6660()
{
  if (v0[7])
  {
    v1 = v0[6];

    return MEMORY[0x2822009F8](sub_24ACF67A4, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF67A4()
{
  *(v0 + 64) = sub_24ACF6918(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 56));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24ACF6838, 0, 0);
}

uint64_t sub_24ACF6838()
{
  sub_24AD5E174();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ACF68B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACF6918(id a1, uint64_t a2, void *a3, uint64_t a4)
{
  v77 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v67 - v8;
  v9 = sub_24AD5E524();
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v14 = *(v76 - 8);
  v15 = MEMORY[0x28223BE20](v76);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v74 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v75 = &v67 - v26;
  v80 = sub_24AD5E554();
  v27 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v81 = v29;
  v79 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v30, qword_281065168);
  v82 = a1;
  v83 = a2;
  sub_24AD5E504();
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v30, qword_281065188);
  v31 = [a3 recordName];
  v32 = sub_24AD5E844();
  v86 = v30;
  v34 = v33;

  v82 = v32;
  v83 = v34;
  sub_24AD5E504();

  sub_24AD5E4F4();
  v35 = a3;
  v36 = *(v14 + 8);
  v37 = v17;
  v38 = v76;
  v36(v37, v76);
  v36(v20, v38);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v86, qword_281065048);
  v39 = [v35 zoneID];
  v72 = v35;
  v40 = v39;
  v41 = [v39 zoneName];

  v42 = sub_24AD5E844();
  v44 = v43;

  v82 = v42;
  v83 = v44;
  sub_24AD5E504();

  v45 = v20;
  v46 = v74;
  sub_24AD5E4F4();
  v36(v45, v38);
  v36(v23, v38);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v86, qword_281065028);
  v47 = [v72 zoneID];
  v48 = [v47 ownerName];

  v49 = sub_24AD5E844();
  v51 = v50;

  v82 = v49;
  v83 = v51;
  sub_24AD5E504();

  v52 = v75;
  sub_24AD5E4F4();
  v36(v23, v38);
  v36(v46, v38);
  v53 = MEMORY[0x277D6AF40];
  v55 = v80;
  v54 = v81;
  sub_24AD5E5B4();
  v36(v52, v38);
  v84 = v55;
  v85 = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v57 = v79;
  (*(v79 + 16))(boxed_opaque_existential_1, v54, v55);
  v58 = v78;
  sub_24AD5E464();
  if (v58)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    sub_24AD5EE54();
    v59 = v69;
    sub_24AD5EF24();

    v61 = v70;
    v60 = v71;
    if ((*(v71 + 48))(v59, 1, v70) != 1)
    {
      v64 = *(v60 + 32);
      v65 = v67;
      v64(v67, v59, v61);
      v66 = v68;
      v64(v68, v65, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F08, &qword_24AD5FDF0);
      swift_allocObject();
      v62 = sub_24AD5E194();
      v82 = sub_24AD05A5C();
      sub_24AD5E184();

      (*(v71 + 8))(v66, v61);
      (*(v57 + 8))(v81, v55);
      return v62;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F08, &qword_24AD5FDF0);
  swift_allocObject();
  v62 = sub_24AD5E194();
  (*(v57 + 8))(v54, v55);
  return v62;
}

uint64_t sub_24ACF71AC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ACF71CC, v1, 0);
}

uint64_t sub_24ACF71CC()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 40) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF7280, 0, 0);
}

uint64_t sub_24ACF7280()
{
  if (v0[5])
  {
    v1 = v0[4];

    return MEMORY[0x2822009F8](sub_24ACF73C4, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF73C4()
{
  *(v0 + 48) = sub_24ACF74E8(*(v0 + 24), *(v0 + 40));
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_24ACF7454, 0, 0);
}

uint64_t sub_24ACF7454()
{
  sub_24AD5E174();
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24ACF74E8(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v58 = a2;
  v73 = *MEMORY[0x277D85DE8];
  v65 = sub_24AD5E524();
  v54 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v54 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v6 = *(v57 - 1);
  v7 = MEMORY[0x28223BE20](v57);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v10);
  v56 = &v54 - v13;
  v14 = sub_24AD5E554();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v16, qword_281065028);
  v17 = [a1 ownerName];
  v18 = sub_24AD5E844();
  v20 = v19;

  v69 = v18;
  v70 = v20;
  sub_24AD5E504();

  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_281065048);
  v21 = [a1 zoneName];
  v22 = sub_24AD5E844();
  v24 = v23;

  v69 = v22;
  v70 = v24;
  sub_24AD5E504();

  v25 = v56;
  sub_24AD5E4F4();
  v26 = *(v6 + 8);
  v27 = v9;
  v28 = v57;
  v26(v27, v57);
  v26(v12, v28);
  v29 = MEMORY[0x277D6AF40];
  v30 = v61;
  v31 = v63;
  sub_24AD5E5B4();
  v26(v25, v28);
  v71 = v31;
  v72 = v29;
  v32 = __swift_allocate_boxed_opaque_existential_1(&v69);
  v33 = v62;
  (*(v62 + 16))(v32, v30, v31);
  v34 = v59;
  v35 = sub_24AD5E464();
  v36 = v66;
  if (v34)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F98, &qword_24AD5FE48);
    swift_allocObject();
    v37 = sub_24AD5E194();
    v69 = MEMORY[0x277D84F90];
    sub_24AD5E184();
    (*(v33 + 8))(v30, v31);
  }

  else
  {
    v38 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F98, &qword_24AD5FE48);
    swift_allocObject();
    v55 = sub_24AD5E194();
    v39 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    v56 = v38;
    v60 = sub_24AD5EE54();
    sub_24AD5EF24();
    v40 = v54;
    v41 = v65;
    v59 = *(v54 + 48);
    if (v59(v36, 1, v65) == 1)
    {
LABEL_8:

      v69 = v39;
      v37 = v55;
      sub_24AD5E184();

      (*(v62 + 8))(v61, v63);
    }

    else
    {
      v42 = *(v40 + 32);
      v57 = (v40 + 8);
      v58 = v42;
      v43 = v64;
      while (1)
      {
        v58(v43, v36, v41);
        if (qword_281065080 != -1)
        {
          swift_once();
        }

        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
        __swift_project_value_buffer(v44, qword_281065088);
        sub_24AD5E534();
        v46 = v69;
        v45 = v70;
        v47 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
        v48 = sub_24AD5E384();
        v67 = 0;
        v49 = [v47 initForReadingFromData:v48 error:&v67];

        v37 = v67;
        if (!v49)
        {
          v52 = v67;

          sub_24AD5E334();

          swift_willThrow();
          goto LABEL_20;
        }

        v50 = v67;
        [v49 _enableStrictSecureDecodingMode];
        v37 = sub_24AD06578(0, &qword_27EFA5F10, 0x277CCAAC8);
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        if (!sub_24AD5EB84())
        {
          break;
        }

        sub_24AD06204(v46, v45);
        v43 = v64;
        v41 = v65;
        v51 = (*v57)(v64, v65);
        MEMORY[0x24C22E590](v51);
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24AD5E8E4();
        }

        sub_24AD5E904();
        v39 = v68;
        v36 = v66;
        sub_24AD5EF24();
        if (v59(v36, 1, v41) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_24AD06274();
      swift_allocError();
      swift_willThrow();

LABEL_20:

      sub_24AD06204(v46, v45);

      (*v57)(v64, v65);
      (*(v62 + 8))(v61, v63);
    }
  }

  return v37;
}

BOOL sub_24ACF7DD4(void *a1, uint64_t a2)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - v14;
  v15 = sub_24AD5E554();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v43 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F40, &qword_24AD5FE08);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v41 = &v39 - v17;
  v39 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v40 = v3;
  v42 = v13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v18, qword_281065168);
  v50 = sub_24AD5EBC4();
  v51 = v19;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_281065028);
  v20 = [a1 ownerName];
  v21 = sub_24AD5E844();
  v23 = v22;

  v50 = v21;
  v51 = v23;
  sub_24AD5E504();

  v24 = v42;
  sub_24AD5E4F4();
  v25 = *(v4 + 8);
  v26 = v7;
  v27 = v40;
  v25(v26, v40);
  v25(v10, v27);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_281065048);
  v28 = [a1 zoneName];
  v29 = sub_24AD5E844();
  v31 = v30;

  v50 = v29;
  v51 = v31;
  sub_24AD5E504();

  v32 = v45;
  sub_24AD5E4F4();
  v25(v10, v27);
  v25(v24, v27);
  v33 = v48;
  v34 = v43;
  sub_24AD5E5B4();
  v25(v32, v27);
  v35 = v41;
  sub_24AD5E494();
  (*(v47 + 8))(v34, v33);
  v36 = v52;
  sub_24AD5E444();
  (*(v44 + 8))(v35, v46);
  if (!v36)
  {
    return v50 > 0;
  }

  return v37;
}

uint64_t sub_24ACF834C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ACF836C, v1, 0);
}

uint64_t sub_24ACF836C()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 40) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF8420, 0, 0);
}

uint64_t sub_24ACF8420()
{
  if (v0[5])
  {
    v1 = v0[4];

    return MEMORY[0x2822009F8](sub_24ACF8564, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF8564()
{
  *(v0 + 48) = sub_24ACF86D4(*(v0 + 24), *(v0 + 40));
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_24ACF85F4, 0, 0);
}

uint64_t sub_24ACF85F4()
{
  sub_24AD5E174();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ACF8670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACF86D4(void *a1, unsigned int (*a2)(char *, uint64_t, uint64_t))
{
  v72 = a2;
  v76 = sub_24AD5E524();
  v63 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v62 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v6 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = &v62 - v16;
  v70 = sub_24AD5E554();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v69 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v19, qword_281065168);
  v77 = sub_24AD5EBC4();
  v78 = v20;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v19, qword_281065028);
  v21 = [a1 ownerName];
  v22 = sub_24AD5E844();
  v64 = a1;
  v23 = v22;
  v25 = v24;

  v77 = v23;
  v78 = v25;
  sub_24AD5E504();

  sub_24AD5E4F4();
  v26 = *(v6 + 8);
  v27 = v9;
  v28 = v66;
  v26(v27, v66);
  v26(v12, v28);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v19, qword_281065048);
  v29 = [v64 zoneName];
  v30 = sub_24AD5E844();
  v32 = v31;

  v77 = v30;
  v78 = v32;
  sub_24AD5E504();

  v33 = v67;
  sub_24AD5E4F4();
  v26(v12, v28);
  v26(v15, v28);
  v34 = MEMORY[0x277D6AF40];
  v35 = v70;
  v36 = v69;
  sub_24AD5E5B4();
  v26(v33, v28);
  v79 = v35;
  v80 = v34;
  v37 = __swift_allocate_boxed_opaque_existential_1(&v77);
  v38 = v68;
  (*(v68 + 16))(v37, v36, v35);
  v39 = v73;
  v40 = sub_24AD5E464();
  if (v39)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F68, &qword_24AD5FE30);
    swift_allocObject();
    v41 = sub_24AD5E194();
    (*(v38 + 8))(v36, v35);
    return v41;
  }

  v42 = v40;
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F68, &qword_24AD5FE30);
  swift_allocObject();
  v67 = sub_24AD5E194();
  v43 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v66 = v42;
  v44 = sub_24AD5EE54();
  v45 = v75;
  v73 = v44;
  sub_24AD5EF24();
  v46 = v63;
  v47 = v76;
  v72 = *(v63 + 48);
  if (v72(v45, 1, v76) != 1)
  {
    v54 = *(v46 + 32);
    v53 = v46 + 32;
    v71 = v54;
    do
    {
      v55 = v74;
      v71(v74, v45, v47);
      if (qword_281065080 != -1)
      {
        swift_once();
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
      __swift_project_value_buffer(v56, qword_281065088);
      v57 = v55;
      sub_24AD5E534();
      v58 = v77;
      v59 = v78;
      sub_24AD05C18(v77, v78);
      v60 = v57;
      v47 = v76;
      (*(v53 - 24))(v60, v76);
      v61 = sub_24AD06204(v58, v59);
      MEMORY[0x24C22E590](v61);
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AD5E8E4();
      }

      sub_24AD5E904();
      v43 = v81;
      v45 = v75;
      sub_24AD5EF24();
    }

    while (v72(v45, 1, v47) != 1);
  }

  if (!(v43 >> 62))
  {
    v50 = v69;
    v49 = v70;
    v41 = v67;
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_24:

    v52 = 0;
    goto LABEL_25;
  }

  result = sub_24AD5EC94();
  v50 = v69;
  v49 = v70;
  v41 = v67;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x24C22EA30](0, v43);
    goto LABEL_15;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(v43 + 32);
LABEL_15:
    v52 = v51;

LABEL_25:
    v77 = v52;
    sub_24AD5E184();

    (*(v68 + 8))(v50, v49);
    return v41;
  }

  __break(1u);
  return result;
}

id sub_24ACF8FC4(uint64_t a1)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v34 - v2;
  v4 = sub_24AD5E524();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = v34 - v8;
  v9 = sub_24AD5E554();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810650A0 != -1)
  {
    swift_once();
  }

  v37 = v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v13 = __swift_project_value_buffer(v12, qword_2810650A8);
  v43 = v12;
  v44 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  v14 = __swift_allocate_boxed_opaque_existential_1(&v42);
  v15 = *(*(v12 - 8) + 16);
  v34[1] = v13;
  v15(v14, v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24AD5F820;
  if (qword_281065120 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  v18 = __swift_project_value_buffer(v17, qword_281065128);
  *(v16 + 56) = v17;
  *(v16 + 64) = sub_24AD062C8(&qword_2810653B0, &qword_27EFA5ED0, &qword_24AD5FDC0, MEMORY[0x277D6AF10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v18, v17);
  sub_24AD5E4B4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v42);
  v43 = v9;
  v44 = MEMORY[0x277D6AF40];
  v20 = __swift_allocate_boxed_opaque_existential_1(&v42);
  v21 = v45;
  (*(v45 + 16))(v20, v11, v9);
  v22 = v41;
  sub_24AD5E464();
  if (v22)
  {

    (*(v21 + 8))(v11, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    return 0;
  }

  else
  {
    v41 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    sub_24AD5EE54();
    v24 = v37;
    sub_24AD5EF24();

    v26 = v38;
    v25 = v39;
    if ((*(v39 + 48))(v24, 1, v38) == 1)
    {

      (*(v21 + 8))(v11, v9);
      return 0;
    }

    else
    {
      v27 = *(v25 + 32);
      v28 = v35;
      v27(v35, v24, v26);
      v29 = v36;
      v27(v36, v28, v26);
      sub_24AD5E534();
      v30 = v42;
      sub_24AD5E534();
      v31 = objc_allocWithZone(MEMORY[0x277CBC220]);
      v32 = sub_24AD5E834();

      v33 = [v31 initWithContainerIdentifier:v32 environment:v30];

      (*(v39 + 8))(v29, v26);
      (*(v45 + 8))(v11, v9);
      return v33;
    }
  }
}

id sub_24ACF9580(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v43 - v3;
  v4 = sub_24AD5E524();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = sub_24AD5E554();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v43 - v17;
  v18 = *a1;
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  if (sub_24AD5E694())
  {
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v19, qword_281065068);
    v50[0] = v18;
    sub_24AD5E504();
    sub_24AD5E5B4();
    (*(v9 + 8))(v11, v8);
    if (qword_281065140 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
    v21 = __swift_project_value_buffer(v20, qword_281065148);
    v51 = v20;
    v52 = sub_24AD062C8(&qword_2810653D8, &qword_27EFA5EB8, &qword_24AD5FDA8, MEMORY[0x277D6AF10]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
    v23 = v53;
    sub_24AD5E4B4();
    v24 = *(v13 + 8);
    v24(v16, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v51 = v12;
    v52 = MEMORY[0x277D6AF40];
    v25 = __swift_allocate_boxed_opaque_existential_1(v50);
    (*(v13 + 16))(v25, v23, v12);
    v26 = v48;
    sub_24AD5E464();
    if (v26)
    {

      v24(v23, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      return 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      sub_24AD5EE54();
      v30 = v44;
      sub_24AD5EF24();

      v31 = v46;
      v32 = v47;
      if ((*(v46 + 48))(v30, 1, v47) == 1)
      {

        v24(v53, v12);
        return 0;
      }

      else
      {
        v33 = v32;
        v34 = v30;
        v35 = *(v31 + 32);
        v36 = v43;
        v48 = v21;
        v37 = v33;
        v35(v43, v34);
        (v35)(v45, v36, v37);
        sub_24AD5E534();
        v39 = v50[0];
        v38 = v50[1];
        v40 = objc_allocWithZone(MEMORY[0x277CBC670]);
        v41 = sub_24AD5E384();
        v42 = [v40 initWithData_];

        sub_24AD06204(v39, v38);

        (*(v46 + 8))(v45, v47);
        v24(v53, v12);
        return v42;
      }
    }
  }

  else
  {
    v28 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D094E0], v28);
    return swift_willThrow();
  }
}

uint64_t sub_24ACF9C80(unsigned __int8 *a1)
{
  v24 = sub_24AD5E404();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v23 = sub_24AD5E554();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  v12 = sub_24AD5E6A4();
  if (v12)
  {
    v13 = v12;
    v20[1] = v1;
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v14, qword_281065068);
    v25 = v11;
    sub_24AD5E504();
    v15 = v23;
    sub_24AD5E5B4();
    v16 = (*(v6 + 8))(v8, v5);
    MEMORY[0x28223BE20](v16);
    v20[-2] = v13;
    v20[-1] = v10;
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v22 + 8))(v4, v24);
    sub_24AD5E474();

    return (*(v21 + 8))(v10, v15);
  }

  else
  {
    v18 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D094E0], v18);
    return swift_willThrow();
  }
}

uint64_t sub_24ACFA0AC()
{
  v0 = sub_24AD5E574();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD5E554();
  sub_24AD5E5A4();
  sub_24AD5E424();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24ACFA1A8()
{
  v1 = v0;
  v2 = sub_24AD5E524();
  v81 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  isUniquelyReferenced_nonNull_native = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = v77 - v6;
  v7 = sub_24AD5E554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  v11 = sub_24AD5E694();
  if (v11)
  {
    v85 = v0;
    v88 = v2;
    v77[3] = v11;
    v78 = v10;
    v79 = v8;
    v80 = v7;
    if (qword_281065040 != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
      v13 = __swift_project_value_buffer(v12, qword_281065048);
      v90 = v12;
      v14 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
      v91 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
      v16 = *(*(v12 - 8) + 16);
      v87 = v13;
      v16(boxed_opaque_existential_1, v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_24AD5F810;
      if (qword_281065020 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v12, qword_281065028);
      *(v17 + 56) = v12;
      *(v17 + 64) = v14;
      v19 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
      v86 = v18;
      v16(v19, v18, v12);
      if (qword_281065140 != -1)
      {
        swift_once();
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
      v21 = __swift_project_value_buffer(v20, qword_281065148);
      *(v17 + 96) = v20;
      *(v17 + 104) = sub_24AD062C8(&qword_2810653D8, &qword_27EFA5EB8, &qword_24AD5FDA8, MEMORY[0x277D6AF10]);
      v22 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
      (*(*(v20 - 8) + 16))(v22, v21, v20);
      v23 = v78;
      v24 = v80;
      sub_24AD5E4B4();

      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      v90 = v24;
      v91 = MEMORY[0x277D6AF40];
      v25 = __swift_allocate_boxed_opaque_existential_1(v89);
      v26 = v79;
      (*(v79 + 16))(v25, v23, v24);
      v27 = v85;
      v28 = sub_24AD5E464();
      if (v27)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        v1 = sub_24AD341CC(MEMORY[0x277D84F90]);

        (*(v26 + 8))(v23, v24);
        return v1;
      }

      v31 = v28;
      v77[2] = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      v77[1] = v31;
      v32 = sub_24AD5EE54();
      v33 = v92;
      v85 = v32;
      sub_24AD5EF24();
      v34 = v81;
      v35 = v88;
      v83 = *(v81 + 48);
      v84 = v81 + 48;
      if (v83(v33, 1, v88) == 1)
      {
        v36 = MEMORY[0x277D84F90];
      }

      else
      {
        v63 = *(v34 + 32);
        v62 = v34 + 32;
        v81 = v63;
        v82 = v21;
        v64 = (v62 - 24);
        v36 = MEMORY[0x277D84F90];
        do
        {
          v65 = v62;
          (v81)(isUniquelyReferenced_nonNull_native, v33, v35);
          sub_24AD5E534();
          sub_24AD5E534();
          sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
          v66 = sub_24AD5EB74();
          sub_24AD5E534();
          v67 = v89[0];
          v68 = v89[1];
          v69 = objc_allocWithZone(MEMORY[0x277CBC670]);
          v70 = sub_24AD5E384();
          v71 = [v69 initWithData_];

          v72 = v68;
          v35 = v88;
          sub_24AD06204(v67, v72);
          (*v64)(isUniquelyReferenced_nonNull_native, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_24AD2E548(0, v36[2] + 1, 1, v36);
          }

          v74 = v36[2];
          v73 = v36[3];
          if (v74 >= v73 >> 1)
          {
            v36 = sub_24AD2E548((v73 > 1), v74 + 1, 1, v36);
          }

          v36[2] = v74 + 1;
          v75 = &v36[2 * v74];
          v75[4] = v66;
          v75[5] = v71;
          v33 = v92;
          sub_24AD5EF24();
          v62 = v65;
        }

        while (v83(v33, 1, v35) != 1);
      }

      v92 = v36[2];
      if (!v92)
      {
        v1 = MEMORY[0x277D84F98];
LABEL_42:

        (*(v79 + 8))(v78, v80);
        return v1;
      }

      v37 = 0;
      v1 = MEMORY[0x277D84F98];
      v38 = (v36 + 5);
      while (v37 < v36[2])
      {
        v41 = *(v38 - 1);
        v42 = *v38;
        if ((v1 & 0xC000000000000001) != 0)
        {
          if (v1 < 0)
          {
            v43 = v1;
          }

          else
          {
            v43 = v1 & 0xFFFFFFFFFFFFFF8;
          }

          v44 = v41;
          isUniquelyReferenced_nonNull_native = v42;
          v45 = v44;
          v46 = isUniquelyReferenced_nonNull_native;
          v47 = sub_24AD5EC94();
          if (__OFADD__(v47, 1))
          {
            goto LABEL_46;
          }

          v1 = sub_24AD0A25C(v43, v47 + 1);
        }

        else
        {
          v48 = v41;
          v49 = v42;
          v50 = v48;
          v51 = v49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89[0] = v1;
        v52 = sub_24AD095D0(v41);
        v54 = *(v1 + 16);
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          goto LABEL_45;
        }

        v58 = v53;
        if (*(v1 + 24) < v57)
        {
          sub_24AD03814(v57, isUniquelyReferenced_nonNull_native, &qword_27EFA5EF8, &qword_24AD5FDD8);
          v52 = sub_24AD095D0(v41);
          if ((v58 & 1) != (v59 & 1))
          {
            sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
            result = sub_24AD5EFC4();
            __break(1u);
            return result;
          }

LABEL_29:
          v1 = v89[0];
          if (v58)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        isUniquelyReferenced_nonNull_native = v52;
        sub_24AD04D5C(&qword_27EFA5EF8, &qword_24AD5FDD8);
        v52 = isUniquelyReferenced_nonNull_native;
        v1 = v89[0];
        if (v58)
        {
LABEL_14:
          v39 = *(v1 + 56);
          v40 = *(v39 + 8 * v52);
          *(v39 + 8 * v52) = v42;

          goto LABEL_15;
        }

LABEL_30:
        *(v1 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        *(*(v1 + 48) + 8 * v52) = v41;
        *(*(v1 + 56) + 8 * v52) = v42;

        v60 = *(v1 + 16);
        v56 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v56)
        {
          goto LABEL_47;
        }

        *(v1 + 16) = v61;
LABEL_15:
        ++v37;
        v38 += 2;
        if (v92 == v37)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }
  }

  v29 = sub_24AD5E664();
  sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D094E0], v29);
  swift_willThrow();
  return v1;
}

uint64_t sub_24ACFABB4()
{
  v0 = sub_24AD5E524();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_24AD5E554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  v11 = sub_24AD5E694();
  if (v11)
  {
    v37 = v7;
    v38 = v11;
    v35 = v10;
    v36 = v8;
    v44 = v0;
    v45 = v1;
    if (qword_281065040 != -1)
    {
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
    v13 = __swift_project_value_buffer(v12, qword_281065048);
    v47 = v12;
    v14 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
    v48 = v14;
    v15 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v16 = *(*(v12 - 8) + 16);
    v43 = v13;
    v16(v15, v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24AD5F820;
    if (qword_281065020 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v12, qword_281065028);
    *(v17 + 56) = v12;
    *(v17 + 64) = v14;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
    v16(boxed_opaque_existential_1, v19, v12);
    v21 = v35;
    v22 = v37;
    sub_24AD5E4B4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    v47 = v22;
    v48 = MEMORY[0x277D6AF40];
    v23 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v24 = v36;
    (*(v36 + 16))(v23, v21, v22);
    v25 = v42;
    v26 = sub_24AD5E464();
    if (v25)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v46);

      (*(v24 + 8))(v21, v22);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v29 = v26;
      v41 = v19;
      v34[1] = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      v1 = MEMORY[0x277D84F90];
      v49 = MEMORY[0x277D84F90];
      v34[0] = v29;
      v42 = sub_24AD5EE54();
      sub_24AD5EF24();
      v31 = v44;
      v30 = v45;
      v40 = *(v45 + 48);
      if (v40(v6, 1, v44) != 1)
      {
        v39 = *(v30 + 32);
        v45 = v30 + 32;
        do
        {
          v39(v3, v6, v31);
          sub_24AD5E534();
          sub_24AD5E534();
          sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
          v31 = v44;
          sub_24AD5EB74();
          v32 = (*(v30 + 8))(v3, v31);
          MEMORY[0x24C22E590](v32);
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24AD5E8E4();
          }

          sub_24AD5E904();
          v1 = v49;
          sub_24AD5EF24();
        }

        while (v40(v6, 1, v31) != 1);
        v24 = v36;
        v22 = v37;
        v21 = v35;
      }

      (*(v24 + 8))(v21, v22);
    }
  }

  else
  {
    v27 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D094E0], v27);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_24ACFB24C(uint64_t a1)
{
  v3 = sub_24AD5E404();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  v7 = sub_24AD5E6A4();
  if (v7)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v12[-4] = v1;
    v12[-3] = a1;
    v12[-2] = v8;
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v4 + 8))(v6, v3);
    sub_24AD5E474();
  }

  else
  {
    v10 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D094E0], v10);
    return swift_willThrow();
  }
}

uint64_t sub_24ACFB4A0(uint64_t a1, void *a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v91 = sub_24AD5E574();
  v95 = *(v91 - 8);
  v4 = MEMORY[0x28223BE20](v91);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v74 - v7;
  MEMORY[0x28223BE20](v6);
  v83 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v88 = &v74 - v16;
  v92 = sub_24AD5E554();
  v86 = *(v92 - 8);
  v17 = MEMORY[0x28223BE20](v92);
  v75 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v74 - v20;
  MEMORY[0x28223BE20](v19);
  v87 = &v74 - v21;
  v82 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_zoneChangeTokensTable;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v23 = __swift_project_value_buffer(v22, qword_281065048);
  v24 = [a2 zoneName];
  v25 = sub_24AD5E844();
  v27 = v26;

  v93 = v25;
  v94 = v27;
  v80 = v23;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v22, qword_281065028);
  v29 = [a2 ownerName];
  v30 = sub_24AD5E844();
  v32 = v31;

  v93 = v30;
  v94 = v32;
  v79 = v28;
  sub_24AD5E504();

  v33 = v88;
  sub_24AD5E4F4();
  v34 = *(v85 + 1);
  v34(v12, v9);
  v85 = v15;
  v34(v15, v9);
  v78 = a2;
  v35 = v9;
  v36 = v87;
  v37 = v92;
  sub_24AD5E5B4();
  v34(v33, v9);
  v38 = v83;
  sub_24AD5E5A4();
  v39 = v84;
  sub_24AD5E424();
  if (v39)
  {
    (*(v95 + 8))(v38, v91);
    return (*(v86 + 8))(v36, v37);
  }

  else
  {
    v41 = *(v95 + 8);
    v95 += 8;
    v83 = v41;
    (v41)(v38, v91);
    v82 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
    v42 = v78;
    v43 = [v78 zoneName];
    v84 = 0;
    v44 = v43;
    v45 = sub_24AD5E844();
    v47 = v46;

    v93 = v45;
    v94 = v47;
    v48 = v85;
    sub_24AD5E504();

    v49 = [v42 ownerName];
    v50 = sub_24AD5E844();
    v52 = v51;

    v93 = v50;
    v94 = v52;
    sub_24AD5E504();

    v53 = v88;
    sub_24AD5E4F4();
    v34(v12, v35);
    v34(v48, v35);
    v54 = v81;
    sub_24AD5E5B4();
    v34(v53, v35);
    v55 = v77;
    sub_24AD5E5A4();
    v56 = v84;
    sub_24AD5E424();
    v84 = v56;
    (v83)(v55, v91);
    if (v56)
    {
      v57 = *(v86 + 8);
      v58 = v92;
      v57(v54, v92);
      return (v57)(v87, v58);
    }

    else
    {
      v82 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable;
      v59 = v78;
      v60 = [v78 zoneName];
      v61 = sub_24AD5E844();
      v63 = v62;

      v93 = v61;
      v94 = v63;
      v64 = v85;
      sub_24AD5E504();

      v65 = [v59 ownerName];
      v66 = sub_24AD5E844();
      v68 = v67;

      v93 = v66;
      v94 = v68;
      sub_24AD5E504();

      v69 = v88;
      sub_24AD5E4F4();
      v34(v12, v35);
      v34(v64, v35);
      v70 = v75;
      v71 = v92;
      sub_24AD5E5B4();
      v34(v69, v35);
      v72 = v76;
      sub_24AD5E5A4();
      sub_24AD5E424();
      (v83)(v72, v91);
      v73 = *(v86 + 8);
      v73(v70, v71);
      v73(v81, v71);
      return (v73)(v87, v71);
    }
  }
}

uint64_t sub_24ACFBDBC(__int128 *a1)
{
  v3 = v1;
  v28 = *v3;
  v5 = sub_24AD5E404();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v39 = a1[2];
  v40 = v8;
  v41 = *(a1 + 8);
  v9 = a1[1];
  v37 = *a1;
  v38 = v9;
  if (qword_281065000 != -1)
  {
    swift_once();
  }

  v10 = sub_24AD5E7A4();
  __swift_project_value_buffer(v10, qword_281065470);
  sub_24AD063FC(&v37, v35);
  v11 = sub_24AD5E784();
  v12 = sub_24AD5EB64();
  sub_24AD06458(&v37);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v31 = v38;
    v30 = v37;
    sub_24AD063FC(&v37, v35);
    v16 = CloudKitStateChange.description.getter();
    v18 = v17;
    v35[2] = v32;
    v35[3] = v33;
    v36 = v34;
    v35[0] = v30;
    v35[1] = v31;
    sub_24AD06458(v35);
    v19 = sub_24AD2EDAC(v16, v18, &v42);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24ACF2000, v11, v12, "ingest:stateChange %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x24C22F400](v15, -1, -1);
    v20 = v14;
    v5 = v27;
    MEMORY[0x24C22F400](v20, -1, -1);
  }

  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  result = sub_24AD5E6B4();
  if (!v2)
  {
    v22 = sub_24AD5E6A4();
    if (v22)
    {
      v23 = MEMORY[0x28223BE20](v22);
      *(&v26 - 4) = v3;
      *(&v26 - 3) = v23;
      *(&v26 - 2) = &v37;
      *(&v26 - 1) = v28;
      sub_24AD5E3F4();
      sub_24AD5E3E4();
      (*(v29 + 8))(v7, v5);
      sub_24AD5E474();
    }

    else
    {
      v24 = sub_24AD5E664();
      sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D094E0], v24);
      return swift_willThrow();
    }
  }

  return result;
}

void sub_24ACFC250(uint64_t a1, uint64_t a2, char *a3)
{
  v361 = a3;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  v329 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v336 = &v322 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v339 = &v322 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v338 = &v322 - v9;
  v356 = sub_24AD5E3C4();
  *&v328 = *(v356 - 8);
  v10 = MEMORY[0x28223BE20](v356);
  v337 = &v322 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v345 = &v322 - v13;
  MEMORY[0x28223BE20](v12);
  v335 = &v322 - v14;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  v327 = *(v360 - 8);
  v15 = MEMORY[0x28223BE20](v360);
  v355 = &v322 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v344 = &v322 - v17;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v326 = *(v380 - 1);
  MEMORY[0x28223BE20](v380);
  v354 = &v322 - v18;
  v363 = sub_24AD5E574();
  v367 = *(v363 - 8);
  v19 = MEMORY[0x28223BE20](v363);
  v348 = (&v322 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v353 = &v322 - v21;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v366 = *(v374 - 8);
  v22 = MEMORY[0x28223BE20](v374);
  v352 = (&v322 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v351 = (&v322 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v362 = (&v322 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v350 = (&v322 - v29);
  MEMORY[0x28223BE20](v28);
  v349 = (&v322 - v30);
  v381 = sub_24AD5E554();
  v331 = *(v381 - 8);
  v31 = MEMORY[0x28223BE20](v381);
  v346 = &v322 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  *&v347 = &v322 - v34;
  MEMORY[0x28223BE20](v33);
  v365 = &v322 - v35;
  v379 = sub_24AD5E484();
  v373 = *(v379 - 8);
  v36 = MEMORY[0x28223BE20](v379);
  v38 = &v322 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v376 = &v322 - v39;
  v40 = sub_24AD5E584();
  v372 = *(v40 - 8);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v322 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v322 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = (&v322 - v48);
  MEMORY[0x28223BE20](v47);
  v51 = (&v322 - v50);
  v52 = a2;
  v53 = v382;
  v54 = sub_24ACF8FC4(a2);
  v382 = v53;
  if (v53)
  {
    return;
  }

  v371 = v51;
  v341 = v49;
  v358 = v46;
  v324 = v43;
  v375 = v40;
  v330 = v38;
  v378 = a1;
  v55 = v381;
  v56 = v379;
  v57 = v376;
  if (v54)
  {
    v58 = *v361;
    v59 = v54;
    sub_24AD06578(0, &qword_2810649B0, 0x277CBC220);
    v60 = v58;
    v61 = sub_24AD5EC04();

    if ((v61 & 1) == 0)
    {
      if (qword_281065000 != -1)
      {
        swift_once();
      }

      v81 = sub_24AD5E7A4();
      __swift_project_value_buffer(v81, qword_281065470);
      v82 = sub_24AD5E784();
      v83 = sub_24AD5EB44();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_24ACF2000, v82, v83, "containerID does not match!", v84, 2u);
        MEMORY[0x24C22F400](v84, -1, -1);
      }

      v85 = sub_24AD5E664();
      sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
      swift_allocError();
      (*(*(v85 - 8) + 104))(v86, *MEMORY[0x277D094D8], v85);
      swift_willThrow();

      return;
    }
  }

  v62 = v361;
  v63 = *(v361 + 2);
  v377 = v52;
  if (v63)
  {
    v370 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_databaseChangeTokenTable;
    (v373)[13](v57, *MEMORY[0x277D6AF18], v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
    sub_24AD5E594();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_24AD5F830;
    v369 = v64;
    v65 = qword_2810650A0;
    v57 = v63;
    if (v65 != -1)
    {
      goto LABEL_140;
    }

    goto LABEL_8;
  }

  v80 = v382;
  v87 = v373;
  while (2)
  {
    v88 = *(v62 + 7);
    v89 = v380;
    if ((v88 & 0xC000000000000001) != 0)
    {
      v90 = sub_24AD5EE74();
      v340 = 0;
      v91 = 0;
      v343 = 0;
      v334 = v90 | 0x8000000000000000;
    }

    else
    {
      v92 = -1 << *(v88 + 32);
      v91 = ~v92;
      v93 = *(v88 + 64);
      v340 = v88 + 64;
      v94 = -v92;
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      else
      {
        v95 = -1;
      }

      v343 = (v95 & v93);
      v334 = v88;
    }

    v96 = 0;
    v97 = (v91 + 64) >> 6;
    LODWORD(v370) = *MEMORY[0x277D6AF18];
    v371 = (v87 + 1);
    v368 = (v372 + 8);
    v369 = (v87 + 13);
    v332 = xmmword_24AD5F840;
    v333 = v91;
    v98 = v343;
    for (i = v97; ; v97 = i)
    {
      v99 = v334;
      *&v342 = v96;
      if ((v334 & 0x8000000000000000) == 0)
      {
        break;
      }

      v343 = v98;
      v107 = sub_24AD5EEA4();
      if (!v107)
      {
        v99 = v334;
        goto LABEL_47;
      }

      v109 = v108;
      v103 = v80;
      v385 = v107;
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      swift_dynamicCast();
      v106 = v383;
      v385 = v109;
      sub_24AD06578(0, &qword_281064980, 0x277CBC670);
      swift_dynamicCast();
      v372 = v383;
      v102 = v342;
      v359 = v343;
      if (!v106)
      {
LABEL_130:
        v99 = v334;
        v80 = v103;
        v55 = v381;
LABEL_47:
        sub_24ACF40D8(v99);
        v130 = *(v361 + 8);
        v131 = v367;
        if (v130 >> 62)
        {
          goto LABEL_142;
        }

        v132 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
        v382 = v80;
        v359 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable;
        v133 = v366;
        if (v132)
        {
          v134 = 0;
          v357 = (v130 & 0xC000000000000001);
          v343 = (v130 & 0xFFFFFFFFFFFFFF8);
          v342 = xmmword_24AD5F810;
          v340 = v132;
          v341 = v130;
          while (1)
          {
            if (v357)
            {
              v135 = MEMORY[0x24C22EA30](v134, v130);
              v136 = (v134 + 1);
              if (__OFADD__(v134, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v134 >= v343[2])
              {
                goto LABEL_138;
              }

              v135 = *(v130 + 8 * v134 + 32);
              v136 = (v134 + 1);
              if (__OFADD__(v134, 1))
              {
                goto LABEL_137;
              }
            }

            v372 = v136;
            v137 = v135;
            (*v369)(v57, v370, v56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
            v373 = *(*(sub_24AD5E594() - 8) + 72);
            *(swift_allocObject() + 16) = v342;
            if (qword_281065040 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v89, qword_281065048);
            v138 = [v137 zoneName];
            v139 = sub_24AD5E844();
            v141 = v140;

            v383 = v139;
            v384 = v141;
            sub_24AD5E514();

            if (qword_281065020 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v89, qword_281065028);
            v142 = [v137 ownerName];
            v143 = sub_24AD5E844();
            v145 = v144;

            v383 = v143;
            v384 = v145;
            sub_24AD5E514();

            v146 = v358;
            v57 = v376;
            v55 = v381;
            sub_24AD5E5C4();

            v56 = v379;
            (*v371)(v57, v379);
            v147 = v382;
            sub_24AD5E434();
            v382 = v147;
            if (v147)
            {
              break;
            }

            (*v368)(v146, v375);

            ++v134;
            v89 = v380;
            v133 = v366;
            v131 = v367;
            v130 = v341;
            if (v372 == v340)
            {
              goto LABEL_64;
            }
          }

          (*v368)(v146, v375);
        }

        else
        {
LABEL_64:
          v148 = *(v361 + 6);
          v149 = *(v148 + 16);
          if (v149)
          {
            v323 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
            i = (v331 + 8);
            v150 = (v148 + 48);
            *&v129 = 136447235;
            v322 = v129;
            v341 = v131 + 1;
            v372 = (v133 + 1);
            while (1)
            {
              v334 = v149;
              v151 = *(v150 - 1);
              *&v342 = *(v150 - 2);
              v333 = v150;
              v152 = *v150;
              swift_bridgeObjectRetain_n();
              v153 = v152;
              v154 = [v153 recordName];
              v343 = sub_24AD5E844();
              v357 = v155;

              v156 = [v153 zoneID];
              v157 = [v156 zoneName];

              v376 = sub_24AD5E844();
              v159 = v158;

              v340 = v153;
              v160 = [v153 zoneID];
              v161 = [v160 ownerName];

              v373 = sub_24AD5E844();
              v163 = v162;

              if (qword_281065000 != -1)
              {
                swift_once();
              }

              v164 = sub_24AD5E7A4();
              __swift_project_value_buffer(v164, qword_281065470);

              v165 = sub_24AD5E784();
              v166 = sub_24AD5EB64();

              v167 = os_log_type_enabled(v165, v166);
              v366 = v159;
              v367 = v151;
              v358 = v163;
              if (v167)
              {
                v168 = swift_slowAlloc();
                v169 = swift_slowAlloc();
                v383 = v169;
                *v168 = v322;
                *(v168 + 4) = sub_24AD2EDAC(v373, v163, &v383);
                *(v168 + 12) = 2082;
                *(v168 + 14) = sub_24AD2EDAC(v376, v159, &v383);
                *(v168 + 22) = 2082;
                *(v168 + 24) = sub_24AD2EDAC(v342, v151, &v383);
                *(v168 + 32) = 2160;
                *(v168 + 34) = 1752392040;
                *(v168 + 42) = 2081;
                v170 = v357;
                *(v168 + 44) = sub_24AD2EDAC(v343, v357, &v383);
                _os_log_impl(&dword_24ACF2000, v165, v166, "Ingest CK delete: [Zone: %{public}s/%{public}s; record: %{public}s/%{private,mask.hash}s]", v168, 0x34u);
                swift_arrayDestroy();
                MEMORY[0x24C22F400](v169, -1, -1);
                MEMORY[0x24C22F400](v168, -1, -1);

                v171 = v380;
                v172 = v352;
                v173 = v351;
                v174 = v350;
              }

              else
              {

                v171 = v380;
                v172 = v352;
                v173 = v351;
                v174 = v350;
                v170 = v357;
              }

              v175 = v372;
              if (qword_281065160 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v171, qword_281065168);
              v383 = v342;
              v384 = v367;
              sub_24AD5E504();

              if (qword_281065180 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v171, qword_281065188);
              v383 = v343;
              v384 = v170;
              sub_24AD5E504();

              v176 = v362;
              sub_24AD5E4F4();
              v177 = *v175;
              v178 = v172;
              v179 = v374;
              (*v175)(v178, v374);
              v177(v173, v179);
              if (qword_281065040 != -1)
              {
                swift_once();
              }

              v180 = __swift_project_value_buffer(v171, qword_281065048);
              v383 = v376;
              v384 = v366;
              v357 = v180;
              sub_24AD5E504();
              sub_24AD5E4F4();
              v181 = v374;
              v177(v173, v374);
              v177(v176, v181);
              v182 = v177;
              v183 = v174;
              if (qword_281065020 != -1)
              {
                swift_once();
              }

              v184 = __swift_project_value_buffer(v171, qword_281065028);
              v383 = v373;
              v384 = v358;
              *&v342 = v184;
              sub_24AD5E504();
              v185 = v349;
              sub_24AD5E4F4();
              v186 = v374;
              v182(v176, v374);
              v182(v174, v186);
              sub_24AD5E5B4();
              v343 = v182;
              v182(v185, v186);
              v187 = v353;
              sub_24AD5E5A4();
              v188 = v382;
              sub_24AD5E424();
              if (v188)
              {

                v316 = v340;

                (*v341)(v187, v363);
                (*i)(v365, v381);
                return;
              }

              v382 = 0;
              *&v332 = *v341;
              (v332)(v187, v363);
              v383 = v376;
              v384 = v366;
              sub_24AD5E504();

              v383 = v373;
              v384 = v358;
              v189 = v362;
              sub_24AD5E504();

              sub_24AD5E4F4();
              v190 = v343;
              (v343)(v189, v186);
              (v190)(v183, v186);
              v191 = v347;
              v55 = v381;
              sub_24AD5E5B4();
              v192 = v185;
              v193 = v191;
              (v190)(v192, v186);
              v194 = v348;
              sub_24AD5E5A4();
              v195 = v382;
              sub_24AD5E424();
              v382 = v195;
              if (v195)
              {
                break;
              }

              v196 = v340;

              (v332)(v194, v363);
              v131 = i;
              v197 = *i;
              (*i)(v193, v55);
              v197(v365, v55);
              v150 = (v333 + 24);
              v149 = v334 - 1;
              if (v334 == 1)
              {
                goto LABEL_82;
              }
            }

            v317 = v340;

            (v332)(v194, v363);
            v318 = *i;
            (*i)(v193, v55);
            v318(v365, v55);
          }

          else
          {
LABEL_82:
            v130 = *(v361 + 5);
            if (v130 >> 62)
            {
              v56 = sub_24AD5EC94();
            }

            else
            {
              v56 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v57 = v380;
            v89 = v346;
            v198 = v329;
            v199 = v327;
            v80 = v382;
            if (v56)
            {
              v200 = 0;
              v353 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
              v358 = v130 & 0xC000000000000001;
              v327 = v130 & 0xFFFFFFFFFFFFFF8;
              v352 = (v331 + 16);
              v351 = (v326 + 16);
              v350 = (v326 + 8);
              v372 = (v199 + 16);
              v359 = (v328 + 32);
              v373 = (v328 + 56);
              v329 = (v328 + 48);
              v367 = (v328 + 8);
              v366 = (v199 + 8);
              v348 = (v198 + 2);
              v349 = (v198 + 1);
              v357 = (v331 + 8);
              *&v129 = 136447491;
              v328 = v129;
              v347 = xmmword_24AD5F850;
              *&v332 = v130;
              v331 = v56;
              while (1)
              {
                if (v358)
                {
                  v201 = MEMORY[0x24C22EA30](v200, v130);
                }

                else
                {
                  if (v200 >= *(v327 + 16))
                  {
                    __break(1u);
LABEL_142:
                    v132 = sub_24AD5EC94();
                    goto LABEL_49;
                  }

                  v201 = *(v130 + 8 * v200 + 32);
                }

                v202 = v201;
                if (__OFADD__(v200, 1))
                {
                  goto LABEL_139;
                }

                v361 = (v200 + 1);
                v362 = v200;
                if (qword_281065000 != -1)
                {
                  swift_once();
                }

                v203 = sub_24AD5E7A4();
                __swift_project_value_buffer(v203, qword_281065470);
                v204 = v202;
                v205 = sub_24AD5E784();
                v206 = sub_24AD5EB64();

                v207 = os_log_type_enabled(v205, v206);
                v382 = v80;
                v374 = v204;
                if (v207)
                {
                  v208 = swift_slowAlloc();
                  v376 = swift_slowAlloc();
                  v383 = v376;
                  *v208 = v328;
                  v209 = [v204 recordID];
                  v210 = [v209 zoneID];

                  v211 = [v210 ownerName];
                  v212 = sub_24AD5E844();
                  v214 = v213;

                  v215 = sub_24AD2EDAC(v212, v214, &v383);

                  *(v208 + 4) = v215;
                  *(v208 + 12) = 2082;
                  v216 = [v204 &off_278FFD4F8];
                  v217 = [v216 zoneID];

                  v218 = [v217 zoneName];
                  v219 = sub_24AD5E844();
                  v221 = v220;

                  v222 = sub_24AD2EDAC(v219, v221, &v383);

                  *(v208 + 14) = v222;
                  *(v208 + 22) = 2082;
                  v223 = sub_24AD5EBE4();
                  v225 = sub_24AD2EDAC(v223, v224, &v383);

                  *(v208 + 24) = v225;
                  *(v208 + 32) = 2160;
                  *(v208 + 34) = 1752392040;
                  *(v208 + 42) = 2081;
                  v226 = [v204 &off_278FFD4F8];
                  v227 = [v226 recordName];

                  v228 = sub_24AD5E844();
                  v230 = v229;

                  v231 = sub_24AD2EDAC(v228, v230, &v383);

                  *(v208 + 44) = v231;
                  *(v208 + 52) = 2082;
                  v232 = [v204 recordChangeTag];
                  if (v232)
                  {
                    v233 = v232;
                    v234 = sub_24AD5E844();
                    v236 = v235;
                  }

                  else
                  {
                    v234 = 0;
                    v236 = 0xE000000000000000;
                  }

                  v237 = sub_24AD2EDAC(v234, v236, &v383);

                  *(v208 + 54) = v237;
                  _os_log_impl(&dword_24ACF2000, v205, v206, "Ingest CK modification: [Zone: %{public}s/%{public}s; record: %{public}s/%{private,mask.hash}s; changeTag: %{public}s]", v208, 0x3Eu);
                  v238 = v376;
                  swift_arrayDestroy();
                  MEMORY[0x24C22F400](v238, -1, -1);
                  MEMORY[0x24C22F400](v208, -1, -1);

                  v57 = v380;
                  v55 = v381;
                  v89 = v346;
                }

                else
                {
                }

                (*v352)(v89, &v353[v378], v55);
                (*v369)(v330, v370, v379);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
                v343 = sub_24AD5E594();
                v239 = *(*(v343 - 1) + 9);
                *&v342 = *(v343 - 1);
                v240 = (*(v342 + 80) + 32) & ~*(v342 + 80);
                v376 = v239;
                v241 = swift_allocObject();
                *(v241 + 16) = v347;
                if (qword_281065160 != -1)
                {
                  v315 = v241;
                  swift_once();
                  v241 = v315;
                }

                v365 = v241;
                v242 = v241 + v240;
                __swift_project_value_buffer(v57, qword_281065168);
                v243 = v374;
                v383 = sub_24AD5EBE4();
                v384 = v244;
                sub_24AD5E514();

                if (qword_281065180 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v57, qword_281065188);
                v245 = [v243 recordID];
                v246 = [v245 recordName];

                v247 = sub_24AD5E844();
                v249 = v248;

                v383 = v247;
                v384 = v249;
                v250 = v57;
                v251 = v376;
                sub_24AD5E514();

                if (qword_281065040 != -1)
                {
                  swift_once();
                }

                v252 = (v242 + 2 * v251);
                __swift_project_value_buffer(v250, qword_281065048);
                v253 = [v243 recordID];
                v363 = v242;
                v254 = v250;
                v255 = v253;
                v256 = v243;
                v257 = [v253 zoneID];

                v258 = [v257 zoneName];
                v259 = sub_24AD5E844();
                v261 = v260;

                v383 = v259;
                v384 = v261;
                v341 = v252;
                sub_24AD5E514();

                if (qword_281065020 != -1)
                {
                  swift_once();
                }

                v262 = v254;
                __swift_project_value_buffer(v254, qword_281065028);
                v263 = [v256 recordID];
                v264 = [v263 zoneID];

                v265 = [v264 ownerName];
                v266 = sub_24AD5E844();
                v268 = v267;

                v383 = v266;
                v384 = v268;
                v340 = 3 * v251;
                v269 = v363;
                sub_24AD5E514();

                if (qword_2810650E0 != -1)
                {
                  swift_once();
                }

                v270 = __swift_project_value_buffer(v262, qword_2810650E8);
                (*v351)(v354, v270, v262);
                v271 = [v256 recordChangeTag];
                v272 = v335;
                if (v271)
                {
                  v273 = v271;
                  v274 = sub_24AD5E844();
                  v276 = v275;
                }

                else
                {
                  v274 = 0;
                  v276 = 0xE000000000000000;
                }

                v277 = v344;
                v383 = v274;
                v384 = v276;
                v334 = v269 + 4 * v376;
                v278 = v354;
                sub_24AD5E514();

                (*v350)(v278, v262);
                if (qword_281065100 != -1)
                {
                  swift_once();
                }

                v279 = v360;
                v280 = __swift_project_value_buffer(v360, qword_281065108);
                v281 = *v372;
                (*v372)(v277, v280, v279);
                v282 = [v256 creationDate];
                v283 = v345;
                if (v282)
                {
                  v284 = v282;
                  sub_24AD5E3A4();

                  v285 = *v359;
                  v286 = v338;
                  v287 = v356;
                  (*v359)(v338, v283, v356);
                  v288 = *v373;
                  (*v373)(v286, 0, 1, v287);
                  v289 = v286;
                  v290 = v287;
                  v277 = v344;
                  v285(v272, v289, v290);
                  v256 = v374;
                }

                else
                {
                  v288 = *v373;
                  v291 = v338;
                  v290 = v356;
                  (*v373)(v338, 1, 1, v356);
                  sub_24AD5E3B4();
                  if ((*v329)(v291, 1, v290) != 1)
                  {
                    sub_24AD06518(v291, &qword_27EFA5F58, &qword_24AD5FE20);
                  }
                }

                v333 = 5 * v376;
                sub_24AD5E514();
                v292 = v272;
                v293 = *v367;
                (*v367)(v292, v290);
                v294 = *v366;
                v295 = v360;
                (*v366)(v277, v360);
                if (qword_2810650C0 != -1)
                {
                  swift_once();
                }

                v296 = __swift_project_value_buffer(v295, qword_2810650C8);
                v281(v355, v296, v295);
                v297 = [v256 modificationDate];
                if (v297)
                {
                  v298 = v345;
                  v299 = v297;
                  sub_24AD5E3A4();

                  v300 = *v359;
                  v301 = v339;
                  v302 = v298;
                  v303 = v356;
                  (*v359)(v339, v302, v356);
                  v288(v301, 0, 1, v303);
                  v304 = v337;
                  v300(v337, v301, v303);
                  v256 = v374;
                }

                else
                {
                  v305 = v339;
                  v303 = v356;
                  v288(v339, 1, 1, v356);
                  v304 = v337;
                  sub_24AD5E3B4();
                  if ((*v329)(v305, 1, v303) != 1)
                  {
                    sub_24AD06518(v305, &qword_27EFA5F58, &qword_24AD5FE20);
                  }
                }

                v306 = v269 + 6 * v376;
                v307 = v355;
                sub_24AD5E514();
                v293(v304, v303);
                v294(v307, v360);
                if (qword_281065080 != -1)
                {
                  swift_once();
                }

                v308 = v364;
                v309 = __swift_project_value_buffer(v364, qword_281065088);
                v310 = v336;
                (*v348)(v336, v309, v308);
                v311 = v382;
                v312 = sub_24ACFF564();
                v80 = v311;
                if (v311)
                {

                  (*v349)(v310, v308);
                  (*v371)(v330, v379);
                  (*v357)(v346, v381);
                  v319 = *(v342 + 8);
                  v320 = v306;
                  v321 = v343;
                  v319(v320, v343);
                  v319(v269 + v333, v321);
                  v319(v334, v321);
                  v319(v269 + v340, v321);
                  v319(v341, v321);
                  v319(v269 + v376, v321);
                  v319(v269, v321);
                  *(v365 + 2) = 0;

                  return;
                }

                v383 = v312;
                v384 = v313;
                sub_24AD5E514();
                sub_24AD06204(v383, v384);
                (*v349)(v310, v308);
                v314 = v324;
                v131 = v330;
                v55 = v381;
                v89 = v346;
                sub_24AD5E5C4();

                (*v371)(v131, v379);
                (*v357)(v89, v55);
                sub_24AD5E434();
                (*v368)(v314, v375);

                v200 = v362 + 1;
                v56 = v331;
                v57 = v380;
                v130 = v332;
                if (v361 == v331)
                {
                  return;
                }
              }
            }
          }
        }

        return;
      }

LABEL_39:
      v373 = v106;
      v382 = v103;
      (*v369)(v57, v370, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
      sub_24AD5E594();
      v110 = swift_allocObject();
      v110[1] = v332;
      if (qword_281065040 != -1)
      {
        v128 = v110;
        swift_once();
        v110 = v128;
      }

      v357 = v110;
      v111 = v380;
      __swift_project_value_buffer(v380, qword_281065048);
      v112 = v373;
      v113 = [v373 zoneName];
      v114 = sub_24AD5E844();
      v116 = v115;

      v383 = v114;
      v384 = v116;
      sub_24AD5E514();

      if (qword_281065020 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v111, qword_281065028);
      v117 = [v112 ownerName];
      v118 = sub_24AD5E844();
      v120 = v119;

      v383 = v118;
      v384 = v120;
      sub_24AD5E514();

      if (qword_281065140 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v364, qword_281065148);
      v121 = v372;
      v122 = [v372 data];
      v123 = sub_24AD5E394();
      v125 = v124;

      v383 = v123;
      v384 = v125;
      sub_24AD5E514();
      sub_24AD06204(v383, v384);
      v126 = v341;
      v57 = v376;
      v55 = v381;
      sub_24AD5E5C4();

      v56 = v379;
      (*v371)(v57, v379);
      v127 = v382;
      sub_24AD5E434();
      v80 = v127;
      if (v127)
      {
        (*v368)(v126, v375);

        sub_24ACF40D8(v334);
        return;
      }

      (*v368)(v126, v375);

      v96 = v102;
      v98 = v359;
      v89 = v380;
    }

    v100 = v96;
    v101 = v98;
    v102 = v96;
    if (v98)
    {
LABEL_35:
      v103 = v80;
      v343 = v98;
      v359 = ((v101 - 1) & v101);
      v104 = (v102 << 9) | (8 * __clz(__rbit64(v101)));
      v105 = *(*(v334 + 56) + v104);
      v106 = *(*(v334 + 48) + v104);
      v372 = v105;
      if (!v106)
      {
        goto LABEL_130;
      }

      goto LABEL_39;
    }

    while (1)
    {
      v102 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      if (v102 >= v97)
      {
        goto LABEL_47;
      }

      v101 = *(v340 + 8 * v102);
      ++v100;
      if (v101)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    swift_once();
LABEL_8:
    __swift_project_value_buffer(v380, qword_2810650A8);
    v66 = *v361;
    v67 = [*v361 containerIdentifier];
    v68 = sub_24AD5E844();
    v70 = v69;

    v383 = v68;
    v384 = v70;
    sub_24AD5E514();

    if (qword_281065120 != -1)
    {
      swift_once();
    }

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v71, qword_281065128);
    v383 = [v66 environment];
    sub_24AD5E514();
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, qword_281065068);
    v383 = v361[8];
    sub_24AD5E514();
    if (qword_281065140 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v364, qword_281065148);
    v72 = [v57 data];
    v73 = sub_24AD5E394();
    v75 = v74;

    v383 = v73;
    v384 = v75;
    sub_24AD5E514();
    sub_24AD06204(v383, v384);
    v76 = v371;
    v77 = v57;
    v57 = v376;
    sub_24AD5E5C4();

    v78 = v373;
    v56 = v379;
    (v373[1])(v57, v379);
    v79 = v382;
    sub_24AD5E434();
    v80 = v79;
    if (!v79)
    {
      (*(v372 + 1))(v76, v375);

      v62 = v361;
      v87 = v78;
      continue;
    }

    break;
  }

  (*(v372 + 1))(v76, v375);
}

void *sub_24ACFF564()
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = objc_opt_self();
  if (v1)
  {
    v10[0] = 0;
    v3 = v2;
    v4 = v0;
    v5 = [v3 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v10];
    v6 = v10[0];
    if (!v5)
    {
      v1 = v6;
      sub_24AD5E334();

      swift_willThrow();
      return v1;
    }

    v1 = sub_24AD5E394();
  }

  else
  {
    v10[0] = 0;
    v4 = [v2 archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v10];
    v7 = v10[0];
    if (!v4)
    {
      v8 = v7;
      sub_24AD5E334();

      swift_willThrow();
      return v1;
    }

    v1 = sub_24AD5E394();
  }

  return v1;
}

char *sub_24ACFF6E0()
{

  v1 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_logger;
  v2 = sub_24AD5E7A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_databaseChangeTokenTable;
  v4 = sub_24AD5E554();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_zoneChangeTokensTable, v4);
  v5(v0 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable, v4);
  v5(v0 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable, v4);
  v6 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v7 = sub_24AD5E364();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24ACFF85C()
{
  sub_24ACFF6E0();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CloudKitCacheDatabase(uint64_t a1)
{
  result = qword_281064FC8;
  if (!qword_281064FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACFF8DC(uint64_t a1)
{
  result = sub_24AD5E7A4();
  if (v2 <= 0x3F)
  {
    result = sub_24AD5E554();
    if (v3 <= 0x3F)
    {
      result = sub_24AD5E364();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_24ACFFA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v4 = sub_24AD5E364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACFFB0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

void sub_24ACFFBA8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = sub_24AD5E674();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_24ACFFC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE0, &qword_24AD5FDC8);
  v1 = sub_24AD5E674();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AD5F820;
  v5 = *(v0 + 120);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  (*(v2 + 16))(v4 + v3, v5 + v6, v1);
  os_unfair_lock_unlock((v5 + v7));
  sub_24AD5E1B4();
}

uint64_t sub_24ACFFE28()
{
  sub_24AD5ED34();

  MEMORY[0x24C22E570](0xD000000000000011, 0x800000024AD61940);
  sub_24AD5E344();

  MEMORY[0x24C22E570](1835561773, 0xE400000000000000);
  sub_24AD5E344();

  MEMORY[0x24C22E570](1818326829, 0xE400000000000000);
  sub_24AD5E344();
}

uint64_t sub_24ACFFFA8()
{
  v1 = sub_24AD5E674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 120);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v12 = *(v2 + 8);
  v12((v5 + v6), v1);
  v8 = *MEMORY[0x277D09500];
  v9 = *(v2 + 104);
  v9((v5 + v6), v8, v1);
  os_unfair_lock_unlock((v5 + v7));
  v9(v4, v8, v1);
  sub_24AD5E1A4();
  return v12(v4, v1);
}

uint64_t sub_24AD0015C(int a1, int a2, uint64_t a3)
{
  v5 = sub_24AD5E404();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281065000 != -1)
  {
    swift_once();
  }

  v9 = sub_24AD5E7A4();
  __swift_project_value_buffer(v9, qword_281065470);
  v10 = sub_24AD5E784();
  v11 = sub_24AD5EB64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2;
    _os_log_impl(&dword_24ACF2000, v10, v11, "Migrate schema %d -> %d", v12, 0xEu);
    MEMORY[0x24C22F400](v12, -1, -1);
  }

  if (a2 == 2)
  {
    MEMORY[0x28223BE20](v13);
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v6 + 8))(v8, v5);
LABEL_7:
    sub_24AD5E474();
  }

  if (a2 == 1)
  {
    v15 = v18[1];
    result = sub_24AD5E454();
    if (!v15)
    {
      v16 = sub_24AD5E454();
      MEMORY[0x28223BE20](v16);
      sub_24AD5E3F4();
      sub_24AD5E3E4();
      (*(v6 + 8))(v8, v5);
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_24AD5ED34();

    v19 = 0xD000000000000013;
    v20 = 0x800000024AD61870;
    v21 = a2;
    v17 = sub_24AD5EF74();
    MEMORY[0x24C22E570](v17);

    result = sub_24AD5EEC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD005CC()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  return sub_24AD5E684();
}

uint64_t sub_24AD00638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for CloudKitCacheDatabase(0);
  v3 = sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *v1 = v0;
  v1[1] = sub_24AD0071C;

  return MEMORY[0x28215FD40](v2, v3);
}

uint64_t sub_24AD0071C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_24AD00820()
{
  sub_24AD5E544();
  sub_24AD5E414();
  if (v0)
  {
  }

  sub_24AD5E544();
  sub_24AD5E414();

  sub_24AD5E544();
  sub_24AD5E414();
}

uint64_t sub_24AD009A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v31 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC8, &qword_24AD5FDB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  if (qword_2810650A0 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v12 = __swift_project_value_buffer(v11, qword_2810650A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  v35 = *(v11 - 8);
  v15 = *(v35 + 56);
  v37 = v11;
  v15(v7, 1, 1, v11);
  v36 = v12;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065120 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  v17 = __swift_project_value_buffer(v16, qword_281065128);
  v14(v10, 1, 1, v13);
  v33 = *(v16 - 8);
  v18 = *(v33 + 56);
  v18(v4, 1, 1, v16);
  v34 = v17;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5EC8, &qword_24AD5FDB8);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065060 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v16, qword_281065068);
  v14(v10, 1, 1, v13);
  v18(v4, 1, 1, v16);
  v32 = v19;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5EC8, &qword_24AD5FDB8);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065140 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v20, qword_281065148);
  v14(v10, 1, 1, v13);
  v21 = v38;
  (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
  sub_24AD5E4C4();
  sub_24AD06518(v21, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24AD5F840;
  v23 = v37;
  *(v22 + 56) = v37;
  v24 = MEMORY[0x277D6AF10];
  *(v22 + 64) = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  (*(v35 + 16))(boxed_opaque_existential_1, v36, v23);
  *(v22 + 96) = v16;
  v26 = sub_24AD062C8(&qword_2810653B0, &qword_27EFA5ED0, &qword_24AD5FDC0, v24);
  *(v22 + 104) = v26;
  v27 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  v28 = *(v33 + 16);
  v28(v27, v34, v16);
  *(v22 + 136) = v16;
  *(v22 + 144) = v26;
  v29 = __swift_allocate_boxed_opaque_existential_1((v22 + 112));
  v28(v29, v32, v16);
  MEMORY[0x24C22E1C0](v22);
}

uint64_t sub_24AD01068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70);
  MEMORY[0x28223BE20](v0 - 8);
  v24 = &v22 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v9 = __swift_project_value_buffer(v8, qword_281065048);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v25 = *(*(v10 - 8) + 56);
  v25(v7, 1, 1, v10);
  v11 = *(v8 - 8);
  v12 = *(v11 + 56);
  v12(v4, 1, 1, v8);
  v23 = v9;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_281065028);
  v25(v7, 1, 1, v10);
  v12(v4, 1, 1, v8);
  v22 = v13;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065140 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v14, qword_281065148);
  v25(v7, 1, 1, v10);
  v15 = v24;
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  sub_24AD5E4C4();
  sub_24AD06518(v15, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24AD5F810;
  *(v16 + 56) = v8;
  v17 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  *(v16 + 64) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  v19 = *(v11 + 16);
  v19(boxed_opaque_existential_1, v23, v8);
  *(v16 + 96) = v8;
  *(v16 + 104) = v17;
  v20 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  v19(v20, v22, v8);
  MEMORY[0x24C22E1C0](v16);
}

uint64_t sub_24AD01584()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = &v34 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E88, &qword_24AD5FD78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v12 = __swift_project_value_buffer(v11, qword_281065168);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v41 = v14 + 56;
  v15(v10, 1, 1, v13);
  v38 = *(v11 - 8);
  v16 = *(v38 + 56);
  v16(v7, 1, 1, v11);
  v37 = v12;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_281065188);
  v15(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v36 = v17;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_281065048);
  v15(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v35 = v18;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  v19 = v15;
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v20 = v4;
  v21 = __swift_project_value_buffer(v11, qword_281065028);
  v19(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v34 = v21;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_2810650E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_2810650E8);
  v19(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065100 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_project_value_buffer(v22, qword_281065108);
  v19(v10, 1, 1, v13);
  v23 = *(*(v22 - 8) + 56);
  v40 = v19;
  v23(v20, 1, 1, v22);
  sub_24AD5E3C4();
  sub_24AD5E4C4();
  sub_24AD06518(v20, &qword_27EFA5E88, &qword_24AD5FD78);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_2810650C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v22, qword_2810650C8);
  v40(v10, 1, 1, v13);
  v23(v20, 1, 1, v22);
  sub_24AD5E4C4();
  sub_24AD06518(v20, &qword_27EFA5E88, &qword_24AD5FD78);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065080 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v24, qword_281065088);
  v40(v10, 1, 1, v13);
  v25 = v39;
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  sub_24AD5E4C4();
  sub_24AD06518(v25, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24AD5F830;
  *(v26 + 56) = v11;
  v27 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  *(v26 + 64) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  v29 = *(v38 + 16);
  v29(boxed_opaque_existential_1, v37, v11);
  *(v26 + 96) = v11;
  *(v26 + 104) = v27;
  v30 = __swift_allocate_boxed_opaque_existential_1((v26 + 72));
  v29(v30, v36, v11);
  *(v26 + 136) = v11;
  *(v26 + 144) = v27;
  v31 = __swift_allocate_boxed_opaque_existential_1((v26 + 112));
  v29(v31, v35, v11);
  *(v26 + 176) = v11;
  *(v26 + 184) = v27;
  v32 = __swift_allocate_boxed_opaque_existential_1((v26 + 152));
  v29(v32, v34, v11);
  MEMORY[0x24C22E1C0](v26);
}

uint64_t sub_24AD01F98()
{
  sub_24AD5E544();
  sub_24AD5E414();
  if (v0)
  {
  }
}

uint64_t sub_24AD0203C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v7 = __swift_project_value_buffer(v6, qword_281065048);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v18 = *(*(v8 - 8) + 56);
  v18(v5, 1, 1, v8);
  v9 = *(v6 - 8);
  v10 = *(v9 + 56);
  v10(v2, 1, 1, v6);
  v19 = v7;
  sub_24AD5E4C4();
  sub_24AD06518(v2, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v5, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281065028);
  v18(v5, 1, 1, v8);
  v10(v2, 1, 1, v6);
  sub_24AD5E4C4();
  sub_24AD06518(v2, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v5, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24AD5F810;
  *(v12 + 56) = v6;
  v13 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF10]);
  *(v12 + 64) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  v15 = *(v9 + 16);
  v15(boxed_opaque_existential_1, v19, v6);
  *(v12 + 96) = v6;
  *(v12 + 104) = v13;
  v16 = __swift_allocate_boxed_opaque_existential_1((v12 + 72));
  v15(v16, v11, v6);
  MEMORY[0x24C22E1C0](v12);
}

uint64_t sub_24AD023FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_2810650A8);
  __swift_project_value_buffer(v0, qword_2810650A8);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD024BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  __swift_allocate_value_buffer(v0, qword_281065128);
  __swift_project_value_buffer(v0, qword_281065128);
  sub_24AD062C8(&qword_2810653B8, &qword_27EFA5ED0, &qword_24AD5FDC0, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  __swift_allocate_value_buffer(v0, qword_281065068);
  __swift_project_value_buffer(v0, qword_281065068);
  sub_24AD062C8(&qword_2810653B8, &qword_27EFA5ED0, &qword_24AD5FDC0, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD0262C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_allocate_value_buffer(v0, qword_281065148);
  __swift_project_value_buffer(v0, qword_281065148);
  sub_24AD062C8(&qword_2810653E0, &qword_27EFA5EB8, &qword_24AD5FDA8, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD026E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065168);
  __swift_project_value_buffer(v0, qword_281065168);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD027A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065188);
  __swift_project_value_buffer(v0, qword_281065188);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065048);
  __swift_project_value_buffer(v0, qword_281065048);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD0290C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065028);
  __swift_project_value_buffer(v0, qword_281065028);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD029C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_2810650E8);
  __swift_project_value_buffer(v0, qword_2810650E8);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_allocate_value_buffer(v0, qword_281065108);
  __swift_project_value_buffer(v0, qword_281065108);
  sub_24AD062C8(&qword_2810653D0, &qword_27EFA5EB0, &qword_24AD5FDA0, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02B40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_allocate_value_buffer(v0, qword_2810650C8);
  __swift_project_value_buffer(v0, qword_2810650C8);
  sub_24AD062C8(&qword_2810653D0, &qword_27EFA5EB0, &qword_24AD5FDA0, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_allocate_value_buffer(v0, qword_281065088);
  __swift_project_value_buffer(v0, qword_281065088);
  sub_24AD062C8(&qword_2810653E0, &qword_27EFA5EB8, &qword_24AD5FDA8, MEMORY[0x277D6AF08]);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02CB4()
{
  sub_24AD5F074();
  MEMORY[0x24C22ED70](0);
  return sub_24AD5F094();
}

uint64_t sub_24AD02D20(uint64_t a1)
{
  sub_24AD5F074();
  MEMORY[0x24C22ED70](0);
  return sub_24AD5F094();
}

uint64_t sub_24AD02D70()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065418);
  __swift_project_value_buffer(v0, qword_281065418);
  return sub_24AD5E794();
}

uint64_t sub_24AD02DF4(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A30, type metadata accessor for CKError, &unk_24AD5FAAC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24AD02E60(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A30, type metadata accessor for CKError, &unk_24AD5FAAC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24AD02ECC(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24AD02F58(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24AD02FC4(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24AD03030(void *a1, uint64_t a2)
{
  v4 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24AD030E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24AD03160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AD5F074();
  sub_24AD5E804();
  return sub_24AD5F094();
}

uint64_t sub_24AD031C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24AD0328C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AD03454()
{
  result = qword_281064A38;
  if (!qword_281064A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A38);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_24AD03814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_24AD5EEF4();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_24AD5EBF4();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_24AD03A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE0, &qword_24AD5FE98);
  v38 = v4;
  result = sub_24AD5EEF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_24AD06644(v25, v7);
      }

      else
      {
        sub_24AD065E0(v25, v7);
        v26 = v23;
      }

      result = sub_24AD5EBF4();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_24AD06644(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_24AD03D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
  v39 = v4;
  result = sub_24AD5EEF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = v22[2];
      v25 = *(v5 + 56) + 16 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v39 & 1) == 0)
      {

        v28 = v24;
        sub_24AD063F0(v26, v27);
      }

      sub_24AD5F074();
      sub_24AD5E874();
      sub_24AD5EC14();
      result = sub_24AD5F094();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v41;
      v16[1] = v23;
      v16[2] = v24;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24AD04070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F50, &qword_24AD5FE18);
  v35 = v4;
  result = sub_24AD5EEF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_24AD5EBF4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24AD04360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v12;
  v13 = sub_24AD5E404();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v58 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v52 = v10;
  result = sub_24AD5EEF4();
  v18 = result;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v48 = (v23 + 16);
    v49 = v23;
    v46 = v6;
    v47 = v11 + 16;
    v50 = v16;
    v51 = v11;
    v53 = (v11 + 32);
    v54 = (v23 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v55 = *(v23 + 72);
      v33 = v32 + v55 * v31;
      if (v52)
      {
        (*v54)(v58, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 32))(v56, v34 + v35 * v31, v57);
      }

      else
      {
        (*v48)(v58, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 16))(v56, v36 + v35 * v31, v57);
      }

      sub_24AD0328C(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24AD5E7F4();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v26 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v26 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v26 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v54)((*(v18 + 48) + v55 * v27), v58, v13);
      result = (*v53)(*(v18 + 56) + v35 * v27, v56, v57);
      ++*(v18 + 16);
      v23 = v49;
      v16 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_24AD04804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F38, &qword_24AD5FE00);
  v38 = v4;
  result = sub_24AD5EEF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_24AD06380(v25, v7);
      }

      else
      {
        sub_24AD06310(v25, v7);
        v26 = v23;
      }

      result = sub_24AD5EBF4();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_24AD06380(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_24AD04B18(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_24AD04B5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  result = sub_24AD06644(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_24AD04C2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_24AD5E404();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

id sub_24AD04D5C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AD5EEE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_24AD04EAC()
{
  v1 = v0;
  v2 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE0, &qword_24AD5FE98);
  v5 = *v0;
  v6 = sub_24AD5EEE4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_24AD065E0(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_24AD06644(v4, *(v7 + 56) + v22);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24AD050BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
  v2 = *v0;
  v3 = sub_24AD5EEE4();
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
        v18 = 24 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 24 * v17);
        v21 = v20[1];
        v22 = v20[2];
        v17 *= 16;
        v23 = *(v19 + v17);
        v24 = *(v19 + v17 + 8);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v25[2] = v22;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;

        v27 = v22;
        result = sub_24AD063F0(v23, v24);
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

void *sub_24AD0525C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F50, &qword_24AD5FE18);
  v2 = *v0;
  v3 = sub_24AD5EEE4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

char *sub_24AD05438(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v36 - v8;
  v45 = sub_24AD5E404();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_24AD5EEE4();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

id sub_24AD05784()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F38, &qword_24AD5FE00);
  v5 = *v0;
  v6 = sub_24AD5EEE4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_24AD06310(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_24AD06380(v4, *(v7 + 56) + v22);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_24AD0599C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24AD5E384();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_24AD5E334();

    swift_willThrow();
  }

  return v4;
}

id sub_24AD05A5C()
{
  if (qword_281065080 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v1, qword_281065088);
  sub_24AD5E534();
  v2 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_24AD0615C(v6, v7);
  v3 = sub_24AD0599C(v6, v7);
  sub_24AD06204(v6, v7);
  if (v0)
  {
    sub_24AD06204(v6, v7);
  }

  else
  {
    [v3 _enableStrictSecureDecodingMode];
    sub_24AD06578(0, &qword_27EFA5F10, 0x277CCAAC8);
    sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
    v4 = sub_24AD5EB84();
    v2 = v4;
    if (v4)
    {

      sub_24AD06204(v6, v7);
    }

    else
    {
      sub_24AD06274();
      swift_allocError();
      swift_willThrow();
      sub_24AD06204(v6, v7);
    }
  }

  return v2;
}

void sub_24AD05C18(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  sub_24AD06578(0, &qword_27EFA5F70, 0x277CBC680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F78, &qword_24AD5FE38);
  [v2 addObject_];
  swift_unknownObjectRelease();
  sub_24AD06578(0, &qword_27EFA5F80, 0x277CBC2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F88, &qword_24AD5FE40);
  [v2 addObject_];
  swift_unknownObjectRelease();
  v6 = 0;
  v3 = v2;
  sub_24AD5EA04();

  v4 = sub_24AD5E114();
  sub_24AD0328C(&qword_27EFA5F90, MEMORY[0x277D08938], MEMORY[0x277D08940]);
  swift_allocError();
  *v5 = 0xD000000000000032;
  v5[1] = 0x800000024AD61960;
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D08930], v4);
  swift_willThrow();
}

uint64_t sub_24AD05F28()
{
  v1 = sub_24AD5E1D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24AD5E1F4();
  if (!v0 && v6 >> 60 == 15)
  {
    v7 = MEMORY[0x24C22E060](32);
    v9 = v8;
    v11[0] = v7;
    v11[1] = v8;
    (*(v2 + 104))(v4, *MEMORY[0x277D08A30], v1);
    v12 = v7;
    sub_24AD0615C(v7, v9);
    sub_24AD061B0();
    sub_24AD5E1E4();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_24AD06204(v12, v9);
    return v10;
  }

  return result;
}

uint64_t sub_24AD0615C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24AD061B0()
{
  result = qword_27EFA5ED8;
  if (!qword_27EFA5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5ED8);
  }

  return result;
}

uint64_t sub_24AD06204(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24AD06274()
{
  result = qword_27EFA5F20;
  if (!qword_27EFA5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5F20);
  }

  return result;
}

uint64_t sub_24AD062C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24AD06310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD06380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_24AD063F0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_24AD06518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD06578(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24AD065E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD06644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD066B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD066D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_24AD06728(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudKitCacheDatabase.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CloudKitCacheDatabase.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24AD06864()
{
  result = qword_27EFA5FF8;
  if (!qword_27EFA5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5FF8);
  }

  return result;
}

void *CloudKitStateChange.databaseChangeToken.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t CloudKitStateChange.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v20 = *(v0 + 64);
  if (v2)
  {
    v4 = v2;
    v5 = [v4 description];
    v6 = sub_24AD5E844();
    v8 = v7;
  }

  else
  {
    v8 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  sub_24AD5ED34();
  MEMORY[0x24C22E570](0x6E6961746E6F635BLL, 0xEC000000203A7265);
  v9 = [v1 description];
  v10 = sub_24AD5E844();
  v12 = v11;

  MEMORY[0x24C22E570](v10, v12);

  MEMORY[0x24C22E570](0x6E656B6F54626420, 0xEB000000005B203ALL);
  MEMORY[0x24C22E570](v6, v8);

  MEMORY[0x24C22E570](0xD000000000000011, 0x800000024AD619C0);
  v13 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v13);

  MEMORY[0x24C22E570](0x65696669646F6D20, 0xEB00000000203A64);
  if (v3 >> 62)
  {
    sub_24AD5EC94();
  }

  v14 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v14);

  MEMORY[0x24C22E570](0x646574656C656420, 0xEA0000000000203ALL);
  v15 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v15);

  MEMORY[0x24C22E570](0x6B6F54656E6F7A20, 0xED0000203A736E65);
  v16 = sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD06578(0, &qword_281064980, 0x277CBC670);
  sub_24AD06C8C();
  v17 = sub_24AD5E7D4();
  MEMORY[0x24C22E570](v17);

  MEMORY[0x24C22E570](0x6E6F5A74736F6C20, 0xEC000000203A7365);
  v18 = MEMORY[0x24C22E5C0](v20, v16);
  MEMORY[0x24C22E570](v18);

  return 0;
}

unint64_t sub_24AD06C8C()
{
  result = qword_281064990;
  if (!qword_281064990)
  {
    sub_24AD06578(255, &qword_281064998, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064990);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AD06D1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24AD06D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24AD06DC4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6008, &qword_24AD60098);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6008, &qword_24AD60098);
    sub_24AD09F3C(a2, v7);

    sub_24AD06518(v7, &qword_27EFA6008, &qword_24AD60098);
  }

  else
  {
    sub_24AD06644(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24AD0B448(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t sub_24AD06F68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6058, &unk_24AD60260);
    sub_24AD0A090(a2, &qword_27EFA5FA0, &qword_24AD5FE50, sub_24AD053CC, v7);
    v12 = sub_24AD5E404();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_24AD06518(v7, &qword_27EFA6058, &unk_24AD60260);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AD0B5AC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_24AD5E404();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24AD071C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6068, &qword_24AD614A0);
    sub_24AD0A090(a2, &qword_27EFA5FD0, &unk_24AD60290, sub_24AD053F0, v7);
    v12 = sub_24AD5E404();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_24AD06518(v7, &qword_27EFA6068, &qword_24AD614A0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AD0B7BC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_24AD5E404();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24AD07418(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6060, &qword_24AD60278);
    sub_24AD0A090(a2, &qword_27EFA5FC0, &unk_24AD60280, sub_24AD05414, v7);
    v12 = sub_24AD5E404();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_24AD06518(v7, &qword_27EFA6060, &qword_24AD60278);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AD0B9CC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_24AD5E404();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t CloudKitChangeSet.recordsToSave.getter()
{
  type metadata accessor for CloudKitChangeSet(0);
}

uint64_t CloudKitChangeSet.recordIDsToDelete.getter()
{
  type metadata accessor for CloudKitChangeSet(0);
}

uint64_t sub_24AD07718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_24AD5E404();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD077DC, 0, 0);
}

uint64_t sub_24AD077DC()
{
  v1 = v0[12];
  v2 = v0[13];
  type metadata accessor for CloudKitChangeSet.Adaptor();
  v3 = swift_allocObject();
  v0[18] = v3;
  v4 = MEMORY[0x277D84F98];
  v3[3] = MEMORY[0x277D84F98];
  v3[4] = v4;
  v3[2] = v1;

  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24AD07904;

  return v7(v3);
}

uint64_t sub_24AD07904()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24AD07C2C;
  }

  else
  {
    v2 = sub_24AD07A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD07A18()
{
  v1 = v0[18];
  swift_beginAccess();
  if (*(*(v1 + 24) + 16))
  {
    goto LABEL_4;
  }

  v2 = v0[18];
  swift_beginAccess();
  v3 = *(v2 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_24AD5EC94();

    if (v4)
    {
LABEL_4:
      v6 = v0[17];
      v5 = v0[18];
      v7 = v0[15];
      v8 = v0[16];
      v9 = v0[11];
      v10 = v0[12];
      sub_24AD5E3F4();
      swift_beginAccess();

      v12 = sub_24AD32A2C(v11);

      v13 = *(v5 + 24);

      *v9 = v10;
      v14 = type metadata accessor for CloudKitChangeSet(0);
      (*(v8 + 32))(&v9[v14[5]], v6, v7);
      *&v9[v14[6]] = v12;
      *&v9[v14[7]] = v13;
      (*(*(v14 - 1) + 56))(v9, 0, 1, v14);
      goto LABEL_5;
    }
  }

  else if (*(v3 + 16))
  {
    goto LABEL_4;
  }

  v17 = v0[11];

  v18 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
LABEL_5:

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AD07C2C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t CloudKitChangeSet.description.getter()
{
  sub_24AD5ED34();

  v1 = type metadata accessor for CloudKitChangeSet(0);
  v2 = sub_24AD5E3E4();
  MEMORY[0x24C22E570](v2);

  MEMORY[0x24C22E570](0x203A65766173203ALL, 0xE800000000000000);
  if (*(v0 + *(v1 + 24)) >> 62)
  {
    sub_24AD5EC94();
  }

  v3 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v3);

  MEMORY[0x24C22E570](0x3A6574656C656420, 0xE900000000000020);
  v4 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v4);

  MEMORY[0x24C22E570](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_24AD07E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AD5E404();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CloudKitChangeSet.Adaptor.create<A>(record:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_24AD07EC4, 0, 0);
}

uint64_t sub_24AD07EC4()
{
  v1 = *(v0[14] + 16);
  v6 = (*(v0[13] + 88) + **(v0[13] + 88));
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24AD07FDC;
  v3 = v0[12];
  v4 = v0[13];

  return v6(v1, v3, v4);
}

uint64_t sub_24AD07FDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD08110, 0, 0);
  }
}

uint64_t sub_24AD08110()
{
  v1 = [*(v0 + 128) recordChangeTag];
  if (v1)
  {
    v2 = *(v0 + 128);

    sub_24AD0AE88();
    swift_allocError();
    v4 = 1;
LABEL_13:
    *v3 = v4;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_14;
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  swift_beginAccess();
  v7 = *(v6 + 32);

  v8 = [v5 recordID];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = v8;
    v10 = sub_24AD5EEB4();

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else if (*(v7 + 16))
  {
    v11 = v8;
    sub_24AD09620(v8);
    v13 = v12;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  swift_beginAccess();
  v16 = *(v15 + 24);

  v17 = [v14 recordID];
  if (*(v16 + 16))
  {
    v18 = v17;
    sub_24AD09620(v17);
    v20 = v19;

    if (v20)
    {
LABEL_12:
      v2 = *(v0 + 128);
      sub_24AD0AE88();
      swift_allocError();
      v4 = 4;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v23 = [*(v0 + 128) recordID];
  swift_beginAccess();
  v24 = *(v6 + 32);
  v25 = *(v0 + 128);
  if ((v24 & 0xC000000000000001) != 0)
  {
    if (v24 < 0)
    {
      v26 = *(v6 + 32);
    }

    else
    {
      v26 = v24 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = v25;
    result = sub_24AD5EC94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *(v6 + 32) = sub_24AD0A4A8(v26, result + 1);
    v28 = *(v0 + 128);
  }

  else
  {
    v28 = v25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v6 + 32);
  sub_24AD0AD44(v28, v23, isUniquelyReferenced_nonNull_native);
  *(v6 + 32) = v30;

  swift_endAccess();
  v21 = *(v0 + 8);
LABEL_14:

  return v21();
}

uint64_t CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v8 = sub_24AD5EC34();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = *(a4 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD08508, 0, 0);
}

uint64_t sub_24AD08508()
{
  v1 = *(v0[20] + 16);
  v6 = (*(v0[19] + 88) + **(v0[19] + 88));
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_24AD08620;
  v3 = v0[18];
  v4 = v0[19];

  return v6(v1, v3, v4);
}

uint64_t sub_24AD08620(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_24AD08C68;
  }

  else
  {
    v4 = sub_24AD08734;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD08734()
{
  v1 = *(v0 + 216);
  *(v0 + 112) = v1;
  v2 = [v1 recordChangeTag];
  if (!v2)
  {
    v9 = *(v0 + 216);
    sub_24AD0AE88();
    swift_allocError();
    v11 = 2;
LABEL_13:
    *v10 = v11;
    swift_willThrow();

    v23 = *(v0 + 8);
    goto LABEL_32;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 160);

  swift_beginAccess();
  v5 = *(v4 + 32);

  v6 = [v3 recordID];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = v6;
    v8 = sub_24AD5EEB4();

    if (v8)
    {
      goto LABEL_12;
    }
  }

  else if (*(v5 + 16))
  {
    v12 = v6;
    sub_24AD09620(v6);
    v14 = v13;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 160);
  swift_beginAccess();
  v17 = *(v16 + 24);

  v18 = [v15 recordID];
  if (*(v17 + 16))
  {
    v19 = v18;
    sub_24AD09620(v18);
    v21 = v20;

    if (v21)
    {
LABEL_12:
      v9 = *(v0 + 216);
      sub_24AD0AE88();
      swift_allocError();
      v11 = 4;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (MEMORY[0x24C22DDC0](v22))
  {
    v24 = *(v0 + 216);
    v25 = [v24 valueStore];
    [v25 resetChangedKeys];

    v26 = [v24 encryptedValueStore];
    [v26 resetChangedKeys];
  }

  v27 = [*(v0 + 216) recordID];
  swift_beginAccess();
  v28 = sub_24AD08CD8(v27, *(v4 + 32));

  if (v28)
  {
    v29 = *(v0 + 224);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);
    swift_endAccess();
    (*(v30 + 80))(v28, v31, v30);
    if (!v29)
    {
      v38 = *(v0 + 192);
      v37 = *(v0 + 200);
      v39 = *(v0 + 184);
      v40 = *(v0 + 144);
      (*(v38 + 56))(v39, 0, 1, v40);
      (*(v38 + 32))(v37, v39, v40);
      goto LABEL_23;
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 192);
    v34 = *(v0 + 168);
    v35 = *(v0 + 176);
    v36 = *(v0 + 144);

    (*(v33 + 56))(v32, 1, 1, v36);
    (*(v35 + 8))(v32, v34);
  }

  else
  {
    swift_endAccess();
  }

  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 120), *(v0 + 144));
LABEL_23:
  v41 = *(v0 + 200);
  v43 = *(v0 + 144);
  v42 = *(v0 + 152);
  (*(v0 + 128))(v41);
  (*(v42 + 104))(v0 + 112, v41, v43, v42, v43, v42);
  v44 = sub_24AD5E824();
  v45 = *(v0 + 112);
  if ((v44 & 1) == 0)
  {
    v46 = v45;
    v47 = [v46 recordID];
    swift_beginAccess();
    v48 = *(v4 + 32);
    if ((v48 & 0xC000000000000001) != 0)
    {
      if (v48 < 0)
      {
        v49 = *(v4 + 32);
      }

      else
      {
        v49 = v48 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_24AD5EC94();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v4 + 32) = sub_24AD0A4A8(v49, result + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v4 + 32);
    sub_24AD0AD44(v46, v47, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v52;

    swift_endAccess();
  }

  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 144));

  v23 = *(v0 + 8);
LABEL_32:

  return v23();
}

uint64_t sub_24AD08C68()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24AD08CD8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24AD5EE94();

    if (v4)
    {
      sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24AD09620(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t CloudKitChangeSet.Adaptor.delete<A>(record:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6008, &qword_24AD60098);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD08E3C, 0, 0);
}

uint64_t sub_24AD08E3C()
{
  v1 = *(v0[14] + 16);
  v6 = (*(v0[13] + 88) + **(v0[13] + 88));
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24AD08F54;
  v3 = v0[12];
  v4 = v0[13];

  return v6(v1, v3, v4);
}

uint64_t sub_24AD08F54(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD090A4, 0, 0);
  }
}

uint64_t sub_24AD090A4()
{
  v1 = [*(v0 + 136) recordChangeTag];
  if (!v1)
  {
    v8 = *(v0 + 136);
    sub_24AD0AE88();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
LABEL_11:

    v15 = *(v0 + 8);
    goto LABEL_13;
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  v4 = [v2 recordID];
  swift_beginAccess();
  v5 = *(v3 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = v4;
    v7 = sub_24AD5EEB4();
  }

  else
  {
    if (!*(v5 + 16))
    {
      goto LABEL_8;
    }

    sub_24AD09620(v4);
    v7 = v10;
  }

  if (v7)
  {
LABEL_10:
    v8 = *(v0 + 136);
    sub_24AD0AE88();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();

    goto LABEL_11;
  }

LABEL_8:
  v11 = *(v0 + 112);
  swift_beginAccess();
  if (*(*(v11 + 24) + 16))
  {

    sub_24AD09620(v4);
    v13 = v12;

    if (v13)
    {
      goto LABEL_10;
    }
  }

  v25 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);
  v24 = *(v0 + 96);
  v18 = sub_24AD5EBE4();
  v20 = v19;
  v21 = *(v17 + 40);
  v22 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v21(v24, v17);
  *v16 = v18;
  v16[1] = v20;
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  swift_beginAccess();
  sub_24AD06DC4(v16, v4);
  swift_endAccess();

  v15 = *(v0 + 8);
LABEL_13:

  return v15();
}

void *CloudKitChangeSet.Adaptor.deinit()
{

  return v0;
}

uint64_t CloudKitChangeSet.Adaptor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CloudKitChangeSet.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t _s14FindMyCloudKit0cD7StorageC5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t sub_24AD094C0(uint64_t a1)
{
  v2 = *v1;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v2);
  return sub_24AD5F094();
}

uint64_t CloudKitChangeSet.TombstoneInfo.recordType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24AD0954C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_24AD5E404();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24AD09670(uint64_t a1)
{
  v2 = a1;
  v3 = sub_24AD393EC(*(v1 + 40), a1);

  return sub_24AD099BC(v2, v3);
}

unint64_t sub_24AD096B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  v6 = sub_24AD5F094();

  return sub_24AD09C70(a1, a2, a3, v6);
}

unint64_t sub_24AD09748(uint64_t a1)
{
  sub_24AD5E404();
  v2 = MEMORY[0x277CC95F0];
  sub_24AD0BBDC(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_24AD5E7F4();
  return sub_24AD09D9C(a1, v3, MEMORY[0x277CC95F0], &qword_2810653F0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_24AD0981C(uint64_t a1)
{
  sub_24AD5E364();
  v2 = MEMORY[0x277CC9260];
  sub_24AD0BBDC(&qword_27EFA6048, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_24AD5E7F4();
  return sub_24AD09D9C(a1, v3, MEMORY[0x277CC9260], &qword_27EFA6050, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_24AD098F0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_24AD06578(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_24AD5EC04();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_24AD099BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x444965706F6373;
          }

          else
          {
            v7 = 0x4449656E6F7ALL;
          }

          if (v6 == 1)
          {
            v8 = 0xE700000000000000;
          }

          else
          {
            v8 = 0xE600000000000000;
          }
        }

        else
        {
          v7 = 0x656E6961746E6F63;
          v8 = 0xEB00000000444972;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000011;
          v8 = 0x800000024AD616F0;
        }

        else
        {
          v7 = 0x6E6F6974656C6564;
          v8 = 0xED0000746E756F43;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x53746E756F636361;
        }

        if (v6 == 3)
        {
          v8 = 0x800000024AD616D0;
        }

        else
        {
          v8 = 0xEC00000065746174;
        }
      }

      v9 = 0x6E6F6974656C6564;
      if (v5 == 5)
      {
        v9 = 0xD000000000000011;
      }

      v10 = 0xED0000746E756F43;
      if (v5 == 5)
      {
        v10 = 0x800000024AD616F0;
      }

      v11 = 0x53746E756F636361;
      if (v5 == 3)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEC00000065746174;
      if (v5 == 3)
      {
        v12 = 0x800000024AD616D0;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x444965706F6373;
      if (v5 != 1)
      {
        v13 = 0x4449656E6F7ALL;
      }

      v14 = 0xE700000000000000;
      if (v5 != 1)
      {
        v14 = 0xE600000000000000;
      }

      if (!v5)
      {
        v13 = 0x656E6961746E6F63;
        v14 = 0xEB00000000444972;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_24AD5EF84();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24AD09C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[2];
      v16 = *v14 == a1 && v14[1] == a2;
      if (v16 || (sub_24AD5EF84() & 1) != 0)
      {
        sub_24AD06578(0, &qword_281064970, 0x277D82BB8);

        v12 = v15;
        v13 = sub_24AD5EC04();

        if (v13)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_24AD09D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_24AD0BBDC(v23, v24, v25);
      v19 = sub_24AD5E824();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_24AD09F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24AD09620(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AD04EAC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v18 = *(v11 - 8);
    sub_24AD06644(v10 + *(v18 + 72) * v7, a2);
    sub_24AD0A6F4(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_24AD0A090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_24AD09748(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_24AD5E404();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_24AD0A8BC(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_24AD0A25C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EF8, &qword_24AD5FDD8);
    v2 = sub_24AD5EF04();
    v19 = v2;
    sub_24AD5EE74();
    v3 = sub_24AD5EEA4();
    if (v3)
    {
      v4 = v3;
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24AD06578(0, &qword_281064980, 0x277CBC670);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24AD037EC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_24AD5EBF4();
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
        v5 = sub_24AD5EEA4();
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

uint64_t sub_24AD0A4A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE8, &qword_24AD5FEA0);
    v2 = sub_24AD5EF04();
    v19 = v2;
    sub_24AD5EE74();
    v3 = sub_24AD5EEA4();
    if (v3)
    {
      v4 = v3;
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24AD03800(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_24AD5EBF4();
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
        v5 = sub_24AD5EEA4();
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

void sub_24AD0A6F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AD5EC64() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_24AD5EBF4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for CloudKitChangeSet.TombstoneInfo(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
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
}

unint64_t sub_24AD0A8BC(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_24AD5EC64();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_24AD0BBDC(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24AD5E7F4();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

id sub_24AD0AC00(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24AD095D0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24AD04D34();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24AD037EC(v13, a3 & 1);
    v8 = sub_24AD095D0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      sub_24AD5EFC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_24AD068B8();

  return a2;
}

id sub_24AD0AD44(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24AD09620(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24AD04D48();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24AD03800(v13, a3 & 1);
    v8 = sub_24AD09620(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
      sub_24AD5EFC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_24AD068B8();

  return a2;
}

unint64_t sub_24AD0AE88()
{
  result = qword_27EFA6000;
  if (!qword_27EFA6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6000);
  }

  return result;
}

uint64_t sub_24AD0AEFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AD0AF80()
{
  result = qword_27EFA6010;
  if (!qword_27EFA6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6010);
  }

  return result;
}

void sub_24AD0AFFC(uint64_t a1)
{
  type metadata accessor for CloudKitStorage(319);
  if (v1 <= 0x3F)
  {
    sub_24AD5E404();
    if (v2 <= 0x3F)
    {
      sub_24AD0B0B0(319);
      if (v3 <= 0x3F)
      {
        sub_24AD0B118(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AD0B0B0(uint64_t a1)
{
  if (!qword_27EFA6018)
  {
    sub_24AD06578(255, &qword_27EFA5F18, 0x277CBC5A0);
    v1 = sub_24AD5E914();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA6018);
    }
  }
}

void sub_24AD0B118(uint64_t a1)
{
  if (!qword_27EFA6020)
  {
    sub_24AD06578(255, &qword_27EFA6028, 0x277CBC5D0);
    type metadata accessor for CloudKitChangeSet.TombstoneInfo(255);
    sub_24AD0B1A4();
    v1 = sub_24AD5E7E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA6020);
    }
  }
}

unint64_t sub_24AD0B1A4()
{
  result = qword_27EFA6030;
  if (!qword_27EFA6030)
  {
    sub_24AD06578(255, &qword_27EFA6028, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitCoordinator.AccountState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitCoordinator.AccountState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD0B3CC(uint64_t a1)
{
  result = sub_24AD5E404();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_24AD0B448(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_24AD09620(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_24AD04EAC();
      goto LABEL_7;
    }

    sub_24AD03A74(v12, a3 & 1);
    v19 = sub_24AD09620(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for CloudKitChangeSet.TombstoneInfo(0) - 8) + 72) * v9;

    return sub_24AD0BC24(a1, v17);
  }

LABEL_13:
  sub_24AD04B5C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_24AD0B5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AD09748(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AD053CC();
      goto LABEL_7;
    }

    sub_24AD042F4(v17, a3 & 1);
    v28 = sub_24AD09748(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AD04BF0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_24AD0B7BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AD09748(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AD053F0();
      goto LABEL_7;
    }

    sub_24AD04318(v17, a3 & 1);
    v28 = sub_24AD09748(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AD04C04(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_24AD0B9CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AD09748(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AD05414();
      goto LABEL_7;
    }

    sub_24AD0433C(v17, a3 & 1);
    v28 = sub_24AD09748(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AD04C18(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_24AD0BBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AD0BC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of CloudDataStore.zoneNames.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0BDA0;

  return v7(a1, a2);
}

uint64_t sub_24AD0BDA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CloudDataStore.ingest(stateChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD0C594;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudDataStore.process(changeSet:modifyResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24AD0C594;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CloudDataStore.process(deletions:modifications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C594;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudDataStore.createIfNecessary()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C360;

  return v7(a1, a2);
}

uint64_t sub_24AD0C360()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of CloudDataStore.purge()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C594;

  return v7(a1, a2);
}

uint64_t sub_24AD0C598()
{
  v0 = sub_24AD5E164();
  __swift_allocate_value_buffer(v0, qword_281064DC8);
  __swift_project_value_buffer(v0, qword_281064DC8);
  return sub_24AD5E154();
}

uint64_t sub_24AD0C608()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065448);
  v1 = __swift_project_value_buffer(v0, qword_281065448);
  if (qword_281064A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065400);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD0C6D0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24AD0C724(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v17;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_24AD5E364();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6088, qword_24AD60C40);
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  *(v9 + 144) = v12;
  *(v9 + 152) = *(v12 - 8);
  *(v9 + 160) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6098, &qword_24AD60360);
  *(v9 + 168) = v13;
  *(v9 + 176) = *(v13 - 8);
  *(v9 + 184) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  *(v9 + 192) = v14;
  *(v9 + 200) = *(v14 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_allocObject();
  *(v9 + 341) = *v18;

  return MEMORY[0x2822009F8](sub_24AD0CA68, 0, 0);
}

uint64_t sub_24AD0CA68()
{
  v1 = *(v0 + 341);
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v21 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 0;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 0;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state) = 0;
  v9 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  *(v0 + 224) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v10 = *(v4 + 16);
  *(v0 + 232) = v10;
  *(v0 + 240) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2 + v9, v8, v3);
  v11 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  *(v0 + 248) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  v12 = (v2 + v11);
  *v12 = v7;
  v12[1] = v6;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerEnvironment) = v5;
  v13 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v0 + 256) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v2 + v13) = v21;
  *(v0 + 340) = v1;
  type metadata accessor for CloudKitCoordinator();
  swift_allocObject();

  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_24AD0CC40;
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(v19, v18, v16, v17, v15, (v0 + 340));
}

uint64_t sub_24AD0CC40(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_24AD0CD40, 0, 0);
}

uint64_t sub_24AD0CD40()
{
  v1 = v0[34];
  v2 = v0[27];
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  v0[35] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  *(v2 + v3) = v1;

  return MEMORY[0x2822009F8](sub_24AD0CDC4, v1, 0);
}

uint64_t sub_24AD0CDC4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  swift_allocObject();
  swift_weakInit();
  *(v0 + 336) = *MEMORY[0x277D85778];
  (*(v2 + 104))(v1);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0CED0, 0, 0);
}

uint64_t sub_24AD0CED0()
{
  v1 = v0[35];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v0[36] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  (*(v5 + 32))(v3 + v6, v2, v4);
  v7 = *(v3 + v1);
  v0[37] = v7;

  return MEMORY[0x2822009F8](sub_24AD0CF70, v7, 0);
}

uint64_t sub_24AD0CF70()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v2, v1, v4);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0D07C, 0, 0);
}

uint64_t sub_24AD0D07C()
{
  v1 = v0[29];
  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[2];
  v10 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v0[38] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  (*(v4 + 32))(v2 + v10, v3, v5);
  v1(v6, v9, v7);
  ObjectType = swift_getObjectType();
  v12 = (*(v8 + 16))(ObjectType, v8);
  v14 = v13;
  type metadata accessor for CloudKitCacheDatabase(0);
  swift_allocObject();
  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = sub_24AD0D1CC;
  v16 = v0[14];

  return sub_24ACF41A8(v16, v12, v14, 0);
}

uint64_t sub_24AD0D1CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {

    v5 = sub_24AD0D478;
  }

  else
  {
    *(v4 + 328) = a1;
    v5 = sub_24AD0D2FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD0D2FC()
{
  v1 = v0[27];
  v2 = v0[9];
  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache) = v0[41];
  v3 = sub_24AD348CC(v2);

  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases) = v3;

  return MEMORY[0x2822009F8](sub_24AD0D39C, v1, 0);
}

uint64_t sub_24AD0D39C()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[2];
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];
  v5 = v0[27];

  return v4(v5);
}

uint64_t sub_24AD0D478()
{
  v10 = v0[36];
  v11 = v0[38];
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[19];
  v9 = v0[18];
  v5 = v0[12];
  v12 = v0[2];
  v6 = *(v0[13] + 8);
  v6(v1 + v0[28], v5);

  (*(v2 + 8))(v1 + v10, v3);
  (*(v4 + 8))(v1 + v11, v9);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  swift_unknownObjectRelease();
  v6(v12, v5);
  swift_deallocPartialClassInstance();

  v7 = v0[1];

  return v7();
}

uint64_t CloudKitStorage.init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v17;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_24AD5E364();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6088, qword_24AD60C40);
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  *(v9 + 144) = v12;
  *(v9 + 152) = *(v12 - 8);
  *(v9 + 160) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6098, &qword_24AD60360);
  *(v9 + 168) = v13;
  *(v9 + 176) = *(v13 - 8);
  *(v9 + 184) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  *(v9 + 192) = v14;
  *(v9 + 200) = *(v14 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 333) = *v18;

  return MEMORY[0x2822009F8](sub_24AD0D8DC, 0, 0);
}

uint64_t sub_24AD0D8DC()
{
  v1 = *(v0 + 333);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v21 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 0;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 0;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state) = 0;
  v9 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  *(v0 + 216) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v10 = *(v3 + 16);
  *(v0 + 224) = v10;
  *(v0 + 232) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4 + v9, v8, v2);
  v11 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  *(v0 + 240) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  v12 = (v4 + v11);
  *v12 = v7;
  v12[1] = v6;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerEnvironment) = v5;
  v13 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v0 + 248) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v4 + v13) = v21;
  *(v0 + 332) = v1;
  type metadata accessor for CloudKitCoordinator();
  swift_allocObject();

  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_24AD0DAB0;
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(v19, v18, v16, v17, v15, (v0 + 332));
}

uint64_t sub_24AD0DAB0(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_24AD0DBB0, 0, 0);
}

uint64_t sub_24AD0DBB0()
{
  v1 = v0[33];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  v0[34] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  *(v2 + v3) = v1;

  return MEMORY[0x2822009F8](sub_24AD0DC34, v1, 0);
}

uint64_t sub_24AD0DC34()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  swift_allocObject();
  swift_weakInit();
  *(v0 + 328) = *MEMORY[0x277D85778];
  (*(v2 + 104))(v1);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0DD40, 0, 0);
}

uint64_t sub_24AD0DD40()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v0[35] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  (*(v3 + 32))(v5 + v6, v2, v4);
  v7 = *(v5 + v1);
  v0[36] = v7;

  return MEMORY[0x2822009F8](sub_24AD0DDE4, v7, 0);
}

uint64_t sub_24AD0DDE4()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v2, v1, v4);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0DEF0, 0, 0);
}

uint64_t sub_24AD0DEF0()
{
  v1 = v0[28];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[2];
  v10 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v0[37] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  (*(v3 + 32))(v6 + v10, v2, v4);
  v1(v5, v9, v7);
  ObjectType = swift_getObjectType();
  v12 = (*(v8 + 16))(ObjectType, v8);
  v14 = v13;
  type metadata accessor for CloudKitCacheDatabase(0);
  swift_allocObject();
  v15 = swift_task_alloc();
  v0[38] = v15;
  *v15 = v0;
  v15[1] = sub_24AD0E03C;
  v16 = v0[14];

  return sub_24ACF41A8(v16, v12, v14, 0);
}

uint64_t sub_24AD0E03C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {

    v5 = sub_24AD0E2E8;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_24AD0E16C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}