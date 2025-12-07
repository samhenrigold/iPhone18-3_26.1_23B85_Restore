uint64_t type metadata accessor for LegacyAccessibilityModel(uint64_t a1)
{
  result = qword_27FA26818;
  if (!qword_27FA26818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFDA564(uint64_t a1)
{
  result = sub_25B004274();
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

void sub_25AFDA654()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_25AFDA6DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AFDA714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_25B005FD4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_25B005B34();
  v4[9] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_25AFDA808, v7, v6);
}

uint64_t sub_25AFDA808()
{
  sub_25B006234();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_25AFDA8D4;

  return sub_25AFDACD0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_25AFDA8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_25AFDAB18;
  }

  else
  {
    v8 = sub_25AFDAA6C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25AFDAA6C()
{

  if ((sub_25B005C14() & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_25AFD9EFC(2);
    }
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AFDAB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AFDAB84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AFDABC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AFDA714(a1, v4, v5, v6);
}

id sub_25AFDAC78()
{
  type metadata accessor for LegacyAccessibilityModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FA26808 = result;
  return result;
}

uint64_t sub_25AFDACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25B005FC4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25AFDADD0, 0, 0);
}

uint64_t sub_25AFDADD0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25B005FD4();
  v5 = sub_25AFDB188(&qword_27FA26830, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25B006214();
  sub_25AFDB188(&qword_27FA26838, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25B005FE4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25AFDAF60;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_25AFDAF60()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AFDB11C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25AFDB11C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AFDB188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AFDB1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26840, &unk_25B013BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFDB240()
{
  swift_getKeyPath();
  sub_25AFDB8F4();
  sub_25B004234();

  return *(v0 + 16);
}

id sub_25AFDB2B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AFDB8F4();
  sub_25B004234();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 56);
  *(a1 + 32) = v7;
  return sub_25AF1D7EC(v3, v4, v5, v6, v7);
}

void sub_25AFDB33C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB8F4();
    sub_25B004224();
  }
}

void sub_25AFDB41C(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB8F4();
    sub_25B004224();
  }
}

uint64_t sub_25AFDB4FC()
{
  swift_getKeyPath();
  sub_25AFDB8F4();
  sub_25B004234();

  return *(v0 + 17);
}

void sub_25AFDB57C(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 32);
  v3 = *(v1 + 40);
  v16[0] = *(v1 + 24);
  v16[1] = v3;
  v17 = *(v1 + 56);
  sub_25AFDBB80(v16, v12);
  v4 = sub_25AFDB974(v16, &v13);
  sub_25AFDBBF0(v16);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[0] = v1;
    sub_25AFDB8F4();
    sub_25B004224();
    sub_25AFDBBF0(&v13);
  }

  else
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v10 = v14;
    *(v1 + 24) = v13;
    *(v1 + 40) = v10;
    v11 = *(v1 + 56);
    *(v1 + 56) = v15;
    sub_25AF231D0(v6, v7, v8, v9, v11);
  }
}

void *sub_25AFDB6C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 16);
  *(a1 + 24) = *a2;
  *(a1 + 40) = v6;
  v7 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 32);
  sub_25AFDBB80(a2, v9);
  return sub_25AF231D0(v2, v3, v4, v5, v7);
}

uint64_t sub_25AFDB744()
{
  sub_25AF231D0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC17NanoControlCenter12EditingModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditingModel(uint64_t a1)
{
  result = qword_27FA26850;
  if (!qword_27FA26850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFDB844(uint64_t a1)
{
  result = sub_25B004274();
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

unint64_t sub_25AFDB8F4()
{
  result = qword_27FA23D60;
  if (!qword_27FA23D60)
  {
    type metadata accessor for EditingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23D60);
  }

  return result;
}

uint64_t sub_25AFDB974(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v7 <= 0xFD)
  {
    if (v12 <= 0xFD)
    {
      v23 = *a1;
      v24 = v3;
      v25 = v6;
      v26 = v5;
      v27 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v11;
      v21 = v10;
      v22 = v12;
      sub_25AFDBB80(a1, v17);
      sub_25AFDBB80(a2, v17);
      sub_25AF1D7EC(v4, v3, v6, v5, v7);
      sub_25AF181DC(v4, v3, v6, v5, v7);
      v14 = sub_25AFD33F0(&v23, &v18);
      sub_25AF18128(v18, v19, v20, v21, v22);
      sub_25AF18128(v23, v24, v25, v26, v27);
      sub_25AF18128(v4, v3, v6, v5, v7);
      sub_25AF231D0(v4, v3, v6, v5, v7);
      v13 = v14 ^ 1;
      return v13 & 1;
    }

    v16 = *(a2 + 24);
    sub_25AFDBB80(a1, &v23);
    sub_25AFDBB80(a2, &v23);
    sub_25AF1D7EC(v4, v3, v6, v5, v7);
    sub_25AF18128(v4, v3, v6, v5, v7);
    goto LABEL_7;
  }

  if (v12 <= 0xFD)
  {
    v16 = *(a2 + 24);
    sub_25AFDBB80(a1, &v23);
    sub_25AFDBB80(a2, &v23);
LABEL_7:
    sub_25AF231D0(v4, v3, v6, v5, v7);
    sub_25AF231D0(v8, v9, v11, v16, v12);
    v13 = 1;
    return v13 & 1;
  }

  sub_25AFDBB80(a1, &v23);
  sub_25AFDBB80(a2, &v23);
  sub_25AF231D0(v4, v3, v6, v5, v7);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_25AFDBB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78, &qword_25B009D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFDBBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78, &qword_25B009D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AFDBC7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25AFDBCC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25AFDBD18(void *a1@<X8>)
{
  v134 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26860, &qword_25B013DB8);
  MEMORY[0x28223BE20](v132);
  v133 = (&v108 - v2);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26868, &qword_25B013DC0);
  MEMORY[0x28223BE20](v125);
  v127 = (&v108 - v3);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26870, &qword_25B013DC8);
  MEMORY[0x28223BE20](v118);
  v119 = (&v108 - v4);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26878, &qword_25B013DD0);
  MEMORY[0x28223BE20](v126);
  v120 = &v108 - v5;
  v6 = sub_25B004B54();
  v113 = *(v6 - 8);
  v114 = v6;
  MEMORY[0x28223BE20](v6);
  v112 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26880, &qword_25B013DD8);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v108 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26888, &qword_25B013DE0);
  MEMORY[0x28223BE20](v109);
  v110 = &v108 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26890, &qword_25B013DE8);
  MEMORY[0x28223BE20](v116);
  v111 = &v108 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26898, &unk_25B013DF0);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v122 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0, &unk_25B011C60);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v123 = &v108 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268A0, &qword_25B013E00);
  MEMORY[0x28223BE20](v131);
  v124 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268A8, &qword_25B013E08);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v108 - v19;
  v21 = sub_25B0042B4();
  v129 = *(v21 - 8);
  v130 = v21;
  MEMORY[0x28223BE20](v21);
  v128 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = *(v1 + 8);
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = *(v1 + 32);
  *&v139 = *v1;
  v24 = v139;
  *(&v139 + 1) = v25;
  v135 = v26;
  v140 = v26;
  v141 = v27;
  v142 = 64;

  v29 = v23;
  v30 = v24;
  v136 = v28;
  v31 = sub_25AF730A0(&v139, v28);

  swift_getKeyPath();
  *&v139 = v31;
  sub_25AFDD320(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);
  sub_25B004234();

  v32 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(v31 + v32, &v144, &qword_27FA25780, &qword_25B0117A0);

  if (!*(&v145 + 1))
  {
    sub_25AF2602C(&v144, &qword_27FA25780, &qword_25B0117A0);
LABEL_7:
    v35 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      *&v144 = v24;
      *(&v144 + 1) = v25;
      *&v145 = v135;
      *(&v145 + 1) = v27;
      LOBYTE(v146) = 64;
      v36 = v30;

      v37 = v35;
      v38 = sub_25AF730A0(&v144, v136);

      KeyPath = swift_getKeyPath();
      v40 = v133;
      *v133 = v38;
      v40[1] = KeyPath;
      *(v40 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268B0, &qword_25B013E68);
      sub_25AFDD058();
      sub_25AFDD49C();
      sub_25B004C74();
      return;
    }

    goto LABEL_31;
  }

  sub_25AF25F40(&v144, v143);
  __swift_project_boxed_opaque_existential_1(v143, v143[3]);
  sub_25B004434();
  v34 = v129;
  v33 = v130;
  if ((*(v129 + 48))(v20, 1, v130) == 1)
  {
    sub_25AF2602C(v20, &qword_27FA268A8, &qword_25B013E08);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0Tm(v143);
    goto LABEL_7;
  }

  (*(v34 + 32))(v128, v20, v33);
  v41 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *&v144 = v24;
  *(&v144 + 1) = v25;
  *&v145 = v135;
  *(&v145 + 1) = v27;
  LOBYTE(v146) = 64;
  v42 = v30;

  v43 = v41;
  v44 = sub_25AF730A0(&v144, v136);

  v45 = *(v44 + 48);
  if (v45 <= 0xFD && (v46 = v45 >> 6) != 0)
  {
    if (v46 != 1)
    {

LABEL_28:
      (*(v129 + 8))(v128, v130);
      goto LABEL_5;
    }

    swift_getKeyPath();
    *&v144 = v44;
    sub_25B004234();

    v47 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
    swift_beginAccess();
    sub_25AF25FC4(v44 + v47, &v144, &qword_27FA25780, &qword_25B0117A0);

    v48 = *(&v145 + 1);
    sub_25AF2602C(&v144, &qword_27FA25780, &qword_25B0117A0);
    if (!v48)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v49 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    *&v144 = v24;
    *(&v144 + 1) = v25;
    *&v145 = v135;
    *(&v145 + 1) = v27;
    LOBYTE(v146) = 64;
    v50 = v42;

    v51 = v49;
    v52 = sub_25AF730A0(&v144, v136);

    v53 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
    swift_beginAccess();
    v54 = v123;
    sub_25AF25FC4(v52 + v53, v123, &qword_27FA255A0, &unk_25B011C60);

    v55 = sub_25B0042C4();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v54, 1, v55);
    if (v57 == 1)
    {
      v60 = sub_25AFDD448(v57, v58, v59);
      sub_25AFDD368(v60, v61, v62);
      v137 = 0uLL;
      v138 = 0;
      sub_25B004C74();
      v63 = v145;
      v64 = v127;
      *v127 = v144;
      *(v64 + 16) = v63;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268F0, &qword_25B013E78);
      sub_25AFDD0E4();
      sub_25AFDD3BC();
      v65 = v124;
    }

    else
    {
      v66 = v121;
      sub_25AF25FC4(v54, v121, &qword_27FA255A0, &unk_25B011C60);
      v67 = (*(v56 + 88))(v66, v55);
      v65 = v124;
      if (v67 == *MEMORY[0x277CFA468] || (v68 = v67, v67 == *MEMORY[0x277CFA478]))
      {
        (*(v56 + 8))(v66, v55);
        sub_25AF2602C(v54, &qword_27FA255A0, &unk_25B011C60);
        v79 = v110;
        sub_25B0042A4();
        sub_25B004FC4();
        v80 = sub_25B004FA4();
        v81 = v108;
        (*(*(v80 - 8) + 56))(v108, 1, 1, v80);
        v82 = sub_25B004FE4();
        sub_25AF2602C(v81, &qword_27FA26880, &qword_25B013DD8);
        v83 = swift_getKeyPath();
        v84 = (v79 + *(v109 + 36));
        *v84 = v83;
        v84[1] = v82;
        sub_25B0056B4();
        sub_25B004924();
        v85 = v111;
        sub_25AFDD8B4(v79, v111);
        v86 = v116;
        v87 = (v85 + *(v116 + 36));
        v88 = v149;
        v87[4] = v148;
        v87[5] = v88;
        v87[6] = v150;
        v89 = v145;
        *v87 = v144;
        v87[1] = v89;
        v90 = v147;
        v87[2] = v146;
        v87[3] = v90;
        v92 = v112;
        v91 = v113;
        v93 = v114;
        (*(v113 + 104))(v112, *MEMORY[0x277CE00F0], v114);
        v94 = sub_25AFDD1AC();
        v95 = v122;
        sub_25B005154();
        (*(v91 + 8))(v92, v93);
        sub_25AF2602C(v85, &qword_27FA26890, &qword_25B013DE8);
        v96 = v115;
        v97 = v95;
        v98 = v117;
        (*(v115 + 16))(v119, v97, v117);
        swift_storeEnumTagMultiPayload();
        *&v137 = v86;
        *(&v137 + 1) = v94;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_25AFDD368(OpaqueTypeConformance2, v100, v101);
        v102 = v120;
        sub_25B004C74();
        sub_25AF25FC4(v102, v127, &qword_27FA26878, &qword_25B013DD0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268F0, &qword_25B013E78);
        sub_25AFDD0E4();
        sub_25AFDD3BC();
        sub_25B004C74();
        sub_25AF2602C(v102, &qword_27FA26878, &qword_25B013DD0);
        (*(v96 + 8))(v122, v98);
        goto LABEL_26;
      }

      v69 = *MEMORY[0x277CFA470];
      v70 = (*(v56 + 8))(v66, v55);
      if (v68 == v69)
      {
        v73 = v119;
        *v119 = 0xD000000000000013;
        v73[1] = 0x800000025B01A9A0;
        swift_storeEnumTagMultiPayload();
        v74 = sub_25AFDD1AC();
        *&v144 = v116;
        *(&v144 + 1) = v74;
        v75 = swift_getOpaqueTypeConformance2();
        sub_25AFDD368(v75, v76, v77);
        v78 = v120;
        sub_25B004C74();
        sub_25AF25FC4(v78, v127, &qword_27FA26878, &qword_25B013DD0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268F0, &qword_25B013E78);
        sub_25AFDD0E4();
        sub_25AFDD3BC();
        sub_25B004C74();
        sub_25AF2602C(v78, &qword_27FA26878, &qword_25B013DD0);
        goto LABEL_20;
      }

      v137 = xmmword_25B013CD0;
      v138 = 1;
      v103 = sub_25AFDD448(v70, v71, v72);
      sub_25AFDD368(v103, v104, v105);
      sub_25B004C74();
      v106 = v145;
      v107 = v127;
      *v127 = v144;
      *(v107 + 16) = v106;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268F0, &qword_25B013E78);
      sub_25AFDD0E4();
      sub_25AFDD3BC();
    }

    sub_25B004C74();
LABEL_20:
    sub_25AF2602C(v54, &qword_27FA255A0, &unk_25B011C60);
LABEL_26:
    sub_25AF25FC4(v65, v133, &qword_27FA268A0, &qword_25B013E00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA268B0, &qword_25B013E68);
    sub_25AFDD058();
    sub_25AFDD49C();
    sub_25B004C74();
    sub_25AF2602C(v65, &qword_27FA268A0, &qword_25B013E00);
    (*(v129 + 8))(v128, v130);
    __swift_destroy_boxed_opaque_existential_0Tm(v143);
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_25AFDCDF4@<X0>(uint64_t a3@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_25B005454();
  sub_25AF2ECCC(v4, v5, v6);

  v7 = sub_25B0050B4();
  v9 = v8;
  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  v11 = v10 & 1;
  *(a3 + 24) = v10 & 1;
  *(a3 + 32) = v12;

  sub_25AF25F20(v7, v9, v11);

  sub_25AF25F30(v7, v9, v11);
}

__n128 sub_25AFDCF44@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_25B004C24();
  sub_25AFDCDF4(&v8);
  v4 = v8;
  v5 = v10;
  v6 = v11;
  result = v9;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v4;
  a2[2] = result;
  a2[3].n128_u8[0] = v5;
  a2[3].n128_u64[1] = v6;
  return result;
}

id sub_25AFDCFC8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = 64;

  return v4;
}

unint64_t sub_25AFDD058()
{
  result = qword_27FA268B8;
  if (!qword_27FA268B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA268A0, &qword_25B013E00);
    sub_25AFDD0E4();
    sub_25AFDD3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268B8);
  }

  return result;
}

unint64_t sub_25AFDD0E4()
{
  result = qword_27FA268C0;
  if (!qword_27FA268C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26878, &qword_25B013DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26890, &qword_25B013DE8);
    sub_25AFDD1AC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AFDD368(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268C0);
  }

  return result;
}

unint64_t sub_25AFDD1AC()
{
  result = qword_27FA268C8;
  if (!qword_27FA268C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26890, &qword_25B013DE8);
    sub_25AFDD238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268C8);
  }

  return result;
}

unint64_t sub_25AFDD238()
{
  result = qword_27FA268D0;
  if (!qword_27FA268D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26888, &qword_25B013DE0);
    sub_25AFDD320(&qword_27FA268D8, MEMORY[0x277CFA458], MEMORY[0x277CFA450]);
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268D0);
  }

  return result;
}

uint64_t sub_25AFDD320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AFDD368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA268E0;
  if (!qword_27FA268E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268E0);
  }

  return result;
}

unint64_t sub_25AFDD3BC()
{
  result = qword_27FA268E8;
  if (!qword_27FA268E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA268F0, &qword_25B013E78);
    v6 = sub_25AFDD448(v1, v2, v3);
    sub_25AFDD368(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268E8);
  }

  return result;
}

unint64_t sub_25AFDD448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA268F8;
  if (!qword_27FA268F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA268F8);
  }

  return result;
}

unint64_t sub_25AFDD49C()
{
  result = qword_27FA26900;
  if (!qword_27FA26900)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA268B0, &qword_25B013E68);
    v6 = sub_25AFDD448(v1, v2, v3);
    sub_25AFDD528(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26900);
  }

  return result;
}

unint64_t sub_25AFDD528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26908;
  if (!qword_27FA26908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26908);
  }

  return result;
}

double sub_25AFDD57C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0, &unk_25B011C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  v8 = sub_25B004B14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v12 = a2;
  }

  else
  {

    sub_25B005CC4();
    v13 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a2, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v15[15];
  }

  sub_25AFB7988(v12 != 2, v7);
  sub_25AF2602C(v7, &qword_27FA255A0, &unk_25B011C60);

  return result;
}

uint64_t sub_25AFDD7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26920, &qword_25B014018);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26928, &qword_25B014020) + 36));
  *v10 = sub_25AFDDB14;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;

  return sub_25AFDDB20(v5, v7);
}

uint64_t sub_25AFDD8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26888, &qword_25B013DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFDD924(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 32);
  v12 = *(a2 + 24);
  v13 = v2;
  v14 = *(a1 + 8);
  v15 = v3;
  v10 = v5;
  v11 = *(a2 + 8);

  v7 = v2;

  v8 = v5;
  LODWORD(v3) = _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(&v13, &v10);

  return v3 & ~(v4 ^ v6) & 1;
}

unint64_t sub_25AFDDA0C()
{
  result = qword_27FA26910;
  if (!qword_27FA26910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26918, &qword_25B013F70);
    sub_25AFDD058();
    sub_25AFDD49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26910);
  }

  return result;
}

uint64_t sub_25AFDDAD0()
{

  sub_25AF241CC(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25AFDDB20(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_25AFDDB74()
{
  result = qword_27FA26940;
  if (!qword_27FA26940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26928, &qword_25B014020);
    sub_25AF0F274(&qword_27FA26948, &qword_27FA26920, &qword_25B014018, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26940);
  }

  return result;
}

uint64_t sub_25AFDDC3C()
{
  result = sub_25B005924();
  qword_27FA30BF0 = result;
  return result;
}

uint64_t sub_25AFDDC94()
{
  v9 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01AA30, &v8);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_25AFDDE10, v6, 0);
}

uint64_t sub_25AFDDE10()
{
  v1 = sub_25AF56A28(0x724F6E6F74747562, 0xEB00000000726564);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AFDDEA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25AFDDEC8, 0, 0);
}

uint64_t sub_25AFDDEC8()
{
  v9 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B01AA10, &v8);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_25AFDE044, v6, 0);
}

uint64_t sub_25AFDE044()
{
  sub_25AF570FC(*(v0 + 16), 0x724F6E6F74747562, 0xEB00000000726564);
  v1 = *(v0 + 8);

  return v1();
}

id sub_25AFDE0DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 49);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v8 = *(v1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 33) = v6;
  *(a1 + 34) = v7;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v8;
  *(a1 + 73) = v6 ^ 1;
  sub_25AF1D7EC(v2, v3, v4, v5, v8);

  return sub_25AF1D7EC(v2, v3, v4, v5, v8);
}

double sub_25AFDE188()
{
  v0 = sub_25B0048E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26880, &qword_25B013DD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_25B005464();
  sub_25B004FC4();
  v8 = sub_25B004FA4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_25B004FE4();
  sub_25AF2602C(v6, &qword_27FA26880, &qword_25B013DD8);
  KeyPath = swift_getKeyPath();
  v12[1] = v7;
  v12[2] = KeyPath;
  v12[3] = v9;
  sub_25B0048D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E68, &qword_25B0154B0);
  sub_25AFE9DF8();
  sub_25B005384();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_25AFDE3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 33);
  v10 = *(v2 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A08, &qword_25B014800);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A10, &qword_25B014808) + 36);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 33) = v9;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A18, &qword_25B014810) + 36);
  *v13 = v5;
  *(v13 + 8) = v6;
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10;
  *(v13 + 33) = v9;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A20, &qword_25B014818) + 36);
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  *(v14 + 33) = v9;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A28, &qword_25B014820) + 36);
  *v15 = v5;
  *(v15 + 8) = v6;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v10;
  *(v15 + 33) = v9;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A30, &qword_25B014828) + 36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A38, &qword_25B014830);
  sub_25AF1D7EC(v5, v6, v7, v8, v10);
  sub_25AF1D7EC(v5, v6, v7, v8, v10);
  sub_25AF1D7EC(v5, v6, v7, v8, v10);
  sub_25AF1D7EC(v5, v6, v7, v8, v10);
  sub_25B004944();
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_25B004BF4();
  result = (*(*(v19 - 8) + 104))(v16, v18, v19);
  *(v16 + *(v17 + 36)) = 0;
  return result;
}

void sub_25AFDE60C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C90, &qword_25B015058);
  MEMORY[0x28223BE20](v51);
  v53 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C98, &qword_25B015060);
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CA0, &qword_25B015068);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CA8, &qword_25B015070);
  MEMORY[0x28223BE20](v45);
  v48 = &v42 - v6;
  v44 = sub_25B0040A4();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25768, &qword_25B00F358);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  if (qword_27FA30B10)
  {
    v17 = *(v2 + 33);
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    v21 = *v2;
    v20 = *(v2 + 8);
    v22 = *(v2 + 32);
    v55 = v21;
    v56 = v20;
    v57 = v19;
    v58 = v18;
    v59 = v22;
    v23 = qword_27FA30B10;
    sub_25AF1D7EC(v21, v20, v19, v18, v22);
    sub_25AF8AB08(&v55, v17, v16);

    sub_25AF231D0(v55, v56, v57, v58, v59);
    sub_25AF25FC4(v16, v13, &qword_27FA25768, &qword_25B00F358);
    v24 = type metadata accessor for ButtonAXString(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CB0, &qword_25B015078);
      (*(*(v25 - 8) + 16))(v53, v50, v25);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26CB8, &qword_27FA26CA0, &qword_25B015068, sub_25AFE8924);
      sub_25AF0F274(&qword_27FA26CC8, &qword_27FA26CB0, &qword_25B015078, MEMORY[0x277CE04B0]);
      sub_25B004C74();
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *(v13 + 1);
      v55 = *v13;
      v56 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CB0, &qword_25B015078);
      v27 = sub_25AF0F274(&qword_27FA26CC8, &qword_27FA26CB0, &qword_25B015078, MEMORY[0x277CE04B0]);
      sub_25AF2ECCC(v27, v28, v29);
      v30 = v48;
      sub_25B005244();

      sub_25AF25FC4(v30, v47, &qword_27FA26CA8, &qword_25B015070);
      swift_storeEnumTagMultiPayload();
      sub_25AFE8924();
      v31 = v49;
      sub_25B004C74();
      sub_25AF25FC4(v31, v53, &qword_27FA26CA0, &qword_25B015068);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26CB8, &qword_27FA26CA0, &qword_25B015068, sub_25AFE8924);
      sub_25B004C74();
      sub_25AF2602C(v31, &qword_27FA26CA0, &qword_25B015068);
      sub_25AF2602C(v30, &qword_27FA26CA8, &qword_25B015070);
    }

    else
    {
      v33 = v42;
      v32 = v43;
      v34 = v44;
      (*(v42 + 32))(v43, v13, v44);
      (*(v33 + 16))(v8, v32, v34);
      v35 = sub_25B0050A4();
      v37 = v36;
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CB0, &qword_25B015078);
      sub_25AF0F274(&qword_27FA26CC8, &qword_27FA26CB0, &qword_25B015078, MEMORY[0x277CE04B0]);
      v40 = v48;
      sub_25B005234();
      sub_25AF25F30(v35, v37, v39 & 1);

      sub_25AF25FC4(v40, v47, &qword_27FA26CA8, &qword_25B015070);
      swift_storeEnumTagMultiPayload();
      sub_25AFE8924();
      v41 = v49;
      sub_25B004C74();
      sub_25AF25FC4(v41, v53, &qword_27FA26CA0, &qword_25B015068);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26CB8, &qword_27FA26CA0, &qword_25B015068, sub_25AFE8924);
      sub_25B004C74();
      sub_25AF2602C(v41, &qword_27FA26CA0, &qword_25B015068);
      sub_25AF2602C(v40, &qword_27FA26CA8, &qword_25B015070);
      (*(v33 + 8))(v43, v44);
    }

    sub_25AF2602C(v16, &qword_27FA25768, &qword_25B00F358);
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFDEE2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C48, &qword_25B015028);
  MEMORY[0x28223BE20](v51);
  v53 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C50, &qword_25B015030);
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C58, &qword_25B015038);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C60, &unk_25B015040);
  MEMORY[0x28223BE20](v45);
  v48 = &v42 - v6;
  v44 = sub_25B0040A4();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25768, &qword_25B00F358);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  if (qword_27FA30B10)
  {
    v17 = *(v2 + 33);
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    v21 = *v2;
    v20 = *(v2 + 8);
    v22 = *(v2 + 32);
    v55 = v21;
    v56 = v20;
    v57 = v19;
    v58 = v18;
    v59 = v22;
    v23 = qword_27FA30B10;
    sub_25AF1D7EC(v21, v20, v19, v18, v22);
    sub_25AF8B0FC(&v55, v17, v16);

    sub_25AF231D0(v55, v56, v57, v58, v59);
    sub_25AF25FC4(v16, v13, &qword_27FA25768, &qword_25B00F358);
    v24 = type metadata accessor for ButtonAXString(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C68, &qword_25B015050);
      (*(*(v25 - 8) + 16))(v53, v50, v25);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26C70, &qword_27FA26C58, &qword_25B015038, sub_25AFE87C0);
      sub_25AF0F274(&qword_27FA26C80, &qword_27FA26C68, &qword_25B015050, MEMORY[0x277CE04B0]);
      sub_25B004C74();
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *(v13 + 1);
      v55 = *v13;
      v56 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C68, &qword_25B015050);
      v27 = sub_25AF0F274(&qword_27FA26C80, &qword_27FA26C68, &qword_25B015050, MEMORY[0x277CE04B0]);
      sub_25AF2ECCC(v27, v28, v29);
      v30 = v48;
      sub_25B005264();

      sub_25AF25FC4(v30, v47, &qword_27FA26C60, &unk_25B015040);
      swift_storeEnumTagMultiPayload();
      sub_25AFE87C0();
      v31 = v49;
      sub_25B004C74();
      sub_25AF25FC4(v31, v53, &qword_27FA26C58, &qword_25B015038);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26C70, &qword_27FA26C58, &qword_25B015038, sub_25AFE87C0);
      sub_25B004C74();
      sub_25AF2602C(v31, &qword_27FA26C58, &qword_25B015038);
      sub_25AF2602C(v30, &qword_27FA26C60, &unk_25B015040);
    }

    else
    {
      v33 = v42;
      v32 = v43;
      v34 = v44;
      (*(v42 + 32))(v43, v13, v44);
      (*(v33 + 16))(v8, v32, v34);
      v35 = sub_25B0050A4();
      v37 = v36;
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C68, &qword_25B015050);
      sub_25AF0F274(&qword_27FA26C80, &qword_27FA26C68, &qword_25B015050, MEMORY[0x277CE04B0]);
      v40 = v48;
      sub_25B005254();
      sub_25AF25F30(v35, v37, v39 & 1);

      sub_25AF25FC4(v40, v47, &qword_27FA26C60, &unk_25B015040);
      swift_storeEnumTagMultiPayload();
      sub_25AFE87C0();
      v41 = v49;
      sub_25B004C74();
      sub_25AF25FC4(v41, v53, &qword_27FA26C58, &qword_25B015038);
      swift_storeEnumTagMultiPayload();
      sub_25AFE88A8(&qword_27FA26C70, &qword_27FA26C58, &qword_25B015038, sub_25AFE87C0);
      sub_25B004C74();
      sub_25AF2602C(v41, &qword_27FA26C58, &qword_25B015038);
      sub_25AF2602C(v40, &qword_27FA26C60, &unk_25B015040);
      (*(v33 + 8))(v43, v44);
    }

    sub_25AF2602C(v16, &qword_27FA25768, &qword_25B00F358);
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFDF64C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v4 = a1[1];
    v8 = *a1;
    v9 = v4;
    v10 = *(a1 + 32);
    v5 = *(a1 + 33);
    v6 = qword_27FA30B10;
    sub_25AFE8788(a1, v7);
    sub_25AF8BC7C(&v8, v5, a2);

    sub_25AF231D0(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AFDF74C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C08, &qword_25B015000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C10, &qword_25B015008);
  sub_25AF0F274(&qword_27FA26C18, &qword_27FA26C08, &qword_25B015000, MEMORY[0x277CE04B0]);
  sub_25AFE86D8();
  return sub_25B0052D4();
}

void sub_25AFDF83C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C30, &qword_25B015018);
  MEMORY[0x28223BE20](v15);
  v18 = &v14 - v3;
  if (qword_27FA30B10)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    v9 = *(v2 + 33);
    v19 = *v2;
    v4 = v19;
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v10 = qword_27FA30B10;
    sub_25AF1D7EC(v4, v5, v6, v7, v8);
    HIDWORD(v14) = v9;
    sub_25AF8A8E8(&v19, v9);

    sub_25AF231D0(v19, v20, v21, v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C38, &qword_25B015020);
    sub_25AF0F274(&qword_27FA26C40, &qword_27FA26C38, &qword_25B015020, MEMORY[0x277CE04B0]);
    v11 = v18;
    sub_25B005314();

    v12 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      v19 = v4;
      v20 = v5;
      v21 = v6;
      v22 = v7;
      v23 = v8;
      sub_25AF1D7EC(v4, v5, v6, v7, v8);
      v13 = v12;
      sub_25AF8D5A0(&v19, SBYTE4(v14));

      sub_25AF231D0(v19, v20, v21, v22, v23);
      sub_25B004854();
      sub_25AF2602C(v11, &qword_27FA26C30, &qword_25B015018);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_25AFDFA98()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.142352941 green:0.143529412 blue:0.148235294 alpha:1.0];
  qword_27FA30C08 = result;
  return result;
}

id sub_25AFDFAE8()
{
  result = [objc_opt_self() systemFontOfSize:21.0 weight:*MEMORY[0x277D74420]];
  qword_27FA30C10 = result;
  return result;
}

uint64_t sub_25AFDFB34()
{
  if (qword_27FA237E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA30C10;
  result = sub_25B005024();
  qword_27FA30C18 = result;
  return result;
}

void sub_25AFDFB90(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A40, &qword_25B014838);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v20 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A48, &qword_25B014840);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A50, &qword_25B014848);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(v1 + 16);
  v27 = *v1;
  *v28 = v11;
  *&v28[15] = *(v1 + 31);
  *v4 = sub_25B0056A4();
  v4[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A58, &qword_25B014850);
  sub_25AFDFE7C(&v27, v4 + *(v13 + 44));
  if (qword_27FA30B10)
  {
    swift_beginAccess();

    sub_25AF31974();

    if (qword_27FA30B10)
    {
      swift_beginAccess();
      sub_25B0056B4();
      sub_25B0046D4();
      sub_25AF25B0C(v4, v7, &qword_27FA26A40, &qword_25B014838);
      v14 = &v7[*(v5 + 36)];
      v15 = v25;
      *v14 = v24;
      *(v14 + 1) = v15;
      *(v14 + 2) = v26;
      v16 = v28[16];
      v17 = (v28[17] & 1) == 0;
      v21 = v27;
      v20 = *v28;
      sub_25AF25B0C(v7, v10, &qword_27FA26A48, &qword_25B014840);
      v18 = &v10[*(v8 + 36)];
      v19 = v20;
      *v18 = v21;
      *(v18 + 1) = v19;
      v18[32] = v16;
      v18[33] = v17;
      sub_25AF25B0C(v10, v22, &qword_27FA26A50, &qword_25B014848);
      sub_25AFE78C8(&v27, v23);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_25AFDFE7C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A60, &qword_25B014858);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A68, &qword_25B014860);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - v8;
  v44 = sub_25B004D54();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A70, &unk_25B014868);
  MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v43 - v14;
  sub_25B005B34();
  v46 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *a1;
  v67 = a1[1];
  v66 = v15;
  v68 = *(a1 + 32);
  v16 = *(a1 + 34);
  v17 = (*(a1 + 33) & 1) == 0;
  v57 = v15;
  v58[0] = v67;
  LOBYTE(v58[1]) = v68;
  BYTE1(v58[1]) = v17;
  BYTE2(v58[1]) = v16 & 1;
  sub_25AF25FC4(&v66, &v54, &qword_27FA23D78, &qword_25B009D80);
  sub_25AF25FC4(&v66, &v54, &qword_27FA23D78, &qword_25B009D80);
  sub_25AF25FC4(&v66, &v54, &qword_27FA23D78, &qword_25B009D80);
  sub_25B004D44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A78, &qword_25B014878);
  sub_25AF0F274(&qword_27FA26A80, &qword_27FA26A78, &qword_25B014878, MEMORY[0x277CDD870]);
  v18 = v53;
  v19 = v17;
  sub_25B005284();
  (*(v9 + 8))(v11, v44);
  sub_25AF231D0(v57, *(&v57 + 1), *&v58[0], *(&v58[0] + 1), v58[1]);
  v63 = v66;
  v64 = v67;
  v65 = v68;
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = 0;
  v21 = swift_getKeyPath();
  LOBYTE(v54) = 0;
  v22 = swift_getKeyPath();
  LOBYTE(v69) = 0;
  v23 = v57;
  v24 = v54;
  v25 = v18 + *(v45 + 36);
  *(v25 + 32) = v65;
  v26 = v64;
  *v25 = v63;
  *(v25 + 16) = v26;
  *(v25 + 33) = v17;
  *(v25 + 38) = v62;
  *(v25 + 34) = *&v61[7];
  *(v25 + 40) = KeyPath;
  *(v25 + 48) = v23;
  *(v25 + 49) = *v61;
  *(v25 + 52) = *&v61[3];
  *(v25 + 56) = v21;
  *(v25 + 64) = v24;
  *(v25 + 65) = *v60;
  *(v25 + 68) = *&v60[3];
  *(v25 + 72) = v22;
  *(v25 + 80) = 0;
  v27 = v68;
  if (v68 > 0xFDu)
  {
    goto LABEL_10;
  }

  v69 = v66;
  v70 = v67;
  v71 = v68;
  v28 = a1[1];
  v57 = *a1;
  v58[0] = v28;
  *(v58 + 15) = *(a1 + 31);
  sub_25AFE0740();
  if (v29 == 2 || (v29 & 1) == 0)
  {
LABEL_9:
    sub_25AFE7960(a1);
LABEL_10:
    v35 = v50;
    (*(v48 + 56))(v50, 1, 1, v49);
    goto LABEL_11;
  }

  v45 = *(&v69 + 1);
  v30 = v69;
  v32 = *(&v70 + 1);
  v31 = v70;
  if (v27 > 0x3F)
  {
    sub_25AF196CC(&v69, &v57);
    sub_25AF18128(v30, v45, v31, v32, v27);
    sub_25AF18128(1, 0, 0, 0, 0);
    v45 = *(&v69 + 1);
    v30 = v69;
    v32 = *(&v70 + 1);
    v31 = v70;
    LOBYTE(v27) = v71;
  }

  else
  {
    sub_25AF18128(v69, v45, v70, *(&v70 + 1), v27);
    sub_25AF18128(1, 0, 0, 0, 0);
    if (v30 == 1)
    {
      v33 = [objc_opt_self() sharedUtility];
      v34 = [v33 isEitherDeviceGreenTea];

      if (v34)
      {
        goto LABEL_9;
      }

      v30 = 1;
    }
  }

  sub_25AFE78C8(a1, &v57);
  if (qword_27FA237F0 != -1)
  {
    swift_once();
  }

  *&v54 = v30;
  *(&v54 + 1) = v45;
  *&v55 = v31;
  *(&v55 + 1) = v32;
  v56[0] = v27;
  v56[1] = v19;
  v56[2] = 1;
  *&v56[8] = xmmword_27FA26950;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A90, &qword_25B0148E8);
  sub_25AFE7990();
  v42 = v43;
  sub_25B005294();
  sub_25AFE7960(a1);
  v57 = v54;
  v58[0] = v55;
  v58[1] = *v56;
  v59 = *&v56[16];
  sub_25AF2602C(&v57, &qword_27FA26A90, &qword_25B0148E8);
  v35 = v50;
  sub_25AF25B0C(v42, v50, &qword_27FA26A60, &qword_25B014858);
  (*(v48 + 56))(v35, 0, 1, v49);
LABEL_11:
  v36 = v53;
  v37 = v47;
  sub_25AF25FC4(v53, v47, &qword_27FA26A70, &unk_25B014868);
  v38 = v51;
  sub_25AF25FC4(v35, v51, &qword_27FA26A68, &qword_25B014860);
  v39 = v52;
  sub_25AF25FC4(v37, v52, &qword_27FA26A70, &unk_25B014868);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26A88, &qword_25B0148E0);
  sub_25AF25FC4(v38, v39 + *(v40 + 48), &qword_27FA26A68, &qword_25B014860);
  sub_25AF2602C(v35, &qword_27FA26A68, &qword_25B014860);
  sub_25AF2602C(v36, &qword_27FA26A70, &unk_25B014868);
  sub_25AF2602C(v38, &qword_27FA26A68, &qword_25B014860);
  sub_25AF2602C(v37, &qword_27FA26A70, &unk_25B014868);

  return result;
}

double sub_25AFE0660@<D0>(_BYTE *a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 0;
  v2 = *MEMORY[0x277CDE2F0];
  v3 = sub_25B004DF4();
  (*(*(v3 - 8) + 104))(a1, v2, v3);

  return result;
}

void sub_25AFE0740()
{
  if (qword_27FA30B10)
  {
    v1 = *(v0 + 8);
    v16 = *v0;
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    v22 = v5;
    sub_25AFE9EB8(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

    sub_25B004234();

    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v9 = *(v5 + 40);
    v8 = *(v5 + 48);
    v10 = *(v5 + 56);
    v11 = v4;
    v15 = v6;
    if (v4 > 0xFD)
    {
      sub_25AF1D7EC(v6, v7, v9, v8, v10);
      v12 = v16;
      sub_25AF1D7EC(v16, v1, v3, v2, v11);

      if (v10 > 0xFD)
      {
        sub_25AF231D0(v16, v1, v3, v2, v11);
        return;
      }

      goto LABEL_7;
    }

    v14 = v4;
    v12 = v16;
    if (v10 > 0xFD)
    {
      sub_25AF1D7EC(v6, v7, v9, v8, v10);
      v11 = v14;
      sub_25AF1D7EC(v16, v1, v3, v2, v14);
      sub_25AF1D7EC(v16, v1, v3, v2, v14);

      sub_25AF18128(v16, v1, v3, v2, v14);
LABEL_7:
      sub_25AF231D0(v12, v1, v3, v2, v11);
      sub_25AF231D0(v15, v7, v9, v8, v10);
      return;
    }

    v22 = v16;
    v23 = v1;
    v24 = v3;
    v25 = v2;
    v26 = v14;
    v17 = v6;
    v18 = v7;
    v19 = v9;
    v20 = v8;
    v21 = v10;
    v13 = v6;
    sub_25AF1D7EC(v6, v7, v9, v8, v10);
    sub_25AF1D7EC(v13, v7, v9, v8, v10);
    sub_25AF1D7EC(v16, v1, v3, v2, v14);
    sub_25AF1D7EC(v16, v1, v3, v2, v14);
    sub_25AF181DC(v16, v1, v3, v2, v14);
    sub_25AFD33F0(&v22, &v17);

    sub_25AF231D0(v15, v7, v9, v8, v10);
    sub_25AF18128(v17, v18, v19, v20, v21);
    sub_25AF18128(v22, v23, v24, v25, v26);
    sub_25AF18128(v16, v1, v3, v2, v14);
    sub_25AF231D0(v16, v1, v3, v2, v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFE0AA0(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v6 = sub_25B005EA4();
    if (v6 != 3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != 3)
    {
LABEL_4:
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F85DD30](0, a1);
            goto LABEL_9;
          }

          if (*(v5 + 16))
          {
            v7 = *(a1 + 32);
LABEL_9:
            sub_25B005434();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F60, &qword_25B0156F8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F70, &qword_25B015700);
            sub_25AFEA624();
            sub_25AFEA708();
            sub_25B004C74();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F50, &qword_25B0156F0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F90, &qword_25B015710);
            sub_25AFEA598();
            sub_25AFEA7EC();
            sub_25B004C74();
LABEL_24:

            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_10:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26FA0, &qword_25B015718);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F00, &qword_25B0156C8);
        sub_25AFEA8A4();
        sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
        sub_25B004C74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F50, &qword_25B0156F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F90, &qword_25B015710);
        sub_25AFEA598();
        sub_25AFEA7EC();
        sub_25B004C74();
LABEL_25:
        *a3 = v13;
        *(a3 + 16) = v14;
        *(a3 + 32) = v15;
        *(a3 + 33) = v16;
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F85DD30](0, a1);
        sub_25B005434();
        MEMORY[0x25F85DD30](1, a1);
LABEL_15:
        sub_25B005434();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F60, &qword_25B0156F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F70, &qword_25B015700);
        sub_25AFEA624();
        sub_25AFEA708();
        sub_25B004C74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F50, &qword_25B0156F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F90, &qword_25B015710);
        sub_25AFEA598();
        sub_25AFEA7EC();
        sub_25B004C74();
LABEL_23:

        goto LABEL_24;
      }

      if (*(v5 + 16))
      {
        v8 = *(a1 + 32);
        sub_25B005434();
        if (*(v5 + 16) < 2uLL)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v9 = *(a1 + 40);
        goto LABEL_15;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F85DD30](0, a1);
    sub_25B005434();
    MEMORY[0x25F85DD30](1, a1);
    sub_25B005434();
    MEMORY[0x25F85DD30](2, a1);
    goto LABEL_22;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_30;
  }

  v10 = *(a1 + 32);
  sub_25B005434();
  if (*(v5 + 16) < 2uLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(a1 + 40);
  sub_25B005434();
  if (*(v5 + 16) >= 3uLL)
  {
    v12 = *(a1 + 48);
LABEL_22:
    sub_25B005434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26FA0, &qword_25B015718);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F00, &qword_25B0156C8);
    sub_25AFEA8A4();
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    sub_25B004C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F50, &qword_25B0156F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F90, &qword_25B015710);
    sub_25AFEA598();
    sub_25AFEA7EC();
    sub_25B004C74();

    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_25AFE10A4@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_25B004E84();
  v127 = *(v2 - 8);
  v128 = v2;
  MEMORY[0x28223BE20](v2);
  v122 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B20, &qword_25B014DF0);
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v96 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B28, &qword_25B014DF8);
  MEMORY[0x28223BE20](v7);
  v111 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B30, &qword_25B014E00);
  v113 = *(v9 - 8);
  v114 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v96 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B38, &qword_25B014E08);
  MEMORY[0x28223BE20](v107);
  v110 = &v96 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B40, &qword_25B014E10);
  MEMORY[0x28223BE20](v115);
  v120 = &v96 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B48, &qword_25B014E18);
  MEMORY[0x28223BE20](v118);
  v126 = &v96 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B50, &qword_25B014E20);
  MEMORY[0x28223BE20](v124);
  v125 = &v96 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B58, &qword_25B014E28);
  MEMORY[0x28223BE20](v123);
  v121 = &v96 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B60, &qword_25B014E30);
  MEMORY[0x28223BE20](v119);
  v117 = &v96 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B68, &qword_25B014E38);
  MEMORY[0x28223BE20](v116);
  v129 = &v96 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B70, &qword_25B014E40);
  MEMORY[0x28223BE20](v103);
  v104 = &v96 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B78, &qword_25B014E48);
  MEMORY[0x28223BE20](v102);
  v105 = &v96 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B80, &qword_25B014E50);
  MEMORY[0x28223BE20](v101);
  v106 = &v96 - v20;
  v21 = *(v1 + 16);
  v140 = *v1;
  *v141 = v21;
  *&v141[15] = *(v1 + 31);
  v22 = swift_allocObject();
  v23 = *(v1 + 16);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v23;
  *(v22 + 47) = *(v1 + 31);
  v130 = &v140;
  sub_25AFE8200(&v140, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B88, &qword_25B014E58);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B90, &qword_25B014E60);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B98, &qword_25B014E68);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BA0, &qword_25B014E70);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BA8, &qword_25B014E78);
  v28 = sub_25AFE8238();
  *&v139[0] = v27;
  *(&v139[0] + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v139[0] = v26;
  *(&v139[0] + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v139[0] = v25;
  *(&v139[0] + 1) = v30;
  v31 = v6;
  v32 = swift_getOpaqueTypeConformance2();
  *&v139[0] = v24;
  *(&v139[0] + 1) = v32;
  swift_getOpaqueTypeConformance2();
  result = sub_25B0054C4();
  v34 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = *&v141[8];
  v36 = v141[16];
  v37 = v141[17];
  v99 = *(&v140 + 1);
  v100 = v140;
  v136 = v140;
  v98 = *v141;
  v137 = *v141;
  LOBYTE(v138) = v141[16];
  sub_25AFE8200(&v140, v139);
  v38 = v34;
  v39 = sub_25AF730A0(&v136, v37);

  sub_25AF18128(v136, *(&v136 + 1), v137, *(&v137 + 1), v138);
  swift_getKeyPath();
  *&v139[0] = v39;
  sub_25AFE9EB8(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);
  sub_25B004234();

  v40 = *(v39 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted);

  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v111;
  (*(v108 + 32))(v111, v31, v109);
  v44 = (v43 + *(v7 + 36));
  *v44 = KeyPath;
  v44[1] = sub_25AFE8454;
  v44[2] = v42;
  v45 = v122;
  sub_25B004E74();
  sub_25AFE846C();
  sub_25AFE9EB8(&qword_27FA26BE8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v46 = v112;
  v47 = v128;
  sub_25B005104();
  (*(v127 + 8))(v45, v47);
  sub_25AF2602C(v43, &qword_27FA26B28, &qword_25B014DF8);
  v48 = v110;
  v49 = &v110[*(v107 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BF0, &qword_25B014EF8);
  sub_25B004934();
  *v49 = swift_getKeyPath();
  (*(v113 + 32))(v48, v46, v114);
  v50 = v48;
  if (v141[18])
  {
    v51 = sub_25B0053C4();
  }

  else
  {
    v51 = sub_25B005404();
  }

  v52 = v51;
  v53 = v129;
  v54 = swift_getKeyPath();
  *&v139[0] = v52;
  v55 = sub_25B0046E4();
  v56 = v50;
  v57 = v120;
  sub_25AF25B0C(v56, v120, &qword_27FA26B38, &qword_25B014E08);
  v58 = (v57 + *(v115 + 36));
  *v58 = v54;
  v58[1] = v55;
  sub_25B0056B4();
  sub_25B0046D4();
  v59 = v126;
  sub_25AF25B0C(v57, v126, &qword_27FA26B40, &qword_25B014E10);
  v60 = (v59 + *(v118 + 36));
  v61 = v137;
  *v60 = v136;
  v60[1] = v61;
  v60[2] = v138;
  sub_25B0056B4();
  sub_25B0046D4();
  v62 = v59;
  v63 = v125;
  sub_25AF25B0C(v62, v125, &qword_27FA26B48, &qword_25B014E18);
  v64 = (v63 + *(v124 + 36));
  v65 = v139[1];
  *v64 = v139[0];
  v64[1] = v65;
  v64[2] = v139[2];
  v66 = v63;
  v67 = v121;
  sub_25AF25B0C(v66, v121, &qword_27FA26B50, &qword_25B014E20);
  __asm { FMOV            V0.2D, #-10.0 }

  *(v67 + *(v123 + 36)) = _Q0;
  v73 = v67;
  v74 = v117;
  sub_25AF25B0C(v73, v117, &qword_27FA26B58, &qword_25B014E28);
  *(v74 + *(v119 + 36)) = 1;
  result = sub_25AF25B0C(v74, v53, &qword_27FA26B60, &qword_25B014E30);
  v75 = v53 + *(v116 + 36);
  v77 = v99;
  v76 = v100;
  *v75 = v100;
  *(v75 + 8) = v77;
  v78 = v98;
  *(v75 + 16) = v98;
  *(v75 + 24) = v35;
  *(v75 + 32) = v36;
  *(v75 + 33) = v37;
  *(v75 + 34) = 0;
  v79 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    goto LABEL_9;
  }

  *&v132 = v76;
  *(&v132 + 1) = v77;
  v133 = v78;
  v134 = v35;
  v135 = v36;
  sub_25AFE8200(&v140, v131);
  sub_25AFE8200(&v140, v131);
  v80 = v79;
  v81 = sub_25AF730A0(&v132, v37);

  sub_25AF18128(v132, *(&v132 + 1), v133, v134, v135);
  v82 = swift_getKeyPath();
  LOBYTE(v131[0]) = 0;
  v83 = swift_getKeyPath();
  LOBYTE(v132) = 0;
  v84 = v131[0];
  v85 = v104;
  sub_25AF25B0C(v53, v104, &qword_27FA26B68, &qword_25B014E38);
  v86 = v85 + *(v103 + 36);
  *v86 = v81;
  *(v86 + 8) = v37;
  *(v86 + 9) = 256;
  *(v86 + 11) = 0;
  *(v86 + 16) = v82;
  *(v86 + 24) = v84;
  *(v86 + 32) = v83;
  *(v86 + 40) = 0;
  v87 = v105;
  sub_25AF25B0C(v85, v105, &qword_27FA26B70, &qword_25B014E40);
  *(v87 + *(v102 + 36)) = 0;
  v88 = swift_getKeyPath();
  v89 = v106;
  v90 = &v106[*(v101 + 36)];
  v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25ED8, &qword_25B014F90) + 28);
  v92 = sub_25B005694();
  (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
  *v90 = v88;
  result = sub_25AF25B0C(v87, v89, &qword_27FA26B78, &qword_25B014E48);
  if (qword_27FA30B10)
  {
    v93 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    v131[0] = v93;
    sub_25AFE9EB8(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

    sub_25B004234();

    v94 = *(v93 + 16);

    v95 = v97;
    sub_25AF25B0C(v89, v97, &qword_27FA26B80, &qword_25B014E50);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BF8, &qword_25B014FC0);
    *(v95 + *(result + 36)) = v94;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_25AFE1E50(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3 - 8];
  sub_25B005B34();
  sub_25B005B24();
  v5 = MEMORY[0x277D85700];
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 34))
  {
    if (qword_27FA30B10)
    {
      v6 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
      v7 = a1[1];
      v15 = *a1;
      v16 = v7;
      v17 = *(a1 + 32);
      v8 = sub_25B005B64();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);

      sub_25AFE8200(a1, v14);

      v9 = sub_25B005B24();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v5;
      *(v10 + 32) = v6;
      v11 = v16;
      *(v10 + 40) = v15;
      *(v10 + 56) = v11;
      *(v10 + 72) = v17;
      sub_25AF6C7F8(0, 0, v4, &unk_25B00F368, v10);

LABEL_8:

      return;
    }

    __break(1u);
  }

  else if (qword_27FA30B10)
  {
    v12 = a1[1];
    v15 = *a1;
    v16 = v12;
    v17 = *(a1 + 32);

    sub_25AFE8200(a1, v14);
    sub_25AFED924(&v15);

    sub_25AF18128(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
    goto LABEL_8;
  }

  __break(1u);
}

double sub_25AFE20B4@<D0>(uint64_t x8_0@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFE2180(x8_0);

  return result;
}

uint64_t sub_25AFE2180@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v51 = sub_25B004D34();
  v59 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26C00, &qword_25B014FC8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = &v44 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BA8, &qword_25B014E78);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BA0, &qword_25B014E70);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B98, &qword_25B014E68);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26B90, &qword_25B014E60);
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v15;
  v16 = sub_25B005454();
  v17 = sub_25B0053E4();
  v60 = v16;
  v61 = v17;
  sub_25B004FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BB8, &unk_25B014E80);
  sub_25AFE832C();
  sub_25B0050F4();

  v18 = v46;
  v19 = &v6[*(v46 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26BD0, &qword_25B014E90) + 28);
  v21 = *MEMORY[0x277CE1050];
  v22 = sub_25B005474();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  (*(v48 + 32))(v6, v4, v50);
  v23 = sub_25B004F74();
  sub_25B004D24();
  v24 = sub_25AFE8238();
  MEMORY[0x25F85CFA0](v23, 0x400C000000000000, 0, v2, v18, v24);
  v26 = v59 + 8;
  v25 = *(v59 + 8);
  v27 = v51;
  v25(v2, v51);
  v59 = v26;
  sub_25AF2602C(v6, &qword_27FA26BA8, &qword_25B014E78);
  v28 = sub_25B004F94();
  sub_25B004D24();
  v60 = v18;
  v61 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v47;
  v31 = v28;
  v32 = v52;
  v33 = v45;
  MEMORY[0x25F85CFA0](v31, 0xC014000000000000, 0, v2, v52, OpaqueTypeConformance2);
  v34 = v27;
  v25(v2, v27);
  v35 = v25;
  (*(v53 + 8))(v33, v32);
  v36 = sub_25B004F54();
  sub_25B004D24();
  v60 = v32;
  v61 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  v39 = v54;
  MEMORY[0x25F85CFA0](v36, 0x4010000000000000, 0, v2, v54, v37);
  v35(v2, v34);
  (*(v55 + 8))(v30, v39);
  v40 = sub_25B004F64();
  sub_25B004D24();
  v60 = v39;
  v61 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v56;
  MEMORY[0x25F85CFA0](v40, 0xC014000000000000, 0, v2, v56, v41);
  v35(v2, v34);
  return (*(v57 + 8))(v38, v42);
}

double sub_25AFE27E4()
{
  result = 2.0;
  xmmword_27FA26950 = xmmword_25B0140A0;
  return result;
}

void sub_25AFE27FC(uint64_t a1, char a2)
{
  if (qword_27FA30B10)
  {
    v2 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    sub_25AFE9EB8(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

    sub_25B004234();

    v3 = *(v2 + 16);

    if (qword_27FA30B10)
    {
      v4 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      swift_getKeyPath();

      sub_25B004234();

      v5 = *(v4 + 17);

      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 17) = v5;
      MEMORY[0x28223BE20](v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26DE8, &qword_25B015260);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26DF0, &qword_25B015268);
      sub_25AF0F274(&qword_27FA26DF8, &qword_27FA26DE8, &qword_25B015260, MEMORY[0x277CE04B0]);
      sub_25AFE9A64();
      sub_25B005124();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_25AFE2A58(uint64_t a1, int a2, int a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (((a2 ^ a3) & 1) == 0)
  {
    sub_25B0056E4();
    sub_25B0045E4();
  }

  return result;
}

void sub_25AFE2B18(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26DF0, &qword_25B015268);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E10, &qword_25B015270);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v6 + 36)] = v9;
  sub_25AF25B0C(v8, a3, &qword_27FA26DF0, &qword_25B015268);
}

uint64_t sub_25AFE2C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26D00, &qword_25B0150A0);
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  v4 = v0[1];
  v18 = *v0;
  v19[0] = v4;
  *(v19 + 15) = *(v0 + 31);
  v13[2] = &v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26D08, &qword_25B0150A8);
  sub_25AF0F274(&qword_27FA26D10, &qword_27FA26D08, &qword_25B0150A8, MEMORY[0x277CDD870]);
  sub_25B0054C4();
  if (qword_27FA237E8 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA30C18;
  KeyPath = swift_getKeyPath();
  v7 = &v3[*(v1 + 36)];
  *v7 = KeyPath;
  v7[1] = v5;
  v20 = v18;
  v21 = v19[0];
  v22 = v19[1];
  v8 = *(&v19[1] + 1);
  LOBYTE(v14) = 0;

  sub_25AFE8A3C(&v18, v23);
  sub_25B005484();
  v14 = v20;
  v15 = v21;
  LOBYTE(v16) = v22;
  *(&v16 + 1) = v8;
  BYTE8(v16) = v23[0];
  v17 = *(&v23[0] + 1);
  v9 = sub_25AFE8A74();
  sub_25AFE8B58(v9, v10, v11);
  sub_25B005114();
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v24 = v17;
  sub_25AFE8BAC(v23);
  return sub_25AF2602C(v3, &qword_27FA26D00, &qword_25B0150A0);
}

double sub_25AFE2EF0()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_25AFE2F80@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v12 = *(a1 + 32);
  sub_25AF25FC4(&v10, v9, &qword_27FA23D78, &qword_25B009D80);

  v5 = *(a1 + 33);
  v6 = v12;
  result = *&v10;
  v8 = v11;
  *a2 = v10;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  *(a2 + 33) = v5 & 1;
  return result;
}

double sub_25AFE3084@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 32);
  v8 = v7 >> 6;
  if (v7 > 0xFD || v8 == 0)
  {
    if (*(v1 + 33))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v15 = *v1;
    v16 = v1[1];
    v17 = v10 | v7;
    v18 = 0;
    sub_25AF1D7EC(v4, v3, v5, v6, v7);
    sub_25AF1D7EC(v4, v3, v5, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E18, &qword_25B015278);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E20, &qword_25B015280);
    v11 = MEMORY[0x277CDD870];
    sub_25AF0F274(&qword_27FA26E28, &qword_27FA26E18, &qword_25B015278, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26E30, &qword_27FA26E20, &qword_25B015280, v11);
    sub_25B004C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E38, &qword_25B015288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E40, &qword_25B015290);
    sub_25AFE9B1C();
    sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, v11);
    sub_25B004C74();
    sub_25AF231D0(v4, v3, v5, v6, v7);
  }

  else if (v8 == 1)
  {
    v15 = *v1;
    v16 = v1[1];
    v17 = *(v1 + 33);
    v18 = 1;
    sub_25AF1D7EC(v4, v3, v5, v6, v7);
    sub_25AF1D7EC(v4, v3, v5, v6, v7);

    v14 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E18, &qword_25B015278);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E20, &qword_25B015280);
    v12 = MEMORY[0x277CDD870];
    sub_25AF0F274(&qword_27FA26E28, &qword_27FA26E18, &qword_25B015278, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26E30, &qword_27FA26E20, &qword_25B015280, v12);
    sub_25B004C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E38, &qword_25B015288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E40, &qword_25B015290);
    sub_25AFE9B1C();
    sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, v12);
    sub_25B004C74();
    sub_25AF231D0(v4, v3, v5, v6, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E38, &qword_25B015288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E40, &qword_25B015290);
    sub_25AFE9B1C();
    sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, MEMORY[0x277CDD870]);
    sub_25B004C74();
  }

  result = *&v15;
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(a1 + 34) = v18;
  *(a1 + 35) = v19;
  return result;
}

id sub_25AFE3550@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return v5;
}

void sub_25AFE35AC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 <= 0xFD)
  {
    sub_25AF181DC(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v3);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E78, &qword_25B0154E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E80, &qword_25B0154E8);
    v6 = MEMORY[0x277CDD870];
    sub_25AF0F274(&qword_27FA26E88, &qword_27FA26E78, &qword_25B0154E0, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, v6);
    sub_25B004C74();
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
    *(a1 + 34) = v10;
    return;
  }

  v4 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    *&v7 = v4;
    sub_25AFE9EB8(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v5 = v4;
    sub_25B004234();

    swift_beginAccess();

    if (qword_27FA23728 != -1)
    {
      swift_once();
    }

    sub_25B004014();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25AFE3848(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = sub_25B004104();
  *&v80 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v78 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_25B004204();
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26EB8, &qword_25B0156A0);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v77 = &v67[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26880, &qword_25B013DD8);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v67[-v10];
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 33);
  *&v166 = *v1;
  v12 = v166;
  *(&v166 + 1) = v11;
  *&v167 = v13;
  *(&v167 + 1) = v14;
  LOBYTE(v168) = v15;
  v17 = qword_27FA30B10;
  sub_25AF181DC(v12, v11, v13, v14, v15);
  sub_25AF846B4(&v166, v179);

  sub_25AF18128(v166, *(&v166 + 1), v167, *(&v167 + 1), v168);
  v196 = v179[8];
  v197 = v179[9];
  v198 = v179[10];
  v192 = v179[4];
  v193 = v179[5];
  v195 = v179[7];
  v194 = v179[6];
  v188 = v179[0];
  v189 = v179[1];
  v191 = v179[3];
  v190 = v179[2];
  if (sub_25AFB2C70(&v188) == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v72 = v2;
  v199[8] = v196;
  v199[9] = v197;
  v199[10] = v198;
  v199[4] = v192;
  v199[5] = v193;
  v199[7] = v195;
  v199[6] = v194;
  v199[0] = v188;
  v199[1] = v189;
  v199[3] = v191;
  v199[2] = v190;
  if (!qword_27FA30B10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v166 = v12;
  *(&v166 + 1) = v11;
  *&v167 = v13;
  *(&v167 + 1) = v14;
  v18 = v15;
  LOBYTE(v168) = v15;
  v19 = qword_27FA30B10;
  v20 = sub_25AF730A0(&v166, v16);

  sub_25AFEA0B8(v199, &v166);
  sub_25AFE70EC(v199, v20, &v180);
  sub_25AF2602C(v179, &qword_27FA25B78, &qword_25B0142F0);
  v21 = v180;
  v22 = v181;
  v23 = v186 >> 6;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v83 = v186;
      v81 = v184;
      v82 = v185;
      v39 = v183;
      v40 = v182;

      sub_25AFE7404(&v180);
      LOBYTE(v85) = 0;
      LOBYTE(v123[0]) = 1;
      *&v166 = v21;
      *(&v166 + 1) = v22;
      LOBYTE(v167) = 0;
      *(&v167 + 1) = MEMORY[0x277D84F90];
      BYTE8(v169) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F30, &qword_25B0156E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E80, &qword_25B0154E8);
      sub_25AFEA454();
      sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
      sub_25B004C74();
      v152 = v140;
      v153 = v141;
      v154[0] = v142[0];
      *(v154 + 9) = *(v142 + 9);
      sub_25AF24BFC(&v152);
      v176 = v161;
      v177 = v162;
      v178 = v163;
      v172 = v157;
      v173 = v158;
      v175 = v160;
      v174 = v159;
      v168 = v154[0];
      v169 = v154[1];
      v171 = v156;
      v170 = v155;
      v167 = v153;
      v166 = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F10, &qword_25B0156D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F18, &qword_25B0156D8);
      sub_25AFEA39C();
      sub_25AFEA988();
      sub_25B004C74();
      sub_25AF2602C(v179, &qword_27FA25B78, &qword_25B0142F0);
      sub_25AFB2164(v21, v22, v40, v39, v81, v82, v83);
    }

    else
    {
      sub_25AFE7404(&v180);
      *&v166 = v21;
      v48 = sub_25B0041E4();
      sub_25AFEAA40(v48, v49, v50);
      v51 = v75;
      sub_25B0040D4();
      v52 = v78;
      sub_25B0040F4();
      v53 = v79;
      MEMORY[0x25F85BEE0](v52, v79);
      (*(v80 + 8))(v52, v72);
      (*(v76 + 8))(v51, v53);
      sub_25AF0F274(&qword_27FA26FC8, &qword_27FA26EB8, &qword_25B0156A0, MEMORY[0x277CC9158]);
      v54 = sub_25B005084();
      v56 = v55;
      *&v140 = v54;
      *(&v140 + 1) = v55;
      v58 = v57 & 1;
      LOBYTE(v141) = v57 & 1;
      *(&v141 + 1) = v59;
      sub_25AFEAA94(&v140);
      v176 = v149;
      v177 = v150;
      LOBYTE(v178) = v151;
      v172 = v145;
      v173 = v146;
      v175 = v148;
      v174 = v147;
      v168 = v142[0];
      v169 = v142[1];
      v171 = v144;
      v170 = v143;
      v167 = v141;
      v166 = v140;
      sub_25AF25F20(v54, v56, v58);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E80, &qword_25B0154E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26EC8, &qword_25B0156B0);
      sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
      sub_25AFEA120();
      sub_25B004C74();
      v161 = v95;
      v162 = v96;
      LOBYTE(v163) = v97;
      v157 = v91;
      v158 = v92;
      v160 = v94;
      v159 = v93;
      v154[0] = v87;
      v154[1] = v88;
      v156 = v90;
      v155 = v89;
      v153 = v86;
      v152 = v85;
      sub_25AF24898(&v152);
      v176 = v161;
      v177 = v162;
      v178 = v163;
      v172 = v157;
      v173 = v158;
      v175 = v160;
      v174 = v159;
      v168 = v154[0];
      v169 = v154[1];
      v171 = v156;
      v170 = v155;
      v167 = v153;
      v166 = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F10, &qword_25B0156D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F18, &qword_25B0156D8);
      sub_25AFEA39C();
      sub_25AFEA988();
      sub_25B004C74();
      sub_25AF2602C(v179, &qword_27FA25B78, &qword_25B0142F0);
      sub_25AF25F30(v54, v56, v58);
    }

    goto LABEL_15;
  }

  v83 = v186;
  v81 = v184;
  v82 = v185;
  v70 = v182;
  v71 = v183;
  v69 = v181;
  if (v23)
  {
    v41 = v182;

    sub_25AFE7404(&v180);

    sub_25B005464();
    sub_25AFE0AA0(v41, &v85);
    v42 = v87;
    v43 = BYTE1(v87);
    v79 = v86;
    v80 = v85;

    sub_25B004FC4();
    v44 = sub_25B004FA4();
    v45 = v73;
    (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
    v46 = sub_25B004FE4();
    sub_25AF2602C(v45, &qword_27FA26880, &qword_25B013DD8);
    KeyPath = swift_getKeyPath();
    LOBYTE(v111) = v43;
    LOBYTE(v123[0]) = 0;
    v167 = v79;
    v166 = v80;
    LOBYTE(v168) = v42;
    BYTE1(v168) = v43;
    *(&v168 + 1) = KeyPath;
    *&v169 = v46;
    BYTE8(v169) = 0;
    sub_25AF25FC4(&v85, &v152, &qword_27FA26F40, &qword_25B0156E8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F30, &qword_25B0156E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E80, &qword_25B0154E8);
    sub_25AFEA454();
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
    sub_25B004C74();
    v152 = v140;
    v153 = v141;
    v154[0] = v142[0];
    *(v154 + 9) = *(v142 + 9);
    sub_25AF24BFC(&v152);
    v176 = v161;
    v177 = v162;
    v178 = v163;
    v172 = v157;
    v173 = v158;
    v175 = v160;
    v174 = v159;
    v168 = v154[0];
    v169 = v154[1];
    v171 = v156;
    v170 = v155;
    v167 = v153;
    v166 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F10, &qword_25B0156D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F18, &qword_25B0156D8);
    sub_25AFEA39C();
    sub_25AFEA988();
    sub_25B004C74();
    sub_25AFB2164(v21, v69, v70, v71, v81, v82, v83);
    sub_25AF2602C(v179, &qword_27FA25B78, &qword_25B0142F0);
    sub_25AF2602C(&v85, &qword_27FA26F40, &qword_25B0156E8);

LABEL_15:
    v176 = v108;
    v177 = v109;
    v178 = v110;
    v172 = v104;
    v173 = v105;
    v175 = v107;
    v174 = v106;
    v168 = v100;
    v169 = v101;
    v171 = v103;
    v170 = v102;
    v167 = v99;
    v166 = v98;
    v60 = v84;
    v61 = v109;
    *(v84 + 160) = v108;
    *(v60 + 176) = v61;
    *(v60 + 192) = v178;
    v62 = v173;
    *(v60 + 96) = v172;
    *(v60 + 112) = v62;
    v63 = v175;
    *(v60 + 128) = v174;
    *(v60 + 144) = v63;
    v64 = v169;
    *(v60 + 32) = v168;
    *(v60 + 48) = v64;
    v65 = v171;
    *(v60 + 64) = v170;
    *(v60 + 80) = v65;
    v66 = v167;
    *v60 = v166;
    *(v60 + 16) = v66;
    return;
  }

  v24 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v166 = v12;
  *(&v166 + 1) = v11;
  *&v167 = v13;
  *(&v167 + 1) = v14;
  v68 = v18;
  LOBYTE(v168) = v18;
  *&v80 = v11;
  v25 = v181;
  v26 = v182;
  v27 = v183;
  sub_25AFE7490(v180, v181, v182, v183, v184, v185, v186);
  v28 = v24;
  *&v79 = v13;
  sub_25AF730A0(&v166, v16);

  v78 = v21;
  v29 = v25;
  v30 = v80;
  v77 = sub_25AFBD6BC(v21, v29, v26, v27 & 1);
  v31 = v68;

  *&v166 = v12;
  v32 = v79;
  *(&v166 + 1) = v30;
  *&v167 = v79;
  *(&v167 + 1) = v14;
  LOBYTE(v168) = v31;
  v33 = v16;
  BYTE1(v168) = v16;
  sub_25AFE4AC8(v187, v164);
  sub_25AFE7404(&v180);
  if (qword_27FA30B10)
  {
    v75 = v164[1];
    v76 = v164[0];
    v74 = v164[2];
    v34 = v165;
    *&v166 = v12;
    *(&v166 + 1) = v30;
    *&v167 = v32;
    *(&v167 + 1) = v14;
    LOBYTE(v168) = v31;
    v35 = qword_27FA30B10;
    v36 = sub_25AF730A0(&v166, v33);

    if (qword_27FA23790 != -1)
    {
      swift_once();
    }

    v154[0] = xmmword_27FA30B90;
    v154[1] = xmmword_27FA30BA0;
    v155 = xmmword_27FA30BB0;
    v153 = xmmword_27FA30B80;
    v152 = xmmword_27FA30B70;
    v37 = v71 & 1;
    *&v98 = 0;
    sub_25AF181DC(v12, v30, v32, v14, v31);
    v38 = v77;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26EC0, &qword_25B0156A8);
    sub_25B005484();
    v119 = v154[1];
    v120 = v155;
    v116 = v152;
    v117 = v153;
    v118 = v154[0];
    v135 = v155;
    LOBYTE(v98) = v34;
    *&v111 = v76;
    *(&v111 + 1) = v75;
    *&v112 = v74;
    BYTE8(v112) = v34;
    *&v113 = v12;
    *(&v113 + 1) = v30;
    *&v114 = v32;
    *(&v114 + 1) = v14;
    LOBYTE(v115) = v31;
    *(&v115 + 1) = v36;
    LOBYTE(v121) = v37;
    BYTE1(v121) = 1;
    *(&v121 + 1) = v38;
    v122 = v166;
    v123[0] = v76;
    v123[1] = v75;
    v123[2] = v74;
    v124 = v34;
    v125 = v12;
    v126 = v30;
    v127 = v32;
    v128 = v14;
    v129 = v31;
    v130 = v36;
    v133 = v154[0];
    v134 = v154[1];
    v131 = v152;
    v132 = v153;
    v136 = v37;
    v137 = 1;
    v138 = v38;
    v139 = v166;
    sub_25AF25FC4(&v111, &v166, &qword_27FA26EC8, &qword_25B0156B0);
    sub_25AF2602C(v123, &qword_27FA26EC8, &qword_25B0156B0);
    v147 = v119;
    v148 = v120;
    v149 = v121;
    v150 = v122;
    v143 = v115;
    v144 = v116;
    v145 = v117;
    v146 = v118;
    v140 = v111;
    v141 = v112;
    v142[0] = v113;
    v142[1] = v114;
    sub_25AFEA114(&v140);
    v176 = v149;
    v177 = v150;
    LOBYTE(v178) = v151;
    v172 = v145;
    v173 = v146;
    v175 = v148;
    v174 = v147;
    v168 = v142[0];
    v169 = v142[1];
    v171 = v144;
    v170 = v143;
    v167 = v141;
    v166 = v140;
    sub_25AF25FC4(&v111, &v152, &qword_27FA26EC8, &qword_25B0156B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E80, &qword_25B0154E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26EC8, &qword_25B0156B0);
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
    sub_25AFEA120();
    sub_25B004C74();
    v161 = v95;
    v162 = v96;
    LOBYTE(v163) = v97;
    v157 = v91;
    v158 = v92;
    v160 = v94;
    v159 = v93;
    v154[0] = v87;
    v154[1] = v88;
    v156 = v90;
    v155 = v89;
    v153 = v86;
    v152 = v85;
    sub_25AF24898(&v152);
    v176 = v161;
    v177 = v162;
    v178 = v163;
    v172 = v157;
    v173 = v158;
    v175 = v160;
    v174 = v159;
    v168 = v154[0];
    v169 = v154[1];
    v171 = v156;
    v170 = v155;
    v167 = v153;
    v166 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F10, &qword_25B0156D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26F18, &qword_25B0156D8);
    sub_25AFEA39C();
    sub_25AFEA988();
    sub_25B004C74();
    sub_25AFB2164(v78, v69, v70, v71, v81, v82, v83);

    sub_25AF2602C(v179, &qword_27FA25B78, &qword_25B0142F0);
    sub_25AF2602C(&v111, &qword_27FA26EC8, &qword_25B0156B0);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
}

double sub_25AFE4AC8@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26880, &qword_25B013DD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (a2)
  {

    v8 = sub_25B005464();
    sub_25B004FC4();
    v9 = sub_25B004FA4();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = sub_25B004FE4();
    sub_25AF2602C(v7, &qword_27FA26880, &qword_25B013DD8);
    KeyPath = swift_getKeyPath();
    v15 = v8;
    v16 = KeyPath;
    v17 = v10;
    v18 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26EF0, &qword_25B0156C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26E40, &qword_25B015290);
  sub_25AFEA264();
  sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, MEMORY[0x277CDD870]);
  sub_25B004C74();
  result = *&v19;
  v13 = v20;
  v14 = v21;
  *a3 = v19;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  return result;
}

void sub_25AFE4CD0()
{
  v0 = [objc_opt_self() systemFontOfSize:28.0 weight:*MEMORY[0x277D74410]];
  v1 = [objc_opt_self() configurationWithFont_];

  qword_27FA30C20 = v1;
}

void sub_25AFE4D54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 > 0xFD)
  {
    goto LABEL_9;
  }

  if (qword_27FA30B10)
  {
    v4 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 33);
    *&v39 = *v1;
    v5 = v39;
    *(&v39 + 1) = v4;
    *&v40 = v6;
    *(&v40 + 1) = v7;
    LOBYTE(v41) = v3;
    v9 = qword_27FA30B10;
    v21 = v7;
    sub_25AF1D7EC(v39, v4, v6, v7, v3);
    sub_25AF846B4(&v39, v23);

    v36 = v23[8];
    v37 = v23[9];
    v38 = v23[10];
    v32 = v23[4];
    v33 = v23[5];
    v34 = v23[6];
    v35 = v23[7];
    v28 = v23[0];
    v29 = v23[1];
    v30 = v23[2];
    v31 = v23[3];
    if (sub_25AFB2C70(&v28) == 1)
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v10 = sub_25B0044C4();
      __swift_project_value_buffer(v10, qword_27FA30C28);
      v11 = sub_25B0044B4();
      v12 = sub_25B005CA4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v39 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_25AF8E7DC(0x6666456C6562616CLL, 0xEC00000073746365, &v39);
        _os_log_impl(&dword_25AF0B000, v11, v12, "%s using default label effects. Typically for Controls API button labels.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x25F85EC30](v14, -1, -1);
        MEMORY[0x25F85EC30](v13, -1, -1);
      }

      sub_25AF231D0(v5, v4, v6, v21, v3);

      goto LABEL_9;
    }

    v47 = v36;
    v48 = v37;
    v49 = v38;
    v43 = v32;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    if (qword_27FA30B10)
    {
      *&v24 = v5;
      *(&v24 + 1) = v4;
      *&v25 = v6;
      *(&v25 + 1) = v7;
      LOBYTE(v26) = v3;
      v17 = qword_27FA30B10;
      v18 = sub_25AF730A0(&v24, v8);

      sub_25AFE70EC(&v39, v18, &v24);
      sub_25AF2602C(v23, &qword_27FA25B78, &qword_25B0142F0);
      sub_25AF231D0(v5, v4, v6, v7, v3);
      v50 = v24;
      v51 = v25;
      v52 = v26;
      v53 = v27;
      sub_25AFE73A8(&v50, v22);
      sub_25AFE7404(&v24);
      v19 = v53 >> 6;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          sub_25AFE7434(&v50);
          v15 = 0;
          v22[0] = 1;
          goto LABEL_10;
        }
      }

      else
      {
        if (!v19)
        {
          sub_25AFE7434(&v50);
          v15 = 0;
          v16 = 0;
          v22[0] = 1;
          goto LABEL_11;
        }

        v20 = v51;

        sub_25AFE7434(&v50);
        if (v20)
        {

          v15 = 1;
          goto LABEL_10;
        }
      }

LABEL_9:
      v15 = 0;
LABEL_10:
      v16 = 1;
LABEL_11:
      *a1 = 1;
      *(a1 + 1) = v39;
      *(a1 + 3) = BYTE2(v39);
      *(a1 + 4) = v15;
      *(a1 + 12) = 0u;
      *(a1 + 28) = 0u;
      *(a1 + 44) = 0u;
      *(a1 + 60) = 0u;
      *(a1 + 76) = 0;
      *(a1 + 84) = 1;
      *(a1 + 85) = 1;
      *(a1 + 86) = v16;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25AFE5118(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26960, &qword_25B014248);
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26968, &qword_25B014250);
  MEMORY[0x28223BE20](v81);
  v87 = &v69 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26970, &qword_25B014258);
  MEMORY[0x28223BE20](v80);
  v86 = &v69 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26978, &qword_25B014260);
  MEMORY[0x28223BE20](v79);
  v82 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26980, &qword_25B014268);
  MEMORY[0x28223BE20](v10);
  v77 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v69 - v13;
  v14 = *(v2 + 8);
  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  v17 = *(v2 + 32);
  v18 = *(v2 + 33);
  v19 = *(v2 + 34);
  v84 = *v2;
  *&v91 = v84;
  *(&v91 + 1) = v14;
  v92 = v16;
  v93 = v15;
  v83 = v15;
  v94 = v17;
  v85 = v18;
  v95 = v18;
  v89 = v19;
  v96 = v19;
  sub_25AFE4D54(&v97);
  v20 = v97;
  if (v97 == 2)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26988, &unk_25B014270);
    (*(*(v21 - 8) + 16))(v6, v88, v21);
    swift_storeEnumTagMultiPayload();
    sub_25AFE6D94();
    sub_25AF0F274(&qword_27FA269B0, &qword_27FA26988, &unk_25B014270, MEMORY[0x277CE04B0]);
    sub_25B004C74();
    return;
  }

  v72 = v10;
  v71 = v4;
  v73 = v6;
  v22 = qword_27FA30B10;
  v74 = a2;
  v75 = v103;
  v76 = v102;
  if (v17 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v23 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v85;
  if (!qword_27FA30B10)
  {
    goto LABEL_22;
  }

  v25 = v84;
  *&v91 = v84;
  *(&v91 + 1) = v14;
  v26 = v83;
  v92 = v16;
  v93 = v83;
  v94 = v17;
  sub_25AF1D7EC(v84, v14, v16, v83, v17);
  v27 = v22;
  v23 = sub_25AF730A0(&v91, v24);

  sub_25AF231D0(v25, v14, v16, v26, v17);
LABEL_8:
  v28 = v20 & 1;
  v29 = *(v23 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  v30 = v87;
  v31 = v87 + *(v81 + 36);
  *v31 = v28;
  *(v31 + 8) = HIDWORD(v20);
  *(v31 + 28) = v99;
  *(v31 + 44) = v100;
  *(v31 + 60) = *v101;
  *(v31 + 73) = *&v101[13];
  *(v31 + 12) = v98;
  *(v31 + 89) = v89;
  *(v31 + 90) = 1;
  *(v31 + 96) = v29;
  v32 = type metadata accessor for ColorMatrixEffect(0);
  v33 = v32[9];
  *(v31 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EB0, &qword_25B011130);
  swift_storeEnumTagMultiPayload();
  v34 = v31 + v32[10];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = v31 + v32[11];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26988, &unk_25B014270);
  (*(*(v36 - 8) + 16))(v30, v88, v36);
  v37 = qword_27FA30B10;
  v81 = v36;
  if (v17 > 0xFD)
  {
    v38 = v82;
    if (qword_27FA30B10)
    {
      v39 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);
      sub_25AF49F2C(v28);

      v40 = v85;
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v38 = v82;
  v41 = v84;
  if (!qword_27FA30B10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *&v91 = v84;
  *(&v91 + 1) = v14;
  v42 = v83;
  v92 = v16;
  v93 = v83;
  v94 = v17;
  sub_25AF1D7EC(v84, v14, v16, v83, v17);
  sub_25AF49F2C(v28);
  v43 = v37;
  v40 = v85;
  v39 = sub_25AF730A0(&v91, v85);

  sub_25AF231D0(v41, v14, v16, v42, v17);
LABEL_13:
  v44 = *(v39 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  KeyPath = swift_getKeyPath();
  v46 = v86;
  sub_25AF25B0C(v87, v86, &qword_27FA26968, &qword_25B014250);
  v47 = v46 + *(v80 + 36);
  v48 = v76 & 1;
  *v47 = v76 & 1;
  *(v47 + 1) = v48;
  *(v47 + 2) = v89;
  *(v47 + 8) = v44;
  *(v47 + 16) = KeyPath;
  *(v47 + 24) = 0;
  v49 = qword_27FA30B10;
  v70 = v28;
  if (v17 <= 0xFD)
  {
    if (qword_27FA30B10)
    {
      v53 = v84;
      *&v91 = v84;
      *(&v91 + 1) = v14;
      v54 = v83;
      v92 = v16;
      v93 = v83;
      v94 = v17;
      sub_25AF1D7EC(v84, v14, v16, v83, v17);
      v55 = v49;
      v56 = sub_25AF730A0(&v91, v40);

      sub_25AF231D0(v53, v14, v16, v54, v17);
      sub_25AF25B0C(v86, v38, &qword_27FA26970, &qword_25B014258);
      v57 = v38 + *(v79 + 36);
      *v57 = v56;
      *(v57 + 8) = v75 & 1;
      v58 = qword_27FA30B10;
      if (qword_27FA30B10)
      {
        *&v91 = v53;
        *(&v91 + 1) = v14;
        v92 = v16;
        v93 = v54;
        v94 = v17;
        sub_25AF1D7EC(v53, v14, v16, v54, v17);
        v59 = v58;
        v52 = sub_25AF730A0(&v91, v40);

        sub_25AF231D0(v53, v14, v16, v54, v17);
        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!qword_27FA30B10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v50 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);
  sub_25AF25B0C(v86, v38, &qword_27FA26970, &qword_25B014258);
  v51 = v38 + *(v79 + 36);
  *v51 = v50;
  *(v51 + 8) = v75 & 1;
  v52 = *&v49[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel];

LABEL_19:
  v60 = v73;
  v61 = v72;
  v62 = swift_getKeyPath();
  LOBYTE(v91) = 0;
  v63 = swift_getKeyPath();
  v90 = 0;
  v64 = v91;
  v65 = v38;
  v66 = v77;
  sub_25AF25B0C(v65, v77, &qword_27FA26978, &qword_25B014260);
  v67 = v66 + *(v61 + 36);
  *v67 = v52;
  *(v67 + 8) = v40;
  *(v67 + 9) = 0;
  *(v67 + 11) = v89;
  *(v67 + 16) = v62;
  *(v67 + 24) = v64;
  *(v67 + 32) = v63;
  *(v67 + 40) = 0;
  v68 = v78;
  sub_25AF25B0C(v66, v78, &qword_27FA26980, &qword_25B014268);
  sub_25AF25FC4(v68, v60, &qword_27FA26980, &qword_25B014268);
  swift_storeEnumTagMultiPayload();
  sub_25AFE6D94();
  sub_25AF0F274(&qword_27FA269B0, &qword_27FA26988, &unk_25B014270, MEMORY[0x277CE04B0]);
  sub_25B004C74();
  sub_25AFE70D8(v70);
  sub_25AF2602C(v68, &qword_27FA26980, &qword_25B014268);
}

void sub_25AFE5AF8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = qword_27FA30B10;
  if (v2 <= 0xFD)
  {
    if (qword_27FA30B10)
    {
      v5 = *v1;
      v6 = *(v1 + 8);
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
      v9 = *(v1 + 33);
      *&v18 = v5;
      *(&v18 + 1) = v6;
      v19 = v7;
      v20 = v8;
      v21 = v2;
      sub_25AF1D7EC(v5, v6, v7, v8, v2);
      v10 = v3;
      v4 = sub_25AF730A0(&v18, v9);

      sub_25AF231D0(v5, v6, v7, v8, v2);
      goto LABEL_6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v4 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_6:
      swift_getKeyPath();
      *&v18 = v4;
      sub_25AFE9EB8(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);
      sub_25B004234();

      v11 = sub_25B005714();
      MEMORY[0x28223BE20](v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CD0, &qword_25B015080);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CD8, &qword_25B015088);
      sub_25AF0F274(&qword_27FA26CE0, &qword_27FA26CD0, &qword_25B015080, MEMORY[0x277CE04B0]);
      v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CE8, &qword_25B015090);
      v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CF0, &qword_25B015098);
      v14 = sub_25AF0F274(&qword_27FA26CF8, &qword_27FA26CE8, &qword_25B015090, MEMORY[0x277CE0520]);
      v15 = sub_25B004954();
      v16 = sub_25AFE9EB8(&qword_27FA24020, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
      *&v18 = v15;
      *(&v18 + 1) = v16;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v18 = v12;
      *(&v18 + 1) = v13;
      v19 = v14;
      v20 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_25B005394();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_25AFE5E48(double a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CE8, &qword_25B015090);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26CF0, &qword_25B015098);
  v5 = sub_25AF0F274(&qword_27FA26CF8, &qword_27FA26CE8, &qword_25B015090, MEMORY[0x277CE0520]);
  sub_25B004954();
  sub_25AFE9EB8(&qword_27FA24020, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFE8A24, v2, v3, v4, v5, OpaqueTypeConformance2);
}

uint64_t sub_25AFE601C(uint64_t a1, double a2)
{
  sub_25B0057D4();
  v4 = v3;
  v6 = v5;
  v7 = sub_25B004954();
  v8 = sub_25AFE9EB8(&qword_27FA24020, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  return MEMORY[0x25F85C440](v7, v8, a2, v4, v6);
}

uint64_t sub_25AFE60C8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v2 + 32);
  return a1();
}

uint64_t sub_25AFE60EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004AC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AFE6158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_25AFE6228(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a1 + 32);
  sub_25AF67FDC();

  v10 = v2;

  v11 = v7;
  if ((sub_25B005DE4() & 1) == 0 || v3 != v6)
  {
    goto LABEL_8;
  }

  if (!v4)
  {

    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_8:

LABEL_9:

    return 0;
  }

  if (v5 == v9 && v4 == v8)
  {

LABEL_12:

    return v15 ^ v14 ^ 1u;
  }

  v13 = sub_25B006174();

  result = 0;
  if (v13)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t sub_25AFE637C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 <= 0xFD)
  {
    if (v11 <= 0xFD)
    {
      v18 = *(a2 + 40);
      v19 = *(a1 + 40);
      v16 = *(a2 + 48);
      v17 = *(a1 + 48);
      v14 = *(a2 + 49);
      v15 = *(a1 + 49);
      v25 = *a1;
      v26 = v2;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v20 = v8;
      v21 = v7;
      v22 = v10;
      v23 = v9;
      v24 = v11;
      sub_25AF1D7EC(v3, v2, v5, v4, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      sub_25AF1D7EC(v3, v2, v5, v4, v6);
      sub_25AF181DC(v3, v2, v5, v4, v6);
      v13 = sub_25AFD33F0(&v25, &v20);
      sub_25AF18128(v20, v21, v22, v23, v24);
      sub_25AF18128(v25, v26, v27, v28, v29);
      sub_25AF18128(v3, v2, v5, v4, v6);
      sub_25AF231D0(v3, v2, v5, v4, v6);
      result = 0;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
LABEL_6:
    sub_25AF231D0(v3, v2, v5, v4, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  v18 = *(a2 + 40);
  v19 = *(a1 + 40);
  v16 = *(a2 + 48);
  v17 = *(a1 + 48);
  v14 = *(a2 + 49);
  v15 = *(a1 + 49);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  if (v11 <= 0xFD)
  {
    goto LABEL_6;
  }

  sub_25AF231D0(v3, v2, v5, v4, v6);
  result = 0;
LABEL_8:
  if (v19 == v18 && ((v17 ^ v16) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t sub_25AFE660C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 <= 0xFD)
  {
    if (v11 <= 0xFD)
    {
      v14 = *(a2 + 33);
      v15 = *(a1 + 33);
      v21 = *a1;
      v22 = v2;
      v23 = v5;
      v24 = v4;
      v25 = v6;
      v16 = v8;
      v17 = v7;
      v18 = v10;
      v19 = v9;
      v20 = v11;
      sub_25AF1D7EC(v3, v2, v5, v4, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      sub_25AF1D7EC(v3, v2, v5, v4, v6);
      sub_25AF181DC(v3, v2, v5, v4, v6);
      v13 = sub_25AFD33F0(&v21, &v16);
      sub_25AF18128(v16, v17, v18, v19, v20);
      sub_25AF18128(v21, v22, v23, v24, v25);
      sub_25AF18128(v3, v2, v5, v4, v6);
      sub_25AF231D0(v3, v2, v5, v4, v6);
      if (v13)
      {
        return v15 ^ v14 ^ 1u;
      }

      return 0;
    }

    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
LABEL_6:
    sub_25AF231D0(v3, v2, v5, v4, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  v14 = *(a2 + 33);
  v15 = *(a1 + 33);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  if (v11 <= 0xFD)
  {
    goto LABEL_6;
  }

  sub_25AF231D0(v3, v2, v5, v4, v6);
  return v15 ^ v14 ^ 1u;
}

uint64_t sub_25AFE685C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 > 0xFD)
  {
    v16 = *(a2 + 33);
    v18 = *(a1 + 33);
    v14 = *(a2 + 34);
    v15 = *(a1 + 34);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    if (v11 > 0xFD)
    {
      sub_25AF231D0(v3, v2, v5, v4, v6);
      if (v18 == v16)
      {
        return v15 ^ v14 ^ 1u;
      }

      return 0;
    }

LABEL_7:
    sub_25AF231D0(v3, v2, v5, v4, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  if (v11 > 0xFD)
  {
    sub_25AF1D7EC(*a1, v2, v5, v4, v6);
    sub_25AF1D7EC(v8, v7, v10, v9, v11);
    sub_25AF1D7EC(v3, v2, v5, v4, v6);
    sub_25AF18128(v3, v2, v5, v4, v6);
    goto LABEL_7;
  }

  v17 = *(a2 + 33);
  v19 = *(a1 + 33);
  v14 = *(a2 + 34);
  v15 = *(a1 + 34);
  v25 = *a1;
  v26 = v2;
  v27 = v5;
  v28 = v4;
  v29 = v6;
  v20 = v8;
  v21 = v7;
  v22 = v10;
  v23 = v9;
  v24 = v11;
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF1D7EC(v8, v7, v10, v9, v11);
  sub_25AF1D7EC(v3, v2, v5, v4, v6);
  sub_25AF181DC(v3, v2, v5, v4, v6);
  v13 = sub_25AFD33F0(&v25, &v20);
  sub_25AF18128(v20, v21, v22, v23, v24);
  sub_25AF18128(v25, v26, v27, v28, v29);
  sub_25AF18128(v3, v2, v5, v4, v6);
  sub_25AF231D0(v3, v2, v5, v4, v6);
  result = 0;
  if ((v13 & 1) != 0 && ((v19 ^ v17) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t sub_25AFE6AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 33);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 33);
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  v19 = *a1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v11;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v12;
  sub_25AF181DC(v19, v2, v3, v4, v11);
  sub_25AF181DC(v6, v7, v8, v9, v12);
  LODWORD(v6) = sub_25AFD33F0(&v19, &v14);
  sub_25AF18128(v14, v15, v16, v17, v18);
  sub_25AF18128(v19, v20, v21, v22, v23);
  return v6 & ~(v5 ^ v10) & 1;
}

id sub_25AFE6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x25F85E380]();
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA237F8 != -1)
  {
    swift_once();
  }

  if (a3)
  {
    v5 = [qword_27FA30C20 configurationByApplyingConfiguration_];
  }

  else
  {
    v5 = qword_27FA30C20;
  }

  v6 = v5;
  v7 = sub_25B005924();
  v8 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode_];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 _imageThatSuppressesAccessibilityHairlineThickening];

  objc_autoreleasePoolPop(v4);
  return v11;
}

unint64_t sub_25AFE6D94()
{
  result = qword_27FA26990;
  if (!qword_27FA26990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26980, &qword_25B014268);
    v3 = sub_25AFE6E20();
    sub_25AFB48B0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26990);
  }

  return result;
}

unint64_t sub_25AFE6E20()
{
  result = qword_27FA26998;
  if (!qword_27FA26998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26978, &qword_25B014260);
    v3 = sub_25AFE6EAC();
    sub_25AFE7074(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26998);
  }

  return result;
}

unint64_t sub_25AFE6EAC()
{
  result = qword_27FA269A0;
  if (!qword_27FA269A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26970, &qword_25B014258);
    v3 = sub_25AFE6F38();
    sub_25AFE7020(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269A0);
  }

  return result;
}

unint64_t sub_25AFE6F38()
{
  result = qword_27FA269A8;
  if (!qword_27FA269A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26968, &qword_25B014250);
    sub_25AF0F274(&qword_27FA269B0, &qword_27FA26988, &unk_25B014270, MEMORY[0x277CE04B0]);
    sub_25AFE9EB8(&qword_27FA269B8, type metadata accessor for ColorMatrixEffect, &unk_25B0138A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269A8);
  }

  return result;
}

unint64_t sub_25AFE7020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA269C0;
  if (!qword_27FA269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269C0);
  }

  return result;
}

unint64_t sub_25AFE7074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA269C8;
  if (!qword_27FA269C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269C8);
  }

  return result;
}

double sub_25AFE70D8(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
  }

  return result;
}

void sub_25AFE70EC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v21 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  if (v10 >> 6 > 1)
  {
    goto LABEL_7;
  }

  if (!(v10 >> 6))
  {
    v19 = a1[2];

    if (!v9)
    {

      v12 = 0;
      v13 = v8;
      v7 = v19;
      v15 = v21;
      goto LABEL_18;
    }

    v12 = a1[17];
    if (v12)
    {
      v13 = a1[16];
      swift_getKeyPath();
      sub_25AFE9EB8(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);

      sub_25B004234();

      v14 = *(a2 + 74);

      if ((v14 & 1) == 0)
      {

        v7 = v19;
        v15 = v21;
        if (v10)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    v13 = v8;
    v12 = v9;
    v7 = v19;
    v15 = v21;
    if (v10)
    {
LABEL_16:

      v7 = 0;
      v15 = 0;
      v8 = 0;
      v9 = 0;
      LOBYTE(v10) = 64;
      v5 = v13;
      v6 = v12;
      goto LABEL_19;
    }

LABEL_18:

    goto LABEL_19;
  }

  v18 = a1[17];
  if (v18)
  {
    v20 = a1[2];
    v17 = a1[16];
    swift_getKeyPath();
    sub_25AFE9EB8(&qword_27FA25270, type metadata accessor for GlanceButtonModel, &unk_25B011C14);

    sub_25B004234();

    v16 = *(a2 + 74);

    if ((v16 & 1) == 0)
    {
      v7 = 0;
      v15 = 0;
      v8 = 0;
      v9 = 0;
      v13 = 0;
      v12 = 0;
      LOBYTE(v10) = 64;
      v5 = v17;
      v6 = v18;
      goto LABEL_19;
    }

    v7 = v20;
  }

  else
  {
LABEL_7:
  }

  v15 = v21;
  sub_25AFE7490(v5, v6, v7, v21, v8, v9, v10);
  v13 = 0;
  v12 = 0;
LABEL_19:
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v15;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v13;
  *(a3 + 64) = v12;
}

void sub_25AFE7490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 != 2)
    {
      return;
    }
  }

  else
  {
  }
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

uint64_t sub_25AFE7518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25AFE7568(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
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

unint64_t sub_25AFE75DC()
{
  result = qword_27FA269D0;
  if (!qword_27FA269D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA269D8, &qword_25B0143E0);
    sub_25AFE6D94();
    sub_25AF0F274(&qword_27FA269B0, &qword_27FA26988, &unk_25B014270, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269D0);
  }

  return result;
}

uint64_t sub_25AFE7694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFE76DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AFE7784()
{
  result = qword_27FA269E0;
  if (!qword_27FA269E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA269E8, &qword_25B0146E8);
    v3 = sub_25AF0F274(&qword_27FA269F0, &qword_27FA269F8, &qword_25B0146F0, MEMORY[0x277CDD870]);
    sub_25AFE783C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA269E0);
  }

  return result;
}

unint64_t sub_25AFE783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26A00;
  if (!qword_27FA26A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26A00);
  }

  return result;
}

uint64_t sub_25AFE7900@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004A54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AFE7930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004A64();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25AFE7990()
{
  result = qword_27FA26A98;
  if (!qword_27FA26A98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A90, &qword_25B0148E8);
    sub_25AFE7A1C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26A98);
  }

  return result;
}

unint64_t sub_25AFE7A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26AA0;
  if (!qword_27FA26AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AA0);
  }

  return result;
}

unint64_t sub_25AFE7AEC()
{
  result = qword_27FA26AA8;
  if (!qword_27FA26AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A30, &qword_25B014828);
    sub_25AFE7BA4();
    sub_25AF0F274(&qword_27FA26AF8, &qword_27FA26A38, &qword_25B014830, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AA8);
  }

  return result;
}

unint64_t sub_25AFE7BA4()
{
  result = qword_27FA26AB0;
  if (!qword_27FA26AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A28, &qword_25B014820);
    v3 = sub_25AFE7C30();
    sub_25AFE7EFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AB0);
  }

  return result;
}

unint64_t sub_25AFE7C30()
{
  result = qword_27FA26AB8;
  if (!qword_27FA26AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A20, &qword_25B014818);
    v3 = sub_25AFE7CBC();
    sub_25AFE7EA8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AB8);
  }

  return result;
}

unint64_t sub_25AFE7CBC()
{
  result = qword_27FA26AC0;
  if (!qword_27FA26AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A18, &qword_25B014810);
    v3 = sub_25AFE7D48();
    sub_25AFE7E54(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AC0);
  }

  return result;
}

unint64_t sub_25AFE7D48()
{
  result = qword_27FA26AC8;
  if (!qword_27FA26AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A10, &qword_25B014808);
    v3 = sub_25AF0F274(&qword_27FA26AD0, &qword_27FA26A08, &qword_25B014800, MEMORY[0x277CE04B0]);
    sub_25AFE7E00(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AC8);
  }

  return result;
}

unint64_t sub_25AFE7E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26AD8;
  if (!qword_27FA26AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AD8);
  }

  return result;
}

unint64_t sub_25AFE7E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26AE0;
  if (!qword_27FA26AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AE0);
  }

  return result;
}

unint64_t sub_25AFE7EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26AE8;
  if (!qword_27FA26AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AE8);
  }

  return result;
}

unint64_t sub_25AFE7EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26AF0;
  if (!qword_27FA26AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26AF0);
  }

  return result;
}

unint64_t sub_25AFE7F54()
{
  result = qword_27FA26B00;
  if (!qword_27FA26B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A50, &qword_25B014848);
    v3 = sub_25AFE7FE0();
    sub_25AFE8098(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26B00);
  }

  return result;
}

unint64_t sub_25AFE7FE0()
{
  result = qword_27FA26B08;
  if (!qword_27FA26B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26A48, &qword_25B014840);
    sub_25AF0F274(&qword_27FA26B10, &qword_27FA26A40, &qword_25B014838, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26B08);
  }

  return result;
}

unint64_t sub_25AFE8098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26B18;
  if (!qword_27FA26B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26B18);
  }

  return result;
}

uint64_t sub_25AFE81B0()
{
  sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 51, 7);
}

unint64_t sub_25AFE8238()
{
  result = qword_27FA26BB0;
  if (!qword_27FA26BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BA8, &qword_25B014E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BB8, &unk_25B014E80);
    sub_25AFE832C();
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA26BC8, &qword_27FA26BD0, &qword_25B014E90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26BB0);
  }

  return result;
}

unint64_t sub_25AFE832C()
{
  result = qword_27FA26BC0;
  if (!qword_27FA26BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BB8, &unk_25B014E80);
    sub_25AF0F274(&qword_27FA26778, &qword_27FA26780, &qword_25B013950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26BC0);
  }

  return result;
}

uint64_t sub_25AFE83EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004AC4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_25AFE846C()
{
  result = qword_27FA26BD8;
  if (!qword_27FA26BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B28, &qword_25B014DF8);
    sub_25AF0F274(&qword_27FA26BE0, &qword_27FA26B20, &qword_25B014DF0, MEMORY[0x277CDF028]);
    sub_25AF0F274(&qword_27FA260E8, &qword_27FA260F0, &unk_25B0117D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26BD8);
  }

  return result;
}

uint64_t sub_25AFE85B4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F85C890]();
  *a1 = result;
  return result;
}

uint64_t sub_25AFE8680()
{
  swift_unknownObjectRelease();

  sub_25AF18128(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

unint64_t sub_25AFE86D8()
{
  result = qword_27FA26C20;
  if (!qword_27FA26C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26C10, &qword_25B015008);
    sub_25AF0F274(&qword_27FA26C28, &qword_27FA25708, &qword_25B015010, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26C20);
  }

  return result;
}

unint64_t sub_25AFE87C0()
{
  result = qword_27FA26C78;
  if (!qword_27FA26C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26C60, &unk_25B015040);
    sub_25AF0F274(&qword_27FA26C80, &qword_27FA26C68, &qword_25B015050, MEMORY[0x277CE04B0]);
    sub_25AFE9EB8(&qword_27FA26C88, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26C78);
  }

  return result;
}

uint64_t sub_25AFE88A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AFE8924()
{
  result = qword_27FA26CC0;
  if (!qword_27FA26CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CA8, &qword_25B015070);
    sub_25AF0F274(&qword_27FA26CC8, &qword_27FA26CB0, &qword_25B015078, MEMORY[0x277CE04B0]);
    sub_25AFE9EB8(&qword_27FA26C88, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26CC0);
  }

  return result;
}

unint64_t sub_25AFE8A74()
{
  result = qword_27FA26D18;
  if (!qword_27FA26D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26D00, &qword_25B0150A0);
    sub_25AF0F274(&qword_27FA26D20, &qword_27FA26D28, &unk_25B0150E0, MEMORY[0x277CDF028]);
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D18);
  }

  return result;
}

unint64_t sub_25AFE8B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26D30;
  if (!qword_27FA26D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeroOpacityInEditModeEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_25AFE8CC4()
{
  result = qword_27FA26D38;
  if (!qword_27FA26D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26BF8, &qword_25B014FC0);
    sub_25AFE8D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D38);
  }

  return result;
}

unint64_t sub_25AFE8D50()
{
  result = qword_27FA26D40;
  if (!qword_27FA26D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B80, &qword_25B014E50);
    sub_25AFE8E08();
    sub_25AF0F274(&qword_27FA25FD0, &qword_27FA25ED8, &qword_25B014F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D40);
  }

  return result;
}

unint64_t sub_25AFE8E08()
{
  result = qword_27FA26D48;
  if (!qword_27FA26D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B78, &qword_25B014E48);
    sub_25AFE8EC0();
    sub_25AF0F274(&qword_27FA26DB0, &qword_27FA26DB8, &qword_25B015148, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D48);
  }

  return result;
}

unint64_t sub_25AFE8EC0()
{
  result = qword_27FA26D50;
  if (!qword_27FA26D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B70, &qword_25B014E40);
    v3 = sub_25AFE8F4C();
    sub_25AFB48B0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D50);
  }

  return result;
}

unint64_t sub_25AFE8F4C()
{
  result = qword_27FA26D58;
  if (!qword_27FA26D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B68, &qword_25B014E38);
    v3 = sub_25AFE8FD8();
    sub_25AF5A09C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D58);
  }

  return result;
}

unint64_t sub_25AFE8FD8()
{
  result = qword_27FA26D60;
  if (!qword_27FA26D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B60, &qword_25B014E30);
    v3 = sub_25AFE9064();
    sub_25AFE9404(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D60);
  }

  return result;
}

unint64_t sub_25AFE9064()
{
  result = qword_27FA26D68;
  if (!qword_27FA26D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B58, &qword_25B014E28);
    sub_25AFE90F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D68);
  }

  return result;
}

unint64_t sub_25AFE90F0()
{
  result = qword_27FA26D70;
  if (!qword_27FA26D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B50, &qword_25B014E20);
    sub_25AFE917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D70);
  }

  return result;
}

unint64_t sub_25AFE917C()
{
  result = qword_27FA26D78;
  if (!qword_27FA26D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B48, &qword_25B014E18);
    sub_25AFE9208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D78);
  }

  return result;
}

unint64_t sub_25AFE9208()
{
  result = qword_27FA26D80;
  if (!qword_27FA26D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B40, &qword_25B014E10);
    sub_25AFE92C0();
    sub_25AF0F274(&qword_27FA26D98, &qword_27FA26DA0, &qword_25B015140, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D80);
  }

  return result;
}

unint64_t sub_25AFE92C0()
{
  result = qword_27FA26D88;
  if (!qword_27FA26D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B38, &qword_25B014E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26B28, &qword_25B014DF8);
    sub_25B004E84();
    sub_25AFE846C();
    sub_25AFE9EB8(&qword_27FA26BE8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA26D90, &qword_27FA26BF0, &qword_25B014EF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26D88);
  }

  return result;
}

unint64_t sub_25AFE9404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26DA8;
  if (!qword_27FA26DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26DA8);
  }

  return result;
}

uint64_t sub_25AFE9458()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26C08, &qword_25B015000);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26C10, &qword_25B015008);
  sub_25AF0F274(&qword_27FA26C18, &qword_27FA26C08, &qword_25B015000, MEMORY[0x277CE04B0]);
  sub_25AFE86D8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFE9518()
{
  result = qword_27FA26DC0;
  if (!qword_27FA26DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26C30, &qword_25B015018);
    sub_25AF0F274(&qword_27FA26C40, &qword_27FA26C38, &qword_25B015020, MEMORY[0x277CE04B0]);
    sub_25AFE9EB8(&qword_27FA26C88, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26DC0);
  }

  return result;
}

unint64_t sub_25AFE9604()
{
  result = qword_27FA26DC8;
  if (!qword_27FA26DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26DD0, &qword_25B015150);
    sub_25AFE88A8(&qword_27FA26C70, &qword_27FA26C58, &qword_25B015038, sub_25AFE87C0);
    sub_25AF0F274(&qword_27FA26C80, &qword_27FA26C68, &qword_25B015050, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26DC8);
  }

  return result;
}

unint64_t sub_25AFE96EC()
{
  result = qword_27FA26DD8;
  if (!qword_27FA26DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26DE0, qword_25B015158);
    sub_25AFE88A8(&qword_27FA26CB8, &qword_27FA26CA0, &qword_25B015068, sub_25AFE8924);
    sub_25AF0F274(&qword_27FA26CC8, &qword_27FA26CB0, &qword_25B015078, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26DD8);
  }

  return result;
}

uint64_t sub_25AFE97D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CD0, &qword_25B015080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CD8, &qword_25B015088);
  sub_25AF0F274(&qword_27FA26CE0, &qword_27FA26CD0, &qword_25B015080, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CE8, &qword_25B015090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26CF0, &qword_25B015098);
  sub_25AF0F274(&qword_27FA26CF8, &qword_27FA26CE8, &qword_25B015090, MEMORY[0x277CE0520]);
  sub_25B004954();
  sub_25AFE9EB8(&qword_27FA24020, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AFE9988()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26D00, &qword_25B0150A0);
  v3 = sub_25AFE8A74();
  sub_25AFE8B58(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFE9A64()
{
  result = qword_27FA26E00;
  if (!qword_27FA26E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26DF0, &qword_25B015268);
    sub_25AF0F274(&qword_27FA26E08, &qword_27FA26E10, &qword_25B015270, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26E00);
  }

  return result;
}

unint64_t sub_25AFE9B1C()
{
  result = qword_27FA26E48;
  if (!qword_27FA26E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26E38, &qword_25B015288);
    v1 = MEMORY[0x277CDD870];
    sub_25AF0F274(&qword_27FA26E28, &qword_27FA26E18, &qword_25B015278, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26E30, &qword_27FA26E20, &qword_25B015280, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26E48);
  }

  return result;
}

uint64_t sub_25AFE9C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26DE8, &qword_25B015260);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26DF0, &qword_25B015268);
  sub_25AF0F274(&qword_27FA26DF8, &qword_27FA26DE8, &qword_25B015260, MEMORY[0x277CE04B0]);
  sub_25AFE9A64();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFE9CEC()
{
  result = qword_27FA26E58;
  if (!qword_27FA26E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26E60, &qword_25B0152F8);
    sub_25AFE9B1C();
    sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, MEMORY[0x277CDD870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26E58);
  }

  return result;
}

unint64_t sub_25AFE9DF8()
{
  result = qword_27FA26E70;
  if (!qword_27FA26E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26E68, &qword_25B0154B0);
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26E70);
  }

  return result;
}

uint64_t sub_25AFE9EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AFE9F10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26E68, &qword_25B0154B0);
  sub_25AFE9DF8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFE9FBC()
{
  result = qword_27FA26EA8;
  if (!qword_27FA26EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26EB0, &qword_25B015600);
    v1 = MEMORY[0x277CDD870];
    sub_25AF0F274(&qword_27FA26E88, &qword_27FA26E78, &qword_25B0154E0, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26EA8);
  }

  return result;
}

unint64_t sub_25AFEA120()
{
  result = qword_27FA26ED0;
  if (!qword_27FA26ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26EC8, &qword_25B0156B0);
    v3 = sub_25AFEA1AC();
    sub_25AFEA348(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26ED0);
  }

  return result;
}

unint64_t sub_25AFEA1AC()
{
  result = qword_27FA26ED8;
  if (!qword_27FA26ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26EE0, &qword_25B0156B8);
    sub_25AFEA264();
    sub_25AF0F274(&qword_27FA26E50, &qword_27FA26E40, &qword_25B015290, MEMORY[0x277CDD870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26ED8);
  }

  return result;
}

unint64_t sub_25AFEA264()
{
  result = qword_27FA26EE8;
  if (!qword_27FA26EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26EF0, &qword_25B0156C0);
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26EE8);
  }

  return result;
}

unint64_t sub_25AFEA348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26F08;
  if (!qword_27FA26F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F08);
  }

  return result;
}

unint64_t sub_25AFEA39C()
{
  result = qword_27FA26F20;
  if (!qword_27FA26F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F10, &qword_25B0156D0);
    sub_25AFEA454();
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F20);
  }

  return result;
}

unint64_t sub_25AFEA454()
{
  result = qword_27FA26F28;
  if (!qword_27FA26F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F30, &qword_25B0156E0);
    sub_25AFEA50C();
    sub_25AF0F274(&qword_27FA23F60, &qword_27FA23F68, &qword_25B013E70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F28);
  }

  return result;
}

unint64_t sub_25AFEA50C()
{
  result = qword_27FA26F38;
  if (!qword_27FA26F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F40, &qword_25B0156E8);
    sub_25AFEA598();
    sub_25AFEA7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F38);
  }

  return result;
}

unint64_t sub_25AFEA598()
{
  result = qword_27FA26F48;
  if (!qword_27FA26F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F50, &qword_25B0156F0);
    sub_25AFEA624();
    sub_25AFEA708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F48);
  }

  return result;
}

unint64_t sub_25AFEA624()
{
  result = qword_27FA26F58;
  if (!qword_27FA26F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F60, &qword_25B0156F8);
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26778, &qword_27FA26780, &qword_25B013950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F58);
  }

  return result;
}

unint64_t sub_25AFEA708()
{
  result = qword_27FA26F68;
  if (!qword_27FA26F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F70, &qword_25B015700);
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26F78, &qword_27FA26F80, &qword_25B015708, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F68);
  }

  return result;
}

unint64_t sub_25AFEA7EC()
{
  result = qword_27FA26F88;
  if (!qword_27FA26F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F90, &qword_25B015710);
    sub_25AFEA8A4();
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F88);
  }

  return result;
}

unint64_t sub_25AFEA8A4()
{
  result = qword_27FA26F98;
  if (!qword_27FA26F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26FA0, &qword_25B015718);
    sub_25AF0F274(&qword_27FA26EF8, &qword_27FA26F00, &qword_25B0156C8, MEMORY[0x277CDD870]);
    sub_25AF0F274(&qword_27FA26FA8, &qword_27FA26FB0, &qword_25B015720, MEMORY[0x277CE07B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26F98);
  }

  return result;
}

unint64_t sub_25AFEA988()
{
  result = qword_27FA26FB8;
  if (!qword_27FA26FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26F18, &qword_25B0156D8);
    sub_25AF0F274(&qword_27FA26E90, &qword_27FA26E80, &qword_25B0154E8, MEMORY[0x277CDD870]);
    sub_25AFEA120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26FB8);
  }

  return result;
}

unint64_t sub_25AFEAA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26FC0;
  if (!qword_27FA26FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26FC0);
  }

  return result;
}

unint64_t sub_25AFEAAA0()
{
  result = qword_27FA26FD0;
  if (!qword_27FA26FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26FD8, &qword_25B015728);
    sub_25AFEA39C();
    sub_25AFEA988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26FD0);
  }

  return result;
}

uint64_t sub_25AFEB0DC()
{
  swift_getKeyPath();
  sub_25AFEC084();
  sub_25B004234();

  v1 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName);

  return v1;
}

uint64_t sub_25AFEB17C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName);
  v6 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName) == a1 && *(v2 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName + 8) == a2;
  if (v6 || (sub_25B006174() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFEC084();
    sub_25B004224();
  }
}

void *sub_25AFEB2B8()
{
  swift_getKeyPath();
  sub_25AFEC084();
  sub_25B004234();

  v1 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor);
  v2 = v1;
  return v1;
}

void sub_25AFEB338(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor;
  v5 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFEC084();
    sub_25B004224();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_25AFB4CD8();
  v6 = v5;
  v7 = a1;
  v8 = sub_25B005DE4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_25AFEB4E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AFEC084();
  sub_25B004234();

  return *(v2 + *a2);
}

void sub_25AFEB578(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFEC084();
    sub_25B004224();
  }
}

Swift::Void __swiftcall GlanceFocusModel.updateFocusMode()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_25B005B34();
  v5 = v0;
  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  v9 = sub_25AF6C7F8(0, 0, v3, &unk_25B015750, v7);
  v10 = *&v5[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel_updateFocusModeTask];
  *&v5[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel_updateFocusModeTask] = v9;
  if (v10)
  {

    sub_25B005BF4();
  }
}

void sub_25AFEB7BC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFEC084();
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter);
}

void sub_25AFEB83C(char a1)
{
  v2 = OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter;
  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter) = a1 & 1;
    swift_getKeyPath();
    sub_25AFEC084();
    sub_25B004234();

    if (v3 != *(v1 + v2))
    {
      GlanceFocusModel.updateFocusMode()();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFEC084();
    sub_25B004224();
  }
}

void sub_25AFEB978(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter;
  v4 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter);
  *(a1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter) = a2;
  swift_getKeyPath();
  sub_25AFEC084();
  sub_25B004234();

  if (v4 != *(a1 + v3))
  {
    GlanceFocusModel.updateFocusMode()();
  }
}

uint64_t sub_25AFEBA18()
{
  v0[2] = sub_25B005B34();
  v0[3] = sub_25B005B24();
  v0[4] = sub_25B005B24();
  v2 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFEBABC, v2, v1);
}

uint64_t sub_25AFEBABC()
{

  v1 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF27F90, v1, v0);
}

uint64_t sub_25AFEBB40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AFEBB80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AF18ADC;

  return sub_25AFEBA18();
}

id GlanceFocusModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GlanceFocusModel.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusAccessibilityValue];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName];
  *v3 = 0x6C69662E6E6F6F6DLL;
  v3[1] = 0xE90000000000006CLL;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel_isCompanionReachable] = 2;
  v4 = &v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusStateDisplayName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusStateDescription];
  *v5 = 0;
  v5[1] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusState] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusReduceInterruptions] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__companionSupportsGreyMatter] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel_updateFocusModeTask] = 0;
  sub_25B004264();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id GlanceFocusModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GlanceFocusModel(uint64_t a1)
{
  result = qword_27FA270B8;
  if (!qword_27FA270B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFEBF6C(uint64_t a1)
{
  result = sub_25B004274();
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

unint64_t sub_25AFEC084()
{
  result = qword_27FA256E0;
  if (!qword_27FA256E0)
  {
    type metadata accessor for GlanceFocusModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA256E0);
  }

  return result;
}

void sub_25AFEC0E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor);
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusColor) = v2;
  v4 = v2;
}

uint64_t sub_25AFEC14C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusButtonSymbolName);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25AFEC1B8()
{
  v0 = sub_25B0044C4();
  __swift_allocate_value_buffer(v0, qword_27FA30C28);
  __swift_project_value_buffer(v0, qword_27FA30C28);
  v1 = [objc_opt_self() ncc];
  return sub_25B0044D4();
}

void sub_25AFEC228(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_25AF98A50(0, v2, 0);
    v22 = v23;
    v3 = a1 + 64;
    v4 = sub_25B005E64();
    sub_25B005B34();
    v5 = 0;
    v20 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      v21 = *(a1 + 36);
      v8 = *(*(a1 + 48) + 8 * v4);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = v22;
      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25AF98A50((v10 > 1), v11 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v11 + 1;
      v12 = v9 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v22 = v9;
      if (v21 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_25AF40220(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_25AF40220(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
}

void sub_25AFEC4BC()
{
  swift_getKeyPath();
  v40 = v0;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  v37 = v0;
  v1 = MEMORY[0x277D84F90];
  if (*&v0[OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse])
  {
    v2 = *&v0[OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 64;
    v38 = v3;
    v39 = v2;
    v34 = v3 - 1;
    v35 = v2 + 64;
    do
    {
      v36 = v1;
      v6 = (v5 + 40 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v8 = *(v6 - 4);
        v9 = *(v6 - 3);
        v11 = *(v6 - 2);
        v10 = *(v6 - 1);
        v12 = *v6;
        sub_25B005B34();
        sub_25AF181DC(v8, v9, v11, v10, v12);
        sub_25B005B24();
        sub_25B005AE4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v12 < 0x40)
        {
          break;
        }

        ++v7;
        sub_25AF18128(v8, v9, v11, v10, v12);
        v6 += 40;
        v2 = v39;
        if (v38 == v7)
        {
          v1 = v36;
          goto LABEL_18;
        }
      }

      v13 = v36;
      v40 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25AF98A50(0, *(v36 + 16) + 1, 1);
        v13 = v40;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_25AF98A50((v14 > 1), v15 + 1, 1);
        v13 = v40;
      }

      v4 = v7 + 1;
      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      *(v16 + 4) = v8;
      *(v16 + 5) = v9;
      *(v16 + 6) = v11;
      *(v16 + 7) = v10;
      v16[64] = v12;
      v5 = v35;
      v2 = v39;
      v1 = v13;
    }

    while (v34 != v7);
  }

LABEL_18:

  v2 = sub_25AF9B0A0(v1, v17, v18);

  if (qword_27FA23768 != -1)
  {
LABEL_31:
    swift_once();
  }

  sub_25AFEC228(v19);
  v23 = sub_25AF9B0A0(v20, v21, v22);

  sub_25AFFF414(*(v37 + 40), *(v37 + 41), 0);
  v27 = sub_25AF9B0A0(v24, v25, v26);

  if (*(v2 + 16) <= *(v27 + 16) >> 3)
  {
    v40 = v27;
    sub_25AFFAB4C(v2);
  }

  else
  {
    v27 = sub_25AFFB0F8(v2, v27);
  }

  if (*(v23 + 16) <= *(v27 + 16) >> 3)
  {
    v40 = v27;
    sub_25AFFAB4C(v23);

    v28 = v27;
  }

  else
  {
    v28 = sub_25AFFB0F8(v23, v27);
  }

  v29 = sub_25B00061C(v28, v37);

  v30 = *(v29 + 16);
  if (!v30)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_29:
    v40 = v31;
    sub_25AFFE3FC(&v40);

    return;
  }

  v31 = sub_25AF1595C(v30, 0);
  v32 = sub_25AF16A64(&v40, (v31 + 32), v30, v29);
  v33 = v40;

  sub_25AF18700(v33);
  if (v32 == v30)
  {
    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
}

void sub_25AFEC930()
{
  v1 = v0;
  swift_getKeyPath();
  *&v27 = v0;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  v2 = MEMORY[0x277D84F90];
  if (*(v27 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
  {
    v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16);

  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = 0;
  v6 = v3 + 32;
  do
  {
    v24 = v2;
    v7 = (v6 + 40 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *v7;
      v10 = v7[1];
      v29 = *(v7 + 32);
      v27 = v9;
      v28 = v10;
      sub_25B005B34();
      sub_25AF196CC(&v27, v25);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v11 = *(v1 + 16);
      swift_getKeyPath();
      v25[0] = v11;
      sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
      sub_25B004234();

      v12 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
      swift_beginAccess();
      v13 = *(v11 + v12);
      v14 = *(v13 + 16);

      if (!v14)
      {
        break;
      }

      v15 = sub_25AF8F064(&v27);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(*(v13 + 56) + 2 * v15);

      if (v17 == 2)
      {
        goto LABEL_7;
      }

      if (v17)
      {
        goto LABEL_20;
      }

      sub_25AF1C414(&v27);
LABEL_8:
      ++v8;
      v7 = (v7 + 40);
      if (v4 == v8)
      {
        goto LABEL_25;
      }
    }

    if (v29 <= 0x3Fu)
    {

LABEL_7:
      sub_25AF1C414(&v27);

      goto LABEL_8;
    }

LABEL_20:
    v2 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25AF98A50(0, *(v24 + 16) + 1, 1);
      v2 = v26;
    }

    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_25AF98A50((v19 > 1), v20 + 1, 1);
      v2 = v26;
    }

    v5 = v8 + 1;
    *(v2 + 16) = v20 + 1;
    v21 = v2 + 40 * v20;
    v22 = v27;
    v23 = v28;
    *(v21 + 64) = v29;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
    v6 = v3 + 32;
  }

  while (v4 - 1 != v8);
LABEL_25:
}

void sub_25AFECC84(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v88 = *a1;
  v89 = v4;
  v5 = *(a1 + 32);
  v90 = v5;
  v6 = *a1;
  v7 = *(a1 + 1);
  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  swift_getKeyPath();
  *&v85 = v2;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
  {
    v10 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v84 = v10;

  v11 = sub_25AF63D44(&v88, a2);
  if (v12)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v13 = sub_25B0044C4();
    __swift_project_value_buffer(v13, qword_27FA30C28);
    sub_25AF196CC(&v88, &v85);

    v14 = sub_25B0044B4();
    v15 = sub_25B005CB4();
    sub_25AF1C414(&v88);

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v83 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_25AF8E7DC(0xD000000000000027, 0x800000025B01B310, &v83);
      *(v16 + 12) = 2080;
      v85 = v88;
      v86 = v89;
      v87 = v90;
      sub_25AF196CC(&v88, v82);
      v18 = sub_25AFD3228();
      v20 = v19;
      sub_25AF18128(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
      v21 = sub_25AF8E7DC(v18, v20, &v83);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2080;
      v22 = MEMORY[0x25F85D850](a2, &type metadata for GlanceButtonID);
      v24 = sub_25AF8E7DC(v22, v23, &v83);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_25AF0B000, v14, v15, "%s couldn't find reordered buttonID: %s; in post-reorder array: %s. This is likely due to serious programmer error.", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v17, -1, -1);
      MEMORY[0x25F85EC30](v16, -1, -1);
    }

    return;
  }

  v25 = v11;
  v81 = v8;

  v26 = sub_25AF63D44(&v88, v10);
  v28 = v27;

  if (v28)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v29 = sub_25B0044C4();
    __swift_project_value_buffer(v29, qword_27FA30C28);
    sub_25AF196CC(&v88, &v85);
    v30 = sub_25B0044B4();
    v31 = sub_25B005CB4();
    sub_25AF1C414(&v88);
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v83 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_25AF8E7DC(0xD000000000000027, 0x800000025B01B310, &v83);
    *(v32 + 12) = 2080;
    v85 = v88;
    v86 = v89;
    v87 = v90;
    sub_25AF196CC(&v88, v82);
    v34 = sub_25AFD3228();
    v36 = v35;
    sub_25AF18128(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
    v37 = sub_25AF8E7DC(v34, v36, &v83);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;

    v39 = MEMORY[0x25F85D850](v38, &type metadata for GlanceButtonID);
    v41 = v40;

    v42 = sub_25AF8E7DC(v39, v41, &v83);

    *(v32 + 24) = v42;
    _os_log_impl(&dword_25AF0B000, v30, v31, "%s couldn't find reordered buttonID: %s; in pre-reorder array: %s. This is likely due to serious programmer error.", v32, 0x20u);
LABEL_20:
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v33, -1, -1);
    MEMORY[0x25F85EC30](v32, -1, -1);
LABEL_21:

    return;
  }

  if (v25 == v26)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v43 = sub_25B0044C4();
    __swift_project_value_buffer(v43, qword_27FA30C28);
    sub_25AF196CC(&v88, &v85);
    v30 = sub_25B0044B4();
    v44 = sub_25B005CA4();
    sub_25AF1C414(&v88);
    if (!os_log_type_enabled(v30, v44))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v83 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_25AF8E7DC(0xD000000000000027, 0x800000025B01B310, &v83);
    *(v32 + 12) = 2080;
    v85 = v88;
    v86 = v89;
    v87 = v90;
    sub_25AF196CC(&v88, v82);
    v45 = sub_25AFD3228();
    v47 = v46;
    sub_25AF18128(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
    v48 = sub_25AF8E7DC(v45, v47, &v83);

    *(v32 + 14) = v48;
    _os_log_impl(&dword_25AF0B000, v30, v44, "%s reordered buttonID: %s; did not move. Exiting early.", v32, 0x16u);
    goto LABEL_20;
  }

  sub_25AF64304(v26, &v85);
  v49 = sub_25AF18128(v85, *(&v85 + 1), v86, *(&v86 + 1), v87);
  if (__OFSUB__(0, v25))
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v25)
  {
    v65 = *(v84 + 2);
    sub_25AF196CC(&v88, &v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v65 >= *(v84 + 3) >> 1)
    {
      v84 = sub_25AFCD450(isUniquelyReferenced_nonNull_native, v65 + 1, 1, v84);
    }

    *&v85 = v6;
    *(&v85 + 1) = v7;
    *&v86 = v9;
    *(&v86 + 1) = v81;
    v87 = v5;
    sub_25AF67DC0(0, 0, 1, &v85);
    sub_25AF1C414(&v88);
    goto LABEL_37;
  }

  v50 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_43;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v77 = v6;
  v78 = v7;
  v79 = v9;
  if (v50 >= *(a2 + 16))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v80 = &v74;
  v51 = a2 + 40 * v50;
  v76 = v25 - 1;
  v52 = *(v51 + 40);
  v54 = *(v51 + 48);
  v55 = *(v51 + 56);
  v56 = *(v51 + 64);
  v57 = v84;
  *&v85 = *(v51 + 32);
  v53 = v85;
  *(&v85 + 1) = v52;
  *&v86 = v54;
  *(&v86 + 1) = v55;
  v87 = v56;
  MEMORY[0x28223BE20](v49);
  v73[2] = &v85;
  sub_25AF181DC(v53, v52, v54, v55, v56);

  v58 = sub_25AF35518(sub_25B00154C, v73, v57);

  if (v58)
  {
    HIDWORD(v74) = v56;
    v75 = v55;
    v80 = v54;
    v59 = *(v57 + 2);
    if (v59 > v76)
    {
      v60 = v76;
      sub_25AF196CC(&v88, &v85);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v79;
      v63 = v78;
      v64 = v77;
      if (!v61 || v59 >= *(v57 + 3) >> 1)
      {
        v84 = sub_25AFCD450(v61, v59 + 1, 1, v57);
      }

      *&v85 = v64;
      *(&v85 + 1) = v63;
      *&v86 = v62;
      *(&v86 + 1) = v81;
      v87 = v5;
      sub_25AF67DC0(v60 + 1, (v60 + 1), 1, &v85);
      sub_25AF1C414(&v88);
      sub_25AF18128(v53, v52, v80, v75, BYTE4(v74));
LABEL_37:

      sub_25AFF0708(v67);

      return;
    }

    goto LABEL_46;
  }

  sub_25AF18128(v53, v52, v54, v55, v56);
  if (qword_27FA23800 != -1)
  {
LABEL_47:
    swift_once();
  }

  v68 = sub_25B0044C4();
  __swift_project_value_buffer(v68, qword_27FA30C28);
  v69 = sub_25B0044B4();
  v70 = sub_25B005CB4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v85 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_25AF8E7DC(0xD000000000000027, 0x800000025B01B310, &v85);
    _os_log_impl(&dword_25AF0B000, v69, v70, "%s couldn't find preceding button in reordered array and stale array. Not keeping reordered array.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x25F85EC30](v72, -1, -1);
    MEMORY[0x25F85EC30](v71, -1, -1);
  }
}

void sub_25AFED6B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  if (*(v0 + 42) == 1)
  {
    v4 = sub_25B005B64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_25B005B34();

    v5 = v0;
    v6 = sub_25B005B24();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    sub_25AF6C7F8(0, 0, v3, &unk_25B015A90, v7);
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v9 = sub_25B0044C4();
    __swift_project_value_buffer(v9, qword_27FA30C28);
    v14 = sub_25B0044B4();
    v10 = sub_25B005C94();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1F0, &v15);
      _os_log_impl(&dword_25AF0B000, v14, v10, "%s saving not yet allowed. Exiting early.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x25F85EC30](v12, -1, -1);
      MEMORY[0x25F85EC30](v11, -1, -1);
    }

    else
    {
      v13 = v14;
    }
  }
}

double sub_25AFED924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v75 - v5;
  v81 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  v7 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v75 - v10;
  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v16 = sub_25B0044C4();
  v17 = __swift_project_value_buffer(v16, qword_27FA30C28);
  sub_25AF181DC(v12, v11, v14, v13, v15);
  v80 = v17;
  v18 = v11;
  v19 = sub_25B0044B4();
  v20 = sub_25B005C94();
  sub_25AF18128(v12, v11, v14, v13, v15);
  v21 = os_log_type_enabled(v19, v20);
  v84 = v13;
  v85 = v12;
  v82 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v76 = v7;
    v24 = v23;
    v93[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1D0, v93);
    *(v22 + 12) = 2080;
    v88 = v12;
    v89 = v18;
    v90 = v14;
    v91 = v13;
    v92 = v15;
    v25 = v13;
    v26 = v15;
    sub_25AF181DC(v12, v18, v14, v25, v15);
    v27 = sub_25AFD3228();
    v29 = v28;
    sub_25AF18128(v88, v89, v90, v91, v92);
    v30 = sub_25AF8E7DC(v27, v29, v93);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_25AF0B000, v19, v20, "%s buttonID: %s", v22, 0x16u);
    swift_arrayDestroy();
    v31 = v24;
    v7 = v76;
    MEMORY[0x25F85EC30](v31, -1, -1);
    MEMORY[0x25F85EC30](v22, -1, -1);
  }

  else
  {
    v26 = v15;
  }

  v32 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
  v33 = v86;
  swift_beginAccess();
  sub_25AF25FC4(v33 + v32, v6, &unk_27FA271E0, &unk_25B015A08);
  if ((*(v7 + 48))(v6, 1, v81) == 1)
  {
    sub_25AF2602C(v6, &unk_27FA271E0, &unk_25B015A08);
    v88 = v85;
    v89 = v82;
    v90 = v14;
    v91 = v84;
    v92 = v26;
    sub_25AFF57D8(&v88, 0, 0);
  }

  else
  {
    sub_25B000A44(v6, v83);
    v35 = v85;
    v36 = v82;
    v37 = v26;
    v38 = v84;
    sub_25AF181DC(v85, v82, v14, v84, v37);
    v39 = sub_25B0044B4();
    v40 = sub_25B005C94();
    sub_25AF18128(v35, v36, v14, v38, v37);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v87 = v81;
      *v41 = 136315394;
      *(v41 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1D0, &v87);
      *(v41 + 12) = 2080;
      v88 = v35;
      v89 = v36;
      v90 = v14;
      v91 = v38;
      v92 = v37;
      sub_25AF181DC(v35, v36, v14, v38, v37);
      v42 = sub_25AFD3228();
      LODWORD(v76) = v40;
      v43 = v36;
      v44 = v14;
      v45 = v38;
      v46 = v37;
      v47 = v7;
      v49 = v48;
      sub_25AF18128(v88, v89, v90, v91, v92);
      v50 = sub_25AF8E7DC(v42, v49, &v87);
      v7 = v47;
      v37 = v46;
      v38 = v45;
      v14 = v44;
      v36 = v43;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_25AF0B000, v39, v76, "%s must wait for buttons persistence to load. Queueing button add: %s", v41, 0x16u);
      v51 = v81;
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v51, -1, -1);
      MEMORY[0x25F85EC30](v41, -1, -1);
    }

    v52 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStream;
    v53 = v86;
    swift_beginAccess();
    v54 = *(v53 + v52);
    sub_25AF181DC(v35, v36, v14, v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + v52) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_25AFCD450(0, *(v54 + 2) + 1, 1, v54);
      *(v86 + v52) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_25AFCD450((v56 > 1), v57 + 1, 1, v54);
    }

    *(v54 + 2) = v57 + 1;
    v58 = &v54[40 * v57];
    v59 = v86;
    *(v58 + 4) = v85;
    *(v58 + 5) = v36;
    *(v58 + 6) = v14;
    *(v58 + 7) = v38;
    v58[64] = v37;
    *(v59 + v52) = v54;
    swift_endAccess();
    v60 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStreamTask;
    if (*(v59 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStreamTask))
    {
      sub_25B000DC0(v83);
    }

    else
    {
      v61 = sub_25B0044B4();
      v62 = sub_25B005C94();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v88 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1D0, &v88);
        _os_log_impl(&dword_25AF0B000, v61, v62, "%s waiting for buttons persistence to load", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x25F85EC30](v64, -1, -1);
        MEMORY[0x25F85EC30](v63, -1, -1);
      }

      v65 = sub_25B005B64();
      v66 = v78;
      (*(*(v65 - 8) + 56))(v78, 1, 1, v65);
      v67 = v83;
      v68 = v77;
      sub_25B000AA8(v83, v77);
      sub_25B005B34();
      v69 = v86;

      v70 = sub_25B005B24();
      v71 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v72 = swift_allocObject();
      v73 = MEMORY[0x277D85700];
      v72[2] = v70;
      v72[3] = v73;
      v72[4] = v69;
      sub_25B000A44(v68, v72 + v71);
      v74 = sub_25AF6C7F8(0, 0, v66, &unk_25B015A78, v72);
      sub_25B000DC0(v67);
      *(v69 + v60) = v74;
    }
  }

  return result;
}

char *sub_25AFEE1AC(unint64_t *a1)
{
  v2 = v1;
  v103 = a1;
  v97 = sub_25B0041C4();
  v3 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v5 = sub_25B0044C4();
  v104 = __swift_project_value_buffer(v5, qword_27FA30C28);
  v6 = sub_25B0044B4();
  v7 = sub_25B005C94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v124 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B01B1B0, &v124);
    _os_log_impl(&dword_25AF0B000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x25F85EC30](v9, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  v10 = v103;
  if (v103)
  {
    v11 = v103;
    if (!v103[2])
    {
      return v10;
    }
  }

  else
  {
    swift_getKeyPath();
    *&v124 = v2;
    sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
    sub_25B004234();

    v12 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse;
    if (!*(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
    {
      v88 = sub_25B0044B4();
      v89 = sub_25B005CA4();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v124 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B01B1B0, &v124);
        _os_log_impl(&dword_25AF0B000, v88, v89, "%s no loaded button order. Exiting early.", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
        MEMORY[0x25F85EC30](v91, -1, -1);
        MEMORY[0x25F85EC30](v90, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    *&v124 = v2;
    sub_25B004234();

    if (*(v2 + v12))
    {
      v13 = *(v2 + v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = v13[2];

    v11 = v13;
    v10 = v13;
    if (!v14)
    {
      return v10;
    }
  }

  v98 = v11;
  v105 = *(v2 + 24);
  v15 = *(v105 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasLoadedAllControls);
  v16 = sub_25B0044B4();
  v17 = sub_25B005CD4();
  v18 = os_log_type_enabled(v16, v17);
  v101 = v15;
  if (v18)
  {
    v19 = v15;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v124 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B01B1B0, &v124);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v19;
    _os_log_impl(&dword_25AF0B000, v16, v17, "%s hasLoadedAllControls: %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x25F85EC30](v21, -1, -1);
    MEMORY[0x25F85EC30](v20, -1, -1);
  }

  v23 = v98[2];
  if (v23)
  {
    v94 = (v3 + 8);
    v100 = "Buttons(newValue:oldValue:)";
    v24 = (v98 + 8);
    v10 = MEMORY[0x277D84F90];
    *&v22 = 136315394;
    v99 = v22;
    v107 = v2;
    while (1)
    {
      v25 = *(v24 - 4);
      v26 = *(v24 - 3);
      v28 = *(v24 - 2);
      v27 = *(v24 - 1);
      v29 = *v24;
      sub_25AF181DC(v25, v26, v28, v27, *v24);
      v117 = v29;
      v115 = v28;
      v116 = v27;
      v113 = v25;
      v114 = v26;
      if (v29 >= 0x40)
      {
        goto LABEL_30;
      }

      sub_25AF181DC(v25, v26, v28, v27, v29);
      if (qword_27FA23768 != -1)
      {
        swift_once();
      }

      v30 = qword_27FA30B40;
      if (*(qword_27FA30B40 + 16) && (v31 = sub_25AF8F278(v25), (v32 & 1) != 0))
      {
        v33 = *(v30 + 56) + 40 * v31;
        v25 = *v33;
        v26 = *(v33 + 8);
        v28 = *(v33 + 16);
        v27 = *(v33 + 24);
        v34 = *(v33 + 32);
        LOBYTE(v29) = v34 | 0x80;
        sub_25AF18244(*v33, v26, v28, v27, v34);
        v35 = v29 >> 6;
        if (!(v29 >> 6))
        {
          goto LABEL_27;
        }
      }

      else
      {
LABEL_30:
        sub_25AF181DC(v25, v26, v28, v27, v29);
        v35 = v29 >> 6;
        if (!(v29 >> 6))
        {
LABEL_27:
          if (v25 != 6)
          {
            v110 = v23;
LABEL_41:
            sub_25AF181DC(v25, v26, v28, v27, v29);
            v111 = v25;
LABEL_42:
            v112 = v26;
            v108 = v27;
            v109 = v28;
            v57 = v29;
LABEL_43:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_25AFCD450(0, *(v10 + 2) + 1, 1, v10);
            }

            v59 = *(v10 + 2);
            v58 = *(v10 + 3);
            v60 = v10;
            if (v59 >= v58 >> 1)
            {
              v60 = sub_25AFCD450((v58 > 1), v59 + 1, 1, v10);
            }

            sub_25AF18128(v25, v26, v28, v27, v29);
            sub_25AF18128(v113, v114, v115, v116, v117);
            *(v60 + 2) = v59 + 1;
            v10 = v60;
            v61 = &v60[40 * v59];
            v62 = v112;
            *(v61 + 4) = v111;
            *(v61 + 5) = v62;
            v63 = v108;
            *(v61 + 6) = v109;
            *(v61 + 7) = v63;
            v61[64] = v57;
            v2 = v107;
            v23 = v110;
            goto LABEL_20;
          }

          if ((*(v2 + 41) & 1) == 0)
          {
            v110 = v23;
            sub_25AF181DC(6, v26, v28, v27, v29);
            v111 = 6;
            goto LABEL_42;
          }

          sub_25AF18128(6, v26, v28, v27, v29);
          sub_25AF18128(v113, v114, v115, v116, v117);
          goto LABEL_20;
        }
      }

      if (v35 == 1)
      {
        v119 = v25;
        v120 = v26;
        v121 = v28;
        v122 = v27;
        sub_25AF181DC(v25, v26, v28, v27, v29);
        sub_25AF125B0(&v119, 2);
        if (v36)
        {
          v110 = v23;
          sub_25AF18128(v25, v26, v28, v27, v29);
          goto LABEL_41;
        }

        if ((v101 & 1) == 0)
        {
          v110 = v23;
          if (v27)
          {

            v71 = v25;
            sub_25AF18128(v25, v26, v28, v27, v29);
            v108 = 0;
            v109 = v27;
            v111 = v25;
            v112 = v28;
          }

          else
          {
            v79 = [v25 extensionIdentity];
            v80 = *MEMORY[0x277CFA130];
            swift_beginAccess();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28, &qword_25B0091D0);
            v82 = *(*(v81 - 8) + 48);
            v106 = v79;
            if (v82(&v79[v80], 1, v81))
            {
              swift_endAccess();
              swift_beginAccess();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70, &qword_25B0090A0);
            }

            v111 = sub_25B004294();
            v112 = v83;
            swift_endAccess();
            v84 = [v25 kind];
            v85 = sub_25B005934();
            v108 = v86;
            v109 = v85;

            sub_25AF18128(v25, v26, v28, 0, v29);
          }

          if (v27)
          {
            v57 = 0x80;
          }

          else
          {
            v57 = -127;
          }

          goto LABEL_43;
        }

        v48 = sub_25B0044B4();
        v49 = sub_25B005CD4();
        sub_25AF18128(v25, v26, v28, v27, v29);
        LODWORD(v112) = v49;
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v110 = v23;
          v51 = v50;
          v109 = swift_slowAlloc();
          v118 = v109;
          *v51 = v99;
          *(v51 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, v100 | 0x8000000000000000, &v118);
          *(v51 + 12) = 2080;
          v119 = v25;
          v120 = v26;
          v121 = v28;
          v122 = v27;
          sub_25AF181DC(v25, v26, v28, v27, v29);
          v111 = v48;
          v108 = GlanceControlID.description.getter();
          v106 = v10;
          v53 = v52;

          v54 = sub_25AF8E7DC(v108, v53, &v118);
          v2 = v107;
          v10 = v106;

          *(v51 + 14) = v54;
          _os_log_impl(&dword_25AF0B000, v111, v112, "%s No known control for saved control: %s. Removing saved control.", v51, 0x16u);
          v55 = v109;
          swift_arrayDestroy();
          MEMORY[0x25F85EC30](v55, -1, -1);
          v56 = v51;
          v23 = v110;
          MEMORY[0x25F85EC30](v56, -1, -1);
          sub_25AF18128(v113, v114, v115, v116, v117);
          sub_25AF18128(v25, v26, v28, v27, v29);

          goto LABEL_20;
        }

        sub_25AF18128(v113, v114, v115, v116, v117);

        sub_25AF18128(v25, v26, v28, v27, v29);
      }

      else
      {
        v106 = v10;
        *&v124 = v25;
        *(&v124 + 1) = v26;
        v125 = v28;
        v126 = v27;
        v127 = v29 & 1;
        sub_25AF18244(v25, v26, v28, v27, v29 & 1);
        sub_25AF12F90(&v124, &v119);
        v37 = v123;
        if (v123 <= 0xFDu)
        {
          v64 = v119;
          v111 = v119;
          v112 = v120;
          v65 = v122;
          if ((v123 & 0x80) == 0)
          {
            v110 = v23;
            if (v29)
            {
              v66 = v121;
              v102 = v121;
              sub_25AF181DC(v25, v26, v28, v27, v29);
              sub_25AF1988C(v64, v112, v66, v65, v37);

              v67 = v65;
              v68 = v96;
              sub_25B0041B4();
              v69 = sub_25B0041A4();
              v108 = v70;
              v109 = v69;
              sub_25AFFF3A0(v64, v112, v102, v67, v37);
              sub_25AF18128(v25, v26, v28, v27, v29);
              (*v94)(v68, v97);

              v57 = 64;
            }

            else
            {

              v57 = 64;
              v108 = v28;
              v109 = v26;
            }

            v10 = v106;
            goto LABEL_43;
          }

          v102 = v121;
          sub_25AF18128(v25, v26, v28, v27, v29);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v106 = sub_25AFCD450(0, *(v106 + 2) + 1, 1, v106);
          }

          v74 = *(v106 + 2);
          v73 = *(v106 + 3);
          if (v74 >= v73 >> 1)
          {
            v106 = sub_25AFCD450((v73 > 1), v74 + 1, 1, v106);
          }

          sub_25AF18128(v25, v26, v28, v27, v29);
          sub_25AF18128(v113, v114, v115, v116, v117);
          v75 = v106;
          *(v106 + 2) = v74 + 1;
          v76 = &v75[40 * v74];
          v77 = v112;
          *(v76 + 4) = v111;
          *(v76 + 5) = v77;
          v78 = v95;
          *(v76 + 6) = v102;
          *(v76 + 7) = v78;
          v76[64] = v37 & 0x81;
          v10 = v75;
        }

        else
        {
          sub_25AF181DC(v25, v26, v28, v27, v29);
          v38 = sub_25B0044B4();
          v39 = sub_25B005C94();
          sub_25AF18128(v25, v26, v28, v27, v29);
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            LODWORD(v111) = v39;
            v41 = v40;
            v112 = swift_slowAlloc();
            v119 = v112;
            *v41 = v99;
            *(v41 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, v100 | 0x8000000000000000, &v119);
            *(v41 + 12) = 2080;
            sub_25AF181DC(v25, v26, v28, v27, v29);
            v109 = v38;
            v42 = sub_25AF5B294();
            v44 = v43;
            sub_25AF18128(v25, v26, v28, v27, v29);
            v45 = sub_25AF8E7DC(v42, v44, &v119);

            *(v41 + 14) = v45;
            v46 = v109;
            _os_log_impl(&dword_25AF0B000, v109, v111, "%s No known control for pending control. Removing pending control: %s", v41, 0x16u);
            v47 = v112;
            swift_arrayDestroy();
            MEMORY[0x25F85EC30](v47, -1, -1);
            MEMORY[0x25F85EC30](v41, -1, -1);
            sub_25AF18128(v25, v26, v28, v27, v29);
          }

          else
          {

            sub_25AF18128(v25, v26, v28, v27, v29);
          }

          sub_25AF18128(v25, v26, v28, v27, v29);
          sub_25AF18128(v113, v114, v115, v116, v117);
          v10 = v106;
        }
      }

      v2 = v107;
LABEL_20:
      v24 += 40;
      if (!--v23)
      {
        goto LABEL_69;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_69:

  if (!v103)
  {

    sub_25AFF0708(v87);
  }

  return v10;
}

uint64_t sub_25AFEF164(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 169) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  *(v2 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  *(v2 + 64) = swift_task_alloc();
  v3 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  sub_25B005B34();
  *(v2 + 104) = sub_25B005B24();
  v5 = sub_25B005AE4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_25AFEF2D8, v5, v4);
}

uint64_t sub_25AFEF2D8()
{
  v32 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005CD4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 169);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v31);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s allowSaving: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  *(v0 + 168) = 0;
  v11 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
  swift_beginAccess();
  sub_25AF25FC4(v10 + v11, v9, &unk_27FA271E0, &unk_25B015A08);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = *(v0 + 64);
    v13 = &unk_27FA271E0;
    v14 = &unk_25B015A08;
LABEL_12:
    sub_25AF2602C(v12, v13, v14);
    v24 = sub_25B0044B4();
    v25 = sub_25B005C94();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v31);
      _os_log_impl(&dword_25AF0B000, v24, v25, "%s making new persistence stream/continuation", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F85EC30](v27, -1, -1);
      MEMORY[0x25F85EC30](v26, -1, -1);
    }

    sub_25AFF2490(*(v0 + 96));
    goto LABEL_15;
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 56);
  sub_25B000A44(*(v0 + 64), v15);
  sub_25AF25FC4(v15 + *(v16 + 24), v17, &unk_27FA271A0, &unk_25B00BB40);
  v18 = sub_25B004194();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) != 1)
  {
    v23 = *(v0 + 56);
    sub_25B000DC0(*(v0 + 88));
    v13 = &unk_27FA271A0;
    v14 = &unk_25B00BB40;
    v12 = v23;
    goto LABEL_12;
  }

  sub_25AF2602C(*(v0 + 56), &unk_27FA271A0, &unk_25B00BB40);
  v19 = sub_25B0044B4();
  v20 = sub_25B005C94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v31);
    _os_log_impl(&dword_25AF0B000, v19, v20, "%s using existing persistence stream/continuation", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x25F85EC30](v22, -1, -1);
    MEMORY[0x25F85EC30](v21, -1, -1);
  }

  sub_25B000A44(*(v0 + 88), *(v0 + 96));
LABEL_15:
  v28 = *(*(v0 + 48) + 48);
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *v29 = v0;
  v29[1] = sub_25AFEF780;

  return sub_25AFDDC74(v28);
}

uint64_t sub_25AFEF780(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_25AFEFF3C;
  }

  else
  {
    v7 = sub_25AFEF8C4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25AFEF8C4(__n128 a1)
{
  v15 = v1;
  if (sub_25B005C14())
  {

    v2 = sub_25B0044B4();
    v3 = sub_25B005CD4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v14);
      _os_log_impl(&dword_25AF0B000, v2, v3, "%s cancelled after loading Controls API compatible saved button order. Exiting early.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x25F85EC30](v5, -1, -1);
      MEMORY[0x25F85EC30](v4, -1, -1);
    }

    *(v1 + 168) = 1;
    v6 = *(v1 + 96);
    sub_25AFF1F9C(v6, (v1 + 168));
    sub_25B000DC0(v6);

    v7 = *(v1 + 8);

    return v7(0);
  }

  else
  {
    v9 = sub_25B0044B4();
    v10 = sub_25B005C94();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v14);
      _os_log_impl(&dword_25AF0B000, v9, v10, "%s Using Controls API compatible saved button order.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x25F85EC30](v12, -1, -1);
      MEMORY[0x25F85EC30](v11, -1, -1);
    }

    *(v1 + 40) = *(v1 + 144);
    v13 = swift_task_alloc();
    *(v1 + 160) = v13;
    *v13 = v1;
    v13[1] = sub_25AFEFBA0;

    return sub_25AFF29DC(v1 + 40);
  }
}

uint64_t sub_25AFEFBA0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_25AFEFCC0, v3, v2);
}

uint64_t sub_25AFEFCC0()
{
  v14 = v0;

  v1 = sub_25B005C14();
  if (v1)
  {

    v2 = sub_25B0044B4();
    v3 = sub_25B005CD4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v13);
      _os_log_impl(&dword_25AF0B000, v2, v3, "%s cancelled after populating conditional buttons. Exiting early.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x25F85EC30](v5, -1, -1);
      MEMORY[0x25F85EC30](v4, -1, -1);
    }

    *(v0 + 168) = 1;
  }

  else
  {
    sub_25AFF0708(*(v0 + 40));
    v6 = sub_25B0044B4();
    v7 = sub_25B005C94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x25F85EC30](v9, -1, -1);
      MEMORY[0x25F85EC30](v8, -1, -1);
    }
  }

  v10 = *(v0 + 96);
  sub_25AFF1F9C(v10, (v0 + 168));
  sub_25B000DC0(v10);

  v11 = *(v0 + 8);

  return v11((v1 & 1) == 0);
}

uint64_t sub_25AFEFF3C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 96);
  sub_25AFF1F9C(v2, (v0 + 168));
  sub_25B000DC0(v2);

  v3 = *(v0 + 8);

  return v3(0);
}

double sub_25AFEFFF0(__int128 *a1, __int16 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = a1[1];
  v30 = *a1;
  v31 = v9;
  v32 = *(a1 + 32);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v10 = sub_25B0044C4();
  __swift_project_value_buffer(v10, qword_27FA30C28);
  sub_25AF196CC(&v30, &v27);
  v11 = sub_25B0044B4();
  v12 = sub_25B005C94();
  sub_25AF1C414(&v30);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B01B0C0, &v26);
    *(v13 + 12) = 2080;
    v27 = v30;
    v28 = v31;
    v29 = v32;
    sub_25AF196CC(&v30, v25);
    v15 = sub_25AFD3228();
    v17 = v16;
    sub_25AF18128(v27, *(&v27 + 1), v28, *(&v28 + 1), v29);
    v18 = sub_25AF8E7DC(v15, v17, &v26);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25AF0B000, v11, v12, "%s buttonID: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  v19 = sub_25B005B64();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_25B005B34();
  sub_25AF196CC(&v30, &v27);

  v20 = sub_25B005B24();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = v3;
  *(v21 + 40) = a2;
  v23 = v31;
  *(v21 + 48) = v30;
  *(v21 + 64) = v23;
  *(v21 + 80) = v32;
  sub_25AF6C7F8(0, 0, v8, &unk_25B015A20, v21);

  return result;
}

double sub_25AFF030C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
  swift_beginAccess();
  v22 = a1;
  sub_25B00133C(a1, v1 + v13);
  swift_endAccess();
  sub_25AF25FC4(v1 + v13, v8, &unk_27FA271E0, &unk_25B015A08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25AF2602C(v22, &unk_27FA271E0, &unk_25B015A08);
    sub_25AF2602C(v8, &unk_27FA271E0, &unk_25B015A08);
  }

  else
  {
    sub_25B000A44(v8, v12);
    v15 = *(v9 + 24);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_25AF25FC4(&v12[v15], v5, &unk_27FA271A0, &unk_25B00BB40);
    v17 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_25B001064(v5, v18 + v17);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_25B001548;
    *(v19 + 24) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
    sub_25B005B84();
    sub_25AF2602C(v22, &unk_27FA271E0, &unk_25B015A08);
    sub_25B000DC0(v12);
  }

  return result;
}

uint64_t sub_25AFF065C()
{
  swift_getKeyPath();
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();
}

void sub_25AFF0708(unint64_t *a1)
{
  v2 = v1;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);

  v5 = sub_25B0044B4();
  v6 = sub_25B005CD4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315650;
    v9 = sub_25B006364();
    v11 = sub_25AF8E7DC(v9, v10, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B01B130, v32);
    *(v7 + 22) = 2080;
    v12 = MEMORY[0x25F85D850](a1, &type metadata for GlanceButtonID);
    v14 = sub_25AF8E7DC(v12, v13, v32);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s.%s new value: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  v33 = a1;
  swift_getKeyPath();
  v32[0] = v2;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  v15 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);

  sub_25AFF0BA4(&v33, v15);
  v16 = sub_25B0044B4();
  v17 = sub_25B005CD4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32[0] = v19;
    *v18 = 136315650;
    v20 = sub_25B006364();
    v22 = sub_25AF8E7DC(v20, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B01B130, v32);
    *(v18 + 22) = 2080;
    swift_beginAccess();

    v24 = MEMORY[0x25F85D850](v23, &type metadata for GlanceButtonID);
    v26 = v25;

    v27 = sub_25AF8E7DC(v24, v26, v32);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_25AF0B000, v16, v17, "%s.%s new value, after processing: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v19, -1, -1);
    MEMORY[0x25F85EC30](v18, -1, -1);
  }

  swift_beginAccess();
  if (v15 && (, v28 = , v29 = sub_25AF38000(v28, v15), , swift_bridgeObjectRelease_n(), (v29 & 1) != 0) || (v30 = , sub_25AFF1460(v30), !qword_27FA30B10))
  {
  }

  else
  {
    v31 = qword_27FA30B10;
    sub_25AF77F80(0, 0);
  }
}

void sub_25AFF0BA4(unint64_t **a1, unint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v71 - v7;
  if (qword_27FA23800 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v8 = sub_25B0044C4();
    __swift_project_value_buffer(v8, qword_27FA30C28);
    v9 = sub_25B0044B4();
    v10 = sub_25B005C94();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v80 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25AF8E7DC(0xD00000000000002BLL, 0x800000025B01B180, &v80);
      _os_log_impl(&dword_25AF0B000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x25F85EC30](v12, -1, -1);
      MEMORY[0x25F85EC30](v11, -1, -1);
    }

    v13 = *a1;
    if (!a2)
    {
      v73 = 0;
      a2 = sub_25AFEE1AC(v13);
      goto LABEL_13;
    }

    v15 = sub_25AF38000(v14, a2);

    if (v15)
    {
      break;
    }

    v19 = sub_25AFEE1AC(v13);
    v20 = a2;
    a2 = v19;

    v73 = v20;
    LOBYTE(v20) = sub_25AF38000(v21, v20);

    if (v20)
    {
      v22 = sub_25B0044B4();
      v23 = sub_25B005CA4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v80 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_25AF8E7DC(0xD00000000000002BLL, 0x800000025B01B180, &v80);
        _os_log_impl(&dword_25AF0B000, v22, v23, "%s IDs unchanged. Not saving.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x25F85EC30](v25, -1, -1);
        MEMORY[0x25F85EC30](v24, -1, -1);
      }

LABEL_50:
      *a1 = a2;
      return;
    }

LABEL_13:
    v26 = a2[2];
    v76 = v3;
    v77 = a1;
    v79 = a2;
    if (v26)
    {
      v27 = 0;
      v28 = a2 + 8;
      v29 = MEMORY[0x277D84F90];
      v78 = v26;
      v71 = v26 - 1;
      v72 = a2 + 8;
      do
      {
        v75 = v29;
        v3 = &v28[5 * v27];
        v30 = v27;
        while (1)
        {
          if (v30 >= a2[2])
          {
            __break(1u);
            goto LABEL_55;
          }

          v32 = *(v3 - 4);
          v31 = *(v3 - 3);
          v33 = *(v3 - 2);
          v34 = *(v3 - 1);
          v35 = *v3;
          sub_25B005B34();
          sub_25AF181DC(v32, v31, v33, v34, v35);
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          a1 = (v35 & 0xC0);

          if (a1 == 64)
          {
            break;
          }

          ++v30;
          sub_25AF18128(v32, v31, v33, v34, v35);
          v3 += 5;
          a2 = v79;
          if (v78 == v30)
          {
            v3 = v76;
            a1 = v77;
            v29 = v75;
            goto LABEL_27;
          }
        }

        v36 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_25AFCD46C(0, *(v36 + 2) + 1, 1, v36);
        }

        v3 = v76;
        a1 = v77;
        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        v39 = v36;
        if (v38 >= v37 >> 1)
        {
          v39 = sub_25AFCD46C((v37 > 1), v38 + 1, 1, v36);
        }

        v27 = v30 + 1;
        *(v39 + 2) = v38 + 1;
        v40 = &v39[32 * v38];
        v29 = v39;
        *(v40 + 4) = v32;
        *(v40 + 5) = v31;
        *(v40 + 6) = v33;
        *(v40 + 7) = v34;
        v28 = v72;
        a2 = v79;
      }

      while (v71 != v30);
LABEL_27:
      v41 = v29[2];
      if (!v41)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      v41 = *(MEMORY[0x277D84F90] + 16);
      if (!v41)
      {
LABEL_43:
        v75 = MEMORY[0x277D84F90];
LABEL_44:

        v56 = v3[3];
        v59 = sub_25AF9B3D0(v29, v57, v58);

        v60 = *(v56 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls);
        *(v56 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls) = v59;

        v62 = sub_25AFF9990(v61, v60);

        if ((v62 & 1) == 0)
        {
          sub_25AF0F914();
        }

        v63 = MEMORY[0x277D85700];
        a2 = v79;
        if (v73)
        {
          sub_25AFED6B0();
        }

        v64 = sub_25B005B64();
        v65 = v74;
        (*(*(v64 - 8) + 56))(v74, 1, 1, v64);
        sub_25B005B34();

        v66 = sub_25B005B24();
        v67 = swift_allocObject();
        v67[2] = v66;
        v67[3] = v63;
        v67[4] = v3;
        v67[5] = a2;

        v68 = sub_25AF6C7F8(0, 0, v65, &unk_25B015A68, v67);
        v69 = v3[4];
        v3[4] = v68;
        if (v69)
        {

          sub_25B005BF4();
        }

        goto LABEL_50;
      }
    }

    v42 = 0;
    v43 = v29 + 7;
    v78 = v41;
    v71 = v41 - 1;
    v75 = MEMORY[0x277D84F90];
    v72 = v29 + 7;
LABEL_29:
    v3 = &v43[4 * v42];
    v44 = v42;
    while (v44 < v29[2])
    {
      a2 = v29;
      v45 = *(v3 - 3);
      v46 = *(v3 - 2);
      v48 = *(v3 - 1);
      v47 = *v3;
      sub_25B005B34();

      v49 = v45;
      sub_25B005B24();
      sub_25B005AE4();
      a1 = v50;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (!v47)
      {

        v51 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25AF98A30(0, *(v51 + 16) + 1, 1);
          v51 = v80;
        }

        v3 = v76;
        a1 = v77;
        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_25AF98A30((v53 > 1), v54 + 1, 1);
          v51 = v80;
        }

        v42 = v44 + 1;
        *(v51 + 16) = v54 + 1;
        v75 = v51;
        v55 = (v51 + 32 * v54);
        v55[4] = v49;
        v55[5] = v46;
        v55[6] = v48;
        v55[7] = 0;
        v43 = v72;
        v29 = a2;
        if (v71 != v44)
        {
          goto LABEL_29;
        }

        goto LABEL_44;
      }

      ++v44;

      v3 += 4;
      v29 = a2;
      if (v78 == v44)
      {
        v3 = v76;
        a1 = v77;
        goto LABEL_44;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v79 = sub_25B0044B4();
  v16 = sub_25B005CA4();
  if (os_log_type_enabled(v79, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v80 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25AF8E7DC(0xD00000000000002BLL, 0x800000025B01B180, &v80);
    _os_log_impl(&dword_25AF0B000, v79, v16, "%s IDs unchanged. Exiting early without saving.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x25F85EC30](v18, -1, -1);
    MEMORY[0x25F85EC30](v17, -1, -1);
  }

  else
  {
    v70 = v79;
  }
}

uint64_t sub_25AFF1460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse;
  if (!*(v1 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
    sub_25B004224();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_25AF38000(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_25AFF15D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
}

void sub_25AFF16B0(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27238, &unk_25B015AF0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  *(v3 + 39) = 0;
  *(v3 + 32) = 0;
  v17 = v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
  (*(v13 + 104))(&v39 - v15, *MEMORY[0x277D85778], v12, v14);
  v18 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  sub_25B005B74();
  (*(v13 + 8))(v16, v12);
  v19 = *(v18 + 24);
  v20 = sub_25B004194();
  v39 = *(*(v20 - 8) + 56);
  v39(v17 + v19, 1, 1, v20);
  v21 = *(v18 - 8);
  (*(v21 + 56))(v17, 0, 1, v18);
  *(v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStream) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStreamTask) = 0;
  *(v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse) = 0;
  sub_25B004264();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for PersistenceSync();
  v22 = swift_allocObject();
  v41 = a1;
  v40 = a2;
  swift_defaultActor_initialize();
  v23 = objc_allocWithZone(MEMORY[0x277D2BA58]);
  v24 = sub_25B005924();
  v25 = [v23 initWithDomain_];

  if (!v25)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v22 + 112) = v25;
  *(v22 + 120) = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
  *(v3 + 48) = v22;
  type metadata accessor for ButtonConditionsModel();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = 0xF000000000000000;
  *(v3 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel) = v26;
  v27 = qword_27FA23808;
  swift_retain_n();
  if (v27 != -1)
  {
    swift_once();
  }

  swift_weakAssign();
  v28 = MobileGestalt_get_current_device();
  v29 = v45;
  if (!v28)
  {
    goto LABEL_8;
  }

  v30 = v28;
  hasBaseband = MobileGestalt_get_hasBaseband();

  *(v3 + 40) = hasBaseband;
  v32 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
  swift_beginAccess();
  sub_25AF25FC4(v3 + v32, v29, &unk_27FA271E0, &unk_25B015A08);
  if ((*(v21 + 48))(v29, 1, v18) != 1)
  {
    v33 = v44;
    v39(v44, 1, 1, v20);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = v43;
    sub_25AF25FC4(v33, v43, &unk_27FA271A0, &unk_25B00BB40);
    v36 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    sub_25B001064(v35, v37 + v36);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_25B0010D4;
    *(v38 + 24) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
    sub_25B005B84();

    sub_25AF2602C(v33, &unk_27FA271A0, &unk_25B00BB40);

    sub_25B000DC0(v29);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25AFF1CE4()
{

  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting, &unk_27FA271E0, &unk_25B015A08);

  v1 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25AFF1DC4()
{
  sub_25AFF1CE4();

  return swift_deallocClassInstance();
}

void sub_25AFF1E44(uint64_t a1)
{
  sub_25AFF9184(319, &qword_27FA27128, type metadata accessor for ButtonOrderModel.PersistenceWaiting);
  if (v1 <= 0x3F)
  {
    sub_25B004274();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25AFF1F9C(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v34 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  v10 = *(v34 + 24);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v11 = sub_25B0044C4();
  __swift_project_value_buffer(v11, qword_27FA30C28);
  sub_25AF25FC4(a1 + v10, v9, &unk_27FA271A0, &unk_25B00BB40);
  v12 = sub_25B0044B4();
  v13 = sub_25B005C94();
  if (os_log_type_enabled(v12, v13))
  {
    v32 = a2;
    v33 = a1;
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v14 = 136315394;
    *(v14 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v35);
    *(v14 + 12) = 2080;
    sub_25AF25FC4(v9, v6, &unk_27FA271A0, &unk_25B00BB40);
    v15 = sub_25B004194();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      sub_25AF2602C(v6, &unk_27FA271A0, &unk_25B00BB40);
      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    else
    {
      v18 = sub_25B004164();
      v17 = v19;
      (*(v16 + 8))(v6, v15);
    }

    sub_25AF2602C(v9, &unk_27FA271A0, &unk_25B00BB40);
    v20 = sub_25AF8E7DC(v18, v17, &v35);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_25AF0B000, v12, v13, "%s persistenceWaiting creation date: %s", v14, 0x16u);
    v21 = v31;
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v21, -1, -1);
    MEMORY[0x25F85EC30](v14, -1, -1);

    a2 = v32;
  }

  else
  {

    sub_25AF2602C(v9, &unk_27FA271A0, &unk_25B00BB40);
  }

  v22 = *a2;
  v23 = sub_25B0044B4();
  if (v22)
  {
    v24 = sub_25B005CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v35);
      _os_log_impl(&dword_25AF0B000, v23, v24, "%s cancelled. Not finishing persistence stream/continuation)", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F85EC30](v26, -1, -1);
      MEMORY[0x25F85EC30](v25, -1, -1);
    }
  }

  else
  {
    v27 = sub_25B005C94();
    if (os_log_type_enabled(v23, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_25AF8E7DC(0xD00000000000003CLL, 0x800000025B01B250, &v35);
      _os_log_impl(&dword_25AF0B000, v23, v27, "%s finishing persistence stream/continuation", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x25F85EC30](v29, -1, -1);
      MEMORY[0x25F85EC30](v28, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
    sub_25B005B94();
  }
}

uint64_t sub_25AFF2490@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27238, &unk_25B015AF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27190, &qword_25B0159C0);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_25B004194();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  sub_25B004184();
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  v34 = v11;
  v37 = v8;
  sub_25B005B74();
  (*(v3 + 8))(v5, v2);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v19 = sub_25B0044C4();
  __swift_project_value_buffer(v19, qword_27FA30C28);
  (*(v13 + 16))(v15, v18, v12);
  v20 = sub_25B0044B4();
  v21 = sub_25B005CD4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_25AF8E7DC(0xD000000000000017, 0x800000025B01B2B0, &v40);
    *(v23 + 12) = 2080;
    sub_25B000EE0(&unk_27FA27240, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v25 = sub_25B006124();
    v27 = v26;
    (*(v13 + 8))(v15, v12);
    v28 = sub_25AF8E7DC(v25, v27, &v40);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_25AF0B000, v20, v21, "%s creating persistence stream/continuation with date: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v24, -1, -1);
    v29 = v23;
    a1 = v33;
    MEMORY[0x25F85EC30](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v30 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  v31 = *(v30 + 24);
  (*(v13 + 32))(a1 + v31, v18, v12);
  (*(v13 + 56))(a1 + v31, 0, 1, v12);
  (*(v35 + 32))(a1, v34, v36);
  return (*(v38 + 32))(a1 + *(v30 + 20), v37, v39);
}

uint64_t sub_25AFF29DC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  v2[23] = swift_task_alloc();
  v2[24] = sub_25B005B34();
  v2[25] = sub_25B005B24();
  v4 = sub_25B005AE4();
  v2[26] = v4;
  v2[27] = v3;

  return MEMORY[0x2822009F8](sub_25AFF2AB0, v4, v3);
}

uint64_t sub_25AFF2AB0()
{
  v59 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v54 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD00000000000001FLL, 0x800000025B01B290, &v54);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  sub_25AFFF414(*(*(v0 + 176) + 40), *(*(v0 + 176) + 41), 0);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 64);
    do
    {
      v10 = *(v9 - 4);
      v11 = *(v9 - 3);
      v12 = *(v9 - 2);
      v13 = *(v9 - 1);
      v14 = *v9;
      if (v14 > 0x3F)
      {
        sub_25AF181DC(v10, *(v9 - 3), *(v9 - 2), *(v9 - 1), *v9);
        sub_25AF18128(v10, v11, v12, v13, v14);
        sub_25AF18128(1, 0, 0, 0, 0);
      }

      else
      {
        sub_25AF18128(v10, *(v9 - 3), *(v9 - 2), *(v9 - 1), *v9);
        v15 = 1;
        sub_25AF18128(1, 0, 0, 0, 0);
        if (v10 == 1)
        {
          goto LABEL_13;
        }
      }

      v9 += 40;
      ++v8;
    }

    while (v7 != v8);
  }

  v8 = 0;
  v15 = 0;
LABEL_13:
  *(v0 + 49) = v15;
  *(v0 + 224) = v8;
  v16 = *(v0 + 168);

  v17 = *v16;
  *(v0 + 232) = *v16;
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_20:
    v19 = 0;
    v26 = 1;
    goto LABEL_21;
  }

  v19 = 0;
  v20 = (v17 + 64);
  while (1)
  {
    v21 = *(v20 - 4);
    v22 = *(v20 - 3);
    v23 = *(v20 - 2);
    v24 = *(v20 - 1);
    v25 = *v20;
    if (v25 <= 0x3F)
    {
      break;
    }

    sub_25AF181DC(v21, *(v20 - 3), *(v20 - 2), *(v20 - 1), *v20);
    sub_25AF18128(v21, v22, v23, v24, v25);
    sub_25AF18128(1, 0, 0, 0, 0);
LABEL_16:
    v20 += 40;
    if (v18 == ++v19)
    {
      goto LABEL_20;
    }
  }

  sub_25AF18128(v21, *(v20 - 3), *(v20 - 2), *(v20 - 1), *v20);
  sub_25AF18128(1, 0, 0, 0, 0);
  if (v21 != 1)
  {
    goto LABEL_16;
  }

  v26 = 0;
LABEL_21:
  *(v0 + 50) = v26;
  *(v0 + 240) = *(*(v0 + 176) + 16);
  v54 = 1;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v27 = sub_25AF1C0E0(&v54);
  if (v27 != 2 && (v27 & 1) != 0)
  {
    v28 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 248) = sub_25B005B24();
    v29 = swift_task_alloc();
    *(v0 + 256) = v29;
    *v29 = v0;
    v29[1] = sub_25AFF3260;
    v30 = v28;
    v31 = 4;
    goto LABEL_42;
  }

  if ((v26 & 1) == 0)
  {
    sub_25AF64304(v19, &v54);
    sub_25AF18128(v54, v55, v56, v57, v58);
  }

  *(v0 + 52) = 0;
  v54 = 6;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v32 = sub_25AF1C0E0(&v54);
  if (v32 != 2 && (v32 & 1) != 0)
  {
    v33 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 264) = sub_25B005B24();
    v34 = swift_task_alloc();
    *(v0 + 272) = v34;
    *v34 = v0;
    v34[1] = sub_25AFF3858;
    v30 = v33;
    v31 = 128;
    goto LABEL_42;
  }

  *(v0 + 54) = 0;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x800000025B0176B0;
  *(v0 + 72) = 0xD000000000000022;
  *(v0 + 80) = 0x800000025B0168E0;
  *(v0 + 88) = 1;
  sub_25AF12B3C(v0 + 56);
  if (v35)
  {
    v36 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 280) = sub_25B005B24();
    v37 = swift_task_alloc();
    *(v0 + 288) = v37;
    *v37 = v0;
    v37[1] = sub_25AFF3D8C;
    v30 = v36;
    v31 = 64;
    goto LABEL_42;
  }

  *(v0 + 89) = 0;
  v38 = *(v0 + 240);
  *(v0 + 96) = 100;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  swift_getKeyPath();
  *(v0 + 160) = v38;
  sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
  sub_25B004234();

  v39 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  v40 = *(v38 + v39);
  if (*(v40 + 16))
  {

    v41 = sub_25AF8F064((v0 + 96));
    if (v42)
    {
      v43 = *(*(v40 + 56) + 2 * v41 + 1);

      if ((v43 & 1) == 0)
      {

        if (*(v0 + 89) == 1)
        {
          v44 = *(v0 + 176);
          if (*(v44 + 42) == 1)
          {
            v45 = *(v0 + 184);
            v46 = sub_25B005B64();
            (*(*(v46 - 8) + 56))(v45, 1, 1, v46);

            v47 = sub_25B005B24();
            v48 = swift_allocObject();
            v49 = MEMORY[0x277D85700];
            v48[2] = v47;
            v48[3] = v49;
            v48[4] = v44;
            sub_25AF6C7F8(0, 0, v45, &unk_25B015AE8, v48);
          }
        }

        v50 = *(v0 + 8);

        return v50();
      }
    }

    else
    {
    }
  }

  v52 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
  *(v0 + 296) = sub_25B005B24();
  v53 = swift_task_alloc();
  *(v0 + 304) = v53;
  *v53 = v0;
  v53[1] = sub_25AFF4254;
  v30 = v52;
  v31 = 32;
LABEL_42:

  return sub_25AF545AC(v30, v31);
}

uint64_t sub_25AFF3260(char a1)
{
  *(*v1 + 51) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF33A4, v3, v2);
}

uint64_t sub_25AFF33A4()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_25AFF3408, v1, v2);
}

uint64_t sub_25AFF3408()
{
  v31 = v0;
  v1 = *(v0 + 50) & *(v0 + 51) & *(v0 + 49);
  if (v1)
  {
    v2 = *(v0 + 224);
    v3 = *(*(v0 + 232) + 16);
    if (v3 >= v2)
    {
      v3 = *(v0 + 224);
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    sub_25AF67ED8(v4, v4, (v0 + 16));
  }

  *(v0 + 52) = v1 & 1;
  v29[0] = 6;
  memset(&v29[1], 0, 24);
  v30 = 0;
  v5 = sub_25AF1C0E0(v29);
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 264) = sub_25B005B24();
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_25AFF3858;
    v8 = v6;
    v9 = 128;
LABEL_24:

    return sub_25AF545AC(v8, v9);
  }

  *(v0 + 54) = v1 & 1;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x800000025B0176B0;
  *(v0 + 72) = 0xD000000000000022;
  *(v0 + 80) = 0x800000025B0168E0;
  *(v0 + 88) = 1;
  sub_25AF12B3C(v0 + 56);
  if (v10)
  {
    v11 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 280) = sub_25B005B24();
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_25AFF3D8C;
    v8 = v11;
    v9 = 64;
    goto LABEL_24;
  }

  *(v0 + 89) = v1 & 1;
  v13 = *(v0 + 240);
  *(v0 + 96) = 100;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  swift_getKeyPath();
  *(v0 + 160) = v13;
  sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
  sub_25B004234();

  v14 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_23;
  }

  v16 = sub_25AF8F064((v0 + 96));
  if ((v17 & 1) == 0)
  {

    goto LABEL_23;
  }

  v18 = *(*(v15 + 56) + 2 * v16 + 1);

  if (v18)
  {
LABEL_23:
    v27 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 296) = sub_25B005B24();
    v28 = swift_task_alloc();
    *(v0 + 304) = v28;
    *v28 = v0;
    v28[1] = sub_25AFF4254;
    v8 = v27;
    v9 = 32;
    goto LABEL_24;
  }

  if (*(v0 + 89) == 1)
  {
    v19 = *(v0 + 176);
    if (*(v19 + 42) == 1)
    {
      v20 = *(v0 + 184);
      v21 = sub_25B005B64();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

      v22 = sub_25B005B24();
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v19;
      sub_25AF6C7F8(0, 0, v20, &unk_25B015AE8, v23);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_25AFF3858(char a1)
{
  *(*v1 + 53) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF399C, v3, v2);
}

uint64_t sub_25AFF399C()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_25AFF3A00, v1, v2);
}

uint64_t sub_25AFF3A00()
{
  v27 = v0;
  if (*(v0 + 53))
  {
    v23 = 6uLL;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_25AFF4548(&v23);
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 52);
  }

  *(v0 + 54) = v1;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x800000025B0176B0;
  *(v0 + 72) = 0xD000000000000022;
  *(v0 + 80) = 0x800000025B0168E0;
  *(v0 + 88) = 1;
  sub_25AF12B3C(v0 + 56);
  if (v2)
  {
    v3 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 280) = sub_25B005B24();
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = sub_25AFF3D8C;
    v5 = v3;
    v6 = 64;
LABEL_17:

    return sub_25AF545AC(v5, v6);
  }

  *(v0 + 89) = v1;
  v7 = *(v0 + 240);
  *(v0 + 96) = 100;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  swift_getKeyPath();
  *(v0 + 160) = v7;
  sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
  sub_25B004234();

  v8 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_16;
  }

  v10 = sub_25AF8F064((v0 + 96));
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  v12 = *(*(v9 + 56) + 2 * v10 + 1);

  if (v12)
  {
LABEL_16:
    v21 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
    *(v0 + 296) = sub_25B005B24();
    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_25AFF4254;
    v5 = v21;
    v6 = 32;
    goto LABEL_17;
  }

  if (*(v0 + 89) == 1)
  {
    v13 = *(v0 + 176);
    if (*(v13 + 42) == 1)
    {
      v14 = *(v0 + 184);
      v15 = sub_25B005B64();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

      v16 = sub_25B005B24();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v13;
      sub_25AF6C7F8(0, 0, v14, &unk_25B015AE8, v17);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_25AFF3D8C(char a1)
{
  *(*v1 + 55) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF3ED0, v3, v2);
}

uint64_t sub_25AFF3ED0()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_25AFF3F34, v1, v2);
}

uint64_t sub_25AFF3F34()
{
  v22 = v0;
  if (*(v0 + 55))
  {
    *&v18 = 0xD000000000000012;
    *(&v18 + 1) = 0x800000025B0176B0;
    v19 = 0xD000000000000022;
    v20 = 0x800000025B0168E0;
    v21 = -127;
    sub_25AFF4548(&v18);
    sub_25AF18128(0xD000000000000012, 0x800000025B0176B0, 0xD000000000000022, 0x800000025B0168E0, 0x81u);
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 54);
  }

  *(v0 + 89) = v1;
  v2 = *(v0 + 240);
  *(v0 + 96) = 100;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
  sub_25B004234();

  v3 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_25AF8F064((v0 + 96));
    if (v6)
    {
      v7 = *(*(v4 + 56) + 2 * v5 + 1);

      if ((v7 & 1) == 0)
      {

        if (*(v0 + 89) == 1)
        {
          v8 = *(v0 + 176);
          if (*(v8 + 42) == 1)
          {
            v9 = *(v0 + 184);
            v10 = sub_25B005B64();
            (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

            v11 = sub_25B005B24();
            v12 = swift_allocObject();
            v13 = MEMORY[0x277D85700];
            v12[2] = v11;
            v12[3] = v13;
            v12[4] = v8;
            sub_25AF6C7F8(0, 0, v9, &unk_25B015AE8, v12);
          }
        }

        v14 = *(v0 + 8);

        return v14();
      }
    }

    else
    {
    }
  }

  v16 = *(*(v0 + 176) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
  *(v0 + 296) = sub_25B005B24();
  v17 = swift_task_alloc();
  *(v0 + 304) = v17;
  *v17 = v0;
  v17[1] = sub_25AFF4254;

  return sub_25AF545AC(v16, 32);
}

uint64_t sub_25AFF4254(char a1)
{
  *(*v1 + 90) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF4398, v3, v2);
}

uint64_t sub_25AFF4398()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_25AFF43FC, v1, v2);
}

uint64_t sub_25AFF43FC()
{
  v1 = *(v0 + 90);

  if (v1 == 1)
  {
    sub_25AFF4548((v0 + 96));
  }

  else if (*(v0 + 89) != 1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 176);
  if (*(v2 + 42) == 1)
  {
    v3 = *(v0 + 184);
    v4 = sub_25B005B64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = sub_25B005B24();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D85700];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v2;
    sub_25AF6C7F8(0, 0, v3, &unk_25B015AE8, v6);
  }

LABEL_6:

  v8 = *(v0 + 8);

  return v8();
}

void sub_25AFF4548(__int128 *a1)
{
  v2 = v1;
  v4 = sub_25B005894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[1];
  v49 = *a1;
  v50 = v8;
  v51 = *(a1 + 32);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v9 = sub_25B0044C4();
  __swift_project_value_buffer(v9, qword_27FA30C28);
  sub_25AF196CC(&v49, &v46);
  v10 = sub_25B0044B4();
  v11 = sub_25B005C94();
  sub_25AF1C414(&v49);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v43[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v45 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(0xD000000000000018, 0x800000025B01B0E0, &v45);
    *(v13 + 12) = 2080;
    v46 = v49;
    v47 = v50;
    v48 = v51;
    sub_25AF196CC(&v49, v44);
    v15 = sub_25AFD3228();
    v17 = v16;
    sub_25AF18128(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    v18 = sub_25AF8E7DC(v15, v17, &v45);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_25AF0B000, v10, v11, "%s buttonID: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  sub_25AF18BD4(0, &qword_27FA271F0, 0x277D85C78);
  *v7 = sub_25B005D34();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v19 = sub_25B0058A4();
  (*(v5 + 8))(v7, v4);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v46 = v49;
  v47 = v50;
  v48 = v51;
  v20 = sub_25AF1C0E0(&v46);
  if (v20 == 2 || (v20 & 1) == 0)
  {
    sub_25AF196CC(&v49, &v46);
    v24 = sub_25B0044B4();
    v25 = sub_25B005CB4();
    sub_25AF1C414(&v49);
    if (!os_log_type_enabled(v24, v25))
    {
LABEL_14:

      return;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136315138;
    v46 = v49;
    v47 = v50;
    v48 = v51;
    sub_25AF196CC(&v49, v44);
    v28 = sub_25AFD3228();
    v30 = v29;
    sub_25AF18128(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    v31 = sub_25AF8E7DC(v28, v30, &v45);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_25AF0B000, v24, v25, "Tried to display button ID marked not allowed: %s. A logic error may exist.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x25F85EC30](v27, -1, -1);
    v32 = v26;
LABEL_13:
    MEMORY[0x25F85EC30](v32, -1, -1);
    goto LABEL_14;
  }

  v21 = qword_27FA270D8;
  if (!qword_27FA270D8)
  {
    sub_25AF196CC(&v49, &v46);
    v24 = sub_25B0044B4();
    v33 = sub_25B005CD4();
    sub_25AF1C414(&v49);
    if (!os_log_type_enabled(v24, v33))
    {
      goto LABEL_14;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_25AF8E7DC(0xD000000000000018, 0x800000025B01B0E0, &v45);
    *(v34 + 12) = 2080;
    v46 = v49;
    v47 = v50;
    v48 = v51;
    sub_25AF196CC(&v49, v44);
    v36 = sub_25AFD3228();
    v38 = v37;
    sub_25AF18128(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    v39 = sub_25AF8E7DC(v36, v38, &v45);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_25AF0B000, v24, v33, "%s buttonID: %s; calculatedPriorityOrder not available. Exiting without displaying button.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v35, -1, -1);
    v32 = v34;
    goto LABEL_13;
  }

  v22 = sub_25AF63D44(&v49, v21);
  if (v23)
  {

    v46 = v49;
    v47 = v50;
    v48 = v51;
    sub_25AFED924(&v46);
    return;
  }

  if (!__OFSUB__(0, v22))
  {
    if (v22)
    {
      v40 = v22 - 1;
      if (!__OFSUB__(v22, 1))
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v40 = 0;
LABEL_23:
    v41 = v22 == 0;
    v46 = v49;
    v47 = v50;
    v48 = v51;
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;
    *(v42 + 32) = v21;
    sub_25AFF57D8(&v46, sub_25AFFAA14, v42);

    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_25AFF4B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_25B005B34();
  v4[4] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25AFF4C28, v6, v5);
}

uint64_t sub_25AFF4C28()
{
  v1 = v0[3];
  v2 = *(v1 + 48);
  swift_getKeyPath();
  v0[2] = v1;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
  v0[7] = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_25AFF4D6C;

  return sub_25AFDDEA8(v4, v2);
}

uint64_t sub_25AFF4D6C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_25AFF4E98;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_25AF55270;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25AFF4E98()
{
  v16 = v0;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = v1;
  v4 = sub_25B0044B4();
  v5 = sub_25B005CB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1F0, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25AF0B000, v4, v5, "%s Failed to save button order: %@", v8, 0x16u);
    sub_25AF2602C(v9, &qword_27FA23AC0, &qword_25B009140);
    MEMORY[0x25F85EC30](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25AFF50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27208, &qword_25B015A80);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = sub_25B005B34();
  v5[11] = sub_25B005B24();
  v8 = sub_25B005AE4();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_25AFF51C0, v8, v7);
}

uint64_t sub_25AFF51C0(uint64_t a1)
{
  v1[14] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_25AFF524C, v3, v2);
}

uint64_t sub_25AFF524C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27190, &qword_25B0159C0);
  sub_25B005BA4();
  v1 = sub_25B005B24();
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_25AFF532C;
  v3 = v0[7];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v1, v4, v3);
}

uint64_t sub_25AFF532C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_25AFF5470, v3, v2);
}

uint64_t sub_25AFF5470(uint64_t a1)
{
  if (*(v1 + 152))
  {
    (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));

    v2 = *(v1 + 96);
    v3 = *(v1 + 104);

    return MEMORY[0x2822009F8](sub_25AFF558C, v2, v3);
  }

  else
  {
    v4 = sub_25B005B24();
    *(v1 + 136) = v4;
    v5 = swift_task_alloc();
    *(v1 + 144) = v5;
    *v5 = v1;
    v5[1] = sub_25AFF532C;
    v6 = *(v1 + 56);
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v1 + 152, v4, v7, v6);
  }
}

uint64_t sub_25AFF558C()
{
  v20 = v0;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B01B1D0, v18);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s done waiting for buttons persistence to load", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStream;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStreamTask) = 0;

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 64);
    do
    {
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v10 += 40;
      v18[0] = v11;
      v18[1] = v12;
      v18[2] = v13;
      v18[3] = v14;
      v19 = v15;
      sub_25AF181DC(v11, v12, v13, v14, v15);
      sub_25AFED924(v18);
      sub_25AF18128(v11, v12, v13, v14, v15);
      --v9;
    }

    while (v9);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_25AFF57D8(uint64_t a1, void (*a2)(_BYTE *, char **), uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v72 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v64 - v7;
  v8 = sub_25B0041C4();
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  *v80 = *a1;
  *&v80[16] = v11;
  v12 = *(a1 + 32);
  v81 = v12;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel___observationRegistrar;
  *v78 = v4;
  v18 = sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  v71 = v17;
  v70 = v18;
  sub_25B004234();

  v69 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse;
  if (*(v4 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
  {
    v19 = *(v4 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_25AF63D44(v80, v19);
  v21 = v20;

  if (v21)
  {
    v22 = *v80;
    v23 = v81 >> 6;
    if (v23)
    {
      if (v23 == 1)
      {
        v73 = *v80;
        v74 = *&v80[8];
        v75 = *&v80[24];
        sub_25AF196CC(v80, v78);
        if (qword_27FA23800 != -1)
        {
          swift_once();
        }

        v24 = sub_25B0044C4();
        __swift_project_value_buffer(v24, qword_27FA30C28);
        v25 = sub_25B0044B4();
        v26 = sub_25B005CD4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v77 = v65;
          *v27 = 136315394;
          *(v27 + 4) = sub_25AF8E7DC(0xD000000000000020, 0x800000025B01B100, &v77);
          *(v27 + 12) = 2080;
          swift_beginAccess();
          v28 = v73;
          *v78 = v73;
          *&v78[8] = v74;
          *&v78[24] = v75;

          v29 = v28;
          v30 = GlanceControlID.description.getter();
          v32 = v31;

          v33 = sub_25AF8E7DC(v30, v32, &v77);

          *(v27 + 14) = v33;
          _os_log_impl(&dword_25AF0B000, v25, v26, "%s adding a control button: %s", v27, 0x16u);
          v34 = v65;
          swift_arrayDestroy();
          MEMORY[0x25F85EC30](v34, -1, -1);
          MEMORY[0x25F85EC30](v27, -1, -1);
        }

        v35 = v72;
        swift_beginAccess();
        sub_25B0041B4();
        v36 = sub_25B0041A4();
        v38 = v37;
        (v67[1])(v10, v8);

        *(&v74 + 1) = v36;
        v75 = v38;
        swift_endAccess();
        v14 = v73;
        v15 = *(&v74 + 1);
        v13 = v74;
        v12 = 64;
        v16 = v75;
      }

      else
      {
        sub_25AF196CC(v80, v78);
        v35 = v72;
      }
    }

    else
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v48 = sub_25B0044C4();
      __swift_project_value_buffer(v48, qword_27FA30C28);
      v49 = sub_25B0044B4();
      v50 = sub_25B005C94();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v78 = v67;
        *v51 = 136315394;
        *(v51 + 4) = sub_25AF8E7DC(0xD000000000000020, 0x800000025B01B100, v78);
        *(v51 + 12) = 2048;
        *(v51 + 14) = v22;
        _os_log_impl(&dword_25AF0B000, v49, v50, "%s adding a legacy style button: %ld", v51, 0x16u);
        v52 = v67;
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x25F85EC30](v52, -1, -1);
        MEMORY[0x25F85EC30](v51, -1, -1);
      }

      v35 = v72;
      sub_25AF196CC(v80, v78);
    }

    *v78 = *v80;
    *&v78[16] = *&v80[16];
    v79 = v81;
    v53 = sub_25AF576E8(v78);
    swift_getKeyPath();
    *v78 = v4;
    sub_25AF181DC(v14, v13, v15, v16, v12);
    sub_25B004234();

    if (*(v4 + v69))
    {
      v54 = *(v4 + v69);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v73 = v54;
    if (v35)
    {
      *v78 = v14;
      *&v78[8] = v13;
      *&v78[16] = v15;
      *&v78[24] = v16;
      v79 = v12;

      v55 = v68;
      sub_25AF2EBC4(v35, v68);
      v35(v78, &v73);
      sub_25AF1895C(v35, v55);
      v54 = v73;
    }

    else
    {
      sub_25AF1D7EC(v14, v13, v15, v16, v12);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_25AFCD450(0, *(v54 + 2) + 1, 1, v54);
      }

      v57 = *(v54 + 2);
      v56 = *(v54 + 3);
      if (v57 >= v56 >> 1)
      {
        v54 = sub_25AFCD450((v56 > 1), v57 + 1, 1, v54);
      }

      *(v54 + 2) = v57 + 1;
      v58 = &v54[40 * v57];
      *(v58 + 4) = v14;
      *(v58 + 5) = v13;
      *(v58 + 6) = v15;
      *(v58 + 7) = v16;
      v58[64] = v12;
      v73 = v54;
      v35 = v72;
    }

    sub_25AFF0708(v54);
    sub_25AF231D0(v14, v13, v15, v16, v12);
    if (!v35 && (v53 & 0x10000) == 0)
    {
      v59 = sub_25B005B64();
      v60 = v66;
      (*(*(v59 - 8) + 56))(v66, 1, 1, v59);
      sub_25B005B34();

      v61 = sub_25B005B24();
      v62 = swift_allocObject();
      v63 = MEMORY[0x277D85700];
      *(v62 + 16) = v61;
      *(v62 + 24) = v63;
      *(v62 + 32) = v4;
      *(v62 + 40) = v53;
      sub_25AF6CDEC(0, 0, v60, &unk_25B015A58, v62);
    }

    sub_25AF231D0(v14, v13, v15, v16, v12);
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v39 = sub_25B0044C4();
    __swift_project_value_buffer(v39, qword_27FA30C28);
    sub_25AF196CC(v80, v78);
    v40 = sub_25B0044B4();
    v41 = sub_25B005CB4();
    sub_25AF1C414(v80);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_25AF8E7DC(0xD000000000000020, 0x800000025B01B100, v76);
      *(v42 + 12) = 2080;
      *v78 = *v80;
      *&v78[16] = *&v80[16];
      v79 = v81;
      sub_25AF196CC(v80, &v73);
      v44 = sub_25AFD3228();
      v46 = v45;
      sub_25AF18128(*v78, *&v78[8], *&v78[16], *&v78[24], v79);
      v47 = sub_25AF8E7DC(v44, v46, v76);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_25AF0B000, v40, v41, "%s found existing displayed button button with ID %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v43, -1, -1);
      MEMORY[0x25F85EC30](v42, -1, -1);
    }
  }
}

uint64_t sub_25AFF61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_25B005B34();
  v5[9] = sub_25B005B24();
  v7 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF626C, v7, v6);
}

uint64_t sub_25AFF626C()
{
  v28 = v0;
  v1 = v0[8];
  v2 = v0[7];

  swift_getKeyPath();
  v0[2] = v2;
  sub_25B000EE0(&qword_27FA25608, type metadata accessor for ButtonOrderModel, "}_'Բ");
  sub_25B004234();

  v3 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse;
  if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse))
  {
    v4 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_25AF63D44(v1, v4);
  v7 = v6;

  if (v7)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v8 = v0[8];
    v9 = sub_25B0044C4();
    __swift_project_value_buffer(v9, qword_27FA30C28);
    sub_25AF196CC(v8, (v0 + 2));
    v10 = sub_25B0044B4();
    v11 = sub_25B005CB4();
    sub_25AF1C414(v8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[8];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_25AF8E7DC(0xD000000000000010, 0x800000025B01B340, &v27);
      *(v13 + 12) = 2080;
      v15 = *(v12 + 16);
      v24 = *v12;
      v25 = v15;
      v26 = *(v12 + 32);
      sub_25AF196CC(v12, (v0 + 2));
      v16 = sub_25AFD3228();
      v18 = v17;
      sub_25AF18128(v24, *(&v24 + 1), v25, *(&v25 + 1), v26);
      v19 = sub_25AF8E7DC(v16, v18, &v27);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_25AF0B000, v10, v11, "%s couldn't find displayed button with ID %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v14, -1, -1);
      MEMORY[0x25F85EC30](v13, -1, -1);
    }
  }

  else
  {
    v20 = v0[7];
    swift_getKeyPath();
    v0[2] = v20;
    sub_25B004234();

    v21 = MEMORY[0x277D84F90];
    if (*(v2 + v3))
    {
      v21 = *(v2 + v3);
    }

    v27 = v21;

    sub_25AF64304(v5, &v24);
    sub_25AF18128(v24, *(&v24 + 1), v25, *(&v25 + 1), v26);
    sub_25AFF0708(v27);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_25AFF65C0(uint64_t a1, uint64_t **a2, unint64_t a3, char a4, uint64_t a5)
{
  v7 = a2;
  v9 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  if (a4)
  {
    v35 = *a1;
    v36 = v8;
    v37 = v11;
    v38 = v10;
    v39 = v12;
    sub_25AF181DC(v9, v8, v11, v10, v12);
    sub_25AF67ED8(0, 0, &v35);

    return sub_25AF18128(v9, v8, v11, v10, v12);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(a5 + 16) <= a3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = *(a1 + 8);
  v31 = a2;
  v32 = v11;
  v33 = v10;
  v34 = v12;
  v5 = &v27;
  v15 = a5 + 40 * a3;
  v16 = *(v15 + 40);
  v11 = *(v15 + 48);
  v8 = *(v15 + 56);
  v6 = *(v15 + 64);
  v7 = *a2;
  v35 = *(v15 + 32);
  v17 = v35;
  v36 = v16;
  v37 = v11;
  v38 = v8;
  v39 = v6;
  MEMORY[0x28223BE20](a1);
  v26[2] = &v35;
  sub_25AF181DC(v17, v16, v11, v8, v6);
  if (sub_25AF35518(sub_25AF9F758, v26, v7))
  {
    if (v7[2] > a3)
    {
      v28 = v16;
      v29 = v11;
      v18 = v9;
      v19 = v30;
      v35 = v9;
      v36 = v30;
      v20 = v32;
      v21 = v33;
      v37 = v32;
      v38 = v33;
      v22 = v34;
      v39 = v34;
      sub_25AF181DC(v18, v30, v32, v33, v34);
      sub_25AF67ED8(a3 + 1, (a3 + 1), &v35);
      sub_25AF18128(v18, v19, v20, v21, v22);
      return sub_25AF18128(v17, v28, v29, v8, v6);
    }

    goto LABEL_16;
  }

  sub_25AF18128(v17, v16, v11, v8, v6);
  v6 = v30;
  v8 = v32;
  v11 = v33;
  LOBYTE(v5) = v34;
  sub_25AF181DC(v9, v30, v32, v33, v34);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_17:
    result = sub_25AFCD450(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v24 = v7[2];
  v23 = v7[3];
  if (v24 >= v23 >> 1)
  {
    result = sub_25AFCD450((v23 > 1), v24 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v24 + 1;
  v25 = &v7[5 * v24];
  v25[4] = v9;
  v25[5] = v6;
  v25[6] = v8;
  v25[7] = v11;
  *(v25 + 64) = v5;
  *v31 = v7;
  return result;
}

uint64_t sub_25AFF6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  *(v6 + 50) = a5;
  *(v6 + 96) = a4;
  *(v6 + 104) = a6;
  *(v6 + 112) = sub_25B005B34();
  *(v6 + 120) = sub_25B005B24();
  v8 = sub_25B005AE4();
  *(v6 + 128) = v8;
  *(v6 + 136) = v7;

  return MEMORY[0x2822009F8](sub_25AFF6934, v8, v7);
}

uint64_t sub_25AFF6934(uint64_t a1)
{
  v2 = *(*(v1 + 96) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
  *(v1 + 144) = v2;
  *(v1 + 152) = sub_25B005B24();
  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v1;
  v3[1] = sub_25AFF69E8;
  v4 = *(v1 + 50);

  return sub_25AF545AC(v2, v4);
}

uint64_t sub_25AFF69E8(char a1)
{
  v2 = *v1;
  *(v2 + 49) = a1;

  v4 = sub_25B005AE4();
  *(v2 + 168) = v4;
  *(v2 + 176) = v3;

  return MEMORY[0x2822009F8](sub_25AFF6B34, v4, v3);
}

uint64_t sub_25AFF6B34()
{
  if (*(v0 + 49))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_25AFF6E2C;

    return sub_25AF54F14();
  }

  else
  {

    v3 = *(v0 + 128);
    v4 = *(v0 + 136);

    return MEMORY[0x2822009F8](sub_25AFF6C08, v3, v4);
  }
}

uint64_t sub_25AFF6C08()
{
  v20 = v0;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  sub_25AF196CC(v1, v0 + 16);
  v3 = sub_25B0044B4();
  v4 = sub_25B005CD4();
  sub_25AF1C414(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 49);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B01B0C0, &v16);
    *(v7 + 12) = 2080;
    v9 = *(v6 + 16);
    v17 = *v6;
    v18 = v9;
    v19 = *(v6 + 32);
    sub_25AF196CC(v6, v0 + 56);
    v10 = sub_25AFD3228();
    v12 = v11;
    sub_25AF18128(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
    v13 = sub_25AF8E7DC(v10, v12, &v16);

    *(v7 + 14) = v13;
    *(v7 + 22) = 1024;
    *(v7 + 24) = v5;
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s buttonID: %s; didChange: %{BOOL}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25AFF6E2C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_25AFF6F4C, v3, v2);
}

uint64_t sub_25AFF6F4C()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_25AFF6FB0, v1, v2);
}

uint64_t sub_25AFF6FB0()
{
  v22 = v0;
  v1 = *(v0 + 104);

  v2 = *(v1 + 16);
  v19 = *v1;
  v20 = v2;
  v21 = *(v1 + 32);
  sub_25AFF4548(&v19);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  sub_25AF196CC(v3, v0 + 16);
  v5 = sub_25B0044B4();
  v6 = sub_25B005CD4();
  sub_25AF1C414(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 49);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B01B0C0, &v18);
    *(v9 + 12) = 2080;
    v11 = *(v8 + 16);
    v19 = *v8;
    v20 = v11;
    v21 = *(v8 + 32);
    sub_25AF196CC(v8, v0 + 56);
    v12 = sub_25AFD3228();
    v14 = v13;
    sub_25AF18128(v19, *(&v19 + 1), v20, *(&v20 + 1), v21);
    v15 = sub_25AF8E7DC(v12, v14, &v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v7;
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s buttonID: %s; didChange: %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v9, -1, -1);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25AFF71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_25B005B34();
  v5[4] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_25AFF7288, v7, v6);
}

uint64_t sub_25AFF7288()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_25AFF7324;
  v2 = *(v0 + 24);

  return sub_25AF10FA0(v2);
}

uint64_t sub_25AFF7324()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_25B001568, v3, v2);
}

double sub_25AFF7444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_25B005B64();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_25AF25FC4(a2, v7, &unk_27FA271A0, &unk_25B00BB40);
  sub_25B005B34();

  v12 = sub_25B005B24();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v12;
  v14[3] = v15;
  v14[4] = a1;
  sub_25B001064(v7, v14 + v13);
  sub_25AF6C7F8(0, 0, v10, &unk_25B015B08, v14);

  return result;
}

uint64_t sub_25AFF7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_25B004194();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27250, &qword_25B015B10);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_25B005B34();
  v5[24] = sub_25B005B24();
  v9 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFF785C, v9, v8);
}

uint64_t sub_25AFF785C()
{
  v62 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v3 = v0[23];
    v4 = v0[9];
    v5 = sub_25B0044C4();
    __swift_project_value_buffer(v5, qword_27FA30C28);
    sub_25AF25FC4(v4, v3, &unk_27FA271A0, &unk_25B00BB40);
    v6 = sub_25B0044B4();
    v7 = sub_25B005CD4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v60 = v2;
    if (v8)
    {
      v10 = v0[22];
      v12 = v0[10];
      v11 = v0[11];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v61 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_25AF8E7DC(0xD000000000000038, 0x800000025B01B2D0, &v61);
      *(v13 + 12) = 2080;
      sub_25AF25FC4(v9, v10, &unk_27FA271A0, &unk_25B00BB40);
      v15 = (*(v11 + 48))(v10, 1, v12);
      v16 = v0[22];
      if (v15 == 1)
      {
        sub_25AF2602C(v0[22], &unk_27FA271A0, &unk_25B00BB40);
        v17 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      else
      {
        v20 = v0[10];
        v19 = v0[11];
        v18 = sub_25B004164();
        v17 = v21;
        (*(v19 + 8))(v16, v20);
      }

      sub_25AF2602C(v0[23], &unk_27FA271A0, &unk_25B00BB40);
      v22 = sub_25AF8E7DC(v18, v17, &v61);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_25AF0B000, v6, v7, "%s creationDate: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v14, -1, -1);
      MEMORY[0x25F85EC30](v13, -1, -1);

      v2 = v60;
    }

    else
    {

      sub_25AF2602C(v9, &unk_27FA271A0, &unk_25B00BB40);
    }

    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[16];
    v26 = OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_persistenceWaiting;
    swift_beginAccess();
    sub_25AF25FC4(v2 + v26, v25, &unk_27FA271E0, &unk_25B015A08);
    if ((*(v23 + 48))(v25, 1, v24) == 1)
    {
      v27 = v0[16];

      sub_25AF2602C(v27, &unk_27FA271E0, &unk_25B015A08);
      goto LABEL_25;
    }

    v28 = v0[21];
    v29 = v0[19];
    v30 = v0[17];
    v31 = v0[10];
    v32 = v0[11];
    sub_25B000A44(v0[16], v29);
    v33 = *(v30 + 24);
    sub_25AF25FC4(v29 + v33, v28, &unk_27FA271A0, &unk_25B00BB40);
    v34 = *(v32 + 48);
    LODWORD(v31) = v34(v28, 1, v31);
    sub_25AF2602C(v28, &unk_27FA271A0, &unk_25B00BB40);
    if (v31 == 1)
    {
      goto LABEL_13;
    }

    v42 = v0[14];
    v44 = v0[9];
    v43 = v0[10];
    v45 = *(v0[13] + 48);
    sub_25AF25FC4(v29 + v33, v42, &unk_27FA271A0, &unk_25B00BB40);
    sub_25AF25FC4(v44, v42 + v45, &unk_27FA271A0, &unk_25B00BB40);
    if (v34(v42, 1, v43) == 1)
    {
      if (v34(v42 + v45, 1, v0[10]) == 1)
      {
        sub_25AF2602C(v0[14], &unk_27FA271A0, &unk_25B00BB40);
LABEL_13:
        v35 = sub_25B0044B4();
        v36 = sub_25B005CD4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v61 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_25AF8E7DC(0xD000000000000038, 0x800000025B01B2D0, &v61);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          MEMORY[0x25F85EC30](v38, -1, -1);
          MEMORY[0x25F85EC30](v37, -1, -1);
        }

        v39 = v0[19];
        v40 = v0[15];
        (*(v0[18] + 56))(v40, 1, 1, v0[17]);
        sub_25AFF030C(v40);

        v41 = v39;
        goto LABEL_24;
      }
    }

    else
    {
      v46 = v0[10];
      sub_25AF25FC4(v0[14], v0[20], &unk_27FA271A0, &unk_25B00BB40);
      v47 = v34(v42 + v45, 1, v46);
      v48 = v0[20];
      if (v47 != 1)
      {
        v53 = v0[14];
        v54 = v45;
        v55 = v0[11];
        v56 = v0[12];
        v57 = v0[10];
        (*(v55 + 32))(v56, v42 + v54, v57);
        sub_25B000EE0(&qword_27FA246D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v58 = sub_25B0058E4();
        v59 = *(v55 + 8);
        v59(v56, v57);
        v59(v48, v57);
        sub_25AF2602C(v53, &unk_27FA271A0, &unk_25B00BB40);
        if (v58)
        {
          goto LABEL_13;
        }

LABEL_23:
        v41 = v0[19];
LABEL_24:
        sub_25B000DC0(v41);
        goto LABEL_25;
      }

      v50 = v0[10];
      v49 = v0[11];

      (*(v49 + 8))(v48, v50);
    }

    sub_25AF2602C(v0[14], &qword_27FA27250, &qword_25B015B10);
    goto LABEL_23;
  }

LABEL_25:

  v51 = v0[1];

  return v51();
}

uint64_t sub_25AFF7FD0(char a1)
{
  v3 = qword_286C4C0B8;
  v4 = [v1 isAllowedService_];
  v5 = [v1 isDemoAllowedForService_];
  if ((v4 & 1) != 0 || v5)
  {
    goto LABEL_25;
  }

  [v1 statusReasonForService_];
  if ((a1 & 1) != 0 && [v1 isPermittedAtCurrentLocation_])
  {
    goto LABEL_21;
  }

  v6 = qword_286C4C0C0;
  v7 = [v1 isAllowedService_];
  v8 = [v1 isDemoAllowedForService_];
  if (v7 & 1) != 0 || (v8)
  {
    goto LABEL_25;
  }

  [v1 statusReasonForService_];
  if (a1 & 1) != 0 && ([v1 isPermittedAtCurrentLocation_])
  {
    goto LABEL_21;
  }

  v9 = qword_286C4C0C8;
  v10 = [v1 isAllowedService_];
  v11 = [v1 isDemoAllowedForService_];
  if (v10 & 1) != 0 || (v11)
  {
    goto LABEL_25;
  }

  [v1 statusReasonForService_];
  if (a1 & 1) != 0 && ([v1 isPermittedAtCurrentLocation_])
  {
    goto LABEL_21;
  }

  v12 = qword_286C4C0D0;
  v13 = [v1 isAllowedService_];
  v14 = [v1 isDemoAllowedForService_];
  if (v13 & 1) != 0 || (v14)
  {
    goto LABEL_25;
  }

  [v1 statusReasonForService_];
  if (a1 & 1) != 0 && ([v1 isPermittedAtCurrentLocation_])
  {
LABEL_21:
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v18 = sub_25B0044C4();
    __swift_project_value_buffer(v18, qword_27FA30C28);
    v19 = sub_25B0044B4();
    v20 = sub_25B005CD4();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_30;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_25AF8E7DC(0xD000000000000030, 0x800000025B01B080, &v31);
    v23 = "%s - Found service permitted at current location";
LABEL_29:
    _os_log_impl(&dword_25AF0B000, v19, v20, v23, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x25F85EC30](v22, -1, -1);
    MEMORY[0x25F85EC30](v21, -1, -1);
LABEL_30:

    return 1;
  }

  v15 = qword_286C4C0D8;
  v16 = [v1 isAllowedService_];
  v17 = [v1 isDemoAllowedForService_];
  if (v16 & 1) != 0 || (v17)
  {
LABEL_25:
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v24 = sub_25B0044C4();
    __swift_project_value_buffer(v24, qword_27FA30C28);
    v19 = sub_25B0044B4();
    v20 = sub_25B005CD4();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_30;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_25AF8E7DC(0xD000000000000030, 0x800000025B01B080, &v31);
    v23 = "%s - Found at least one available service";
    goto LABEL_29;
  }

  [v1 statusReasonForService_];
  if (a1 & 1) != 0 && ([v1 isPermittedAtCurrentLocation_])
  {
    goto LABEL_21;
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v26 = sub_25B0044C4();
  __swift_project_value_buffer(v26, qword_27FA30C28);
  v27 = sub_25B0044B4();
  v28 = sub_25B005CD4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25AF8E7DC(0xD000000000000030, 0x800000025B01B080, &v31);
    _os_log_impl(&dword_25AF0B000, v27, v28, "%s - No services are available", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x25F85EC30](v30, -1, -1);
    MEMORY[0x25F85EC30](v29, -1, -1);
  }

  return 0;
}

void sub_25AFF84F0()
{
  v49[1] = *MEMORY[0x277D85DE8];
  v1 = &unk_27FA30000;
  if (!qword_27FA30B10)
  {
    __break(1u);
  }

  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v49[0] = 0;
  v4 = [v3 getStewieSupport_];
  v5 = 0x27FA23000uLL;
  if (!v4)
  {
    v20 = v49[0];
    v21 = sub_25B004084();

    swift_willThrow();
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v22 = sub_25B0044C4();
    __swift_project_value_buffer(v22, qword_27FA30C28);
    v23 = v21;
    v24 = sub_25B0044B4();
    v25 = sub_25B005CB4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01B060, v49);
      *(v26 + 12) = 2112;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v30;
      *v27 = v30;
      _os_log_impl(&dword_25AF0B000, v24, v25, "%s - Error getting Stewie support status: %@", v26, 0x16u);
      sub_25AF2602C(v27, &qword_27FA23AC0, &qword_25B009140);
      MEMORY[0x25F85EC30](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x25F85EC30](v28, -1, -1);
      MEMORY[0x25F85EC30](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v6 = v4;
  v7 = v49[0];
  v48 = [v6 hwSupport];
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);
  v9 = v6;
  v10 = sub_25B0044B4();
  v11 = sub_25B005CD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v2;
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v12 = 136315394;
    *(v12 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01B060, v49);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v6;
    v16 = v9;
    _os_log_impl(&dword_25AF0B000, v10, v11, "%s - Stewie support status: %@", v12, 0x16u);
    sub_25AF2602C(v13, &qword_27FA23AC0, &qword_25B009140);
    v17 = v13;
    v1 = &unk_27FA30000;
    MEMORY[0x25F85EC30](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v18 = v15;
    v2 = v14;
    MEMORY[0x25F85EC30](v18, -1, -1);
    v19 = v12;
    v5 = 0x27FA23000;
    MEMORY[0x25F85EC30](v19, -1, -1);

    if (!v48)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v48)
    {
LABEL_21:
      if (*(v5 + 2048) != -1)
      {
        swift_once();
      }

      v47 = sub_25B0044C4();
      __swift_project_value_buffer(v47, qword_27FA30C28);
      v42 = sub_25B0044B4();
      v43 = sub_25B005CD4();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_26;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01B060, v49);
      v46 = "%s - no HW support";
      goto LABEL_25;
    }
  }

  v31 = v1[354];
  if (v31)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CC3768]) initWithDelegate:v2 queue:*(v31 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_workQueue)];
    [v32 start];
    if (!v32 || (v33 = [v32 getState], v32, !v33))
    {
      v42 = sub_25B0044B4();
      v43 = sub_25B005CB4();
      if (!os_log_type_enabled(v42, v43))
      {
LABEL_26:

        return;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01B060, v49);
      v46 = "%s - Failed to get stewieState";
LABEL_25:
      _os_log_impl(&dword_25AF0B000, v42, v43, v46, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x25F85EC30](v45, -1, -1);
      MEMORY[0x25F85EC30](v44, -1, -1);
      goto LABEL_26;
    }

    v34 = sub_25AFF7FD0(1);
    v35 = v33;
    v36 = sub_25B0044B4();
    v37 = sub_25B005CD4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49[0] = v40;
      *v38 = 136315650;
      *(v38 + 4) = sub_25AF8E7DC(0xD000000000000016, 0x800000025B01B060, v49);
      *(v38 + 12) = 1024;
      *(v38 + 14) = v34 & 1;
      *(v38 + 18) = 2112;
      *(v38 + 20) = v35;
      *v39 = v33;
      v41 = v35;
      _os_log_impl(&dword_25AF0B000, v36, v37, "%s - isAnyServiceAllowed: %{BOOL}d, from stewieState: %@", v38, 0x1Cu);
      sub_25AF2602C(v39, &qword_27FA23AC0, &qword_25B009140);
      MEMORY[0x25F85EC30](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x25F85EC30](v40, -1, -1);
      MEMORY[0x25F85EC30](v38, -1, -1);
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

id sub_25AFF8CE4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ButtonOrderModel.StewieWidgetAvailability();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25AFF8D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27190, &qword_25B0159C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25AFF8ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27190, &qword_25B0159C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_25AFF903C(uint64_t a1)
{
  sub_25AFF912C(319, &qword_27FA271C0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_25AFF912C(319, &qword_27FA271C8, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_25AFF9184(319, &qword_27FA271D0, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AFF912C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25AFF9184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B005E04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25AFF91D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25B005B34();
  v4[3] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AFF9270, v6, v5);
}

uint64_t sub_25AFF9270()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_25AFF930C;

  return sub_25AF54F14();
}

uint64_t sub_25AFF930C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AF27F90, v3, v2);
}

uint64_t sub_25AFF942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 112) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = sub_25B005B34();
  *(v5 + 40) = sub_25B005B24();
  v7 = sub_25B005AE4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_25AFF94CC, v7, v6);
}

uint64_t sub_25AFF94CC(uint64_t a1)
{
  v2 = *(*(v1 + 24) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_conditionsModel);
  *(v1 + 64) = v2;
  *(v1 + 72) = sub_25B005B24();
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = sub_25AFF957C;
  v4 = *(v1 + 112);

  return sub_25AF545AC(v2, v4);
}

uint64_t sub_25AFF957C(char a1)
{
  v2 = *v1;
  *(v2 + 114) = a1;

  v4 = sub_25B005AE4();
  *(v2 + 88) = v4;
  *(v2 + 96) = v3;

  return MEMORY[0x2822009F8](sub_25AFF96C8, v4, v3);
}

uint64_t sub_25AFF96C8()
{
  if (*(v0 + 114) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_25AFF97A0;

    return sub_25AF54F14();
  }

  else
  {

    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_25AFF9924, v3, v4);
  }
}

uint64_t sub_25AFF97A0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_25AFF98C0, v3, v2);
}

uint64_t sub_25AFF98C0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_25AFF9924, v1, v2);
}

uint64_t sub_25AFF9924()
{
  v1 = *(v0 + 114);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AFF9990(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v37 = a2 + 56;
  v32 = v8;
  v33 = result + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v31 = result;
    v12 = *(result + 48) + 32 * (v9 | (v3 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    sub_25B006294();

    v17 = v13;
    sub_25B005DF4();
    v36 = v14;
    MEMORY[0x25F85E0A0](v14);
    v34 = v16;
    v35 = v15;
    sub_25B0062B4();
    if (v15)
    {
      sub_25B005994();
    }

    v18 = sub_25B0062D4();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v37 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_35:

      return 0;
    }

    v21 = ~v19;
    sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
    while (1)
    {
      v22 = *(a2 + 48) + 32 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);

      v27 = v24;
      if ((sub_25B005DE4() & 1) == 0 || v23 != v36)
      {
        goto LABEL_28;
      }

      if (!v26)
      {
        if (!v35)
        {
          break;
        }

LABEL_28:

        goto LABEL_29;
      }

      if (!v35)
      {
        goto LABEL_28;
      }

      if (v25 == v34 && v26 == v35)
      {
        break;
      }

      v29 = sub_25B006174();

      if (v29)
      {

        goto LABEL_32;
      }

LABEL_29:
      v20 = (v20 + 1) & v21;
      if (((*(v37 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v17 = v27;
LABEL_32:

    result = v31;
    v8 = v32;
    v4 = v33;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AFF9C60(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v69 = a2 + 56;
  v55 = result + 56;
  v56 = result;
  v66 = a2;
  v54 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *(v12 + 8);
    v60 = *v12;
    v14 = *(v12 + 24);
    v71 = *(v12 + 16);
    v15 = *(v12 + 32);
    v16 = a2;
    sub_25B006294();
    v65 = v15 >> 6;
    v58 = v9;
    if (!(v15 >> 6))
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v60);
      goto LABEL_22;
    }

    if (v15 >> 6 != 1)
    {
      MEMORY[0x25F85E0A0](2);
      if (v15)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF181DC(v60, v13, v71, v14, v15);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF181DC(v60, v13, v71, v14, v15);
        sub_25B005DF4();
      }

      goto LABEL_21;
    }

    MEMORY[0x25F85E0A0](1);

    v17 = v60;
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v13);
    if (v14)
    {
      sub_25B0062B4();
LABEL_21:
      sub_25B005994();
      goto LABEL_22;
    }

    sub_25B0062B4();
LABEL_22:
    v18 = sub_25B0062D4();
    v19 = -1 << *(v16 + 32);
    v20 = v18 & ~v19;
    if (((*(v69 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      v53 = v60;
LABEL_85:
      sub_25AF18128(v53, v13, v71, v14, v15);
      return 0;
    }

    v57 = v2;
    v67 = ~v19;
    v21 = v71;
    v22 = v60;
    v61 = v14;
    v62 = v13;
    v59 = v15;
    while (1)
    {
      v23 = *(v16 + 48) + 40 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v28 = *(v23 + 32);
      v72[0] = *v23;
      v72[1] = v25;
      v72[2] = v26;
      v72[3] = v27;
      v73 = v28;
      v74 = v22;
      v75 = v13;
      v76 = v21;
      v77 = v14;
      v78 = v15;
      if (!(v28 >> 6))
      {
        sub_25AF181DC(v22, v13, v21, v14, v15);
        sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
        if (v15 <= 0x3F && v24 == v22)
        {
          goto LABEL_77;
        }

        goto LABEL_58;
      }

      if (v28 >> 6 == 1)
      {
        break;
      }

      if (v65 != 2)
      {
        sub_25AF181DC(v22, v13, v21, v14, v15);
        v40 = v24;
        v41 = v25;
        v42 = v26;
        v43 = v27;
        v44 = v28;
        goto LABEL_57;
      }

      v70 = v28;
      if (v28)
      {
        if ((v15 & 1) == 0 || (v24 == v22 ? (v30 = v25 == v13) : (v30 = 0), !v30 && (v63 = v26, v31 = v24, v32 = v21, v33 = sub_25B006174(), v21 = v32, v24 = v31, v26 = v63, (v33 & 1) == 0)))
        {
          sub_25AF181DC(v22, v13, v21, v14, v15);
          v40 = v24;
          v41 = v25;
          v42 = v26;
          v43 = v27;
LABEL_56:
          v44 = v70;
LABEL_57:
          sub_25AF181DC(v40, v41, v42, v43, v44);
          sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
          goto LABEL_58;
        }

        if (v26 == v21 && v27 == v14)
        {
          sub_25AF181DC(v24, v25, v21, v14, v28);
          sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
          goto LABEL_80;
        }

        v35 = v26;
        v36 = v24;
        v37 = v21;
        v38 = sub_25B006174();
        v39 = v37;
        LOBYTE(v37) = v38;
        sub_25AF181DC(v22, v13, v39, v14, v15);
        sub_25AF181DC(v36, v25, v35, v27, v70);
        sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
        if (v37)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v68 = v27;
        if (v15)
        {
LABEL_55:
          sub_25AF181DC(v22, v13, v21, v14, v15);
          v40 = v24;
          v41 = v25;
          v42 = v26;
          v43 = v68;
          goto LABEL_56;
        }

        v45 = v21;
        sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
        sub_25AF181DC(v22, v13, v45, v14, v15);
        sub_25AF181DC(v24, v25, v26, v68, v28);
        sub_25AF181DC(v22, v13, v45, v14, v15);
        sub_25AF181DC(v24, v25, v26, v68, v28);
        if (sub_25B005DE4())
        {
          v13 = v62;
          if (v25 == v62 && v26 == v71)
          {
            sub_25AF18128(v60, v62, v71, v61, v15);
            sub_25AF18128(v24, v62, v71, v68, v28);
            sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
            v48 = v60;
            v49 = v62;
            v50 = v71;
            v51 = v61;
            v52 = v15;
            goto LABEL_79;
          }

          v47 = sub_25B006174();
          v14 = v61;
          sub_25AF18128(v60, v62, v71, v61, v15);
          sub_25AF18128(v24, v25, v26, v68, v28);
          sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
          v22 = v60;
          if (v47)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v14 = v61;
          sub_25AF18128(v22, v62, v71, v61, v15);
          sub_25AF18128(v24, v25, v26, v68, v28);
          sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
          v13 = v62;
        }
      }

LABEL_58:
      v20 = (v20 + 1) & v67;
      if (((*(v69 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        v53 = v22;
        goto LABEL_85;
      }

      v16 = v66;
      v21 = v71;
    }

    v70 = v28;
    v68 = v27;
    if (v65 != 1)
    {
      goto LABEL_55;
    }

    v29 = v21;
    sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
    sub_25AF181DC(v22, v13, v29, v14, v15);
    sub_25AF181DC(v24, v25, v26, v27, v70);
    sub_25AF181DC(v22, v13, v29, v14, v15);
    sub_25AF181DC(v24, v25, v26, v27, v70);
    sub_25AF181DC(v22, v13, v29, v14, v15);
    sub_25AF181DC(v24, v25, v26, v27, v70);
    if ((sub_25B005DE4() & 1) == 0)
    {
      sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
      v14 = v61;
      v15 = v59;
      sub_25AF18128(v22, v62, v71, v61, v59);
      sub_25AF18128(v24, v25, v26, v27, v70);
      sub_25AF18128(v22, v62, v71, v61, v59);
      sub_25AF18128(v24, v25, v26, v27, v70);
      v13 = v62;
      goto LABEL_58;
    }

    v15 = v59;
    v14 = v61;
    if (v25 != v62)
    {
      sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
      v22 = v60;
      sub_25AF18128(v60, v62, v71, v61, v59);
      sub_25AF18128(v24, v25, v26, v27, v70);
      sub_25AF18128(v60, v62, v71, v61, v59);
      sub_25AF18128(v24, v25, v26, v27, v70);
      v13 = v62;
      goto LABEL_58;
    }

    if (v27)
    {
      v13 = v62;
      if (v61)
      {
        v22 = v60;
        if (v26 == v71 && v27 == v61)
        {
          sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
          sub_25AF18128(v60, v62, v71, v61, v59);
          sub_25AF18128(v24, v62, v71, v61, v70);
          sub_25AF18128(v60, v62, v71, v61, v59);
          sub_25AF18128(v24, v62, v71, v61, v70);
LABEL_77:
          v48 = v22;
          v49 = v13;
          v50 = v71;
          v51 = v14;
          goto LABEL_78;
        }

        v64 = sub_25B006174();
        sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
        sub_25AF18128(v60, v62, v71, v61, v59);
        sub_25AF18128(v24, v62, v26, v27, v70);
        sub_25AF18128(v60, v62, v71, v61, v59);
        sub_25AF18128(v24, v62, v26, v27, v70);
        if (v64)
        {
          goto LABEL_77;
        }
      }

      else
      {
        sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
        v22 = v60;
        sub_25AF18128(v60, v62, v71, 0, v59);
        sub_25AF18128(v24, v62, v26, v27, v70);
        sub_25AF18128(v60, v62, v71, 0, v59);
        sub_25AF18128(v24, v62, v26, v27, v70);
      }

      goto LABEL_58;
    }

    sub_25AF2602C(v72, &unk_27FA25590, qword_25B00A7F0);
    v13 = v62;
    sub_25AF18128(v60, v62, v71, v61, v59);
    sub_25AF18128(v24, v62, v26, 0, v70);
    if (v61)
    {
      sub_25AF18128(v60, v62, v71, v61, v59);
      sub_25AF18128(v24, v62, v26, 0, v70);
      v22 = v60;
      goto LABEL_58;
    }

    sub_25AF18128(v60, v62, v71, 0, v59);
    sub_25AF18128(v24, v62, v26, 0, v70);
    v48 = v60;
    v49 = v62;
    v50 = v71;
    v51 = 0;
LABEL_78:
    v52 = v15;
LABEL_79:
    sub_25AF18128(v48, v49, v50, v51, v52);
LABEL_80:
    v3 = v55;
    result = v56;
    a2 = v66;
    v2 = v57;
    v6 = v58;
    v7 = v54;
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AFFA8C4()
{
  swift_unknownObjectRelease();

  sub_25AF18128(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_25AFFA914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF19A24;

  return sub_25AFF6894(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t sub_25AFFA9DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_25AFFAA54(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_25AF99604(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_25AFFAB4C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(a1 + 48) + 40 * (v10 | (v9 << 6));
      LOBYTE(v10) = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v16 = v10;
      sub_25AF196CC(v15, v13);
      sub_25AF99908(v15, v13);
      sub_25AF1C414(v15);
      sub_25AF231D0(v13[0], v13[1], v13[2], v13[3], v14);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25AFFAC70(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        sub_25B006294();
        MEMORY[0x25F85E0A0](v5);
        v19 = sub_25B0062D4();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_25AFFCF6C(v40, v14, v6, v2, v50);

      MEMORY[0x25F85EC30](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 9) | (8 * v29)));
      sub_25B006294();
      v2 = v49;
      MEMORY[0x25F85E0A0](v5);
      v30 = sub_25B0062D4();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_25AFFDEB0(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_25AF18700(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_25AFFB0F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v238 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v199 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v218 = (a2 + 56);

  v11 = 0;
  v198 = v9;
  v217 = v2;
  v197 = v10;
  v196 = v5;
  while (1)
  {
LABEL_6:
    if (!v8)
    {
      v13 = v11;
      while (1)
      {
        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v12 >= v9)
        {
          v70 = v3;
          goto LABEL_175;
        }

        v8 = *(v5 + 8 * v12);
        ++v13;
        if (v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_179;
    }

    v12 = v11;
LABEL_12:
    v14 = *(v3 + 48) + 40 * (__clz(__rbit64(v8)) | (v12 << 6));
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = (v8 - 1) & v8;
    v216 = *(v14 + 16);
    v215 = *(v14 + 24);
    v18 = *(v14 + 32);
    v233 = v3;
    v234 = v5;
    v235 = v199;
    v236 = v12;
    v203 = v12;
    v237 = v17;
    sub_25B006294();
    v204 = v17;
    v212 = v18 >> 6;
    if (!(v18 >> 6))
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v16);
      goto LABEL_21;
    }

    if (v18 >> 6 != 1)
    {
      MEMORY[0x25F85E0A0](2);
      if (v18)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF181DC(v16, v15, v216, v215, v18);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF181DC(v16, v15, v216, v215, v18);
        sub_25B005DF4();
      }

      goto LABEL_20;
    }

    MEMORY[0x25F85E0A0](1);

    v19 = v16;
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v15);
    if (v215)
    {
      sub_25B0062B4();
LABEL_20:
      sub_25B005994();
      goto LABEL_21;
    }

    sub_25B0062B4();
LABEL_21:
    v20 = sub_25B0062D4();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v218[v22 >> 6]) != 0)
    {
      break;
    }

    sub_25AF18128(v16, v15, v216, v215, v18);
    v11 = v203;
    v9 = v198;
    v8 = v204;
  }

  v213 = ~v21;
  v25 = v216;
  LODWORD(v206) = v18;
  v205 = v15;
  while (1)
  {
    v26 = *(v2 + 48) + 40 * v22;
    v27 = *v26;
    v28 = *(v26 + 8);
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v31 = *(v26 + 32);
    v226[0] = *v26;
    v226[1] = v28;
    v226[2] = v30;
    v226[3] = v29;
    v227 = v31;
    v228 = v16;
    v229 = v15;
    v32 = v215;
    v230 = v25;
    v231 = v215;
    v232 = v18;
    if (!(v31 >> 6))
    {
      v210 = v24;
      v211 = v23;
      sub_25AF181DC(v16, v15, v25, v215, v18);
      sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
      if (v18 <= 0x3F && v27 == v16)
      {
        goto LABEL_83;
      }

      goto LABEL_60;
    }

    if (v31 >> 6 == 1)
    {
      break;
    }

    if (v212 != 2)
    {
      sub_25AF181DC(v16, v15, v25, v215, v18);
      v50 = v27;
      v51 = v28;
      v52 = v30;
      v53 = v29;
LABEL_55:
      v59 = v31;
      goto LABEL_56;
    }

    v214 = v29;
    if (v31)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_54;
      }

      LODWORD(v208) = v31;
      v210 = v24;
      v211 = v23;
      v39 = v27 == v16 && v28 == v15;
      if (!v39)
      {
        v40 = v30;
        v41 = v27;
        v42 = v25;
        v43 = sub_25B006174();
        v25 = v42;
        v27 = v41;
        v30 = v40;
        if ((v43 & 1) == 0)
        {
          sub_25AF181DC(v16, v15, v25, v215, v18);
          v50 = v27;
          v51 = v28;
          v52 = v40;
          v53 = v214;
          v59 = v208;
LABEL_56:
          sub_25AF181DC(v50, v51, v52, v53, v59);
LABEL_57:
          sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
          goto LABEL_60;
        }
      }

      if (v30 == v25 && v214 == v215)
      {
        sub_25AF181DC(v27, v28, v25, v215, v208);
        v71 = sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
        goto LABEL_86;
      }

      v45 = v30;
      v46 = v27;
      v47 = v25;
      v48 = sub_25B006174();
      v49 = v47;
      LOBYTE(v47) = v48;
      sub_25AF181DC(v16, v15, v49, v215, v18);
      sub_25AF181DC(v46, v28, v45, v214, v208);
      sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
      if (v47)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v18)
      {
LABEL_54:
        sub_25AF181DC(v16, v15, v25, v215, v18);
        v50 = v27;
        v51 = v28;
        v52 = v30;
        v53 = v214;
        goto LABEL_55;
      }

      v210 = v24;
      v211 = v23;
      v60 = v25;
      LODWORD(v208) = v31;
      v202 = v27;
      v207 = sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
      sub_25AF181DC(v16, v15, v60, v215, v18);
      sub_25AF181DC(v27, v28, v30, v214, v31);
      sub_25AF181DC(v16, v15, v60, v215, v18);
      v61 = v27;
      v209 = v30;
      sub_25AF181DC(v27, v28, v30, v214, v31);
      if ((sub_25B005DE4() & 1) == 0)
      {
        v15 = v205;
        v32 = v215;
        v18 = v206;
        sub_25AF18128(v16, v205, v216, v215, v206);
        sub_25AF18128(v27, v28, v209, v214, v31);
        goto LABEL_57;
      }

      v62 = v31;
      v15 = v205;
      if (v28 == v205 && v209 == v216)
      {
        sub_25AF18128(v16, v205, v216, v215, v206);
        sub_25AF18128(v61, v205, v216, v214, v31);
        sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
        v72 = v16;
        v73 = v205;
        v74 = v216;
        v75 = v215;
        v76 = v206;
        goto LABEL_85;
      }

      v64 = sub_25B006174();
      v32 = v215;
      v18 = v206;
      sub_25AF18128(v16, v205, v216, v215, v206);
      sub_25AF18128(v61, v28, v209, v214, v62);
      sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
      if (v64)
      {
        goto LABEL_83;
      }
    }

LABEL_60:
    v22 = (v22 + 1) & v213;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if ((v218[v22 >> 6] & (1 << v22)) == 0)
    {
      sub_25AF18128(v16, v15, v216, v32, v18);
      v11 = v203;
      v2 = v217;
      v3 = v197;
      v5 = v196;
      v9 = v198;
      v8 = v204;
      goto LABEL_6;
    }

    v2 = v217;
    v25 = v216;
  }

  v214 = v29;
  if (v212 != 1)
  {
    goto LABEL_54;
  }

  v209 = v22;
  v210 = v24;
  v211 = v23;
  v33 = v25;
  v207 = sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
  sub_25AF181DC(v16, v15, v33, v215, v18);
  sub_25AF181DC(v27, v28, v30, v214, v31);
  sub_25AF181DC(v16, v15, v33, v215, v18);
  sub_25AF181DC(v27, v28, v30, v214, v31);
  v34 = v33;
  v35 = v31;
  v36 = v30;
  sub_25AF181DC(v16, v15, v34, v215, v18);
  sub_25AF181DC(v27, v28, v30, v214, v35);
  if ((sub_25B005DE4() & 1) == 0)
  {
    sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
    v15 = v205;
    v32 = v215;
    v18 = v206;
    sub_25AF18128(v16, v205, v216, v215, v206);
    sub_25AF18128(v27, v28, v30, v214, v35);
    sub_25AF18128(v16, v205, v216, v215, v206);
    v54 = v27;
    v55 = v28;
    v56 = v30;
    v57 = v214;
    v58 = v35;
LABEL_59:
    sub_25AF18128(v54, v55, v56, v57, v58);
    v22 = v209;
    goto LABEL_60;
  }

  LODWORD(v208) = v35;
  v37 = v27;
  v15 = v205;
  if (v28 != v205)
  {
    sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
    v32 = v215;
    v18 = v206;
    sub_25AF18128(v16, v205, v216, v215, v206);
    sub_25AF18128(v27, v28, v36, v214, v208);
    sub_25AF18128(v16, v205, v216, v215, v206);
    v54 = v27;
    v55 = v28;
    v56 = v36;
    v57 = v214;
    v58 = v208;
    goto LABEL_59;
  }

  v18 = v206;
  v32 = v215;
  if (!v214)
  {
    sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
    sub_25AF18128(v16, v205, v216, v215, v206);
    v65 = v208;
    sub_25AF18128(v27, v205, v36, 0, v208);
    v22 = v209;
    if (!v215)
    {
      sub_25AF18128(v16, v205, v216, 0, v206);
      sub_25AF18128(v27, v205, v36, 0, v208);
      v72 = v16;
      v73 = v205;
      v74 = v216;
      v75 = 0;
      goto LABEL_84;
    }

    sub_25AF18128(v16, v205, v216, v215, v206);
    v66 = v27;
    v67 = v205;
    v68 = v36;
    v69 = 0;
    goto LABEL_74;
  }

  v22 = v209;
  if (!v215)
  {
    sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
    sub_25AF18128(v16, v205, v216, 0, v206);
    v65 = v208;
    sub_25AF18128(v27, v205, v36, v214, v208);
    sub_25AF18128(v16, v205, v216, 0, v206);
    v66 = v27;
    v67 = v205;
    v68 = v36;
    v69 = v214;
LABEL_74:
    sub_25AF18128(v66, v67, v68, v69, v65);
    goto LABEL_60;
  }

  if (v36 != v216 || v214 != v215)
  {
    v38 = sub_25B006174();
    sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
    sub_25AF18128(v16, v205, v216, v215, v206);
    sub_25AF18128(v37, v205, v36, v214, v208);
    v18 = v206;
    sub_25AF18128(v16, v205, v216, v215, v206);
    sub_25AF18128(v37, v205, v36, v214, v208);
    if (v38)
    {
      goto LABEL_83;
    }

    goto LABEL_60;
  }

  sub_25AF2602C(v226, &unk_27FA25590, qword_25B00A7F0);
  sub_25AF18128(v16, v205, v216, v215, v206);
  sub_25AF18128(v27, v205, v216, v215, v208);
  sub_25AF18128(v16, v205, v216, v215, v206);
  sub_25AF18128(v27, v205, v216, v215, v208);
LABEL_83:
  v72 = v16;
  v73 = v15;
  v74 = v216;
  v75 = v32;
LABEL_84:
  v76 = v18;
LABEL_85:
  v71 = sub_25AF18128(v72, v73, v74, v75, v76);
LABEL_86:
  v77 = v217;
  v78 = *(v217 + 32);
  v79 = v78 & 0x3F;
  v80 = (1 << v78) + 63;
  v81 = v80 >> 6;
  if (v79 > 0xD)
  {
    v188 = 8 * (v80 >> 6);

    v189 = v188;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_87;
    }

    v190 = swift_slowAlloc();
    memcpy(v190, v218, v189);
    v191 = sub_25AFFD144(v190, v81, v217, v22, &v233);

    MEMORY[0x25F85EC30](v190, -1, -1);
    v2 = v191;
  }

  else
  {
LABEL_87:
    v192[0] = v81;
    v192[1] = v192;
    MEMORY[0x28223BE20](v71);
    v83 = v192 - ((v82 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v83, v218, v82);
    v84 = *&v83[8 * v211] & ~v210;
    v194 = v83;
    *&v83[8 * v211] = v84;
    v193 = *(v77 + 16) - 1;
    v85 = v197;
    v86 = v196;
    v87 = v198;
    v88 = v204;
    v89 = v203;
    if (!v204)
    {
      goto LABEL_89;
    }

LABEL_88:
    while (2)
    {
      v90 = v89;
LABEL_93:
      v92 = *(v85 + 48) + 40 * (__clz(__rbit64(v88)) | (v90 << 6));
      v93 = *(v92 + 8);
      v202 = *v92;
      v94 = (v88 - 1) & v88;
      v209 = *(v92 + 16);
      v216 = *(v92 + 24);
      v95 = *(v92 + 32);
      v233 = v85;
      v234 = v86;
      v235 = v199;
      v236 = v90;
      v203 = v90;
      v237 = v94;
      sub_25B006294();
      v212 = v95 >> 6;
      v204 = v94;
      if (v95 >> 6)
      {
        if (v95 >> 6 == 1)
        {
          MEMORY[0x25F85E0A0](1);
          v96 = v216;

          v97 = v202;
          sub_25B005DF4();
          MEMORY[0x25F85E0A0](v93);
          if (v96)
          {
            sub_25B0062B4();
            goto LABEL_101;
          }

          sub_25B0062B4();
        }

        else
        {
          MEMORY[0x25F85E0A0](2);
          if (v95)
          {
            MEMORY[0x25F85E0A0](1);
            sub_25AF181DC(v202, v93, v209, v216, v95);
            sub_25B005994();
          }

          else
          {
            MEMORY[0x25F85E0A0](0);
            sub_25AF181DC(v202, v93, v209, v216, v95);
            sub_25B005DF4();
          }

LABEL_101:
          sub_25B005994();
        }
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v202);
      }

      v98 = sub_25B0062D4();
      v99 = -1 << *(v77 + 32);
      v100 = v98 & ~v99;
      v101 = v100 >> 6;
      v102 = 1 << v100;
      if (((1 << v100) & v218[v100 >> 6]) != 0)
      {
        v214 = ~v99;
        v103 = v216;
        v201 = v95;
        v104 = v209;
        v105 = v202;
        v200 = v93;
        while (1)
        {
          v106 = *(v77 + 48) + 40 * v100;
          v107 = *v106;
          v108 = *(v106 + 8);
          v110 = *(v106 + 16);
          v109 = *(v106 + 24);
          v111 = *(v106 + 32);
          v219[0] = *v106;
          v219[1] = v108;
          v219[2] = v110;
          v219[3] = v109;
          v220 = v111;
          v221 = v105;
          v222 = v93;
          v223 = v104;
          v224 = v103;
          v225 = v95;
          if (v111 >> 6)
          {
            if (v111 >> 6 == 1)
            {
              v215 = v109;
              v213 = v110;
              if (v212 != 1)
              {
                sub_25AF181DC(v105, v93, v104, v103, v95);
                v144 = v107;
                v145 = v108;
                v146 = v213;
                goto LABEL_136;
              }

              v206 = v100;
              v210 = v102;
              v211 = v101;
              v112 = v108;
              v113 = v105;
              v114 = v111;
              v115 = v103;
              v116 = v107;
              v205 = sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
              sub_25AF181DC(v105, v93, v104, v115, v95);
              v117 = v107;
              v118 = v213;
              v119 = v215;
              sub_25AF181DC(v117, v112, v213, v215, v114);
              sub_25AF181DC(v113, v93, v104, v115, v95);
              sub_25AF181DC(v116, v112, v118, v119, v114);
              v120 = v115;
              v121 = v118;
              sub_25AF181DC(v113, v93, v104, v120, v95);
              v207 = v112;
              LODWORD(v208) = v114;
              sub_25AF181DC(v116, v112, v118, v119, v114);
              if ((sub_25B005DE4() & 1) == 0)
              {
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                v93 = v200;
                v104 = v209;
                v149 = v216;
                v95 = v201;
                sub_25AF18128(v113, v200, v209, v216, v201);
                v150 = v116;
                v151 = v116;
                v152 = v207;
                v153 = v215;
                v154 = v208;
                sub_25AF18128(v150, v207, v121, v215, v208);
                sub_25AF18128(v113, v93, v104, v149, v95);
                sub_25AF18128(v151, v152, v121, v153, v154);
                v105 = v113;
LABEL_139:
                v100 = v206;
                goto LABEL_152;
              }

              v122 = v208;
              v93 = v200;
              v123 = v207;
              if (v207 != v200)
              {
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                v105 = v202;
                v104 = v209;
                v155 = v216;
                v95 = v201;
                sub_25AF18128(v202, v93, v209, v216, v201);
                v156 = v116;
                v157 = v116;
                v158 = v213;
                v159 = v215;
                sub_25AF18128(v157, v123, v213, v215, v122);
                sub_25AF18128(v105, v93, v104, v155, v95);
                sub_25AF18128(v156, v123, v158, v159, v122);
                goto LABEL_139;
              }

              v124 = v216;
              v95 = v201;
              v104 = v209;
              v105 = v202;
              v125 = v215;
              v100 = v206;
              if (!v215)
              {
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v105, v93, v104, v124, v95);
                v175 = v213;
                sub_25AF18128(v116, v93, v213, 0, v122);
                sub_25AF18128(v105, v93, v104, v124, v95);
                sub_25AF18128(v116, v93, v175, 0, v122);
                v102 = v210;
                if (!v124)
                {
                  v182 = v105;
                  v183 = v93;
                  v184 = v104;
                  v185 = 0;
                  goto LABEL_161;
                }

                goto LABEL_152;
              }

              if (!v216)
              {
                v176 = v215;
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v105, v93, v104, 0, v95);
                v177 = v213;
                sub_25AF18128(v116, v93, v213, v176, v122);
                sub_25AF18128(v105, v93, v104, 0, v95);
                sub_25AF18128(v116, v93, v177, v176, v122);
                goto LABEL_152;
              }

              if (v213 == v209 && v215 == v216)
              {
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v105, v93, v104, v124, v95);
                sub_25AF18128(v116, v93, v104, v124, v122);
                sub_25AF18128(v105, v93, v104, v124, v95);
                sub_25AF18128(v116, v93, v104, v124, v122);
                v102 = v210;
LABEL_160:
                v182 = v105;
                v183 = v93;
                v184 = v104;
                v185 = v216;
LABEL_161:
                sub_25AF18128(v182, v183, v184, v185, v95);
LABEL_162:
                v181 = v194[v211];
                v194[v211] = v181 & ~v102;
                v39 = (v181 & v102) == 0;
                v77 = v217;
                v85 = v197;
                v86 = v196;
                v89 = v203;
                if (v39)
                {
                  goto LABEL_164;
                }

                v87 = v198;
                v88 = v204;
                if (__OFSUB__(v193, 1))
                {
                  __break(1u);
                }

                if (v193 == 1)
                {
                  goto LABEL_180;
                }

                --v193;
                if (!v204)
                {
                  goto LABEL_89;
                }

                goto LABEL_88;
              }

              v126 = v216;
              v127 = sub_25B006174();
              sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
              sub_25AF18128(v105, v93, v104, v126, v201);
              v128 = v116;
              v129 = v116;
              v130 = v213;
              sub_25AF18128(v129, v93, v213, v125, v122);
              v131 = v126;
              v95 = v201;
              sub_25AF18128(v105, v93, v104, v131, v201);
              sub_25AF18128(v128, v93, v130, v125, v122);
              goto LABEL_146;
            }

            if (v212 != 2)
            {
              v147 = v109;
              sub_25AF181DC(v105, v93, v104, v103, v95);
              v144 = v107;
              v145 = v108;
              v146 = v110;
              v148 = v147;
              goto LABEL_137;
            }

            v215 = v109;
            if ((v111 & 1) == 0)
            {
              if (v95)
              {
                goto LABEL_135;
              }

              v210 = v102;
              v211 = v101;
              v160 = v103;
              v161 = sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
              v195 = v107;
              v208 = v161;
              sub_25AF181DC(v105, v93, v104, v160, v95);
              v162 = v107;
              v163 = v110;
              v164 = v110;
              v165 = v215;
              sub_25AF181DC(v162, v108, v164, v215, v111);
              v166 = v93;
              v167 = v104;
              v168 = v160;
              v169 = v195;
              sub_25AF181DC(v105, v166, v104, v168, v95);
              v213 = v163;
              sub_25AF181DC(v169, v108, v163, v165, v111);
              if ((sub_25B005DE4() & 1) == 0)
              {
                v174 = v200;
                v95 = v201;
                sub_25AF18128(v105, v200, v104, v216, v201);
                sub_25AF18128(v169, v108, v213, v215, v111);
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                v93 = v174;
                goto LABEL_152;
              }

              v170 = v200;
              if (v108 == v200 && v213 == v104)
              {
                v178 = v104;
                v179 = v216;
                v180 = v201;
                sub_25AF18128(v105, v200, v178, v216, v201);
                sub_25AF18128(v169, v170, v167, v215, v111);
                sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v105, v170, v167, v179, v180);
                v102 = v210;
                goto LABEL_162;
              }

              v172 = v213;
              v127 = sub_25B006174();
              v173 = v170;
              v93 = v170;
              v95 = v201;
              sub_25AF18128(v105, v173, v104, v216, v201);
              sub_25AF18128(v169, v108, v172, v215, v111);
              sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
LABEL_146:
              v102 = v210;
              if (v127)
              {
                goto LABEL_160;
              }

              goto LABEL_152;
            }

            if ((v95 & 1) == 0 || ((v211 = v101, v107 == v105) ? (v132 = v108 == v93) : (v132 = 0), (v210 = v102, !v132) && (v133 = v107, v134 = v103, v135 = sub_25B006174(), v103 = v134, v107 = v133, v102 = v210, (v135 & 1) == 0)))
            {
LABEL_135:
              sub_25AF181DC(v105, v93, v104, v103, v95);
              v144 = v107;
              v145 = v108;
              v146 = v110;
LABEL_136:
              v148 = v215;
LABEL_137:
              sub_25AF181DC(v144, v145, v146, v148, v111);
              sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
              goto LABEL_152;
            }

            v136 = v110;
            v39 = v110 == v104;
            v137 = v215;
            if (v39 && v215 == v103)
            {
              sub_25AF181DC(v107, v108, v104, v103, v111);
              sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
              goto LABEL_162;
            }

            v213 = v136;
            v139 = v107;
            v140 = v103;
            v141 = sub_25B006174();
            v142 = v140;
            LOBYTE(v140) = v141;
            sub_25AF181DC(v105, v93, v104, v142, v95);
            v143 = v139;
            v102 = v210;
            sub_25AF181DC(v143, v108, v213, v137, v111);
            sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
            if (v140)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v211 = v101;
            sub_25AF181DC(v105, v93, v104, v103, v95);
            sub_25AF2602C(v219, &unk_27FA25590, qword_25B00A7F0);
            if (v95 <= 0x3F && v107 == v105)
            {
              goto LABEL_160;
            }
          }

LABEL_152:
          v100 = (v100 + 1) & v214;
          v101 = v100 >> 6;
          v102 = 1 << v100;
          if ((v218[v100 >> 6] & (1 << v100)) == 0)
          {
            sub_25AF18128(v105, v93, v104, v216, v95);
            v89 = v203;
            v77 = v217;
            v85 = v197;
            v86 = v196;
            goto LABEL_164;
          }

          v77 = v217;
          v103 = v216;
        }
      }

      sub_25AF18128(v202, v93, v209, v216, v95);
      v89 = v203;
LABEL_164:
      v87 = v198;
      v88 = v204;
      if (v204)
      {
        continue;
      }

      break;
    }

LABEL_89:
    v91 = v89;
    while (1)
    {
      v90 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v90 >= v87)
      {
        if (v87 <= v89 + 1)
        {
          v186 = v89 + 1;
        }

        else
        {
          v186 = v87;
        }

        v233 = v85;
        v234 = v86;
        v235 = v199;
        v236 = v186 - 1;
        v237 = 0;
        v2 = sub_25AFFE0B8(v194, v192[0], v193, v77);
        goto LABEL_174;
      }

      v88 = *(v86 + 8 * v90);
      ++v91;
      if (v88)
      {
        goto LABEL_93;
      }
    }

LABEL_179:
    __break(1u);
LABEL_180:

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_174:
  v70 = v233;
LABEL_175:
  sub_25AF18700(v70);
  return v2;
}

uint64_t sub_25AFFCF6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_25B006294();
    MEMORY[0x25F85E0A0](v17);
    result = sub_25B0062D4();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_25AFFDEB0(v7, a2, v9, a3);
}

char *sub_25AFFD144(char *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v93 = result;
  *&result[(a4 >> 3) & 0x1FFFFFFFFFFFFFF8] &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v105 = a3 + 56;
LABEL_2:
  v92 = v7;
LABEL_4:
  while (2)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (v9)
    {
      v10 = v5[3];
LABEL_10:
      v13 = *(*v5 + 48) + 40 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = *(v13 + 32);
      v123 = v18;
      v5[3] = v10;
      v5[4] = (v9 - 1) & v9;
      sub_25B006294();
      v98 = v16;
      v101 = v18 >> 6;
      if (v18 >> 6)
      {
        if (v18 >> 6 == 1)
        {
          MEMORY[0x25F85E0A0](1);

          v19 = v14;
          sub_25B005DF4();
          MEMORY[0x25F85E0A0](v15);
          if (!v16)
          {
            sub_25B0062B4();
            goto LABEL_19;
          }

          sub_25B0062B4();
        }

        else
        {
          MEMORY[0x25F85E0A0](2);
          v20 = v123;
          if (v123)
          {
            MEMORY[0x25F85E0A0](1);
            sub_25AF181DC(v14, v15, v17, v98, v20);
            sub_25B005994();
            v16 = v98;
          }

          else
          {
            MEMORY[0x25F85E0A0](0);
            v21 = v20;
            v16 = v98;
            sub_25AF181DC(v14, v15, v17, v98, v21);
            sub_25B005DF4();
          }
        }

        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v14);
      }

LABEL_19:
      v22 = sub_25B0062D4();
      v23 = -1 << *(a3 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      v26 = 1 << v24;
      if (((1 << v24) & *(v105 + 8 * (v24 >> 6))) == 0)
      {
        result = sub_25AF18128(v14, v15, v17, v16, v123);
        continue;
      }

      v104 = ~v23;
      v27 = v123;
      v28 = v14;
      v29 = v17;
      v30 = v15;
      v31 = v16;
      v114 = v14;
      v95 = v17;
      v96 = v15;
      while (1)
      {
        v32 = *(a3 + 48) + 40 * v24;
        v33 = *v32;
        v34 = *(v32 + 8);
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        v37 = *(v32 + 32);
        v115[0] = *v32;
        v115[1] = v34;
        v115[2] = v36;
        v115[3] = v35;
        v116 = v37;
        v117 = v28;
        v118 = v30;
        v119 = v29;
        v120 = v31;
        v121 = v27;
        if (v37 >> 6)
        {
          if (v37 >> 6 == 1)
          {
            v122 = v37;
            v109 = v36;
            v111 = v35;
            v106 = v33;
            if (v101 != 1)
            {
              v43 = v30;
              v45 = v29;
              v47 = v31;
              sub_25AF181DC(v28, v30, v29, v31, v27);
              v61 = v106;
              v62 = v36;
              v63 = v34;
LABEL_49:
              v64 = v111;
              goto LABEL_50;
            }

            v97 = v24;
            v99 = v26;
            v100 = v25;
            v38 = v28;
            v39 = v30;
            v40 = v31;
            v102 = v34;
            v41 = v29;
            sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
            sub_25AF181DC(v38, v39, v41, v40, v27);
            v42 = v122;
            sub_25AF181DC(v106, v102, v109, v111, v122);
            sub_25AF181DC(v38, v39, v41, v40, v27);
            sub_25AF181DC(v106, v102, v109, v111, v42);
            sub_25AF181DC(v38, v39, v41, v40, v27);
            sub_25AF181DC(v106, v102, v109, v111, v42);
            if ((sub_25B005DE4() & 1) == 0)
            {
              sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
              v43 = v96;
              v47 = v98;
              v68 = v123;
              sub_25AF18128(v38, v96, v95, v98, v123);
              sub_25AF18128(v106, v102, v109, v111, v42);
              sub_25AF18128(v38, v96, v95, v98, v68);
              sub_25AF18128(v106, v102, v109, v111, v42);
              v45 = v95;
LABEL_57:
              v24 = v97;
              goto LABEL_73;
            }

            v43 = v96;
            if (v102 != v96)
            {
              sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
              v69 = v123;
              sub_25AF18128(v38, v96, v95, v98, v123);
              sub_25AF18128(v106, v102, v109, v111, v122);
              v45 = v95;
              v47 = v98;
              sub_25AF18128(v38, v96, v95, v98, v69);
              sub_25AF18128(v106, v102, v109, v111, v122);
              goto LABEL_57;
            }

            v44 = v123;
            v45 = v95;
            if (v111)
            {
              if (v98)
              {
                if (v109 == v95 && v111 == v98)
                {
                  sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                  sub_25AF18128(v114, v96, v95, v98, v44);
                  v84 = v122;
                  sub_25AF18128(v106, v96, v95, v98, v122);
                  sub_25AF18128(v114, v96, v95, v98, v44);
                  v47 = v98;
                  sub_25AF18128(v106, v96, v95, v98, v84);
LABEL_80:
                  v86 = v114;
                  v87 = v43;
                  v88 = v45;
                  v89 = v47;
LABEL_81:
                  v83 = v123;
LABEL_82:
                  result = sub_25AF18128(v86, v87, v88, v89, v83);
LABEL_83:
                  v5 = a5;
                  v85 = v93[v100];
                  v93[v100] = v85 & ~v99;
                  if ((v85 & v99) != 0)
                  {
                    v7 = v92 - 1;
                    if (__OFSUB__(v92, 1))
                    {
LABEL_92:
                      __break(1u);
                      return result;
                    }

                    if (v92 == 1)
                    {
                      return MEMORY[0x277D84FA0];
                    }

                    goto LABEL_2;
                  }

                  goto LABEL_4;
                }

                v103 = sub_25B006174();
                sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v114, v96, v95, v98, v44);
                v46 = v122;
                sub_25AF18128(v106, v96, v109, v111, v122);
                v47 = v98;
                sub_25AF18128(v114, v96, v95, v98, v123);
                sub_25AF18128(v106, v96, v109, v111, v46);
                if (v103)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v47 = 0;
                sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                sub_25AF18128(v38, v96, v95, 0, v44);
                v81 = v122;
                sub_25AF18128(v106, v96, v109, v111, v122);
                v45 = v95;
                sub_25AF18128(v38, v96, v95, 0, v44);
                v43 = v96;
                sub_25AF18128(v106, v96, v109, v111, v81);
              }
            }

            else
            {
              sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
              sub_25AF18128(v38, v96, v95, v98, v44);
              v80 = v122;
              sub_25AF18128(v106, v96, v109, 0, v122);
              v45 = v95;
              sub_25AF18128(v38, v96, v95, v98, v44);
              v43 = v96;
              sub_25AF18128(v106, v96, v109, 0, v80);
              v47 = v98;
              if (!v98)
              {
                v86 = v114;
                v87 = v96;
                v88 = v95;
                v89 = 0;
                goto LABEL_81;
              }
            }
          }

          else
          {
            if (v101 != 2)
            {
              v43 = v30;
              v45 = v29;
              v47 = v31;
              v66 = v27;
              v67 = v33;
              sub_25AF181DC(v28, v30, v29, v31, v66);
              v61 = v67;
              v63 = v34;
              v62 = v36;
              v64 = v35;
              v65 = v37;
              goto LABEL_52;
            }

            v122 = v37;
            if (v37)
            {
              v110 = v36;
              if ((v27 & 1) == 0)
              {
                v43 = v30;
                v45 = v29;
                v47 = v31;
                goto LABEL_59;
              }

              v99 = v26;
              v100 = v25;
              v49 = v28;
              if (v33 != v28 || v34 != v30)
              {
                v43 = v30;
                v45 = v29;
                v47 = v31;
                v51 = v33;
                v52 = sub_25B006174();
                v31 = v47;
                v30 = v43;
                v29 = v45;
                v49 = v114;
                v33 = v51;
                if ((v52 & 1) == 0)
                {
                  v28 = v114;
LABEL_59:
                  v70 = v27;
                  v71 = v33;
                  sub_25AF181DC(v28, v30, v29, v31, v70);
                  v61 = v71;
                  v63 = v34;
                  v62 = v110;
                  v64 = v35;
LABEL_50:
                  v65 = v122;
LABEL_52:
                  sub_25AF181DC(v61, v63, v62, v64, v65);
                  sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                  goto LABEL_73;
                }
              }

              if (v110 == v29 && v35 == v31)
              {
                sub_25AF181DC(v33, v34, v29, v31, v122);
                result = sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                goto LABEL_83;
              }

              v54 = v30;
              v112 = v35;
              v55 = v29;
              v56 = v31;
              v107 = v33;
              v57 = sub_25B006174();
              v58 = v27;
              v59 = v57;
              v43 = v54;
              v60 = v54;
              v45 = v55;
              v47 = v56;
              sub_25AF181DC(v49, v60, v55, v56, v58);
              sub_25AF181DC(v107, v34, v110, v112, v122);
            }

            else
            {
              v111 = v35;
              v108 = v33;
              if (v27)
              {
                v43 = v30;
                v45 = v29;
                v47 = v31;
                sub_25AF181DC(v28, v30, v29, v31, v27);
                v61 = v108;
                v63 = v34;
                v62 = v36;
                goto LABEL_49;
              }

              v99 = v26;
              v100 = v25;
              v72 = v28;
              v73 = v30;
              v74 = v29;
              v75 = v31;
              sub_25AF18BD4(0, &qword_27FA27200, 0x277D82BB8);
              sub_25AF181DC(v72, v73, v74, v75, v27);
              v76 = v122;
              sub_25AF181DC(v108, v34, v36, v111, v122);
              v77 = v73;
              v78 = v74;
              sub_25AF181DC(v114, v77, v74, v75, v27);
              sub_25AF181DC(v108, v34, v36, v111, v76);
              if ((sub_25B005DE4() & 1) == 0)
              {
                v45 = v74;
                sub_25AF18128(v114, v96, v74, v98, v123);
                sub_25AF18128(v108, v34, v36, v111, v76);
                sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                v47 = v98;
                v43 = v96;
                goto LABEL_73;
              }

              if (v34 == v96 && v36 == v74)
              {
                v82 = v123;
                sub_25AF18128(v114, v96, v74, v98, v123);
                sub_25AF18128(v108, v96, v74, v111, v122);
                sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
                v86 = v114;
                v87 = v96;
                v88 = v74;
                v89 = v98;
                v83 = v82;
                goto LABEL_82;
              }

              v59 = sub_25B006174();
              v45 = v74;
              v43 = v96;
              v47 = v98;
              sub_25AF18128(v114, v96, v78, v98, v123);
              sub_25AF18128(v108, v34, v36, v111, v122);
            }

            sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
            if (v59)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          v48 = v33;
          v99 = v26;
          v100 = v25;
          v43 = v30;
          v45 = v29;
          v47 = v31;
          sub_25AF181DC(v28, v30, v29, v31, v27);
          sub_25AF2602C(v115, &unk_27FA25590, qword_25B00A7F0);
          if (v27 <= 0x3F && v48 == v114)
          {
            goto LABEL_80;
          }
        }

LABEL_73:
        v24 = (v24 + 1) & v104;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if ((*(v105 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          result = sub_25AF18128(v114, v43, v45, v47, v123);
          v5 = a5;
          goto LABEL_4;
        }

        v27 = v123;
        v28 = v114;
        v29 = v45;
        v30 = v43;
        v31 = v47;
      }
    }

    break;
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v90 = v8 + 1;
  }

  else
  {
    v90 = (v5[2] + 64) >> 6;
  }

  v5[3] = v90 - 1;
  v5[4] = 0;

  return sub_25AFFE0B8(v93, a2, v92, a3);
}

uint64_t sub_25AFFDEB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AF8, &qword_25B0091A8);
  result = sub_25B005F04();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_25B006294();
    MEMORY[0x25F85E0A0](v16);
    result = sub_25B0062D4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25AFFE0B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA27220, &qword_25B00EEF0);
  result = sub_25B005F04();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v11 << 6));
    v31 = *(v16 + 8);
    v17 = *(v16 + 24);
    v32 = *(v16 + 16);
    v33 = *v16;
    v18 = *(v16 + 32);
    sub_25B006294();
    if (!(v18 >> 6))
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v33);
      goto LABEL_26;
    }

    if (v18 >> 6 != 1)
    {
      MEMORY[0x25F85E0A0](2);
      if (v18)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF181DC(v33, v31, v32, v17, v18);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF181DC(v33, v31, v32, v17, v18);
        sub_25B005DF4();
      }

      goto LABEL_25;
    }

    MEMORY[0x25F85E0A0](1);

    v19 = v33;
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v31);
    if (v17)
    {
      sub_25B0062B4();
LABEL_25:
      sub_25B005994();
      goto LABEL_26;
    }

    sub_25B0062B4();
LABEL_26:
    result = sub_25B0062D4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 40 * v23;
    *v28 = v33;
    *(v28 + 8) = v31;
    *(v28 + 16) = v32;
    *(v28 + 24) = v17;
    *(v28 + 32) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_42;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_25AFFE3FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AFFF0B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25AFFE468(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25AFFE468(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B006114();
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
        v5 = sub_25B005A84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25AFFE65C(v7, v8, a1, v4);
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
    return sub_25AFFE560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25AFFE560(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 32);
      v12 = *(v10 - 8);
      v13 = *(v10 + 16);
      v22[0] = *v10;
      v22[1] = v13;
      v23 = v11;
      v14 = *(v10 - 24);
      v20[0] = *(v10 - 40);
      v20[1] = v14;
      v21 = v12;
      result = sub_25AFD38C4(v22, v20);
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 += 40;
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

      v15 = *(v10 + 32);
      v16 = *v10;
      v17 = *(v10 + 16);
      v18 = *(v10 - 24);
      *v10 = *(v10 - 40);
      *(v10 + 16) = v18;
      *(v10 + 32) = *(v10 - 8);
      *(v10 - 24) = v17;
      *(v10 - 8) = v15;
      *(v10 - 40) = v16;
      v10 -= 40;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AFFE65C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *v7;
    if (!*v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25AFFEFEC(v10);
      v10 = result;
    }

    v111 = v10;
    v96 = *(v10 + 2);
    if (v96 >= 2)
    {
      while (*v6)
      {
        v97 = *&v10[16 * v96];
        v98 = *&v10[16 * v96 + 24];
        sub_25AFFECA8((*v6 + 40 * v97), (*v6 + 40 * *&v10[16 * v96 + 16]), *v6 + 40 * v98, v5);
        if (v4)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25AFFEFEC(v10);
        }

        if (v96 - 2 >= *(v10 + 2))
        {
          goto LABEL_116;
        }

        v99 = &v10[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v111 = v10;
        result = sub_25AFFEF60(v96 - 1);
        v10 = v111;
        v96 = *(v111 + 2);
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v102 = result;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v11 = *v6 + 40 * (v9 + 1);
      v12 = *(v11 + 32);
      v13 = 40 * v9;
      v5 = *v6 + 40 * v9;
      v14 = *(v5 + 32);
      v15 = *(v11 + 16);
      v108 = *v11;
      v109 = v15;
      v110 = v12;
      v16 = *(v5 + 16);
      v105 = *v5;
      v106 = v16;
      v107 = v14;
      result = sub_25AFD38C4(&v108, &v105);
      v17 = result;
      v18 = v9 + 2;
      v19 = v5 + 56;
      while (v8 != v18)
      {
        v20 = *(v19 + 56);
        v21 = *(v19 + 16);
        v5 = v19 + 40;
        v22 = *(v19 + 40);
        v108 = *(v19 + 24);
        v109 = v22;
        v110 = v20;
        v23 = *v19;
        v105 = *(v19 - 16);
        v106 = v23;
        v107 = v21;
        result = sub_25AFD38C4(&v108, &v105);
        ++v18;
        v19 = v5;
        if ((v17 & 1) != (result & 1))
        {
          v8 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        if (v8 < v9)
        {
          goto LABEL_119;
        }

        if (v9 < v8)
        {
          v24 = 40 * v8 - 40;
          v25 = v8;
          v26 = v9;
          do
          {
            if (v26 != --v25)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_125;
              }

              v27 = (v34 + v13);
              v28 = *(v34 + v13 + 32);
              v29 = (v34 + v24);
              v30 = *v27;
              v31 = v27[1];
              v32 = *(v29 + 4);
              v33 = v29[1];
              *v27 = *v29;
              v27[1] = v33;
              *(v27 + 4) = v32;
              *v29 = v30;
              v29[1] = v31;
              *(v29 + 32) = v28;
            }

            ++v26;
            v24 -= 40;
            v13 += 40;
          }

          while (v26 < v25);
        }
      }

      v7 = v102;
    }

    v35 = v6[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_118;
      }

      if (v8 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v35)
        {
          v5 = v6[1];
        }

        else
        {
          v5 = v9 + a4;
        }

        if (v5 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v5)
        {
          break;
        }
      }
    }

    v5 = v8;
    if (v8 < v9)
    {
      goto LABEL_117;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25AFCD240(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_25AFCD240((v36 > 1), v37 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v38;
    v39 = &v10[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v5;
    v40 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v103 = v5;
    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v10 + 4);
          v43 = *(v10 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_49:
          if (v45)
          {
            goto LABEL_106;
          }

          v58 = &v10[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_109;
          }

          v64 = &v10[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_113;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v68 = &v10[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_63:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v10[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_111;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_70:
        v5 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v6)
        {
          goto LABEL_124;
        }

        v79 = *&v10[16 * v5 + 32];
        v80 = *&v10[16 * v41 + 40];
        sub_25AFFECA8((*v6 + 40 * v79), (*v6 + 40 * *&v10[16 * v41 + 32]), *v6 + 40 * v80, v40);
        if (v4)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25AFFEFEC(v10);
        }

        if (v5 >= *(v10 + 2))
        {
          goto LABEL_103;
        }

        v81 = &v10[16 * v5];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        v111 = v10;
        result = sub_25AFFEF60(v41);
        v10 = v111;
        v38 = *(v111 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v10[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_104;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_105;
      }

      v53 = &v10[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_107;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_110;
      }

      if (v57 >= v49)
      {
        v75 = &v10[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_114;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v103;
    if (v103 >= v8)
    {
      goto LABEL_90;
    }
  }

  v100 = v9;
  v104 = v6;
  v82 = *v6;
  v83 = *v6 + 40 * v8;
  v84 = v9 - v8;
LABEL_81:
  v85 = v84;
  v86 = v83;
  while (1)
  {
    v87 = *(v86 + 32);
    v88 = *(v86 - 8);
    v89 = *(v86 + 16);
    v108 = *v86;
    v109 = v89;
    v110 = v87;
    v90 = *(v86 - 24);
    v105 = *(v86 - 40);
    v106 = v90;
    v107 = v88;
    result = sub_25AFD38C4(&v108, &v105);
    if ((result & 1) == 0)
    {
LABEL_80:
      ++v8;
      v83 += 40;
      --v84;
      if (v8 != v5)
      {
        goto LABEL_81;
      }

      v7 = v102;
      v6 = v104;
      v9 = v100;
      if (v5 < v100)
      {
        goto LABEL_117;
      }

      goto LABEL_30;
    }

    if (!v82)
    {
      break;
    }

    v91 = *(v86 + 32);
    v92 = *v86;
    v93 = *(v86 + 16);
    v94 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v94;
    *(v86 + 32) = *(v86 - 8);
    *(v86 - 24) = v93;
    *(v86 - 8) = v91;
    *(v86 - 40) = v92;
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_25AFFECA8(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    v24 = 40 * v11;
    if (a4 != a2 || &a2[v24] <= a4)
    {
      memmove(a4, a2, 40 * v11);
    }

    v13 = &v4[v24];
    if (v10 < 40 || v6 <= v7)
    {
      v23 = v6;
    }

    else
    {
      v46 = a3;
LABEL_22:
      v25 = 0;
      v26 = v13;
      v39 = v6 - 40;
      do
      {
        v13 = &v26[v25];
        v27 = v26[v25 - 8];
        v28 = (v46 + v25);
        v29 = (v46 + v25 - 40);
        v30 = *(v6 - 8);
        v31 = *&v26[v25 - 24];
        v43 = *&v26[v25 - 40];
        v44 = v31;
        v45 = v27;
        v32 = *(v6 - 24);
        v40 = *(v6 - 40);
        v41 = v32;
        v42 = v30;
        if (sub_25AFD38C4(&v43, &v40))
        {
          v23 = v6 - 40;
          if (v28 != v6)
          {
            v35 = *v39;
            v36 = *(v6 - 24);
            *(v28 - 1) = *(v6 - 1);
            *v29 = v35;
            *(v28 - 24) = v36;
          }

          if (v13 <= v4 || (v46 = v29, v6 -= 40, v39 <= v7))
          {
            v13 = &v26[v25];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v28 != v13)
        {
          v33 = *&v26[v25 - 40];
          v34 = *&v26[v25 - 24];
          *(v28 - 1) = *&v26[v25 - 8];
          *v29 = v33;
          *(v28 - 24) = v34;
        }

        v25 -= 40;
        v13 = &v26[v25];
      }

      while (&v26[v25] > v4);
      v23 = v6;
    }
  }

  else
  {
    v12 = 40 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 40 && v6 < a3)
    {
      while (1)
      {
        v14 = v6[32];
        v15 = v4[32];
        v16 = *(v6 + 1);
        v17 = *v4;
        v18 = *(v4 + 1);
        v43 = *v6;
        v44 = v16;
        v45 = v14;
        v40 = v17;
        v41 = v18;
        v42 = v15;
        if ((sub_25AFD38C4(&v43, &v40) & 1) == 0)
        {
          break;
        }

        v19 = v6;
        v20 = v7 == v6;
        v6 += 40;
        if (!v20)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 40;
        if (v4 >= v13 || v6 >= a3)
        {
          goto LABEL_15;
        }
      }

      v19 = v4;
      v20 = v7 == v4;
      v4 += 40;
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_12:
      v21 = *v19;
      v22 = *(v19 + 1);
      *(v7 + 4) = *(v19 + 4);
      *v7 = v21;
      *(v7 + 1) = v22;
      goto LABEL_13;
    }

LABEL_15:
    v23 = v7;
  }

LABEL_34:
  v37 = 40 * ((v13 - v4) / 40);
  if (v23 != v4 || v23 >= &v4[v37])
  {
    memmove(v23, v4, v37);
  }

  return 1;
}

uint64_t sub_25AFFEF60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25AFFEFEC(v3);
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

unint64_t *sub_25AFFF000(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_25B00033C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25AFFF0C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_25AF181DC(v17, v2, v3, v4, v9);
  sub_25AF181DC(v5, v6, v7, v8, v10);
  LOBYTE(v5) = sub_25AFD33F0(&v17, &v12);
  sub_25AF18128(v12, v13, v14, v15, v16);
  sub_25AF18128(v17, v18, v19, v20, v21);
  return v5 & 1;
}

uint64_t sub_25AFFF190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF18ADC;

  return sub_25AFF942C(a1, v4, v5, v6, v7);
}

uint64_t sub_25AFFF254()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse) = *(v0 + 24);
}

uint64_t sub_25AFFF298()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AFFF2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF19A24;

  return sub_25AFF71F0(a1, v4, v5, v7, v6);
}

void *sub_25AFFF3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_25AFFF3B4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_25AFFF3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v6 = a5 & 1;

    return sub_25AF1818C(a1, a2, a3, a4, v6);
  }

  else
  {
  }
}

void sub_25AFFF414(char a1, char a2, char a3)
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v6 = sub_25B0044C4();
  __swift_project_value_buffer(v6, qword_27FA30C28);
  v7 = sub_25B0044B4();
  v8 = sub_25B005C94();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v119[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_25AF8E7DC(0xD000000000000037, 0x800000025B01B210, v119);
    *(v9 + 12) = 1024;
    *(v9 + 14) = a3 & 1;
    _os_log_impl(&dword_25AF0B000, v7, v8, "%s allowCaching: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v9, -1, -1);
  }

  if (qword_27FA270D8)
  {

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27230, &qword_25B012E00);
  if (a1)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25B015900;
    *(v11 + 32) = 1;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    *(v11 + 72) = 2;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0;
    *(v11 + 112) = 3;
    *(v11 + 120) = 0;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0;
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 184) = 0;
    *(v11 + 192) = 6;
    *(v11 + 216) = 0;
    *(v11 + 224) = 0;
    *(v11 + 200) = 0u;
    *(v11 + 232) = 100;
    *(v11 + 256) = 0;
    *(v11 + 240) = 0u;
    *(v11 + 264) = 0;
    *(v11 + 272) = 7;
    *(v11 + 296) = 0;
    *(v11 + 280) = 0u;
    *(v11 + 304) = 0;
    *(v11 + 312) = 20;
    *(v11 + 336) = 0;
    *(v11 + 320) = 0u;
    *(v11 + 344) = 0;
    *(v11 + 352) = 4;
    *(v11 + 376) = 0;
    *(v11 + 360) = 0u;
    *(v11 + 384) = 0;
    *(v11 + 392) = 0xD000000000000016;
    *(v11 + 400) = 0x800000025B015F90;
    *(v11 + 408) = 0xD000000000000028;
    *(v11 + 416) = 0x800000025B015FB0;
    *(v11 + 424) = -127;
    *(v11 + 432) = 8;
    *(v11 + 464) = 0;
    *(v11 + 456) = 0;
    *(v11 + 440) = 0u;
    *(v11 + 472) = 25;
    *(v11 + 504) = 0;
    *(v11 + 480) = 0u;
    *(v11 + 496) = 0;
    *(v11 + 512) = 11;
    *(v11 + 544) = 0;
    *(v11 + 520) = 0u;
    *(v11 + 536) = 0;
    *(v11 + 552) = 21;
    *(v11 + 584) = 0;
    *(v11 + 560) = 0u;
    *(v11 + 576) = 0;
    *(v11 + 592) = 16;
    *(v11 + 616) = 0;
    *(v11 + 600) = 0u;
    *(v11 + 624) = 0;
    *(v11 + 632) = 18;
    *(v11 + 664) = 0;
    *(v11 + 656) = 0;
    *(v11 + 640) = 0u;
    *(v11 + 672) = 10;
    *(v11 + 704) = 0;
    *(v11 + 696) = 0;
    *(v11 + 680) = 0u;
    *(v11 + 712) = 12;
    *(v11 + 744) = 0;
    *(v11 + 736) = 0;
    *(v11 + 720) = 0u;
    *(v11 + 752) = 22;
    *(v11 + 784) = 0;
    *(v11 + 776) = 0;
    *(v11 + 760) = 0u;
    *(v11 + 792) = 13;
    *(v11 + 824) = 0;
    *(v11 + 816) = 0;
    *(v11 + 800) = 0u;
    *(v11 + 832) = 14;
    *(v11 + 864) = 0;
    *(v11 + 856) = 0;
    *(v11 + 840) = 0u;
    *(v11 + 872) = 23;
    *(v11 + 904) = 0;
    *(v11 + 896) = 0;
    *(v11 + 880) = 0u;
    *(v11 + 912) = 15;
    *(v11 + 944) = 0;
    *(v11 + 936) = 0;
    *(v11 + 920) = 0u;
    *(v11 + 952) = 19;
    *(v11 + 984) = 0;
    *(v11 + 976) = 0;
    *(v11 + 960) = 0u;
    *(v11 + 992) = 24;
    *(v11 + 1024) = 0;
    *(v11 + 1016) = 0;
    *(v11 + 1000) = 0u;
    if ((a2 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25B0158F0;
    *(v11 + 32) = 2;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    *(v11 + 72) = 3;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0;
    *(v11 + 152) = 6;
    *(v11 + 160) = 0;
    *(v11 + 168) = 0u;
    *(v11 + 184) = 0;
    *(v11 + 192) = 100;
    *(v11 + 216) = 0;
    *(v11 + 224) = 0;
    *(v11 + 200) = 0u;
    *(v11 + 232) = 7;
    *(v11 + 256) = 0;
    *(v11 + 240) = 0u;
    *(v11 + 264) = 0;
    *(v11 + 272) = 20;
    *(v11 + 296) = 0;
    *(v11 + 280) = 0u;
    *(v11 + 304) = 0;
    *(v11 + 312) = 8;
    *(v11 + 336) = 0;
    *(v11 + 320) = 0u;
    *(v11 + 344) = 0;
    *(v11 + 352) = 0xD000000000000016;
    *(v11 + 360) = 0x800000025B015F90;
    *(v11 + 368) = 0xD000000000000028;
    *(v11 + 376) = 0x800000025B015FB0;
    *(v11 + 384) = -127;
    *(v11 + 392) = 4;
    *(v11 + 424) = 0;
    *(v11 + 416) = 0;
    *(v11 + 400) = 0u;
    *(v11 + 432) = 21;
    *(v11 + 464) = 0;
    *(v11 + 440) = 0u;
    *(v11 + 456) = 0;
    *(v11 + 472) = 25;
    *(v11 + 504) = 0;
    *(v11 + 480) = 0u;
    *(v11 + 496) = 0;
    *(v11 + 512) = 11;
    *(v11 + 544) = 0;
    *(v11 + 520) = 0u;
    *(v11 + 536) = 0;
    *(v11 + 552) = 16;
    *(v11 + 576) = 0;
    *(v11 + 560) = 0u;
    *(v11 + 584) = 0;
    *(v11 + 592) = 18;
    *(v11 + 624) = 0;
    *(v11 + 616) = 0;
    *(v11 + 600) = 0u;
    *(v11 + 632) = 10;
    *(v11 + 664) = 0;
    *(v11 + 656) = 0;
    *(v11 + 640) = 0u;
    *(v11 + 672) = 12;
    *(v11 + 704) = 0;
    *(v11 + 696) = 0;
    *(v11 + 680) = 0u;
    *(v11 + 712) = 22;
    *(v11 + 744) = 0;
    *(v11 + 736) = 0;
    *(v11 + 720) = 0u;
    *(v11 + 752) = 13;
    *(v11 + 784) = 0;
    *(v11 + 776) = 0;
    *(v11 + 760) = 0u;
    *(v11 + 792) = 14;
    *(v11 + 824) = 0;
    *(v11 + 816) = 0;
    *(v11 + 800) = 0u;
    *(v11 + 832) = 23;
    *(v11 + 864) = 0;
    *(v11 + 856) = 0;
    *(v11 + 840) = 0u;
    *(v11 + 872) = 15;
    *(v11 + 904) = 0;
    *(v11 + 896) = 0;
    *(v11 + 880) = 0u;
    *(v11 + 912) = 19;
    *(v11 + 944) = 0;
    *(v11 + 936) = 0;
    *(v11 + 920) = 0u;
    *(v11 + 952) = 24;
    *(v11 + 984) = 0;
    *(v11 + 976) = 0;
    *(v11 + 960) = 0u;
    if ((a2 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_42;
  }

  v92 = v11;
  v93 = a1;
  v88 = v11 + 32;
  v13 = (v11 + 64);
  for (i = 1; ; ++i)
  {
    v16 = *(v13 - 4);
    v15 = *(v13 - 3);
    v17 = *(v13 - 2);
    v18 = *(v13 - 1);
    v19 = *v13;
    v119[0] = v16;
    v119[1] = v15;
    v119[2] = v17;
    v119[3] = v18;
    v120 = v19;
    v121 = 7;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v125 = 0;
    if (!(v19 >> 6))
    {
      break;
    }

    if (v19 >> 6 == 1)
    {

      v20 = v16;
    }

    else
    {
      sub_25AF18244(v16, v15, v17, v18, v19 & 1);
    }

    sub_25AF2602C(v119, &unk_27FA25590, qword_25B00A7F0);
    if (v12 == i)
    {
      goto LABEL_41;
    }

LABEL_21:
    v13 += 40;
  }

  sub_25AF2602C(v119, &unk_27FA25590, qword_25B00A7F0);
  if (v16 != 7)
  {
    if (v12 == i)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v81 = a2;
  v90 = a3;
  v21 = 0;
  v22 = v12 - 1;
  for (j = (v11 + 64); ; j += 40)
  {
    v25 = *(j - 4);
    v24 = *(j - 3);
    v26 = *(j - 2);
    v27 = *(j - 1);
    v28 = *j;
    v112[0] = v25;
    v112[1] = v24;
    v112[2] = v26;
    v112[3] = v27;
    v113 = v28;
    v114 = 16;
    v116 = 0;
    v117 = 0;
    v115 = 0;
    v118 = 0;
    if (!(v28 >> 6))
    {
      break;
    }

    if (v28 >> 6 == 1)
    {

      v29 = v25;
    }

    else
    {
      sub_25AF18244(v25, v24, v26, v27, v28 & 1);
    }

    sub_25AF2602C(v112, &unk_27FA25590, qword_25B00A7F0);
LABEL_30:
    if (v22 == v21)
    {
      goto LABEL_40;
    }

    ++v21;
  }

  sub_25AF2602C(v112, &unk_27FA25590, qword_25B00A7F0);
  if (v25 != 16)
  {
    goto LABEL_30;
  }

  if (i - 1 >= v21)
  {
LABEL_40:
    a3 = v90;
LABEL_41:
    a1 = v93;
LABEL_42:
    v36 = *(v11 + 16);
    v35 = *(v11 + 24);
    if (v36 >= v35 >> 1)
    {
      v11 = sub_25AFCD578((v35 > 1), v36 + 1, 1, v11);
    }

    *(v11 + 16) = v36 + 1;
    v37 = v11 + 40 * v36;
    *(v37 + 32) = 51;
    v38 = type metadata accessor for ButtonOrderModel.StewieWidgetAvailability();
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 40) = 0;
    *(v37 + 64) = 0;
    v39 = [objc_allocWithZone(v38) init];
    sub_25AFF84F0();
    LOBYTE(v37) = v40;

    v41 = *(v11 + 16);
    if (v37)
    {
      v42 = *(v11 + 24);
      v43 = v41 + 1;
      if (v41 >= v42 >> 1)
      {
        v11 = sub_25AFCD578((v42 > 1), v41 + 1, 1, v11);
      }

      *(v11 + 16) = v43;
      v44 = v11 + 40 * v41;
      *(v44 + 32) = 0xD000000000000012;
      *(v44 + 40) = 0x800000025B0176B0;
      *(v44 + 48) = 0xD000000000000022;
      *(v44 + 56) = 0x800000025B0168E0;
      *(v44 + 64) = -127;
    }

    else
    {
      v43 = *(v11 + 16);
    }

    v48 = sub_25AF9B484(v45, v46, v47);

    v49 = *(v48 + 16);

    if (v43 != v49)
    {
      v50 = sub_25B0044B4();
      v51 = sub_25B005CB4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 67109376;
        *(v52 + 4) = a1 & 1;
        *(v52 + 8) = 1024;
        *(v52 + 10) = a2 & 1;
        _os_log_impl(&dword_25AF0B000, v50, v51, "button order should not have duplicates. hasBaseband: %{BOOL}d, isTinker: %{BOOL}d", v52, 0xEu);
        MEMORY[0x25F85EC30](v52, -1, -1);
      }
    }

    if (v43)
    {
      v91 = a3;
      v119[0] = MEMORY[0x277D84F90];
      sub_25AF98A50(0, v43, 0);
      sub_25B005B34();
      v53 = v119[0];
      v54 = (v11 + 64);
      do
      {
        v94 = v43;
        v55 = *(v54 - 4);
        v56 = *(v54 - 3);
        v57 = *(v54 - 2);
        v58 = *(v54 - 1);
        v59 = *v54;
        sub_25AF181DC(v55, v56, v57, v58, *v54);
        sub_25B005B24();
        sub_25B005AE4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v119[0] = v53;
        v61 = *(v53 + 16);
        v60 = *(v53 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_25AF98A50((v60 > 1), v61 + 1, 1);
          v53 = v119[0];
        }

        v54 += 40;
        *(v53 + 16) = v61 + 1;
        v62 = v53 + 40 * v61;
        *(v62 + 32) = v55;
        *(v62 + 40) = v56;
        *(v62 + 48) = v57;
        *(v62 + 56) = v58;
        *(v62 + 64) = v59;
        v43 = v94 - 1;
      }

      while (v94 != 1);

      if ((v91 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
      if ((a3 & 1) == 0)
      {
        return;
      }
    }

    qword_27FA270D8 = v53;

    return;
  }

  sub_25B005B34();
  v89 = 0;
  for (k = (v11 + 104); ; k += 40)
  {
    v31 = *(k - 8);
    v32 = *(k - 7);
    v33 = *(k - 40);
    v82 = *(k - 6);
    v85 = *(k - 9);
    sub_25AF181DC(v85, v31, v32, v82, *(k - 40));
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v105[0] = v85;
    v105[1] = v31;
    v105[2] = v32;
    v105[3] = v82;
    v106 = v33;
    v107 = 16;
    v109 = 0;
    v110 = 0;
    v108 = 0;
    v111 = 0;
    sub_25AF2602C(v105, &unk_27FA25590, qword_25B00A7F0);

    if (v33 <= 0x3F && v85 == 16)
    {
      break;
    }

    if (v22 == v89)
    {
      a3 = v90;
      a2 = v81;
      goto LABEL_84;
    }

    ++v89;
  }

  v63 = v89;
  v11 = v89 + 1;
  if (!__OFADD__(v89, 1))
  {
    a3 = v90;
    a2 = v81;
    if (v11 == v12)
    {
      v12 = v89;
      goto LABEL_84;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
    }

    else
    {
      v83 = *(v92 + 16);
      if (v11 >= v83)
      {
LABEL_82:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v12 = *(k - 3);
          v65 = *(k - 2);
          v64 = *(k - 1);
          v66 = *k;
          v86 = *(k - 4);
          sub_25AF181DC(v86, v12, v65, v64, *k);
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v95 = v86;
          v96 = v12;
          v97 = v65;
          v98 = v64;
          v99 = v66;
          v100 = 16;
          v102 = 0;
          v103 = 0;
          v101 = 0;
          v104 = 0;
          sub_25AF2602C(&v95, &unk_27FA25590, qword_25B00A7F0);

          if (v66 <= 0x3F && v86 == 16)
          {
            a3 = v90;
            a2 = v81;
          }

          else
          {
            a3 = v90;
            a2 = v81;
            if (v11 != v89)
            {
              v63 = v83;
              if (v89 >= v83)
              {
                goto LABEL_92;
              }

              v67 = v88 + 40 * v89;
              v84 = *(v67 + 8);
              v87 = *v67;
              v79 = *(v67 + 24);
              v80 = *(v67 + 16);
              v69 = *(k - 4);
              v68 = *(k - 3);
              v70 = *(k - 2);
              v71 = *(k - 1);
              v78 = *(v67 + 32);
              v72 = *k;
              sub_25AF181DC(*v67, v84, v80, v79, v78);
              sub_25AF181DC(v69, v68, v70, v71, v72);
              sub_25AF18128(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
              *v67 = v69;
              *(v67 + 8) = v68;
              *(v67 + 16) = v70;
              *(v67 + 24) = v71;
              *(v67 + 32) = v72;
              sub_25AF18128(*(k - 4), *(k - 3), *(k - 2), *(k - 1), *k);
              *(k - 4) = v87;
              *(k - 3) = v84;
              *(k - 2) = v80;
              *(k - 1) = v79;
              *k = v78;
              a3 = v90;
              a2 = v81;
            }

            ++v89;
          }

          ++v11;
          v73 = *(v92 + 16);
          if (v11 == v73)
          {
            break;
          }

          v83 = *(v92 + 16);
          k += 40;
          if (v11 >= v73)
          {
            goto LABEL_82;
          }
        }
      }

      v12 = v89;
LABEL_84:
      v11 = v92;
      v34 = *(v92 + 16);
      v63 = v12 - v34;
      if (v12 <= v34)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          v74 = __OFADD__(v34, v63);
          v63 = v12;
          if (!v74)
          {
            v126 = v92;
            if (v12 <= *(v92 + 24) >> 1)
            {
              goto LABEL_88;
            }

            goto LABEL_96;
          }

LABEL_95:
          __break(1u);
LABEL_96:
          if (v34 > v63)
          {
            v63 = v34;
          }

          v76 = v34;
          v77 = sub_25AFCD578(1, v63, 1, v11);
          v34 = v76;
          v11 = v77;
          v126 = v77;
LABEL_88:
          sub_25AF67BD4(v12, v34, 0);
          v75 = *(v11 + 16);
          if (v75 < i)
          {
            __break(1u);
          }

          else
          {
            v126 = v11;
            if (v75 < *(v11 + 24) >> 1)
            {
LABEL_90:
              v95 = 16;
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = 0;
              sub_25AF67CA8(i, i, 1, &v95);
              a1 = v93;
              goto LABEL_42;
            }
          }

          v11 = sub_25AFCD578(1, v75 + 1, 1, v11);
          v126 = v11;
          goto LABEL_90;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  __break(1u);
}

unint64_t *sub_25B00033C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v4 = a3;
  v26 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = a3;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v4 + 48) + 40 * v14;
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    v30[0] = *v15;
    v30[1] = v17;
    v31 = v16;
    sub_25B005B34();
    sub_25AF196CC(v30, v29);
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v31 >> 6)
    {

      goto LABEL_25;
    }

    v18 = *(a4 + 16);
    swift_getKeyPath();
    v29[0] = v18;
    sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
    sub_25B004234();

    v19 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (*(v20 + 16))
    {

      v21 = sub_25AF8F064(v30);
      if ((v22 & 1) == 0)
      {

        goto LABEL_24;
      }

      v23 = *(*(v20 + 56) + 2 * v21);

      result = sub_25AF1C414(v30);
      v4 = v32;
      if (v23 != 2 && (v23 & 1) != 0)
      {
        *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v27++, 1))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {

LABEL_24:
      v4 = v32;
LABEL_25:
      result = sub_25AF1C414(v30);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      return sub_25AFFE0B8(v26, a2, v27, v4);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25B00061C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v36 = v8;
    v37 = v3;
    v35[1] = v35;
    MEMORY[0x28223BE20](v10);
    v38 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v9);
    v39 = 0;
    v40 = a2;
    v8 = 0;
    v11 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v3 = v13 & *(v5 + 56);
    v14 = (v12 + 63) >> 6;
    while (v3)
    {
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v18 = v15 | (v8 << 6);
      v19 = v5;
      v20 = *(v5 + 48);
      v41 = v18;
      v21 = v20 + 40 * v18;
      v22 = *(v21 + 32);
      v23 = *(v21 + 16);
      v43[0] = *v21;
      v43[1] = v23;
      v44 = v22;
      sub_25B005B34();
      sub_25AF196CC(v43, v42);
      v9 = sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v44 >> 6)
      {

        goto LABEL_26;
      }

      v24 = *(a2 + 16);
      swift_getKeyPath();
      v42[0] = v24;
      sub_25B000EE0(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel, &unk_25B009338);
      sub_25B004234();

      v25 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
      swift_beginAccess();
      v26 = *(v24 + v25);
      if (*(v26 + 16))
      {

        v27 = sub_25AF8F064(v43);
        if ((v28 & 1) == 0)
        {

          goto LABEL_25;
        }

        v29 = *(*(v26 + 56) + 2 * v27);

        sub_25AF1C414(v43);
        a2 = v40;
        v5 = v19;
        if (v29 != 2 && (v29 & 1) != 0)
        {
          *&v38[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

LABEL_25:
        a2 = v40;
LABEL_26:
        v5 = v19;
        sub_25AF1C414(v43);
      }
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {
        v31 = sub_25AFFE0B8(v38, v36, v39, v5);

        return v31;
      }

      v17 = *(v11 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v3 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = v5;
  v34 = swift_slowAlloc();

  v31 = sub_25AFFF000(v34, v8, v33, a2);

  MEMORY[0x25F85EC30](v34, -1, -1);

  return v31;
}

uint64_t sub_25B000A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B000AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B000B0C()
{
  v1 = (type metadata accessor for ButtonOrderModel.PersistenceWaiting(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27190, &qword_25B0159C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27198, &qword_25B0159C8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_25B004194();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B000CC8(uint64_t a1)
{
  v4 = *(type metadata accessor for ButtonOrderModel.PersistenceWaiting(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AF19A24;

  return sub_25AFF50BC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25B000DC0(uint64_t a1)
{
  v2 = type metadata accessor for ButtonOrderModel.PersistenceWaiting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B000E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AFF4B90(a1, v4, v5, v6);
}

uint64_t sub_25B000EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25B000F74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AFF91D8(a1, v4, v5, v6);
}

uint64_t sub_25B001028()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B001064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0010D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B001110()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_25B004194();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B001238(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AF19A24;

  return sub_25AFF7630(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25B00133C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271E0, &unk_25B015A08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25B004194();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_25B0014CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_25AFF7444(v2, v3);
}

void *BridgeGlanceView.body.getter@<X0>(void *a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24580, &qword_25B00B700);
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27258, &qword_25B015B28);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = sub_25B004804();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27260, &qword_25B015B30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v42 - v14);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27268, &qword_25B015B38);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27270, &qword_25B015B40);
  MEMORY[0x28223BE20](v17);
  v47 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v42 - v20;
  v21 = *v1;
  v22 = *(v1 + 16);
  v46 = *(v1 + 8);
  LOBYTE(v58) = v46;
  v50 = v22;
  *(&v58 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B68, &qword_25B0109B8);
  result = sub_25B005494();
  if (v55 == 1)
  {
    v43 = v6;
    v44 = v17;
    v52 = v4;
    v53 = v2;
    if (qword_27FA30B10)
    {
      *v15 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      v15[1] = v21;
      v24 = type metadata accessor for MonitoredScrollViewEffect(0);
      swift_retain_n();
      v25 = v21;
      sub_25B0047F4();
      v26 = v45;
      (*(v45 + 16))(v9, v12, v7);
      sub_25B005484();
      (*(v26 + 8))(v12, v7);
      v27 = v15 + *(v24 + 28);
      sub_25B0057B4();
      v55 = v28;
      v56 = v29;
      v57 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247C8, qword_25B00BBF0);
      sub_25B005484();

      v30 = v59;
      v31 = v60;
      *v27 = v58;
      v27[16] = v30;
      *(v27 + 3) = v31;
      v32 = [objc_opt_self() defaultCenter];
      if (qword_27FA23730 != -1)
      {
        swift_once();
      }

      v34 = v48;
      v33 = v49;
      sub_25B005DA4();

      v35 = swift_allocObject();
      *(v35 + 16) = v25;
      *(v35 + 24) = v46;
      *(v35 + 32) = v50;
      sub_25AF25B0C(v15, v34, &qword_27FA27260, &qword_25B015B30);
      v36 = (v34 + *(v33 + 56));
      *v36 = sub_25B001E34;
      v36[1] = v35;
      v37 = v47;
      sub_25AF25B0C(v34, v47, &qword_27FA27268, &qword_25B015B38);
      v38 = v51;
      sub_25AF25B0C(v37, v51, &qword_27FA27270, &qword_25B015B40);
      sub_25AF25FC4(v38, v43, &qword_27FA27270, &qword_25B015B40);
      swift_storeEnumTagMultiPayload();
      sub_25B001C14();
      sub_25AF0F274(&qword_27FA27290, &qword_27FA24580, &qword_25B00B700, MEMORY[0x277CDD7F8]);
      v39 = v25;

      sub_25B004C74();
      return sub_25AF2602C(v38, &qword_27FA27270, &qword_25B015B40);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v40 = v52;
    sub_25B0045F4();
    v41 = v53;
    (*(v53 + 16))(v6, v40, v2);
    swift_storeEnumTagMultiPayload();
    sub_25B001C14();
    sub_25AF0F274(&qword_27FA27290, &qword_27FA24580, &qword_25B00B700, MEMORY[0x277CDD7F8]);
    sub_25B004C74();
    return (*(v41 + 8))(v40, v2);
  }

  return result;
}

unint64_t sub_25B001C14()
{
  result = qword_27FA27278;
  if (!qword_27FA27278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA27270, &qword_25B015B40);
    v3 = sub_25AF0F274(&qword_27FA27280, &qword_27FA27268, &qword_25B015B38, MEMORY[0x277CDDB50]);
    sub_25B001CCC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA27278);
  }

  return result;
}

unint64_t sub_25B001CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA27288;
  if (!qword_27FA27288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA27288);
  }

  return result;
}

double sub_25B001D20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B68, &qword_25B0109B8);
  sub_25B0054A4();

  return result;
}

uint64_t sub_25B001DF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *static BridgeGlanceView.configuredView(buttonLayout:buttonsModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
  swift_beginAccess();
  *&a2[v6] = a1;

  sub_25B0057B4();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for GlanceScrollingModel(0);
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_ellipticButtonAttributes;
  v14 = MEMORY[0x277D84F90];
  *&v12[v13] = sub_25AF6BFE4(MEMORY[0x277D84F90]);
  *&v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_contentViewHeight] = 0;
  *&v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_scrollOffset] = 0;
  *&v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel__overscrollOffsetsFloats] = v14;
  sub_25B004264();
  v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_allowScrollingEffects] = 0;
  *&v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonsModel] = a2;
  *&v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonLayout] = a1;
  v15 = &v12[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_defaultScrollAnchor];
  *v15 = v8;
  *(v15 + 1) = v10;
  v15[16] = 0;
  v20.receiver = v12;
  v20.super_class = v11;

  v16 = a2;
  *a3 = objc_msgSendSuper2(&v20, sel_init);
  result = sub_25B005484();
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  return result;
}

double sub_25B001FE4@<D0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272E8, &qword_25B015D08);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - v3;
  v4 = sub_25B004CB4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272D8, &qword_25B015D00);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272C8, &qword_25B015CF8);
  MEMORY[0x28223BE20](v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  sub_25B005B34();
  v26 = sub_25B005B24();
  sub_25B005AE4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v31 = &type metadata for ControlCenterFlags;
  v32 = sub_25AF1935C(isCurrentExecutor, v14, v15);
  LOBYTE(v29) = 0;
  v16 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  if (v16)
  {
    sub_25B004CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272F0, &qword_25B015D10);
    sub_25AF0F274(&qword_27FA272F8, &qword_27FA272F0, &qword_25B015D10, MEMORY[0x277CE14C0]);
    sub_25B0048F4();
    v17 = sub_25AF0F274(&qword_27FA272E0, &qword_27FA272D8, &qword_25B015D00, MEMORY[0x277CDDB60]);
    v18 = v25;
    MEMORY[0x25F85CAD0](v7, v5, v17);
    (*(v2 + 16))(v9, v18, v1);
    (*(v2 + 56))(v9, 0, 1, v1);
    v29 = v5;
    v30 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25F85CAE0](v9, v1, OpaqueTypeConformance2);
    sub_25B0033C0(v9);
    (*(v2 + 8))(v18, v1);
    (*(v24 + 8))(v7, v5);
  }

  else
  {
    (*(v2 + 56))(v9, 1, 1, v1);
    v20 = sub_25AF0F274(&qword_27FA272E0, &qword_27FA272D8, &qword_25B015D00, MEMORY[0x277CDDB60]);
    v29 = v5;
    v30 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25F85CAE0](v9, v1, v21);
    sub_25B0033C0(v9);
  }

  v22 = sub_25B0032CC();
  MEMORY[0x25F85CAD0](v12, v27, v22);
  sub_25B0033C0(v12);

  return result;
}

void sub_25B0024B0(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27300, &qword_25B015D18);
  MEMORY[0x28223BE20](v37);
  v39 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27308, &qword_25B015D20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27310, &qword_25B015D28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  sub_25B005B34();
  v36 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v5;
  v14 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    v40 = v14;
    sub_25B003434();
    v15 = v14;
    sub_25B004234();

    v16 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    v17 = v15[v16];

    if (v17 != 1)
    {
      goto LABEL_8;
    }

    if (qword_27FA30B10)
    {
      v18 = qword_27FA30B10;
      sub_25AFEC930();
      v20 = v19;

      v21 = *(v20 + 16);

      if (v21 <= 0x1D)
      {
        v22 = v34;
        sub_25B0054C4();
        v23 = v22;
        v24 = v35;
        (*(v6 + 32))(v13, v23, v35);
        v25 = v24;
        v26 = 0;
LABEL_9:
        v27 = (*(v6 + 56))(v13, v26, 1, v25);
        MEMORY[0x28223BE20](v27);
        *(&v33 - 16) = v17;
        sub_25B0054C4();
        v28 = swift_allocObject();
        *(v28 + 16) = v17;
        v29 = &v4[*(v37 + 36)];
        *v29 = 0;
        *(v29 + 1) = 0;
        *(v29 + 2) = sub_25B0034A4;
        *(v29 + 3) = v28;
        sub_25AF25FC4(v13, v10, &qword_27FA27310, &qword_25B015D28);
        v30 = v39;
        sub_25AF25FC4(v4, v39, &qword_27FA27300, &qword_25B015D18);
        v31 = v38;
        sub_25AF25FC4(v10, v38, &qword_27FA27310, &qword_25B015D28);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27318, &qword_25B015D58);
        sub_25AF25FC4(v30, v31 + *(v32 + 48), &qword_27FA27300, &qword_25B015D18);
        sub_25AF2602C(v4, &qword_27FA27300, &qword_25B015D18);
        sub_25AF2602C(v13, &qword_27FA27310, &qword_25B015D28);
        sub_25AF2602C(v30, &qword_27FA27300, &qword_25B015D18);
        sub_25AF2602C(v10, &qword_27FA27310, &qword_25B015D28);

        return;
      }

LABEL_8:
      v26 = 1;
      v25 = v35;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25B0029B0(uint64_t *a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25B005464();

  *a1 = v2;
}

void sub_25B002A50(uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v3 = qword_27FA30B00;
  v4 = sub_25B005094();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
}

void sub_25B002BC4(char a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    if (qword_27FA30B10)
    {
      v2 = qword_27FA30B10;
      GlanceModel.toggleEditing()();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_25B002CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272B0, &qword_25B015CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272B8, &qword_25B015CF0);
  sub_25AF0F274(&qword_27FA272C0, &qword_27FA272B0, &qword_25B015CE8, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272C8, &qword_25B015CF8);
  sub_25B0032CC();
  swift_getOpaqueTypeConformance2();
  return sub_25B005344();
}

uint64_t sub_25B002DC8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_25B004C24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27328, &qword_25B015D60) + 44));
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280, &unk_25B012DB0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();

  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27330, &qword_25B015DC8) + 36);
  *v5 = KeyPath;
  v5[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26558, &qword_25B015DD0);
  sub_25B005484();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27338, &qword_25B015DD8);
  v7 = a2 + *(result + 36);
  *v7 = 1;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  return result;
}

void sub_25B002F48()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v0 = qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock;
    swift_beginAccess();
    v1 = *v0;
    if (*v0)
    {
      v2 = *(v0 + 8);
      v7 = 0;

      v3 = SelectAvailableControlView.init(mode:)(&v7, v6);
      sub_25B0034AC(v3, v4, v5);
      sub_25B005504();
      v1();
      sub_25AFA0BC4(v1, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25B00306C()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v0 = qword_27FA30B10;
    GlanceModel.toggleEditing()();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25B003160()
{
  result = qword_27FA27298;
  if (!qword_27FA27298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272A0, &qword_25B015BF8);
    sub_25B001C14();
    sub_25AF0F274(&qword_27FA27290, &qword_27FA24580, &qword_25B00B700, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA27298);
  }

  return result;
}

unint64_t sub_25B00321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA272A8;
  if (!qword_27FA272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA272A8);
  }

  return result;
}

unint64_t sub_25B0032CC()
{
  result = qword_27FA272D0;
  if (!qword_27FA272D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272C8, &qword_25B015CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272D8, &qword_25B015D00);
    sub_25AF0F274(&qword_27FA272E0, &qword_27FA272D8, &qword_25B015D00, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA272D0);
  }

  return result;
}

uint64_t sub_25B0033C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA272C8, &qword_25B015CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B003434()
{
  result = qword_27FA25250;
  if (!qword_27FA25250)
  {
    type metadata accessor for GlanceModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25250);
  }

  return result;
}

unint64_t sub_25B0034AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA27320;
  if (!qword_27FA27320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA27320);
  }

  return result;
}

uint64_t sub_25B003510()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272B0, &qword_25B015CE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272B8, &qword_25B015CF0);
  sub_25AF0F274(&qword_27FA272C0, &qword_27FA272B0, &qword_25B015CE8, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA272C8, &qword_25B015CF8);
  sub_25B0032CC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25B00360C()
{
  result = qword_27FA27340;
  if (!qword_27FA27340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA27338, &qword_25B015DD8);
    v3 = sub_25AF0F274(&qword_27FA27348, &unk_27FA27350, &unk_25B015DE0, MEMORY[0x277CE1198]);
    sub_25AFC5110(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA27340);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27FA30AE0 == -1)
  {
    if (qword_27FA30AE8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27FA30AE8)
    {
      return _availability_version_check();
    }
  }

  if (qword_27FA30AD8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27FA30ACC > a3)
      {
        return 1;
      }

      if (dword_27FA30ACC >= a3)
      {
        return dword_27FA30AD0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27FA30AE8;
  if (qword_27FA30AE8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27FA30AE8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x25F85E480](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27FA30ACC, &dword_27FA30AD0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}