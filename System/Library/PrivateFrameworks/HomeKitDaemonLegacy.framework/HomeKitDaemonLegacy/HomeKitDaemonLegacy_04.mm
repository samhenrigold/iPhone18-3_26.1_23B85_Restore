uint64_t sub_253268470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2532684C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_253268528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
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

uint64_t sub_2532685C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25326860C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_253268684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A08, &qword_253D4A888);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

unint64_t sub_253268700()
{
  result = qword_27F5A3A10;
  if (!qword_27F5A3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A10);
  }

  return result;
}

unint64_t sub_253268758()
{
  result = qword_27F5A3A18;
  if (!qword_27F5A3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A18);
  }

  return result;
}

unint64_t sub_253268830()
{
  result = qword_27F5A3A20;
  if (!qword_27F5A3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A20);
  }

  return result;
}

uint64_t sub_253268884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_253CD0738();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253268958, 0, 0);
}

uint64_t sub_253268958()
{
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD0768();
  __swift_project_value_buffer(v1, qword_281532BF8);
  sub_253CD0728();
  v2 = sub_253CD0758();
  v3 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v2, v3, v5, "SetPersonalContentSettingIntent.perform.signpost", "", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);

  (*(v9 + 16))(v6, v7, v8);
  sub_253CD07A8();
  swift_allocObject();
  *(v0 + 136) = sub_253CD0798();
  (*(v9 + 8))(v7, v8);
  sub_253CCFC98();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  *(v0 + 144) = v11;
  sub_253CCFC98();
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  *(v0 + 152) = v13;
  sub_253CCFC98();
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  *(v0 + 160) = v15;
  sub_253CCFC98();
  v16 = *(v0 + 184);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_253268BC8;

  return sub_253269E44(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_253268BC8(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_253268DE0;
  }

  else
  {

    *(v4 + 186) = a1 & 1;
    v5 = sub_253268D10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253268D10()
{
  v1 = *(v0 + 136);
  *(v0 + 185) = *(v0 + 186);
  sub_25326B9E8();
  sub_253CCFC88();
  sub_253268E9C("SetPersonalContentSettingIntent.perform.signpost", 48, 2, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253268DE0()
{
  v1 = *(v0 + 136);

  sub_253268E9C("SetPersonalContentSettingIntent.perform.signpost", 48, 2, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253268E9C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_253CD0778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v13 = sub_253CD0768();
  __swift_project_value_buffer(v13, qword_281532BF8);
  v14 = sub_253CD0758();
  sub_253CD0788();
  v19 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x259C040E0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2532691B0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_253268884(a1, v4, v5, v7, v6);
}

uint64_t sub_253269270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25326B3C4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_25326929C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A38, &qword_253D4AA58);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253269314(uint64_t a1)
{
  v2 = sub_253268830();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_253269350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_253269398(uint64_t result, int a2, int a3)
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

unint64_t sub_2532693E8()
{
  result = qword_27F5A3A28;
  if (!qword_27F5A3A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3A30, &qword_253D4AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A28);
  }

  return result;
}

void *sub_25326944C(void *a1, void *a2, int a3)
{
  v94 = a3;
  v93 = a1;
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v86 - v10;
  v12 = sub_253CCFF58();
  v95 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 assistantAccessControl];
  if (v15)
  {
    v16 = v15;
    v87 = a2;
    v89 = v11;
    v90 = v3;
    v91 = v6;
    v92 = v5;
    v17 = sub_253CD0968();
    v19 = v18;
    v88 = v16;
    v20 = encodeRootObject();
    v21 = sub_253CCFE78();
    v23 = v22;

    v99 = MEMORY[0x277CC9318];
    *&v98 = v21;
    *(&v98 + 1) = v23;
    sub_2531FF150(&v98, &v96);
    v24 = MEMORY[0x277D84F98];
    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v24;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    MEMORY[0x28223BE20](v25);
    v27 = (&v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_253275584(*v27, v27[1], v17, v19, v20, &v100);
    __swift_destroy_boxed_opaque_existential_0(&v96);

    v29 = v100;
    v30 = sub_253CD0968();
    v32 = v31;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
    v99 = v33;
    *&v98 = MEMORY[0x277D84F90];
    sub_2531FF150(&v98, &v96);
    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v29;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    MEMORY[0x28223BE20](v34);
    v36 = v12;
    v37 = (&v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    sub_25327576C(*v37, v30, v32, v20, &v100);
    __swift_destroy_boxed_opaque_existential_0(&v96);

    v39 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_253D48DA0;
    v41 = [v93 uuid];
    sub_253CCFF38();

    v42 = sub_253CCFF08();
    v44 = v43;
    v46 = v95 + 8;
    v45 = *(v95 + 8);
    v93 = v36;
    v45(v14, v36);
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v95 = v46;
    v53 = sub_253CD0968();
    v55 = v54;
    v99 = v33;
    *&v98 = v40;
    sub_2531FF150(&v98, &v96);
    LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v39;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    MEMORY[0x28223BE20](v56);
    v58 = (&v86 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    sub_25327576C(*v58, v53, v55, v33, &v100);
    __swift_destroy_boxed_opaque_existential_0(&v96);

    v60 = v100;
    v61 = v87;
    v62 = sub_253CD0968();
    v64 = v63;
    v65 = [v61 uuid];
    sub_253CCFF38();

    v66 = sub_253CCFF08();
    v68 = v67;
    v45(v14, v93);
    v99 = MEMORY[0x277D837D0];
    *&v98 = v66;
    *(&v98 + 1) = v68;
    sub_2531FF150(&v98, &v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v60;
    v70 = __swift_mutable_project_boxed_opaque_existential_1(&v96, v97);
    MEMORY[0x28223BE20](v70);
    v72 = (&v86 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    sub_253275194(*v72, v72[1], v62, v64, isUniquelyReferenced_nonNull_native, &v100);
    __swift_destroy_boxed_opaque_existential_0(&v96);

    a2 = v100;
    sub_253CD0968();
    sub_25326929C();
    v74 = v89;
    sub_253CD07D8();
    v75 = sub_253CD07C8();
    v76 = sub_253CD0C78();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v91;
    if (v77)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v98 = v80;
      *v79 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
      v81 = sub_253CD08E8();
      v83 = v82;

      v84 = sub_253277BA8(v81, v83, &v98);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_2531F8000, v75, v76, "Prepared the Personal content message payload: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x259C040E0](v80, -1, -1);
      MEMORY[0x259C040E0](v79, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v74, v92);
  }

  else
  {
    sub_253CD0968();
    sub_25326929C();
    sub_253CD07D8();
    v47 = a2;
    v48 = sub_253CD07C8();
    v49 = sub_253CD0C98();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *a2 = v47;
      v51 = v47;
      _os_log_impl(&dword_2531F8000, v48, v49, "Could not find assistant access control for user %@", v50, 0xCu);
      sub_253206054(a2, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](a2, -1, -1);
      MEMORY[0x259C040E0](v50, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_25326BA3C();
    swift_allocError();
    *v52 = 44;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_253269E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 25) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_253CD07E8();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  *(v7 + 144) = swift_task_alloc();
  v9 = sub_253CCFF58();
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326A004, 0, 0);
}

uint64_t sub_25326A004()
{
  v125 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  *(v0 + 200) = v2;

  v3 = [v2 homes];
  if (!v3)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v12 = sub_253CD0A58();

  v122 = v12;
  v118 = v2;
  if (v12 >> 62)
  {
LABEL_52:
    v13 = sub_253CD0ED8();
    if (v13)
    {
LABEL_4:
      v14 = 0;
      v121 = *(v0 + 160) + 8;
      while (1)
      {
        if ((v122 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C00F30](v14, v122);
        }

        else
        {
          if (v14 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v15 = *(v122 + 8 * v14 + 32);
        }

        *(v0 + 208) = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = *(v0 + 192);
        v18 = *(v0 + 152);
        v19 = *(v0 + 32);
        v20 = *(v0 + 40);
        v123 = v15;
        v21 = [v15 spiClientIdentifier];
        sub_253CCFF38();

        v22 = sub_253CCFF08();
        v24 = v23;
        v25 = *v121;
        *(v0 + 216) = *v121;
        *(v0 + 224) = v121 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v120 = v25;
        v25(v17, v18);
        if (v22 == v19 && v24 == v20)
        {
          break;
        }

        v26 = sub_253CD1118();

        if (v26)
        {
          goto LABEL_16;
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_53;
        }
      }

LABEL_16:

      v3 = [v123 users];
      if (v3)
      {
        v27 = v3;
        sub_253200644(0, &qword_27F5A3A78, off_27971A258);
        v28 = sub_253CD0A58();

        if (v28 >> 62)
        {
          v29 = sub_253CD0ED8();
          if (v29)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
LABEL_19:
            v30 = 0;
            v119 = v29;
            while (1)
            {
              if ((v28 & 0xC000000000000001) != 0)
              {
                v31 = MEMORY[0x259C00F30](v30, v28);
              }

              else
              {
                if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v31 = *(v28 + 8 * v30 + 32);
              }

              *(v0 + 232) = v31;
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_50;
              }

              v33 = *(v0 + 184);
              v34 = *(v0 + 152);
              v36 = *(v0 + 48);
              v35 = *(v0 + 56);
              v122 = v31;
              v37 = [v31 spiClientIdentifier];
              sub_253CCFF38();

              v38 = sub_253CCFF08();
              v40 = v39;
              v120(v33, v34);
              if (v38 == v36 && v40 == v35)
              {
                break;
              }

              v41 = sub_253CD1118();

              if (v41)
              {
                goto LABEL_31;
              }

              ++v30;
              if (v32 == v119)
              {
                goto LABEL_57;
              }
            }

LABEL_31:
            v42 = *(v0 + 152);
            v43 = *(v0 + 160);
            v44 = *(v0 + 144);

            sub_253CCFEF8();
            if ((*(v43 + 48))(v44, 1, v42) == 1)
            {
              sub_253206054(*(v0 + 144), &unk_27F5A2AD0, &unk_253D486A0);
LABEL_39:
              sub_253CD0968();
              sub_25326929C();
              sub_253CD07D8();

              v63 = sub_253CD07C8();
              v64 = sub_253CD0C98();

              v65 = os_log_type_enabled(v63, v64);
              v66 = *(v0 + 112);
              v68 = *(v0 + 80);
              v67 = *(v0 + 88);
              if (v65)
              {
                v70 = *(v0 + 64);
                v69 = *(v0 + 72);
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v124[0] = v72;
                *v71 = 136315138;
                *(v71 + 4) = sub_253277BA8(v70, v69, v124);
                _os_log_impl(&dword_2531F8000, v63, v64, "Could not find the accessory with %s", v71, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v72);
                MEMORY[0x259C040E0](v72, -1, -1);
                MEMORY[0x259C040E0](v71, -1, -1);
              }

              (*(v67 + 8))(v66, v68);
              sub_25326BA3C();
              swift_allocError();
              *v73 = 42;
              swift_willThrow();

              goto LABEL_60;
            }

            v45 = *(v0 + 176);
            (*(*(v0 + 160) + 32))(v45, *(v0 + 144), *(v0 + 152));
            sub_25326CF04(v45);
            *(v0 + 240) = v46;
            if (!v46)
            {
              v120(*(v0 + 176), *(v0 + 152));
              goto LABEL_39;
            }

            v47 = v46;
            objc_opt_self();
            v48 = swift_dynamicCastObjCClass();
            *(v0 + 248) = *MEMORY[0x277D0F1A8];
            sub_253CD0968();
            if (v48)
            {
              v49 = v47;
              sub_25326929C();
              sub_253CD07D8();
              v50 = v49;
              v51 = sub_253CD07C8();
              v52 = sub_253CD0C78();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = *(v0 + 25);
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                *v54 = 138412546;
                *(v54 + 4) = v48;
                *v55 = v48;
                *(v54 + 12) = 1024;
                *(v54 + 14) = v53;
                v56 = v50;
                _os_log_impl(&dword_2531F8000, v51, v52, "Going to change personal content settings for %@ to %{BOOL}d", v54, 0x12u);
                sub_253206054(v55, &qword_27F5A2AC8, &qword_253D48890);
                MEMORY[0x259C040E0](v55, -1, -1);
                MEMORY[0x259C040E0](v54, -1, -1);
              }

              v57 = *(v0 + 136);
              v59 = *(v0 + 80);
              v58 = *(v0 + 88);
              v60 = *(v0 + 25);

              v61 = *(v58 + 8);
              *(v0 + 256) = v61;
              *(v0 + 264) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v61(v57, v59);
              v62 = sub_25326944C(v48, v122, v60);
              *(v0 + 272) = v62;
              v86 = *(v0 + 168);
              v87 = v62;
              v88 = sub_253CD0968();
              v90 = v89;
              *(v0 + 280) = v89;
              v91 = [v123 messageTargetUUID];
              sub_253CCFF38();

              v92 = swift_task_alloc();
              *(v0 + 288) = v92;
              v92[2] = v88;
              v92[3] = v90;
              v92[4] = v86;
              v92[5] = v87;
              v92[6] = v123;
              v93 = swift_task_alloc();
              *(v0 + 296) = v93;
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A88, &unk_253D4AAA0);
              *v93 = v0;
              v93[1] = sub_25326AE68;
              v8 = sub_25326BA90;
              v3 = (v0 + 16);
              v7 = 0x8000000253D50E70;
              v4 = 0;
              v5 = 0;
              v6 = 0xD00000000000002ALL;
              v9 = v92;

              return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
            }

            sub_25326929C();
            sub_253CD07D8();
            v74 = v47;
            v75 = sub_253CD07C8();
            v76 = sub_253CD0C98();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *v77 = 138412290;
              *(v77 + 4) = v74;
              *v78 = v47;
              v79 = v74;
              _os_log_impl(&dword_2531F8000, v75, v76, "Cannot change personal content settings for non apple media accessory: %@", v77, 0xCu);
              sub_253206054(v78, &qword_27F5A2AC8, &qword_253D48890);
              MEMORY[0x259C040E0](v78, -1, -1);
              MEMORY[0x259C040E0](v77, -1, -1);
            }

            v80 = *(v0 + 176);
            v81 = *(v0 + 152);
            v82 = *(v0 + 120);
            v84 = *(v0 + 80);
            v83 = *(v0 + 88);

            (*(v83 + 8))(v82, v84);
            sub_25326BA3C();
            swift_allocError();
            *v85 = 45;
            swift_willThrow();

            v120(v80, v81);
            goto LABEL_62;
          }
        }

LABEL_57:

        sub_253CD0968();
        sub_25326929C();
        sub_253CD07D8();

        v105 = sub_253CD07C8();
        v106 = sub_253CD0C98();

        v107 = os_log_type_enabled(v105, v106);
        v108 = *(v0 + 104);
        v110 = *(v0 + 80);
        v109 = *(v0 + 88);
        if (v107)
        {
          v112 = *(v0 + 48);
          v111 = *(v0 + 56);
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v124[0] = v114;
          *v113 = 136315138;
          *(v113 + 4) = sub_253277BA8(v112, v111, v124);
          _os_log_impl(&dword_2531F8000, v105, v106, "Could not find the user with %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x259C040E0](v114, -1, -1);
          MEMORY[0x259C040E0](v113, -1, -1);
        }

        (*(v109 + 8))(v108, v110);
        sub_25326BA3C();
        swift_allocError();
        *v115 = 41;
        swift_willThrow();
LABEL_60:

        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_53:

  sub_253CD0968();
  sub_25326929C();
  sub_253CD07D8();

  v94 = sub_253CD07C8();
  v95 = sub_253CD0C98();

  v96 = os_log_type_enabled(v94, v95);
  v98 = *(v0 + 88);
  v97 = *(v0 + 96);
  v99 = *(v0 + 80);
  if (v96)
  {
    v101 = *(v0 + 32);
    v100 = *(v0 + 40);
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v124[0] = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_253277BA8(v101, v100, v124);
    _os_log_impl(&dword_2531F8000, v94, v95, "Could not find the home with %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x259C040E0](v103, -1, -1);
    MEMORY[0x259C040E0](v102, -1, -1);
  }

  (*(v98 + 8))(v97, v99);
  sub_25326BA3C();
  swift_allocError();
  *v104 = 40;
  swift_willThrow();
LABEL_61:

LABEL_62:

  v116 = *(v0 + 8);

  return v116(0);
}

uint64_t sub_25326AE68()
{

  return MEMORY[0x2822009F8](sub_25326AFC0, 0, 0);
}

uint64_t sub_25326AFC0()
{
  v36 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(v0 + 216))(*(v0 + 168), *(v0 + 152));
  if (v2 == 1)
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = v1;
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    swift_willThrow();
    v11 = v6;

    sub_25326BAA0(v6, 1);
    v5(v9, v10);

    v12 = *(v0 + 8);
    v13 = 0;
  }

  else
  {
    sub_253CD0968();
    sub_25326929C();
    sub_253CD07D8();

    v14 = sub_253CD07C8();
    v15 = sub_253CD0C78();
    sub_25326BAA0(v1, 0);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 240);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v33 = *(v0 + 176);
    v34 = *(v0 + 256);
    v31 = *(v0 + 128);
    v32 = *(v0 + 152);
    v29 = *(v0 + 232);
    v30 = *(v0 + 80);
    if (v16)
    {
      v27 = *(v0 + 25);
      v28 = *(v0 + 216);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = sub_253CD08E8();
      v25 = sub_253277BA8(v23, v24, &v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v27;
      _os_log_impl(&dword_2531F8000, v14, v15, "Personal content settings was updated successfully. %s with enabled: %{BOOL}d", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C040E0](v22, -1, -1);
      MEMORY[0x259C040E0](v21, -1, -1);

      sub_25326BAA0(v1, 0);
      v34(v31, v30);
      v28(v33, v32);
    }

    else
    {

      sub_25326BAA0(v1, 0);
      v34(v31, v30);
      v18(v33, v32);
    }

    v12 = *(v0 + 8);
    v13 = 1;
  }

  return v12(v13);
}

uint64_t sub_25326B3C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A40, &qword_253D4AA60);
  MEMORY[0x28223BE20](v0 - 8);
  v37 = &v32 - v1;
  v48 = sub_253CCFCC8();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A48, &qword_253D4AA68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A50, &qword_253D4AA70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A58, &qword_253D4AA78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A60, &qword_253D4AA80);
  sub_253CCFE28();
  v42 = sub_253CCFE38();
  v13 = *(v42 - 8);
  v34 = *(v13 + 56);
  v49 = v13 + 56;
  v34(v12, 0, 1, v42);
  v46 = sub_253CD0928();
  v51 = 0;
  v52 = 0;
  v14 = *(v46 - 8);
  v15 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v15;
  v15(v9, 1, 1, v46);
  v16 = sub_253CCFC78();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v41 = v17 + 56;
  v47 = v16;
  v18(v6, 1, 1, v16);
  v33 = v18;
  v40 = *MEMORY[0x277CBA308];
  v19 = *(v2 + 104);
  v39 = v2 + 104;
  v43 = v19;
  v20 = v48;
  v19(v50);
  v36 = sub_253CCFCA8();
  sub_253CCFE28();
  v21 = v42;
  v22 = v34;
  v34(v12, 0, 1, v42);
  v51 = 0;
  v52 = 0;
  v45(v9, 1, 1, v46);
  v23 = v6;
  v18(v6, 1, 1, v16);
  v24 = v40;
  v43(v50, v40, v20);
  v35 = sub_253CCFCA8();
  sub_253CCFE28();
  v22(v12, 0, 1, v21);
  v51 = 0;
  v52 = 0;
  v45(v9, 1, 1, v46);
  v25 = v33;
  v33(v23, 1, 1, v47);
  v26 = v50;
  v27 = v24;
  v28 = v48;
  v29 = v43;
  v43(v50, v27, v48);
  sub_253CCFCA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A68, &qword_253D4AA88);
  sub_253CCFE28();
  v22(v12, 0, 1, v42);
  LOBYTE(v51) = 2;
  v30 = sub_253CD0A98();
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v25(v23, 1, 1, v47);
  v29(v26, v40, v28);
  sub_253CCFCB8();
  return v36;
}

unint64_t sub_25326B9E8()
{
  result = qword_27F5A3A70;
  if (!qword_27F5A3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A70);
  }

  return result;
}

unint64_t sub_25326BA3C()
{
  result = qword_27F5A3A80;
  if (!qword_27F5A3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3A80);
  }

  return result;
}

void sub_25326BAA0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25326BAAC()
{
  v0 = sub_253CD07E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_253CD0768();
  __swift_allocate_value_buffer(v1, qword_281532BF8);
  __swift_project_value_buffer(v1, qword_281532BF8);
  sub_253CD0968();
  sub_25326C800();
  sub_253CD07D8();
  return sub_253CD0748();
}

uint64_t sub_25326BBA0@<X0>(void **a1@<X0>, char *a3@<X8>)
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = [v9 isHidden];
  if (result)
  {
    v11 = 2;
  }

  else
  {
    v12 = [v9 spiClientIdentifier];
    sub_253CCFF38();

    v13 = sub_253CCFF28();
    result = (*(v6 + 8))(v8, v5);
    v11 = v13 & 1;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_25326BCDC@<X0>(id *a1@<X0>, _BYTE *a3@<X8>)
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 uniqueIdentifier];
  sub_253CCFF38();

  v10 = sub_253CCFF28();
  result = (*(v6 + 8))(v8, v5);
  *a3 = v10 & 1;
  return result;
}

uint64_t sub_25326BDF8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    v3 = sub_253CD08D8();
  }

  v6 = a2;
  v5(a2, v3);
}

void sub_25326BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = a1;
  v32 = a6;
  v28 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - v7;
  v27 = sub_253CD0938();
  v8 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v9 = sub_253CCFF18();
  v10 = [v8 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48DA0;
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v12;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_25321856C(inited);
  swift_setDeallocating();
  sub_25326C878(inited + 32);
  sub_25321856C(MEMORY[0x277D84F90]);
  v13 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v14 = sub_253CD08B8();

  v15 = sub_253CD08B8();

  v16 = sub_253CD08B8();
  v17 = v27;
  v18 = [v13 initWithName:v27 qualityOfService:25 destination:v10 userInfo:v14 headers:v15 payload:v16];

  v20 = v29;
  v19 = v30;
  (*(v6 + 16))(v29, v31, v30);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v20, v19);
  aBlock[4] = sub_25326C8E0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25326BDF8;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);

  [v18 setResponseHandler_];
  _Block_release(v23);
  v24 = [v32 msgDispatcher];
  if (v24)
  {
    v25 = v24;
    [v24 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25326C258(void *a1, unint64_t a2)
{
  v4 = sub_253CD0738();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v11 = sub_253CD0768();
  __swift_project_value_buffer(v11, qword_281532BF8);
  sub_253CD0728();
  v12 = sub_253CD0758();
  v13 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v12, v13, v16, "dispatchMessage.toolbox.signpost", "", v15, 2u);
    a1 = v23;
    MEMORY[0x259C040E0](v15, -1, -1);
  }

  (*(v5 + 16))(v8, v10, v4);
  sub_253CD07A8();
  swift_allocObject();
  v17 = sub_253CD0798();
  (*(v5 + 8))(v10, v4);
  if (a1)
  {
    v24 = a1;
    v25 = 1;
    v18 = a1;
  }

  else
  {
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = sub_25321856C(MEMORY[0x277D84F90]);
    }

    v20 = sub_25322EDDC(v19);

    v24 = v20;
    v25 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  sub_253CD0AE8();
  sub_25326C524("dispatchMessage.toolbox.signpost", 32, 2, v17);
}

uint64_t sub_25326C524(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_253CD0778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v13 = sub_253CD0768();
  __swift_project_value_buffer(v13, qword_281532BF8);
  v14 = sub_253CD0758();
  sub_253CD0788();
  v19 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x259C040E0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25326C800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3AA0, &qword_253D4AB08);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25326C878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25326C8E0(void *a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);

  return sub_25326C258(a1, a2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25326C984(uint64_t a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 spiClientIdentifier];
  sub_253CCFF38();

  LOBYTE(v8) = sub_253CCFF28();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    goto LABEL_26;
  }

  v10 = [a2 services];
  sub_253200644(0, &qword_27F5A2B00, off_27971A228);
  v11 = sub_253CD0A58();

  MEMORY[0x28223BE20](v12);
  v49[-2] = a1;
  v13 = sub_25326DF94(sub_25326DEA4, &v49[-4], v11);

  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = (v13 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == 1)
      {
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  v17 = [a2 mediaProfile];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 uniqueIdentifier];
    sub_253CCFF38();

    LOBYTE(v19) = sub_253CCFF28();
    v9(v7, v4);
    if (v19)
    {
      goto LABEL_26;
    }
  }

  v20 = [a2 cameraProfiles];
  sub_253200644(0, &qword_27F5A3800, off_27971A038);
  sub_25323FAB8(&unk_27F5A3C40, &qword_27F5A3800, off_27971A038);
  v21 = sub_253CD0BF8();

  MEMORY[0x28223BE20](v22);
  v49[-2] = a1;
  sub_25326E160(sub_25326DF7C, &v49[-4], v21);
  v24 = v23;

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 32);
    while (v25)
    {
      v27 = *v26++;
      --v25;
      if (v27 == 1)
      {
        goto LABEL_25;
      }
    }
  }

  v28 = [a2 siriEndpointProfile];
  v29 = v49[0];
  if (v28 && (v30 = v28, v31 = [v28 uniqueIdentifier], sub_253CCFF38(), v31, LOBYTE(v31) = sub_253CCFF28(), v30, v9(v7, v29), (v31 & 1) != 0))
  {
LABEL_26:
    v47 = a2;
  }

  else
  {
    v32 = [a2 lightProfiles];
    sub_253200644(0, &qword_27F5A3808, off_27971A178);
    sub_25323FAB8(&unk_27F5A3C30, &qword_27F5A3808, off_27971A178);
    v33 = sub_253CD0BF8();

    MEMORY[0x28223BE20](v34);
    v49[-2] = a1;
    sub_25326E190(sub_25326DEC0, &v49[-4], v33);
    v36 = v35;

    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = (v36 + 32);
      while (v37)
      {
        v39 = *v38++;
        --v37;
        if (v39 == 1)
        {
          goto LABEL_25;
        }
      }
    }

    v40 = [a2 identifiersForBridgedAccessories];
    sub_25326DEDC();
    v41 = sub_253CD0BF8();

    MEMORY[0x28223BE20](v42);
    v49[-2] = a1;
    v43 = sub_25326E4A8(sub_25326DF34, &v49[-4], v41);

    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = (v43 + 32);
      while (v44)
      {
        v46 = *v45++;
        --v44;
        if (v46)
        {
          goto LABEL_25;
        }
      }
    }

    return 0;
  }

  return a2;
}

void sub_25326CF04(uint64_t a1)
{
  v149 = a1;
  v1 = sub_253CCFF58();
  v131 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v127 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v123 - v4;
  v150 = sub_253CD07E8();
  v130 = *(v150 - 8);
  v6 = MEMORY[0x28223BE20](v150);
  v128 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v123 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v123 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v123 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v123 - v17;
  v19 = [objc_opt_self() driver];
  v20 = [v19 homeManager];

  v21 = [v20 homes];
  if (v21)
  {
    sub_253200644(0, &unk_281530D20, off_27971A118);
    v22 = sub_253CD0A58();

    v24 = v22;
    v133 = v22;
    if (v22 >> 62)
    {
LABEL_49:
      v25 = sub_253CD0ED8();
      v24 = v133;
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      v124 = v16;
      v123 = v10;
      v26 = 0;
      v132 = v24 & 0xC000000000000001;
      v126 = v24 & 0xFFFFFFFFFFFFFF8;
      v125 = v24 + 32;
      v27 = *MEMORY[0x277D0F1A8];
      v148 = (v130 + 8);
      v141 = (v131 + 8);
      *&v23 = 136315394;
      v139 = v23;
      v143 = v1;
      v151 = v5;
      v129 = v25;
      v138 = v13;
      v145 = v27;
      v140 = v18;
      do
      {
        if (v132)
        {
          v28 = v26;
          v29 = MEMORY[0x259C00F30](v26, v24);
          v30 = __OFADD__(v28, 1);
          v31 = v28 + 1;
          if (v30)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v26 >= *(v126 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v32 = v26;
          v29 = *(v125 + 8 * v26);
          v30 = __OFADD__(v32, 1);
          v31 = v32 + 1;
          if (v30)
          {
            goto LABEL_48;
          }
        }

        v134 = v31;
        v135 = v29;
        v33 = [v29 accessories];
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        v10 = sub_253CD0A58();

        v34 = v10;
        if (v10 >> 62)
        {
          v35 = sub_253CD0ED8();
          v34 = v10;
          if (v35)
          {
LABEL_15:
            v1 = 0;
            v146 = v34;
            v147 = v34 & 0xC000000000000001;
            v137 = v34 & 0xFFFFFFFFFFFFFF8;
            v144 = v35;
            while (1)
            {
              if (v147)
              {
                v38 = MEMORY[0x259C00F30](v1);
              }

              else
              {
                if (v1 >= *(v137 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *(v34 + 8 * v1 + 32);
              }

              v16 = v38;
              v5 = (v1 + 1);
              if (__OFADD__(v1, 1))
              {
                break;
              }

              objc_opt_self();
              v39 = swift_dynamicCastObjCClass();
              sub_253CD0968();
              v152 = v1 + 1;
              v153 = v16;
              if (v39)
              {
                v16 = v16;
                sub_25326C800();
                sub_253CD07D8();
                v5 = v16;
                v40 = v18;
                v41 = sub_253CD07C8();
                v10 = sub_253CD0C78();

                v42 = os_log_type_enabled(v41, v10);
                v142 = v5;
                if (v42)
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v154 = v44;
                  *v43 = v139;
                  v45 = [v5 name];
                  v46 = sub_253CD0968();
                  v48 = v47;

                  v49 = sub_253277BA8(v46, v48, &v154);

                  *(v43 + 4) = v49;
                  *(v43 + 12) = 2080;
                  v50 = [v5 spiClientIdentifier];

                  sub_253CCFF38();
                  v51 = sub_253CCFF08();
                  v16 = v52;
                  (*v141)(v151, v143);
                  v53 = sub_253277BA8(v51, v16, &v154);

                  *(v43 + 14) = v53;
                  _os_log_impl(&dword_2531F8000, v41, v10, "Checking HAP accessory: %s with UUID: %s", v43, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C040E0](v44, -1, -1);
                  v54 = v43;
                  v13 = v138;
                  MEMORY[0x259C040E0](v54, -1, -1);

                  v36 = *v148;
                  v18 = v140;
                  (*v148)(v140, v150);
                }

                else
                {

                  v36 = *v148;
                  (*v148)(v40, v150);
                  v18 = v40;
                }

                v37 = sub_25326C984(v149, v39);
                if (v37)
                {
                  v86 = v37;

                  sub_253CD0968();
                  sub_25326C800();
                  v87 = v124;
                  sub_253CD07D8();
                  v88 = v86;
                  v89 = v135;
                  v90 = sub_253CD07C8();
                  v91 = sub_253CD0C78();

                  if (os_log_type_enabled(v90, v91))
                  {
                    v92 = swift_slowAlloc();
                    v93 = swift_slowAlloc();
                    v154 = v93;
                    *v92 = v139;
                    v94 = [v88 name];
                    v95 = sub_253CD0968();
                    v97 = v96;

                    v98 = sub_253277BA8(v95, v97, &v154);

                    *(v92 + 4) = v98;
                    *(v92 + 12) = 2080;
                    v99 = [v89 name];
                    v100 = sub_253CD0968();
                    v102 = v101;

                    v103 = sub_253277BA8(v100, v102, &v154);

                    *(v92 + 14) = v103;
                    _os_log_impl(&dword_2531F8000, v90, v91, "Found matching HAP accessory: %s in home: %s", v92, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x259C040E0](v93, -1, -1);
                    MEMORY[0x259C040E0](v92, -1, -1);

                    v104 = v124;
                  }

                  else
                  {

                    v104 = v87;
                  }

LABEL_44:
                  v36(v104, v150);
                  return;
                }
              }

              else
              {
                sub_25326C800();
                sub_253CD07D8();
                v10 = v16;
                v55 = sub_253CD07C8();
                v56 = v13;
                v57 = sub_253CD0C78();

                if (os_log_type_enabled(v55, v57))
                {
                  v58 = swift_slowAlloc();
                  v142 = v10;
                  v59 = v58;
                  v136 = swift_slowAlloc();
                  v154 = v136;
                  *v59 = v139;
                  v60 = [v142 name];
                  v61 = sub_253CD0968();
                  v63 = v62;

                  v64 = sub_253277BA8(v61, v63, &v154);

                  *(v59 + 4) = v64;
                  *(v59 + 12) = 2080;
                  v65 = [v142 spiClientIdentifier];
                  v16 = v151;
                  sub_253CCFF38();

                  v66 = sub_253CCFF08();
                  v68 = v67;
                  v5 = v141;
                  v69 = v143;
                  (*v141)(v16, v143);
                  v70 = sub_253277BA8(v66, v68, &v154);

                  *(v59 + 14) = v70;
                  _os_log_impl(&dword_2531F8000, v55, v57, "Checking non-HAP accessory: %s with UUID: %s", v59, 0x16u);
                  v71 = v136;
                  swift_arrayDestroy();
                  MEMORY[0x259C040E0](v71, -1, -1);
                  v72 = v59;
                  v10 = v142;
                  MEMORY[0x259C040E0](v72, -1, -1);

                  v36 = *v148;
                  v13 = v138;
                  (*v148)(v138, v150);
                }

                else
                {

                  v36 = *v148;
                  (*v148)(v56, v150);
                  v69 = v143;
                  v16 = v151;
                  v13 = v56;
                  v5 = v141;
                }

                v73 = [v10 spiClientIdentifier];
                sub_253CCFF38();

                LOBYTE(v73) = sub_253CCFF28();
                (*v5)(v16, v69);
                v18 = v140;
                if (v73)
                {

                  sub_253CD0968();
                  sub_25326C800();
                  v105 = v123;
                  sub_253CD07D8();
                  v106 = v10;
                  v107 = v135;
                  v108 = sub_253CD07C8();
                  v109 = sub_253CD0C78();

                  if (os_log_type_enabled(v108, v109))
                  {
                    v111 = swift_slowAlloc();
                    v153 = swift_slowAlloc();
                    v154 = v153;
                    *v111 = v139;
                    v112 = [v106 name];
                    v113 = sub_253CD0968();
                    v115 = v114;

                    v116 = sub_253277BA8(v113, v115, &v154);

                    *(v111 + 4) = v116;
                    *(v111 + 12) = 2080;
                    v117 = [v107 name];
                    v118 = sub_253CD0968();
                    v120 = v119;

                    v121 = sub_253277BA8(v118, v120, &v154);

                    *(v111 + 14) = v121;
                    _os_log_impl(&dword_2531F8000, v108, v109, "Found matching non-HAP accessory: %s in home: %s", v111, 0x16u);
                    v122 = v153;
                    swift_arrayDestroy();
                    MEMORY[0x259C040E0](v122, -1, -1);
                    MEMORY[0x259C040E0](v111, -1, -1);
                  }

                  else
                  {
                  }

                  v104 = v105;
                  goto LABEL_44;
                }
              }

              ++v1;
              v34 = v146;
              if (v152 == v144)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          v35 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            goto LABEL_15;
          }
        }

LABEL_6:

        v26 = v134;
        v1 = v143;
        v24 = v133;
      }

      while (v134 != v129);
    }

    sub_253CD0968();
    sub_25326C800();
    v74 = v128;
    sub_253CD07D8();
    v75 = v131;
    v76 = v127;
    (*(v131 + 16))(v127, v149, v1);
    v77 = sub_253CD07C8();
    v78 = sub_253CD0C98();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v74;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v154 = v81;
      *v80 = 136315138;
      v82 = sub_253CCFF08();
      v84 = v83;
      (*(v75 + 8))(v76, v1);
      v85 = sub_253277BA8(v82, v84, &v154);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_2531F8000, v77, v78, "Could not find any accessory with UUID: %s in any home after searching all the homes", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x259C040E0](v81, -1, -1);
      MEMORY[0x259C040E0](v80, -1, -1);

      (*(v130 + 8))(v79, v150);
    }

    else
    {

      (*(v75 + 8))(v76, v1);
      (*(v130 + 8))(v74, v150);
    }
  }

  else
  {
LABEL_51:
    __break(1u);
  }
}

unint64_t sub_25326DEDC()
{
  result = qword_281531988;
  if (!qword_281531988)
  {
    sub_253CCFF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281531988);
  }

  return result;
}

uint64_t sub_25326DF34@<X0>(_BYTE *a2@<X8>)
{
  result = sub_253CCFF28();
  *a2 = result & 1;
  return result;
}

char *sub_25326DF94(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v7 = 0;
    v17 = MEMORY[0x277D84F90];
    v16 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C00F30](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v17;
      }

      v11 = i;

      v12 = v18;
      if (v18 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_253283B3C(0, *(v17 + 2) + 1, 1, v17);
        }

        v14 = *(v17 + 2);
        v13 = *(v17 + 3);
        if (v14 >= v13 >> 1)
        {
          v17 = sub_253283B3C((v13 > 1), v14 + 1, 1, v17);
        }

        *(v17 + 2) = v14 + 1;
        v17[v14 + 32] = v12 & 1;
        a1 = v16;
      }

      ++v7;
      i = v11;
      if (v10 == v11)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_25326E1C0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_253CD0E98();
    sub_253200644(0, a4, a5);
    sub_25323FAB8(a6, a4, a5);
    sub_253CD0C28();
    v8 = v34[1];
    v12 = v34[2];
    v13 = v34[3];
    v14 = v34[4];
    v15 = v34[5];
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v32 = v8;
  v33 = MEMORY[0x277D84F90];
  while (v8 < 0)
  {
    v24 = sub_253CD0F08();
    if (!v24 || (v34[0] = v24, sub_253200644(0, a4, a5), swift_dynamicCast(), v23 = v35, v21 = v14, v22 = v15, !v35))
    {
LABEL_27:
      v8 = v32;
LABEL_28:
      sub_25320C5EC(v8);
      return;
    }

LABEL_19:
    v35 = v23;
    a1(v34, &v35);
    if (v7)
    {

      sub_25320C5EC(v32);

      return;
    }

    v25 = v34[0];
    if (LOBYTE(v34[0]) == 2)
    {
      v8 = v32;
    }

    else
    {
      v26 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_253283B3C(0, *(v33 + 2) + 1, 1, v33);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v8 = v32;
      if (v28 >= v27 >> 1)
      {
        v8 = v32;
        v26 = sub_253283B3C((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v33 = v26;
      v26[v28 + 32] = v25 & 1;
    }

    v14 = v21;
    v15 = v22;
  }

  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_25326E4A8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v28 = sub_253CCFF58();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v25 = v5 + 16;
  v27 = (v5 + 8);
  v29 = a3;

  v14 = 0;
  v24 = MEMORY[0x277D84F90];
  while (v11)
  {
    v15 = v28;
LABEL_11:
    (*(v5 + 16))(v7, *(v29 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v15);
    v26(&v30, v7);
    if (v3)
    {
      (*v27)(v7, v15);

LABEL_19:

      return v24;
    }

    v11 &= v11 - 1;
    result = (*v27)(v7, v15);
    v17 = v30;
    if (v30 != 2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_253283B3C(0, *(v24 + 2) + 1, 1, v24);
        v24 = result;
      }

      v19 = *(v24 + 2);
      v18 = *(v24 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = *(v24 + 2);
        v23 = v19 + 1;
        result = sub_253283B3C((v18 > 1), v19 + 1, 1, v24);
        v19 = v22;
        v20 = v23;
        v24 = result;
      }

      v21 = v24;
      *(v24 + 2) = v20;
      v21[v19 + 32] = v17 & 1;
    }
  }

  v15 = v28;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25326E740(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_253CCFEE8();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_253283C30(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_253283C30((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

unint64_t sub_25326E8D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v1, 0);
  v2 = v49;
  v4 = v3 + 64;
  v5 = sub_253CD0E48();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
  v42 = v3;
  v8 = 0;
  v38 = v3 + 72;
  v39 = v1;
  v40 = v3 + 64;
  v41 = v6;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v43 = v8;
    v11 = (*(v3 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v47[0] = 1701667182;
    v47[1] = 0xE400000000000000;
    v47[2] = v12;
    v47[3] = v13;
    v47[5] = MEMORY[0x277D837D0];
    v48[0] = 0x65756C6176;
    v48[1] = 0xE500000000000000;
    v48[5] = MEMORY[0x277D839F8];
    v48[2] = v14;
    v15 = sub_253CD10C8();
    swift_bridgeObjectRetain_n();

    sub_2532168A0(v47, &v44, &unk_27F5A3B60, &unk_253D4AAD0);
    v16 = v44;
    v17 = v45;
    result = sub_253217D84(v44, v45);
    if (v18)
    {
      goto LABEL_25;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v15[6] + 16 * result);
    *v19 = v16;
    v19[1] = v17;
    result = sub_2531FF150(v46, (v15[7] + 32 * result));
    v20 = v15[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v22;
    sub_2532168A0(v48, &v44, &unk_27F5A3B60, &unk_253D4AAD0);
    v23 = v44;
    v24 = v45;
    result = sub_253217D84(v44, v45);
    if (v25)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v26 = (v15[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    result = sub_2531FF150(v46, (v15[7] + 32 * result));
    v27 = v15[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
    swift_arrayDestroy();

    v49 = v2;
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_25328BFA0((v29 > 1), v30 + 1, 1);
      v2 = v49;
    }

    *(v2 + 16) = v30 + 1;
    *(v2 + 8 * v30 + 32) = v15;
    LODWORD(v6) = v41;
    v3 = v42;
    v9 = 1 << *(v42 + 32);
    if (v5 >= v9)
    {
      goto LABEL_30;
    }

    v4 = v40;
    v31 = *(v40 + 8 * v10);
    if ((v31 & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    if (v41 != *(v42 + 36))
    {
      goto LABEL_32;
    }

    v32 = v31 & (-2 << (v5 & 0x3F));
    if (v32)
    {
      v9 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v10 << 6;
      v34 = v10 + 1;
      v35 = (v38 + 8 * v10);
      while (v34 < (v9 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_25323FB84(v5, v41, 0);
          v9 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_25323FB84(v5, v41, 0);
    }

LABEL_4:
    v8 = v43 + 1;
    v5 = v9;
    if (v43 + 1 == v39)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_25326ECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v1, 0);
  v2 = v49;
  v4 = v3 + 64;
  v5 = sub_253CD0E48();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
  v42 = v3;
  v8 = 0;
  v38 = v3 + 72;
  v39 = v1;
  v40 = v3 + 64;
  v41 = v6;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v43 = v8;
    v11 = (*(v3 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v47[0] = 1701667182;
    v47[1] = 0xE400000000000000;
    v47[2] = v12;
    v47[3] = v13;
    v47[5] = MEMORY[0x277D837D0];
    v48[0] = 0x65756C6176;
    v48[5] = MEMORY[0x277D83B88];
    v48[1] = 0xE500000000000000;
    v48[2] = v14;
    v15 = sub_253CD10C8();
    swift_bridgeObjectRetain_n();

    sub_2532168A0(v47, &v44, &unk_27F5A3B60, &unk_253D4AAD0);
    v16 = v44;
    v17 = v45;
    result = sub_253217D84(v44, v45);
    if (v18)
    {
      goto LABEL_25;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v15[6] + 16 * result);
    *v19 = v16;
    v19[1] = v17;
    result = sub_2531FF150(v46, (v15[7] + 32 * result));
    v20 = v15[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v22;
    sub_2532168A0(v48, &v44, &unk_27F5A3B60, &unk_253D4AAD0);
    v23 = v44;
    v24 = v45;
    result = sub_253217D84(v44, v45);
    if (v25)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v26 = (v15[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    result = sub_2531FF150(v46, (v15[7] + 32 * result));
    v27 = v15[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
    swift_arrayDestroy();

    v49 = v2;
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_25328BFA0((v29 > 1), v30 + 1, 1);
      v2 = v49;
    }

    *(v2 + 16) = v30 + 1;
    *(v2 + 8 * v30 + 32) = v15;
    LODWORD(v6) = v41;
    v3 = v42;
    v9 = 1 << *(v42 + 32);
    if (v5 >= v9)
    {
      goto LABEL_30;
    }

    v4 = v40;
    v31 = *(v40 + 8 * v10);
    if ((v31 & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    if (v41 != *(v42 + 36))
    {
      goto LABEL_32;
    }

    v32 = v31 & (-2 << (v5 & 0x3F));
    if (v32)
    {
      v9 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v10 << 6;
      v34 = v10 + 1;
      v35 = (v38 + 8 * v10);
      while (v34 < (v9 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_25323FB84(v5, v41, 0);
          v9 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_25323FB84(v5, v41, 0);
    }

LABEL_4:
    v8 = v43 + 1;
    v5 = v9;
    if (v43 + 1 == v39)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25326F294()
{
  v1 = v0;
  v2 = [v0 legacyCountersManager];
  [v2 delegate];

  _s16CoreDataDelegateCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 24);

    swift_unknownObjectRelease();
    v5 = [v0 internalSwiftData];
    _s9SwiftDataCMa();
    v6 = swift_dynamicCastClassUnconditional();
    sub_2532074E4(v6 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    swift_retain_n();
    sub_253CD05F8();

    __swift_destroy_boxed_opaque_existential_0(v13);
    v7 = [v0 dateProvider];
    v8 = [v1 internalSwiftData];
    v9 = swift_dynamicCastClassUnconditional();
    sub_2532074E4(v9 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v4;

    v11 = v7;
    sub_253CD05F8();

    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_25326F590()
{
  sub_253CD0448();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25326F610()
{
  sub_253CD0468();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25326F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_253CCFEE8();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326F73C, 0, 0);
}

uint64_t sub_25326F73C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = [v5 startOfDayByAddingDayCount_];
  sub_253CCFEA8();

  v7 = [v5 startOfDayByAddingDayCount_];
  sub_253CCFEA8();

  sub_253CD0498();
  sub_253CD0488();
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

void sub_25326F8A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_253CD0938();
  v8 = [a1 stringForKey_];

  if (v8)
  {
    v9 = sub_253CD0968();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v11;
  v12 = sub_253CD0938();
  v13 = [a1 stringForKey_];

  if (v13)
  {
    v14 = sub_253CD0968();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  a2[2] = v14;
  a2[3] = v16;
  v17 = sub_253CD0938();
  v18 = [a1 stringForKey_];

  if (v18)
  {
    v19 = sub_253CD0968();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  a2[4] = v19;
  a2[5] = v21;
  v22 = sub_253CD0938();
  v23 = [a1 stringForKey_];

  if (v23)
  {
    v24 = sub_253CD0968();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  a2[6] = v24;
  a2[7] = v26;
  v27 = sub_253CD0938();
  v28 = [a1 stringForKey_];

  if (v28)
  {
    v29 = sub_253CD0968();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  a2[8] = v29;
  a2[9] = v31;
  v32 = sub_253CD0938();
  v33 = [a1 stringForKey_];

  if (v33)
  {
    v34 = sub_253CD0968();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  a2[10] = v34;
  a2[11] = v36;
  v37 = sub_253CD0938();
  v38 = [a1 dateForKey_];

  if (v38)
  {
    sub_253CCFEA8();

    v39 = sub_253CCFEE8();
    (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  }

  else
  {
    v40 = sub_253CCFEE8();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
  }

  v41 = _s11GroupFilterVMa(0);
  sub_25327608C(v6, a2 + *(v41 + 40));
  v42 = sub_253CD0938();
  v43 = [a1 stringForKey_];

  if (v43)
  {
    v44 = sub_253CD0968();
    v46 = v45;
  }

  else
  {

    v44 = 0;
    v46 = 0;
  }

  v47 = (a2 + *(v41 + 44));
  *v47 = v44;
  v47[1] = v46;
}

uint64_t sub_25326FD04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_253CD0548();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = v2[1];
  if (!v14)
  {
LABEL_9:
    v22 = v2[3];
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v15 = *v2;
  (*(v5 + 104))(&v42 - v12, *MEMORY[0x277D17D20], v4);
  if (!*(a1 + 16) || (v16 = sub_253217FA8(v13), (v17 & 1) == 0))
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_30;
  }

  v18 = (*(a1 + 56) + 16 * v16);
  v44 = *v18;
  v45 = v8;
  v19 = v18[1];
  v43 = *(v5 + 8);

  v43(v13, v4);
  if (v15 != v44 || v14 != v19)
  {
    v21 = sub_253CD1118();

    v8 = v45;
    if (v21)
    {
      goto LABEL_9;
    }

LABEL_30:
    v40 = 0;
    return v40 & 1;
  }

  v8 = v45;
  v22 = v2[3];
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_10:
  v23 = v2[2];
  (*(v5 + 104))(v11, *MEMORY[0x277D17D18], v4);
  if (!*(a1 + 16) || (v24 = sub_253217FA8(v11), (v25 & 1) == 0))
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_30;
  }

  v26 = (*(a1 + 56) + 16 * v24);
  v27 = v26[1];
  v44 = *v26;
  v45 = v8;
  v28 = *(v5 + 8);

  v28(v11, v4);
  if (v23 == v44 && v22 == v27)
  {

    v8 = v45;
    v31 = v2[5];
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_33:
    v40 = 1;
    return v40 & 1;
  }

  v30 = sub_253CD1118();

  v8 = v45;
  if ((v30 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v31 = v2[5];
  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_22:
  v32 = v2[4];
  (*(v5 + 104))(v8, *MEMORY[0x277D17D10], v4);
  if (!*(a1 + 16) || (v33 = sub_253217FA8(v8), (v34 & 1) == 0))
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_30;
  }

  v35 = (*(a1 + 56) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v5 + 8);

  v38(v8, v4);
  if (v32 == v37 && v31 == v36)
  {

    v40 = 1;
  }

  else
  {
    v40 = sub_253CD1118();
  }

  return v40 & 1;
}

uint64_t sub_2532700A0()
{
  v3 = MEMORY[0x277D84F90];
  v1 = objc_allocWithZone(type metadata accessor for CharacteristicReadWriteLogEventObserver());
  sub_253275BA0(v0, v1);
  MEMORY[0x259C00990]();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_253CD0A78();
  }

  sub_253CD0A88();
  return v3;
}

uint64_t sub_253270268(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v10 = a1;
  v11 = [v10 legacyCountersManager];
  v12 = [v11 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    a4(v9);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_2532705E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = _s11GroupFilterVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 legacyCountersManager];
  v10 = [v9 delegate];

  _s16CoreDataDelegateCMa();
  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = a1;
    sub_25326F8A0(v12, v8);
    sub_2532168A0(v8 + *(v6 + 40), v5, &qword_27F5A3B70, &qword_253D49578);
    v13 = sub_253CCFEE8();
    v14 = (*(*(v13 - 8) + 48))(v5, 1, v13);
    sub_253206054(v5, &qword_27F5A3B70, &qword_253D49578);
    if (v14 == 1 || !*(v8 + *(v6 + 44) + 8))
    {
      sub_253270904(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
      v18 = sub_253CD08B8();

      [v12 respondWithPayload_];
    }

    else
    {
      v15 = objc_opt_self();
      v16 = sub_253CD0938();
      v17 = [v15 hmfErrorWithCode:3 reason:v16];

      v18 = sub_253CCFE08();
      [v12 respondWithError_];
    }

    sub_253276148(v8);
  }

  else
  {
    v19 = [v1 notEnabledError];
    v22 = sub_253CCFE08();

    [a1 respondWithError_];
    v20 = v22;
  }
}

void *sub_253270904(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B78, &unk_253D4AB70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_253CCFF88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - v10;
  v12 = _s11GroupFilterVMa(0);
  sub_2532168A0(a1 + *(v12 + 40), v11, &qword_27F5A3B70, &qword_253D49578);
  v13 = sub_253CCFEE8();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_253206054(v11, &qword_27F5A3B70, &qword_253D49578);
  if (v14 != 1 && *(a1 + *(v12 + 44) + 8))
  {
    return sub_25321856C(MEMORY[0x277D84F90]);
  }

  v15 = [v55 legacyCountersManager];
  v16 = [v15 delegate];

  _s16CoreDataDelegateCMa();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    return sub_25321856C(MEMORY[0x277D84F90]);
  }

  v52 = v12;
  v53 = a1;
  v18 = *(v17 + 24);

  swift_unknownObjectRelease();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_253CCFF68();
  v20 = sub_253CCFF78();
  (*(v6 + 8))(v8, v5);
  [v19 setLocale_];

  v21 = sub_253CD0938();
  v54 = v19;
  [v19 setDateFormat_];

  sub_253CCFF98();
  v22 = sub_253CCFFB8();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v4, 1, v22) != 1)
  {
    v24 = sub_253CCFFA8();
    (*(v23 + 8))(v4, v22);
  }

  [v54 setTimeZone_];

  v51 = v18;
  v25 = sub_253CD0518();
  v26 = v25;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;

  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  while (v30)
  {
LABEL_15:
    v36 = (v33 << 9) | (8 * __clz(__rbit64(v30)));
    v37 = *(*(v26 + 48) + v36);
    v38 = *(*(v26 + 56) + v36);

    v39 = sub_2532722BC(v37, v38, v53, v55, v54);

    v40 = *(v39 + 16);
    v41 = v34[2];
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      goto LABEL_32;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v42 > v34[3] >> 1)
    {
      if (v41 <= v42)
      {
        v43 = v41 + v40;
      }

      else
      {
        v43 = v41;
      }

      result = sub_253283C30(result, v43, 1, v34);
      v34 = result;
    }

    v30 &= v30 - 1;
    if (*(v39 + 16))
    {
      if ((v34[3] >> 1) - v34[2] < v40)
      {
        goto LABEL_34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      swift_arrayInitWithCopy();

      if (v40)
      {
        v44 = v34[2];
        v45 = __OFADD__(v44, v40);
        v46 = v44 + v40;
        if (v45)
        {
          goto LABEL_35;
        }

        v34[2] = v46;
      }
    }

    else
    {

      if (v40)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v31)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48A50;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000253D510C0;
      v48 = sub_253273FEC(*(v53 + *(v52 + 44)), *(v53 + *(v52 + 44) + 8));
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      *(inited + 48) = v48;
      *(inited + 72) = v49;
      *(inited + 80) = 0x7370756F7267;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      *(inited + 96) = v34;
      v50 = sub_25321856C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
      swift_arrayDestroy();

      return v50;
    }

    v30 = *(v27 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
      goto LABEL_15;
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
  return result;
}

void sub_253270FE8(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    sub_253CD04D8();
    [a1 respondWithSuccess];
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = [v1 notEnabledError];
    v6 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271178(void *a1)
{
  v2 = v1;
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v46 = v43 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  MEMORY[0x28223BE20](v21);
  v47 = v43 - v24;
  v25 = [v2 legacyCountersManager];
  v26 = [v25 delegate];

  _s16CoreDataDelegateCMa();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = *(v27 + 24);
    v43[0] = v8;
    v43[1] = v28;

    swift_unknownObjectRelease();
    v29 = sub_253CD0938();
    v30 = a1;
    v31 = [a1 dateForKey_];

    if (v31)
    {
      sub_253CCFEA8();

      v32 = *(v5 + 56);
      v32(v23, 0, 1, v4);
    }

    else
    {
      v32 = *(v5 + 56);
      v32(v23, 1, 1, v4);
    }

    v35 = v46;
    sub_25327608C(v23, v47);
    v36 = sub_253CD0938();
    v37 = [v30 dateForKey_];

    if (v37)
    {
      sub_253CCFEA8();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v32(v18, v38, 1, v4);
    sub_25327608C(v18, v35);
    sub_2532168A0(v47, v15, &qword_27F5A3B70, &qword_253D49578);
    v39 = *(v5 + 48);
    if (v39(v15, 1, v4) == 1)
    {
      sub_253206054(v15, &qword_27F5A3B70, &qword_253D49578);
    }

    else
    {
      v40 = v44;
      (*(v5 + 32))(v44, v15, v4);
      sub_253CD0498();
      (*(v5 + 8))(v40, v4);
    }

    v41 = v45;
    sub_2532168A0(v35, v45, &qword_27F5A3B70, &qword_253D49578);
    if (v39(v41, 1, v4) == 1)
    {
      sub_253206054(v41, &qword_27F5A3B70, &qword_253D49578);
    }

    else
    {
      v42 = v43[0];
      (*(v5 + 32))(v43[0], v41, v4);
      sub_253CD0488();
      (*(v5 + 8))(v42, v4);
    }

    [v30 respondWithSuccess];

    sub_253206054(v35, &qword_27F5A3B70, &qword_253D49578);
    sub_253206054(v47, &qword_27F5A3B70, &qword_253D49578);
  }

  else
  {
    swift_unknownObjectRelease();
    v33 = [v2 notEnabledError];
    v47 = sub_253CCFE08();

    [a1 respondWithError_];
    v34 = v47;
  }
}

void sub_25327185C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = [v2 legacyCountersManager];
  v6 = [v5 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    v7 = sub_253CD0938();
    v8 = [a1 stringForKey_];

    if (v8)
    {
      v9 = sub_253CD0968();
      v11 = v10;

      a2(v9, v11);

      [a1 respondWithSuccess];

      return;
    }

    v13 = [v2 ephemeralContainNameRequiredError];
    v14 = sub_253CCFE08();

    [a1 respondWithError_];
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = [v2 notEnabledError];
    v14 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271ACC(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_253CD0938();
    v7 = [a1 stringForKey_];

    v8 = [v1 userDefaults];
    v9 = v8;
    if (v7)
    {
      [v8 setObject:v7 forKey:@"HMDStartupEphemeralContainer"];

      v9 = v7;
    }

    else
    {
      [v8 removeObjectForKey_];
    }

    [a1 respondWithSuccess];
  }

  else
  {
    v10 = [v1 notEnabledError];
    v11 = sub_253CCFE08();

    [a1 respondWithError_];
  }
}

void sub_253271CE8(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    v53 = [v1 notEnabledError];
    v61 = sub_253CCFE08();

    [a1 respondWithError_];

    return;
  }

  v56 = a1;

  swift_unknownObjectRelease();
  v5 = sub_253CD04C8();
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v57 = v5;

  v11 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = v26)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_253D48DA0;
          *(inited + 32) = 0xD000000000000013;
          *(inited + 40) = 0x8000000253D51030;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B58, &unk_253D4AB50);
          *(inited + 48) = i;

          sub_25321856C(inited);
          swift_setDeallocating();
          sub_253206054(inited + 32, &unk_27F5A3B60, &unk_253D4AAD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
          v52 = sub_253CD08B8();

          [v56 respondWithPayload_];

          return;
        }

        v9 = *(v6 + 8 * v13);
        ++v11;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v13 = v11;
LABEL_13:
    v14 = __clz(__rbit64(v9)) | (v13 << 6);
    v15 = (*(v57 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v57 + 56) + 8 * v14);

    v58 = v18;
    v59 = sub_253CD0648();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v16;
    v21 = sub_253217D84(v16, v17);
    v22 = *(i + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_45;
    }

    v25 = v20;
    if (*(i + 24) >= v24)
    {
      break;
    }

    sub_2532851A0(v24, isUniquelyReferenced_nonNull_native);
    v26 = i;
    v27 = v60;
    v28 = sub_253217D84(v60, v17);
    if ((v25 & 1) != (v29 & 1))
    {
      goto LABEL_48;
    }

    v21 = v28;
LABEL_20:
    v9 &= v9 - 1;
    if (v25)
    {
      *(*(v26 + 56) + v21) = v59 & 1;
    }

    else
    {
      *(v26 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (*(v26 + 48) + 16 * v21);
      *v30 = v27;
      v30[1] = v17;
      *(*(v26 + 56) + v21) = v59 & 1;
      v31 = *(v26 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_46;
      }

      *(v26 + 16) = v33;
    }

    v11 = v13;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v26 = i;
LABEL_19:
    v27 = v60;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B48, &unk_253D4AB40);
  v34 = sub_253CD10A8();
  v26 = v34;
  if (!*(i + 16))
  {
LABEL_39:

    goto LABEL_19;
  }

  v35 = (v34 + 64);
  v36 = (i + 64);
  v37 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != i || v35 >= &v36[8 * v37])
  {
    memmove(v35, v36, 8 * v37);
  }

  v38 = 0;
  *(v26 + 16) = *(i + 16);
  v39 = 1 << *(i + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(i + 64);
  v42 = (v39 + 63) >> 6;
  v54 = v42;
  if (v41)
  {
    do
    {
      v43 = __clz(__rbit64(v41));
      v55 = (v41 - 1) & v41;
LABEL_37:
      v46 = v43 | (v38 << 6);
      v47 = (*(i + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      LOBYTE(v47) = *(*(i + 56) + v46);
      v50 = (*(v26 + 48) + 16 * v46);
      *v50 = v49;
      v50[1] = v48;
      *(*(v26 + 56) + v46) = v47;

      v42 = v54;
      v41 = v55;
    }

    while (v55);
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v42)
    {
      goto LABEL_39;
    }

    v45 = *(i + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v55 = (v45 - 1) & v45;
      goto LABEL_37;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  sub_253CD1158();
  __break(1u);
}

uint64_t sub_2532722BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v105 = a5;
  v106 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v101 - v9;
  v11 = sub_253CD05B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  if ((sub_25326FD04(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v103 = v12;
  v21 = _s11GroupFilterVMa(0);
  v22 = (a3 + *(v21 + 44));
  v23 = v22[1];
  v104 = a1;
  v107 = a2;
  if (!v23)
  {
    v103 = *(v21 + 40);
    sub_2532168A0(a3 + v103, v20, &qword_27F5A3B70, &qword_253D49578);
    v28 = sub_253CCFEE8();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v30(v20, 1, v28);
    sub_253206054(v20, &qword_27F5A3B70, &qword_253D49578);
    if (v31 == 1)
    {
      v32 = v107;
      v33 = sub_253CD0398();
      v34 = v33;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA0, &qword_253D4AB98);
      v78 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_253D48DA0;
      sub_2532168A0(a3 + v103, v18, &qword_27F5A3B70, &qword_253D49578);
      result = v30(v18, 1, v28);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v33 = (*(v29 + 32))(v34 + v78, v18, v28);
      v32 = v107;
    }

    MEMORY[0x28223BE20](v33);
    *(&v101 - 6) = a3;
    *(&v101 - 5) = v32;
    v80 = v106;
    *(&v101 - 4) = v105;
    *(&v101 - 3) = v80;
    *(&v101 - 2) = v81;
    v82 = sub_25326E740(sub_2532761A4, (&v101 - 8), v34);

    return v82;
  }

  v24 = *v22;
  v106 = a3[7];
  if (v106)
  {
    v25 = a3[6];

    v26 = sub_253CD03B8();
    if ((v27 & 1) == 0)
    {
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BD8, &qword_253D4ABD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = v25;
      v38 = inited + 32;
      *(inited + 40) = v106;
      *(inited + 48) = v36;
      v105 = sub_253218C6C(inited);
      swift_setDeallocating();
      sub_253206054(v38, &unk_27F5A3BE0, &unk_253D4ABD8);
      v35 = a3[9];
      if (!v35)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v105 = 0;
  v35 = a3[9];
  if (!v35)
  {
LABEL_14:
    v102 = 0;
    v42 = a3[11];
    if (v42)
    {
      goto LABEL_15;
    }

LABEL_18:
    v45 = 0;
    goto LABEL_20;
  }

LABEL_12:
  v39 = a3[8];

  v40 = sub_253CD0408();
  if (v41)
  {

    goto LABEL_14;
  }

  v46 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC8, &qword_253D4ABC0);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_253D48DA0;
  v101 = v24;
  *(v47 + 32) = v39;
  v48 = v47 + 32;
  *(v47 + 40) = v35;
  *(v47 + 48) = v46;
  v102 = sub_253218D68(v47);
  swift_setDeallocating();
  v49 = v48;
  v24 = v101;
  sub_253206054(v49, &qword_27F5A3BD0, &qword_253D4ABC8);
  v42 = a3[11];
  if (!v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v43 = a3[10];

  sub_253CD0348();
  v44 = v103;
  if ((*(v103 + 48))(v10, 1, v11) == 1)
  {

    sub_253206054(v10, &qword_27F5A3518, &qword_253D494F0);
    v45 = 0;
  }

  else
  {
    (*(v44 + 32))(v14, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB8, &unk_253D4ABB0);
    v101 = v24;
    v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20) - 8);
    v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_253D48DA0;
    v53 = (v52 + v51);
    v54 = v50[14];
    *v53 = v43;
    *(v53 + 1) = v42;
    (*(v44 + 16))(&v53[v54], v14, v11);
    v45 = sub_253218E6C(v52);
    swift_setDeallocating();
    sub_253206054(v53, &qword_27F5A3BC0, &qword_253D48D20);
    v24 = v101;
    swift_deallocClassInstance();
    (*(v44 + 8))(v14, v11);
  }

LABEL_20:
  v55 = v102;
  if (v35 | v106 | v42)
  {
    v56 = v105;
    if (v105 && *(v105 + 16))
    {
      goto LABEL_29;
    }
  }

  else
  {

    v56 = sub_253CD03E8();
    v57 = v24;
    v58 = sub_253CD0428();

    v59 = sub_253CD0368();

    v45 = v59;
    v55 = v58;
    v24 = v57;
    if (*(v56 + 16))
    {
      goto LABEL_29;
    }
  }

  if ((!v55 || !*(v55 + 16)) && (!v45 || !*(v45 + 16)))
  {

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v112 = MEMORY[0x277D837D0];
  *&v111 = v24;
  *(&v111 + 1) = v23;
  sub_2531FF150(&v111, &v109);
  v60 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v60;
  v62 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
  MEMORY[0x28223BE20](v62);
  v64 = (&v101 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  sub_253275194(*v64, v64[1], 0x656E6961746E6F63, 0xE900000000000072, isUniquelyReferenced_nonNull_native, &v108);
  __swift_destroy_boxed_opaque_existential_0(&v109);
  v66 = v108;
  v67 = sub_2532761C8(v104);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA8, &unk_253D4ABA0);
  *&v111 = v67;
  sub_2531FF150(&v111, &v109);
  LOBYTE(v67) = swift_isUniquelyReferenced_nonNull_native();
  v108 = v66;
  v68 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
  MEMORY[0x28223BE20](v68);
  v70 = (&v101 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_25327537C(*v70, 0x7470697263736564, 0xEA0000000000726FLL, v67, &v108, &qword_27F5A3BA8, &unk_253D4ABA0);
  __swift_destroy_boxed_opaque_existential_0(&v109);
  v72 = v108;
  if (v56)
  {
    if (*(v56 + 16))
    {
      v73 = sub_25326ECE0(v56);

      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      *&v111 = v73;
      sub_2531FF150(&v111, &v109);
      LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v72;
      v74 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
      MEMORY[0x28223BE20](v74);
      v76 = (&v101 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v77 + 16))(v76);
      sub_25327537C(*v76, 0x737265746E756F63, 0xE800000000000000, v73, &v108, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v109);
      v72 = v108;
      if (!v55)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (*(v55 + 16))
      {
        v83 = sub_25326E8D0(v55);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
        *&v111 = v83;
        sub_2531FF150(&v111, &v109);
        LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native();
        v108 = v72;
        v84 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
        MEMORY[0x28223BE20](v84);
        v86 = (&v101 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v87 + 16))(v86);
        sub_25327537C(*v86, 0x6E6F697461727564, 0xE900000000000073, v83, &v108, &qword_27F5A3B88, &qword_253D4AB80);
        __swift_destroy_boxed_opaque_existential_0(&v109);
        v72 = v108;
      }

      goto LABEL_42;
    }
  }

  if (v55)
  {
    goto LABEL_40;
  }

LABEL_42:
  if (v45)
  {
    if (*(v45 + 16))
    {
      v88 = sub_253276620(v45, sub_253274A28);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
      v112 = v89;
      *&v111 = v88;
      sub_2531FF150(&v111, &v109);
      LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v72;
      v90 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
      MEMORY[0x28223BE20](v90);
      v92 = (&v101 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v93 + 16))(v92);
      sub_25327537C(*v92, 0x7562697274736964, 0xED0000736E6F6974, v88, &v108, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v109);
      v94 = v108;
      v95 = sub_253276620(v45, sub_253274CA0);
      v112 = v89;
      *&v111 = v95;
      sub_2531FF150(&v111, &v109);
      LOBYTE(v89) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v94;
      v96 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
      MEMORY[0x28223BE20](v96);
      v98 = (&v101 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v99 + 16))(v98);
      sub_25327537C(*v98, 0x6974736974617473, 0xEA00000000007363, v89, &v108, &qword_27F5A3B88, &qword_253D4AB80);
      __swift_destroy_boxed_opaque_existential_0(&v109);
      v72 = v108;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB0, &unk_253D4B1E0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_253D48DA0;
  *(v100 + 32) = v72;

  return v100;
}

uint64_t sub_253273268@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v96 = a5;
  v95 = a4;
  v101 = a1;
  v98 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v91 - v9;
  v11 = sub_253CD05B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v94 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[7];
  v97 = v14;
  v99 = v10;
  if (v14)
  {
    v93 = v12;
    v15 = a2[6];

    v16 = sub_253CD03C8();
    if (v17)
    {

      v18 = 0;
    }

    else
    {
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BD8, &qword_253D4ABD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = v15;
      v25 = inited + 32;
      *(inited + 40) = v14;
      *(inited + 48) = v23;
      v26 = sub_253218C6C(inited);
      swift_setDeallocating();
      v27 = v25;
      v18 = v26;
      sub_253206054(v27, &unk_27F5A3BE0, &unk_253D4ABD8);
    }

    v12 = v93;
    v10 = v99;
    v19 = a2[9];
    if (v19)
    {
LABEL_9:
      v28 = a2[8];

      v93 = a3;
      v29 = sub_253CD0418();
      if (v30)
      {

        v20 = 0;
      }

      else
      {
        v31 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC8, &qword_253D4ABC0);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_253D48DA0;
        *(v32 + 32) = v28;
        v33 = v32 + 32;
        *(v32 + 40) = v19;
        *(v32 + 48) = v31;
        v34 = sub_253218D68(v32);
        swift_setDeallocating();
        v35 = v33;
        v20 = v34;
        sub_253206054(v35, &qword_27F5A3BD0, &qword_253D4ABC8);
      }

      v10 = v99;
      v21 = a2[11];
      if (v21)
      {
        goto LABEL_13;
      }

LABEL_6:
      v22 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    v19 = a2[9];
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = a2[11];
  if (!v21)
  {
    goto LABEL_6;
  }

LABEL_13:
  v36 = a2[10];

  sub_253CD0358();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_253206054(v10, &qword_27F5A3518, &qword_253D494F0);
    v22 = 0;
  }

  else
  {
    (*(v12 + 32))(v94, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB8, &unk_253D4ABB0);
    v99 = v18;
    v93 = v20;
    v37 = v11;
    v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20) - 8);
    v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_253D48DA0;
    v41 = (v40 + v39);
    v42 = v38[14];
    *v41 = v36;
    *(v41 + 1) = v21;
    v43 = v94;
    v44 = v37;
    (*(v12 + 16))(&v41[v42], v94, v37);
    v92 = sub_253218E6C(v40);
    swift_setDeallocating();
    sub_253206054(v41, &qword_27F5A3BC0, &qword_253D48D20);
    v20 = v93;
    v18 = v99;
    swift_deallocClassInstance();
    v45 = v44;
    v22 = v92;
    (*(v12 + 8))(v43, v45);
  }

LABEL_16:
  if (v19 | v97 | v21)
  {
    if (v18 && *(v18 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v18 = sub_253CD03F8();
    v46 = sub_253CD0438();

    v47 = sub_253CD0378();

    v22 = v47;
    v20 = v46;
    if (*(v18 + 16))
    {
      goto LABEL_25;
    }
  }

  if (!v20 || !*(v20 + 16))
  {
    if (v22)
    {
      if (*(v22 + 16))
      {
        goto LABEL_25;
      }
    }

    v65 = 0;
    goto LABEL_40;
  }

LABEL_25:
  v48 = v20;
  v49 = sub_253CCFE98();
  v50 = [v95 stringFromDate_];

  v51 = sub_253CD0968();
  v53 = v52;

  v105 = MEMORY[0x277D837D0];
  *&v104 = v51;
  *(&v104 + 1) = v53;
  sub_2531FF150(&v104, &v102);
  v54 = MEMORY[0x277D84F98];
  LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v54;
  v55 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
  MEMORY[0x28223BE20](v55);
  v57 = (&v91 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  sub_253275194(*v57, v57[1], 0x6F69746974726170, 0xE90000000000006ELL, v50, &v106);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  v59 = v106;
  v60 = sub_2532761C8(v96);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BA8, &unk_253D4ABA0);
  *&v104 = v60;
  sub_2531FF150(&v104, &v102);
  LOBYTE(v60) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v59;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
  MEMORY[0x28223BE20](v61);
  v63 = (&v91 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63);
  sub_25327537C(*v63, 0x7470697263736564, 0xEA0000000000726FLL, v60, &v106, &qword_27F5A3BA8, &unk_253D4ABA0);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  v65 = v106;
  if (v18)
  {
    if (!*(v18 + 16))
    {

      if (!v48)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v66 = v100;
    v67 = sub_25326ECE0(v18);
    v100 = v66;

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
    *&v104 = v67;
    sub_2531FF150(&v104, &v102);
    LOBYTE(v67) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v65;
    v68 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
    MEMORY[0x28223BE20](v68);
    v70 = (&v91 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v70);
    sub_25327537C(*v70, 0x737265746E756F63, 0xE800000000000000, v67, &v106, &qword_27F5A3B88, &qword_253D4AB80);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v65 = v106;
  }

  if (!v48)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(v48 + 16))
  {
    v72 = v100;
    v73 = sub_25326E8D0(v48);
    v100 = v72;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
    *&v104 = v73;
    sub_2531FF150(&v104, &v102);
    LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v65;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
    MEMORY[0x28223BE20](v74);
    v76 = (&v91 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    sub_25327537C(*v76, 0x6E6F697461727564, 0xE900000000000073, v73, &v106, &qword_27F5A3B88, &qword_253D4AB80);
    __swift_destroy_boxed_opaque_existential_0(&v102);
    v65 = v106;
  }

LABEL_31:
  if (!v22)
  {
LABEL_37:

    goto LABEL_40;
  }

  if (!*(v22 + 16))
  {

    goto LABEL_37;
  }

  v78 = sub_253276620(v22, sub_253274A28);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B88, &qword_253D4AB80);
  v105 = v79;
  *&v104 = v78;
  sub_2531FF150(&v104, &v102);
  LOBYTE(v78) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v65;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
  MEMORY[0x28223BE20](v80);
  v82 = (&v91 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82);
  sub_25327537C(*v82, 0x7562697274736964, 0xED0000736E6F6974, v78, &v106, &qword_27F5A3B88, &qword_253D4AB80);
  __swift_destroy_boxed_opaque_existential_0(&v102);
  v84 = v106;
  v85 = sub_253276620(v22, sub_253274CA0);
  v105 = v79;
  *&v104 = v85;
  sub_2531FF150(&v104, &v102);
  LOBYTE(v79) = swift_isUniquelyReferenced_nonNull_native();
  v106 = v84;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v103);
  MEMORY[0x28223BE20](v86);
  v88 = (&v91 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88);
  sub_25327537C(*v88, 0x6974736974617473, 0xEA00000000007363, v79, &v106, &qword_27F5A3B88, &qword_253D4AB80);

  result = __swift_destroy_boxed_opaque_existential_0(&v102);
  v65 = v106;
LABEL_40:
  *v98 = v65;
  return result;
}

uint64_t sub_253273FEC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() productInfo];
  v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_253D48C40;
  *(v5 + 32) = 0x646C697562;
  *(v5 + 40) = 0xE500000000000000;
  v6 = [v3 softwareVersion];
  v7 = [v6 buildVersion];

  if (v7)
  {
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B90, &unk_253D4AB88);
  *(v5 + 48) = v8;
  *(v5 + 56) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0x6C65646F6DLL;
  *(v5 + 88) = 0xE500000000000000;
  v12 = [v3 modelIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_253CD0968();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 104) = v16;
  *(v5 + 120) = v11;
  strcpy((v5 + 128), "serialNumber");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  v17 = [v4 serialNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_253CD0968();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v5 + 144) = v19;
  *(v5 + 152) = v21;
  *(v5 + 168) = v11;
  *(v5 + 176) = 0x6D726F6674616C70;
  *(v5 + 184) = 0xE800000000000000;
  [v3 productPlatform];
  v22 = HMFProductPlatformToString();
  if (v22)
  {
    v23 = v22;
    v24 = sub_253CD0968();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v5 + 192) = v24;
  *(v5 + 200) = v26;
  *(v5 + 216) = v11;
  strcpy((v5 + 224), "isHH2Enabled");
  *(v5 + 237) = 0;
  *(v5 + 238) = -5120;
  v27 = MEMORY[0x277D839B0];
  *(v5 + 264) = MEMORY[0x277D839B0];
  *(v5 + 240) = 0;
  v28 = sub_25321856C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = [v2 cachedConfiguration];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 totalHomes];
    v32 = MEMORY[0x277D83B88];
    v97 = MEMORY[0x277D83B88];
    *&v96 = v31;
    sub_2531FF150(&v96, &v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v28;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v34, 0x6D6F486C61746F74, 0xEA00000000007365, isUniquelyReferenced_nonNull_native, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v35 = v93;
    v36 = [v30 totalUsers];
    v97 = v32;
    *&v96 = v36;
    sub_2531FF150(&v96, &v94);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v35;
    v38 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v38, 0x6573556C61746F74, 0xEA00000000007372, v37, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v39 = v93;
    v40 = [v30 totalAccessories];
    v97 = v32;
    *&v96 = v40;
    sub_2531FF150(&v96, &v94);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v39;
    v42 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v42, 0xD000000000000010, 0x8000000253D510E0, v41, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v43 = v93;
    v44 = [v30 totalHAPAccessories];
    v97 = v32;
    *&v96 = v44;
    sub_2531FF150(&v96, &v94);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v43;
    v46 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v46, 0xD000000000000013, 0x8000000253D51100, v45, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v47 = v93;
    v48 = [v30 totalCHIPAccessories];
    v97 = v32;
    *&v96 = v48;
    sub_2531FF150(&v96, &v94);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v47;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v50, 0xD000000000000016, 0x8000000253D51120, v49, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v51 = v93;
    v52 = [v30 totalThreadAccessories];
    v97 = v32;
    *&v96 = v52;
    sub_2531FF150(&v96, &v94);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v51;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v54, 0xD000000000000016, 0x8000000253D51140, v53, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v55 = v93;
    v56 = [v30 totalCameraAccessories];
    v97 = v32;
    *&v96 = v56;
    sub_2531FF150(&v96, &v94);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v55;
    v58 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v58, 0xD000000000000016, 0x8000000253D51160, v57, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v59 = v93;
    v60 = [v30 totalAppleAudioAccessories];
    v97 = v32;
    *&v96 = v60;
    sub_2531FF150(&v96, &v94);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v59;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v62, 0xD00000000000001ALL, 0x8000000253D51180, v61, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v63 = v93;
    v64 = [v30 totalAppleTVAccessories];
    v97 = v32;
    *&v96 = v64;
    sub_2531FF150(&v96, &v94);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v63;
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v66, 0xD000000000000017, 0x8000000253D511A0, v65, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v67 = v93;
    v68 = [v30 totalScenes];
    v97 = v32;
    *&v96 = v68;
    sub_2531FF150(&v96, &v94);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v67;
    v70 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v70, 0x6563536C61746F74, 0xEB0000000073656ELL, v69, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v71 = v93;
    v72 = [v30 totalTriggers];
    v97 = v32;
    *&v96 = v72;
    sub_2531FF150(&v96, &v94);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v71;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v74, 0x6972546C61746F74, 0xED00007372656767, v73, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v75 = v93;
    v76 = [v30 totalWidgets];
    v97 = v32;
    *&v96 = v76;
    sub_2531FF150(&v96, &v94);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v75;
    v78 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_253274EE4(*v78, 0x6469576C61746F74, 0xEC00000073746567, v77, &v93);
    __swift_destroy_boxed_opaque_existential_0(&v94);
    v79 = v93;
    v80 = [v30 isFMFDevice];
    v97 = v27;
    LOBYTE(v96) = v80;
    sub_2531FF150(&v96, &v94);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v79;
    v82 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    sub_25327503C(*v82, 0x766544464D467369, 0xEB00000000656369, v81, &v93);

    __swift_destroy_boxed_opaque_existential_0(&v94);
    v28 = v93;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v83 = [v2 legacyCountersManager];
  v84 = [v83 delegate];

  _s16CoreDataDelegateCMa();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    return v28;
  }

  swift_unknownObjectRelease();
  v85 = sub_253CD04B8();
  if (!v85)
  {

LABEL_21:

    return v28;
  }

  v86 = v85;
  sub_253CD0638();
  v88 = lround(v87);
  v97 = MEMORY[0x277D83B88];
  *&v96 = v88;
  sub_2531FF150(&v96, &v94);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v28;
  v90 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
  sub_253274EE4(*v90, 0x6E6F697461727564, 0xEC00000073636553, v89, &v93);

  __swift_destroy_boxed_opaque_existential_0(&v94);
  return v93;
}

unint64_t sub_253274A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_253CD0558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_253D4AB10;
    *(inited + 32) = 1701667182;
    v6 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_253CD0598();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_253CD0568();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = sub_253CD0558();
    *(inited + 264) = v8;
    *(inited + 272) = 0x65636E6169726176;
    *(inited + 280) = 0xE800000000000000;
    sub_253CD05A8();
    *(inited + 288) = v11;
    *(inited + 312) = v9;
    *(inited + 320) = 0x766564647473;
    *(inited + 328) = 0xE600000000000000;
    sub_253CD0578();
    *(inited + 360) = v9;
    *(inited + 336) = v12;
  }

  else
  {
    *(inited + 16) = xmmword_253D49510;
    *(inited + 32) = 1701667182;
    v14 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v14;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v15 = sub_253CD0598();
    v16 = MEMORY[0x277D83B88];
    *(inited + 96) = v15;
    *(inited + 120) = v16;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v16;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v17 = sub_253CD0558();
    *(inited + 216) = v16;
    *(inited + 192) = v17;
  }

  v13 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_253274CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_253CD0558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_253D48C40;
    strcpy((inited + 32), "statisticsName");
    v6 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_253CD0598();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_253CD0568();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    v11 = sub_253CD0558();
    *(inited + 264) = v8;
    *(inited + 240) = v11;
  }

  else
  {
    *(inited + 16) = xmmword_253D49510;
    strcpy((inited + 32), "statisticsName");
    v13 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v13;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v14 = sub_253CD0598();
    v15 = MEMORY[0x277D83B88];
    *(inited + 96) = v14;
    *(inited + 120) = v15;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_253CD0588();
    *(inited + 168) = v15;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v16 = sub_253CD0558();
    *(inited + 216) = v15;
    *(inited + 192) = v16;
  }

  v12 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v12;
}

_OWORD *sub_253274EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_253217D84(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2531FF150(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v14, a4 & 1);
  v20 = sub_253217D84(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_2532759F8(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_25327503C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_253217D84(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2531FF150(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v14, a4 & 1);
  v20 = sub_253217D84(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D839B0]);
  sub_253275974(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_253275194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_253217D84(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a5 & 1);
  v22 = sub_253217D84(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_253275B24(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_25327537C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v33 = v14;
  *&v32 = a1;
  v15 = *a5;
  v17 = sub_253217D84(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_2531FF150(&v32, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v20, a4 & 1);
  v26 = sub_253217D84(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v14);
  MEMORY[0x28223BE20](v28);
  v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  sub_253275A7C(v17, a2, a3, *v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

_OWORD *sub_253275584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9318];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_253217D84(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a5 & 1);
  v22 = sub_253217D84(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_253275B24(v13, a3, a4, *v26, v26[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_25327576C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_253217D84(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2531FF150(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_253286354();
    goto LABEL_7;
  }

  sub_253284EB4(v16, a4 & 1);
  v22 = sub_253217D84(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_253275A7C(v13, a2, a3, *v26, v19, &unk_27F5A3C20, &qword_253D493F8);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_253275974(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2531FF150(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_2532759F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2531FF150(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_253275A7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *&v17 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_2531FF150(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_253275B24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_2531FF150(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

id sub_253275BA0(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_eventBuilders;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C10, &qword_253D4AC18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_253D48DA0;
  *(v5 + 56) = &type metadata for TemperatureHumidityReadWriteLogEvent.Builder;
  *(v5 + 64) = &off_2864FAB18;
  *&a2[v4] = v5;
  v6 = [a1 logEventSubmitter];
  *&a2[OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_logEventSubmitter] = v6;
  v10.receiver = a2;
  v10.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [a1 logEventDispatcher];
  sub_253200644(0, &qword_281530D38, off_27971A080);
  [v8 addObserver:v7 forEventClass:swift_getObjCClassFromMetadata()];

  swift_unknownObjectRelease();
  return v7;
}

id sub_253275CD0(uint64_t a1)
{
  v1 = sub_253CD0628();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_253CD0B58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_253CD0688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD0678();
  sub_253CD0B18();
  v12 = sub_253CD0668();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_253CD0618();
  v13 = sub_253CD0608();
  (*(v18 + 8))(v3, v19);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B28, &qword_253D4AB30);
  v22[4] = sub_253276044(&qword_27F5A3B30, &qword_27F5A3B28, &qword_253D4AB30, MEMORY[0x277D17D58]);
  v22[0] = v12;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B38, &qword_253D4AB38);
  v21[4] = sub_253276044(&qword_27F5A3B40, &qword_27F5A3B38, &qword_253D4AB38, MEMORY[0x277D17CB8]);
  v21[0] = v13;
  v14 = _s9SwiftDataCMa();
  v15 = objc_allocWithZone(v14);
  sub_2532074E4(v22, v15 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_repeatingScheduler);
  sub_2532074E4(v21, v15 + OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo17HMDMetricsManager9SwiftData_dailyScheduler);
  v20.receiver = v15;
  v20.super_class = v14;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t sub_253276044(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25327608C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11GroupFilterVMa(uint64_t a1)
{
  result = qword_27F5A3C50;
  if (!qword_27F5A3C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253276148(uint64_t a1)
{
  v2 = _s11GroupFilterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2532761C8(uint64_t a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BF8, &unk_253D4ABF0);
  v2 = MEMORY[0x28223BE20](v59);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v68 = &v54 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v57 = v5 + 8;
  v58 = v5;
  v11 = (v8 + 63) >> 6;
  v60 = a1;

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v55 = v11;
  v56 = a1 + 64;
  while (v10)
  {
    v66 = v13;
LABEL_12:
    v17 = __clz(__rbit64(v10)) | (v12 << 6);
    v18 = v60;
    v19 = *(v60 + 48);
    v20 = sub_253CD0548();
    v65 = *(v20 - 8);
    v21 = v68;
    (*(v65 + 16))(v68, v19 + *(v65 + 72) * v17, v20);
    v22 = (*(v18 + 56) + 16 * v17);
    v23 = *v22;
    v24 = v22[1];
    v25 = v58;
    v26 = v59;
    v27 = (v21 + *(v59 + 48));
    *v27 = v23;
    v27[1] = v24;
    sub_2532168A0(v21, v25, &qword_27F5A3BF8, &unk_253D4ABF0);

    v28 = sub_253CD0538();
    v64 = v29;
    v61 = *(v65 + 8);
    v62 = v20;
    v61(v25, v20);
    v30 = v67;
    v31 = v28;
    v32 = v64;
    sub_2532168A0(v21, v67, &qword_27F5A3BF8, &unk_253D4ABF0);
    v33 = (v30 + *(v26 + 48));
    v35 = *v33;
    v34 = v33[1];
    v63 = v35;
    v65 = v34;
    v36 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    v39 = sub_253217D84(v31, v32);
    v40 = v36[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_25;
    }

    v43 = v38;
    if (v36[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25328651C();
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_253285440(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_253217D84(v31, v32);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_27;
      }

      v39 = v44;
      if (v43)
      {
LABEL_4:

        v13 = v69;
        v14 = (v69[7] + 16 * v39);
        v15 = v65;
        *v14 = v63;
        v14[1] = v15;

        sub_253206054(v68, &qword_27F5A3BF8, &unk_253D4ABF0);
        goto LABEL_5;
      }
    }

    v46 = v68;
    v13 = v69;
    v69[(v39 >> 6) + 8] |= 1 << v39;
    v47 = (v13[6] + 16 * v39);
    *v47 = v31;
    v47[1] = v32;
    v48 = (v13[7] + 16 * v39);
    v49 = v65;
    *v48 = v63;
    v48[1] = v49;
    sub_253206054(v46, &qword_27F5A3BF8, &unk_253D4ABF0);
    v50 = v13[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_26;
    }

    v13[2] = v52;
LABEL_5:
    v10 &= v10 - 1;
    v61(v67, v62);
    v11 = v55;
    v7 = v56;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v11)
    {

      return v13;
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      v66 = v13;
      v12 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

uint64_t sub_253276620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BF0, &qword_253D4ABE8);
  v3 = MEMORY[0x28223BE20](v30);
  v29 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v37 = MEMORY[0x277D84F90];
  sub_25328BFA0(0, v6, 0);
  v7 = v37;
  v8 = a1 + 64;
  result = sub_253CD0E48();
  v10 = result;
  v26 = a1 + 64;
  v27 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_14;
    }

    v34 = 1 << v10;
    v35 = v10 >> 6;
    v32 = v6;
    v33 = *(a1 + 36);
    v11 = v30;
    v12 = *(v30 + 48);
    v13 = *(a1 + 56);
    v14 = (*(a1 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_253CD05B8();
    v18 = *(v17 - 8);
    v36 = v7;
    v19 = v18;
    v20 = v28;
    (*(v18 + 16))(&v28[v12], v13 + *(v18 + 72) * v10, v17);
    v21 = v29;
    *v29 = v15;
    *(v21 + 8) = v16;
    v22 = *(v11 + 48);
    (*(v19 + 32))(v21 + v22, &v20[v12], v17);
    v7 = v36;

    v23 = v31(v15, v16, v21 + v22);
    result = sub_253206054(v21, &qword_27F5A3BF0, &qword_253D4ABE8);
    v37 = v7;
    v25 = *(v7 + 16);
    v24 = *(v7 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_25328BFA0((v24 > 1), v25 + 1, 1);
      v7 = v37;
    }

    *(v7 + 16) = v25 + 1;
    *(v7 + 8 * v25 + 32) = v23;
    a1 = v27;
    if (v10 >= -(-1 << *(v27 + 32)))
    {
      goto LABEL_15;
    }

    v8 = v26;
    if ((*(v26 + 8 * v35) & v34) == 0)
    {
      goto LABEL_16;
    }

    if (v33 != *(v27 + 36))
    {
      goto LABEL_17;
    }

    result = sub_253CD0E68();
    v10 = result;
    v6 = v32 - 1;
    if (v32 == 1)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25327692C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25320C7A8;

  return sub_25326F570(a1, v1);
}

uint64_t sub_2532769C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25320C438;

  return sub_25326F5F0(a1, v1);
}

uint64_t sub_253276A5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C7A8;

  return sub_25326F670(a1, v5, v4);
}

void sub_253276B2C(uint64_t a1)
{
  sub_25323FDBC();
  if (v1 <= 0x3F)
  {
    sub_253276BC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_253276BC0(uint64_t a1)
{
  if (!qword_27F5A3C68)
  {
    sub_253CCFEE8();
    v1 = sub_253CD0DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5A3C68);
    }
  }
}

void sub_253276C18(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for HMError(0);
  v4 = a3;
  sub_253276CC0(MEMORY[0x277D84F90]);
  sub_25321C694();
  sub_253CCFDF8();
  v5 = sub_253CCFE08();

  [v4 respondWithError_];
}

unint64_t sub_253276CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3528, &unk_253D49500);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_253276DD0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF150(&v15, (v3[7] + 32 * result));
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

uint64_t sub_253276DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C70, &qword_253D4AC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_253276E48()
{
  ObjectType = swift_getObjectType();
  sub_253277B34();
  v2 = sub_253CD0CF8();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v13 = sub_253277B80;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_253277428;
  v12 = &block_descriptor_10;
  v4 = _Block_copy(&v9);
  v5 = v0;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);

  v6 = sub_253CD0CF8();
  v7 = swift_allocObject();
  *(v7 + 16) = ObjectType;
  v13 = sub_253277BA0;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_253277428;
  v12 = &block_descriptor_6;
  v8 = _Block_copy(&v9);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v6, v8);
  _Block_release(v8);
}

void sub_253276FF8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_253CD07E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_253CD0808();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v38 = v7;
    v17 = sub_253CD09E8();
    v19 = v18;
    sub_253211D58(a3, &off_2864FC3D0);

    v20 = sub_253CD07C8();
    v21 = sub_253CD0C78();

    v22 = os_log_type_enabled(v20, v21);
    v37 = a2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v36 = v6;
      v24 = v23;
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;

      v26 = sub_253277BA8(v17, v19, &v39);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_2531F8000, v20, v21, "XPC stream handler invoked with com.apple.notifyd.matching with event name: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x259C040E0](v25, -1, -1);
      v27 = v24;
      v6 = v36;
      MEMORY[0x259C040E0](v27, -1, -1);
    }

    v28 = *(v38 + 8);
    v28(v13, v6);
    if (v17 == 0xD00000000000001FLL && 0x8000000253D51340 == v19)
    {
    }

    else
    {
      v32 = sub_253CD1118();

      if ((v32 & 1) == 0)
      {
        return;
      }
    }

    sub_253211D58(a3, &off_2864FC3D0);
    v33 = sub_253CD07C8();
    v34 = sub_253CD0C78();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2531F8000, v33, v34, "XPC stream handler invoked with com.apple.CascadeSets.DonateNow", v35, 2u);
      MEMORY[0x259C040E0](v35, -1, -1);
    }

    v28(v10, v6);
    if (qword_2815314B8 != -1)
    {
      swift_once();
    }

    logAndPostNotification(qword_281532BE8, v37, 0);
  }

  else
  {
    sub_253211D58(a3, &off_2864FC3D0);
    v29 = sub_253CD07C8();
    v30 = sub_253CD0C98();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2531F8000, v29, v30, "com.apple.notifyd.matching XPC stream handler was called with nil event name. Not handling.", v31, 2u);
      MEMORY[0x259C040E0](v31, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
  }
}

uint64_t sub_253277428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_253277488(void *a1, uint64_t a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = sub_253CD0808();
  if (!xpc_dictionary_get_string(a1, v17))
  {
    v29 = v4;
    sub_253211D58(a2, &off_2864FC3D0);
    v30 = sub_253CD07C8();
    v31 = sub_253CD0C98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v5;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2531F8000, v30, v31, "Rapport XPC stream: Not handling xpc stream event with nil name", v33, 2u);
      MEMORY[0x259C040E0](v33, -1, -1);

      return (*(v32 + 8))(v16, v29);
    }

    else
    {

      return (*(v5 + 8))(v16, v29);
    }
  }

  v53 = a1;
  v18 = sub_253CD09E8();
  v20 = v19;
  sub_253211D58(a2, &off_2864FC3D0);

  v21 = sub_253CD07C8();
  v22 = sub_253CD0C78();

  v23 = os_log_type_enabled(v21, v22);
  v54 = v5;
  v52 = v8;
  if (v23)
  {
    v24 = v4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v55 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_253277BA8(v18, v20, &v55);
    _os_log_impl(&dword_2531F8000, v21, v22, "Rapport XPC stream event handler invoked with : %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C040E0](v26, -1, -1);
    v27 = v25;
    v4 = v24;
    MEMORY[0x259C040E0](v27, -1, -1);

    v28 = *(v54 + 8);
    v28(v14, v24);
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v14, v4);
  }

  if (v18 == 0xD000000000000018 && 0x8000000253D51310 == v20)
  {

    goto LABEL_11;
  }

  v35 = sub_253CD1118();

  if (v35)
  {
LABEL_11:
    v36 = [objc_opt_self() productInfo];
    v37 = [v36 productPlatform];

    if (v37 != 3)
    {
      sub_253211D58(a2, &off_2864FC3D0);
      v38 = sub_253CD07C8();
      v39 = sub_253CD0C78();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2531F8000, v38, v39, "Starting Rapport Messaging Discovery Client", v40, 2u);
        MEMORY[0x259C040E0](v40, -1, -1);
      }

      v28(v11, v4);
      v41 = [objc_opt_self() sharedInstance];
      v42 = [objc_opt_self() requestIDsToRegister];
      if (!v42)
      {
        sub_253CD0A58();
        v42 = sub_253CD0A38();
      }

      [v41 configureDiscoveryClientForRequestIDs:v42 withCompletion:{0, v52}];
    }
  }

  v43 = v53;
  result = xpc_dictionary_get_BOOL(v53, "replyRequired");
  if (result)
  {
    result = xpc_dictionary_create_reply(v43);
    if (result)
    {
      v44 = v52;
      sub_253211D58(a2, &off_2864FC3D0);
      v45 = sub_253CD07C8();
      v46 = sub_253CD0C78();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = v4;
        v49 = swift_slowAlloc();
        v55 = v49;
        *v47 = 136315138;
        *(v47 + 4) = sub_253277BA8(0xD00000000000001ALL, 0x8000000253D512F0, &v55);
        _os_log_impl(&dword_2531F8000, v45, v46, "Sending reply to %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x259C040E0](v49, -1, -1);
        MEMORY[0x259C040E0](v47, -1, -1);

        v50 = v44;
        v51 = v48;
      }

      else
      {

        v50 = v44;
        v51 = v4;
      }

      v28(v50, v51);
      xpc_dictionary_send_reply();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_253277B34()
{
  result = qword_281530E48;
  if (!qword_281530E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530E48);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_253277BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_253277C74(v11, 0, 0, 1, a1, a2);
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
    sub_253205FF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_253277C74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_253277D80(a5, a6);
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
    result = sub_253CD0FE8();
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

void *sub_253277D80(uint64_t a1, unint64_t a2)
{
  v3 = sub_253277DCC(a1, a2);
  sub_253277EFC(&unk_2864F9200);
  return v3;
}

void *sub_253277DCC(uint64_t a1, unint64_t a2)
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

  v6 = sub_253277FE8(v5, 0);
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

  result = sub_253CD0FE8();
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
        v10 = sub_253CD09F8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_253277FE8(v10, 0);
        result = sub_253CD0FA8();
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

uint64_t sub_253277EFC(uint64_t result)
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

  result = sub_25327805C(result, v11, 1, v3);
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

void *sub_253277FE8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C78, &qword_253D4AC98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25327805C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3C78, &qword_253D4AC98);
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

char *sub_25327828C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 16) = xmmword_253D48C50;
  *(inited + 40) = 0x8000000253D513F0;
  v3 = [v1 availableStreamHandlerCount];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x8000000253D51410;
  v4 = [v1 inUseStreamHandlerCount];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = 0x8000000253D51480;
  v5 = [v1 availableStreamHandlerCount];
  result = [v1 inUseStreamHandlerCount];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v7 = sub_253218704(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
    swift_arrayDestroy();
    return v7;
  }

  return result;
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init()(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init(startTime:)(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr, Swift::Double startTime)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithStartTime_];
}

void sub_25327858C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25327A9B4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_253217CF0(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_2532859EC();
        v10 = v13;
      }

      sub_25327A1B0(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_253278690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25327AC9C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_253217D84(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_253285CAC();
        v14 = v16;
      }

      result = sub_25327A4C8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_253278788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_253CD01C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_253206054(a1, &qword_27F5A3CD0, &qword_253D49088);
    sub_253279E90(a2, a3, v9);

    return sub_253206054(v9, &qword_27F5A3CD0, &qword_253D49088);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25327AE14(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void *sub_253278A64()
{
  v1 = *(v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event + 24);
  v2 = *(v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v38 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v36 = v8;
  v37 = v4;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = (*(v38 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2532074E4(*(v38 + 56) + 40 * v14, v41);
    v40[0] = v17;
    v40[1] = v16;
    v18 = v42;
    v19 = v43;
    __swift_project_boxed_opaque_existential_0(v41, v42);
    v20 = *(v19 + 8);
    swift_bridgeObjectRetain_n();
    v21 = v20(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v23 = sub_253217D84(v17, v16);
    v25 = v10[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_253284450(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_253217D84(v17, v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v34 = v23;
    sub_253285CAC();
    v23 = v34;
    v10 = v39;
    if (v29)
    {
LABEL_4:
      v11 = v10[7];
      v12 = *(v11 + 8 * v23);
      *(v11 + 8 * v23) = v21;

      goto LABEL_5;
    }

LABEL_17:
    v10[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v10[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v16;
    *(v10[7] + 8 * v23) = v21;
    v32 = v10[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v10[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    sub_253206054(v40, &unk_27F5A3CC0, &unk_253D4AD50);
    v8 = v36;
    v4 = v37;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

id sub_253278E20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Metric.LogEventAdaptor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t *sub_253278E98@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_253278EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3CF0, &unk_253D4ADC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D4ACA0;
  *(inited + 32) = 0x69466957736168;
  *(inited + 40) = 0xE700000000000000;
  v2 = *v0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &off_2864FC498;
  *(inited + 48) = v2;
  *(inited + 88) = 0x7265687445736168;
  *(inited + 96) = 0xEB0000000074656ELL;
  v4 = v0[1];
  *(inited + 128) = v3;
  *(inited + 136) = &off_2864FC498;
  *(inited + 104) = v4;
  strcpy((inited + 144), "primaryService");
  *(inited + 159) = -18;
  v5 = v0[2];
  v6 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &off_2864FC4A8;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x8000000253D517A0;
  v7 = v0[3];
  *(inited + 240) = v6;
  *(inited + 248) = &off_2864FC4A8;
  *(inited + 216) = v7;
  *(inited + 256) = 0x4973614869666977;
  *(inited + 264) = 0xE900000000000050;
  LOBYTE(v7) = v0[4];
  *(inited + 296) = v3;
  *(inited + 304) = &off_2864FC498;
  *(inited + 272) = v7;
  strcpy((inited + 312), "ethernetHasIP");
  *(inited + 326) = -4864;
  LOBYTE(v7) = v0[5];
  *(inited + 352) = v3;
  *(inited + 360) = &off_2864FC498;
  *(inited + 328) = v7;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000253D517C0;
  LOBYTE(v7) = v0[6];
  *(inited + 408) = v3;
  *(inited + 416) = &off_2864FC498;
  *(inited + 384) = v7;
  *(inited + 424) = 0xD000000000000016;
  *(inited + 432) = 0x8000000253D517E0;
  LOBYTE(v7) = v0[7];
  *(inited + 464) = v3;
  *(inited + 472) = &off_2864FC498;
  *(inited + 440) = v7;
  *(inited + 480) = 0x616D697250736168;
  *(inited + 488) = 0xEA00000000007972;
  LOBYTE(v7) = v0[8];
  *(inited + 520) = v3;
  *(inited + 528) = &off_2864FC498;
  *(inited + 496) = v7;
  strcpy((inited + 536), "numResidents");
  *(inited + 549) = 0;
  *(inited + 550) = -5120;
  *(inited + 576) = v6;
  *(inited + 584) = &off_2864FC4A8;
  v8 = *(v0 + 3);
  *(inited + 552) = *(v0 + 2);
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x8000000253D51800;
  *(inited + 632) = v6;
  *(inited + 640) = &off_2864FC4A8;
  *(inited + 608) = v8;
  strcpy((inited + 648), "wifiRSSIStatus");
  *(inited + 663) = -18;
  v9 = v0[32];
  *(inited + 688) = v6;
  *(inited + 696) = &off_2864FC4A8;
  *(inited + 664) = v9;
  *(inited + 704) = 0x4969466957736168;
  *(inited + 712) = 0xEB000000006F666ELL;
  LOBYTE(v6) = v0[33];
  *(inited + 744) = v3;
  *(inited + 752) = &off_2864FC498;
  *(inited + 720) = v6;
  v10 = sub_2532190FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F8, &unk_253D48D80);
  swift_arrayDestroy();
  return v10;
}

void *sub_2532791F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3CF0, &unk_253D4ADC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_253D4ACB0;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x8000000253D51590;
  *(v2 + 72) = MEMORY[0x277D837D0];
  *(v2 + 80) = &off_2864FC488;
  *(v2 + 48) = *v1;
  strcpy((v2 + 88), "numUniqueSSIDs");
  *(v2 + 103) = -18;
  v3 = MEMORY[0x277D83B88];
  *(v2 + 128) = MEMORY[0x277D83B88];
  *(v2 + 136) = &off_2864FC4A8;
  v4 = *(v1 + 152);
  *(v2 + 104) = *(v1 + 144);
  *(v2 + 144) = 0x7571696E556D756ELL;
  *(v2 + 152) = 0xEF73444953534265;
  *(v2 + 184) = v3;
  *(v2 + 192) = &off_2864FC4A8;
  *(v2 + 160) = v4;
  strcpy((v2 + 200), "numSharedSSIDs");
  *(v2 + 215) = -18;
  *(v2 + 240) = v3;
  *(v2 + 248) = &off_2864FC4A8;
  v5 = *(v1 + 168);
  *(v2 + 216) = *(v1 + 160);
  *(v2 + 256) = 0x65726168536D756ELL;
  *(v2 + 264) = 0xEF73444953534264;
  *(v2 + 296) = v3;
  *(v2 + 304) = &off_2864FC4A8;
  *(v2 + 272) = v5;
  *(v2 + 312) = 0xD000000000000023;
  *(v2 + 320) = 0x8000000253D515B0;
  *(v2 + 352) = v3;
  *(v2 + 360) = &off_2864FC4A8;
  v6 = *(v1 + 184);
  *(v2 + 328) = *(v1 + 176);
  *(v2 + 368) = 0xD000000000000023;
  *(v2 + 376) = 0x8000000253D515E0;
  *(v2 + 408) = v3;
  *(v2 + 416) = &off_2864FC4A8;
  *(v2 + 384) = v6;
  *(v2 + 424) = 0xD000000000000022;
  *(v2 + 432) = 0x8000000253D51610;
  LOBYTE(v6) = *(v1 + 192);
  v7 = MEMORY[0x277D839B0];
  *(v2 + 464) = MEMORY[0x277D839B0];
  *(v2 + 472) = &off_2864FC498;
  *(v2 + 440) = v6;
  *(v2 + 480) = 0xD00000000000001FLL;
  *(v2 + 488) = 0x8000000253D51640;
  LOBYTE(v6) = *(v1 + 193);
  *(v2 + 520) = v7;
  *(v2 + 528) = &off_2864FC498;
  *(v2 + 496) = v6;
  *(v2 + 536) = 0xD00000000000001FLL;
  *(v2 + 544) = 0x8000000253D51660;
  LOBYTE(v6) = *(v1 + 194);
  *(v2 + 576) = v7;
  *(v2 + 584) = &off_2864FC498;
  *(v2 + 552) = v6;
  *(v2 + 592) = 0xD00000000000001CLL;
  *(v2 + 600) = 0x8000000253D51680;
  LOBYTE(v6) = *(v1 + 195);
  *(v2 + 632) = v7;
  *(v2 + 640) = &off_2864FC498;
  *(v2 + 608) = v6;
  *(v2 + 648) = 0xD000000000000020;
  *(v2 + 656) = 0x8000000253D516A0;
  LOBYTE(v6) = *(v1 + 196);
  *(v2 + 688) = v7;
  *(v2 + 696) = &off_2864FC498;
  *(v2 + 664) = v6;
  *(v2 + 704) = 0xD00000000000001DLL;
  *(v2 + 712) = 0x8000000253D516D0;
  LOBYTE(v6) = *(v1 + 197);
  *(v2 + 744) = v7;
  *(v2 + 752) = &off_2864FC498;
  *(v2 + 720) = v6;
  *(v2 + 760) = 0xD00000000000001BLL;
  *(v2 + 768) = 0x8000000253D516F0;
  *(v2 + 800) = v3;
  *(v2 + 808) = &off_2864FC4A8;
  v8 = *(v1 + 208);
  *(v2 + 776) = *(v1 + 200);
  *(v2 + 816) = 0xD00000000000001ELL;
  *(v2 + 824) = 0x8000000253D51710;
  *(v2 + 856) = v3;
  *(v2 + 864) = &off_2864FC4A8;
  *(v2 + 832) = v8;
  *(v2 + 872) = 0xD00000000000001CLL;
  *(v2 + 880) = 0x8000000253D51730;
  v9 = *(v1 + 216);
  *(v2 + 912) = v3;
  *(v2 + 920) = &off_2864FC4A8;
  *(v2 + 888) = v9;
  *(v2 + 928) = 0xD000000000000014;
  *(v2 + 936) = 0x8000000253D51750;
  LOBYTE(v3) = *(v1 + 224);
  *(v2 + 968) = v7;
  *(v2 + 976) = &off_2864FC498;
  *(v2 + 944) = v3;
  *(v2 + 984) = 0xD000000000000024;
  *(v2 + 992) = 0x8000000253D51770;
  v10 = *(v1 + 225);
  *(v2 + 1024) = v7;
  *(v2 + 1032) = &off_2864FC498;
  *(v2 + 1000) = v10;
  sub_25322DBC8(v1, &v99);
  v11 = sub_2532190FC(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F8, &unk_253D48D80);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = *(v1 + 40);
  *&v101[216] = *(v1 + 24);
  v102 = v12;
  v93 = v1;
  v103 = *(v1 + 56);
  v13 = sub_253278EB0();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v94 = v13;

  v19 = 0;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = (*(v94 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    sub_2532074E4(*(v94 + 56) + 40 * v22, v101);
    v99 = v24;
    v100 = v25;
    *&v98[0] = 0x6C6C6F72746E6F63;
    *(&v98[0] + 1) = 0xEB000000005F7265;

    MEMORY[0x259C00940](v24, v25);
    v26 = v98[0];
    sub_2532074E4(v101, v98);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v11;
    v28 = sub_253217D84(v26, *(&v26 + 1));
    v30 = v11[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_68;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_253285700(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_253217D84(v26, *(&v26 + 1));
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_74;
      }

LABEL_16:
      v11 = v106;
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v28;
    sub_253286694();
    v28 = v38;
    v11 = v106;
    if (v34)
    {
LABEL_4:
      v20 = (v11[7] + 40 * v28);
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_2531FF170(v98, v20);

      goto LABEL_5;
    }

LABEL_17:
    v11[(v28 >> 6) + 8] |= 1 << v28;
    *(v11[6] + 16 * v28) = v26;
    sub_2531FF170(v98, v11[7] + 40 * v28);
    v36 = v11[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_69;
    }

    v11[2] = v37;
LABEL_5:
    v17 &= v17 - 1;
    sub_253206054(&v99, &unk_27F5A3CC0, &unk_253D4AD50);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  v39 = v93;
  v40 = *(v93 + 64);
  if (v40 != 2)
  {
    v107[0] = *(v93 + 72);
    *(v107 + 10) = *(v93 + 82);
    v106 = v40;
    v41 = sub_253278EB0();
    v42 = v41 + 64;
    v43 = 1 << *(v41 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v41 + 64);
    v46 = (v43 + 63) >> 6;
    v95 = v41;

    v47 = 0;
    while (v45)
    {
LABEL_32:
      v50 = __clz(__rbit64(v45)) | (v47 << 6);
      v51 = (*(v95 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      sub_2532074E4(*(v95 + 56) + 40 * v50, v101);
      v99 = v52;
      v100 = v53;
      *&v98[0] = 0x726F737365636361;
      *(&v98[0] + 1) = 0xEA00000000005F79;

      MEMORY[0x259C00940](v52, v53);
      v54 = v98[0];
      sub_2532074E4(v101, v98);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v11;
      v56 = sub_253217D84(v54, *(&v54 + 1));
      v58 = v11[2];
      v59 = (v57 & 1) == 0;
      v32 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v32)
      {
        goto LABEL_70;
      }

      v61 = v57;
      if (v11[3] >= v60)
      {
        if ((v55 & 1) == 0)
        {
          v65 = v56;
          sub_253286694();
          v56 = v65;
        }
      }

      else
      {
        sub_253285700(v60, v55);
        v56 = sub_253217D84(v54, *(&v54 + 1));
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_74;
        }
      }

      v11 = v104;
      if (v61)
      {
        v48 = (v104[7] + 40 * v56);
        __swift_destroy_boxed_opaque_existential_0(v48);
        sub_2531FF170(v98, v48);
      }

      else
      {
        v104[(v56 >> 6) + 8] |= 1 << v56;
        *(v11[6] + 16 * v56) = v54;
        sub_2531FF170(v98, v11[7] + 40 * v56);
        v63 = v11[2];
        v32 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v32)
        {
          goto LABEL_72;
        }

        v11[2] = v64;
      }

      v45 &= v45 - 1;
      sub_253206054(&v99, &unk_27F5A3CC0, &unk_253D4AD50);
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_66;
      }

      if (v49 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_32;
      }
    }

    v39 = v93;
  }

  v66 = *(v39 + 104);
  if (v66 == 2)
  {
    return v11;
  }

  v105[0] = *(v39 + 112);
  *(v105 + 10) = *(v39 + 122);
  v104 = v66;
  v67 = sub_253278EB0();
  v68 = v67 + 64;
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 64);
  v72 = (v69 + 63) >> 6;
  v96 = v67;

  v73 = 0;
  while (2)
  {
    if (v71)
    {
LABEL_53:
      v76 = __clz(__rbit64(v71)) | (v73 << 6);
      v77 = (*(v96 + 48) + 16 * v76);
      v78 = *v77;
      v79 = v77[1];
      sub_2532074E4(*(v96 + 56) + 40 * v76, v101);
      v99 = v78;
      v100 = v79;
      *&v98[0] = 0x5F7972616D697270;
      *(&v98[0] + 1) = 0xE800000000000000;

      MEMORY[0x259C00940](v78, v79);
      v80 = v98[0];
      sub_2532074E4(v101, v98);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v11;
      v82 = sub_253217D84(v80, *(&v80 + 1));
      v84 = v11[2];
      v85 = (v83 & 1) == 0;
      v32 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v32)
      {
        goto LABEL_71;
      }

      v87 = v83;
      if (v11[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v91 = v82;
          sub_253286694();
          v82 = v91;
          v11 = v97;
          if ((v87 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_253285700(v86, v81);
        v82 = sub_253217D84(v80, *(&v80 + 1));
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_74;
        }
      }

      if ((v87 & 1) == 0)
      {
LABEL_59:
        v11[(v82 >> 6) + 8] |= 1 << v82;
        *(v11[6] + 16 * v82) = v80;
        sub_2531FF170(v98, v11[7] + 40 * v82);
        v89 = v11[2];
        v32 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v32)
        {
          goto LABEL_73;
        }

        v11[2] = v90;
        goto LABEL_47;
      }

LABEL_46:
      v74 = (v11[7] + 40 * v82);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_2531FF170(v98, v74);

LABEL_47:
      v71 &= v71 - 1;
      sub_253206054(&v99, &unk_27F5A3CC0, &unk_253D4AD50);
      continue;
    }

    break;
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v72)
    {

      return v11;
    }

    v71 = *(v68 + 8 * v75);
    ++v73;
    if (v71)
    {
      v73 = v75;
      goto LABEL_53;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

double sub_253279D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_253217D84(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2532859C4();
      v10 = v12;
    }

    sub_2531FF150((*(v10 + 56) + 32 * v8), a3);
    sub_25327A000(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_253279DFC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_253217DFC(a1);
  if ((v4 & 1) == 0)
  {
    return 2;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_253285B50();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + v5);
  sub_25327A33C(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_253279E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_253217D84(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_253285CC0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_253CD01C8();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_25327A678(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_253CD01C8();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_25327A000(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253CD0E58() + 1) & ~v5;
    do
    {
      sub_253CD11C8();

      sub_253CD09A8();
      v10 = sub_253CD11E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_25327A1B0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253CD0E58() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_253CD0D78();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_25327A33C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253CD0E58() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_253CD0D78();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_25327A4C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253CD0E58() + 1) & ~v5;
    do
    {
      sub_253CD11C8();

      sub_253CD09A8();
      v9 = sub_253CD11E8();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

unint64_t sub_25327A678(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253CD0E58() + 1) & ~v5;
    while (1)
    {
      sub_253CD11C8();

      sub_253CD09A8();
      v9 = sub_253CD11E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_253CD01C8() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_25327A864(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_253217D84(a2, a3);
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
      sub_2532859C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_253283F54(v16, a4 & 1);
    v11 = sub_253217D84(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_253CD1158();
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

    return sub_2531FF150(a1, v22);
  }

  else
  {
    sub_25327AF94(v11, a2, a3, a1, v21);
  }
}

id sub_25327A9B4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_253217CF0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_253283F7C(v13, a3 & 1);
      v8 = sub_253217CF0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_253200644(0, &qword_281530E30, off_27971A270);
        result = sub_253CD1158();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_2532859EC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_25327AB30(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_253217DFC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2532841EC(v13, a3 & 1);
      result = sub_253217DFC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        result = sub_253CD1158();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_253285B50();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_25327AC9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_253217D84(a2, a3);
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
      sub_253284450(v16, a4 & 1);
      v11 = sub_253217D84(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_253CD1158();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_253285CAC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_25327AE14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_253217D84(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_253285CC0();
      goto LABEL_7;
    }

    sub_253284464(v15, a4 & 1);
    v26 = sub_253217D84(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_253CD01C8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_25327B044(v12, a2, a3, a1, v18);
}

_OWORD *sub_25327AF94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2531FF150(a4, (a5[7] + 32 * a1));
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

unint64_t sub_25327B000(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_25327B044(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_253CD01C8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t *sub_25327B0F4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_25327B458(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_25327FEE0(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x259C040E0](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_25327B294(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25327B6C8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_25327B638(v11, v6, a2, a1);

    MEMORY[0x259C040E0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_25327B458(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_253CD11C8();

          sub_253CD09A8();
          v13 = sub_253CD11E8();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_253CD1118() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_25327BAA4(v25, a2, v24, a4);
}

unint64_t *sub_25327B638(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25327B6C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25327B6C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_253CD11C8();

      sub_253CD09A8();
      v26 = sub_253CD11E8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_253CD1118() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25327BAA4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_253CD11C8();

      sub_253CD09A8();
      v39 = sub_253CD11E8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_253CD1118() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25327BAA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  result = sub_253CD0F98();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_253CD11C8();

    sub_253CD09A8();
    result = sub_253CD11E8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

id sub_25327BCC8@<X0>(void (**a1)(char *, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v177 = a3;
  v172 = a2;
  v154 = a4;
  v188 = sub_253CD02D8();
  v159 = *(v188 - 8);
  v5 = MEMORY[0x28223BE20](v188);
  v163 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v143 - v8;
  MEMORY[0x28223BE20](v7);
  v186 = &v143 - v10;
  v187 = sub_253CD0178();
  v185 = *(v187 - 8);
  v11 = MEMORY[0x28223BE20](v187);
  v155 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v143 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v143 - v15;
  v179 = sub_253CD02B8();
  v164 = *(v179 - 8);
  v17 = MEMORY[0x28223BE20](v179);
  v166 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v161 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD8, &unk_253D4AD60);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v143 - v21;
  v23 = sub_253CD01C8();
  v181 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v162 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v144 = &v143 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v173 = &v143 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v180 = &v143 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v174 = (&v143 - v33);
  MEMORY[0x28223BE20](v32);
  v35 = &v143 - v34;
  v165 = a1;
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v37 = result;
  v38 = [result nearbyVisibleDeviceInfos];

  if (!v38 || (v189 = 0, sub_253200644(0, &qword_27F5A3390, 0x277CD16D8), sub_253CD0A48(), v38, (v39 = v189) == 0))
  {

    v39 = MEMORY[0x277D84F90];
  }

  if (v39 >> 62)
  {
    goto LABEL_152;
  }

  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_253CD0ED8())
  {
    v145 = v16;
    v182 = v23;
    v183 = v9;
    v176 = v22;
    if (i)
    {
      v9 = 0;
      v178 = (v39 & 0xC000000000000001);
      v175 = v39 & 0xFFFFFFFFFFFFFF8;
      v184 = (v181 + 32);
      v41 = MEMORY[0x277D84F90];
      v170 = i;
      v171 = v39;
      while (1)
      {
        if (v178)
        {
          v42 = MEMORY[0x259C00F30](v9, v39);
        }

        else
        {
          if (v9 >= *(v175 + 16))
          {
            goto LABEL_144;
          }

          v42 = *(v39 + 8 * v9 + 32);
        }

        v43 = v42;
        v44 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v45 = [v42 idsIdentifierString];
        if (v45)
        {
          v22 = v35;
          v46 = v45;
          sub_253CD0968();

          v47 = [v43 mediaRouteIdString];
          if (v47)
          {
            v48 = v47;
            sub_253CD0968();
          }

          v49 = v174;
          sub_253CD0198();

          v50 = *v184;
          v51 = v49;
          v23 = v182;
          (*v184)(v35, v51, v182);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_25328330C(0, *(v41 + 2) + 1, 1, v41);
          }

          i = v170;
          v16 = *(v41 + 2);
          v52 = *(v41 + 3);
          if (v16 >= v52 >> 1)
          {
            v41 = sub_25328330C((v52 > 1), v16 + 1, 1, v41);
          }

          *(v41 + 2) = v16 + 1;
          v50(&v41[((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v16], v35, v23);
          v39 = v171;
        }

        else
        {
        }

        ++v9;
        if (v44 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_25:

    result = [v165 appleMediaAccessoryDiagnosticInfo];
    if (!result)
    {
      goto LABEL_155;
    }

    v53 = result;
    v54 = [result networkVisibleDeviceInfos];

    v22 = MEMORY[0x277D84F90];
    if (v54)
    {
      v189 = 0;
      sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
      sub_253CD0A48();

      if (v189)
      {
        v22 = v189;
      }
    }

    v39 = v22 >> 62 ? sub_253CD0ED8() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v168 = v41;
    if (!v39)
    {
      break;
    }

    v9 = 0;
    v178 = (v22 & 0xC000000000000001);
    v175 = v22 & 0xFFFFFFFFFFFFFF8;
    v184 = (v181 + 32);
    v55 = MEMORY[0x277D84F90];
    v171 = v22;
    v174 = v39;
    while (1)
    {
      if (v178)
      {
        v56 = MEMORY[0x259C00F30](v9, v22);
      }

      else
      {
        if (v9 >= *(v175 + 16))
        {
          goto LABEL_146;
        }

        v56 = *(v22 + 8 * v9 + 32);
      }

      v35 = v56;
      v57 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v58 = [v56 idsIdentifierString];
      if (v58)
      {
        v59 = v58;
        sub_253CD0968();

        v60 = [v35 mediaRouteIdString];
        if (v60)
        {
          v61 = v60;
          sub_253CD0968();

          v62 = v182;
        }

        else
        {
          v62 = v23;
        }

        v63 = v173;
        sub_253CD0198();

        v64 = *v184;
        (*v184)(v180, v63, v62);
        v23 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_25328330C(0, *(v55 + 2) + 1, 1, v55);
        }

        v22 = v171;
        v66 = *(v55 + 2);
        v65 = *(v55 + 3);
        v16 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v55 = sub_25328330C((v65 > 1), v66 + 1, 1, v55);
        }

        *(v55 + 2) = v16;
        v64(&v55[((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v66], v180, v62);
        v39 = v174;
      }

      else
      {
      }

      ++v9;
      if (v57 == v39)
      {
        goto LABEL_50;
      }
    }

LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_50:
  v67 = v55;

  v68 = v165;
  v69 = sub_25328D168(v165);
  v71 = v70;
  v22 = v72;
  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_156;
  }

  v73 = result;
  v74 = [result cloudInfo];

  v75 = v179;
  if (!v74)
  {
LABEL_57:
    v77 = 0;
    goto LABEL_58;
  }

  if (![v74 hasCloudState])
  {

    goto LABEL_57;
  }

  v76 = [v74 firstCloudImportComplete];

  if (v76)
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

LABEL_58:
  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_157;
  }

  v78 = result;
  v79 = [result wifiInfo];

  v153 = v79;
  if (v79)
  {
    v80 = [v79 networkRSSI];

    if (v80 >= -80)
    {
      if (v80 >= -60)
      {
        LODWORD(v79) = (v80 >> 31) & 3;
      }

      else
      {
        LODWORD(v79) = 2;
      }
    }

    else
    {
      LODWORD(v79) = 1;
    }
  }

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_158;
  }

  v81 = result;
  v180 = v69;
  v16 = [result numResidents];

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v82 = result;
  v149 = v16;
  v150 = v79;
  v151 = v77;
  v152 = v22;
  v167 = v67;
  v148 = [result numAppleMediaAccessories];

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_160:
    __break(1u);
    return result;
  }

  v83 = result;
  v147 = [result primaryResidentStatus];

  v84 = *(v164 + 7);
  v184 = (v164 + 56);
  v178 = v84;
  v84(v176, 1, 1, v75);
  v158 = v71;
  v85 = *(v71 + 16);
  v39 = v161;
  if (v85)
  {
    v86 = *(v164 + 2);
    v87 = v158 + ((v164[80] + 32) & ~v164[80]);
    v88 = *(v164 + 9);
    v89 = (v164 + 8);
    v16 = (v164 + 32);
    v90 = v179;
    v86(v161, v87, v179);
    while (1)
    {
      if (sub_253CD02A8())
      {
        v22 = v176;
        sub_253206054(v176, &qword_27F5A3CD8, &unk_253D4AD60);
        (*v16)(v22, v39, v90);
        v178(v22, 0, 1, v90);
      }

      else
      {
        (*v89)(v39, v90);
      }

      v87 += v88;
      if (!--v85)
      {
        break;
      }

      v86(v39, v87, v90);
    }
  }

  v35 = v180;
  v9 = *(v180 + 2);
  LODWORD(v178) = *MEMORY[0x277D0EFC8];
  v184 = v9;
  if (v9)
  {
    v91 = 0;
    LODWORD(v161) = 0;
    v156 = 0;
    v157 = 0;
    v174 = &v180[(*(v185 + 80) + 32) & ~*(v185 + 80)];
    v173 = (v185 + 16);
    v171 = (v164 + 48);
    v165 = (v164 + 16);
    v164 += 8;
    v160 = (v159 + 88);
    LODWORD(v175) = *MEMORY[0x277D0EFC0];
    v92 = (v159 + 8);
    v93 = (v159 + 104);
    v170 = (v185 + 8);
    v146 = v9 - 1;
    v94 = v145;
    v23 = v179;
LABEL_77:
    v22 = v91;
    while (1)
    {
      if (v22 >= *(v35 + 16))
      {
        goto LABEL_147;
      }

      (*(v185 + 16))(v94, v174 + *(v185 + 72) * v22, v187);
      v16 = sub_253CD0158();
      v96 = v95;
      v97 = v176;
      if ((*v171)(v176, 1, v23))
      {

        v98 = v183;
      }

      else
      {
        v99 = v166;
        (*v165)(v166, v97, v23);
        v100 = sub_253CD0238();
        v102 = v101;
        (*v164)(v99, v23);
        if (v16 == v100 && v96 == v102)
        {

          v98 = v183;
          v35 = v180;
        }

        else
        {
          v16 = sub_253CD1118();

          v98 = v183;
          v35 = v180;
          if ((v16 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v16 = v163;
        sub_253CD0168();
        v103 = (*v160)(v16, v188);
        if (v103 == v175)
        {
          v104 = 2;
        }

        else if (v103 == v178)
        {
          v104 = 1;
        }

        else
        {
          (*v92)(v163, v188);
          v104 = 3;
        }

        LODWORD(v161) = v104;
      }

LABEL_91:
      v105 = *(sub_253CD0128() + 16);

      if (v105 || (v39 = *(sub_253CD0138() + 16), , v39))
      {
        v106 = v186;
        v39 = v94;
        sub_253CD0168();
        v16 = *v93;
        v107 = v188;
        (*v93)(v98, v178, v188);
        v108 = sub_253CD02C8();
        v109 = *v92;
        (*v92)(v98, v107);
        v109(v106, v107);
        if (v108)
        {
          (*v170)(v39, v187);
          v91 = v22 + 1;
          v157 = 1;
          v110 = v146 == v22;
          v94 = v39;
          v23 = v179;
          v35 = v180;
          goto LABEL_100;
        }

        sub_253CD0168();
        (v16)(v98, v175, v107);
        v16 = sub_253CD02C8();
        v109(v98, v107);
        v109(v106, v107);
        (*v170)(v39, v187);
        v94 = v39;
        v23 = v179;
        v35 = v180;
        if (v16)
        {
          v91 = v22 + 1;
          v156 = 1;
          v110 = v146 == v22;
LABEL_100:
          v9 = v184;
          if (v110)
          {
            goto LABEL_104;
          }

          goto LABEL_77;
        }
      }

      else
      {
        (*v170)(v94, v187);
      }

      ++v22;
      v9 = v184;
      if (v184 == v22)
      {
        goto LABEL_104;
      }
    }
  }

  LODWORD(v161) = 0;
  v156 = 0;
  v157 = 0;
LABEL_104:
  v111 = 0;
  v179 = v185 + 16;
  v174 = (v159 + 8);
  v175 = v159 + 104;
  v173 = (v185 + 8);
  v23 = v187;
  v112 = v188;
  v113 = v183;
  do
  {
    v171 = v111;
    if (v9 == v111)
    {
      break;
    }

    v22 = v111;
    if (v111 >= *(v180 + 2))
    {
      goto LABEL_148;
    }

    v114 = v185;
    v39 = v169;
    (*(v185 + 16))(v169, &v180[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v111++], v23);
    v22 = v186;
    sub_253CD0168();
    (*v175)(v113, v178, v112);
    v35 = sub_253CD02C8();
    v16 = *v174;
    (*v174)(v113, v112);
    (v16)(v22, v112);
    v115 = *(v114 + 8);
    v9 = v184;
    v115(v39, v23);
  }

  while ((v35 & 1) == 0);
  v116 = 0;
  LODWORD(v178) = *MEMORY[0x277D0EFC0];
  v23 = v155;
  v35 = v180;
  do
  {
    v16 = v116;
    if (v9 == v116)
    {
      break;
    }

    if (v116 >= *(v35 + 16))
    {
      goto LABEL_149;
    }

    v117 = v185;
    v22 = v187;
    (*(v185 + 16))(v23, v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v116++, v187);
    sub_253CD0168();
    v118 = v183;
    (*v175)(v183, v178, v112);
    v39 = sub_253CD02C8();
    v119 = *v174;
    v120 = v118;
    v121 = v186;
    (*v174)(v120, v188);
    v119(v121, v188);
    v112 = v188;
    v122 = *(v117 + 8);
    v9 = v184;
    v122(v23, v22);
  }

  while ((v39 & 1) == 0);
  v123 = *(v168 + 2);
  if (v123)
  {
    v124 = 0;
    v125 = v182;
    v23 = &v168[(*(v181 + 80) + 32) & ~*(v181 + 80)];
    v35 = v181 + 8;
    v9 = v144;
    while (1)
    {
      if (v124 >= *(v168 + 2))
      {
        goto LABEL_150;
      }

      (*(v181 + 16))(v9, v23 + *(v181 + 72) * v124, v125);
      v39 = v9;
      v126 = sub_253CD01A8();
      v22 = v127;
      if (v177)
      {
        if (v126 == v172 && v127 == v177)
        {

          (*v35)(v9, v182);
LABEL_125:
          v128 = 1;
LABEL_126:
          v9 = v184;
          goto LABEL_127;
        }

        v39 = sub_253CD1118();

        (*v35)(v9, v182);
        if (v39)
        {
          goto LABEL_125;
        }
      }

      else
      {
        (*v35)(v9, v125);
      }

      if (v123 == ++v124)
      {
        v128 = 0;
        goto LABEL_126;
      }
    }
  }

  v128 = 0;
LABEL_127:

  v35 = *(v167 + 2);
  v22 = v162;
  if (v35)
  {
    LODWORD(v188) = v128;
    v23 = 0;
    v129 = &v167[(*(v181 + 80) + 32) & ~*(v181 + 80)];
    v130 = (v181 + 8);
    while (1)
    {
      if (v23 >= *(v167 + 2))
      {
        goto LABEL_151;
      }

      v131 = v182;
      v39 = v22;
      (*(v181 + 16))(v22, v129 + *(v181 + 72) * v23, v182);
      v132 = sub_253CD01A8();
      if (v177)
      {
        if (v132 == v172 && v133 == v177)
        {

          (*v130)(v162, v182);
LABEL_140:
          v134 = 1;
LABEL_141:
          LOBYTE(v128) = v188;
          goto LABEL_142;
        }

        v39 = sub_253CD1118();

        v22 = v162;
        (*v130)(v162, v182);
        if (v39)
        {
          goto LABEL_140;
        }
      }

      else
      {
        (*v130)(v22, v131);
      }

      if (v35 == ++v23)
      {
        v134 = 0;
        goto LABEL_141;
      }
    }
  }

  v134 = 0;
LABEL_142:
  v135 = v9 != v16;
  v136 = v9 != v171;
  v137 = v153 != 0;

  v138 = v156 & 1;
  v139 = v157 & 1;
  v140 = v147 == 2;
  result = sub_253206054(v176, &qword_27F5A3CD8, &unk_253D4AD60);
  v141 = v154;
  *v154 = v136;
  v141[1] = v135;
  v141[2] = v161;
  v141[3] = v151;
  v141[4] = v139;
  v141[5] = v138;
  v141[6] = v128;
  v141[7] = v134;
  v141[8] = v140;
  v142 = v149;
  *(v141 + 2) = v148;
  *(v141 + 3) = v142;
  v141[32] = v150;
  v141[33] = v137;
  return result;
}