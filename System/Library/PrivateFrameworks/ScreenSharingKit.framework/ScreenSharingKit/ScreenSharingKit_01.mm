uint64_t sub_2649DEE58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2649DEEBC(uint64_t a1)
{
  v2 = type metadata accessor for ControlMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2649DEF18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2649DEF6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2649DEFC0()
{
  sub_2649DF384(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_2649DF028()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_2649DF068(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 24) = a1;
  return result;
}

__n128 sub_2649DF100@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a1 = *(v3 + 32);
  *(a1 + 16) = v4;
  result = *(v3 + 64);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_2649DF150(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(v3 + 32) = *a1;
  *(v3 + 48) = v4;
  result = *(a1 + 32);
  *(v3 + 64) = result;
  return result;
}

uint64_t sub_2649DF1F4()
{
  v1 = *v0;
  v3 = *(*v0 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 104);
  if (v2 >> 60 == 15)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E10, &unk_264B45DA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_264B44150;
    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
    *(v5 + 48) = v4;
  }

  sub_2649DF370(v3, v2);
  return v5;
}

void *sub_2649DF288()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2649DF2D0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

double sub_2649DF370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2649DEF18(a1, a2);
  }

  return result;
}

uint64_t sub_2649DF384(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2649DEF6C(result, a2);
  }

  return result;
}

unint64_t sub_2649DF3B0()
{
  v1 = 1701736302;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x68536E6565726373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2649DF434@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649E0D58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2649DF45C(uint64_t a1)
{
  v2 = sub_2649DFAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DF498(uint64_t a1)
{
  v2 = sub_2649DFAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649DF4D4(uint64_t a1)
{
  v2 = sub_2649DFC3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DF510(uint64_t a1)
{
  v2 = sub_2649DFC3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649DF54C(uint64_t a1)
{
  v2 = sub_2649DFB40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DF588(uint64_t a1)
{
  v2 = sub_2649DFB40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649DF5C4(uint64_t a1)
{
  v2 = sub_2649DFB94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DF600(uint64_t a1)
{
  v2 = sub_2649DFB94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649DF63C(uint64_t a1)
{
  v2 = sub_2649DFBE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DF678(uint64_t a1)
{
  v2 = sub_2649DFBE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalWindowCaptureType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E18, &qword_264B45DB0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E20, &qword_264B45DB8);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E28, &qword_264B45DC0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E30, &qword_264B45DC8);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E38, &qword_264B45DD0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649DFAEC();
  sub_264B41BD4();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_2649DFB94();
      v23 = v32;
      sub_264B419B4();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_2649DFB40();
      v23 = v35;
      sub_264B419B4();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_2649DFBE8();
    v23 = v29;
    sub_264B419B4();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_2649DFC3C();
  sub_264B419B4();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_2649DFAEC()
{
  result = qword_27FF88E40;
  if (!qword_27FF88E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E40);
  }

  return result;
}

unint64_t sub_2649DFB40()
{
  result = qword_27FF88E48;
  if (!qword_27FF88E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E48);
  }

  return result;
}

unint64_t sub_2649DFB94()
{
  result = qword_27FF88E50;
  if (!qword_27FF88E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E50);
  }

  return result;
}

unint64_t sub_2649DFBE8()
{
  result = qword_27FF88E58;
  if (!qword_27FF88E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E58);
  }

  return result;
}

unint64_t sub_2649DFC3C()
{
  result = qword_27FF88E60;
  if (!qword_27FF88E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E60);
  }

  return result;
}

uint64_t LocalWindowCaptureType.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t LocalWindowCaptureType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E68, &qword_264B45DD8);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v3);
  v52 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E70, &qword_264B45DE0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v51 = v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E78, &qword_264B45DE8);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E80, &qword_264B45DF0);
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88E88, &unk_264B45DF8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v40 - v19;
  v21 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2649DFAEC();
  v22 = v53;
  sub_264B41BC4();
  if (!v22)
  {
    v41 = v12;
    v42 = 0;
    v23 = v51;
    v24 = v52;
    v53 = v17;
    v25 = v20;
    v26 = sub_264B419A4();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 4) : (v29 = 1), v29))
    {
      v30 = sub_264B417A4();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v32 = &type metadata for LocalWindowCaptureType;
      sub_264B41904();
      sub_264B41794();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v53 + 8))(v25, v16);
    }

    else
    {
      v40[1] = v26;
      if (v28 <= 1)
      {
        if (v28)
        {
          v56 = 1;
          sub_2649DFBE8();
          v37 = v42;
          sub_264B418F4();
          if (!v37)
          {
            (*(v43 + 8))(v11, v46);
            goto LABEL_23;
          }
        }

        else
        {
          v55 = 0;
          sub_2649DFC3C();
          v33 = v42;
          sub_264B418F4();
          if (!v33)
          {
            (*(v44 + 8))(v15, v41);
LABEL_23:
            (*(v53 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v50 = v28;
            return __swift_destroy_boxed_opaque_existential_0(v54);
          }
        }

        (*(v53 + 8))(v20, v16);
        goto LABEL_20;
      }

      v34 = v50;
      v35 = v53;
      if (v28 == 2)
      {
        v57 = 2;
        sub_2649DFB94();
        v36 = v42;
        sub_264B418F4();
        if (!v36)
        {
          (*(v48 + 8))(v23, v47);
          (*(v35 + 8))(v25, v16);
          swift_unknownObjectRelease();
          *v34 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      else
      {
        v58 = 3;
        sub_2649DFB40();
        v38 = v42;
        sub_264B418F4();
        if (!v38)
        {
          (*(v45 + 8))(v24, v49);
          (*(v35 + 8))(v25, v16);
          goto LABEL_25;
        }
      }

      (*(v35 + 8))(v25, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_2649E0390()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2649E03C8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2649E03FC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2649E0430()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2649E0464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_2649E0490()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2649E04C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2649E04F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2649E0530()
{
  result = qword_27FF88E90;
  if (!qword_27FF88E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E90);
  }

  return result;
}

uint64_t dispatch thunk of LocalWindowCaptureMonitor.startMonitoring(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocalWindowCaptureMonitor.stopMonitoring()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocalWindowCaptureMonitor.replayCaptureStateIfLastKnown(is:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return v9(a1, a2, a3);
}

unint64_t sub_2649E0994()
{
  result = qword_27FF88E98;
  if (!qword_27FF88E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E98);
  }

  return result;
}

unint64_t sub_2649E09EC()
{
  result = qword_27FF88EA0;
  if (!qword_27FF88EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EA0);
  }

  return result;
}

unint64_t sub_2649E0A44()
{
  result = qword_27FF88EA8;
  if (!qword_27FF88EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EA8);
  }

  return result;
}

unint64_t sub_2649E0A9C()
{
  result = qword_27FF88EB0;
  if (!qword_27FF88EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EB0);
  }

  return result;
}

unint64_t sub_2649E0AF4()
{
  result = qword_27FF88EB8;
  if (!qword_27FF88EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EB8);
  }

  return result;
}

unint64_t sub_2649E0B4C()
{
  result = qword_27FF88EC0;
  if (!qword_27FF88EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EC0);
  }

  return result;
}

unint64_t sub_2649E0BA4()
{
  result = qword_27FF88EC8;
  if (!qword_27FF88EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EC8);
  }

  return result;
}

unint64_t sub_2649E0BFC()
{
  result = qword_27FF88ED0;
  if (!qword_27FF88ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88ED0);
  }

  return result;
}

unint64_t sub_2649E0C54()
{
  result = qword_27FF88ED8;
  if (!qword_27FF88ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88ED8);
  }

  return result;
}

unint64_t sub_2649E0CAC()
{
  result = qword_27FF88EE0;
  if (!qword_27FF88EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EE0);
  }

  return result;
}

unint64_t sub_2649E0D04()
{
  result = qword_27FF88EE8;
  if (!qword_27FF88EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88EE8);
  }

  return result;
}

uint64_t sub_2649E0D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68536E6565726373 && a2 == 0xEA0000000000746FLL || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000264B596E0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B59700 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit19SceneInteractorStepO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit11ServerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit18ServerPolicyResultO(uint64_t a1)
{
  v1 = *(a1 + 8) & 0x3C | (*(a1 + 8) >> 6);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2649E0F60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649E0FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (a2 ^ 0x3F) & 0xFC | ((a2 ^ 0x3F) << 6);
    }
  }

  return result;
}

uint64_t sub_2649E1004(uint64_t result, unsigned int a2)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_2649E1050()
{
  if (*(v0 + 8) > 0xFBu)
  {
    return 0x64656D75736572;
  }

  sub_264B41754();
  MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59720);
  sub_264B41864();
  return 0;
}

uint64_t sub_2649E1114(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0xFC)
  {
    if (v5 <= 0xFB)
    {
      v10 = *a1;
      v11 = v3;
      v8 = v4;
      v9 = v5;
      sub_2649E124C(v4, v5);
      sub_2649E124C(v2, v3);
      sub_2649E124C(v4, v5);
      sub_2649E124C(v2, v3);
      v6 = _s16ScreenSharingKit11ServerErrorO2eeoiySbAC_ACtFZ_0(&v10, &v8);
      sub_2649E1290(v2, v3);
      sub_2649E1290(v4, v5);
      sub_2649E1290(v4, v5);
      sub_2649E1290(v2, v3);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  if (v5 < 0xFC)
  {
LABEL_5:
    sub_2649E124C(*a2, *(a2 + 8));
    sub_2649E124C(v2, v3);
    sub_2649E1290(v2, v3);
    sub_2649E1290(v4, v5);
    v6 = 0;
    return v6 & 1;
  }

  sub_2649E1290(*a1, v3);
  sub_2649E1290(v4, v5);
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_2649E124C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return sub_2649E1260(a1, a2);
  }

  return a1;
}

uint64_t sub_2649E1260(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  if (!(a2 >> 6))
  {
    return sub_2649E127C(result, a2);
  }

  return result;
}

uint64_t sub_2649E127C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_2649E1290(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return sub_2649E12A4(a1, a2);
  }

  return a1;
}

uint64_t sub_2649E12A4(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  if (!(a2 >> 6))
  {
    return sub_2649E12C0(result, a2);
  }

  return result;
}

uint64_t sub_2649E12C0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_2649E12D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F18, &qword_264B46640);
  sub_264B40E34();
  sub_2649E1B18(v6);

  sub_264B40E34();
  swift_getKeyPath();
  sub_2649E21FC();
  sub_264B40174();

  v4 = *(v6 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke);

  if (v4 == 1)
  {
    sub_264B40E34();
    sub_2649E165C(v6);
  }

  return result;
}

id sub_2649E13F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AnimatedStrokeView();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer] = 0;
  v4[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_didAnimate] = 0;
  v5 = &v4[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_viewSize];
  *v5 = v1;
  v5[1] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_2649E14DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2649E2350();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2649E1540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2649E2350();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2649E15C0(uint64_t a1)
{
  sub_2649E2350();
  sub_264B40D54();
  __break(1u);
}

void sub_2649E165C(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_264B3FFD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  v9 = __swift_project_value_buffer(v8, qword_27FFA71B8);
  v43 = "s already performed";
  v10 = sub_264B41484();
  v40 = "ze";
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  v14 = *(v4 + 8);
  v44 = v3;
  v15 = v3;
  v16 = v14;
  v14(v7, v15);

  v41 = v9;
  v17 = sub_264B40944();

  if (os_log_type_enabled(v17, v10))
  {
    v18 = swift_slowAlloc();
    v39 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136446722;
    v21 = sub_2649CC004(v11, v13, &v45);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2050;
    *(v19 + 14) = 45;
    *(v19 + 22) = 2082;
    v22 = v43;
    *(v19 + 24) = sub_2649CC004(0xD000000000000019, v43 | 0x8000000000000000, &v45);
    _os_log_impl(&dword_2649C6000, v17, v10, "%{public}s:%{public}ld %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v20, -1, -1);
    v23 = v19;
    v2 = v39;
    MEMORY[0x266749940](v23, -1, -1);
  }

  else
  {

    v22 = v43;
  }

  v24 = OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_didAnimate;
  v25 = v44;
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_didAnimate))
  {
    v26 = sub_264B41484();
    sub_264B3FF94();
    v27 = sub_264B3FFA4();
    v29 = v28;
    v16(v7, v25);
    v30 = sub_264B40944();
    if (os_log_type_enabled(v30, v26))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136446978;
      v33 = sub_2649CC004(v27, v29, &v45);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2050;
      *(v31 + 14) = 47;
      *(v31 + 22) = 2082;
      *(v31 + 24) = sub_2649CC004(0xD000000000000019, v22 | 0x8000000000000000, &v45);
      *(v31 + 32) = 2082;
      *(v31 + 34) = sub_2649CC004(0xD000000000000033, 0x8000000264B59870, &v45);
      _os_log_impl(&dword_2649C6000, v30, v26, "%{public}s:%{public}ld %{public}s %{public}s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v32, -1, -1);
      MEMORY[0x266749940](v31, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    v34 = v42;
    v45 = v42;
    sub_2649E21FC();
    sub_264B40174();

    v35 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer);
    if (v35)
    {
      v36 = *(*(v34 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) + 16);
      v37 = v35;
      sub_264B3DD88(v36);
    }

    *(v2 + v24) = 1;
  }
}

void sub_2649E1B18(uint64_t a1)
{
  v2 = v1;
  v40[1] = a1;
  v3 = sub_264B3FFD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  v9 = __swift_project_value_buffer(v8, qword_27FFA71B8);
  v10 = sub_264B41484();
  v42 = "ze";
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  v41 = *(v4 + 8);
  v41(v7, v3);

  v43 = v9;
  v14 = sub_264B40944();

  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v2;
    v17 = v16;
    v44 = v16;
    *v15 = 136446722;
    v18 = sub_2649CC004(v11, v13, &v44);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 56;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B59850, &v44);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    v19 = v17;
    v2 = v40[0];
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  if (v2[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_didAnimate])
  {
    v20 = sub_264B41484();
    sub_264B3FF94();
    v21 = sub_264B3FFA4();
    v23 = v22;
    v41(v7, v3);
    v24 = sub_264B40944();
    if (os_log_type_enabled(v24, v20))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136446978;
      v27 = sub_2649CC004(v21, v23, &v44);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2050;
      *(v25 + 14) = 58;
      *(v25 + 22) = 2082;
      *(v25 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B59850, &v44);
      *(v25 + 32) = 2082;
      *(v25 + 34) = sub_2649CC004(0xD000000000000033, 0x8000000264B59870, &v44);
      _os_log_impl(&dword_2649C6000, v24, v20, "%{public}s:%{public}ld %{public}s %{public}s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v26, -1, -1);
      MEMORY[0x266749940](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  v28 = OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer;
  v29 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer];
  if (v29)
  {
    v30 = *&v29[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
    v31 = v29;
    if (v30)
    {
      LODWORD(v32) = 1.0;
      [v30 setOpacity_];
    }

    v33 = *&v29[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer];
    if (v33)
    {
      v34 = v33;
      [v34 setOpacity_];
    }

    v35 = *&v2[v28];
    if (v35)
    {
      v36 = v35;
      v37 = sub_264B17410();
      sub_264B3D770(v37);

      v38 = *&v2[v28];
      if (v38)
      {
        v24 = v38;
        v39 = sub_264B17410();
        sub_264B3D78C(v39);
LABEL_18:
      }
    }
  }
}

void sub_2649E2044()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer;
  v3 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer];
  if (v3)
  {
    [v3 removeFromSuperlayer];
  }

  v4 = [objc_allocWithZone(type metadata accessor for StrokeLayer()) init];
  [v4 setFrame_];
  sub_264B3D848();
  v5 = [v1 layer];
  [v5 addSublayer_];

  v6 = *&v1[v2];
  *&v1[v2] = v4;
}

id sub_2649E218C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedStrokeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2649E21FC()
{
  result = qword_27FF88B20;
  if (!qword_27FF88B20)
  {
    type metadata accessor for Stroke(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B20);
  }

  return result;
}

uint64_t sub_2649E2254(uint64_t *a1, int a2)
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

uint64_t sub_2649E229C(uint64_t result, int a2, int a3)
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

unint64_t sub_2649E22F0()
{
  result = qword_27FF88F08;
  if (!qword_27FF88F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88F08);
  }

  return result;
}

unint64_t sub_2649E2350()
{
  result = qword_27FF88F10;
  if (!qword_27FF88F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88F10);
  }

  return result;
}

unint64_t sub_2649E2464()
{
  result = qword_27FF88F20;
  if (!qword_27FF88F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88F20);
  }

  return result;
}

unint64_t sub_2649E24BC()
{
  result = qword_27FF8B670;
  if (!qword_27FF8B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B670);
  }

  return result;
}

unint64_t sub_2649E2510(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  if (a1 <= 3u)
  {
    v2 = 0xD000000000000029;
    if (a1 != 2)
    {
      v2 = 0xD000000000000017;
    }

    if (!a1)
    {
      v1 = 0xD00000000000002ALL;
    }

    v4 = a1 <= 1u;
  }

  else
  {
    v2 = 0xD000000000000023;
    if (a1 == 7)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v1 = 0xD000000000000022;
    if (a1 == 4)
    {
      v1 = 0xD000000000000013;
    }

    v4 = a1 <= 5u;
  }

  if (v4)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2649E261C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2649E2664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2649E26B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

void *sub_2649E2724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB8, &unk_264B46970);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v4);
  v54 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v53 = &v43 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v9);
  v49 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FC0, &unk_264B470B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  v45 = *(v20 - 8);
  v46 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB0, &qword_264B46968);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v43 - v27;
  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_isInvalidated) = 0;
  v29 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream__sentMessages;
  v61 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F80, &qword_264B468B8);
  sub_264B40A44();
  (*(v25 + 32))(v3 + v29, v28, v24);
  v30 = v51;
  v3[2] = v50;
  v3[3] = v30;
  v3[4] = v52;
  v31 = *MEMORY[0x277D85778];
  (*(v12 + 104))(v15, v31, v11);
  v32 = v23;
  v43 = v23;
  v44 = v19;
  sub_264B41284();
  (*(v12 + 8))(v15, v11);
  v33 = v47;
  v34 = v48;
  (*(v47 + 16))(v3 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_receiveDataContinuation, v19, v48);
  v36 = v45;
  v35 = v46;
  (*(v45 + 16))(v3 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_receiveDataStream, v32, v46);
  v37 = v56;
  v38 = v54;
  v39 = v58;
  (*(v56 + 104))(v54, v31, v58);
  v40 = v49;
  v41 = v53;
  sub_264B41284();
  (*(v37 + 8))(v38, v39);
  (*(v33 + 8))(v44, v34);
  (*(v36 + 8))(v43, v35);
  (*(v59 + 32))(v3 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_stateContinuation, v41, v60);
  (*(v55 + 32))(v3 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_stateStream, v40, v57);
  return v3;
}

uint64_t sub_2649E2D0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649E2DAC, 0, 0);
}

uint64_t sub_2649E2DAC()
{
  v17 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2649CC004(0xD000000000000014, 0x8000000264B59C50, &v16);
    _os_log_impl(&dword_2649C6000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_264B41274();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_264B41244();

  sub_2649DEF18(v9, v8);
  v11 = sub_264B41234();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v9;
  v12[6] = v8;
  sub_264A10C20(0, 0, v6, &unk_264B46908, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2649E2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_264B41244();
  v6[9] = sub_264B41234();
  v8 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_2649E308C, v8, v7);
}

uint64_t sub_2649E308C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_264B40A74();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2649D7E18(0, *(v4 + 2) + 1, 1, v4);
    *v3 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_2649D7E18((v6 > 1), v7 + 1, 1, v4);
    *v3 = v4;
  }

  v8 = *(v0 + 56);
  *(v4 + 2) = v7 + 1;
  *&v4[16 * v7 + 32] = v8;
  v9 = sub_2649DEF18(v8, *(&v8 + 1));
  v1(v0 + 16, 0, v9);

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71B8);

  v11 = sub_264B40944();
  v12 = sub_264B41484();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v14 = *(*(v0 + 16) + 16);

    *(v13 + 4) = v14;

    _os_log_impl(&dword_2649C6000, v11, v12, "sentMessages count: %ld", v13, 0xCu);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2649E332C()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_receiveDataContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_receiveDataStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_stateStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_stateContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream__sentMessages;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB0, &qword_264B46968);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockControlMessageStream(uint64_t a1)
{
  result = qword_27FF88F48;
  if (!qword_27FF88F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649E3568(uint64_t a1)
{
  sub_2649E3794(319, &qword_27FF88F58, MEMORY[0x277CC9318], MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_2649E3794(319, &qword_27FF88F60, MEMORY[0x277CC9318], MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_2649E3794(319, &qword_27FF88F68, &type metadata for ControlMessengerState, MEMORY[0x277D857B8]);
      if (v3 <= 0x3F)
      {
        sub_2649E3794(319, &qword_27FF88F70, &type metadata for ControlMessengerState, MEMORY[0x277D85788]);
        if (v4 <= 0x3F)
        {
          sub_2649E37E4(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2649E3794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2649E37E4(uint64_t a1)
{
  if (!qword_27FF88F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88F80, &qword_264B468B8);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF88F78);
    }
  }
}

uint64_t sub_2649E3848()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2649E3888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_stateStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2649E3910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_2649E2D0C(a1, a2);
}

uint64_t sub_2649E39B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  a1[3] = v3;
  a1[4] = sub_2649E3A4C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);
  v6 = v1 + OBJC_IVAR____TtC16ScreenSharingKit24MockControlMessageStream_receiveDataStream;

  return v5(boxed_opaque_existential_1, v6, v3);
}

unint64_t sub_2649E3A4C()
{
  result = qword_27FF88F90;
  if (!qword_27FF88F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88F88, &unk_264B470C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88F90);
  }

  return result;
}

uint64_t sub_2649E3AB0()
{
  swift_unknownObjectRelease();

  sub_2649DEF6C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2649E3AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_2649E2FF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2649E3BC0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649E3C40(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649E3CD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MockHIDEventObserverPrimitives();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = sub_264B40664();
  *(v6 + 32) = 0x3FF0000000000000;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x3FF0000000000000;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 88) = xmmword_264B469B0;
  *(v6 + 104) = 0;
  *(v6 + 80) = a1;
  *(v2 + 16) = v6;

  a2[3] = v5;
  a2[4] = &off_287657550;
  *a2 = v6;
  return result;
}

uint64_t sub_2649E3D7C()
{

  return swift_deallocClassInstance();
}

char *sub_2649E3DFC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2649E3EAC(a1, v7);
  v8 = type metadata accessor for SharingBackedAuthenticationPrimitives(0);
  v9 = objc_allocWithZone(v8);
  result = SharingBackedAuthenticationPrimitives.init(continuityDevice:)(v7);
  a2[3] = v8;
  a2[4] = &protocol witness table for SharingBackedAuthenticationPrimitives;
  *a2 = result;
  return result;
}

uint64_t sub_2649E3EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649E3FB4()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController);
  sub_2649E49C8(v2);

  v3 = OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVSystemControllerBackedMicrophoneDeviceSensorObserver(uint64_t a1)
{
  result = qword_27FF88FD8;
  if (!qword_27FF88FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649E40DC(uint64_t a1)
{
  sub_2649DAE24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2649E4178()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

id sub_2649E41EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v7 = sub_2649E5670();
  v10[1] = MEMORY[0x266748730](1, &type metadata for DeviceSensorType, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  sub_264B40A44();
  (*(v2 + 32))(v0 + v6, v5, v1);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController) = result;
    v9 = result;
    if (sub_2649E5248())
    {
      sub_2649E45E8(v9);
      sub_2649E4A94(v9);
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2649E4360()
{
  v1 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "Recording state did change", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController);
  sub_2649E4A94(v6);
}

void sub_2649E4474()
{
  v1 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = sub_264B40944();
  v4 = sub_264B41494();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "audiomxd purportedly died, reconfiguring microphone monitoring", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController;
  v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController);
  sub_2649E49C8(v7);

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = *(v1 + v6);
    *(v1 + v6) = v8;
    v10 = v8;

    if (sub_2649E5248())
    {
      sub_2649E45E8(v10);
      sub_2649E4A94(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2649E45E8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = *MEMORY[0x277D26CA0];
  v5 = objc_opt_self();
  v6 = [v5 mainQueue];
  v7 = swift_allocObject();
  swift_weakInit();
  v20 = sub_2649E51D0;
  v21 = v7;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2649E4874;
  v19 = &block_descriptor_0;
  v8 = _Block_copy(&v16);

  v9 = [v3 addObserverForName:v4 object:a1 queue:v6 usingBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v10 = [v2 defaultCenter];
  v11 = *MEMORY[0x277D26D40];
  v12 = [v5 mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v20 = sub_2649E5218;
  v21 = v13;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2649E4874;
  v19 = &block_descriptor_18;
  v14 = _Block_copy(&v16);

  v15 = [v10 addObserverForName:v11 object:a1 queue:v12 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_2649E4874(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B3FE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_264B3FE64();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2649E4968(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void sub_2649E49C8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 removeObserver:v1 name:*MEMORY[0x277D26CA0] object:a1];

  v5 = [v3 defaultCenter];
  [v5 removeObserver:v1 name:*MEMORY[0x277D26D40] object:a1];
}

uint64_t sub_2649E4A94(void *a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23 = 5;
  if (([a1 remoteDeviceControlIsAllowed_] & 1) == 0)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v11 = sub_264B40944();
    v12 = sub_264B414B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v11, v12, "Microphone use detected", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = v23;
    v15 = sub_264B40944();
    v16 = sub_264B41484();
    v17 = os_log_type_enabled(v15, v16);
    if (v14 <= 1)
    {
      if (!v14)
      {
        if (v17)
        {
          v18 = "Remote Device Control allowed reason given even though response was disallowed?";
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v14 == 1)
      {
        if (v17)
        {
          v18 = "Remote Device Control disallowed with no reason given";
          goto LABEL_30;
        }

LABEL_31:

        swift_getKeyPath();
        swift_getKeyPath();
        sub_264B40A84();

        v20 = sub_264AABDA8();

        if (v20)
        {
          return result;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v21 = sub_264B40A74();
        sub_264A12A64(&v22, 1);
        v21(v24, 0);
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          if (v17)
          {
            v18 = "Remote Device Control disallowed due to microphone use";
            goto LABEL_30;
          }

          goto LABEL_31;
        case 3:
          if (v17)
          {
            v18 = "Remote Device Control disallowed due to call in progress";
            goto LABEL_30;
          }

          goto LABEL_31;
        case 4:
          if (v17)
          {
            v18 = "Remote Device Control disallowed due to assistant active";
LABEL_30:
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_2649C6000, v15, v16, v18, v19, 2u);
            MEMORY[0x266749940](v19, -1, -1);
            goto LABEL_31;
          }

          goto LABEL_31;
      }
    }

    if (v17)
    {
      v18 = "Remote Device Control disallowed with unknown reason";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Microphone use not detected", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v5 = *(v24[0] + 16);

  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = sub_264B40A74();
    v9 = v8;

    *v9 = MEMORY[0x277D84FA0];
    v7(v24, 0);
  }

  return result;
}

uint64_t sub_2649E4F00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF88C80, &unk_264B455A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  sub_264B40A54();
  swift_endAccess();
  sub_2649E5030();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_2649E5030()
{
  result = qword_27FF88C90;
  if (!qword_27FF88C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF88C80, &unk_264B455A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88C90);
  }

  return result;
}

uint64_t sub_2649E5094@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649E5118(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649E5198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_2649E5248()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit54AVSystemControllerBackedMicrophoneDeviceSensorObserver_avSystemController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FE8, &unk_264B54520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_264B46A70;
  v3 = *MEMORY[0x277D26CA0];
  v4 = *MEMORY[0x277D26D40];
  *(v2 + 32) = *MEMORY[0x277D26CA0];
  *(v2 + 40) = v4;
  type metadata accessor for Name(0);
  v5 = v1;
  v6 = v3;
  v7 = v4;
  v8 = sub_264B41144();

  v9 = *MEMORY[0x277D26DD0];
  v29[0] = 0;
  v10 = [v5 setAttribute:v8 forKey:v9 error:v29];

  if (v10)
  {
    v11 = v29[0];
  }

  else
  {
    v12 = v29[0];
    v13 = sub_264B3FF84();

    swift_willThrow();
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FFA71B8);
    v15 = v13;
    v16 = sub_264B40944();
    v17 = sub_264B41494();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2649C6000, v16, v17, "Failed to subscribe to AVSystemController notifications: %{public}@", v18, 0xCu);
      sub_2649E5608(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    v22 = sub_264B40944();
    v23 = sub_264B41494();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2649C6000, v22, v23, "Will fail-closed and assume Microphone is in-use", v24, 2u);
      MEMORY[0x266749940](v24, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v25 = sub_264AABDA8();

    if (v25)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v26 = sub_264B40A74();
      sub_264A12A64(v28, 1);
      v26(v29, 0);
    }
  }

  return v10;
}

uint64_t sub_2649E5608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89880, &unk_264B46B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2649E5670()
{
  result = qword_27FF88FF0;
  if (!qword_27FF88FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88FF0);
  }

  return result;
}

uint64_t sub_2649E5700()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

id CoreBluetoothBackedLocalBluetoothPrimitives.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CoreBluetoothBackedLocalBluetoothPrimitives.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89008, &qword_264B46B30);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives__bluetoothState;
  v13 = 0;
  sub_264B40A44();
  (*(v2 + 32))(&v0[v6], v5, v1);
  v7 = [objc_allocWithZone(MEMORY[0x277CBDFF8]) init];
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager] = v7;
  v8 = type metadata accessor for CoreBluetoothBackedLocalBluetoothPrimitives(0);
  v12.receiver = v0;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  [*&v9[OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager] setDelegate_];
  return v9;
}

id CoreBluetoothBackedLocalBluetoothPrimitives.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreBluetoothBackedLocalBluetoothPrimitives(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CoreBluetoothBackedLocalBluetoothPrimitives.bluetoothStatePublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89018, &qword_264B46B38);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89008, &qword_264B46B30);
  sub_264B40A54();
  swift_endAccess();
  sub_2649E5EF0();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

Swift::Void __swiftcall CoreBluetoothBackedLocalBluetoothPrimitives.centralManagerDidUpdateState(_:)(CBCentralManager a1)
{
  [(objc_class *)a1.super.super.isa state];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_264B40A94();
}

uint64_t sub_2649E5C84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89018, &qword_264B46B38);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89008, &qword_264B46B30);
  sub_264B40A54();
  swift_endAccess();
  sub_2649E5EF0();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2649E5DB4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649E5E34(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264B40A94();
}

uint64_t type metadata accessor for CoreBluetoothBackedLocalBluetoothPrimitives(uint64_t a1)
{
  result = qword_27FF89030;
  if (!qword_27FF89030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2649E5EF0()
{
  result = qword_27FF89020;
  if (!qword_27FF89020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89018, &qword_264B46B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89020);
  }

  return result;
}

void sub_2649E5F64(uint64_t a1)
{
  sub_2649E604C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2649E604C()
{
  if (!qword_27FF89040)
  {
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF89040);
    }
  }
}

uint64_t Array.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_264B41614();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - v8;
  v10 = *(v3 - 8);
  v12 = MEMORY[0x28223BE20](v7, v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v19 - v16;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v17, v9, v3);
  (*(v10 + 16))(v14, v17, v3);
  sub_264B411A4();
  return (*(v10 + 8))(v17, v3);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2649E62E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2649E6328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2649E63A0()
{
  sub_2649E7080(v0 + 120);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2649E63FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for ControlMessage(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649E6490, v1, 0);
}

uint64_t sub_2649E6490()
{
  v17 = v0;
  if (*(v0[3] + 112) == 1)
  {
    v1 = v0[2];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    (*(v3 + 8))(v2, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = v0[5];
    if (EnumCaseMultiPayload == 4)
    {
      v7 = v5[1];
      v16[0] = *v5;
      v6 = v16[0];
      v16[1] = v7;
      sub_2649E669C(v16);
      sub_2649E7004(v6, v7);
    }

    else
    {
      sub_2649DEEBC(v5);
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v11 = sub_264B40964();
      __swift_project_value_buffer(v11, qword_27FFA71B8);
      v12 = sub_264B40944();
      v13 = sub_264B41494();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2649C6000, v12, v13, "Passed event that was not an accessibility message, ignoring", v14, 2u);
        MEMORY[0x266749940](v14, -1, -1);
      }
    }

    v9 = v0[1];
    v10 = EnumCaseMultiPayload == 4;
  }

  else
  {
    sub_2649E6FB0();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = v0[1];
    v10 = 0;
  }

  return v9(v10);
}

void sub_2649E669C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    sub_2649E6B20(v2 & 1);
  }

  else
  {

    sub_2649E689C(v2, v3);
  }
}

void sub_2649E689C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2649E7010(v2 + 120, &v19);
  if (v20)
  {
    sub_2649D2AAC(&v19, v21);
    v5 = v22;
    v6 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v6 + 24))(a1, a2, 0x73656E656E4F7861, 0xEF65636976654473, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    sub_2649E7080(&v19);
    sub_2649E6FB0();
    v7 = swift_allocError();
    *v8 = 2;
    swift_willThrow();
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE58);
    v10 = v7;
    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v13 = 136315138;
      *&v19 = v7;
      v15 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v11, v12, "Error occurred while asking AXP backed primitives to process data: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2649E6B20(char a1)
{
  swift_beginAccess();
  sub_2649E7010(v1 + 120, &v15);
  if (v16)
  {
    sub_2649D2AAC(&v15, v17);
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AE58);

    v4 = sub_264B40944();
    v5 = sub_264B41474();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v15 = v7;
      *v6 = 136315394;
      type metadata accessor for ProxyingAccessibilityMessageConsumer();

      v8 = sub_264B41064();
      v10 = sub_2649CC004(v8, v9, &v15);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = a1 & 1;
      _os_log_impl(&dword_2649C6000, v4, v5, "%s setupAccessibility: %{BOOL}d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    if (a1)
    {
      (*(v12 + 8))(v11, v12);
    }

    else
    {
      (*(v12 + 16))(v11, v12);
    }

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_2649E7080(&v15);
    sub_2649E6FB0();
    swift_allocError();
    *v13 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_2649E6D9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v2 + 112) == 1)
  {
    sub_2649E6FB0();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  else
  {
    *(v2 + 112) = 1;
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_2649E6E74()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    *(v1 + 112) = 0;
  }

  return (*(v0 + 8))();
}

uint64_t sub_2649E6EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_2649E63FC(a1);
}

unint64_t sub_2649E6F34(uint64_t a1)
{
  result = sub_2649E6F5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2649E6F5C()
{
  result = qword_27FF890B0;
  if (!qword_27FF890B0)
  {
    type metadata accessor for ProxyingAccessibilityMessageConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF890B0);
  }

  return result;
}

unint64_t sub_2649E6FB0()
{
  result = qword_27FF890B8;
  if (!qword_27FF890B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF890B8);
  }

  return result;
}

uint64_t sub_2649E7004(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_2649DEF6C(result, a2);
  }

  return result;
}

uint64_t sub_2649E7010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E70, &unk_264B495D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649E7080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E70, &unk_264B495D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2649E70FC()
{
  result = qword_27FF890C0;
  if (!qword_27FF890C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF890C0);
  }

  return result;
}

__n128 sub_2649E7150@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = 0;
  v7 = [v6 dataWithJSONObject:sub_264B41A94() options:a2 error:&v27];
  swift_unknownObjectRelease();
  v8 = v27;
  if (v7)
  {
    v9 = sub_264B40024();
    v11 = v10;

    sub_264B3FE54();
    swift_allocObject();
    sub_264B3FE44();
    sub_264A02E44();
    sub_264B3FE34();
    sub_2649DEF6C(v9, v11);

    result = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    *a3 = v27;
    *(a3 + 8) = result;
    *(a3 + 24) = v24;
    *(a3 + 40) = v25;
    *(a3 + 48) = v26;
  }

  else
  {
    v12 = v8;
    v13 = sub_264B3FF84();

    swift_willThrow();
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FFA71D0);
    v15 = v13;
    v16 = sub_264B40944();
    v17 = sub_264B41494();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_264B41B24();
      v22 = sub_2649CC004(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    else
    {
    }

    *(a3 + 48) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

id sub_2649E7454(void *a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22[0] = 0;
  v5 = [v4 dataWithJSONObject:sub_264B41A94() options:a2 error:v22];
  swift_unknownObjectRelease();
  v6 = v22[0];
  if (v5)
  {
    v7 = sub_264B40024();
    v9 = v8;

    sub_264B3FE54();
    swift_allocObject();
    sub_264B3FE44();
    sub_264A03260();
    sub_264B3FE34();
    sub_2649DEF6C(v7, v9);

    return v22[0];
  }

  else
  {
    v10 = v6;
    v11 = sub_264B3FF84();

    swift_willThrow();
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71D0);
    v13 = v11;
    v14 = sub_264B40944();
    v15 = sub_264B41494();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_264B41B24();
      v20 = sub_2649CC004(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v14, v15, "%{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

void sub_2649E7730(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  sub_2649DDB20(v3);

  oslog = sub_264B40944();
  v5 = sub_264B41474();
  sub_2649FE684(v3);

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    sub_2649DDB20(v3);
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    sub_2649DDB20(*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState));
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_2649C6000, oslog, v5, "Session server state changed from %{public}s to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2649E793C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = a1;
  v97 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891A0, &qword_264B46FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v105 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89250, &qword_264B471B0);
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v102 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89168, &qword_264B46EC0);
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v99 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A000, &qword_264B471A8);
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v98 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89198, &qword_264B46F98);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v95 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89258, &qword_264B471B8);
  v93 = *(v19 - 8);
  v94 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v92 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89158, &qword_264B46EB8);
  v106 = *(v22 - 8);
  v107 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v89 = &v78 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89248, &qword_264B471A0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v25);
  v88 = &v78 - v26;
  v87 = sub_264B40104();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v27);
  v85 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_264B3FFD4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v29);
  v80 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_264B41544();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v31);
  v79 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_264B414F4();
  MEMORY[0x28223BE20](v33, v34);
  v35 = sub_264B40EE4();
  MEMORY[0x28223BE20](v35 - 8, v36);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState) = 0;
  v37 = v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_avStreamActivationDelay;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamIdentifiers) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession) = 0;
  v39 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType;
  *(v2 + v39) = sub_264A2420C(v38);
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer) = 0;
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteStreamServer) = 0;
  v40 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  (*(*(v41 - 8) + 56))(v2 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_displayServerHandlerContinuation;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  (*(*(v43 - 8) + 56))(v2 + v42, 1, 1, v43);
  v78 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_rapportQueue;
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  sub_264B40ED4();
  v110 = v38;
  sub_264A03218(&qword_27FF88CA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_2649CB4C8(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0, MEMORY[0x277D83970]);
  sub_264B41684();
  v83[13](v79, *MEMORY[0x277D85260], v84);
  *(v2 + v78) = sub_264B41574();
  v79 = *(v106 + 56);
  (v79)(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamContinuation, 1, 1, v107);
  v44 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;
  v45 = *(v108 + 56);
  v84 = v108 + 56;
  v83 = v45;
  (v45)(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamContinuation, 1, 1, v109);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v46 = sub_264B40964();
  __swift_project_value_buffer(v46, qword_27FFA71D0);
  v47 = sub_264B41484();
  v48 = v80;
  sub_264B3FF94();
  v49 = sub_264B3FFA4();
  v51 = v50;
  (*(v81 + 8))(v48, v82);

  v52 = sub_264B40944();

  if (os_log_type_enabled(v52, v47))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v110 = v54;
    *v53 = 136446722;
    v55 = sub_2649CC004(v49, v51, &v110);

    *(v53 + 4) = v55;
    *(v53 + 12) = 2050;
    *(v53 + 14) = 62;
    *(v53 + 22) = 2082;
    v44 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;
    *(v53 + 24) = sub_2649CC004(0xD000000000000019, 0x8000000264B5A640, &v110);
    _os_log_impl(&dword_2649C6000, v52, v47, "%{public}s:%{public}ld %{public}s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v54, -1, -1);
    MEMORY[0x266749940](v53, -1, -1);
  }

  else
  {
  }

  v56 = (v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_rapportServiceType);
  v57 = v97;
  *v56 = v96;
  v56[1] = v57;
  v58 = v85;
  sub_264B400F4();
  (*(v86 + 32))(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionID, v58, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89128, &qword_264B46E38);
  v59 = *MEMORY[0x277D85778];
  v61 = v92;
  v60 = v93;
  v62 = v94;
  (*(v93 + 104))(v92, v59, v94);
  v63 = v88;
  v64 = v89;
  sub_264B41284();
  (*(v60 + 8))(v61, v62);
  v65 = v107;
  v66 = v95;
  (*(v106 + 32))(v95, v64, v107);
  (v79)(v66, 0, 1, v65);
  (*(v90 + 32))(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlMessageStreams, v63, v91);
  v67 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamContinuation;
  swift_beginAccess();
  sub_2649FECCC(v66, v3 + v67, &qword_27FF89198, &qword_264B46F98);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89138, &qword_264B46E40);
  v69 = v102;
  v68 = v103;
  v70 = v59;
  v71 = v104;
  (*(v103 + 104))(v102, v70, v104);
  v73 = v98;
  v72 = v99;
  sub_264B41284();
  (*(v68 + 8))(v69, v71);
  v74 = v109;
  v75 = v105;
  (*(v108 + 32))(v105, v72, v109);
  (v83)(v75, 0, 1, v74);
  (*(v100 + 32))(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_audioVideoStreams, v73, v101);
  v76 = v44[33];
  swift_beginAccess();
  sub_2649FECCC(v75, v3 + v76, &qword_27FF891A0, &qword_264B46FA0);
  swift_endAccess();
  return v3;
}

char *sub_2649E86D8()
{
  v1 = v0;
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, &v37);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 78;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0x74696E696564, 0xE600000000000000, &v37);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v17 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState];
  if (v17 < 3)
  {
    sub_2649DDB20(*&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState]);
    sub_2649DDB20(v17);

    v25 = sub_264B40944();
    v26 = sub_264B41494();

    v27 = v17;
    sub_2649FE684(v17);
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v1;
      v37 = v29;
      *v28 = 136446466;
      type metadata accessor for MediaTransportServerSession(0);

      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, &v37);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v36 = v27;
      sub_2649DDB20(v27);
      v33 = sub_264B41064();
      v35 = sub_2649CC004(v33, v34, &v37);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_2649C6000, v25, v26, "%{public}s not in terminal state before deinit, actual state: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);
    }

    result = sub_264B41874();
    __break(1u);
  }

  else
  {
    v18 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlMessageStreams;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89248, &qword_264B471A0);
    (*(*(v19 - 8) + 8))(&v1[v18], v19);
    v20 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_audioVideoStreams;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A000, &qword_264B471A8);
    (*(*(v21 - 8) + 8))(&v1[v20], v21);
    sub_2649FE684(*&v1[v16]);

    v22 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionID;
    v23 = sub_264B40104();
    (*(*(v23 - 8) + 8))(&v1[v22], v23);

    sub_2649D04D4(&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation], &qword_27FF88D78, &qword_264B45850);
    sub_2649D04D4(&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_displayServerHandlerContinuation], &qword_27FF891A8, &qword_264B46FA8);

    sub_2649D04D4(&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamContinuation], &qword_27FF89198, &qword_264B46F98);
    sub_2649D04D4(&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamContinuation], &qword_27FF891A0, &qword_264B46FA0);
    swift_defaultActor_destroy();
    return v1;
  }

  return result;
}

uint64_t sub_2649E8CF8()
{
  sub_2649E86D8();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MediaTransportServerSession(uint64_t a1)
{
  result = qword_27FF89110;
  if (!qword_27FF89110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649E8D78(uint64_t a1)
{
  sub_2649E90C8(319, &qword_27FF89120, &qword_27FF89128, &qword_264B46E38, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2649E90C8(319, &qword_27FF89130, &qword_27FF89138, &qword_264B46E40, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_264B40104();
      if (v3 <= 0x3F)
      {
        sub_2649E90C8(319, &qword_27FF88D00, &qword_27FF88D08, &qword_264B49A40, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2649E90C8(319, &qword_27FF89140, &qword_27FF89148, &qword_264B46EB0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2649E90C8(319, &qword_27FF89150, &qword_27FF89158, &qword_264B46EB8, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2649E90C8(319, &qword_27FF89160, &qword_27FF89168, &qword_264B46EC0, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2649E90C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2649E912C()
{
  v1[10] = v0;
  v2 = sub_264B3FFD4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649E91EC, v0, 0);
}

uint64_t sub_2649E91EC()
{
  v45 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_264B40964();
  v0[14] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v44);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 114;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v44);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  if (v15 >= 3)
  {

    v25 = sub_264B40944();
    v26 = sub_264B41494();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[10];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136446210;
      v0[9] = v27;
      type metadata accessor for MediaTransportServerSession(0);

      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, &v44);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2649C6000, v25, v26, "%{public}s Server is already in a terminal state.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);
    }

    v33 = v0[1];

    return v33();
  }

  else
  {
    if (v15 == 2)
    {
      sub_2649FE684(2);
      sub_2649FE684(2);

      v16 = sub_264B40944();
      v17 = sub_264B414B4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[10];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v44 = v20;
        *v19 = 136446210;
        v0[6] = v18;
        type metadata accessor for MediaTransportServerSession(0);

        v21 = sub_264B41064();
        v23 = sub_2649CC004(v21, v22, &v44);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s Server is the process of tearing down, will wait for terminal state...", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x266749940](v20, -1, -1);
        MEMORY[0x266749940](v19, -1, -1);
      }

      sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
      v24 = swift_task_alloc();
      v0[20] = v24;
      *v24 = v0;
      v24[1] = sub_2649E9D3C;

      return MEMORY[0x2822007B8]();
    }

    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(2);
    v34 = *(v13 + v14);
    v0[15] = v34;
    *(v13 + v14) = 2;
    sub_2649DDB20(v34);
    sub_2649DDB20(v34);
    sub_2649FE684(v34);
    v44 = v34;
    sub_2649E7730(&v44);
    sub_2649FE684(v34);
    if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession))
    {
      if (v34 == 1)
      {
        sub_2649FE684(1);
        sub_2649FE684(1);
        v35 = sub_264B40944();
        v36 = sub_264B414B4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2649C6000, v35, v36, "Sending stopped event", v37, 2u);
          MEMORY[0x266749940](v37, -1, -1);
        }

        v38 = sub_264B41044();
        v40 = v39;
        v0[16] = v39;
        v41 = swift_task_alloc();
        v0[17] = v41;
        *v41 = v0;
        v41[1] = sub_2649E9984;

        return sub_2649EA7F8(1, v38, v40);
      }

      sub_2649DDB20(v34);
      sub_2649FE684(v34);
      sub_2649FE684(1);
    }

    v0[7] = 3;
    v42 = swift_task_alloc();
    v0[19] = v42;
    *v42 = v0;
    v42[1] = sub_2649E9BC4;

    return sub_2649EB970(v0 + 7);
  }
}

uint64_t sub_2649E9984()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_2649E9FC4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_2649E9AAC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649E9AAC(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Stopped event sent", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  *(v1 + 56) = 3;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *v5 = v1;
  v5[1] = sub_2649E9BC4;

  return sub_2649EB970((v1 + 56));
}

uint64_t sub_2649E9BC4()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2649E9CD4, v1, 0);
}

uint64_t sub_2649E9CD4()
{
  sub_2649FE684(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649E9D3C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2649E9E4C, v1, 0);
}

uint64_t sub_2649E9E4C()
{
  v12 = v0;

  v1 = sub_264B40944();
  v2 = sub_264B414B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[5] = v3;
    type metadata accessor for MediaTransportServerSession(0);

    v6 = sub_264B41064();
    v8 = sub_2649CC004(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v1, v2, "%{public}s Server has completed in-flight teardown, returning", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2649E9FC4()
{
  v15 = v0;
  v1 = v0[18];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_264B41B24();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send stopped event: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
    v11 = v0[18];
  }

  v0[7] = 3;
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_2649E9BC4;

  return sub_2649EB970(v0 + 7);
}

uint64_t sub_2649EA1A8(void *a1, void *a2)
{
  v51 = a2;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v45 - v8;
  v10 = sub_264B3FFD4();
  v50 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + *a1);
  v49 = v12;
  if (v15 <= 2)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71D0);
    v17 = sub_264B414A4();
    sub_264B3FF94();
    v47 = sub_264B3FFA4();
    v19 = v18;
    (*(v50 + 8))(v14, v10);
    v20 = sub_264B40944();
    LODWORD(v48) = v17;
    if (os_log_type_enabled(v20, v17))
    {
      v45 = " in a terminal state.";
      v46 = "v16@?0@NSError8";
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53 = v22;
      *v21 = 136446978;
      v23 = sub_2649CC004(v47, v19, &v53);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2050;
      *(v21 + 14) = 39;
      *(v21 + 22) = 2082;
      *(v21 + 24) = sub_2649CC004(0xD000000000000012, v45 | 0x8000000000000000, &v53);
      *(v21 + 32) = 2082;
      *(v21 + 34) = sub_2649CC004(0xD000000000000035, v46 | 0x8000000000000000, &v53);
      _os_log_impl(&dword_2649C6000, v20, v48, "%{public}s:%{public}ld %{public}s %{public}s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    else
    {
    }
  }

  v24 = *(v4 + *v51);
  *(v4 + *v51) = MEMORY[0x277D84F90];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v25 = sub_264B40964();
  __swift_project_value_buffer(v25, qword_27FFA71D0);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_264B41754();

  v53 = 0x676E696D75736552;
  v54 = 0xE900000000000020;
  v26 = v24[2];
  v51 = v24;
  v52 = v26;
  v27 = sub_264B41A64();
  MEMORY[0x266748390](v27);

  MEMORY[0x266748390](0xD000000000000017, 0x8000000264B5A260);
  v28 = v54;
  v48 = v53;
  v29 = sub_264B414B4();
  sub_264B3FF94();
  v30 = sub_264B3FFA4();
  v32 = v31;
  (*(v50 + 8))(v14, v49);
  v33 = sub_264B40944();
  if (os_log_type_enabled(v33, v29))
  {
    v34 = swift_slowAlloc();
    v50 = v28;
    v35 = v34;
    v36 = swift_slowAlloc();
    v53 = v36;
    *v35 = 136446978;
    v37 = sub_2649CC004(v30, v32, &v53);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2050;
    *(v35 + 14) = 45;
    *(v35 + 22) = 2082;
    *(v35 + 24) = sub_2649CC004(0xD000000000000012, 0x8000000264B5A240, &v53);
    *(v35 + 32) = 2082;
    *(v35 + 34) = sub_2649CC004(v48, v50, &v53);
    _os_log_impl(&dword_2649C6000, v33, v29, "%{public}s:%{public}ld %{public}s %{public}s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v36, -1, -1);
    MEMORY[0x266749940](v35, -1, -1);
  }

  else
  {
  }

  v38 = v51[2];
  if (v38)
  {
    v41 = *(v6 + 16);
    v40 = v6 + 16;
    v39 = v41;
    v42 = v51 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    do
    {
      v39(v9, v42, v5);
      sub_264B411E4();
      (*(v40 - 8))(v9, v5);
      v42 += v43;
      --v38;
    }

    while (v38);
  }
}

uint64_t sub_2649EA7F8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  *(v4 + 384) = *(v5 - 8);
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649EA8C0, v3, 0);
}

uint64_t sub_2649EA8C0()
{
  v29 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v28);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 53;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x743A5F28646E6573, 0xEB00000000293A6FLL, v28);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 368) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  *(v0 + 400) = v13;
  if (v13)
  {
    v14 = 0x64657472617473;
    v15 = *(v0 + 440);
    v16 = v13;
    v17 = sub_264B41014();
    *(v0 + 408) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46A70;
    *(v0 + 320) = 1701869940;
    *(v0 + 328) = 0xE400000000000000;
    v19 = MEMORY[0x277D837D0];
    sub_264B416F4();
    if (v15 <= 1)
    {
      v20 = 0xE700000000000000;
      if (v15)
      {
        v14 = 0x646570706F7473;
      }
    }

    else if (v15 == 2)
    {
      v20 = 0x8000000264B58C30;
      v14 = 0xD000000000000019;
    }

    else if (v15 == 3)
    {
      v20 = 0x8000000264B58C50;
      v14 = 0xD000000000000011;
    }

    else
    {
      v14 = 0x746169746F67656ELL;
      v20 = 0xEF617461446E6F69;
    }

    v24 = v16;
    *(inited + 96) = v19;
    *(inited + 72) = v14;
    *(inited + 80) = v20;
    *(v0 + 336) = 0x79546D6165727473;
    *(v0 + 344) = 0xEA00000000006570;
    sub_264B416F4();
    *(inited + 168) = v19;
    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
    sub_264A240D0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v25 = sub_264B40F54();
    *(v0 + 416) = v25;

    v26 = sub_264B41014();
    *(v0 + 424) = v26;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2649EAEB4;
    v27 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_2649F4D64;
    *(v0 + 280) = &block_descriptor_1;
    *(v0 + 288) = v27;
    [v24 sendEventID:v17 event:v25 destinationID:v26 options:0 completion:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2649FEC60();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_2649EAEB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 368);
  if (v2)
  {
    v4 = sub_2649EB05C;
  }

  else
  {
    v4 = sub_2649EAFD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649EAFD4()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2649EB05C(uint64_t a1)
{
  v2 = v1[53];
  v4 = v1[51];
  v3 = v1[52];
  v5 = v1[50];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_2649EB0F0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  *(v4 + 384) = *(v5 - 8);
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649EB1B8, v3, 0);
}

uint64_t sub_2649EB1B8()
{
  v25 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v24);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 53;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x743A5F28646E6573, 0xEB00000000293A6FLL, &v24);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = 0x64657472617473;
  v14 = sub_264AA0BE0();
  *(v0 + 400) = v14;
  v15 = *(v0 + 440);
  v16 = sub_264B41014();
  *(v0 + 408) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(v0 + 320) = 1701869940;
  *(v0 + 328) = 0xE400000000000000;
  v18 = MEMORY[0x277D837D0];
  sub_264B416F4();
  if (v15 <= 1)
  {
    v19 = 0xE700000000000000;
    if (v15)
    {
      v13 = 0x646570706F7473;
    }
  }

  else if (v15 == 2)
  {
    v19 = 0x8000000264B58C30;
    v13 = 0xD000000000000019;
  }

  else if (v15 == 3)
  {
    v19 = 0x8000000264B58C50;
    v13 = 0xD000000000000011;
  }

  else
  {
    v13 = 0x746169746F67656ELL;
    v19 = 0xEF617461446E6F69;
  }

  *(inited + 96) = v18;
  *(inited + 72) = v13;
  *(inited + 80) = v19;
  *(v0 + 336) = 0x79546D6165727473;
  *(v0 + 344) = 0xEA00000000006570;
  sub_264B416F4();
  *(inited + 168) = v18;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  sub_264A240D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
  swift_arrayDestroy();
  v20 = sub_264B40F54();
  *(v0 + 416) = v20;

  v21 = sub_264B41014();
  *(v0 + 424) = v21;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2649EB72C;
  v22 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_2649F4D64;
  *(v0 + 280) = &block_descriptor_236;
  *(v0 + 288) = v22;
  [v14 sendEventID:v16 event:v20 destinationID:v21 options:0 completion:v0 + 256];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2649EB72C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 368);
  if (v2)
  {
    v4 = sub_2649EB8D4;
  }

  else
  {
    v4 = sub_2649EB84C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649EB84C()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2649EB8D4(uint64_t a1)
{
  v2 = v1[53];
  v4 = v1[51];
  v3 = v1[52];
  v5 = v1[50];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_2649EB970(void *a1)
{
  v2[43] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB0, &qword_264B46F90);
  v2[50] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89158, &qword_264B46EB8);
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89198, &qword_264B46F98);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89168, &qword_264B46EC0);
  v2[57] = v6;
  v2[58] = *(v6 - 8);
  v2[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891A0, &qword_264B46FA0);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  v2[63] = v7;
  v2[64] = *(v7 - 8);
  v2[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891A8, &qword_264B46FA8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = *a1;

  return MEMORY[0x2822009F8](sub_2649EBCF4, v1, 0);
}

uint64_t sub_2649EBCF4()
{
  v143 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = v0[68];
  v2 = sub_264B40964();
  v0[69] = __swift_project_value_buffer(v2, qword_27FFA71D0);
  sub_2649DDB20(v1);
  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  sub_2649FE684(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[68];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v142 = v7;
    *v6 = 136446210;
    v0[42] = v5;
    sub_2649DDB20(v5);
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v142);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Tearing down MediaTransportServerSession due to: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[43];
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer;
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer);
  if (v13)
  {
    v14 = v13;
    v15 = sub_264B40944();
    v16 = sub_264B414B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2649C6000, v15, v16, "Invalidating RPRemoteDisplayServer", v17, 2u);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v18 = v0[67];
    v20 = v0[63];
    v19 = v0[64];
    v21 = v0[43];

    v22 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_displayServerHandlerContinuation;
    swift_beginAccess();
    sub_2649D046C(v21 + v22, v18, &qword_27FF891A8, &qword_264B46FA8);
    v23 = (*(v19 + 48))(v18, 1, v20);
    v24 = v0[67];
    if (v23)
    {
      sub_2649D04D4(v0[67], &qword_27FF891A8, &qword_264B46FA8);
    }

    else
    {
      v25 = v0[65];
      v27 = v0[63];
      v26 = v0[64];
      (*(v26 + 16))(v25, v0[67], v27);
      sub_2649D04D4(v24, &qword_27FF891A8, &qword_264B46FA8);
      sub_264B412B4();
      (*(v26 + 8))(v25, v27);
    }

    v28 = v0[66];
    (*(v0[64] + 56))(v28, 1, 1, v0[63]);
    swift_beginAccess();
    sub_2649FECCC(v28, v21 + v22, &qword_27FF891A8, &qword_264B46FA8);
    swift_endAccess();
    [v14 invalidate];

    v29 = *(v11 + v12);
    *(v11 + v12) = 0;

    v11 = v0[43];
  }

  v30 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteStreamServer;
  v31 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteStreamServer);
  v32 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;
  if (v31)
  {
    v139 = v31;
    v33 = sub_264B40944();
    v34 = sub_264B414B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2649C6000, v33, v34, "Invalidating RPStreamServer", v35, 2u);
      MEMORY[0x266749940](v35, -1, -1);
    }

    v36 = v0[62];
    v38 = v0[57];
    v37 = v0[58];
    v39 = v0[43];

    v40 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamContinuation;
    swift_beginAccess();
    sub_2649D046C(v39 + v40, v36, &qword_27FF891A0, &qword_264B46FA0);
    v41 = (*(v37 + 48))(v36, 1, v38);
    v42 = v0[62];
    if (v41)
    {
      sub_2649D04D4(v0[62], &qword_27FF891A0, &qword_264B46FA0);
    }

    else
    {
      v43 = v0[58];
      v44 = v0[59];
      v45 = v0[57];
      (*(v43 + 16))(v44, v0[62], v45);
      sub_2649D04D4(v42, &qword_27FF891A0, &qword_264B46FA0);
      sub_264B412B4();
      (*(v43 + 8))(v44, v45);
    }

    v46 = v0[61];
    v47 = v0[56];
    v49 = v0[51];
    v48 = v0[52];
    v50 = v0[43];
    (*(v0[58] + 56))(v46, 1, 1, v0[57]);
    swift_beginAccess();
    sub_2649FECCC(v46, v39 + v40, &qword_27FF891A0, &qword_264B46FA0);
    swift_endAccess();
    v32 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;
    v51 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamContinuation;
    swift_beginAccess();
    sub_2649D046C(v50 + v51, v47, &qword_27FF89198, &qword_264B46F98);
    v52 = (*(v48 + 48))(v47, 1, v49);
    v53 = v0[56];
    if (v52)
    {
      sub_2649D04D4(v0[56], &qword_27FF89198, &qword_264B46F98);
    }

    else
    {
      v54 = v0[52];
      v55 = v0[53];
      v56 = v0[51];
      (*(v54 + 16))(v55, v0[56], v56);
      sub_2649D04D4(v53, &qword_27FF89198, &qword_264B46F98);
      sub_264B412B4();
      (*(v54 + 8))(v55, v56);
    }

    v57 = v0[55];
    (*(v0[52] + 56))(v57, 1, 1, v0[51]);
    swift_beginAccess();
    sub_2649FECCC(v57, v50 + v51, &qword_27FF89198, &qword_264B46F98);
    swift_endAccess();
    [v139 invalidate];

    v58 = *(v11 + v30);
    *(v11 + v30) = 0;

    v11 = v0[43];
  }

  v59 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession;
  v0[70] = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession;
  v60 = *(v11 + v59);
  v0[71] = v60;
  if (v60)
  {
    v61 = v60;
    v62 = sub_264B40944();
    v63 = sub_264B414B4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2649C6000, v62, v63, "Invalidating media streams and RPRemoteDisplaySession", v64, 2u);
      MEMORY[0x266749940](v64, -1, -1);
    }

    v65 = v0[60];
    v66 = v0[57];
    v67 = v0[58];
    v68 = v0[43];

    v69 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamContinuation;
    swift_beginAccess();
    sub_2649D046C(v68 + v69, v65, &qword_27FF891A0, &qword_264B46FA0);
    v70 = (*(v67 + 48))(v65, 1, v66);
    v71 = v0[60];
    if (v70)
    {
      sub_2649D04D4(v0[60], &qword_27FF891A0, &qword_264B46FA0);
    }

    else
    {
      v73 = v0[58];
      v72 = v0[59];
      v74 = v0[57];
      (*(v73 + 16))(v72, v0[60], v74);
      sub_2649D04D4(v71, &qword_27FF891A0, &qword_264B46FA0);
      sub_264B412B4();
      (*(v73 + 8))(v72, v74);
    }

    v75 = v0[61];
    v76 = v0[54];
    v77 = v0[51];
    v78 = v0[52];
    v79 = v0[43];
    (*(v0[58] + 56))(v75, 1, 1, v0[57]);
    swift_beginAccess();
    sub_2649FECCC(v75, v68 + v69, &qword_27FF891A0, &qword_264B46FA0);
    swift_endAccess();
    v80 = v32[32];
    swift_beginAccess();
    sub_2649D046C(v79 + v80, v76, &qword_27FF89198, &qword_264B46F98);
    v81 = (*(v78 + 48))(v76, 1, v77);
    v82 = v0[54];
    if (v81)
    {
      sub_2649D04D4(v0[54], &qword_27FF89198, &qword_264B46F98);
    }

    else
    {
      v84 = v0[52];
      v83 = v0[53];
      v85 = v0[51];
      (*(v84 + 16))(v83, v0[54], v85);
      sub_2649D04D4(v82, &qword_27FF89198, &qword_264B46F98);
      sub_264B412B4();
      (*(v84 + 8))(v83, v85);
    }

    v86 = v0[55];
    (*(v0[52] + 56))(v86, 1, 1, v0[51]);
    swift_beginAccess();
    sub_2649FECCC(v86, v79 + v80, &qword_27FF89198, &qword_264B46F98);
    swift_endAccess();
    v87 = sub_2649F9A44(1, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType);
    v0[72] = v87;
    if (v87)
    {
      v89 = v88;
      v90 = v87;
      ObjectType = swift_getObjectType();
      v0[41] = v90;
      v92 = *(v89 + 8);
      v140 = (*(v92 + 24) + **(v92 + 24));
      v93 = swift_task_alloc();
      v0[73] = v93;
      *v93 = v0;
      v93[1] = sub_2649ECDB0;
LABEL_35:

      return v140(ObjectType, v92);
    }

    v94 = sub_2649F9A44(0, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType);
    v0[74] = v94;
    if (v94)
    {
      v96 = v95;
      v97 = v94;
      ObjectType = swift_getObjectType();
      v0[40] = v97;
      v92 = *(v96 + 8);
      v140 = (*(v92 + 24) + **(v92 + 24));
      v98 = swift_task_alloc();
      v0[75] = v98;
      *v98 = v0;
      v98[1] = sub_2649ED528;
      goto LABEL_35;
    }

    v100 = v0[71];
    v101 = v0[70];
    v102 = v0[43];
    [v100 invalidate];

    v103 = *(v102 + v101);
    *(v102 + v101) = 0;
  }

  v104 = v0[68];
  sub_2649DDB20(v104);
  v105 = sub_264B40944();
  v106 = sub_264B414B4();
  sub_2649FE684(v104);
  if (os_log_type_enabled(v105, v106))
  {
    v107 = v0[68];
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v142 = v109;
    *v108 = 136446210;
    v0[39] = v107;
    sub_2649DDB20(v107);
    v110 = sub_264B41064();
    v112 = sub_2649CC004(v110, v111, &v142);

    *(v108 + 4) = v112;
    _os_log_impl(&dword_2649C6000, v105, v106, "Tear down complete, state is now %{public}s, notifying stream", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v109);
    MEMORY[0x266749940](v109, -1, -1);
    MEMORY[0x266749940](v108, -1, -1);
  }

  v113 = v0[68];
  v114 = v0[49];
  v115 = v0[44];
  v116 = v0[45];
  v117 = v0[43];
  v118 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v119 = *(v117 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  *(v117 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState) = v113;
  sub_2649DDB20(v113);
  sub_2649DDB20(v119);
  sub_2649FE684(v119);
  v142 = v119;
  sub_2649E7730(&v142);
  sub_2649FE684(v119);
  v120 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v117 + v120, v114, &qword_27FF88D78, &qword_264B45850);
  v121 = *(v116 + 48);
  if (v121(v114, 1, v115))
  {
    sub_2649D04D4(v0[49], &qword_27FF88D78, &qword_264B45850);
    v122 = 1;
  }

  else
  {
    v123 = v0[49];
    v141 = v121;
    v125 = v0[45];
    v124 = v0[46];
    v126 = v0[44];
    (*(v125 + 16))(v124, v123, v126);
    sub_2649D04D4(v123, &qword_27FF88D78, &qword_264B45850);
    v127 = *(v117 + v118);
    v0[38] = v127;
    sub_2649DDB20(v127);
    sub_264B412A4();
    (*(v125 + 8))(v124, v126);
    v121 = v141;
    v122 = 0;
  }

  v128 = v0[50];
  v129 = v0[48];
  v130 = v0[44];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  (*(*(v131 - 8) + 56))(v128, v122, 1, v131);
  sub_2649D04D4(v128, &qword_27FF88DB0, &qword_264B46F90);
  sub_2649D046C(v117 + v120, v129, &qword_27FF88D78, &qword_264B45850);
  v132 = v121(v129, 1, v130);
  v133 = v0[48];
  if (v132)
  {
    sub_2649D04D4(v0[48], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v135 = v0[45];
    v134 = v0[46];
    v136 = v0[44];
    (*(v135 + 16))(v134, v0[48], v136);
    sub_2649D04D4(v133, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v135 + 8))(v134, v136);
  }

  v137 = v0[47];
  (*(v0[45] + 56))(v137, 1, 1, v0[44]);
  swift_beginAccess();
  sub_2649FECCC(v137, v117 + v120, &qword_27FF88D78, &qword_264B45850);
  swift_endAccess();
  sub_2649EA1A8(&OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations);

  v138 = v0[1];

  return v138();
}

uint64_t sub_2649ECDB0()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_2649ECEC0, v1, 0);
}

uint64_t sub_2649ECEC0()
{
  v51 = v0;
  swift_unknownObjectRelease();
  v1 = sub_2649F9A44(0, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType);
  v0[74] = v1;
  if (v1)
  {
    v3 = v2;
    v4 = v1;
    ObjectType = swift_getObjectType();
    v0[40] = v4;
    v6 = *(v3 + 8);
    v48 = (*(v6 + 24) + **(v6 + 24));
    v7 = swift_task_alloc();
    v0[75] = v7;
    *v7 = v0;
    v7[1] = sub_2649ED528;

    return v48(ObjectType, v6);
  }

  else
  {
    v9 = v0[71];
    v10 = v0[70];
    v11 = v0[43];
    [v9 invalidate];

    v12 = *(v11 + v10);
    *(v11 + v10) = 0;

    v13 = v0[68];
    sub_2649DDB20(v13);
    v14 = sub_264B40944();
    v15 = sub_264B414B4();
    sub_2649FE684(v13);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[68];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v50 = v18;
      *v17 = 136446210;
      v0[39] = v16;
      sub_2649DDB20(v16);
      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v50);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v14, v15, "Tear down complete, state is now %{public}s, notifying stream", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v22 = v0[68];
    v23 = v0[49];
    v24 = v0[44];
    v25 = v0[45];
    v26 = v0[43];
    v27 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
    v28 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
    *(v26 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState) = v22;
    sub_2649DDB20(v22);
    sub_2649DDB20(v28);
    sub_2649FE684(v28);
    v50 = v28;
    sub_2649E7730(&v50);
    sub_2649FE684(v28);
    v29 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
    swift_beginAccess();
    sub_2649D046C(v26 + v29, v23, &qword_27FF88D78, &qword_264B45850);
    v30 = *(v25 + 48);
    if (v30(v23, 1, v24))
    {
      sub_2649D04D4(v0[49], &qword_27FF88D78, &qword_264B45850);
      v31 = 1;
    }

    else
    {
      v32 = v0[49];
      v49 = v30;
      v34 = v0[45];
      v33 = v0[46];
      v35 = v0[44];
      (*(v34 + 16))(v33, v32, v35);
      sub_2649D04D4(v32, &qword_27FF88D78, &qword_264B45850);
      v36 = *(v26 + v27);
      v0[38] = v36;
      sub_2649DDB20(v36);
      sub_264B412A4();
      (*(v34 + 8))(v33, v35);
      v30 = v49;
      v31 = 0;
    }

    v37 = v0[50];
    v38 = v0[48];
    v39 = v0[44];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
    (*(*(v40 - 8) + 56))(v37, v31, 1, v40);
    sub_2649D04D4(v37, &qword_27FF88DB0, &qword_264B46F90);
    sub_2649D046C(v26 + v29, v38, &qword_27FF88D78, &qword_264B45850);
    v41 = v30(v38, 1, v39);
    v42 = v0[48];
    if (v41)
    {
      sub_2649D04D4(v0[48], &qword_27FF88D78, &qword_264B45850);
    }

    else
    {
      v44 = v0[45];
      v43 = v0[46];
      v45 = v0[44];
      (*(v44 + 16))(v43, v0[48], v45);
      sub_2649D04D4(v42, &qword_27FF88D78, &qword_264B45850);
      sub_264B412B4();
      (*(v44 + 8))(v43, v45);
    }

    v46 = v0[47];
    (*(v0[45] + 56))(v46, 1, 1, v0[44]);
    swift_beginAccess();
    sub_2649FECCC(v46, v26 + v29, &qword_27FF88D78, &qword_264B45850);
    swift_endAccess();
    sub_2649EA1A8(&OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations);

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_2649ED528()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_2649ED638, v1, 0);
}

uint64_t sub_2649ED638()
{
  v43 = v0;
  swift_unknownObjectRelease();
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[43];
  [v1 invalidate];

  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = v0[68];
  sub_2649DDB20(v5);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  sub_2649FE684(v5);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[68];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    v0[39] = v8;
    sub_2649DDB20(v8);
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v42);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v6, v7, "Tear down complete, state is now %{public}s, notifying stream", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v14 = v0[68];
  v15 = v0[49];
  v16 = v0[44];
  v17 = v0[45];
  v18 = v0[43];
  v19 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v20 = *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState) = v14;
  sub_2649DDB20(v14);
  sub_2649DDB20(v20);
  sub_2649FE684(v20);
  v42 = v20;
  sub_2649E7730(&v42);
  sub_2649FE684(v20);
  v21 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v18 + v21, v15, &qword_27FF88D78, &qword_264B45850);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16))
  {
    sub_2649D04D4(v0[49], &qword_27FF88D78, &qword_264B45850);
    v23 = 1;
  }

  else
  {
    v24 = v0[49];
    v41 = v22;
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[44];
    (*(v26 + 16))(v25, v24, v27);
    sub_2649D04D4(v24, &qword_27FF88D78, &qword_264B45850);
    v28 = *(v18 + v19);
    v0[38] = v28;
    sub_2649DDB20(v28);
    sub_264B412A4();
    (*(v26 + 8))(v25, v27);
    v22 = v41;
    v23 = 0;
  }

  v29 = v0[50];
  v30 = v0[48];
  v31 = v0[44];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  (*(*(v32 - 8) + 56))(v29, v23, 1, v32);
  sub_2649D04D4(v29, &qword_27FF88DB0, &qword_264B46F90);
  sub_2649D046C(v18 + v21, v30, &qword_27FF88D78, &qword_264B45850);
  v33 = v22(v30, 1, v31);
  v34 = v0[48];
  if (v33)
  {
    sub_2649D04D4(v0[48], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v36 = v0[45];
    v35 = v0[46];
    v37 = v0[44];
    (*(v36 + 16))(v35, v0[48], v37);
    sub_2649D04D4(v34, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v36 + 8))(v35, v37);
  }

  v38 = v0[47];
  (*(v0[45] + 56))(v38, 1, 1, v0[44]);
  swift_beginAccess();
  sub_2649FECCC(v38, v18 + v21, &qword_27FF88D78, &qword_264B45850);
  swift_endAccess();
  sub_2649EA1A8(&OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations);

  v39 = v0[1];

  return v39();
}

uint64_t sub_2649EDB78@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v66 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D60, &qword_264B457F8);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v59 = &v57 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v7 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67, v8);
  v63 = v10;
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v65 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v57 - v18;
  v20 = sub_264B3FFD4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v25 = sub_264B40964();
  __swift_project_value_buffer(v25, qword_27FFA71D0);
  v26 = sub_264B41484();
  sub_264B3FF94();
  v27 = sub_264B3FFA4();
  v29 = v28;
  (*(v21 + 8))(v24, v20);

  v30 = sub_264B40944();

  if (os_log_type_enabled(v30, v26))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446722;
    v33 = sub_2649CC004(v27, v29, v68);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2050;
    *(v31 + 14) = 162;
    *(v31 + 22) = 2082;
    *(v31 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v68);
    _os_log_impl(&dword_2649C6000, v30, v26, "%{public}s:%{public}ld %{public}s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v31, -1, -1);
  }

  else
  {
  }

  v34 = v68[4];
  v35 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v34 + v35, v19, &qword_27FF88D78, &qword_264B45850);
  v36 = v7;
  v37 = v67;
  v38 = (*(v7 + 48))(v19, 1, v67);
  sub_2649D04D4(v19, &qword_27FF88D78, &qword_264B45850);
  if (v38 == 1)
  {
    v39 = v59;
    v40 = v60;
    v41 = v36;
    v42 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x277D85778], v61);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D68, &qword_264B46FC0);
    v44 = v62;
    v62[3] = v43;
    v44[4] = sub_2649CB4C8(&qword_27FF88D70, &qword_27FF88D68, &qword_264B46FC0, MEMORY[0x277D857C0]);
    __swift_allocate_boxed_opaque_existential_1(v44);
    v45 = v65;
    sub_264B41284();
    (*(v40 + 8))(v39, v42);
    v46 = *(v41 + 16);
    v47 = v58;
    v46(v58, v45, v37);
    (*(v41 + 56))(v47, 0, 1, v37);
    swift_beginAccess();
    sub_2649FECCC(v47, v34 + v35, &qword_27FF88D78, &qword_264B45850);
    swift_endAccess();
    v48 = sub_264B41274();
    v49 = v66;
    (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
    v50 = v64;
    v51 = v45;
    v46(v64, v45, v37);
    v52 = sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
    v53 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v54 = swift_allocObject();
    *(v54 + 2) = v34;
    *(v54 + 3) = v52;
    *(v54 + 4) = v34;
    (*(v41 + 32))(&v54[v53], v50, v37);
    swift_retain_n();
    sub_264A10C20(0, 0, v49, &unk_264B46FD0, v54);

    return (*(v41 + 8))(v51, v37);
  }

  else
  {
    sub_2649FEF10();
    swift_allocError();
    *v56 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_2649EE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891A8, &qword_264B46FA8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891B8, &qword_264B46FD8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649EE500, a4, 0);
}

uint64_t sub_2649EE500()
{
  v48 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[20] = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Activating MediaTransportServerSession", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v0[21] = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v7 = *(v5 + v6);
  sub_2649DDB20(v7);
  sub_2649FE684(v7);
  sub_2649FE684(1);
  if (v7)
  {

    v8 = sub_264B40944();
    v9 = sub_264B41494();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[8];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47 = v12;
      *v11 = 136446210;
      v0[5] = v10;
      type metadata accessor for MediaTransportServerSession(0);

      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, &v47);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v8, v9, "%{public}s cannot be activated because we've already become invalid", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
    sub_264B412B4();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D441E8]) init];
    v0[22] = v18;
    v19 = sub_264B41014();
    [v18 setServiceType_];

    v20 = v18;
    v21 = sub_264B40944();
    v22 = sub_264B41484();

    v46 = v20;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136446210;
      v25 = [v20 serviceType];
      if (v25)
      {
        v26 = v25;
        v27 = sub_264B41044();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = sub_2649CC004(v27, v29, &v47);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_2649C6000, v21, v22, "RPRemoteDisplayServer.serviceType = %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v44 = v0[14];
    v45 = v0[19];
    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[10];
    v37 = v0[8];
    v38 = *(v37 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer);
    *(v37 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer) = v46;
    v39 = v46;

    (*(v34 + 104))(v33, *MEMORY[0x277D85778], v35);
    sub_264B41284();
    (*(v34 + 8))(v33, v35);
    (*(v32 + 16))(v36, v31, v44);
    (*(v32 + 56))(v36, 0, 1, v44);
    v40 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_displayServerHandlerContinuation;
    swift_beginAccess();
    sub_2649FECCC(v36, v37 + v40, &qword_27FF891A8, &qword_264B46FA8);
    swift_endAccess();
    sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
    v41 = swift_allocObject();
    v0[23] = v41;
    swift_weakInit();
    v42 = swift_task_alloc();
    v0[24] = v42;
    *(v42 + 16) = v41;
    *(v42 + 24) = v45;
    v43 = swift_task_alloc();
    v0[25] = v43;
    *v43 = v0;
    v43[1] = sub_2649EEB4C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2649EEB4C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2649EEC9C, v1, 0);
}

uint64_t sub_2649EEC9C()
{
  v23 = v0;
  v1 = *(*(v0 + 64) + *(v0 + 168));
  sub_2649DDB20(v1);
  sub_2649FE684(v1);
  sub_2649FE684(1);
  if (v1)
  {

    v2 = sub_264B40944();
    v3 = sub_264B41494();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 168);
      v5 = *(v0 + 64);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136446210;
      v8 = *(v5 + v4);
      *(v0 + 48) = v8;
      sub_2649DDB20(v8);
      v9 = sub_264B41064();
      v11 = sub_2649CC004(v9, v10, &v22);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v2, v3, "Unable to continue activation, state has changed to: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    v12 = *(v0 + 176);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
    sub_264B412B4();

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    sub_2649EF2BC(*(v0 + 176), *(v0 + 128));
    v21 = swift_task_alloc();
    *(v0 + 208) = v21;
    *v21 = v0;
    v21[1] = sub_2649EEF48;

    return sub_2649EF968();
  }
}

uint64_t sub_2649EEF48()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2649EF058, v1, 0);
}

uint64_t sub_2649EF058()
{
  v26 = v0;
  v1 = *(v0[8] + v0[21]);
  sub_2649DDB20(v1);
  sub_2649FE684(v1);
  sub_2649FE684(1);
  if (v1)
  {

    v2 = sub_264B40944();
    v3 = sub_264B41494();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[21];
      v5 = v0[8];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      v8 = *(v5 + v4);
      v0[7] = v8;
      sub_2649DDB20(v8);
      v9 = sub_264B41064();
      v11 = sub_2649CC004(v9, v10, &v25);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v2, v3, "Unable to continue activation, state has changed to: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    v12 = v0[22];
    v14 = v0[18];
    v13 = v0[19];
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[14];
    v18 = v0[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
    sub_264B412B4();

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v19 = v0[22];
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    (*(v0[15] + 8))(v0[16], v0[14]);

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[1];

  return v23();
}

void sub_2649EF2BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  v41 = *(v4 - 8);
  v43 = v41[8];
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v38 - v6;
  v8 = sub_264B3FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FFA71D0);
  v14 = sub_264B41484();
  sub_264B3FF94();
  v15 = sub_264B3FFA4();
  v17 = v16;
  (*(v9 + 8))(v12, v8);

  v18 = sub_264B40944();

  if (os_log_type_enabled(v18, v14))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446722;
    v21 = sub_2649CC004(v15, v17, &aBlock);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2050;
    *(v19 + 14) = 262;
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_2649CC004(0xD00000000000002DLL, 0x8000000264B5A2D0, &aBlock);
    _os_log_impl(&dword_2649C6000, v18, v14, "%{public}s:%{public}ld %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  else
  {
  }

  v22 = v44;
  [v44 setDispatchQueue_];
  v23 = v41;
  v24 = v41 + 2;
  v40 = v41[2];
  v25 = v45;
  v40(v7, v45, v4);
  v42 = v24;
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v38 = *(v23 + 80);
  v27 = swift_allocObject();
  v39 = v23[4];
  v39(v27 + v26, v7, v4);
  v50 = sub_2649FEFC0;
  v51 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v41 = &v48;
  v48 = sub_2649D68F4;
  v49 = &block_descriptor_86;
  v28 = _Block_copy(&aBlock);

  [v22 setInterruptionHandler_];
  _Block_release(v28);
  v29 = v40;
  v40(v7, v25, v4);
  v30 = swift_allocObject();
  v31 = v39;
  v39(v30 + v26, v7, v4);
  v50 = sub_2649FEFD8;
  v51 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2649D68F4;
  v49 = &block_descriptor_92;
  v32 = _Block_copy(&aBlock);

  [v22 setInvalidationHandler_];
  _Block_release(v32);
  v29(v7, v45, v4);
  v33 = swift_allocObject();
  v31(v33 + v26, v7, v4);
  v50 = sub_2649FF070;
  v51 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2649F3CEC;
  v49 = &block_descriptor_98;
  v34 = _Block_copy(&aBlock);

  v35 = v44;
  [v44 setSessionStartHandler_];
  _Block_release(v34);
  v29(v7, v45, v4);
  v36 = swift_allocObject();
  v31(v36 + v26, v7, v4);
  v50 = sub_2649FF118;
  v51 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_2649F3E88;
  v49 = &block_descriptor_104;
  v37 = _Block_copy(&aBlock);

  [v35 setSessionEndedHandler_];
  _Block_release(v37);
}

uint64_t sub_2649EF988()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[19] = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Activating RPRemoteDisplayServer", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteDisplayServer);
  v0[20] = v6;
  if (v6)
  {
    v0[2] = v0;
    v0[3] = sub_2649EFC00;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649F4D64;
    v0[13] = &block_descriptor_77;
    v0[14] = v7;
    [v6 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_2649FEF6C();
    v8 = swift_allocError();
    v0[22] = v8;
    *v9 = 8;
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_2649EFE04;

    return sub_2649F189C(v8);
  }
}

uint64_t sub_2649EFC00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_2649EFF14;
  }

  else
  {
    v4 = sub_2649EFD20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649EFD20(uint64_t a1)
{
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 160);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "RPRemoteDisplayServer Activated!", v6, 2u);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    v2 = v5;
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2649EFE04()
{
  v1 = *(*v0 + 176);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2649EFF14(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();
  v3 = v2;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Error activating display server: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v1 + 192) = v11;
  *v11 = v1;
  v11[1] = sub_2649F00A4;
  v12 = *(v1 + 168);

  return sub_2649F189C(v12);
}

uint64_t sub_2649F00A4()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2649F01B4, v1, 0);
}

uint64_t sub_2649F01B4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2649F021C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2649F023C, v1, 0);
}

uint64_t sub_2649F023C()
{
  sub_2649EDB78(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F02B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649DCDF0;

  return sub_2649E912C();
}

uint64_t sub_2649F0344(uint64_t a1)
{
  result = sub_264A03218(&qword_27FF89178, type metadata accessor for MediaTransportServerSession, &unk_264B46ED8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649F039C(uint64_t a1)
{
  result = sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649F03F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v30 - v17;
  v32 = &v30 - v17;
  v19 = sub_264B41274();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v31 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v20 = v14;
  (*(v10 + 16))(v14, v33, v9);
  v21 = v8;
  v22 = v8;
  v23 = v3;
  (*(v4 + 16))(v21, v34, v3);
  v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v25 = (v11 + *(v4 + 80) + v24) & ~*(v4 + 80);
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v10 + 32))(v27 + v24, v20, v9);
  (*(v4 + 32))(v27 + v25, v22, v23);
  v28 = v32;
  *(v27 + v26) = v31;
  sub_264A10C20(0, 0, v28, &unk_264B47008, v27);
}

uint64_t sub_2649F0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891D8, &qword_264B47010);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F07F4, 0, 0);
}

uint64_t sub_2649F07F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0);
  sub_264B412C4();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2649F0900;
  v2 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_2649F0900()
{

  return MEMORY[0x2822009F8](sub_2649F09FC, 0, 0);
}

uint64_t sub_2649F09FC()
{
  v47 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  v3 = *(v0 + 32);
  *(v0 + 176) = v3;
  v4 = *(v0 + 40);
  if (v4 != 255)
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v6 = sub_264B40964();
      __swift_project_value_buffer(v6, qword_27FFA71D0);
      sub_2649FF5A8(v2, v1, v3, v4);
      v7 = sub_264B40944();
      v8 = sub_264B414B4();
      sub_2649FF518(v2, v1, v3, v4);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v9 = 136446210;
        *(v0 + 48) = v2;
        *(v0 + 56) = v1;
        *(v0 + 64) = v3;
        *(v0 + 72) = v4;
        sub_2649FF5A8(v2, v1, v3, v4);
        v10 = sub_264B41064();
        v12 = sub_2649CC004(v10, v11, &v46);

        *(v9 + 4) = v12;
        _os_log_impl(&dword_2649C6000, v7, v8, "Got remoteDisplayServer handler: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x266749940](v45, -1, -1);
        MEMORY[0x266749940](v9, -1, -1);
      }

      if (v4)
      {
        if (v4 == 1)
        {
          v13 = v2;
          v14 = v1;
          v15 = sub_264B40944();
          v16 = sub_264B41474();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = v1;
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_2649C6000, v15, v16, "remoteDisplayServer sessionEndedHandler", v18, 2u);
            v19 = v18;
            v1 = v17;
            MEMORY[0x266749940](v19, -1, -1);
          }

          v20 = swift_task_alloc();
          *(v0 + 224) = v20;
          *v20 = v0;
          v20[1] = sub_2649F16C4;

          return sub_2649F32D4(v13, v1);
        }

        else if (v3 | v1 | v2)
        {
          v34 = sub_264B40944();
          v35 = sub_264B414B4();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_2649C6000, v34, v35, "remoteDisplayServer invalidationHandler", v36, 2u);
            MEMORY[0x266749940](v36, -1, -1);
          }

          v37 = swift_task_alloc();
          *(v0 + 208) = v37;
          *v37 = v0;
          v37[1] = sub_2649F132C;

          return sub_2649E912C();
        }

        else
        {
          v39 = sub_264B40944();
          v40 = sub_264B41494();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_2649C6000, v39, v40, "remoteDisplayServer interruptionHandler", v41, 2u);
            MEMORY[0x266749940](v41, -1, -1);
          }

          sub_2649FEF10();
          v42 = swift_allocError();
          *(v0 + 192) = v42;
          *v43 = 1;
          v44 = swift_task_alloc();
          *(v0 + 200) = v44;
          *v44 = v0;
          v44[1] = sub_2649F1150;

          return sub_2649F189C(v42);
        }
      }

      else
      {
        v27 = v2;

        v28 = sub_264B40944();
        v29 = sub_264B41474();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = v1;
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2649C6000, v28, v29, "remoteDisplayServer sessionStartHandler", v31, 2u);
          v32 = v31;
          v1 = v30;
          MEMORY[0x266749940](v32, -1, -1);
        }

        v33 = swift_task_alloc();
        *(v0 + 216) = v33;
        *v33 = v0;
        v33[1] = sub_2649F14EC;

        return sub_2649F2074(v27, v1, v3);
      }
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v22 = sub_264B40964();
    __swift_project_value_buffer(v22, qword_27FFA71D0);
    v23 = sub_264B40944();
    v24 = sub_264B41484();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v1;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2649C6000, v23, v24, "Self went away before DisplayServerHandler could be consumed", v26, 2u);
      MEMORY[0x266749940](v26, -1, -1);

      sub_2649FF518(v2, v25, v3, v4);
    }

    else
    {
      sub_2649FF518(v2, v1, v3, v4);
    }
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2649F1150()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_2649F1268, 0, 0);
}

uint64_t sub_2649F1268()
{

  sub_2649FF518(0, 0, 0, 2);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2649F0900;
  v2 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_2649F132C()
{

  return MEMORY[0x2822009F8](sub_2649F1428, 0, 0);
}

uint64_t sub_2649F1428()
{

  sub_2649FF518(1, 0, 0, 2);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2649F0900;
  v2 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_2649F14EC()
{

  return MEMORY[0x2822009F8](sub_2649F15E8, 0, 0);
}

uint64_t sub_2649F15E8()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];

  sub_2649FF518(v3, v2, v1, 0);

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2649F0900;
  v5 = v0[16];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_2649F16C4()
{

  return MEMORY[0x2822009F8](sub_2649F17C0, 0, 0);
}

uint64_t sub_2649F17C0()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];

  sub_2649FF518(v3, v2, v1, 1);

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2649F0900;
  v5 = v0[16];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_2649F189C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2649F18BC, v1, 0);
}

uint64_t sub_2649F18BC()
{
  v40 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136446210;
    v0[5] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, &v39);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Server session interrupted: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v13 = v0[7];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  if (v15 > 2)
  {

    v25 = sub_264B40944();
    v26 = sub_264B41494();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[7];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136446210;
      v0[4] = v27;
      type metadata accessor for MediaTransportServerSession(0);

      v30 = sub_264B41064();
      v32 = sub_2649CC004(v30, v31, &v39);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2649C6000, v25, v26, "%{public}s Server is already in a terminal state, not interrupting again.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      MEMORY[0x266749940](v28, -1, -1);
    }

    v33 = v0[1];

    return v33();
  }

  else if (v15 == 2)
  {
    sub_2649FE684(2);
    sub_2649FE684(2);

    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[7];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136446210;
      v0[2] = v18;
      type metadata accessor for MediaTransportServerSession(0);

      v21 = sub_264B41064();
      v23 = sub_2649CC004(v21, v22, &v39);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s Server is in the process of tearing down, will wait for terminal state before resuming interruption call...", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
    v24 = swift_task_alloc();
    v0[9] = v24;
    *v24 = v0;
    v24[1] = sub_2649F1F64;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v34 = v0[6];
    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(2);
    v35 = *(v13 + v14);
    *(v13 + v14) = 2;
    sub_2649DDB20(v35);
    sub_2649FE684(v35);
    v39 = v35;
    sub_2649E7730(&v39);
    sub_2649FE684(v35);
    v0[3] = v34;
    v36 = v34;
    v37 = swift_task_alloc();
    v0[8] = v37;
    *v37 = v0;
    v37[1] = sub_2649F1E54;

    return sub_2649EB970(v0 + 3);
  }
}

uint64_t sub_2649F1E54()
{
  v1 = *v0;
  v4 = *v0;

  sub_2649FE684(*(v1 + 24));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2649F1F64()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_264A03340, v1, 0);
}

uint64_t sub_2649F2074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB0, &qword_264B46F90);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F21B4, v3, 0);
}

uint64_t sub_2649F21B4()
{
  v33 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_264B40964();
  v0[25] = __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2649C6000, v4, v5, "remoteDisplaySessionStarted: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v10 = v0[19];

  v11 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v0[26] = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v12 = *(v10 + v11);
  sub_2649DDB20(v12);
  sub_2649FE684(v12);
  sub_2649FE684(1);
  v13 = v0[19];
  if (v12)
  {

    v14 = sub_264B40944();
    v15 = sub_264B41494();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[19];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446210;
      v0[13] = v16;
      type metadata accessor for MediaTransportServerSession(0);

      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v32);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v14, v15, "%{public}s Server has invalid state", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v22 = v0[17];
    v23 = v0[16];
    sub_2649FEF10();
    v24 = swift_allocError();
    *v25 = 2;
    v22();

    [v23 invalidate];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[16];
    [v28 setDispatchQueue_];
    v29 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
    *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession) = v28;
    v30 = v28;

    sub_2649F3F14(v30);
    sub_2649F4568(v30);
    v31 = swift_task_alloc();
    v0[27] = v31;
    *v31 = v0;
    v31[1] = sub_2649F2594;

    return sub_2649F4890();
  }
}

uint64_t sub_2649F2594()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2649F26A4, v1, 0);
}

uint64_t sub_2649F26A4()
{
  v33 = v0;
  v1 = *(v0[19] + v0[26]);
  sub_2649DDB20(v1);
  sub_2649FE684(v1);
  sub_2649FE684(1);
  if (v1)
  {

    v2 = sub_264B40944();
    v3 = sub_264B41494();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[19];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136446210;
      v0[14] = v4;
      type metadata accessor for MediaTransportServerSession(0);

      v7 = sub_264B41064();
      v9 = sub_2649CC004(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2649C6000, v2, v3, "%{public}s Server invalidated during setupStreamServer", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x266749940](v6, -1, -1);
      MEMORY[0x266749940](v5, -1, -1);
    }

    v10 = v0[17];
    sub_2649FEF10();
    v11 = swift_allocError();
    *v12 = 4;
    v10();

    v13 = v0[1];

    return v13();
  }

  else
  {
    (v0[17])(0);
    v15 = sub_264B40944();
    v16 = sub_264B414B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2649C6000, v15, v16, "Letting the client know we're ready for incoming streams", v17, 2u);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v18 = sub_264B400A4();
    v20 = v19;
    v0[28] = v18;
    v0[29] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E0, &unk_264B47030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 0x496E6F6973736573;
    *(inited + 40) = 0xE900000000000044;
    *(inited + 48) = v18;
    *(inited + 56) = v20;

    v22 = sub_264A24438(inited);
    swift_setDeallocating();
    sub_2649D04D4(inited + 32, &qword_27FF891E8, qword_264B51630);

    v23 = sub_264B40944();
    v24 = sub_264B414B4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_2649CC004(v18, v20, &v32);
      _os_log_impl(&dword_2649C6000, v23, v24, "Sending sessionID: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x266749940](v26, -1, -1);
      MEMORY[0x266749940](v25, -1, -1);
    }

    v27 = sub_264AB4A0C(v22);
    v0[30] = v27;

    v28 = sub_264B41044();
    v30 = v29;
    v0[31] = v29;
    v31 = swift_task_alloc();
    v0[32] = v31;
    *v31 = v0;
    v31[1] = sub_2649F2B54;

    return sub_264A59FDC(0, v27, v28, v30);
  }
}

uint64_t sub_2649F2B54()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_2649F2FA4;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_2649F2C84;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649F2C84()
{
  v29 = v0;

  v1 = sub_264B40944();
  v2 = sub_264B414B4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  if (v3)
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136446210;
    v8 = sub_2649CC004(v5, v4, &v28);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v1, v2, "Sent sessionID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[19];
  v14 = *(v13 + v9);
  *(v13 + v9) = 1;
  sub_2649DDB20(v14);
  sub_2649FE684(v14);
  v28 = v14;
  sub_2649E7730(&v28);
  sub_2649FE684(v14);
  v15 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v13 + v15, v10, &qword_27FF88D78, &qword_264B45850);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_2649D04D4(v0[23], &qword_27FF88D78, &qword_264B45850);
    v16 = 1;
  }

  else
  {
    v17 = v0[26];
    v18 = v0[23];
    v20 = v0[21];
    v19 = v0[22];
    v22 = v0[19];
    v21 = v0[20];
    (*(v20 + 16))(v19, v18, v21);
    sub_2649D04D4(v18, &qword_27FF88D78, &qword_264B45850);
    v23 = *(v22 + v17);
    v0[15] = v23;
    sub_2649DDB20(v23);
    sub_264B412A4();
    (*(v20 + 8))(v19, v21);
    v16 = 0;
  }

  v24 = v0[24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  (*(*(v25 - 8) + 56))(v24, v16, 1, v25);
  sub_2649D04D4(v24, &qword_27FF88DB0, &qword_264B46F90);

  v26 = v0[1];

  return v26();
}

uint64_t sub_2649F2FA4()
{
  v1 = *(v0 + 264);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send started message to client: %{public}@, tearing down", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_2649F3148;
  v11 = *(v0 + 264);

  return sub_2649F189C(v11);
}

uint64_t sub_2649F3148()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2649F3258, v1, 0);
}

uint64_t sub_2649F3258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F32D4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2649F32F8, v2, 0);
}

uint64_t sub_2649F32F8()
{
  v31 = v0;
  v1 = *(v0[5] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (v1 && (v2 = v0[3], sub_2649D8B90(0, &qword_27FF89240, 0x277D441F0), v3 = v2, v4 = v1, v5 = sub_264B415E4(), v3, v4, (v5 & 1) != 0))
  {
    v6 = v0[4];
    if (v6)
    {
      v7 = v6;
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v8 = sub_264B40964();
      __swift_project_value_buffer(v8, qword_27FFA71D0);
      v9 = v6;
      v10 = sub_264B40944();
      v11 = sub_264B41494();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30 = v13;
        *v12 = 136446210;
        v0[2] = v6;
        v14 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
        v15 = sub_264B41064();
        v17 = sub_2649CC004(v15, v16, &v30);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_2649C6000, v10, v11, "RPRemoteDisplaySession ended with error, interrupting: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x266749940](v13, -1, -1);
        MEMORY[0x266749940](v12, -1, -1);
      }

      v18 = swift_task_alloc();
      v0[6] = v18;
      *v18 = v0;
      v18[1] = sub_2649F376C;

      return sub_2649F189C(v6);
    }

    else
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v25 = sub_264B40964();
      __swift_project_value_buffer(v25, qword_27FFA71D0);
      v26 = sub_264B40944();
      v27 = sub_264B414B4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2649C6000, v26, v27, "RPRemoteDisplaySession ended without error, invalidating", v28, 2u);
        MEMORY[0x266749940](v28, -1, -1);
      }

      v29 = swift_task_alloc();
      v0[7] = v29;
      *v29 = v0;
      v29[1] = sub_2649F38DC;

      return sub_2649E912C();
    }
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v20 = sub_264B40964();
    __swift_project_value_buffer(v20, qword_27FFA71D0);
    v21 = sub_264B40944();
    v22 = sub_264B414B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2649C6000, v21, v22, "Session from some other Mac ended, ignoring.", v23, 2u);
      MEMORY[0x266749940](v23, -1, -1);
    }

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2649F376C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2649F387C, v1, 0);
}

uint64_t sub_2649F387C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F38DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2649F39D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891D0, &qword_264B46FF8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - v3;
  memset(v6, 0, sizeof(v6));
  v7 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  sub_264B412A4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2649F3ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891D0, &qword_264B46FF8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - v3;
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = 1;
  v7 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  sub_264B412A4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2649F3BCC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891D0, &qword_264B46FF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v13 - v9;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = 0;
  v11 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  sub_264B412A4();
  return (*(v7 + 8))(v10, v6);
}

void sub_2649F3D0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_264B3FF74();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2649F3D70(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891D0, &qword_264B46FF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = 0;
  v13 = 1;
  v9 = a1;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);
  sub_264B412A4();
  return (*(v5 + 8))(v8, v4);
}

void sub_2649F3E88(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_2649F3F14(void *a1)
{
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, aBlock);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 569;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0xD00000000000002ELL, 0x8000000264B5A550, aBlock);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264A02E98;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649F9844;
  aBlock[3] = &block_descriptor_225;
  v17 = _Block_copy(aBlock);

  [a1 setErrorHandler_];
  _Block_release(v17);
}

void sub_2649F4240(void *a1)
{
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, &v17);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 268;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0xD000000000000014, 0x8000000264B5A490, &v17);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  sub_2649FDDF4(byte_287655B78, a1, &unk_287658390, sub_264A02FA8, &block_descriptor_244);
  sub_2649FDDF4(byte_287655B79, a1, &unk_287658390, sub_264A02FA8, &block_descriptor_244);
  sub_2649FDDF4(byte_287655B7A, a1, &unk_287658390, sub_264A02FA8, &block_descriptor_244);
  sub_2649FDDF4(byte_287655B7B, a1, &unk_287658390, sub_264A02FA8, &block_descriptor_244);
  sub_2649FDDF4(byte_287655B7C, a1, &unk_287658390, sub_264A02FA8, &block_descriptor_244);
}

void sub_2649F4568(void *a1)
{
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, &v17);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 268;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0xD000000000000014, 0x8000000264B5A490, &v17);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  sub_2649FDDF4(byte_287655BA0, a1, &unk_287658278, sub_264A00350, &block_descriptor_195);
  sub_2649FDDF4(byte_287655BA1, a1, &unk_287658278, sub_264A00350, &block_descriptor_195);
  sub_2649FDDF4(byte_287655BA2, a1, &unk_287658278, sub_264A00350, &block_descriptor_195);
  sub_2649FDDF4(byte_287655BA3, a1, &unk_287658278, sub_264A00350, &block_descriptor_195);
  sub_2649FDDF4(byte_287655BA4, a1, &unk_287658278, sub_264A00350, &block_descriptor_195);
}

uint64_t sub_2649F48B0()
{
  v28 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Setting up RPStreamServer", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D44208]) init];
  v0[4] = v5;

  v6 = sub_264B40944();
  v7 = sub_264B41484();

  v8 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[3];
    v26 = v9;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136446466;
    v13 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
    v0[2] = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891F0, &qword_264B47048);
    v15 = sub_264B41064();
    v17 = sub_2649CC004(v15, v16, &v27);
    v8 = &OBJC_IVAR____TtC16ScreenSharingKit43CoreBluetoothBackedLocalBluetoothPrimitives_centralManager;

    *(v10 + 4) = v17;
    *(v10 + 12) = 2114;
    v18 = *(v26 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_remoteStreamServer);
    *(v10 + 14) = v18;
    *v11 = v18;
    v19 = v18;
    _os_log_impl(&dword_2649C6000, v6, v7, "Attaching session:%{public}s to server:%{public}@", v10, 0x16u);
    sub_2649D04D4(v11, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v20 = v0[3];
  [v5 setMessenger_];
  [v5 setStreamQoS_];
  v21 = v8[28];
  v22 = *(v20 + v21);
  *(v20 + v21) = v5;
  v23 = v5;

  sub_2649F4E10(v23);
  v24 = swift_task_alloc();
  v0[5] = v24;
  *v24 = v0;
  v24[1] = sub_2649F4BF4;

  return sub_2649F5030(v23);
}

uint64_t sub_2649F4BF4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2649F4D04, v1, 0);
}

uint64_t sub_2649F4D04()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F4D64(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

void sub_2649F4E10(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v12 = sub_2649FF624;
  v13 = v2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F5890;
  v11 = &block_descriptor_129;
  v3 = _Block_copy(&v8);

  [a1 setStreamPrepareHandler_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v12 = sub_2649FF62C;
  v13 = v4;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F6590;
  v11 = &block_descriptor_133;
  v5 = _Block_copy(&v8);

  [a1 setStreamAcceptHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v12 = sub_2649FF634;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649D68F4;
  v11 = &block_descriptor_137;
  v7 = _Block_copy(&v8);

  [a1 setInvalidationHandler_];
  _Block_release(v7);
}

uint64_t sub_2649F5030(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_2649F5050, v1, 0);
}

uint64_t sub_2649F5050()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[24] = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Activating RPStreamServer", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[22];

  v0[2] = v0;
  v0[3] = sub_2649F5218;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2649F4D64;
  v0[13] = &block_descriptor_124;
  v0[14] = v6;
  [v5 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2649F5218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_2649F534C;
  }

  else
  {
    v4 = sub_2649F5338;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649F534C(uint64_t a1)
{
  v15 = v1;
  v2 = *(v1 + 200);
  swift_willThrow();
  v3 = v2;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_264B41B24();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Activating RPStreamServer failed with error: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v1 + 208) = v11;
  *v11 = v1;
  v11[1] = sub_2649F54F4;
  v12 = *(v1 + 200);

  return sub_2649F189C(v12);
}

uint64_t sub_2649F54F4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_2649F5604, v1, 0);
}

uint64_t sub_2649F5604()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2649F5664(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71D0);
    v6 = sub_264B40944();
    v7 = sub_264B41484();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "remoteStreamServer streamPrepareHandler", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    [a1 setDispatchQueue_];
    if ([a1 streamType] == 3)
    {
      [a1 setDelegatedProcessUPID_];
      [a1 setStreamFlags_];
    }
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71D0);
    v10 = sub_264B40944();
    v11 = sub_264B41484();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "Self went await before stream server could prepare, bailing out", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }
  }
}

void sub_2649F5890(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2649F58F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  sub_264B41254();
  v11 = sub_264B41274();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a1;

  sub_2649F62D0(0, 0, v10, &unk_264B47068, v13);

  return sub_2649D04D4(v10, &qword_27FF898C0, &unk_264B44190);
}

uint64_t sub_2649F5A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  return MEMORY[0x2822009F8](sub_2649F5ABC, 0, 0);
}

uint64_t sub_2649F5ABC()
{
  v22 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v3 = sub_264B40964();
    v0[14] = __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = v2;
    v5 = sub_264B40944();
    v6 = sub_264B41484();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[10];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136446210;
      RPStreamTypeToString([v7 streamType]);
      v10 = sub_264B410A4();
      v12 = sub_2649CC004(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v5, v6, "Incoming stream: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_2649F5DB4;
    v14 = v0[10];

    return sub_2649F60D8(v14);
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71D0);
    v17 = sub_264B40944();
    v18 = sub_264B41484();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2649C6000, v17, v18, "Self went away before stream server could accept incoming stream, bailing out", v19, 2u);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2649F5DB4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2649F5F3C;
  }

  else
  {
    v2 = sub_2649F5EC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2649F5EC8()
{
  (*(v0 + 88))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F5F3C()
{
  v16 = v0;
  v1 = v0[16];
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_264B41B24();
    v9 = sub_2649CC004(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "unable to configure stream session error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = v0[16];
  v11 = v0[11];
  v12 = v10;
  v11(v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2649F60D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F619C, v1, 0);
}

uint64_t sub_2649F619C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = sub_264B41274();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v2;
  v7 = v3;
  sub_2649CD944(0, 0, v1, &unk_264B47098, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2649F62D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_2649D046C(a3, v26 - v11, &qword_27FF898C0, &unk_264B44190);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2649D04D4(v12, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264B411C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264B41074() + 32;
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

void sub_2649F65B0(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_2649F6668(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71D0);
  v6 = sub_264B40944();
  v7 = sub_264B41474();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "remoteStreamServer invalidationHandler", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v9 = sub_264B41274();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_264A10C20(0, 0, v4, &unk_264B47058, v11);
}

uint64_t sub_2649F6894()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_2649FEF6C();
    v2 = swift_allocError();
    v0[7] = v2;
    *v3 = 7;
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_2649F6A6C;

    return sub_2649F189C(v2);
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71D0);
    v7 = sub_264B40944();
    v8 = sub_264B41484();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Self went away before stream server could invalidate, bailing out.", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2649F6A6C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2649F6B84, 0, 0);
}

uint64_t sub_2649F6B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2649F6C04, 0, 0);
}

uint64_t sub_2649F6C04()
{
  v38 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71D0);
    v5 = v3;
    v6 = sub_264B40944();
    v7 = sub_264B41474();

    v8 = &_swift_FORCE_LOAD___swiftCoreLocation___ScreenSharingKit;
    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 48);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136446210;
      v12 = [v9 streamID];
      if (v12)
      {
        v13 = v12;
        v14 = sub_264B41044();
        v16 = v15;

        v8 = &_swift_FORCE_LOAD___swiftCoreLocation___ScreenSharingKit;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v21 = sub_2649CC004(v14, v16, &v37);

      *(v10 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v6, v7, "streamID is:%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    v22 = [*(v0 + 48) v8[270]];
    if (v22)
    {
      v23 = v22;
      v24 = sub_264B41044();
      v26 = v25;

      *(v0 + 64) = v24;
      *(v0 + 72) = v26;
      if (sub_264A00048(v24, v26, v27, v28))
      {
        v29 = sub_264B40944();
        v30 = sub_264B41474();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2649C6000, v29, v30, "Received control stream", v31, 2u);
          MEMORY[0x266749940](v31, -1, -1);
        }

        v32 = sub_2649F7034;
      }

      else
      {

        v32 = sub_2649F74BC;
      }

      return MEMORY[0x2822009F8](v32, v2, 0);
    }

    v18 = sub_264B40944();
    v33 = sub_264B41494();
    if (os_log_type_enabled(v18, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2649C6000, v18, v33, "empty streamID", v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FFA71D0);
    v18 = sub_264B40944();
    v19 = sub_264B41484();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2649C6000, v18, v19, "Self went away before incoming stream could be configured, bailing out.", v20, 2u);
      MEMORY[0x266749940](v20, -1, -1);
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2649F7034()
{
  sub_264A03218(&qword_27FF89170, type metadata accessor for MediaTransportServerSession, &unk_264B46F2C);
  *(v0 + 80) = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2649F717C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2649F717C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2649F72A8, v1, 0);
}

uint64_t sub_2649F72A8()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2649F7340;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];

  return sub_2649F75AC(v4, v2, v3);
}

uint64_t sub_2649F7340()
{

  return MEMORY[0x2822009F8](sub_2649F7458, 0, 0);
}

uint64_t sub_2649F7458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F74BC()
{
  sub_2649F8160(*(v0 + 48));
  *(v0 + 104) = 0;

  return MEMORY[0x2822009F8](sub_264A03384, 0, 0);
}

uint64_t sub_2649F7548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649F75AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891F8, &qword_264B470A8);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FC0, &unk_264B470B0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89198, &qword_264B46F98);
  v4[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89158, &qword_264B46EB8);
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F7854, v3, 0);
}

uint64_t sub_2649F7854()
{
  v64 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v3, &qword_27FF89198, &qword_264B46F98);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v0[23], &qword_27FF89198, &qword_264B46F98);
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71D0);
    v7 = sub_264B40944();
    v8 = sub_264B41474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "controlStreamContinuation is nil!", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

    sub_264A0015C();
    v10 = swift_allocError();
    swift_willThrow();
    goto LABEL_21;
  }

  v11 = v0[10];
  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  v12 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (!v12)
  {
    v53 = v0[25];
    v52 = v0[26];
    v54 = v0[24];
    sub_2649FEF6C();
    v10 = swift_allocError();
    *v55 = 4;
    swift_willThrow();
    (*(v53 + 8))(v52, v54);
LABEL_21:
    v0[27] = v10;
    v56 = swift_task_alloc();
    v0[28] = v56;
    *v56 = v0;
    v56[1] = sub_2649F7FA0;

    return sub_2649F189C(v10);
  }

  v13 = v0[7];
  v14 = v12;
  v15 = [v13 streamQoS];
  if (v15 >= 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v61 = v16;
  v17 = *(v0[10] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_rapportQueue);
  type metadata accessor for MediaTransportControlStream(0);
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  v62 = v14;
  v60 = v17;
  *(v18 + 40) = sub_264AAAA68(&unk_287655BA8);
  v19 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v21 = sub_264B40964();
  __swift_project_value_buffer(v21, qword_27FFA71D0);

  v22 = sub_264B40944();
  v23 = sub_264B414B4();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[8];
    v24 = v0[9];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_2649CC004(v25, v24, v63);
    _os_log_impl(&dword_2649C6000, v22, v23, "MediaTransportControlStream initialized with streamID:%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x266749940](v27, -1, -1);
    MEMORY[0x266749940](v26, -1, -1);
  }

  v28 = v0[21];
  v29 = v0[22];
  v57 = v0[19];
  v58 = v0[20];
  v30 = v0[18];
  v59 = v0[17];
  v32 = v0[15];
  v31 = v0[16];
  v33 = v0[14];
  v34 = v0[8];
  v35 = v0[9];
  v36 = v0[7];
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_role) = 0;
  *(v18 + 16) = v34;
  *(v18 + 24) = v35;
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportDispatchQueue) = v60;
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_QOS) = v61;
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) = v36;
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession) = v62;
  (*(v32 + 104))(v31, *MEMORY[0x277D85778], v33);

  v37 = v36;
  sub_264B41284();
  (*(v32 + 8))(v31, v33);
  (*(v28 + 32))(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStream, v29, v58);
  (*(v30 + 32))(v18 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStreamContinuation, v57, v59);

  v38 = sub_264B40944();
  v39 = sub_264B41474();

  if (os_log_type_enabled(v38, v39))
  {
    v41 = v0[8];
    v40 = v0[9];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v63[0] = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_2649CC004(v41, v40, v63);
    _os_log_impl(&dword_2649C6000, v38, v39, "created control stream: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x266749940](v43, -1, -1);
    MEMORY[0x266749940](v42, -1, -1);
  }

  v45 = v0[25];
  v44 = v0[26];
  v46 = v0[24];
  v48 = v0[12];
  v47 = v0[13];
  v49 = v0[11];
  v0[5] = v18;
  v0[6] = &protocol witness table for MediaTransportControlStream;
  sub_264B412A4();

  (*(v48 + 8))(v47, v49);
  (*(v45 + 8))(v44, v46);

  v50 = v0[1];

  return v50();
}

uint64_t sub_2649F7FA0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2649F80B0, v1, 0);
}

uint64_t sub_2649F80B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2649F8160(void *a1)
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71D0);
  v4 = a1;
  v5 = sub_264B40944();
  v6 = sub_264B41484();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26[7] = v1;
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136446210;
    RPStreamTypeToString([v4 streamType]);
    v9 = sub_264B410A4();
    v11 = sub_2649CC004(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v12 = [v4 streamID];
  if (!v12)
  {
    v18 = sub_264B40944();
    v19 = sub_264B41494();
    if (!os_log_type_enabled(v18, v19))
    {
      v21 = 4;
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2649C6000, v18, v19, "invalid streamID provided", v20, 2u);
    v21 = 4;
LABEL_17:
    MEMORY[0x266749940](v20, -1, -1);
LABEL_21:

    sub_2649FEC60();
    swift_allocError();
    *v24 = v21;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v14 = sub_264B41044();
  v16 = v15;

  if ((v14 != 0xD00000000000001ELL || 0x8000000264B5A3E0 != v16) && (sub_264B41AA4() & 1) == 0 && (v14 != 0xD00000000000001ELL || 0x8000000264B5A400 != v16) && (sub_264B41AA4() & 1) == 0)
  {

    v18 = sub_264B40944();
    v25 = sub_264B41494();
    if (!os_log_type_enabled(v18, v25))
    {
      v21 = 3;
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2649C6000, v18, v25, "stream type is not audio or video", v20, 2u);
    v21 = 3;
    goto LABEL_17;
  }

  if (v14 == 0xD00000000000001ELL && 0x8000000264B5A400 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_264B41AA4();
  }

  [v4 setStreamFlags_];
  v22 = swift_allocObject();
  swift_weakInit();
  v26[4] = sub_264A002B4;
  v26[5] = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_2649F8654;
  v26[3] = &block_descriptor_185;
  v23 = _Block_copy(v26);

  [v4 setReceivedRequestHandler_];
  _Block_release(v23);
  LOBYTE(v26[0]) = v17 & 1;
  sub_2649F8870(v26, v4);
}

uint64_t sub_2649F85D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    return a5(a3, a4, 0);
  }

  return result;
}

uint64_t sub_2649F8654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = *(a1 + 32);
  v8 = sub_264B41044();
  v10 = v9;
  v11 = sub_264B40F64();
  if (a4)
  {
    a4 = sub_264B40F64();
  }

  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  v7(v8, v10, v11, a4, sub_264A002BC, v13);
}

void sub_2649F8788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_264B40F54();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_264B40F54();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_264B3FF74();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

void sub_2649F8870(char *a1, void *a2)
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89208, &qword_264B470D0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v59 = &v58 - v6;
  v7 = sub_264B40104();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891A0, &qword_264B46FA0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89168, &qword_264B46EC0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58 - v17;
  v19 = *a1;
  v20 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v20, v13, &qword_27FF891A0, &qword_264B46FA0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    if (!*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession))
    {
      sub_2649FEF6C();
      swift_allocError();
      *v43 = 4;
      swift_willThrow();
LABEL_26:
      (*(v15 + 8))(v18, v14);
      return;
    }

    if (v19)
    {
      v26 = sub_264B41AA4();

      if ((v26 & 1) == 0)
      {
        v27 = v2;
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v28 = sub_264B40964();
        __swift_project_value_buffer(v28, qword_27FFA71D0);
        v29 = sub_264B40944();
        v30 = sub_264B41474();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2649C6000, v29, v30, "creating video stream", v31, 2u);
          MEMORY[0x266749940](v31, -1, -1);
        }

        v32 = v27;
        v33 = v27 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionID;
        v34 = v64;
        (*(v62 + 16))(v64, v33, v63);
        v35 = type metadata accessor for MediaTransportVideoStream(0);
        v36 = objc_allocWithZone(v35);

        v37 = v65;
        v39 = sub_264AAAB10(0, v37, v32, v34, v36, v38);

        v40 = v39;
        v41 = v69;
        sub_264AA0648(v40, &off_28765EAA8);
        if (!v41)
        {

          v42 = &off_28765EA88;
LABEL_25:
          v67 = v35;
          v68 = v42;
          v66 = v40;
          v57 = v59;
          sub_264B412A4();
          (*(v60 + 8))(v57, v61);
          goto LABEL_26;
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v44 = v2;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v45 = sub_264B40964();
    __swift_project_value_buffer(v45, qword_27FFA71D0);
    v46 = sub_264B40944();
    v47 = sub_264B41474();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2649C6000, v46, v47, "creating audio stream", v48, 2u);
      MEMORY[0x266749940](v48, -1, -1);
    }

    v49 = v44;
    v50 = v44 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_sessionID;
    v51 = v64;
    (*(v62 + 16))(v64, v50, v63);
    v35 = type metadata accessor for MediaTransportAudioStream(0);
    v52 = objc_allocWithZone(v35);

    v53 = v65;
    v55 = sub_264AAAADC(0, v53, v49, v51, v52, v54);

    v40 = v55;
    v56 = v69;
    sub_264AA0648(v40, &off_287659370);
    if (!v56)
    {

      v42 = &off_287659350;
      goto LABEL_25;
    }

LABEL_23:
    (*(v15 + 8))(v18, v14);

    return;
  }

  sub_2649D04D4(v13, &qword_27FF891A0, &qword_264B46FA0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v21 = sub_264B40964();
  __swift_project_value_buffer(v21, qword_27FFA71D0);
  v22 = sub_264B40944();
  v23 = sub_264B41494();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2649C6000, v22, v23, "stream continuation is not set. Unable to pass the newly created stream.", v24, 2u);
    MEMORY[0x266749940](v24, -1, -1);
  }

  sub_2649FEC60();
  swift_allocError();
  *v25 = 6;
  swift_willThrow();
}

void sub_2649F8FBC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &aBlock[-1] - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, a1, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, v7, v3);
    aBlock[4] = sub_264A00248;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2649D68F4;
    aBlock[3] = &block_descriptor_181;
    v12 = _Block_copy(aBlock);

    [v9 setConnectionReadyHandler_];
    _Block_release(v12);
  }
}

void sub_2649F9194(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  if (a1)
  {
    v7 = sub_264B41274();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v9 = a1;

    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    sub_264A10C20(0, 0, v6, &unk_264B47150, v10);
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71D0);
    v15 = sub_264B40944();
    v12 = sub_264B41494();
    if (os_log_type_enabled(v15, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v15, v12, "RPRemoteDisplaySession error handler called with no error", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v14 = v15;
  }
}

uint64_t sub_2649F93CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_2649F93EC, 0, 0);
}

uint64_t sub_2649F93EC()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = v2;
    v5 = sub_264B40944();
    v6 = sub_264B41494();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_264B41B24();
      v11 = sub_2649CC004(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v5, v6, "display session error: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_2649F96E8;
    v13 = v0[10];

    return sub_2649F189C(v13);
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FFA71D0);
    v16 = sub_264B40944();
    v17 = sub_264B41484();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2649C6000, v16, v17, "Self went away before display session error handler could fire, bailing out", v18, 2u);
      MEMORY[0x266749940](v18, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2649F96E8()
{

  return MEMORY[0x2822009F8](sub_2649F97E4, 0, 0);
}

uint64_t sub_2649F97E4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2649F9844(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2649F98B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2649D8028(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2649D8028((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_2649F9A44(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_264A20B44(a1 & 1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);
      swift_unknownObjectRetain();

      swift_beginAccess();
      sub_264A907BC(0, 0, a1 & 1);
      swift_endAccess();
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2649F9B20(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F9BC0, v1, 0);
}

uint64_t sub_2649F9BC0()
{
  v59 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 552) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Negotiation data", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  *(v0 + 432) = 0x79546D6165727473;
  *(v0 + 440) = 0xEA00000000006570;
  sub_264B416F4();
  if (*(v5 + 16) && (v6 = sub_264A20A44(v0 + 192), (v7 & 1) != 0))
  {
    v8 = *(v0 + 528);
    sub_2649C964C(*(v8 + 56) + 32 * v6, v0 + 312);
    sub_2649C95C0(v0 + 192);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 448);
      v9 = *(v0 + 456);

      v11 = sub_264B418D4();

      if (v11)
      {
        if (v11 != 1)
        {

          v13 = sub_264B40944();
          v31 = sub_264B41494();

          if (os_log_type_enabled(v13, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v58 = v33;
            *v32 = 136446210;
            v34 = sub_2649CC004(v10, v9, &v58);

            *(v32 + 4) = v34;
            v35 = "invalid meadia stream type: %{public}s";
LABEL_33:
            _os_log_impl(&dword_2649C6000, v13, v31, v35, v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v33);
            MEMORY[0x266749940](v33, -1, -1);
            v16 = v32;
            goto LABEL_14;
          }

LABEL_34:

          goto LABEL_16;
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 641) = v12;
      v19 = *(v0 + 536);
      v20 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (*(v21 + 16))
      {

        v22 = sub_264A20B44(v12);
        if (v23)
        {
          v24 = v22;

          v25 = (*(v21 + 56) + 16 * v24);
          *(v0 + 560) = *v25;
          v26 = v25[1];
          swift_unknownObjectRetain();

          *(v0 + 464) = 0xD000000000000013;
          *(v0 + 472) = 0x8000000264B5A500;
          sub_264B416F4();
          if (*(v5 + 16) && (v27 = sub_264A20A44(v0 + 232), (v28 & 1) != 0))
          {
            sub_2649C964C(*(v8 + 56) + 32 * v27, v0 + 344);
            sub_2649C95C0(v0 + 232);
            if (swift_dynamicCast())
            {
              v29 = sub_264B418D4();

              if (!v29)
              {
                v30 = 0;
                goto LABEL_41;
              }

              if (v29 == 1)
              {
                v30 = 1;
LABEL_41:
                *(v0 + 496) = 0x746169746F67656ELL;
                *(v0 + 504) = 0xEF617461446E6F69;
                sub_264B416F4();
                if (*(v5 + 16) && (v40 = sub_264A20A44(v0 + 272), (v41 & 1) != 0))
                {
                  sub_2649C964C(*(v8 + 56) + 32 * v40, v0 + 376);
                  sub_2649C95C0(v0 + 272);
                  if (swift_dynamicCast())
                  {
                    v42 = *(v0 + 512);
                    *(v0 + 568) = v42;
                    v43 = *(v0 + 520);
                    *(v0 + 576) = v43;
                    v44 = "ation";
                    if (v30)
                    {
                      v44 = "negotiationOffer";
                    }

                    if ((v44 | 0x8000000000000000) == 0x8000000264B58BA0)
                    {
                      v45 = v30 ^ 1;
                    }

                    else
                    {
                      v45 = 1;
                    }

                    if (v45)
                    {
                      v46 = sub_264B41AA4();

                      if ((v46 & 1) == 0)
                      {

                        ObjectType = swift_getObjectType();
                        v57 = (*(v26 + 160) + **(v26 + 160));
                        v55 = swift_task_alloc();
                        *(v0 + 592) = v55;
                        *v55 = v0;
                        v55[1] = sub_2649FA64C;
                        v49 = v42;
                        v50 = v43;
                        v51 = ObjectType;
                        v52 = v26;
                        v53 = v57;

                        return v53(v49, v50, v51, v52);
                      }
                    }

                    else
                    {
                    }

                    v47 = swift_getObjectType();
                    v56 = (*(v26 + 168) + **(v26 + 168));
                    v48 = swift_task_alloc();
                    *(v0 + 584) = v48;
                    *v48 = v0;
                    v48[1] = sub_2649FA4C4;
                    v49 = v42;
                    v50 = v43;
                    v51 = v47;
                    v52 = v26;
                    v53 = v56;

                    return v53(v49, v50, v51, v52);
                  }
                }

                else
                {
                  sub_2649C95C0(v0 + 272);
                }

                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_2649C95C0(v0 + 232);
          }

          v37 = sub_264B40944();
          v38 = sub_264B41494();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_2649C6000, v37, v38, "Failed to parse negotiationDataType", v39, 2u);
            MEMORY[0x266749940](v39, -1, -1);
          }

LABEL_39:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v13 = sub_264B40944();
      v31 = sub_264B41494();

      if (os_log_type_enabled(v13, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v58 = v33;
        *v32 = 136446210;
        v36 = sub_2649CC004(v10, v9, &v58);

        *(v32 + 4) = v36;
        v35 = "Stream of type: %{public}s is not available";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_2649C95C0(v0 + 192);
  }

  v13 = sub_264B40944();
  v14 = sub_264B41494();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2649C6000, v13, v14, "Failed to parse streamType", v15, 2u);
    v16 = v15;
LABEL_14:
    MEMORY[0x266749940](v16, -1, -1);
  }

LABEL_16:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2649FA4C4()
{
  v1 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_2649FA5D4, v1, 0);
}

uint64_t sub_2649FA5D4()
{
  sub_2649DEF6C(v0[71], v0[72]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2649FA64C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  *(v3 + 600) = a1;
  *(v3 + 608) = a2;

  return MEMORY[0x2822009F8](sub_2649FA768, v4, 0);
}

uint64_t sub_2649FA768(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 608);
  if (v2 >> 60 == 15)
  {
    v3 = sub_264B40944();
    v4 = sub_264B41494();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 576);
    v7 = *(v1 + 568);
    if (v5)
    {
      v8 = *(v1 + 641);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136446210;
      *(v1 + 640) = v8;
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v3, v4, "Failed to get negotiation answer for stream: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    sub_2649DEF6C(v7, v6);

    goto LABEL_12;
  }

  v14 = *(v1 + 600);
  v15 = *(v1 + 641);
  v16 = *(v1 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v19 = MEMORY[0x277D837D0];
  v20 = 0x6F69647561;
  if (v15)
  {
    v20 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v20;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v19;
  *(inited + 80) = 0x746169746F67656ELL;
  v21 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v14;
  *(inited + 104) = v2;
  *(inited + 120) = v21;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v19;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000264B58BA0;
  sub_2649DEF18(v14, v2);
  v22 = sub_264A24308(v18);
  *(v1 + 616) = v22;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  v23 = (v16 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay);
  if ((*(v16 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay + 8) & 1) == 0)
  {
    v28 = *(v1 + 608);
    v29 = *(v1 + 600);
    v30 = *(v1 + 576);
    v31 = *(v1 + 568);
    v32 = *(v1 + 641);
    v33 = *(v1 + 544);
    v34 = *(v1 + 536);
    v35 = *v23;
    v36 = sub_264B41274();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = v35;
    *(v37 + 40) = v32;
    *(v37 + 48) = v34;
    *(v37 + 56) = v22;

    sub_2649CD944(0, 0, v33, &unk_264B47198, v37);
    sub_2649DF384(v29, v28);

    sub_2649DEF6C(v31, v30);
LABEL_12:
    swift_unknownObjectRelease();

    v38 = *(v1 + 8);

    return v38();
  }

  v24 = *(v1 + 641);
  v25 = swift_task_alloc();
  *(v1 + 624) = v25;
  *v25 = v1;
  v25[1] = sub_2649FABC8;
  v26 = *(v1 + 536);

  return sub_264A00454(v24, v26, v22);
}

uint64_t sub_2649FABC8()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 536);
  if (v0)
  {
    v4 = sub_2649FADA4;
  }

  else
  {
    v4 = sub_2649FAD10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649FAD10()
{
  v1 = v0[72];
  v2 = v0[71];
  sub_2649DF384(v0[75], v0[76]);
  sub_2649DEF6C(v2, v1);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2649FADA4()
{
  v1 = v0[79];
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[72];
  v10 = v0[71];
  if (v5)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send negotiation answer: %{public}@", v11, 0xCu);
    sub_2649D04D4(v12, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
    sub_2649DF384(v8, v7);
    sub_2649DEF6C(v10, v9);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2649DF384(v0[75], v0[76]);
    sub_2649DEF6C(v10, v9);

    swift_unknownObjectRelease();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2649FAF74(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FB014, v1, 0);
}

uint64_t sub_2649FB014()
{
  v62 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 552) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Negotiation data", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  *(v0 + 432) = 0x79546D6165727473;
  *(v0 + 440) = 0xEA00000000006570;
  sub_264B416F4();
  if (*(v5 + 16) && (v6 = sub_264A20A44(v0 + 192), (v7 & 1) != 0))
  {
    v8 = *(v0 + 528);
    sub_2649C964C(*(v8 + 56) + 32 * v6, v0 + 312);
    sub_2649C95C0(v0 + 192);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 448);
      v9 = *(v0 + 456);

      v11 = sub_264B418D4();

      if (v11)
      {
        if (v11 != 1)
        {

          v13 = sub_264B40944();
          v31 = sub_264B41494();

          if (os_log_type_enabled(v13, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v61 = v33;
            *v32 = 136446210;
            v34 = sub_2649CC004(v10, v9, &v61);

            *(v32 + 4) = v34;
            v35 = "invalid meadia stream type: %{public}s";
LABEL_33:
            _os_log_impl(&dword_2649C6000, v13, v31, v35, v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v33);
            MEMORY[0x266749940](v33, -1, -1);
            v16 = v32;
            goto LABEL_14;
          }

LABEL_34:

          goto LABEL_16;
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 641) = v12;
      v19 = *(v0 + 536);
      v20 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (*(v21 + 16))
      {

        v22 = sub_264A20B44(v12);
        if (v23)
        {
          v24 = v22;

          v25 = (*(v21 + 56) + 16 * v24);
          *(v0 + 560) = *v25;
          v26 = v25[1];
          swift_unknownObjectRetain();

          *(v0 + 464) = 0xD000000000000013;
          *(v0 + 472) = 0x8000000264B5A500;
          sub_264B416F4();
          if (*(v5 + 16) && (v27 = sub_264A20A44(v0 + 232), (v28 & 1) != 0))
          {
            sub_2649C964C(*(v8 + 56) + 32 * v27, v0 + 344);
            sub_2649C95C0(v0 + 232);
            if (swift_dynamicCast())
            {
              v29 = sub_264B418D4();

              if (!v29)
              {
                v30 = 0;
LABEL_41:
                *(v0 + 496) = 0x746169746F67656ELL;
                *(v0 + 504) = 0xEF617461446E6F69;
                sub_264B416F4();
                if (!*(v5 + 16) || (v40 = sub_264A20A44(v0 + 272), (v41 & 1) == 0))
                {
                  sub_2649C95C0(v0 + 272);
                  goto LABEL_39;
                }

                sub_2649C964C(*(v8 + 56) + 32 * v40, v0 + 376);
                sub_2649C95C0(v0 + 272);
                if ((swift_dynamicCast() & 1) == 0)
                {
LABEL_39:
                  swift_unknownObjectRelease();
                  goto LABEL_16;
                }

                v42 = *(v0 + 512);
                *(v0 + 568) = v42;
                v43 = *(v0 + 520);
                *(v0 + 576) = v43;
                v44 = "ation";
                if (v30)
                {
                  v44 = "negotiationOffer";
                }

                if ((v44 | 0x8000000000000000) == 0x8000000264B58BA0)
                {
                  v45 = v30 ^ 1;
                }

                else
                {
                  v45 = 1;
                }

                if ((v45 & 1) == 0)
                {

                  goto LABEL_53;
                }

                v46 = sub_264B41AA4();

                if (v46)
                {
LABEL_53:
                  ObjectType = swift_getObjectType();
                  v59 = (*(v26 + 168) + **(v26 + 168));
                  v48 = swift_task_alloc();
                  *(v0 + 584) = v48;
                  *v48 = v0;
                  v48[1] = sub_2649FB99C;
                  v49 = v42;
                  v50 = v43;
                  v51 = ObjectType;
                  v52 = v26;
                  v53 = v59;

                  return v53(v49, v50, v51, v52);
                }

                if (*(*(v0 + 536) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession))
                {
                  v54 = swift_getObjectType();
                  v60 = (*(v26 + 160) + **(v26 + 160));
                  v55 = swift_task_alloc();
                  *(v0 + 592) = v55;
                  *v55 = v0;
                  v55[1] = sub_2649FBAAC;
                  v49 = v42;
                  v50 = v43;
                  v51 = v54;
                  v52 = v26;
                  v53 = v60;

                  return v53(v49, v50, v51, v52);
                }

                v56 = v42;
                v37 = sub_264B40944();
                v57 = sub_264B41494();
                if (os_log_type_enabled(v37, v57))
                {
                  v58 = swift_slowAlloc();
                  *v58 = 0;
                  _os_log_impl(&dword_2649C6000, v37, v57, "Rapport session is unavailable", v58, 2u);
                  MEMORY[0x266749940](v58, -1, -1);
                }

                sub_2649DEF6C(v56, v43);
LABEL_38:

                goto LABEL_39;
              }

              if (v29 == 1)
              {
                v30 = 1;
                goto LABEL_41;
              }
            }
          }

          else
          {
            sub_2649C95C0(v0 + 232);
          }

          v37 = sub_264B40944();
          v38 = sub_264B41494();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_2649C6000, v37, v38, "Failed to parse negotiationDataType", v39, 2u);
            MEMORY[0x266749940](v39, -1, -1);
          }

          goto LABEL_38;
        }
      }

      v13 = sub_264B40944();
      v31 = sub_264B41494();

      if (os_log_type_enabled(v13, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v61 = v33;
        *v32 = 136446210;
        v36 = sub_2649CC004(v10, v9, &v61);

        *(v32 + 4) = v36;
        v35 = "Stream of type: %{public}s is not available";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_2649C95C0(v0 + 192);
  }

  v13 = sub_264B40944();
  v14 = sub_264B41494();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2649C6000, v13, v14, "Failed to parse streamType", v15, 2u);
    v16 = v15;
LABEL_14:
    MEMORY[0x266749940](v16, -1, -1);
  }

LABEL_16:

  v17 = *(v0 + 8);

  return v17();
}