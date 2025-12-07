uint64_t sub_270FDE330@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_270FDE384()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_270FDE3BC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270FDE408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270FDE440()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270FDE48C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270FDE4C4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270FDE514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void AppConfigService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

uint64_t sub_270FDE64C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FDE774;

  return v6(v2, v3);
}

uint64_t sub_270FDE774()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall AppConfigService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t AppConfigService.updateDaemonDefault(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return MEMORY[0x2822009F8](sub_270FDE8F4, 0, 0);
}

uint64_t sub_270FDE8F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v5[3];
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_2(v5, v6);
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  v8 = *(v7 + 48);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_270FDEA7C;

  return (v11)(803, v0 + 2, &type metadata for DaemonDefault, &protocol witness table for DaemonDefault, v6, v7);
}

uint64_t sub_270FDEA7C()
{
  v2 = *v1;
  v2[12] = v0;

  sub_270FDEDB4(v2[2], v2[3], v2[4], v2[5]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FDEBBC, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t AppConfigService.toggleDebugMenu(isOn:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_270FDEBF8, 0, 0);
}

uint64_t sub_270FDEBF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  if (v2 == 1)
  {
    v5[1] = sub_270FDE774;
    v6 = 801;
  }

  else
  {
    v5[1] = sub_270FDEEB0;
    v6 = 802;
  }

  return v8(v6, v3, v4);
}

_OWORD *sub_270FDED58(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_270FDEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_270FDEE0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_270FDEE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270FDEEDC(uint64_t a1)
{
  v2 = sub_270FDFAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDEF18(uint64_t a1)
{
  v2 = sub_270FDFAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270FDEF54()
{
  v1 = *v0;
  v2 = 0x6C69617641746F6ELL;
  v3 = 0x656C6C6174736E69;
  if (v1 != 3)
  {
    v3 = 0x6F54656C62616E75;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_270FDF014@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270FDFBB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270FDF048(uint64_t a1)
{
  v2 = sub_270FDF958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDF084(uint64_t a1)
{
  v2 = sub_270FDF958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FDF0C0(uint64_t a1)
{
  v2 = sub_270FDFA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDF0FC(uint64_t a1)
{
  v2 = sub_270FDFA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FDF138(uint64_t a1)
{
  v2 = sub_270FDFA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDF174(uint64_t a1)
{
  v2 = sub_270FDFA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FDF1B0(uint64_t a1)
{
  v2 = sub_270FDFAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDF1EC(uint64_t a1)
{
  v2 = sub_270FDFAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FDF228(uint64_t a1)
{
  v2 = sub_270FDF9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FDF264(uint64_t a1)
{
  v2 = sub_270FDF9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppInstallationResult.hashValue.getter(unsigned __int8 a1)
{
  sub_270FF8D98();
  MEMORY[0x2743BA420](a1);
  return sub_270FF8DC8();
}

uint64_t sub_270FDF310()
{
  v1 = *v0;
  sub_270FF8D98();
  MEMORY[0x2743BA420](v1);
  return sub_270FF8DC8();
}

uint64_t sub_270FDF358(uint64_t a1)
{
  v2 = *v1;
  sub_270FF8D98();
  MEMORY[0x2743BA420](v2);
  return sub_270FF8DC8();
}

uint64_t AppInstallationResult.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870D88, &qword_270FF93B0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20]();
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870D90, &qword_270FF93B8);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20]();
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870D98, &qword_270FF93C0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20]();
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870DA0, &qword_270FF93C8);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870DA8, &qword_270FF93D0);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870DB0, &qword_270FF93D8);
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20]();
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FDF958();
  sub_270FF8DE8();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_270FDFAA8();
      v28 = v41;
      sub_270FF8CD8();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_270FDFAFC();
    v25 = v41;
    sub_270FF8CD8();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_270FDFA54();
    v26 = v29;
    v25 = v41;
    sub_270FF8CD8();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_270FDFA00();
    v19 = v32;
    v20 = v41;
    sub_270FF8CD8();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_270FDF9AC();
    v19 = v35;
    v20 = v41;
    sub_270FF8CD8();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
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

unint64_t sub_270FDF958()
{
  result = qword_280870DB8;
  if (!qword_280870DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DB8);
  }

  return result;
}

unint64_t sub_270FDF9AC()
{
  result = qword_280870DC0;
  if (!qword_280870DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DC0);
  }

  return result;
}

unint64_t sub_270FDFA00()
{
  result = qword_280870DC8;
  if (!qword_280870DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DC8);
  }

  return result;
}

unint64_t sub_270FDFA54()
{
  result = qword_280870DD0;
  if (!qword_280870DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DD0);
  }

  return result;
}

unint64_t sub_270FDFAA8()
{
  result = qword_280870DD8;
  if (!qword_280870DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DD8);
  }

  return result;
}

unint64_t sub_270FDFAFC()
{
  result = qword_280870DE0;
  if (!qword_280870DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DE0);
  }

  return result;
}

uint64_t sub_270FDFB68@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_270FDFD84(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_270FDFBB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000270FFB7A0 == a2;
  if (v3 || (sub_270FF8D28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270FFB7C0 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69617641746F6ELL && a2 == 0xEC000000656C6261 || (sub_270FF8D28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064 || (sub_270FF8D28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F54656C62616E75 && a2 == 0xEF6C6C6174736E49)
  {

    return 4;
  }

  else
  {
    v6 = sub_270FF8D28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_270FDFD84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E58, &qword_270FF99A8);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20]();
  v50 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E60, &qword_270FF99B0);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x28223BE20]();
  v52 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E68, &qword_270FF99B8);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20]();
  v51 = &v37[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E70, &qword_270FF99C0);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20]();
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E78, &qword_270FF99C8);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E80, &qword_270FF99D0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_2(a1, v19);
  sub_270FDF958();
  v20 = v53;
  sub_270FF8DD8();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = sub_270FF8CC8();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = sub_270FF8C28();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870E88, &qword_270FF99D8);
    *v30 = &type metadata for AppInstallationResult;
    v31 = v40;
    sub_270FF8C88();
    sub_270FF8C18();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_270FDFAA8();
      v34 = v40;
      sub_270FF8C78();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_270FDFAFC();
      v34 = v40;
      sub_270FF8C78();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_270FDFA54();
      v33 = v40;
      sub_270FF8C78();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_270FDFA00();
        sub_270FF8C78();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_270FDF9AC();
        v35 = v50;
        sub_270FF8C78();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v38;
}

unint64_t sub_270FE0480()
{
  result = qword_280870DE8;
  if (!qword_280870DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DE8);
  }

  return result;
}

uint64_t sub_270FE04F8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_270FE0588(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_270FE069C()
{
  result = qword_280870DF0;
  if (!qword_280870DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DF0);
  }

  return result;
}

unint64_t sub_270FE06F4()
{
  result = qword_280870DF8;
  if (!qword_280870DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870DF8);
  }

  return result;
}

unint64_t sub_270FE074C()
{
  result = qword_280870E00;
  if (!qword_280870E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E00);
  }

  return result;
}

unint64_t sub_270FE07A4()
{
  result = qword_280870E08;
  if (!qword_280870E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E08);
  }

  return result;
}

unint64_t sub_270FE07FC()
{
  result = qword_280870E10;
  if (!qword_280870E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E10);
  }

  return result;
}

unint64_t sub_270FE0854()
{
  result = qword_280870E18;
  if (!qword_280870E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E18);
  }

  return result;
}

unint64_t sub_270FE08AC()
{
  result = qword_280870E20;
  if (!qword_280870E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E20);
  }

  return result;
}

unint64_t sub_270FE0904()
{
  result = qword_280870E28;
  if (!qword_280870E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E28);
  }

  return result;
}

unint64_t sub_270FE095C()
{
  result = qword_280870E30;
  if (!qword_280870E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E30);
  }

  return result;
}

unint64_t sub_270FE09B4()
{
  result = qword_280870E38;
  if (!qword_280870E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E38);
  }

  return result;
}

unint64_t sub_270FE0A0C()
{
  result = qword_280870E40;
  if (!qword_280870E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E40);
  }

  return result;
}

unint64_t sub_270FE0A64()
{
  result = qword_280870E48;
  if (!qword_280870E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E48);
  }

  return result;
}

unint64_t sub_270FE0ABC()
{
  result = qword_280870E50;
  if (!qword_280870E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E50);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t Platform.hashValue.getter(char a1)
{
  sub_270FF8D98();
  MEMORY[0x2743BA420](a1 & 1);
  return sub_270FF8DC8();
}

unint64_t sub_270FE0C28()
{
  result = qword_280870E90;
  if (!qword_280870E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BundleIdentifierConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BundleIdentifierConstants(_WORD *result, int a2, int a3)
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

uint64_t TransportError.hashValue.getter()
{
  v1 = *v0;
  sub_270FF8D98();
  MEMORY[0x2743BA420](v1);
  return sub_270FF8DC8();
}

unint64_t sub_270FE1014()
{
  result = qword_280870E98;
  if (!qword_280870E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870E98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransportError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_270FE11C8()
{
  v0 = sub_270FF8A48();
  __swift_allocate_value_buffer(v0, qword_280874550);
  __swift_project_value_buffer(v0, qword_280874550);
  return sub_270FF8A38();
}

void sub_270FE1238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_270FE1354(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_270FF8A28();
  v7 = sub_270FF8B78();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_270FE16A0(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_270FDD000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2743BA860](v9, -1, -1);
    MEMORY[0x2743BA860](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_270FE1354(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_270FE1CA8();
  v8 = (sub_270FF8BB8() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_270FE15B0(46, 0xE100000000000000, a1, a2);
  v10 = sub_270FF8AE8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x2743BA110](v10, v12, v14, v16);
  v19 = v18;

  sub_270FE15B0(40, 0xE100000000000000, a3, a4);
  v20 = sub_270FF8AE8();
  v21 = MEMORY[0x2743BA110](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_270FF8D18();
  MEMORY[0x2743BA130](v25);

  MEMORY[0x2743BA130](8285, 0xE200000000000000);
  MEMORY[0x2743BA130](v17, v19);

  MEMORY[0x2743BA130](14906, 0xE200000000000000);
  MEMORY[0x2743BA130](v21, v23);

  return 91;
}

unint64_t sub_270FE15B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_270FF8AD8() != a1 || v9 != a2)
  {
    v10 = sub_270FF8D28();

    if (v10)
    {
      return v8;
    }

    v8 = sub_270FF8AA8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_270FE16A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270FE176C(v11, 0, 0, 1, a1, a2);
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
    sub_270FE1C48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_270FE176C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_270FE1878(a5, a6);
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
    result = sub_270FF8C38();
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

void *sub_270FE1878(uint64_t a1, unint64_t a2)
{
  v3 = sub_270FE18C4(a1, a2);
  sub_270FE19F4(&unk_2880F6B38);
  return v3;
}

void *sub_270FE18C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_270FE1AE0(v5, 0);
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

  result = sub_270FF8C38();
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
        v10 = sub_270FF8AC8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270FE1AE0(v10, 0);
        result = sub_270FF8BF8();
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

uint64_t sub_270FE19F4(uint64_t result)
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

  result = sub_270FE1B54(result, v11, 1, v3);
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

void *sub_270FE1AE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870EA0, &unk_270FF9BD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270FE1B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870EA0, &unk_270FF9BD0);
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

uint64_t sub_270FE1C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_270FE1CA8()
{
  result = qword_280870EA8;
  if (!qword_280870EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EA8);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void PushNotificationService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall PushNotificationService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t PushNotificationService.registerChannel(channelID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_270FE1EF8, 0, 0);
}

uint64_t sub_270FE1EF8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_270FE2058;
  v7 = MEMORY[0x277D837D0];

  return v9(601, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_270FE2058()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FE218C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t PushNotificationService.unregisterChannel(channelID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_270FE21C8, 0, 0);
}

uint64_t sub_270FE21C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_270FE2328;
  v7 = MEMORY[0x277D837D0];

  return v9(602, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_270FE2328()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FE246C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

VisionCompanionServices::DaemonDefault __swiftcall DaemonDefault.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t DaemonDefault.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870EB0, "|'");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FE267C();
  sub_270FF8DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_270FF8CA8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_270FF8CA8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_270FE267C()
{
  result = qword_280870EB8;
  if (!qword_280870EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EB8);
  }

  return result;
}

uint64_t sub_270FE26D0()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_270FE2700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_270FF8D28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_270FF8D28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_270FE27E4(uint64_t a1)
{
  v2 = sub_270FE267C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FE2820(uint64_t a1)
{
  v2 = sub_270FE267C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DaemonDefault.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870EC0, &qword_270FF9C48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FE267C();
  sub_270FF8DE8();
  v12 = 0;
  v8 = v10[3];
  sub_270FF8CF8();
  if (!v8)
  {
    v11 = 1;
    sub_270FF8CF8();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_270FE2A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_270FE2A74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_270FE2AD8()
{
  result = qword_280870EC8;
  if (!qword_280870EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EC8);
  }

  return result;
}

unint64_t sub_270FE2B30()
{
  result = qword_280870ED0;
  if (!qword_280870ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870ED0);
  }

  return result;
}

unint64_t sub_270FE2B88()
{
  result = qword_280870ED8;
  if (!qword_280870ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870ED8);
  }

  return result;
}

uint64_t VisionCompanionFeatures.isEnabled.getter()
{
  v2[3] = &type metadata for VisionCompanionFeatures;
  v2[4] = sub_270FE2C54();
  v0 = sub_270FF8A18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_270FE2C54()
{
  result = qword_280870EE0;
  if (!qword_280870EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EE0);
  }

  return result;
}

uint64_t VisionCompanionFeatures.hashValue.getter()
{
  sub_270FF8D98();
  MEMORY[0x2743BA420](0);
  return sub_270FF8DC8();
}

uint64_t sub_270FE2D24()
{
  sub_270FF8D98();
  MEMORY[0x2743BA420](0);
  return sub_270FF8DC8();
}

uint64_t sub_270FE2D90(uint64_t a1)
{
  sub_270FF8D98();
  MEMORY[0x2743BA420](0);
  return sub_270FF8DC8();
}

unint64_t sub_270FE2DD4()
{
  result = qword_280870EE8;
  if (!qword_280870EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EE8);
  }

  return result;
}

uint64_t TransportDispatchService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TransportDispatchService.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_270FE2ED8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_270FE2FC4;

  return v6();
}

uint64_t sub_270FE2FC4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_270FE30F4, 0, 0);
  }
}

uint64_t sub_270FE30F4()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for VoidTransportSerializable;
  *(v1 + 32) = &off_2880F72B8;
  return (*(v0 + 8))();
}

uint64_t sub_270FE3124(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 80) = a1;
  return MEMORY[0x2822009F8](sub_270FE3150, v5, 0);
}

uint64_t sub_270FE3150()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FF9FC8, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v9;
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_270FE3254(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = sub_270FF8BA8();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[7] = v9;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_270FE33BC;

  return v12(v9);
}

uint64_t sub_270FE33BC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_270FE3600;
  }

  else
  {
    v2 = sub_270FE34D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE34D0()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    (*(v0[6] + 8))(v1, v0[5]);
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    v5 = v0[4];
    v6 = v0[2];
    v6[3] = v2;
    v6[4] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_270FE3600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270FE3664(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 80) = a1;
  return MEMORY[0x2822009F8](sub_270FE3690, v5, 0);
}

uint64_t sub_270FE3690()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FF9FB8, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v9;
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_270FE3794(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  v9 = sub_270FF8BA8();
  *(v6 + 56) = v9;
  *(v6 + 64) = *(v9 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *(a5 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_270FE38C0, 0, 0);
}

uint64_t sub_270FE38C0()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v3 + 16);
  sub_270FE5D14(v1, v2);
  v5(v1, v2, v4, v3);
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[5];
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    (*(v0[8] + 8))(v6, v0[7]);
    sub_270FE57F4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[3];
    (*(v7 + 32))(v0[11], v6, v8);
    v15 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_270FE3B00;
    v14 = v0[11];

    return v15(v14);
  }
}

uint64_t sub_270FE3B00()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_270FE3CB8;
  }

  else
  {
    v2 = sub_270FE3C14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE3C14()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  *(v4 + 24) = &type metadata for VoidTransportSerializable;
  *(v4 + 32) = &off_2880F72B8;
  (*(v1 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_270FE3CB8()
{
  (*(v0[10] + 8))(v0[11], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270FE3D40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 80) = a1;
  return MEMORY[0x2822009F8](sub_270FE3D6C, v5, 0);
}

uint64_t sub_270FE3D6C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FF9FA8, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v9;
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_270FE3E70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  v8 = sub_270FF8BA8();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *a2;

  return MEMORY[0x2822009F8](sub_270FE3F48, 0, 0);
}

uint64_t sub_270FE3F48()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v3 + 16);
  sub_270FE5D14(v1, v2);
  v5(v1, v2, v4, v3);
  v9 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_270FE40E8;
  v7 = v0[9];

  return v9(v7);
}

uint64_t sub_270FE40E8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_270FE4294;
  }

  else
  {
    v2 = sub_270FE41FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE41FC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  *(v4 + 24) = &type metadata for VoidTransportSerializable;
  *(v4 + 32) = &off_2880F72B8;
  (*(v1 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_270FE4294()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270FE4310(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a2;
  *(v8 + 96) = a1;
  return MEMORY[0x2822009F8](sub_270FE4340, v7, 0);
}

uint64_t sub_270FE4340()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 96);
  v5 = swift_allocObject();
  v6 = *(v0 + 72);
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FF9F98, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v10;
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_270FE4448(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  v11 = sub_270FF8BA8();
  *(v8 + 72) = v11;
  *(v8 + 80) = *(v11 - 8);
  *(v8 + 88) = swift_task_alloc();
  v12 = sub_270FF8BA8();
  *(v8 + 96) = v12;
  *(v8 + 104) = *(v12 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = *(a5 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *a2;

  return MEMORY[0x2822009F8](sub_270FE45D8, 0, 0);
}

uint64_t sub_270FE45D8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[5];
  v5 = *(v3 + 16);
  sub_270FE5D14(v1, v2);
  v5(v1, v2, v4, v3);
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[5];
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    (*(v0[13] + 8))(v6, v0[12]);
    sub_270FE57F4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[3];
    (*(v7 + 32))(v0[16], v6, v8);
    v16 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_270FE482C;
    v14 = v0[16];
    v15 = v0[11];

    return v16(v15, v14);
  }
}

uint64_t sub_270FE482C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_270FE4ACC;
  }

  else
  {
    v2 = sub_270FE4940;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE4940()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[15];
  v5 = v0[16];
  if (v4 == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[2];
    (*(v6 + 8))(v0[16], v0[5]);
    (*(v8 + 8))(v1, v7);
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
  }

  else
  {
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v11);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_270FE4ACC()
{
  (*(v0[15] + 8))(v0[16], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270FE4B68(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a2;
  *(v8 + 96) = a1;
  return MEMORY[0x2822009F8](sub_270FE4B98, v7, 0);
}

uint64_t sub_270FE4B98()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 96);
  v5 = swift_allocObject();
  v6 = *(v0 + 72);
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FF9F88, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v10;
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_270FE4CA0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  v10 = sub_270FF8BA8();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  v11 = sub_270FF8BA8();
  *(v8 + 96) = v11;
  *(v8 + 104) = *(v11 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = *a2;

  return MEMORY[0x2822009F8](sub_270FE4DE0, 0, 0);
}

uint64_t sub_270FE4DE0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[7];
  v4 = v0[5];
  v5 = *(v3 + 16);
  sub_270FE5D14(v1, v2);
  v5(v1, v2, v4, v3);
  v10 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_270FE4F94;
  v7 = v0[14];
  v8 = v0[11];

  return v10(v8, v7);
}

uint64_t sub_270FE4F94()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_270FE5230;
  }

  else
  {
    v2 = sub_270FE50A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE50A8()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[2];
    (*(v6 + 8))(v0[14], v0[12]);
    (*(v9 + 8))(v1, v8);
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  else
  {
    v11 = v0[8];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_270FE5230()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270FE52B8(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 144) = a1;
  return MEMORY[0x2822009F8](sub_270FE52E0, v3, 0);
}

uint64_t sub_270FE52E0()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_270FE5788(*(v0 + 144)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    *(v0 + 120) = *(v5 + 8);
    *(v0 + 80) = *(v0 + 96);

    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_270FE5494;

    return v11(v0 + 16, v0 + 80);
  }

  else
  {
    sub_270FE57F4();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_270FE5494()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = sub_270FE56F8;
  }

  else
  {
    v4 = sub_270FE55DC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_270FE55DC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_2(v0 + 2, v0[5]);
    v4 = (*(v3 + 8))(v1, v3);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v6 = v0[1];

      return v6();
    }

    v10 = v4;
    v11 = v5;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v9 = v11;
    v8 = v10;
  }

  else
  {
    sub_270FE5848((v0 + 2));
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v8, v9);
}

uint64_t TransportDispatchService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TransportDispatchService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_270FE5788(uint64_t a1)
{
  v1 = a1;
  sub_270FF8D98();
  sub_270FF8DB8();
  v2 = sub_270FF8DC8();

  return sub_270FE6114(v1, v2);
}

unint64_t sub_270FE57F4()
{
  result = qword_280870EF0;
  if (!qword_280870EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870EF0);
  }

  return result;
}

uint64_t sub_270FE5848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870EF8, &qword_270FF9ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TransportDispatchService.dispatch(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_270FE5A38;

  return v10(a1, a2, a3);
}

uint64_t sub_270FE5A38(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_270FE5B44(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_270FE5C20;

  return sub_270FE4CA0(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_270FE5C20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270FE5D14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270FE5D28(a1, a2);
  }

  return a1;
}

uint64_t sub_270FE5D28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

uint64_t sub_270FE5DE0(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_270FE6180;

  return sub_270FE4448(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_270FE5EBC(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_270FE6180;

  return sub_270FE3E70(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_270FE5F84(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_270FE6180;

  return sub_270FE3794(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_270FE604C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_270FE6180;

  return sub_270FE3254(a1, a2, v9, v8, v6, v7);
}

unint64_t sub_270FE6114(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_270FE6194(uint64_t a1)
{
  v2 = sub_270FE6348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FE61D0(uint64_t a1)
{
  v2 = sub_270FE6348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FE6234(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F00, &qword_270FFA060);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FE6348();
  sub_270FF8DE8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_270FE6348()
{
  result = qword_280870F08;
  if (!qword_280870F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F08);
  }

  return result;
}

unint64_t sub_270FE63B0()
{
  result = qword_280870F10;
  if (!qword_280870F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F10);
  }

  return result;
}

unint64_t sub_270FE6408()
{
  result = qword_280870F18;
  if (!qword_280870F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F18);
  }

  return result;
}

uint64_t TVContentRequestIdentifier.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TVContentRequestIdentifier.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

VisionCompanionServices::TVContentRequestIdentifier __swiftcall TVContentRequestIdentifier.init(deviceIdentifier:contentIdentifier:)(Swift::String deviceIdentifier, Swift::String contentIdentifier)
{
  *v2 = deviceIdentifier;
  v2[1] = contentIdentifier;
  result.contentIdentifier = contentIdentifier;
  result.deviceIdentifier = deviceIdentifier;
  return result;
}

uint64_t TVContentRequestIdentifier.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x2743BA130](58, 0xE100000000000000);
  MEMORY[0x2743BA130](v1, v2);
  return v4;
}

unint64_t TVContentRequestIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_270FF8C08();

  MEMORY[0x2743BA130](v1, v2);
  MEMORY[0x2743BA130](0xD000000000000015, 0x8000000270FFB9C0);
  MEMORY[0x2743BA130](v3, v4);
  MEMORY[0x2743BA130](41, 0xE100000000000000);
  return 0xD00000000000002DLL;
}

uint64_t static TVContentRequestIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_270FF8D28(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_270FF8D28();
    }
  }

  return result;
}

unint64_t sub_270FE6698()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_270FE66D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000270FFB9E0 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270FFBA00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_270FF8D28();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_270FE67B4(uint64_t a1)
{
  v2 = sub_270FE6AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FE67F0(uint64_t a1)
{
  v2 = sub_270FE6AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FE6830(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_270FF8D28(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_270FF8D28();
    }
  }

  return result;
}

uint64_t sub_270FE68D4@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x2743BA130](58, 0xE100000000000000);
  result = MEMORY[0x2743BA130](v3, v4);
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t TVContentRequestIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F20, &qword_270FFA120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FE6AD0();
  sub_270FF8DE8();
  v12 = 0;
  v8 = v10[3];
  sub_270FF8CF8();
  if (!v8)
  {
    v11 = 1;
    sub_270FF8CF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_270FE6AD0()
{
  result = qword_280870F28;
  if (!qword_280870F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F28);
  }

  return result;
}

uint64_t TVContentRequestIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F30, &qword_270FFA128);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FE6AD0();
  sub_270FF8DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_270FF8CA8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_270FF8CA8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_270FE6D84()
{
  result = qword_280870F38;
  if (!qword_280870F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F38);
  }

  return result;
}

unint64_t sub_270FE6DDC()
{
  result = qword_280870F40;
  if (!qword_280870F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F40);
  }

  return result;
}

unint64_t sub_270FE6E34()
{
  result = qword_280870F48;
  if (!qword_280870F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F48);
  }

  return result;
}

uint64_t sub_270FE6E88(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_270FE6ECC()
{
  if (*(v0 + 40) != 2)
  {
    *(v0 + 40) = 2;
    *(v0 + 32) = 0;
    swift_unknownObjectRelease();
    v1 = *(v0 + 24);
    [v1 setInterruptionHandler_];
    [v1 setInvalidationHandler_];

    [v1 invalidate];
  }
}

uint64_t sub_270FE6F5C()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_270FE7000(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40) == 1)
  {
    v3 = *(v2 + 32);
    if (!v3)
    {
      v4 = *(v2 + 24);
      aBlock[4] = sub_270FEC108;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_270FE73D8;
      aBlock[3] = &block_descriptor_94;
      v5 = _Block_copy(aBlock);

      v6 = [v4 remoteObjectProxyWithErrorHandler_];
      _Block_release(v5);
      sub_270FF8BC8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F80, &qword_270FFA5C8);
      if (swift_dynamicCast())
      {
        v3 = v9;
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 32) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
  }

  else
  {
    sub_270FE57F4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  return v3;
}

void sub_270FE719C(void *a1, uint64_t a2)
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v4 = sub_270FF8A48();
  __swift_project_value_buffer(v4, qword_280874550);

  MEMORY[0x2743BA790](a1);
  oslog = sub_270FF8A28();
  v5 = sub_270FF8B68();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    v8 = [*(a2 + 24) serviceName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_270FF8A68();
      v12 = v11;
    }

    else
    {
      v12 = 0xE900000000000029;
      v10 = 0x6E776F6E6B6E7528;
    }

    v13 = sub_270FE16A0(v10, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v14 = sub_270FF8D48();
    v16 = sub_270FE16A0(v14, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_270FDD000, oslog, v5, "Error on remote object proxy from %{public}s: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743BA860](v7, -1, -1);
    MEMORY[0x2743BA860](v6, -1, -1);
  }

  else
  {
  }
}

void sub_270FE73D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_270FE7460()
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_270FF8A48();
  __swift_project_value_buffer(v2, qword_280874550);
  sub_270FE1238(0xD000000000000060, 0x8000000270FFBAB0, 0x6574617669746361, 0xEA00000000002928);
  if (!*(v1 + 40))
  {
    v3 = *(v0[8] + 24);
    [v3 setExportedObject_];
    v0[6] = sub_270FEC3A4;
    v0[7] = 0;
    v4 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_270FE6E88;
    v0[5] = &block_descriptor_48;
    v5 = _Block_copy(v0 + 2);
    [v3 setInterruptionHandler_];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_270FEC3A8;
    v0[7] = v6;
    v0[2] = v4;
    v0[3] = 1107296256;
    v0[4] = sub_270FE6E88;
    v0[5] = &block_descriptor_51;
    v7 = _Block_copy(v0 + 2);

    [v3 setInvalidationHandler_];
    _Block_release(v7);
    [v3 activate];
    *(v1 + 40) = 1;
  }

  v8 = v0[1];

  return v8();
}

void sub_270FE7690()
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v0 = sub_270FF8A48();
  __swift_project_value_buffer(v0, qword_280874550);
  oslog = sub_270FF8A28();
  v1 = sub_270FF8B68();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_270FDD000, oslog, v1, "XPC connection interrupted", v2, 2u);
    MEMORY[0x2743BA860](v2, -1, -1);
  }
}

uint64_t sub_270FE7778(uint64_t a1)
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v1 = sub_270FF8A48();
  __swift_project_value_buffer(v1, qword_280874550);
  v2 = sub_270FF8A28();
  v3 = sub_270FF8B78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_270FDD000, v2, v3, "XPC connection invalidated", v4, 2u);
    MEMORY[0x2743BA860](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_270FE6ECC();
  }

  return result;
}

uint64_t sub_270FE788C(int a1)
{
  *(v2 + 160) = v1;
  *(v2 + 184) = a1;
  return MEMORY[0x2822009F8](sub_270FE78B0, 0, 0);
}

uint64_t sub_270FE78B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_270FE7000(a1, a2);
  *(v2 + 168) = v3;
  if (v3)
  {
    v5 = *(v2 + 184);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_270FE7A40;
    v6 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_270FEC3BC;
    *(v2 + 104) = &block_descriptor_44;
    *(v2 + 112) = v6;
    [swift_unknownObjectRetain() transport:v5 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_270FE7A40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_270FE7BC8;
  }

  else
  {
    v2 = sub_270FE7B50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE7B50()
{
  swift_unknownObjectRelease();
  sub_270FEB424(v0[18], v0[19]);
  swift_unknownObjectRelease();
  v1 = v0[1];

  return v1();
}

uint64_t sub_270FE7BC8(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_270FE7C40(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 240) = a2;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  v6 = sub_270FF8BA8();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270FE7D0C, 0, 0);
}

uint64_t sub_270FE7D0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_270FE7000(a1, a2);
  *(v2 + 216) = v3;
  *(v2 + 224) = 0;
  if (v3)
  {
    v6 = *(v2 + 240);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_270FE801C;
    v7 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_270FEC3BC;
    *(v2 + 104) = &block_descriptor_38;
    *(v2 + 112) = v7;
    [swift_unknownObjectRetain() transport:v6 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    v9 = *(v2 + 168);
    v8 = *(v2 + 176);
    v10 = *(v8 + 16);
    sub_270FE5D14(0, 0xF000000000000000);
    v10(0, 0xF000000000000000, v9, v8);
    v11 = *(v2 + 208);
    v12 = *(v2 + 168);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      (*(*(v2 + 200) + 8))(v11, *(v2 + 192));
      sub_270FE57F4();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();
      sub_270FEB424(0, 0xF000000000000000);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = *(v2 + 160);
      swift_unknownObjectRelease();
      sub_270FEB424(0, 0xF000000000000000);
      (*(v13 + 32))(v15, v11, v12);
    }

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_270FE801C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_270FE8338;
  }

  else
  {
    v2 = sub_270FE812C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE812C()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[28];
  v5 = v0[21];
  v4 = v0[22];
  v6 = *(v4 + 16);
  sub_270FE5D14(v2, v1);
  v6(v2, v1, v5, v4);
  if (v3)
  {
    swift_unknownObjectRelease();
    sub_270FEB424(v2, v1);
LABEL_5:

    v11 = v0[1];
    goto LABEL_6;
  }

  v7 = v0[26];
  v8 = v0[21];
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v0[25] + 8))(v7, v0[24]);
    sub_270FE57F4();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    sub_270FEB424(v2, v1);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v13 = v0[20];
  swift_unknownObjectRelease();
  sub_270FEB424(v2, v1);
  (*(v9 + 32))(v13, v7, v8);

  v11 = v0[1];
LABEL_6:

  return v11();
}

uint64_t sub_270FE8338(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_270FE83BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 216) = a2;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  return MEMORY[0x2822009F8](sub_270FE83E4, 0, 0);
}

uint64_t sub_270FE83E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_270FE7000(a1, a2);
  *(v2 + 192) = v3;
  *(v2 + 200) = 0;
  if (v3)
  {
    v5 = *(v2 + 216);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_270FE85A4;
    v6 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_270FEC3BC;
    *(v2 + 104) = &block_descriptor_32;
    *(v2 + 112) = v6;
    [swift_unknownObjectRetain() transport:v5 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    (*(*(v2 + 176) + 16))(0, 0xF000000000000000);
    swift_unknownObjectRelease();
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_270FE85A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_270FE8764;
  }

  else
  {
    v2 = sub_270FE86B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE86B4()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_unknownObjectRelease();
  (*(v0[22] + 16))(v2, v1);
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_270FE8764(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_270FE87E0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 256) = a1;
  v6 = sub_270FF8BA8();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270FE88AC, 0, 0);
}

uint64_t sub_270FE88AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_270FE7000(a1, a2);
  v5 = *(v2 + 208);
  v6 = *(v2 + 168);
  (*(*(v2 + 200) + 16))(v5, *(v2 + 160), *(v2 + 192));
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(*(v2 + 200) + 8))(*(v2 + 208), *(v2 + 192));
    v8 = 0;
    v9 = 0xF000000000000000;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = (*(*(v2 + 176) + 8))(*(v2 + 168));
    v9 = v13;
    (*(v7 + 8))(*(v2 + 208), *(v2 + 168));
    if (v4)
    {
      if (v9 >> 60 != 15)
      {
        swift_unknownObjectRetain();
        sub_270FE5D14(v8, v9);
        v10 = sub_270FF89F8();
        sub_270FEB424(v8, v9);
        goto LABEL_8;
      }

LABEL_7:
      swift_unknownObjectRetain();
      v10 = 0;
LABEL_8:
      *(v2 + 232) = v9;
      *(v2 + 240) = v10;
      *(v2 + 216) = v4;
      *(v2 + 224) = v8;
      v11 = *(v2 + 256);
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 144;
      *(v2 + 24) = sub_270FE8BC0;
      v12 = swift_continuation_init();
      *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
      *(v2 + 80) = MEMORY[0x277D85DD0];
      *(v2 + 88) = 1107296256;
      *(v2 + 96) = sub_270FEC3BC;
      *(v2 + 104) = &block_descriptor_26;
      *(v2 + 112) = v12;
      [v4 transport:v11 data:v10 completionHandler:v2 + 80];

      return MEMORY[0x282200938](v2 + 16);
    }
  }

  sub_270FEB424(v8, v9);

  v14 = *(v2 + 8);

  return v14();
}

uint64_t sub_270FE8BC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_270FE8D6C;
  }

  else
  {
    v2 = sub_270FE8CD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE8CD0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  swift_unknownObjectRelease();
  sub_270FEB424(v3, v1);
  sub_270FEB424(v0[18], v0[19]);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_270FE8D6C(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  v4 = v1[29];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_270FEB424(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_270FE8E10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 200) = a7;
  *(v8 + 208) = v7;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 320) = a2;
  *(v8 + 160) = a1;
  v9 = sub_270FF8BA8();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  v10 = sub_270FF8BA8();
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 - 8);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270FE8F48, 0, 0);
}

uint64_t sub_270FE8F48(uint64_t a1, uint64_t a2)
{
  v3 = sub_270FE7000(a1, a2);
  *(v2 + 264) = v3;
  v6 = v3;
  v7 = *(v2 + 256);
  v8 = *(v2 + 176);
  (*(*(v2 + 248) + 16))(v7, *(v2 + 168), *(v2 + 240));
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(*(v2 + 248) + 8))(*(v2 + 256), *(v2 + 240));
    v10 = 0;
    v11 = 0xF000000000000000;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = (*(*(v2 + 192) + 8))(*(v2 + 176));
    v11 = v15;
    (*(v9 + 8))(*(v2 + 256), *(v2 + 176));
    if (v6)
    {
      if (v11 >> 60 != 15)
      {
        swift_unknownObjectRetain();
        sub_270FE5D14(v10, v11);
        v12 = sub_270FF89F8();
        sub_270FEB424(v10, v11);
        goto LABEL_8;
      }

LABEL_7:
      swift_unknownObjectRetain();
      v12 = 0;
LABEL_8:
      *(v2 + 296) = v11;
      *(v2 + 304) = v12;
      *(v2 + 280) = v6;
      *(v2 + 288) = v10;
      *(v2 + 272) = 0;
      v13 = *(v2 + 320);
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 144;
      *(v2 + 24) = sub_270FE9414;
      v14 = swift_continuation_init();
      *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
      *(v2 + 80) = MEMORY[0x277D85DD0];
      *(v2 + 88) = 1107296256;
      *(v2 + 96) = sub_270FEC3BC;
      *(v2 + 104) = &block_descriptor_20;
      *(v2 + 112) = v14;
      [v6 transport:v13 data:v12 completionHandler:v2 + 80];

      return MEMORY[0x282200938](v2 + 16);
    }
  }

  v16 = *(v2 + 200);
  v17 = *(v2 + 184);
  v18 = *(v16 + 16);
  sub_270FE5D14(0, 0xF000000000000000);
  v18(0, 0xF000000000000000, v17, v16);
  v19 = *(v2 + 232);
  v20 = *(v2 + 184);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    (*(*(v2 + 224) + 8))(v19, *(v2 + 216));
    sub_270FE57F4();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    sub_270FEB424(0, 0xF000000000000000);
    sub_270FEB424(v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = *(v2 + 160);
    swift_unknownObjectRelease();
    sub_270FEB424(v10, v11);
    sub_270FEB424(0, 0xF000000000000000);
    (*(v21 + 32))(v23, v19, v20);
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_270FE9414()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_270FE9784;
  }

  else
  {
    v2 = sub_270FE9524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE9524()
{
  v1 = v0[38];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v4 = v0[36];
  v16 = v0[37];
  v5 = v0[34];
  v6 = v0[25];
  v7 = v0[23];
  v8 = *(v6 + 16);
  sub_270FE5D14(v3, v2);
  v8(v3, v2, v7, v6);
  if (v5)
  {
    swift_unknownObjectRelease();
    sub_270FEB424(v4, v16);
    sub_270FEB424(v3, v2);
LABEL_5:

    v13 = v0[1];
    goto LABEL_6;
  }

  v9 = v0[29];
  v10 = v0[23];
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v0[28] + 8))(v9, v0[27]);
    sub_270FE57F4();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    sub_270FEB424(v3, v2);
    sub_270FEB424(v4, v16);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v15 = v0[20];
  swift_unknownObjectRelease();
  sub_270FEB424(v4, v16);
  sub_270FEB424(v3, v2);
  (*(v11 + 32))(v15, v9, v10);

  v13 = v0[1];
LABEL_6:

  return v13();
}

uint64_t sub_270FE9784(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[36];
  v4 = v1[37];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_270FEB424(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_270FE9834(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_2((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F68, &qword_270FFA520);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_270FF8A08();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_270FE992C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 200) = a7;
  *(v8 + 208) = v7;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 296) = a2;
  *(v8 + 160) = a1;
  v9 = sub_270FF8BA8();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270FE9A00, 0, 0);
}

uint64_t sub_270FE9A00(uint64_t a1, uint64_t a2)
{
  v3 = sub_270FE7000(a1, a2);
  *(v2 + 240) = v3;
  v5 = v3;
  v6 = *(v2 + 232);
  v7 = *(v2 + 176);
  (*(*(v2 + 224) + 16))(v6, *(v2 + 168), *(v2 + 216));
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(*(v2 + 224) + 8))(*(v2 + 232), *(v2 + 216));
    v9 = 0;
    v10 = 0xF000000000000000;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = (*(*(v2 + 192) + 8))(*(v2 + 176));
    v10 = v14;
    (*(v8 + 8))(*(v2 + 232), *(v2 + 176));
    if (v5)
    {
      if (v10 >> 60 != 15)
      {
        swift_unknownObjectRetain();
        sub_270FE5D14(v9, v10);
        v11 = sub_270FF89F8();
        sub_270FEB424(v9, v10);
        goto LABEL_8;
      }

LABEL_7:
      swift_unknownObjectRetain();
      v11 = 0;
LABEL_8:
      *(v2 + 272) = v10;
      *(v2 + 280) = v11;
      *(v2 + 256) = v5;
      *(v2 + 264) = v9;
      *(v2 + 248) = 0;
      v12 = *(v2 + 296);
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 144;
      *(v2 + 24) = sub_270FE9D7C;
      v13 = swift_continuation_init();
      *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F60, &qword_270FFA518);
      *(v2 + 80) = MEMORY[0x277D85DD0];
      *(v2 + 88) = 1107296256;
      *(v2 + 96) = sub_270FEC3BC;
      *(v2 + 104) = &block_descriptor;
      *(v2 + 112) = v13;
      [v5 transport:v12 data:v11 completionHandler:v2 + 80];

      return MEMORY[0x282200938](v2 + 16);
    }
  }

  (*(*(v2 + 200) + 16))(0, 0xF000000000000000);
  sub_270FEB424(v9, v10);
  swift_unknownObjectRelease();

  v15 = *(v2 + 8);

  return v15();
}

uint64_t sub_270FE9D7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_270FE9F98;
  }

  else
  {
    v2 = sub_270FE9E8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FE9E8C()
{
  v1 = v0[35];
  v2 = v0[18];
  v3 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[33];
  v4 = v0[34];
  (*(v0[25] + 16))(v2, v3);
  sub_270FEB424(v5, v4);
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_270FE9F98(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[33];
  v4 = v1[34];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_270FEB424(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_270FEA03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_270FE5C20;

  return sub_270FE7440();
}

uint64_t sub_270FEA0F0(int a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_270FE6180;

  return sub_270FE788C(a1);
}

uint64_t sub_270FEA188(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_270FE6180;

  return sub_270FE7C40(a1, a2, a3, a4);
}

uint64_t sub_270FEA24C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_270FE6180;

  return sub_270FE83BC(a1, a2, a3, a4);
}

uint64_t sub_270FEA310(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_270FE6180;

  return sub_270FE87E0(a1, a2, a3, a4);
}

uint64_t sub_270FEA3D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_270FE5C20;

  return sub_270FE8E10(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_270FEA4B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_270FE6180;

  return sub_270FE992C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_270FEA728(int a1, void *aBlock, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 48) = a1;
  *(v3 + 24) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_270FEA7AC, 0, 0);
}

uint64_t sub_270FEA7AC()
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v1 = sub_270FF8A48();
  __swift_project_value_buffer(v1, qword_280874550);
  sub_270FE1238(0xD000000000000060, 0x8000000270FFBAB0, 0x726F70736E617274, 0xED0000293A5F2874);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_270FEA8D4;
  v3 = *(v0 + 48);

  return sub_270FE52B8(v3, 0, 0xF000000000000000);
}

uint64_t sub_270FEA8D4(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[5] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_270FEAA88, 0, 0);
  }

  else
  {

    if (a2 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_270FF89F8();
      sub_270FEB424(a1, a2);
    }

    v8 = v6[3];
    (v8)[2](v8, v7, 0);

    _Block_release(v8);
    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_270FEAA88()
{
  v1 = v0[5];

  v2 = sub_270FF89E8();

  v3 = v0[3];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t getEnumTagSinglePayload for XPCService.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCService.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_270FEAE10()
{
  result = qword_280870F50;
  if (!qword_280870F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F50);
  }

  return result;
}

uint64_t sub_270FEAE64(int a1, void *a2, void *aBlock, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 64) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  if (a2)
  {
    v6 = a2;

    v7 = sub_270FF8A08();
    v9 = v8;
  }

  else
  {

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;

  return MEMORY[0x2822009F8](sub_270FEAF28, 0, 0);
}

uint64_t sub_270FEAF28()
{
  if (qword_280870D80 != -1)
  {
    swift_once();
  }

  v1 = sub_270FF8A48();
  __swift_project_value_buffer(v1, qword_280874550);
  sub_270FE1238(0xD000000000000060, 0x8000000270FFBAB0, 0xD000000000000012, 0x8000000270FFBB20);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_270FEB048;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);

  return sub_270FE52B8(v5, v3, v4);
}

uint64_t sub_270FEB048(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[7] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_270FEB20C, 0, 0);
  }

  else
  {
    v8 = v6[4];
    v7 = v6[5];

    sub_270FEB424(v8, v7);
    if (a2 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_270FF89F8();
      sub_270FEB424(a1, a2);
    }

    v10 = v6[3];
    (v10)[2](v10, v9, 0);

    _Block_release(v10);
    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_270FEB20C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  sub_270FEB424(v3, v2);
  v4 = sub_270FF89E8();

  v5 = v0[3];
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_270FEB2D0()
{
  sub_270FF8D98();
  sub_270FF8B98();
  return sub_270FF8DC8();
}

uint64_t sub_270FEB340(uint64_t a1)
{
  sub_270FF8D98();
  sub_270FF8B98();
  return sub_270FF8DC8();
}

unint64_t sub_270FEB3D0()
{
  result = qword_280870F58;
  if (!qword_280870F58)
  {
    type metadata accessor for XPCService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F58);
  }

  return result;
}

uint64_t sub_270FEB424(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270FEB438(a1, a2);
  }

  return a1;
}

uint64_t sub_270FEB438(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_270FEB4B4()
{
  result = qword_280870F70;
  if (!qword_280870F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280870F70);
  }

  return result;
}

uint64_t sub_270FEB500()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_270FE5C20;

  return sub_270FEAE64(v2, v3, v4, v5);
}

uint64_t sub_270FEB5C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_270FE6180;

  return v6();
}

uint64_t sub_270FEB6AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_270FE6180;

  return sub_270FEB5C4(v2, v3, v4);
}

uint64_t sub_270FEB76C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_270FE6180;

  return v7();
}

uint64_t sub_270FEB854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270FE6180;

  return sub_270FEB76C(a1, v4, v5, v6);
}

uint64_t sub_270FEB920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_270FEBBDC(a3, v22 - v9);
  v11 = sub_270FF8B58();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_270FEBC4C(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_270FF8B48();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_270FF8B38();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_270FF8A88() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_270FEBC4C(a3);

    return v20;
  }

LABEL_8:
  sub_270FEBC4C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_270FEBBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270FEBC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270FEBCB4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_270FEBDAC;

  return v6(a1);
}

uint64_t sub_270FEBDAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270FEBEA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270FE6180;

  return sub_270FEBCB4(a1, v4);
}

uint64_t sub_270FEBF5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270FE5C20;

  return sub_270FEBCB4(a1, v4);
}

uint64_t sub_270FEC014()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_270FE6180;

  return sub_270FEA728(v2, v4, v3);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270FEC110(void *a1, char a2)
{
  *(v2 + 32) = 0;
  type metadata accessor for TransportDispatchService();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = MEMORY[0x277D84F98];
  *(v2 + 40) = a2;
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 interfaceWithProtocol_];
  [v7 setRemoteObjectInterface_];

  v9 = [v6 interfaceWithProtocol_];
  [v7 setExportedInterface_];

  [v7 setExportedObject_];
  v18 = sub_270FEC3A4;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_270FE6E88;
  v17 = &block_descriptor_97;
  v10 = _Block_copy(&v14);
  [v7 setInterruptionHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_270FEC348;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_270FE6E88;
  v17 = &block_descriptor_101;
  v12 = _Block_copy(&v14);

  [v7 setInvalidationHandler_];
  _Block_release(v12);
  return v2;
}

uint64_t sub_270FEC404()
{
  sub_270FF8D98();
  sub_270FF8DB8();
  return sub_270FF8DC8();
}

uint64_t sub_270FEC478(uint64_t a1)
{
  sub_270FF8D98();
  sub_270FF8DB8();
  return sub_270FF8DC8();
}

unint64_t sub_270FEC4BC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_270FEC4FC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_270FEC4FC(int a1)
{
  if (a1 <= 400)
  {
    if (a1 <= 107)
    {
      if (a1 <= 103)
      {
        switch(a1)
        {
          case 'e':
            v1 = 0;
            v2 = 101;
            return v2 | (v1 << 32);
          case 'f':
            v1 = 0;
            v2 = 102;
            return v2 | (v1 << 32);
          case 'g':
            v1 = 0;
            v2 = 103;
            return v2 | (v1 << 32);
        }

        goto LABEL_55;
      }

      if (a1 > 105)
      {
        v1 = 0;
        if (a1 == 106)
        {
          v2 = 106;
        }

        else
        {
          v2 = 107;
        }
      }

      else
      {
        v1 = 0;
        if (a1 == 104)
        {
          v2 = 104;
        }

        else
        {
          v2 = 105;
        }
      }

      return v2 | (v1 << 32);
    }

    if (a1 > 300)
    {
      if (a1 > 302)
      {
        if (a1 == 303)
        {
          v1 = 0;
          v2 = 303;
          return v2 | (v1 << 32);
        }

        if (a1 == 304)
        {
          v1 = 0;
          v2 = 304;
          return v2 | (v1 << 32);
        }

        goto LABEL_55;
      }

      v1 = 0;
      if (a1 == 301)
      {
        v2 = 301;
      }

      else
      {
        v2 = 302;
      }

      return v2 | (v1 << 32);
    }

    if (a1 > 200)
    {
      if (a1 == 201)
      {
        v1 = 0;
        v2 = 201;
        return v2 | (v1 << 32);
      }

      if (a1 == 202)
      {
        v1 = 0;
        v2 = 202;
        return v2 | (v1 << 32);
      }
    }

    else
    {
      if (a1 == 108)
      {
        v1 = 0;
        v2 = 108;
        return v2 | (v1 << 32);
      }

      if (a1 == 109)
      {
        v1 = 0;
        v2 = 109;
        return v2 | (v1 << 32);
      }
    }

LABEL_55:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 > 503)
  {
    if (a1 > 701)
    {
      if (a1 > 801)
      {
        if (a1 == 802)
        {
          v1 = 0;
          v2 = 802;
          return v2 | (v1 << 32);
        }

        if (a1 == 803)
        {
          v1 = 0;
          v2 = 803;
          return v2 | (v1 << 32);
        }
      }

      else
      {
        if (a1 == 702)
        {
          v1 = 0;
          v2 = 702;
          return v2 | (v1 << 32);
        }

        if (a1 == 801)
        {
          v1 = 0;
          v2 = 801;
          return v2 | (v1 << 32);
        }
      }
    }

    else if (a1 > 601)
    {
      if (a1 == 602)
      {
        v1 = 0;
        v2 = 602;
        return v2 | (v1 << 32);
      }

      if (a1 == 701)
      {
        v1 = 0;
        v2 = 701;
        return v2 | (v1 << 32);
      }
    }

    else
    {
      if (a1 == 504)
      {
        v1 = 0;
        v2 = 504;
        return v2 | (v1 << 32);
      }

      if (a1 == 601)
      {
        v1 = 0;
        v2 = 601;
        return v2 | (v1 << 32);
      }
    }

    goto LABEL_55;
  }

  if (a1 <= 404)
  {
    if (a1 > 402)
    {
      v1 = 0;
      if (a1 == 403)
      {
        v2 = 403;
      }

      else
      {
        v2 = 404;
      }
    }

    else
    {
      v1 = 0;
      if (a1 == 401)
      {
        v2 = 401;
      }

      else
      {
        v2 = 402;
      }
    }

    return v2 | (v1 << 32);
  }

  if (a1 <= 501)
  {
    if (a1 == 405)
    {
      v1 = 0;
      v2 = 405;
      return v2 | (v1 << 32);
    }

    if (a1 == 501)
    {
      v1 = 0;
      v2 = 501;
      return v2 | (v1 << 32);
    }

    goto LABEL_55;
  }

  v1 = 0;
  if (a1 == 502)
  {
    v2 = 502;
  }

  else
  {
    v2 = 503;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_270FEC7FC()
{
  result = qword_2814EBF50;
  if (!qword_2814EBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EBF50);
  }

  return result;
}

uint64_t sub_270FEC860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_270FED814(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_270FE5788(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_270FED988();
        v13 = v15;
      }

      result = sub_270FED680(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t TransportDispatching.register(_:handler:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a2;
  *(v6 + 88) = a1;
  return MEMORY[0x2822009F8](sub_270FEC960, 0, 0);
}

uint64_t sub_270FEC960()
{
  v1 = (*(v0[8] + 8))(v0[7]);
  v0[10] = v1;

  return MEMORY[0x2822009F8](sub_270FEC9E0, v1, 0);
}

uint64_t sub_270FEC9E0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 88);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_270FED814(&unk_270FFA6A8, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v9;
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_270FECAE4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_270FE5C20;

  return sub_270FE2ED8(a1, a2, v6);
}

uint64_t TransportDispatching.register<A>(_:handler:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  *(v8 + 88) = a1;
  return MEMORY[0x2822009F8](sub_270FECBC8, 0, 0);
}

{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  *(v8 + 88) = a1;
  return MEMORY[0x2822009F8](sub_270FECDD0, 0, 0);
}

{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  *(v8 + 88) = a1;
  return MEMORY[0x2822009F8](sub_270FECEC8, 0, 0);
}

uint64_t sub_270FECBC8()
{
  *(v0 + 72) = (*(*(v0 + 48) + 8))(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_270FECC90;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 88);

  return sub_270FE3124(v6, v4, v5, v3, v2);
}

uint64_t sub_270FECC90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270FECDD0()
{
  *(v0 + 72) = (*(*(v0 + 48) + 8))(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_270FEDAEC;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 88);

  return sub_270FE3664(v6, v4, v5, v3, v2);
}

uint64_t sub_270FECEC8()
{
  *(v0 + 72) = (*(*(v0 + 48) + 8))(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_270FEDAEC;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 88);

  return sub_270FE3D40(v6, v4, v5, v3, v2);
}

uint64_t TransportDispatching.register<A, B>(_:handler:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 16) = a2;
  *(v9 + 104) = a1;
  return MEMORY[0x2822009F8](sub_270FECFCC, 0, 0);
}

{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 16) = a2;
  *(v9 + 104) = a1;
  return MEMORY[0x2822009F8](sub_270FED0D0, 0, 0);
}

uint64_t sub_270FECFCC()
{
  *(v0 + 88) = (*(*(v0 + 56) + 8))(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_270FEDAF0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 104);

  return sub_270FE4310(v8, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_270FED0D0()
{
  *(v0 + 88) = (*(*(v0 + 56) + 8))(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_270FED198;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 104);

  return sub_270FE4B68(v8, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_270FED198()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TransportDispatching.unregister(_:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 72) = a1;
  return MEMORY[0x2822009F8](sub_270FED2D0, 0, 0);
}

uint64_t sub_270FED2D0()
{
  v1 = (*(v0[6] + 8))(v0[5]);
  v0[8] = v1;

  return MEMORY[0x2822009F8](sub_270FED350, v1, 0);
}

uint64_t sub_270FED350()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  sub_270FEC860(0, 0, v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_270FED3F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F88, &qword_270FFA6F8);
  result = sub_270FF8C68();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_270FF8D98();
      sub_270FF8DB8();
      result = sub_270FF8DC8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_270FED680(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_270FF8BE8() + 1) & ~v5;
    do
    {
      sub_270FF8D98();
      sub_270FF8DB8();
      result = sub_270FF8DC8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 4 * v3);
        v12 = (v10 + 4 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_270FED814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_270FE5788(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_270FED3F0(v16, a4 & 1);
      result = sub_270FE5788(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_270FF8D38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_270FED988();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_270FED988()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F88, &qword_270FFA6F8);
  v2 = *v0;
  v3 = sub_270FF8C58();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void TVContentRequestService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall TVContentRequestService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FEDC50()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v8 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F90, &qword_270FFA710);
  v6 = sub_270FEEB80();
  *v4 = v0;
  v4[1] = sub_270FEDDB0;

  return v8(v0 + 16, 401, v5, v6, v2, v3);
}

uint64_t sub_270FEDDB0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_270FEDEE0;
  }

  else
  {
    v2 = sub_270FEDEC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t TVContentRequestService.updateRequests(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_270FEDF18, 0, 0);
}

uint64_t sub_270FEDF18()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  v0[2] = v2;
  v9 = (*(v4 + 48) + **(v4 + 48));
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F90, &qword_270FFA710);
  v7 = sub_270FEEB80();
  *v5 = v0;
  v5[1] = sub_270FEE088;

  return v9(402, v0 + 2, v6, v7, v3, v4);
}

uint64_t sub_270FEE088()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FEE1BC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TVContentRequestService.startRequest(_:)(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  return MEMORY[0x2822009F8](sub_270FEE218, 0, 0);
}

uint64_t sub_270FEE218()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v0 + 120) = *v2;
  *(v0 + 136) = v6;
  *(v0 + 152) = v5;
  v8 = *(v2 + 64);
  v7 = *(v2 + 80);
  v9 = *(v2 + 96);
  *(v0 + 168) = *(v2 + 48);
  *(v0 + 216) = v9;
  *(v0 + 200) = v7;
  *(v0 + 184) = v8;
  v10 = *(v4 + 48);
  sub_270FEED08(v0 + 16, v0 + 224);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 552) = v11;
  *v11 = v0;
  v11[1] = sub_270FEE3A4;

  return (v13)(403, v0 + 120, &type metadata for TVContentRequest, &protocol witness table for TVContentRequest, v3, v4);
}

uint64_t sub_270FEE3A4()
{
  v2 = *v1;
  *(v2 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 152);
    *(v2 + 344) = *(v2 + 136);
    *(v2 + 360) = v4;
    *(v2 + 328) = v3;
    v5 = *(v2 + 168);
    v6 = *(v2 + 184);
    v7 = *(v2 + 200);
    *(v2 + 424) = *(v2 + 216);
    *(v2 + 392) = v6;
    *(v2 + 408) = v7;
    *(v2 + 376) = v5;
    sub_270FEED64(v2 + 328);

    return MEMORY[0x2822009F8](sub_270FEE544, 0, 0);
  }

  else
  {
    v8 = *(v2 + 136);
    v9 = *(v2 + 152);
    *(v2 + 432) = *(v2 + 120);
    *(v2 + 448) = v8;
    v10 = *(v2 + 168);
    v11 = *(v2 + 184);
    v12 = *(v2 + 200);
    *(v2 + 528) = *(v2 + 216);
    *(v2 + 496) = v11;
    *(v2 + 512) = v12;
    *(v2 + 464) = v9;
    *(v2 + 480) = v10;
    sub_270FEED64(v2 + 432);
    v13 = *(v2 + 8);

    return v13();
  }
}

uint64_t TVContentRequestService.fetchRequestStatus(deviceIdentifier:contentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x2822009F8](sub_270FEE584, 0, 0);
}

void sub_270FEE584()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v1[3]);
  v0[2] = v5;
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v2;
  v7 = *(v6 + 56);

  v9 = v7 + *v7;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_270FEE724;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FEE724()
{
  v2 = *v1;
  v2[13] = v0;

  sub_270FDEDB4(v2[2], v2[3], v2[4], v2[5]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FEE864, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t TVContentRequestService.updateRequestStatus(deviceIdentifier:contentIdentifier:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  *(v6 + 49) = *a5;
  return MEMORY[0x2822009F8](sub_270FEE8AC, 0, 0);
}

uint64_t sub_270FEE8AC()
{
  v1 = *(v0 + 49);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v2[3];
  v8 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v7);
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;
  v9 = *(v8 + 48);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_270FEEA3C;

  return (v12)(405, v0 + 16, &type metadata for TVContentRequestStatus, &protocol witness table for TVContentRequestStatus, v7, v8);
}

uint64_t sub_270FEEA3C()
{
  v2 = *v1;
  v2[13] = v0;

  sub_270FDEDB4(v2[2], v2[3], v2[4], v2[5]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FEE864, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

unint64_t sub_270FEEB80()
{
  result = qword_280870F98;
  if (!qword_280870F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280870F90, &qword_270FFA710);
    sub_270FEEC60();
    sub_270FEECB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870F98);
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

unint64_t sub_270FEEC60()
{
  result = qword_280870FA0;
  if (!qword_280870FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FA0);
  }

  return result;
}

unint64_t sub_270FEECB4()
{
  result = qword_280870FA8;
  if (!qword_280870FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FA8);
  }

  return result;
}

uint64_t sub_270FEED64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870FB0, &qword_270FFA728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SoftwareUpdateService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall SoftwareUpdateService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FEEF38()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FDEEB0;

  return v6(301, v2, v3);
}

uint64_t SoftwareUpdateService.saveSampleSoftwareUpdate(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_270FEF088, 0, 0);
}

uint64_t sub_270FEF088()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_270FE2058;
  v7 = MEMORY[0x277D837D0];

  return v9(302, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_270FEF208()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FDE774;

  return v6(303, v2, v3);
}

uint64_t SoftwareUpdateService.deleteSoftwareUpdate(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_270FEF358, 0, 0);
}

uint64_t sub_270FEF358()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_270FE2328;
  v7 = MEMORY[0x277D837D0];

  return v9(304, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

void AppInstallationService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall AppInstallationService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FEF624()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FEF768;

  return v6(v0 + 40, 201, &type metadata for AppInstallationResult, &protocol witness table for AppInstallationResult, v2, v3);
}

uint64_t sub_270FEF768()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_270FEF898;
  }

  else
  {
    v2 = sub_270FEF87C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270FEF8D0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FDE774;

  return v6(202, v2, v3);
}

uint64_t TVContentRequest.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TVContentRequest.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TVContentRequest.contentURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TVContentRequest.imageURL.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TVContentRequest.title.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TVContentRequest.subtitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __swiftcall TVContentRequest.init(deviceIdentifier:contentIdentifier:contentURL:imageURL:title:subtitle:action:status:)(VisionCompanionServices::TVContentRequest *__return_ptr retstr, Swift::String deviceIdentifier, Swift::String contentIdentifier, Swift::String contentURL, Swift::String imageURL, Swift::String title, Swift::String_optional subtitle, VisionCompanionServices::TVContentRequest::Action action, VisionCompanionServices::TVContentRequest::Status status)
{
  v9 = *action;
  v10 = *v11;
  retstr->deviceIdentifier = deviceIdentifier;
  retstr->contentIdentifier = contentIdentifier;
  retstr->contentURL = contentURL;
  retstr->imageURL = imageURL;
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->action = v9;
  retstr->status = v10;
}

uint64_t TVContentRequest.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t TVContentRequest.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  swift_bridgeObjectRetain_n();

  MEMORY[0x2743BA130](58, 0xE100000000000000);
  MEMORY[0x2743BA130](v1, v2);

  return v4;
}

uint64_t TVContentRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v11 = v0[6];
  v12 = v0[9];
  v8 = v0[11];
  v13 = v0[8];
  v14 = v0[10];

  sub_270FF8C08();
  MEMORY[0x2743BA130](0xD000000000000010, 0x8000000270FFA840);
  MEMORY[0x2743BA130](0xD000000000000013, 0x8000000270FFBB60);
  MEMORY[0x2743BA130](v1, v2);
  MEMORY[0x2743BA130](0xD000000000000015, 0x8000000270FFB9C0);
  MEMORY[0x2743BA130](v3, v4);
  MEMORY[0x2743BA130](0x6E65746E6F63202CLL, 0xEE00203A4C525574);
  MEMORY[0x2743BA130](v5, v6);
  MEMORY[0x2743BA130](0x556567616D69202CLL, 0xEC000000203A4C52);
  MEMORY[0x2743BA130](v11, v7);
  MEMORY[0x2743BA130](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x2743BA130](v13, v12);
  MEMORY[0x2743BA130](0x746974627573202CLL, 0xEC000000203A656CLL);
  if (v8)
  {
    v9 = v14;
  }

  else
  {
    v9 = 7104878;
  }

  if (!v8)
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x2743BA130](v9, v8);

  MEMORY[0x2743BA130](0x6E6F69746361202CLL, 0xEA0000000000203ALL);
  sub_270FF8C48();
  MEMORY[0x2743BA130](0x737574617473202CLL, 0xEA0000000000203ALL);
  sub_270FF8C48();
  MEMORY[0x2743BA130](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_270FEFEF4()
{
  v1 = *v0;
  v2 = 0x55746E65746E6F63;
  v3 = 0x6E6F69746361;
  if (v1 != 6)
  {
    v3 = 0x737574617473;
  }

  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0x656C746974627573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 != 2)
  {
    v2 = 0x4C52556567616D69;
  }

  v5 = 0xD000000000000010;
  if (*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_270FEFFEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270FF184C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270FF0020(uint64_t a1)
{
  v2 = sub_270FF10C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FF005C(uint64_t a1)
{
  v2 = sub_270FF10C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FF009C@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];
  swift_bridgeObjectRetain_n();

  MEMORY[0x2743BA130](58, 0xE100000000000000);
  MEMORY[0x2743BA130](v3, v4);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t TVContentRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870FB8, &qword_270FFA878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v8;
  v9 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = v9;
  v10 = *(v1 + 64);
  v19 = *(v1 + 72);
  v20 = v10;
  v11 = *(v1 + 88);
  v17 = *(v1 + 80);
  v18 = v11;
  LODWORD(v10) = *(v1 + 96);
  v15 = *(v1 + 97);
  v16 = v10;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF10C8();
  sub_270FF8DE8();
  v37 = 0;
  v12 = v27;
  sub_270FF8CF8();
  if (!v12)
  {
    v36 = 1;
    sub_270FF8CF8();
    v35 = 2;
    sub_270FF8CF8();
    v34 = 3;
    sub_270FF8CF8();
    v33 = 4;
    sub_270FF8CF8();
    v32 = 5;
    sub_270FF8CE8();
    v31 = v16;
    v30 = 6;
    sub_270FF111C();
    sub_270FF8D08();
    v29 = v15;
    v28 = 7;
    sub_270FF1170();
    sub_270FF8D08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TVContentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870FD8, &qword_270FFA880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF10C8();
  sub_270FF8DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v48[0]) = 0;
  v9 = sub_270FF8CA8();
  v40 = v10;
  LOBYTE(v48[0]) = 1;
  v11 = sub_270FF8CA8();
  v39 = v12;
  v37 = v11;
  LOBYTE(v48[0]) = 2;
  v36 = sub_270FF8CA8();
  v38 = v13;
  LOBYTE(v48[0]) = 3;
  v34 = sub_270FF8CA8();
  v15 = v14;
  LOBYTE(v48[0]) = 4;
  v16 = sub_270FF8CA8();
  v35 = v17;
  v31 = v16;
  LOBYTE(v48[0]) = 5;
  v33 = 0;
  v30 = sub_270FF8C98();
  v32 = v18;
  LOBYTE(v41) = 6;
  sub_270FF11C4();
  sub_270FF8CB8();
  v51 = LOBYTE(v48[0]);
  v52 = 7;
  sub_270FF1218();
  sub_270FF8CB8();
  (*(v6 + 8))(v8, v5);
  LODWORD(v33) = v53;
  *&v41 = v9;
  v19 = v40;
  *(&v41 + 1) = v40;
  *&v42 = v37;
  v20 = v39;
  *(&v42 + 1) = v39;
  *&v43 = v36;
  v21 = v38;
  *(&v43 + 1) = v38;
  *&v44 = v34;
  v22 = v15;
  *(&v44 + 1) = v15;
  *&v45 = v31;
  v23 = v35;
  *(&v45 + 1) = v35;
  *&v46 = v30;
  *(&v46 + 1) = v32;
  LOBYTE(v47) = v51;
  HIBYTE(v47) = v53;
  v24 = v42;
  *a2 = v41;
  *(a2 + 16) = v24;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  *(a2 + 96) = v47;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  sub_270FEED08(&v41, v48);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48[0] = v9;
  v48[1] = v19;
  v48[2] = v37;
  v48[3] = v20;
  v48[4] = v36;
  v48[5] = v21;
  v48[6] = v34;
  v48[7] = v22;
  v48[8] = v31;
  v48[9] = v23;
  v48[10] = v30;
  v48[11] = v32;
  v49 = v51;
  v50 = v33;
  return sub_270FF126C(v48);
}

VisionCompanionServices::TVContentRequest::Action_optional __swiftcall TVContentRequest.Action.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TVContentRequest.Action.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_270FF0A3C()
{
  v1 = *v0;
  sub_270FF8D98();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743BA420](v2);
  return sub_270FF8DC8();
}

uint64_t sub_270FF0A8C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x2743BA420](v1);
}

uint64_t sub_270FF0AC4(uint64_t a1)
{
  v2 = *v1;
  sub_270FF8D98();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2743BA420](v3);
  return sub_270FF8DC8();
}

void *sub_270FF0B10@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_270FF0B30(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

VisionCompanionServices::TVContentRequest::Status_optional __swiftcall TVContentRequest.Status.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 3)
  {
    if (rawValue <= 100)
    {
      if (rawValue == 4)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 100)
      {
        *v1 = 5;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 'e':
          *v1 = 6;
          return rawValue;
        case 'f':
          *v1 = 7;
          return rawValue;
        case 'g':
          *v1 = 8;
          return rawValue;
      }
    }

LABEL_21:
    *v1 = 9;
    return rawValue;
  }

  if (rawValue <= 1)
  {
    if (!rawValue)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 1)
    {
      *v1 = 1;
      return rawValue;
    }

    goto LABEL_21;
  }

  if (rawValue == 2)
  {
    *v1 = 2;
  }

  else
  {
    *v1 = 3;
  }

  return rawValue;
}

uint64_t sub_270FF0D0C()
{
  v1 = *v0;
  sub_270FF8D98();
  MEMORY[0x2743BA420](qword_270FFAD80[v1]);
  return sub_270FF8DC8();
}

uint64_t sub_270FF0D94(uint64_t a1)
{
  v2 = *v1;
  sub_270FF8D98();
  MEMORY[0x2743BA420](qword_270FFAD80[v2]);
  return sub_270FF8DC8();
}

BOOL _s23VisionCompanionServices16TVContentRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v27 = a1[6];
  v25 = a1[8];
  v26 = a1[7];
  v17 = a1[10];
  v21 = a1[11];
  v15 = *(a1 + 97);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = a1[9];
  v22 = *(a2 + 72);
  v16 = *(a2 + 80);
  v20 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a1 + 96);
  v14 = *(a2 + 97);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_270FF8D28() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_270FF8D28() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_270FF8D28() & 1) == 0 || (v27 != v10 || v26 != v11) && (sub_270FF8D28() & 1) == 0 || (v25 != v23 || v24 != v22) && (sub_270FF8D28() & 1) == 0)
  {
    return 0;
  }

  if (!v21)
  {
    result = 0;
    if (v20)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!v20)
  {
    return 0;
  }

  if (v17 == v16 && v21 == v20)
  {
    if (v19 != v18)
    {
      return 0;
    }

    return qword_270FFAD80[v15] == qword_270FFAD80[v14];
  }

  v13 = sub_270FF8D28();
  result = 0;
  if (v13)
  {
LABEL_26:
    if (((v19 ^ v18) & 1) == 0)
    {
      return qword_270FFAD80[v15] == qword_270FFAD80[v14];
    }
  }

  return result;
}

unint64_t sub_270FF10C8()
{
  result = qword_280870FC0;
  if (!qword_280870FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FC0);
  }

  return result;
}

unint64_t sub_270FF111C()
{
  result = qword_280870FC8;
  if (!qword_280870FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FC8);
  }

  return result;
}

unint64_t sub_270FF1170()
{
  result = qword_280870FD0;
  if (!qword_280870FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FD0);
  }

  return result;
}

unint64_t sub_270FF11C4()
{
  result = qword_280870FE0;
  if (!qword_280870FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FE0);
  }

  return result;
}

unint64_t sub_270FF1218()
{
  result = qword_280870FE8;
  if (!qword_280870FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FE8);
  }

  return result;
}

unint64_t sub_270FF12A0()
{
  result = qword_280870FF0;
  if (!qword_280870FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FF0);
  }

  return result;
}

unint64_t sub_270FF12F8()
{
  result = qword_280870FF8;
  if (!qword_280870FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280870FF8);
  }

  return result;
}

unint64_t sub_270FF1350()
{
  result = qword_280871000;
  if (!qword_280871000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280871008, &qword_270FFAB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871000);
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_270FF13E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_270FF1428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVContentRequest.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVContentRequest.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVContentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVContentRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270FF1748()
{
  result = qword_280871010;
  if (!qword_280871010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871010);
  }

  return result;
}

unint64_t sub_270FF17A0()
{
  result = qword_280871018;
  if (!qword_280871018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871018);
  }

  return result;
}

unint64_t sub_270FF17F8()
{
  result = qword_280871020;
  if (!qword_280871020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871020);
  }

  return result;
}

uint64_t sub_270FF184C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000270FFB9E0 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270FFBA00 == a2 || (sub_270FF8D28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xEA00000000004C52 || (sub_270FF8D28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000 || (sub_270FF8D28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_270FF8D28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_270FF8D28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_270FF8D28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_270FF8D28();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_270FF1AEC()
{
  result = qword_280871028;
  if (!qword_280871028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871028);
  }

  return result;
}

unint64_t sub_270FF1B40()
{
  result = qword_280871030;
  if (!qword_280871030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871030);
  }

  return result;
}

uint64_t dispatch thunk of TransportService.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270FE5C20;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TransportService.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_270FE6180;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TransportService.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_270FE6180;

  return v15(a1, a2, a3, a4, a5, a6);
}

{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_270FE6180;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportService.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_270FE6180;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportService.send<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 56) + **(a9 + 56));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_270FE5C20;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v19 = (*(a9 + 64) + **(a9 + 64));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_270FE6180;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t Device.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Device.serialNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Device.buildNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Device.productType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Device.productName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Device.osVersion.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __swiftcall Device.init(name:serialNumber:buildNumber:productType:productName:osVersion:source:)(VisionCompanionServices::Device *__return_ptr retstr, Swift::String_optional name, Swift::String serialNumber, Swift::String buildNumber, Swift::String productType, Swift::String_optional productName, Swift::String osVersion, VisionCompanionServices::Device::Source source)
{
  v8 = *source.rawValue;
  retstr->name = name;
  retstr->serialNumber = serialNumber;
  retstr->buildNumber = buildNumber;
  retstr->productType = productType;
  retstr->productName = productName;
  retstr->osVersion = osVersion;
  retstr->source.rawValue = v8;
}

uint64_t Device.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9 = v0[11];
  v10 = v0[10];

  sub_270FF8C08();
  MEMORY[0x2743BA130](0x656369766544, 0xE600000000000000);
  MEMORY[0x2743BA130](0x203A656D616E28, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280871038, &qword_270FFAE20);
  v7 = sub_270FF8A78();
  MEMORY[0x2743BA130](v7);

  MEMORY[0x2743BA130](0xD000000000000010, 0x8000000270FFBB80);
  MEMORY[0x2743BA130](v1, v2);
  MEMORY[0x2743BA130](0x4E646C697562202CLL, 0xEF203A7265626D75);
  MEMORY[0x2743BA130](v3, v4);
  MEMORY[0x2743BA130](0x6375646F7270202CLL, 0xEF203A6570795474);
  MEMORY[0x2743BA130](v5, v6);
  MEMORY[0x2743BA130](0x6375646F7270202CLL, 0xEF203A656D614E74);
  sub_270FF8C48();
  MEMORY[0x2743BA130](0x73726556736F202CLL, 0xED0000203A6E6F69);
  MEMORY[0x2743BA130](v10, v9);
  MEMORY[0x2743BA130](0x656372756F73202CLL, 0xEA0000000000203ALL);
  sub_270FF8C48();
  MEMORY[0x2743BA130](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_270FF2878()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F6973726556736FLL;
  if (v1 != 5)
  {
    v3 = 0x656372756F73;
  }

  v4 = 0x54746375646F7270;
  if (v1 != 3)
  {
    v4 = 0x4E746375646F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 1)
  {
    v5 = 0x6D754E646C697562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_270FF2970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270FF3E14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_270FF29A4(uint64_t a1)
{
  v2 = sub_270FF37B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270FF29E0(uint64_t a1)
{
  v2 = sub_270FF37B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270FF2A24@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280871040, &qword_270FFAE28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = v1[2];
  v24 = v1[3];
  v25 = v7;
  v8 = v1[4];
  v22 = v1[5];
  v23 = v8;
  v9 = v1[6];
  v20 = v1[7];
  v21 = v9;
  v10 = v1[8];
  v18 = v1[9];
  v19 = v10;
  v11 = v1[11];
  v16 = v1[10];
  v17 = v11;
  v15 = v1[12];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF37B8();
  sub_270FF8DE8();
  v34 = 0;
  v12 = v26;
  sub_270FF8CE8();
  if (!v12)
  {
    v33 = 1;
    sub_270FF8CF8();
    v32 = 2;
    sub_270FF8CF8();
    v31 = 3;
    sub_270FF8CF8();
    v30 = 4;
    sub_270FF8CE8();
    v29 = 5;
    sub_270FF8CF8();
    v27 = v15;
    v28 = 6;
    sub_270FF380C();
    sub_270FF8D08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Device.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280871058, &qword_270FFAE30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_270FF37B8();
  sub_270FF8DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v51[0]) = 0;
  v10 = sub_270FF8C98();
  v12 = v11;
  LOBYTE(v51[0]) = 1;
  v13 = sub_270FF8CA8();
  *(&v43 + 1) = v14;
  *&v43 = v13;
  LOBYTE(v51[0]) = 2;
  v39 = sub_270FF8CA8();
  v41 = v15;
  LOBYTE(v51[0]) = 3;
  v16 = sub_270FF8CA8();
  v40 = v17;
  v35 = v16;
  LOBYTE(v51[0]) = 4;
  v38 = 0;
  v18 = sub_270FF8C98();
  v37 = v19;
  LOBYTE(v51[0]) = 5;
  v20 = sub_270FF8CA8();
  v42 = 0;
  v34 = v20;
  v36 = v22;
  v52 = 6;
  sub_270FF3860();
  v23 = v42;
  sub_270FF8CB8();
  v42 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v21 = v38;
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (!v21)
    {
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v24 = v53;
    *&v44 = v10;
    *(&v44 + 1) = v12;
    v45 = v43;
    v25 = v18;
    v33 = v18;
    v26 = *(&v43 + 1);
    *&v46 = v39;
    v27 = v41;
    *(&v46 + 1) = v41;
    v28 = v40;
    *&v47 = v35;
    *(&v47 + 1) = v40;
    *&v48 = v25;
    v29 = v37;
    *(&v48 + 1) = v37;
    *&v49 = v34;
    *(&v49 + 1) = v36;
    v50 = v53;
    *(a2 + 96) = v53;
    v30 = v49;
    *(a2 + 64) = v48;
    *(a2 + 80) = v30;
    v31 = v45;
    *a2 = v44;
    *(a2 + 16) = v31;
    v32 = v47;
    *(a2 + 32) = v46;
    *(a2 + 48) = v32;
    sub_270FF38B4(&v44, v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v51[0] = v10;
    v51[1] = v12;
    v51[2] = v43;
    v51[3] = v26;
    v51[4] = v39;
    v51[5] = v27;
    v51[6] = v35;
    v51[7] = v28;
    v51[8] = v33;
    v51[9] = v29;
    v51[10] = v34;
    v51[11] = v36;
    v51[12] = v24;
    return sub_270FF38EC(v51);
  }
}

BOOL sub_270FF32EC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_270FF331C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_270FF3348@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_270FF3420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_270FF3454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL _s23VisionCompanionServices6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[8];
  v9 = a1[9];
  v47 = a1[12];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v15 = a2[7];
  v16 = a2[10];
  v18 = a2[11];
  v17 = a2[12];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v44 = a2[6];
    v45 = a1[7];
    v46 = a1[6];
    v40 = a2[8];
    v41 = a2[9];
    v42 = a1[11];
    v43 = a1[10];
    if (*a1 != *a2 || v3 != v10)
    {
      v36 = a1[5];
      v37 = a1[8];
      v38 = a1[9];
      v35 = a2[11];
      v19 = a2[10];
      v20 = a2[12];
      v21 = a1[4];
      v22 = a2[7];
      v23 = a2[5];
      v24 = sub_270FF8D28();
      v14 = v23;
      v15 = v22;
      v6 = v21;
      v17 = v20;
      v16 = v19;
      v18 = v35;
      v7 = v36;
      v8 = v37;
      v9 = v38;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v44 = a2[6];
    v45 = a1[7];
    v46 = a1[6];
    v40 = a2[8];
    v41 = a2[9];
    v42 = a1[11];
    v43 = a1[10];
    if (v10)
    {
      return 0;
    }
  }

  v39 = v17;
  if (v4 != v11 || v5 != v13)
  {
    v25 = v7;
    v26 = v15;
    v27 = v14;
    v28 = sub_270FF8D28();
    v14 = v27;
    v7 = v25;
    v15 = v26;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != v12 || v7 != v14)
  {
    v29 = v15;
    v30 = sub_270FF8D28();
    v15 = v29;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v46 != v44 || v45 != v15) && (sub_270FF8D28() & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    v32 = v42;
    v31 = v43;
    if (!v41)
    {
      return 0;
    }

    if (v8 != v40 || v9 != v41)
    {
      v33 = sub_270FF8D28();
      v32 = v42;
      v31 = v43;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v32 = v42;
    v31 = v43;
    if (v41)
    {
      return 0;
    }
  }

  if (v31 == v16 && v32 == v18 || (sub_270FF8D28() & 1) != 0)
  {
    return v47 == v39;
  }

  return 0;
}

unint64_t sub_270FF37B8()
{
  result = qword_280871048;
  if (!qword_280871048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871048);
  }

  return result;
}

unint64_t sub_270FF380C()
{
  result = qword_280871050;
  if (!qword_280871050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871050);
  }

  return result;
}

unint64_t sub_270FF3860()
{
  result = qword_280871060;
  if (!qword_280871060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871060);
  }

  return result;
}

unint64_t sub_270FF3920()
{
  result = qword_280871068;
  if (!qword_280871068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871068);
  }

  return result;
}

unint64_t sub_270FF3978()
{
  result = qword_280871070;
  if (!qword_280871070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871070);
  }

  return result;
}

unint64_t sub_270FF39D0()
{
  result = qword_280871078;
  if (!qword_280871078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871078);
  }

  return result;
}

unint64_t sub_270FF3A28()
{
  result = qword_280871080;
  if (!qword_280871080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871080);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_270FF3AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_270FF3AF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.Source(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Device.Source(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270FF3D10()
{
  result = qword_280871088;
  if (!qword_280871088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871088);
  }

  return result;
}

unint64_t sub_270FF3D68()
{
  result = qword_280871090;
  if (!qword_280871090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871090);
  }

  return result;
}

unint64_t sub_270FF3DC0()
{
  result = qword_280871098;
  if (!qword_280871098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280871098);
  }

  return result;
}

uint64_t sub_270FF3E14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_270FF8D28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_270FF8D28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E646C697562 && a2 == 0xEB00000000726562 || (sub_270FF8D28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_270FF8D28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_270FF8D28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_270FF8D28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_270FF8D28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void ExampleService.init()(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_270FF8A58();
  v4 = [v2 initWithMachServiceName:v3 options:0];

  v5 = type metadata accessor for XPCService();
  swift_allocObject();
  v6 = sub_270FEC110(v4, 0);

  a1[3] = v5;
  a1[4] = &off_2880F74F0;
  a1[5] = &off_2880F74A8;
  *a1 = v6;
}

Swift::Void __swiftcall ExampleService.invalidate()()
{
  v1 = v0[3];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_2(v0, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_270FF41D8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_270FDE774;

  return v6(101, v2, v3);
}

uint64_t sub_270FF4324()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_270FEDDB0;
  v5 = MEMORY[0x277D83B88];

  return v7(v0 + 16, 102, v5, &protocol witness table for Int, v2, v3);
}

uint64_t sub_270FF4488()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_270FF45CC;
  v5 = MEMORY[0x277D83B88];

  return v7(v0 + 16, 103, v5, &protocol witness table for Int, v2, v3);
}

uint64_t sub_270FF45CC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_270FEE1BC;
  }

  else
  {
    v2 = sub_270FF46E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t ExampleService.valueToVoid(value:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_270FF4720, 0, 0);
}

uint64_t sub_270FF4720()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1[3];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v8 = (*(v4 + 48) + **(v4 + 48));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_270FF4874;
  v6 = MEMORY[0x277D83B88];

  return v8(104, v0 + 16, v6, &protocol witness table for Int, v3, v4);
}

uint64_t sub_270FF4874()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FF49A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ExampleService.valueToValue(value:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_270FF49E0, 0, 0);
}

void sub_270FF49E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v1[3]);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v6 = *(v3 + 56) + **(v3 + 56);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_270FF4B4C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF4B4C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_270FE218C;
  }

  else
  {
    v2 = sub_270FF4C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t ExampleService.valueToOptional(value:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_270FF4C9C, 0, 0);
}

void sub_270FF4C9C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_2(v1, v1[3]);
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  v6 = *(v3 + 64) + **(v3 + 64);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_270FF4E08;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF4E08()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_270FF4F1C;
  }

  else
  {
    v2 = sub_270FF5760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t ExampleService.optionalToVoid(optional:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  return MEMORY[0x2822009F8](sub_270FF4F58, 0, 0);
}

uint64_t sub_270FF4F58()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v5 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v4);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_270FF50BC;
  v7 = MEMORY[0x277D83B88];

  return v9(107, v0 + 16, v7, &protocol witness table for Int, v4, v5);
}

uint64_t sub_270FF50BC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_270FF5768, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ExampleService.optionalToValue(optional:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  return MEMORY[0x2822009F8](sub_270FF5214, 0, 0);
}

void sub_270FF5214()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_2(v2, v2[3]);
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  v6 = *(v4 + 56) + **(v4 + 56);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_270FF538C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_270FF538C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_270FE246C;
  }

  else
  {
    v2 = sub_270FF576C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}