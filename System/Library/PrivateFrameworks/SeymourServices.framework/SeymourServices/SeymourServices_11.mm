uint64_t sub_226FC91B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
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
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    (a2)(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_226E92000(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_226FF129C();
      }
    }

    else
    {
      sub_226FE4E4C(v31, v46 & 1);
      v33 = sub_226E92000(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_226EBB21C(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226FC962C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226FC967C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2276658F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E118], v6);
    sub_22766A250();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_226FC9890(uint64_t a1, uint64_t a2)
{
  v2 = sub_227669910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v3 + 104))(v5, *MEMORY[0x277D4E140], v2);
    sub_227667CF0();
    sub_227669650();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_226FC9A0C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_22766A210();
    sub_226FC9B88(v7, v8, v5);

    v9 = sub_227669290();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v9(sub_226E9F7B0, v10);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_226FC9B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v95 = a1;
  v89 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v102 = *(v82 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v82);
  v96 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v78 - v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v97 = &v78 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v88 - 8);
  v86 = v88 - 8;
  v87 = v85;
  MEMORY[0x28223BE20](v88 - 8);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v78 - v15;
  v16 = sub_227669910();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22766B390();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v21 + 8))(v23, v20);
  swift_getObjectType();
  (*(v17 + 104))(v19, *MEMORY[0x277D4E108], v16);
  v24 = v95;
  v103 = v95;
  v104 = a2;
  sub_227669650();
  (*(v17 + 8))(v19, v16);
  v81 = v4;
  v25 = __swift_project_boxed_opaque_existential_0(v4 + 17, v4[20]);
  v79 = *__swift_project_boxed_opaque_existential_0((*v25 + 16), *(*v25 + 40));
  v26 = *(v79 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = a2;
  v80 = a2;

  v28 = v101;
  sub_227669280();
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = 32;
  v30 = v102;
  v31 = *(v102 + 16);
  v91 = v102 + 16;
  v100 = v31;
  v32 = v96;
  v33 = v82;
  v31(v96, v28, v82);
  v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v90 = *(v30 + 80);
  v35 = v6 + v34;
  v36 = v34;
  v99 = v34;
  v37 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = v37;
  v38 = swift_allocObject();
  v93 = *(v30 + 32);
  v94 = v30 + 32;
  v93(v38 + v36, v32, v33);
  v39 = (v38 + v37);
  *v39 = sub_226FCBEAC;
  v39[1] = v29;
  v40 = v26;
  v41 = v83;
  sub_227669270();
  v42 = v30 + 8;
  v43 = *(v30 + 8);
  v43(v28, v33);
  v44 = v97;
  sub_2272A3158(v41, v97);
  v45 = v33;
  v43(v41, v33);
  v78 = v43;
  v102 = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_226FCBB68;
  *(v46 + 24) = 0;
  v100(v41, v44, v33);
  v47 = v92;
  v48 = swift_allocObject();
  v93(v48 + v99, v41, v33);
  v49 = (v48 + v47);
  *v49 = sub_226FCBEE0;
  v49[1] = v46;
  sub_227669270();
  v43(v44, v33);
  v50 = __swift_project_boxed_opaque_existential_0(v81 + 17, v81[20]);
  v81 = *__swift_project_boxed_opaque_existential_0((*v50 + 16), *(*v50 + 40));
  v51 = v81[3];
  v52 = swift_allocObject();
  *(v52 + 16) = v95;
  *(v52 + 24) = v80;

  v53 = v101;
  sub_227669280();
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  *(v54 + 24) = 19;
  v55 = v96;
  v100(v96, v53, v33);
  v56 = v92;
  v57 = swift_allocObject();
  v58 = v93;
  v93(v57 + v99, v55, v45);
  v59 = (v57 + v56);
  *v59 = sub_226FCBF10;
  v59[1] = v54;

  sub_227669270();
  v60 = v78;
  v78(v101, v45);
  v61 = v97;
  sub_2272A3158(v41, v97);
  v60(v41, v45);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_226FCBB88;
  *(v62 + 24) = 0;
  v100(v41, v61, v45);
  v63 = swift_allocObject();
  v58(v63 + v99, v41, v45);
  v64 = (v63 + v56);
  *v64 = sub_226FCBFE8;
  v64[1] = v62;
  v65 = v84;
  sub_227669270();
  v60(v61, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v66 = *(v85 + 72);
  v67 = v87;
  v68 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2276728D0;
  v70 = v69 + v68;
  v71 = v67;
  v72 = *(v67 + 16);
  v73 = v98;
  v74 = v88;
  v72(v70, v98, v88);
  v72(v70 + v66, v65, v74);
  sub_226EA1CF4();
  v75 = sub_22766C950();
  sub_227669A50();
  sub_227669250();

  v76 = *(v71 + 8);
  v76(v65, v74);
  return (v76)(v73, v74);
}

uint64_t sub_226FCA5B0(uint64_t a1)
{
  v1 = sub_227669910();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v2 + 104))(v4, *MEMORY[0x277D4E0B8], v1);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

char *sub_226FCA6FC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15SeymourServices25ContentAvailabilitySystem__fakeFitnessModeString;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D8, &qword_2276743E0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t sub_226FCA7B0()
{
  sub_226FCA6FC();

  return swift_deallocClassInstance();
}

void sub_226FCA810(uint64_t a1)
{
  sub_226FCA8E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_226FCA8E0(uint64_t a1)
{
  if (!qword_2813A54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_226FCA9AC(&qword_28139D300, MEMORY[0x277D4F9E0], MEMORY[0x277D4FA50]);
    sub_226FCA9AC(&qword_28139D2F0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
    v1 = sub_227669750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A54B0);
    }
  }
}

uint64_t sub_226FCA9AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226FCAA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = "SeymourServices/ContentAvailabilitySystem.swift";
  *(v14 + 24) = 47;
  *(v14 + 32) = 2;
  *(v14 + 40) = 84;
  *(v14 + 48) = &unk_227674408;
  *(v14 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_226FCAF68;
  v17[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCAD38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCAD58, 0, 0);
}

uint64_t sub_226FCAD58()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_226FCADF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_226FCAF44, 0, 0);
  }
}

uint64_t sub_226FCAF68(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);

  return sub_227669270();
}

uint64_t sub_226FCAFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_22766B3B0();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B3F0();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_226EA1CF4();
  (*(v12 + 104))(v14, *MEMORY[0x277D851B8], v11);

  v16 = sub_22766C980();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = v20;
  v17[3] = sub_226E9F728;
  v17[4] = v15;
  aBlock[4] = sub_226FCBE44;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_22766B3D0();
  v23 = MEMORY[0x277D84F90];
  sub_226E9EBF8(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v7, v18);
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);
}

void sub_226FCB3B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22766A890();
  v6 = sub_22766BFD0();

  v7 = [a1 arrayForKey_];

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_226FCBE50;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_226FCB990;
  v10[3] = &block_descriptor_37;
  v9 = _Block_copy(v10);

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

void sub_226FCB4E4(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276622D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (!a3)
    {
      sub_226FCBE58();
      v28 = swift_allocError();
      goto LABEL_17;
    }

LABEL_16:
    v28 = a3;
LABEL_17:
    v29 = a3;
    sub_22766A730();
    v30 = v28;
    v31 = sub_22766B380();
    v32 = sub_22766C890();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = a5;
      v34 = v33;
      v35 = swift_slowAlloc();
      v45 = a4;
      v36 = v35;
      *&v50 = v35;
      *v34 = 136446210;
      swift_getErrorValue();
      v37 = MEMORY[0x22AA995D0](v52, v53);
      v39 = sub_226E97AE8(v37, v38, &v50);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v31, v32, "Failed to fetch fitness-supported-audio-dubbed-languages: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v40 = v36;
      a4 = v45;
      MEMORY[0x22AA9A450](v40, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v41 = v28;
    a4(v28, 1);

    return;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v46 = a5;
  v17 = a1;
  sub_22766CAD0();
  sub_226E9EBF8(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (v51)
  {
    v18 = MEMORY[0x277D84F90];
    v45 = v17;
    do
    {
      v19 = a4;
      while (1)
      {
        sub_226F04970(&v50, &v47);
        if (swift_dynamicCast())
        {
          v20 = v49;
          if (v49)
          {
            break;
          }
        }

        sub_22766CBB0();
        if (!v51)
        {
          a4 = v19;
          v17 = v45;
          goto LABEL_23;
        }
      }

      v21 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_226EB3F78(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v43 = v24 + 1;
        v27 = sub_226EB3F78((v23 > 1), v24 + 1, 1, v18);
        v25 = v43;
        v18 = v27;
      }

      *(v18 + 2) = v25;
      v26 = &v18[16 * v24];
      *(v26 + 4) = v44;
      *(v26 + 5) = v20;
      sub_22766CBB0();
      a4 = v19;
      v17 = v45;
    }

    while (v51);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

LABEL_23:
  (*(v14 + 8))(v16, v13);
  v42 = sub_226F3E6A8(v18);

  a4(v42, 0);
}

void sub_226FCB990(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_226FCBA24(char a1)
{
  v3 = *v1;

  v4 = *(v3 + 8);
  if (a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v4(v5);
}

uint64_t sub_226FCBBA8(uint64_t *a1, const char *a2, ...)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_22766A730();

  v11 = sub_22766B380();
  v12 = sub_22766C8B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v18[1] = v2;
    v16 = v15;
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_226E97AE8(v9, v10, &v19);
    _os_log_impl(&dword_226E8E000, v11, v12, v18[0], v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_226FCBD64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226FCAD38(a1, v1);
}

unint64_t sub_226FCBE58()
{
  result = qword_27D7B94F8;
  if (!qword_27D7B94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B94F8);
  }

  return result;
}

uint64_t sub_226FCBF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t type metadata accessor for EngagementBadgeRemoved(uint64_t a1)
{
  result = qword_28139FF30;
  if (!qword_28139FF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226FCC07C(uint64_t a1)
{
  result = sub_2276646D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226FCC0E8(char *a1, char *a2)
{
  if (*&aBattery_2[8 * *a1] == *&aBattery_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_22766D190();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_226FCC150()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FCC1AC(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_226FCC1EC(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_226FCC244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226FCC2F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_226FCC2A4()
{
  result = qword_27D7B9508;
  if (!qword_27D7B9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9508);
  }

  return result;
}

unint64_t sub_226FCC2F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D030();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ZoneName.serialized()()
{
  v0 = sub_2276694C0();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_226FCC378(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FCC5B8();
  }

  return result;
}

uint64_t sub_226FCC3D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_226FCC9C4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FCCF50();
  }

  return result;
}

uint64_t sub_226FCC458()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_22766A730();
  sub_22766B370();
  v4(v3, v0);
  sub_226FCC5B8();
  sub_226FCC9C4();
  return sub_226FCCF50();
}

uint64_t sub_226FCC5B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  sub_22766AE00();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226FD033C;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226FD0340;
  *(v18 + 24) = v17;
  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_226FD036C;
  v21[1] = v18;

  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v22 = v26;
  v23 = sub_227669290();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v23(sub_226EB4544, v24);

  return (*(v27 + 8))(v12, v22);
}

uint64_t sub_226FCC9C4()
{
  v1 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v42 = &v37 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v37 = v6;
  sub_226FCDB5C(v6);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226FD02DC;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226FD02E0;
  *(v18 + 24) = v17;
  v19 = v39;
  (*(v2 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v39);
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v20, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = (v21 + ((v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226FCBEE0;
  v22[1] = v18;

  v23 = v38;
  sub_227669270();
  (*(v2 + 8))(v37, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_226FD0338;
  *(v24 + 24) = v1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226FD0498;
  *(v25 + 24) = v24;
  v26 = v40;
  v27 = v41;
  v28 = v23;
  (*(v7 + 16))(v40, v23, v41);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v29, v26, v27);
  v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_226F5B0C0;
  v31[1] = v25;

  v32 = v42;
  sub_227669270();
  v33 = *(v7 + 8);
  v33(v28, v27);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_226EB4544, v35);

  return (v33)(v32, v27);
}

uint64_t sub_226FCCF50()
{
  v1 = v0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD690, &unk_227674730);
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v42 = &v37 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v37 = v6;
  sub_226FCE91C(v6);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226FD0254;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226FD0258;
  *(v18 + 24) = v17;
  v19 = v39;
  (*(v2 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v39);
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v20, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = (v21 + ((v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226FD0280;
  v22[1] = v18;

  v23 = v38;
  sub_227669270();
  (*(v2 + 8))(v37, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_226FD02B0;
  *(v24 + 24) = v1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226FD02B4;
  *(v25 + 24) = v24;
  v26 = v40;
  v27 = v41;
  v28 = v23;
  (*(v7 + 16))(v40, v23, v41);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v29, v26, v27);
  v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_226F5AAF8;
  v31[1] = v25;

  v32 = v42;
  sub_227669270();
  v33 = *(v7 + 8);
  v33(v28, v27);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_226E9F7B0, v35);

  return (v33)(v32, v27);
}

uint64_t sub_226FCD4DC(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  sub_22766A730();
  sub_22766B370();
  v20 = *(v5 + 8);
  v20(v19, v4);
  v21 = [a1 ams_storefront];
  if (v21)
  {
    v49 = v20;
    v50 = v4;
    v22 = v21;
    v23 = sub_22766C000();
    v25 = v24;

    __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
    v26 = sub_227669AE0();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      if (v26 == v23 && v27 == v25 || (sub_22766D190() & 1) != 0)
      {

        sub_22766A730();

        v30 = sub_22766B380();
        v31 = sub_22766C8B0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v51 = v33;
          *v32 = 136446210;
          v34 = sub_226E97AE8(v23, v25, &v51);

          *(v32 + 4) = v34;
          _os_log_impl(&dword_226E8E000, v30, v31, "Storefront matches cache: %{public}s. Invalidating content availability", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x22AA9A450](v33, -1, -1);
          MEMORY[0x22AA9A450](v32, -1, -1);
        }

        else
        {
        }

        result = v49(v16, v50);
        *(v2 + 161) = 1;
      }

      else
      {
        sub_22766A730();

        v43 = sub_22766B380();
        v44 = sub_22766C8B0();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v51 = v48;
          *v45 = 136446466;
          v46 = sub_226E97AE8(v28, v29, &v51);

          *(v45 + 4) = v46;
          *(v45 + 12) = 2082;
          *(v45 + 14) = sub_226E97AE8(v23, v25, &v51);
          _os_log_impl(&dword_226E8E000, v43, v44, "Storefront changed, previous: %{public}s, current: %{public}s", v45, 0x16u);
          v47 = v48;
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        else
        {
        }

        v49(v13, v50);
        __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
        sub_227669AF0();

        swift_getObjectType();
        sub_226FD0200();
        return sub_2276699D0();
      }
    }

    else
    {
      sub_22766A730();

      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51 = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_226E97AE8(v23, v25, &v51);
        _os_log_impl(&dword_226E8E000, v39, v40, "No storefront previously cached, updating with %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x22AA9A450](v42, -1, -1);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      v49(v10, v50);
      __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
      sub_227669AF0();
    }
  }

  else
  {
    sub_22766A730();
    v35 = sub_22766B380();
    v36 = sub_22766C890();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226E8E000, v35, v36, "Current account has a nil storefront", v37, 2u);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    return (v20)(v7, v4);
  }

  return result;
}

uint64_t sub_226FCDB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = "SeymourServices/StorefrontObserver.swift";
  *(v14 + 24) = 40;
  *(v14 + 32) = 2;
  *(v14 + 40) = 140;
  *(v14 + 48) = &unk_227674720;
  *(v14 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_226FCDF28;
  v17[1] = 0;
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCDE68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCDE88, 0, 0);
}

uint64_t sub_226FCDE88()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_226FCDF28(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_226FCDFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_22766A850();
  v7 = sub_22766BFD0();

  v8 = [a3 stringForKey_];

  v9 = swift_allocObject();
  *(v9 + 16) = sub_226ECCE0C;
  *(v9 + 24) = v6;
  v11[4] = sub_226FD01F8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226FD0484;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [v8 valueWithCompletion_];
  _Block_release(v10);
}

void sub_226FCE0F8(void *a1, char a2, void *a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  if (!a1)
  {
    if (!a3)
    {
      sub_226FD00D8();
      v27 = swift_allocError();
      *v41 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v27 = a3;
LABEL_9:
    v28 = a3;
    sub_22766A730();
    v29 = v27;
    v30 = sub_22766B380();
    v31 = sub_22766C890();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = a5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136446210;
      swift_getErrorValue();
      v35 = MEMORY[0x22AA995D0](v49, v50);
      v37 = sub_226E97AE8(v35, v36, &v51);
      v47 = v10;
      v38 = a4;
      v39 = v37;

      *(v33 + 4) = v39;
      a4 = v38;
      _os_log_impl(&dword_226E8E000, v30, v31, "StorefrontObserver failed to fetch language tag: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      (*(v11 + 8))(v13, v47);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v40 = v27;
    a4(v27, 0, 1);

    return;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    v17 = a1;
    sub_22766A730();
    v18 = v17;
    v19 = sub_22766B380();
    v20 = sub_22766C890();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = v11;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v18;
      *v23 = a1;
      v24 = v18;
      _os_log_impl(&dword_226E8E000, v19, v20, "StorefrontObserver only found fallback language tag: %{public}@", v22, 0xCu);
      sub_226E97D1C(v23, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v23, -1, -1);
      v11 = v48;
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    sub_226FD00D8();
    v25 = swift_allocError();
    *v26 = 0;
    a4(v25, 0, 1);
  }

  else
  {
    v42 = sub_22766C000();
    v44 = v43;
    v45 = a1;
    a4(v42, v44, 0);
  }
}

uint64_t sub_226FCE544(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22766A220();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22766B390();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  v15 = sub_227669B00();
  if (!v16)
  {
LABEL_7:
    sub_22766A730();

    v19 = sub_22766B380();
    v20 = sub_22766C8B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_226E97AE8(a1, a2, &v31);
      _os_log_impl(&dword_226E8E000, v19, v20, "Storefront language updated: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v9 + 8))(v14, v30);
    __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136));
    sub_227669B10();
    *(v3 + 160) = 2;
    swift_getObjectType();

    sub_22766A200();
    v23 = v29;
    sub_2276699D0();
    return (*(v28 + 8))(v8, v23);
  }

  if (v15 == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = sub_22766D190();

    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v2 + 160) = 2;
  sub_22766A730();
  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_226E8E000, v25, v26, "Storefront language code matches cached value", v27, 2u);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  return (*(v9 + 8))(v11, v30);
}

uint64_t sub_226FCE91C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = "SeymourServices/StorefrontObserver.swift";
  *(v14 + 24) = 40;
  *(v14 + 32) = 2;
  *(v14 + 40) = 180;
  *(v14 + 48) = &unk_227674700;
  *(v14 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v6, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_226FCEE38;
  v17[1] = 0;
  sub_2276658F0();
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCEC2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCEC4C, 0, 0);
}

uint64_t sub_226FCEC4C()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226FCECEC;

  return sub_226EA0808();
}

uint64_t sub_226FCECEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_226FD0488, 0, 0);
  }
}

uint64_t sub_226FCEE38(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  sub_2276658F0();
  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_226FCEEC4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22766A860();
  v6 = sub_22766BFD0();

  v7 = [a3 BOOLForKey_];

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_226FD00D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_226FD0484;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_226FCEFF0(void *a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  MEMORY[0x28223BE20](v16);
  v19 = (&v49 - v18);
  if (a1)
  {
    if (!a3)
    {
      v20 = a1;
      if ([v20 BOOLValue])
      {
        v21 = MEMORY[0x277D51A28];
      }

      else
      {
        v41 = v10;
        sub_22766A730();
        v42 = sub_22766B380();
        v43 = sub_22766C8B0();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v50 = a5;
          v45 = v44;
          *v44 = 0;
          _os_log_impl(&dword_226E8E000, v42, v43, "StorefrontObserver fitnessPlusEnabled = false", v44, 2u);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v41 + 8))(v15, v9);
        v21 = MEMORY[0x277D51A20];
      }

      v46 = *v21;
      v47 = sub_2276658F0();
      (*(*(v47 - 8) + 104))(v19, v46, v47);
      swift_storeEnumTagMultiPayload();
      a4(v19);

      return sub_226E97D1C(v19, &qword_27D7B9528, &qword_227674710);
    }
  }

  else if (!a3)
  {
    v51 = v10;
    v52 = v9;
    v53 = v17;
    sub_226FD00D8();
    v22 = swift_allocError();
    *v40 = 1;
    goto LABEL_7;
  }

  v51 = v10;
  v52 = v9;
  v53 = v17;
  v22 = a3;
LABEL_7:
  swift_getErrorValue();
  v23 = a3;
  v24 = sub_22766D270();
  sub_22766A730();
  v25 = v22;
  v26 = sub_22766B380();
  v27 = sub_22766C890();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v24;
    v29 = v28;
    v30 = swift_slowAlloc();
    v50 = a5;
    v31 = v30;
    v56 = v30;
    *v29 = 136446210;
    swift_getErrorValue();
    v32 = MEMORY[0x22AA995D0](v54, v55);
    v34 = a4;
    v35 = sub_226E97AE8(v32, v33, &v56);

    *(v29 + 4) = v35;
    a4 = v34;
    _os_log_impl(&dword_226E8E000, v26, v27, "StorefrontObserver failed to fetch fitnessPlusEnabled: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v36 = v29;
    v24 = v49;
    MEMORY[0x22AA9A450](v36, -1, -1);
  }

  (*(v51 + 8))(v12, v52);
  if (v24 == 204)
  {
    v37 = *MEMORY[0x277D51A20];
    v38 = sub_2276658F0();
    (*(*(v38 - 8) + 104))(v19, v37, v38);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v19 = v22;
    swift_storeEnumTagMultiPayload();
    v39 = v22;
  }

  a4(v19);

  return sub_226E97D1C(v19, &qword_27D7B9528, &qword_227674710);
}

uint64_t sub_226FCF4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766A570();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - v10;
  v11 = sub_2276658F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  sub_227669B20();
  sub_226EA52A0(&qword_28139B7A8, MEMORY[0x277D51A48]);
  v18 = sub_22766BFB0();
  v19 = *(v12 + 8);
  v19(v17, v11);
  if (v18)
  {
    *(v2 + 161) = 2;
    sub_22766A730();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "Storefront content availability matches cache value", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    return (*(v47 + 8))(v8, v48);
  }

  else
  {
    sub_22766A730();
    v24 = *(v12 + 16);
    v41 = v12 + 16;
    v42 = a1;
    v40 = v24;
    v24(v14, a1, v11);
    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v27;
      v39 = swift_slowAlloc();
      v49 = v39;
      *v27 = 136446210;
      sub_226EA52A0(&qword_28139B790, MEMORY[0x277D51A58]);
      v28 = sub_22766D140();
      v30 = v29;
      v19(v14, v11);
      v31 = sub_226E97AE8(v28, v30, &v49);

      v32 = v38;
      *(v38 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_226E8E000, v25, v26, "Storefront content availability updated: %{public}s", v32, 0xCu);
      v34 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9A450](v34, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);
    }

    else
    {

      v19(v14, v11);
    }

    (*(v47 + 8))(v46, v48);
    __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
    v35 = v42;
    sub_227669B30();
    *(v2 + 161) = 2;
    swift_getObjectType();
    v40(v17, v35, v11);
    v36 = v43;
    sub_22766A560();
    v37 = v45;
    sub_2276699D0();
    return (*(v44 + 8))(v36, v37);
  }
}

uint64_t sub_226FCF9F4(void *a1, const char *a2, ...)
{
  v4 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v10 = a1;
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = v2;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v22[2], v22[3]);
    v19 = sub_226E97AE8(v17, v18, &v23);

    *(v15 + 4) = v19;
    v20 = v14;
    v4 = v22[0];
    _os_log_impl(&dword_226E8E000, v11, v12, v20, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  result = (*(v7 + 8))(v9, v6);
  *(v4 + 160) = 1;
  return result;
}

uint64_t sub_226FCFBD8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  v1 = OBJC_IVAR____TtC15SeymourServices18StorefrontObserver__storefrontContentAvailableOverride;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorefrontObserver(uint64_t a1)
{
  result = qword_2813A1ED0;
  if (!qword_2813A1ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226FCFCFC(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_226FCFDD4()
{
  result = qword_27D7B9510;
  if (!qword_27D7B9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9510);
  }

  return result;
}

uint64_t sub_226FCFE28()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  v6 = sub_227669B00();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_226EA89DC();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
  }

  else
  {
    sub_226FD00D8();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
  }

  return sub_227669280();
}

uint64_t sub_226FD0000(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FCEC2C(a1, v1);
}

unint64_t sub_226FD00D8()
{
  result = qword_27D7B9530;
  if (!qword_27D7B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9530);
  }

  return result;
}

uint64_t sub_226FD012C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226FCDE68(a1, v1);
}

unint64_t sub_226FD0200()
{
  result = qword_2813A27A0;
  if (!qword_2813A27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27A0);
  }

  return result;
}

uint64_t sub_226FD039C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_226FD04B0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227674070;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_22766C4E0();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000227696540;
  *(inited + 72) = sub_22766C4E0();
  strcpy((inited + 80), "handshakeCount");
  *(inited + 95) = -18;
  *(inited + 96) = sub_22766C750();
  *(inited + 104) = 0x646F43726F727265;
  *(inited + 112) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v6 = sub_22766BFD0();

    *(inited + 120) = v6;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v7 = sub_22766BFD0();

    *(inited + 120) = v7;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
  }

  v8 = sub_22766BFD0();

  *(inited + 144) = v8;
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000227696560;
  if (a2)
  {
    swift_getErrorValue();
    v9 = sub_22766D260();
    if (v9)
    {
      v10 = v9;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v12 = sub_22766BFD0();

    *(inited + 168) = v12;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x8000000227696580;
    swift_getErrorValue();
    v13 = sub_22766D260();
    if (v13)
    {
      v14 = v13;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v11 = sub_22766BFD0();

    *(inited + 168) = v11;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x8000000227696580;
  }

  v15 = sub_22766BFD0();

  *(inited + 192) = v15;
  v16 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_226FD0858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_226FD08B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id sub_226FD0948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetPersistentKeyLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226FD0A5C(void *a1, uint64_t a2)
{
  v52[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v56 = sub_227664AE0();
  MEMORY[0x28223BE20](v56);
  *&v57 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2276668A0();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v52 - v10;
  v12 = sub_2276624A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v16 = v62;
    v17 = __swift_project_boxed_opaque_existential_0(v61, v62);
    v60 = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
    sub_226F04970(&v59, &v63);
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65 = v63;
  v66 = v64;
  v19 = *(&v64 + 1);
  if (!*(&v64 + 1))
  {
    sub_226E97D1C(&v65, &unk_27D7B9650, &unk_227674890);
    v67 = 0u;
    v68 = 0u;
    goto LABEL_10;
  }

  v20 = __swift_project_boxed_opaque_existential_0(&v65, *(&v66 + 1));
  *(&v68 + 1) = v19;
  v21 = __swift_allocate_boxed_opaque_existential_0(&v67);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  __swift_destroy_boxed_opaque_existential_0(&v65);
  if (!*(&v68 + 1))
  {
LABEL_10:
    sub_226E97D1C(&v67, &unk_27D7BC990, &qword_227670A30);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_11;
  }

  v22 = swift_dynamicCast();
  (*(v13 + 56))(v11, v22 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_11:
    sub_226E97D1C(v11, &unk_27D7BB570, &unk_227670FC0);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v23 = v58;
  v24 = (*(v13 + 32))(v58, v11, v12);
  MEMORY[0x28223BE20](v24);
  v52[-2] = v2;
  v52[-1] = v23;
  sub_2276696A0();
  v25 = sub_2276639B0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B9680, &unk_227671520);
    (*(v13 + 8))(v23, v12);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v28 = v57;
  sub_227663970();
  (*(v26 + 8))(v6, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v13 + 8))(v23, v12);
    sub_226FDC688(v28, MEMORY[0x277D50D68]);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v56 = 0;
  v30 = v54;
  v29 = v55;
  v31 = v28;
  v32 = v53;
  (*(v55 + 32))(v54, v31, v53);
  v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  v57 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E8, &qword_2276798C0);
  v35 = swift_allocObject();
  *(v35 + 16) = v57;
  *(v35 + 32) = sub_227666870();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  *(inited + 48) = v35;
  v36 = sub_227149264(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  v37 = sub_227666100();
  if (v38 >> 60 == 15)
  {
LABEL_26:
    (*(v29 + 8))(v30, v32);
    (*(v13 + 8))(v58, v12);
    return v36;
  }

  v39 = v38 >> 62;
  if ((v38 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_25;
    }

    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
LABEL_24:
    if (v40 != v41)
    {
      goto LABEL_27;
    }

LABEL_25:
    sub_226FB1424(v37, v38);
    v30 = v54;
    v29 = v55;
    goto LABEL_26;
  }

  if (v39)
  {
    v40 = v37;
    v41 = v37 >> 32;
    goto LABEL_24;
  }

  if ((v38 & 0xFF000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v42 = v38;
  v43 = v37;
  v44 = swift_initStackObject();
  *(v44 + 16) = v57;
  *(v44 + 32) = 0xD000000000000013;
  *(v44 + 72) = MEMORY[0x277CC9318];
  *(v44 + 40) = 0x8000000227696740;
  *(v44 + 48) = v43;
  *(v44 + 56) = v42;
  v45 = v43;
  v46 = v43;
  v47 = v42;
  sub_226F5E0B4(v46, v42);
  v48 = sub_227149264(v44);
  swift_setDeallocating();
  sub_226E97D1C(v44 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v67 = v36;
  v50 = v56;
  sub_226FDAC14(v48, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v67);

  if (v50)
  {

    __break(1u);
  }

  else
  {
    sub_226FB1424(v45, v47);
    v51 = v67;
    (*(v55 + 8))(v54, v53);
    (*(v13 + 8))(v58, v12);
    return v51;
  }

  return result;
}

uint64_t sub_226FD12CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v108 = a2;
  v120 = a4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = v6;
  MEMORY[0x28223BE20](v7);
  v116 = &v100[-v8];
  v115 = sub_22766C050();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v100[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_22766B390();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v100[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v119 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v100[-v17];
  v19 = sub_2276624A0();
  v124 = *(v19 - 8);
  v20 = *(v124 + 64);
  MEMORY[0x28223BE20](v19);
  v106 = &v100[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v117 = &v100[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v100[-v24];
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v100[-v28];
  v123 = a1;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v30 = v128;
    v31 = __swift_project_boxed_opaque_existential_0(v127, v128);
    v126 = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v125);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
    sub_226F04970(&v125, &v129);
    __swift_destroy_boxed_opaque_existential_0(v127);
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  v33 = *(&v130 + 1);
  if (!*(&v130 + 1))
  {
    sub_226E97D1C(&v131, &unk_27D7B9650, &unk_227674890);
    v133 = 0u;
    v134 = 0u;
    v36 = v123;
    goto LABEL_10;
  }

  v34 = __swift_project_boxed_opaque_existential_0(&v131, *(&v132 + 1));
  *(&v134 + 1) = v33;
  v35 = __swift_allocate_boxed_opaque_existential_0(&v133);
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  __swift_destroy_boxed_opaque_existential_0(&v131);
  v36 = v123;
  if (!*(&v134 + 1))
  {
LABEL_10:
    sub_226E97D1C(&v133, &unk_27D7BC990, &qword_227670A30);
    v38 = v124;
    v39 = *(v124 + 56);
    v39(v18, 1, 1, v19);
    goto LABEL_11;
  }

  v37 = swift_dynamicCast();
  v38 = v124;
  v39 = *(v124 + 56);
  v39(v18, v37 ^ 1u, 1, v19);
  if ((*(v38 + 48))(v18, 1, v19) == 1)
  {
LABEL_11:
    sub_226E97D1C(v18, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_12;
  }

  v105 = v4;
  (*(v38 + 32))(v29, v18, v19);
  sub_22766A690();
  (*(v38 + 16))(v25, v29, v19);
  v40 = sub_22766B380();
  v41 = sub_22766C8B0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v133 = v103;
    *v42 = 141558274;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2080;
    v102 = v40;
    v43 = sub_227662390();
    v101 = v41;
    v45 = v44;
    v46 = *(v124 + 8);
    v104 = v13;
    v46(v25, v19);
    v47 = sub_226E97AE8(v43, v45, &v133);
    v48 = v123;

    *(v42 + 14) = v47;
    v49 = v102;
    _os_log_impl(&dword_226E8E000, v102, v101, "[Key Loader] fetchServerPlaybackContext for URL: %{mask.hash}s", v42, 0x16u);
    v50 = v103;
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x22AA9A450](v50, -1, -1);
    v51 = v42;
    v38 = v124;
    MEMORY[0x22AA9A450](v51, -1, -1);

    (*(v121 + 8))(v104, v122);
    v46(v29, v19);
    v4 = v105;
    goto LABEL_13;
  }

  v78 = *(v38 + 8);
  v78(v25, v19);
  (*(v121 + 8))(v13, v122);
  v78(v29, v19);
  v4 = v105;
LABEL_12:
  v48 = v36;
LABEL_13:
  if ([v48 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v52 = v128;
    v53 = __swift_project_boxed_opaque_existential_0(v127, v128);
    v126 = v52;
    v54 = __swift_allocate_boxed_opaque_existential_0(&v125);
    (*(*(v52 - 8) + 16))(v54, v53, v52);
    sub_226F04970(&v125, &v129);
    __swift_destroy_boxed_opaque_existential_0(v127);
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  v55 = *(&v130 + 1);
  if (!*(&v130 + 1))
  {
    sub_226E97D1C(&v131, &unk_27D7B9650, &unk_227674890);
    v133 = 0u;
    v134 = 0u;
    goto LABEL_23;
  }

  v56 = __swift_project_boxed_opaque_existential_0(&v131, *(&v132 + 1));
  *(&v134 + 1) = v55;
  v57 = __swift_allocate_boxed_opaque_existential_0(&v133);
  (*(*(v55 - 8) + 16))(v57, v56, v55);
  __swift_destroy_boxed_opaque_existential_0(&v131);
  if (!*(&v134 + 1))
  {
LABEL_23:
    sub_226E97D1C(&v133, &unk_27D7BC990, &qword_227670A30);
    v58 = v119;
    v39(v119, 1, 1, v19);
    goto LABEL_24;
  }

  v58 = v119;
  v59 = swift_dynamicCast();
  v39(v58, v59 ^ 1u, 1, v19);
  if ((*(v38 + 48))(v58, 1, v19) == 1)
  {
LABEL_24:
    sub_226E97D1C(v58, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_25;
  }

  v60 = *(v38 + 32);
  v61 = v117;
  v60(v117, v58, v19);
  sub_227662440();
  if (v62)
  {
    v63 = v113;
    sub_22766C040();
    v64 = sub_22766C010();
    v66 = v65;

    (*(v114 + 8))(v63, v115);
    if (v66 >> 60 != 15)
    {
      v105 = v4;
      __swift_project_boxed_opaque_existential_0(&v4[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider], *&v4[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider + 24]);
      sub_227345AA0(v116);
      v122 = v64;
      v79 = v124;
      v80 = v106;
      (*(v124 + 16))(v106, v61, v19);
      v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v82 = (v20 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = v66;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      v60((v85 + v81), v80, v19);
      *(v85 + v82) = v123;
      v86 = (v85 + v83);
      v87 = v121;
      *v86 = v122;
      v86[1] = v87;
      v88 = v105;
      *(v85 + v84) = v105;
      v89 = (v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8));
      v90 = v110;
      *v89 = v108;
      v89[1] = v90;
      v91 = v111;
      v92 = v109;
      v93 = v112;
      (*(v111 + 16))(v109, v116, v112);
      v94 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v95 = (v107 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      (*(v91 + 32))(v96 + v94, v92, v93);
      v97 = (v96 + v95);
      *v97 = sub_226FDCC8C;
      v97[1] = v85;
      sub_227666230();
      v98 = v123;
      v99 = v88;

      sub_227669270();
      (*(v91 + 8))(v116, v93);
      return (*(v124 + 8))(v117, v19);
    }

    (*(v124 + 8))(v61, v19);
  }

  else
  {
    (*(v38 + 8))(v61, v19);
  }

  v48 = v123;
LABEL_25:
  v67 = v118;
  sub_22766A690();
  v68 = v48;
  v69 = sub_22766B380();
  v70 = sub_22766C890();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138543362;
    *(v71 + 4) = v68;
    *v72 = v68;
    v73 = v68;
    _os_log_impl(&dword_226E8E000, v69, v70, "[Key Loader] Failed to get assetID from keyRequest %{public}@", v71, 0xCu);
    sub_226E97D1C(v72, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v72, -1, -1);
    MEMORY[0x22AA9A450](v71, -1, -1);
  }

  (*(v121 + 8))(v67, v122);
  v74 = sub_227663190();
  sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v75 = swift_allocError();
  (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D4FDA0], v74);
  *(swift_allocObject() + 16) = v75;
  sub_227666230();
  return sub_227669280();
}

uint64_t sub_226FD21F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v45 = a9;
  v11 = sub_227666130();
  v37 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2276624A0();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v36);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a2, v16);
  (*(v12 + 16))(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v12 + 80) + v19 + 8) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v14 + 32))(v23 + v18, v17, v36);
  v24 = v38;
  v25 = v39;
  *(v23 + v19) = v39;
  (*(v12 + 32))(v23 + v20, v24, v37);
  v26 = (v23 + v21);
  v28 = v40;
  v27 = v41;
  *v26 = v40;
  v26[1] = v27;
  v30 = v42;
  v29 = v43;
  *(v23 + v22) = v42;
  v31 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v44;
  *v31 = v29;
  v31[1] = v32;
  v33 = v25;
  sub_226F5E0B4(v28, v27);
  sub_227666230();
  v34 = v30;

  return sub_227669270();
}

void sub_226FD2490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = a6;
  v62 = a7;
  v73 = a2;
  v74 = a4;
  v66 = a1;
  v70 = a10;
  v68 = a9;
  v69 = sub_227666130();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = v13;
  v65 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v58 = sub_22766B390();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v71 = v15;
  v72 = v14;
  v59 = *(v15 + 16);
  v59(v19, a3, v14);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v55[1] = a8;
    v25 = v24;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 141558274;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    v27 = sub_227662390();
    v56 = a3;
    v28 = a5;
    v30 = v29;
    (*(v71 + 8))(v19, v72);
    v31 = sub_226E97AE8(v27, v30, aBlock);
    a5 = v28;
    a3 = v56;

    *(v25 + 14) = v31;
    _os_log_impl(&dword_226E8E000, v22, v23, "[Key Loader] Making SPC for URL: %{mask.hash}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    (*(v71 + 8))(v19, v72);
  }

  (*(v57 + 8))(v21, v58);
  v32 = sub_227666120();
  v34 = v33;
  v58 = sub_227662560();
  sub_226EDC420(v32, v34);
  v62 = sub_227662560();
  sub_226FD0A5C(v74, a5);
  v61 = sub_22766BE90();

  v35 = v63;
  v36 = a3;
  v37 = v72;
  v59(v63, v36, v72);
  v38 = v67;
  v39 = v65;
  v40 = a5;
  v41 = v69;
  (*(v67 + 16))(v65, v40, v69);
  v42 = v71;
  v43 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v38 + 80) + v44 + 16) & ~*(v38 + 80);
  v46 = swift_allocObject();
  v47 = v66;
  *(v46 + 2) = v74;
  *(v46 + 3) = v47;
  *(v46 + 4) = v73;
  (*(v42 + 32))(&v46[v43], v35, v37);
  v48 = &v46[v44];
  v49 = v70;
  *v48 = v68;
  v48[1] = v49;
  (*(v38 + 32))(&v46[v45], v39, v41);
  aBlock[4] = sub_226FDCF94;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FD32A0;
  aBlock[3] = &block_descriptor_5;
  v50 = _Block_copy(aBlock);
  v51 = v74;

  v52 = v58;
  v54 = v61;
  v53 = v62;
  [v51 makeStreamingContentKeyRequestDataForApp:v58 contentIdentifier:v62 options:v61 completionHandler:v50];
  _Block_release(v50);
}

uint64_t sub_226FD2A70(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = a8;
  v84 = a6;
  v85 = a5;
  v74 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v81 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  MEMORY[0x28223BE20](v18 - 8);
  v76 = &v66 - v19;
  v20 = sub_227666230();
  v78 = *(v20 - 8);
  v79 = v20;
  MEMORY[0x28223BE20](v20);
  v77 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2276624A0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v75 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  v28 = sub_22766B390();
  v82 = *(v28 - 8);
  v83 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v66 - v33;
  if (v32 >> 60 == 15)
  {
    sub_22766A690();
    v35 = v74;
    v36 = sub_22766B380();
    v37 = sub_22766C890();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_226E8E000, v36, v37, "[Key Loader] contentKeyRequestData data is nil for request: %{public}@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v82 + 8))(v30, v83);
    v41 = sub_227664CB0();
    sub_226EB0E90(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v42 = swift_allocError();
    v44 = v43;
    v45 = a3;
    if (!a3)
    {
      v46 = sub_227663190();
      sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      v45 = swift_allocError();
      (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D4FDC0], v46);
    }

    *v44 = v45;
    (*(*(v41 - 8) + 104))(v44, *MEMORY[0x277D50EC8], v41);
    *v15 = v42;
    swift_storeEnumTagMultiPayload();
    v48 = a3;
    v85(v15);
    return sub_226E97D1C(v15, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    v73 = v32;
    v74 = v13;
    v70 = a10;
    v71 = a9;
    v72 = a1;
    sub_226F5E0B4(a1, v32);
    sub_22766A690();
    v69 = *(v23 + 16);
    v69(v27, a7, v22);
    v50 = sub_22766B380();
    v51 = sub_22766C8B0();
    v52 = a7;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v86 = v67;
      *v53 = 141558274;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2080;
      v54 = sub_227662390();
      v68 = v52;
      v56 = v55;
      (*(v23 + 8))(v27, v22);
      v57 = sub_226E97AE8(v54, v56, &v86);
      v52 = v68;

      *(v53 + 14) = v57;
      _os_log_impl(&dword_226E8E000, v50, v51, "[Key Loader] Got spc for URL %{mask.hash}s", v53, 0x16u);
      v58 = v67;
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v53, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v27, v22);
    }

    (*(v82 + 8))(v34, v83);
    v69(v75, v52, v22);
    v60 = v72;
    v59 = v73;
    sub_226FB1554(v72, v73);

    sub_2276660F0();
    v61 = sub_227664900();
    (*(*(v61 - 8) + 56))(v76, 1, 1, v61);
    v62 = v77;
    sub_2276661E0();
    v64 = v78;
    v63 = v79;
    v65 = v81;
    (*(v78 + 16))(v81, v62, v79);
    swift_storeEnumTagMultiPayload();
    v85(v65);
    sub_226FB1424(v60, v59);
    sub_226E97D1C(v65, &qword_27D7B96C8, &qword_227674900);
    return (*(v64 + 8))(v62, v63);
  }
}

uint64_t sub_226FD32A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_227662590();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_226FB1424(v4, v8);
}

uint64_t sub_226FD334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v46 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v43 - v5;
  v53 = sub_227663CD0();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276639B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v17 = *(v8 + 16);
  v55 = a1;
  v47 = v17;
  v48 = v8 + 16;
  v17(v12, a1, v7);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v54 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v58 = v23;
    *v22 = 136446210;
    sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v24 = sub_22766D140();
    v25 = v7;
    v27 = v26;
    (*(v8 + 8))(v12, v25);
    v28 = sub_226E97AE8(v24, v27, &v58);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_226E8E000, v18, v19, "[Key Loader] Got fetch request %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    (*(v14 + 8))(v16, v43);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    (*(v14 + 8))(v16, v13);
  }

  v29 = v49;
  sub_22714184C(v49, 0.01);
  v30 = v51;
  v31 = v53;
  v32 = (*(v51 + 48))(v29, 1, v53);
  v33 = v55;
  if (v32 == 1)
  {
    sub_226E97D1C(v29, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    v34 = v44;
    (*(v30 + 32))(v44, v29, v31);
    swift_getObjectType();
    v35 = v45;
    sub_2276639A0();
    (*(v30 + 16))(v35 + *(v46 + 20), v34, v31);
    sub_226EB0E90(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
    sub_2276699D0();
    sub_226FDC688(v35, type metadata accessor for AssetProgressUpdated);
    (*(v30 + 8))(v34, v31);
  }

  v36 = v54;
  v37 = v52;
  v47(v52, v33, v54);
  v38 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v39 = swift_allocObject();
  v40 = v57;
  *(v39 + 16) = v57;
  (*(v8 + 32))(v39 + v38, v37, v36);
  type metadata accessor for AssetLoaderResponse(0);
  v41 = v40;
  return sub_227669270();
}

uint64_t sub_226FD398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-v13];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);
  sub_2276696A0();
  v15 = v23;
  sub_2276639A0();
  (*(v9 + 16))(v11, v14, v8);
  v16 = sub_22766D200();
  (*(v9 + 8))(v14, v8);
  [v15 processContentKeyRequestWithIdentifier:v16 initializationData:0 options:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_226FD3B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);

  v10 = sub_22766C990();
  v11 = [objc_opt_self() contentKeySessionWithKeySystem_];

  v12 = *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyLoaderQueue);
  v13 = v11;
  [v13 setDelegate:a3 queue:v12];
  v14 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();

  v15 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a3 + v14);
  *(a3 + v14) = 0x8000000000000000;
  sub_227369F50(a1, a2, v15, a4, isUniquelyReferenced_nonNull_native);
  *(a3 + v14) = v18;
  swift_endAccess();

  *a5 = v15;
  return result;
}

int *sub_226FD3CAC@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v254 = a5;
  v263 = a4;
  v264 = a1;
  v246 = a6;
  v293 = *MEMORY[0x277D85DE8];
  v245 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v245);
  v244 = &v238 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v9 - 8);
  v251 = &v238 - v10;
  v250 = sub_227663CD0();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v253 = &v238 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  MEMORY[0x28223BE20](v12 - 8);
  v257 = &v238 - v13;
  v14 = sub_22766B390();
  v286 = *(v14 - 8);
  v287 = v14;
  MEMORY[0x28223BE20](v14);
  v274 = (&v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v275 = &v238 - v17;
  MEMORY[0x28223BE20](v18);
  v265 = (&v238 - v19);
  MEMORY[0x28223BE20](v20);
  v252 = &v238 - v21;
  MEMORY[0x28223BE20](v22);
  v262 = &v238 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v24 - 8);
  v260 = &v238 - v25;
  v270 = sub_227662750();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v268 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_227664AE0();
  v256 = *(v278 - 1);
  MEMORY[0x28223BE20](v278);
  v266 = &v238 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v267 = &v238 - v29;
  MEMORY[0x28223BE20](v30);
  v272 = &v238 - v31;
  v32 = sub_2276668A0();
  v276 = *(v32 - 8);
  v277 = v32;
  MEMORY[0x28223BE20](v32);
  v273 = &v238 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v280 = &v238 - v35;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v281);
  v282 = (&v238 - v36);
  v37 = sub_2276639B0();
  v38 = *(v37 - 8);
  v283 = v37;
  v284 = v38;
  MEMORY[0x28223BE20](v37);
  v258 = &v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v255 = &v238 - v41;
  MEMORY[0x28223BE20](v42);
  v261 = &v238 - v43;
  MEMORY[0x28223BE20](v44);
  v279 = &v238 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v46 - 8);
  v259 = &v238 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v238 - v49;
  v51 = sub_2276624A0();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  ObjectType = &v238 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v248 = &v238 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v238 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v238 - v60;
  sub_227447BF8(2036689710, 0xE400000000000000);
  v62 = __swift_project_boxed_opaque_existential_0((a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_assetFileStore), *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_assetFileStore + 24));
  sub_226E93170(*v62 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v50, &unk_27D7BB570, &unk_227670FC0);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {

    sub_226E97D1C(v50, &unk_27D7BB570, &unk_227670FC0);
    v63 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D4FD00], v63);
    return swift_willThrow();
  }

  sub_227662400();

  v243 = *(v52 + 8);
  v247 = v52 + 8;
  v243(v50, v51);
  v242 = v52;
  v66 = *(v52 + 32);
  v241 = v52 + 32;
  v240 = v66;
  v67 = (v66)(v61, v58, v51);
  MEMORY[0x28223BE20](v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  v68 = v285;
  sub_2276696A0();
  v69 = v61;
  if (v290)
  {
    v70 = sub_226EA9E3C(v290, v291);
    MEMORY[0x28223BE20](v70);
    v285 = a3;
    v71 = v282;
    sub_2276696A0();
    v72 = v283;
    v73 = v284;
    if ((*(v284 + 48))(v71, 1, v283) == 1)
    {
      sub_226E97D1C(v71, &qword_27D7B9680, &unk_227671520);
      v74 = v275;
      sub_22766A690();
      v75 = ObjectType;
      (*(v242 + 16))(ObjectType, a2, v51);
      v76 = sub_22766B380();
      v77 = sub_22766C8B0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v290 = v79;
        *v78 = 141558274;
        *(v78 + 4) = 1752392040;
        *(v78 + 12) = 2080;
        v80 = sub_227662390();
        v239 = v69;
        v82 = v81;
        v83 = v75;
        v84 = v243;
        v243(v83, v51);
        v85 = sub_226E97AE8(v80, v82, &v290);
        v69 = v239;

        *(v78 + 14) = v85;
        _os_log_impl(&dword_226E8E000, v76, v77, "[Key Loader] Lost track of AssetRequest for key URL: %{mask.hash}s", v78, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x22AA9A450](v79, -1, -1);
        MEMORY[0x22AA9A450](v78, -1, -1);

        (*(v286 + 8))(v275, v287);
      }

      else
      {

        v126 = v75;
        v84 = v243;
        v243(v126, v51);
        (*(v286 + 8))(v74, v287);
      }

      v127 = sub_227663190();
      sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      swift_allocError();
      (*(*(v127 - 8) + 104))(v128, *MEMORY[0x277D4FD08], v127);
      swift_willThrow();
      return v84(v69, v51);
    }

    v281 = a2;
    v92 = v279;
    (*(v73 + 32))(v279, v71, v72);
    v93 = v272;
    sub_227663970();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v238 = v51;
    v239 = v69;
    if (EnumCaseMultiPayload == 1)
    {
      v275 = v68;
      (*(v276 + 32))(v280, v93, v277);
      sub_2276631B0();
      v95 = v268;
      sub_2276626E0();
      LODWORD(v282) = sub_2276631C0();
      v96 = v269;
      v97 = v260;
      v98 = v270;
      (*(v269 + 16))(v260, v95, v270);
      (*(v96 + 56))(v97, 0, 1, v98);
      v99 = v259;
      v274 = *(v242 + 56);
      v274(v259, 1, 1, v51);
      v100 = v273;
      sub_227666880();
      sub_226E97D1C(v99, &unk_27D7BB570, &unk_227670FC0);
      sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);
      v101 = *(v276 + 16);
      v102 = v267;
      v272 = (v276 + 16);
      ObjectType = v101;
      (v101)(v267, v100, v277);
      swift_storeEnumTagMultiPayload();
      v103 = v262;
      sub_22766A690();
      v104 = *(v73 + 16);
      v105 = v261;
      v104(v261, v92, v72);
      v106 = v266;
      sub_226FDCC24(v102, v266, MEMORY[0x277D50D68]);
      v107 = sub_22766B380();
      v108 = sub_22766C8B0();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v282 = v107;
        v110 = v109;
        v265 = swift_slowAlloc();
        v290 = v265;
        *v110 = 141558274;
        *(v110 + 4) = 1752392040;
        *(v110 + 12) = 2080;
        v111 = v106;
        v112 = v257;
        sub_226FDCC24(v111, v257, MEMORY[0x277D50D68]);
        (*(v256 + 56))(v112, 0, 1, v278);
        v274(v99, 1, 1, v51);
        v113 = v105;
        v114 = v255;
        LODWORD(v274) = v108;
        sub_227663980();
        sub_226E97D1C(v99, &unk_27D7BB570, &unk_227670FC0);
        sub_226E97D1C(v112, &qword_27D7B9688, &qword_2276776E0);
        sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
        v115 = v283;
        v116 = sub_22766D140();
        v117 = v103;
        v119 = v118;
        v120 = *(v284 + 8);
        v120(v114, v115);
        sub_226FDC688(v266, MEMORY[0x277D50D68]);
        v278 = v120;
        v120(v113, v115);
        v121 = sub_226E97AE8(v116, v119, &v290);

        *(v110 + 14) = v121;
        v122 = v282;
        _os_log_impl(&dword_226E8E000, v282, v274, "[Key Loader] Updated metadata of request %{mask.hash}s", v110, 0x16u);
        v123 = v265;
        __swift_destroy_boxed_opaque_existential_0(v265);
        MEMORY[0x22AA9A450](v123, -1, -1);
        MEMORY[0x22AA9A450](v110, -1, -1);

        v124 = *(v286 + 8);
        v125 = v117;
      }

      else
      {

        sub_226FDC688(v106, MEMORY[0x277D50D68]);
        v278 = *(v284 + 8);
        v278(v105, v72);
        v124 = *(v286 + 8);
        v125 = v103;
      }

      v265 = v124;
      (v124)(v125, v287);
      v144 = __swift_project_boxed_opaque_existential_0(v264, v264[3]);
      v145 = *v144;
      v146 = v144[1];
      v147 = *(v144 + 16);
      v148 = v144[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
      v149 = swift_allocObject();
      v150 = v145;
      v151 = v146;

      sub_22766A070();
      v274 = v150;
      *(v149 + 16) = v150;
      *(v149 + 24) = v151;
      v266 = v151;
      LODWORD(v282) = v147;
      *(v149 + 32) = v147;
      *(v149 + 40) = v148;
      swift_getKeyPath();
      v152 = sub_227666810();
      v154 = v153;
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v290 = v152;
      v291 = v154;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v155 = sub_22766C820();
      sub_226E93170(&v290, &v288, &unk_27D7BC990, &qword_227670A30);
      v156 = v289;
      if (v289)
      {
        v157 = __swift_project_boxed_opaque_existential_0(&v288, v289);
        v158 = *(v156 - 8);
        v159 = MEMORY[0x28223BE20](v157);
        v161 = &v238 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v158 + 16))(v161, v159);
        v162 = sub_22766D170();
        (*(v158 + 8))(v161, v156);
        __swift_destroy_boxed_opaque_existential_0(&v288);
      }

      else
      {
        v162 = 0;
      }

      v165 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v166 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

      sub_226E97D1C(&v290, &unk_27D7BC990, &qword_227670A30);
      v167 = qword_2813B2078;
      swift_beginAccess();
      v168 = v166;
      v169 = sub_22766A080();
      v171 = v170;
      MEMORY[0x22AA985C0]();
      if (*((*v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v169(&v290, 0);
      swift_endAccess();

      v172 = sub_2275424B0(v149 + v167, v282, v148);
      if (v172)
      {
        v173 = v238;
        v174 = v239;
        if (v172 == 1)
        {

          goto LABEL_28;
        }

        swift_willThrow();

        v200 = v279;
        v188 = v277;
      }

      else
      {
        v186 = v275;
        v187 = sub_22728467C(0);
        v173 = v238;
        v174 = v239;
        v188 = v277;
        if (!v186)
        {
          v198 = v187;
          [v187 setResultType_];
          sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
          v199 = sub_22766C9E0();
          v275 = 0;
          v205 = sub_226EDAB24(v199);

          sub_226EDAB78(v205, v266);

LABEL_28:
          v175 = __swift_project_boxed_opaque_existential_0(v264, v264[3]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96B8, &unk_2276748F0);
          v176 = v276;
          v177 = (*(v276 + 80) + 32) & ~*(v276 + 80);
          v178 = swift_allocObject();
          *(v178 + 16) = xmmword_227670CD0;
          v179 = v178 + v177;
          v180 = v273;
          v181 = v277;
          (ObjectType)(v179, v273, v277);
          v182 = v275;
          sub_227561BB4(v178, v175[1], *(v175 + 16), v175[3]);
          if (v182)
          {

            sub_226FDC688(v267, MEMORY[0x277D50D68]);
            v183 = *(v176 + 8);
            v183(v180, v181);
            (*(v269 + 8))(v268, v270);
            v183(v280, v181);
LABEL_30:
            v278(v279, v283);
            v184 = v174;
            v185 = v238;
            return (v243)(v184, v185);
          }

          v189 = sub_2276631D0();
          v191 = v190;
          v192 = sub_227662560();
          sub_226EDC420(v189, v191);
          v290 = 0;
          v193 = [v254 persistableContentKeyFromKeyVendorResponse:v192 options:0 error:&v290];

          v194 = v290;
          if (!v193)
          {
            v202 = v194;
            sub_2276622C0();

            swift_willThrow();
            sub_226FDC688(v267, MEMORY[0x277D50D68]);
            v203 = v277;
            v204 = *(v276 + 8);
            v204(v273, v277);
            (*(v269 + 8))(v268, v270);
            v204(v280, v203);
            goto LABEL_30;
          }

          v195 = sub_227662590();
          v197 = v196;

          result = sub_2276625B0();
          v206 = v197 >> 62;
          v275 = (v197 >> 62);
          if ((v197 >> 62) > 1)
          {
            v207 = v285;
            v208 = v251;
            if (v206 != 2)
            {
              v282 = 0;
              goto LABEL_51;
            }

            v211 = *(v195 + 16);
            v210 = *(v195 + 24);
            v212 = __OFSUB__(v210, v211);
            v209 = (v210 - v211);
            if (!v212)
            {
LABEL_49:
              v282 = v209;
LABEL_51:
              v285 = v197;
              sub_22714184C(v208, 1.0);
              v213 = v249;
              v214 = v250;
              if ((*(v249 + 48))(v208, 1, v250) == 1)
              {
                sub_226E97D1C(v208, &qword_27D7B9648, &unk_227674880);
                v215 = v242;
                v216 = v238;
              }

              else
              {
                (*(v213 + 32))(v253, v208, v214);
                v274 = v195;
                v217 = v213;
                v272 = *(v207 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_eventHub + 8);
                ObjectType = swift_getObjectType();
                v215 = v242;
                v218 = v244;
                v216 = v238;
                (*(v242 + 16))(v244, v281, v238);
                (*(v217 + 16))(v218 + *(v245 + 20), v253, v214);
                sub_226EB0E90(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
                sub_2276699D0();
                sub_226FDC688(v218, type metadata accessor for AssetProgressUpdated);
                (*(v217 + 8))(v253, v214);
                v195 = v274;
              }

              v219 = v252;
              sub_22766A690();
              v220 = v248;
              (*(v215 + 16))(v248, v174, v216);
              v221 = v285;
              sub_226F5E0B4(v195, v285);
              v222 = sub_22766B380();
              v223 = sub_22766C8B0();
              if (!os_log_type_enabled(v222, v223))
              {

                sub_226EDC420(v195, v221);
                sub_226EDC420(v195, v221);
                v243(v220, v216);
                v226 = v219;
LABEL_67:
                (v265)(v226, v287);
                sub_226FDC688(v267, MEMORY[0x277D50D68]);
                v235 = v277;
                v236 = *(v276 + 8);
                v236(v273, v277);
                (*(v269 + 8))(v268, v270);
                v236(v280, v235);
                v278(v279, v283);
                v237 = v246;
                v240(v246, v239, v216);
                result = type metadata accessor for AssetLoaderResponse(0);
                *(v237 + result[5]) = v282;
                return result;
              }

              v224 = swift_slowAlloc();
              result = swift_slowAlloc();
              v290 = result;
              *v224 = 134349570;
              v281 = result;
              if (v275 > 1)
              {
                if (v275 != 2)
                {
                  v225 = 0;
                  goto LABEL_66;
                }

                v228 = *(v195 + 16);
                v227 = *(v195 + 24);
                v212 = __OFSUB__(v227, v228);
                v225 = v227 - v228;
                if (!v212)
                {
                  goto LABEL_66;
                }

                __break(1u);
              }

              else if (!v275)
              {
                v225 = BYTE6(v221);
LABEL_66:
                *(v224 + 4) = v225;
                sub_226EDC420(v195, v221);
                *(v224 + 12) = 2160;
                *(v224 + 14) = 1752392040;
                *(v224 + 22) = 2080;
                v229 = sub_227662390();
                v230 = v220;
                v232 = v231;
                v243(v230, v216);
                v233 = sub_226E97AE8(v229, v232, &v290);

                *(v224 + 24) = v233;
                _os_log_impl(&dword_226E8E000, v222, v223, "[Key Loader] Persistable key with length %{public}ld, written to %{mask.hash}s", v224, 0x20u);
                v234 = v281;
                __swift_destroy_boxed_opaque_existential_0(v281);
                MEMORY[0x22AA9A450](v234, -1, -1);
                MEMORY[0x22AA9A450](v224, -1, -1);

                sub_226EDC420(v195, v221);
                v226 = v252;
                goto LABEL_67;
              }

              LODWORD(v225) = HIDWORD(v195) - v195;
              if (!__OFSUB__(HIDWORD(v195), v195))
              {
                v225 = v225;
                goto LABEL_66;
              }

LABEL_69:
              __break(1u);
              return result;
            }

            __break(1u);
          }

          else
          {
            v207 = v285;
            v208 = v251;
            if (!v206)
            {
              v209 = BYTE6(v197);
              goto LABEL_49;
            }
          }

          LODWORD(v209) = HIDWORD(v195) - v195;
          if (__OFSUB__(HIDWORD(v195), v195))
          {
            __break(1u);
            goto LABEL_69;
          }

          v209 = v209;
          goto LABEL_49;
        }

        v200 = v279;
      }

      sub_226FDC688(v267, MEMORY[0x277D50D68]);
      v201 = *(v276 + 8);
      v201(v273, v188);
      (*(v269 + 8))(v268, v270);
      v201(v280, v188);
      v278(v200, v283);
      v184 = v174;
      v185 = v173;
      return (v243)(v184, v185);
    }

    sub_226FDC688(v93, MEMORY[0x277D50D68]);
    v129 = v265;
    sub_22766A690();
    v130 = v258;
    (*(v73 + 16))(v258, v92, v72);
    v131 = sub_22766B380();
    v132 = sub_22766C8B0();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = v130;
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v290 = v135;
      *v134 = 141558274;
      *(v134 + 4) = 1752392040;
      *(v134 + 12) = 2080;
      sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v136 = sub_22766D140();
      v137 = v73;
      v138 = v72;
      v140 = v139;
      v141 = v133;
      v142 = *(v137 + 8);
      v142(v141, v138);
      v143 = sub_226E97AE8(v136, v140, &v290);

      *(v134 + 14) = v143;
      _os_log_impl(&dword_226E8E000, v131, v132, "[Key Loader] AssetRequest for key doesn't have metadata %{mask.hash}s", v134, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x22AA9A450](v135, -1, -1);
      MEMORY[0x22AA9A450](v134, -1, -1);

      (*(v286 + 8))(v265, v287);
    }

    else
    {

      v142 = *(v73 + 8);
      v142(v130, v72);
      (*(v286 + 8))(v129, v287);
      v138 = v72;
    }

    v163 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v163 - 8) + 104))(v164, *MEMORY[0x277D4FD08], v163);
    swift_willThrow();
    v142(v279, v138);
    return (v243)(v239, v238);
  }

  else
  {
    v86 = v274;
    sub_22766A690();
    v87 = sub_22766B380();
    v88 = sub_22766C8B0();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_226E8E000, v87, v88, "[Key Loader] Not writing persistable content key because load completion doesn't exist.", v89, 2u);
      MEMORY[0x22AA9A450](v89, -1, -1);
    }

    (*(v286 + 8))(v86, v287);
    v90 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v90 - 8) + 104))(v91, *MEMORY[0x277D4FD10], v90);
    swift_willThrow();
    return (v243)(v69, v51);
  }
}

void sub_226FD61BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v263 = a2;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v229 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v228 = &v219 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v219 - v5;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v219 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = v7;
  MEMORY[0x28223BE20](v8);
  v247 = &v219 - v9;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v236 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = v10;
  MEMORY[0x28223BE20](v11);
  v248 = &v219 - v12;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v240 = &v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v13;
  MEMORY[0x28223BE20](v14);
  v241 = &v219 - v15;
  v261 = sub_22766B390();
  v262 = *(v261 - 1);
  MEMORY[0x28223BE20](v261);
  v17 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v249 = &v219 - v19;
  MEMORY[0x28223BE20](v20);
  v250 = &v219 - v21;
  MEMORY[0x28223BE20](v22);
  v244 = &v219 - v23;
  MEMORY[0x28223BE20](v24);
  v225 = &v219 - v25;
  v245 = sub_227664AE0();
  MEMORY[0x28223BE20](v245);
  v246 = &v219 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_2276668A0();
  v253 = *(v254 - 8);
  v27 = *(v253 + 64);
  MEMORY[0x28223BE20](v254);
  v226 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v252 = &v219 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v30);
  v32 = &v219 - v31;
  v257 = sub_2276639B0();
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v224 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v255 = &v219 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v219 - v37;
  v265 = sub_2276624A0();
  v264 = *(v265 - 8);
  v39 = *(v264 + 64);
  MEMORY[0x28223BE20](v265);
  v40 = &v219 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v223 = &v219 - v42;
  MEMORY[0x28223BE20](v43);
  v251 = &v219 - v44;
  MEMORY[0x28223BE20](v45);
  v222 = &v219 - v46;
  v48 = MEMORY[0x28223BE20](v47);
  v259 = &v219 - v49;
  v260 = a1;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v50 = v269;
    v51 = __swift_project_boxed_opaque_existential_0(&v268, v269);
    v267 = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v266);
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_0, v51, v50);
    sub_226F04970(&v266, &v270);
    __swift_destroy_boxed_opaque_existential_0(&v268);
  }

  else
  {
    v270 = 0u;
    v271 = 0u;
  }

  v272 = v270;
  v273 = v271;
  v53 = *(&v271 + 1);
  if (!*(&v271 + 1))
  {
    sub_226E97D1C(&v272, &unk_27D7B9650, &unk_227674890);
    v274 = 0u;
    v275 = 0u;
    goto LABEL_12;
  }

  v54 = __swift_project_boxed_opaque_existential_0(&v272, *(&v273 + 1));
  *(&v275 + 1) = v53;
  v55 = __swift_allocate_boxed_opaque_existential_0(&v274);
  (*(*(v53 - 8) + 16))(v55, v54, v53);
  __swift_destroy_boxed_opaque_existential_0(&v272);
  if (!*(&v275 + 1))
  {
LABEL_12:
    sub_226E97D1C(&v274, &unk_27D7BC990, &qword_227670A30);
    (*(v264 + 56))(v38, 1, 1, v265);
    goto LABEL_13;
  }

  v56 = v265;
  v57 = swift_dynamicCast();
  v58 = v264;
  (*(v264 + 56))(v38, v57 ^ 1u, 1, v56);
  if ((*(v58 + 48))(v38, 1, v56) == 1)
  {
LABEL_13:
    sub_226E97D1C(v38, &unk_27D7BB570, &unk_227670FC0);
    sub_22766A690();
    v88 = v260;
    v89 = sub_22766B380();
    v90 = sub_22766C890();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138543362;
      *(v91 + 4) = v88;
      *v92 = v88;
      v93 = v88;
      _os_log_impl(&dword_226E8E000, v89, v90, "[Key Loader] Key request doesn't have required identifer %{public}@", v91, 0xCu);
      sub_226E97D1C(v92, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v92, -1, -1);
      MEMORY[0x22AA9A450](v91, -1, -1);
    }

    (*(v262 + 8))(v17, v261);
    v94 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v95 = swift_allocError();
    (*(*(v94 - 8) + 104))(v96, *MEMORY[0x277D4FD40], v94);
    *(swift_allocObject() + 16) = v95;
    sub_227669280();
    return;
  }

  v219 = v6;
  v59 = v58 + 32;
  v60 = *(v58 + 32);
  v61 = v259;
  v221 = v59;
  v220 = v60;
  v62 = (v60)(v259, v38, v56);
  v63 = v258;
  MEMORY[0x28223BE20](v62);
  *(&v219 - 2) = v63;
  *(&v219 - 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  if (!v274)
  {
    v97 = v249;
    sub_22766A690();
    v98 = sub_22766B380();
    v99 = sub_22766C8B0();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_226E8E000, v98, v99, "[Key Loader] processKeyRequest failed because load completion doesn't exist.", v100, 2u);
      MEMORY[0x22AA9A450](v100, -1, -1);
    }

    (*(v262 + 8))(v97, v261);
    v101 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v102 = swift_allocError();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x277D4FD10], v101);
    *(swift_allocObject() + 16) = v102;
    v104 = v102;
    sub_227669280();
    (*(v264 + 8))(v259, v265);
    goto LABEL_25;
  }

  v64 = sub_226EA9E3C(v274, *(&v274 + 1));
  MEMORY[0x28223BE20](v64);
  *(&v219 - 2) = v63;
  *(&v219 - 1) = v61;
  sub_2276696A0();
  v65 = v256;
  v66 = v257;
  if ((*(v256 + 48))(v32, 1, v257) == 1)
  {
    sub_226E97D1C(v32, &qword_27D7B9680, &unk_227671520);
    v67 = v250;
    sub_22766A690();
    v68 = v264;
    v69 = v265;
    (*(v264 + 16))(v40, v61, v265);
    v70 = v260;
    v71 = sub_22766B380();
    v72 = sub_22766C890();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      *&v274 = v260;
      *v73 = 141558530;
      *(v73 + 4) = 1752392040;
      *(v73 + 12) = 2080;
      v74 = sub_227662390();
      v76 = v75;
      v77 = v69;
      v78 = *(v68 + 8);
      v79 = v40;
      v80 = v77;
      v78(v79);
      v81 = sub_226E97AE8(v74, v76, &v274);

      *(v73 + 14) = v81;
      *(v73 + 22) = 2114;
      *(v73 + 24) = v70;
      v82 = v258;
      *v258 = v70;
      v83 = v70;
      v84 = v78;
      _os_log_impl(&dword_226E8E000, v71, v72, "[Key Loader] %{mask.hash}s Matching request not found for key request %{public}@", v73, 0x20u);
      sub_226E97D1C(v82, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v82, -1, -1);
      v85 = v260;
      __swift_destroy_boxed_opaque_existential_0(v260);
      MEMORY[0x22AA9A450](v85, -1, -1);
      v86 = v73;
      v87 = v259;
      MEMORY[0x22AA9A450](v86, -1, -1);

      (*(v262 + 8))(v250, v261);
      v69 = v80;
    }

    else
    {
      v87 = v61;

      v84 = *(v68 + 8);
      v84(v40, v69);
      (*(v262 + 8))(v67, v261);
    }

    v125 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v102 = swift_allocError();
    (*(*(v125 - 8) + 104))(v126, *MEMORY[0x277D4FD08], v125);
    *(swift_allocObject() + 16) = v102;
    v127 = v102;
    sub_227669280();
    v84(v87, v69);
LABEL_25:

    return;
  }

  v105 = *(v65 + 32);
  v106 = v65;
  v107 = v255;
  v105(v255, v32, v66);
  v108 = v246;
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = v265;
  if (EnumCaseMultiPayload == 1)
  {
    v111 = *(v253 + 32);
    v245 = v253 + 32;
    v244 = v111;
    (v111)(v252, v108, v254);
    v112 = v225;
    sub_22766A690();
    v113 = *(v264 + 16);
    v114 = v222;
    v250 = (v264 + 16);
    v249 = v113;
    (v113)(v222, v259, v110);
    v115 = sub_22766B380();
    v116 = sub_22766C8B0();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v274 = v118;
      *v117 = 141558274;
      *(v117 + 4) = 1752392040;
      *(v117 + 12) = 2080;
      v119 = sub_227662390();
      v120 = v114;
      v122 = v121;
      v123 = *(v264 + 8);
      v246 = ((v264 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v123(v120, v110);
      v124 = sub_226E97AE8(v119, v122, &v274);

      *(v117 + 14) = v124;
      _os_log_impl(&dword_226E8E000, v115, v116, "[Key Loader] Begin handshake for key URL: %{mask.hash}s", v117, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x22AA9A450](v118, -1, -1);
      MEMORY[0x22AA9A450](v117, -1, -1);
    }

    else
    {

      v150 = *(v264 + 8);
      v246 = ((v264 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v150(v114, v110);
    }

    (*(v262 + 8))(v112, v261);
    v151 = v258;
    v152 = v219;
    v153 = v252;
    v154 = sub_227666860();
    sub_226FD12CC(v260, v154, v155, v152);

    v156 = v253;
    v157 = v226;
    v158 = v153;
    v159 = v254;
    (*(v253 + 16))(v226, v158, v254);
    v160 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v161 = swift_allocObject();
    *(v161 + 16) = v151;
    (v244)(v161 + v160, v157, v159);
    v162 = v229;
    v163 = v228;
    v164 = v231;
    (*(v229 + 16))(v228, v152, v231);
    v165 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v166 = (v227 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
    v167 = swift_allocObject();
    (*(v162 + 32))(v167 + v165, v163, v164);
    v168 = (v167 + v166);
    *v168 = sub_226FDC6E8;
    v168[1] = v161;
    sub_2276631F0();
    v169 = v151;
    v261 = v169;
    v170 = v247;
    sub_227669270();
    (*(v162 + 8))(v152, v164);
    v171 = v251;
    v172 = v265;
    (v249)(v251, v259, v265);
    v173 = *(v264 + 80);
    v262 = (v173 + 32) & ~v173;
    v174 = swift_allocObject();
    *(v174 + 16) = v169;
    v175 = v260;
    *(v174 + 24) = v260;
    v220(v174 + ((v173 + 32) & ~v173), v171, v172);
    v176 = v233;
    v177 = v232;
    v178 = v234;
    (*(v233 + 16))(v232, v170, v234);
    v179 = (*(v176 + 80) + 16) & ~*(v176 + 80);
    v180 = (v230 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
    v181 = swift_allocObject();
    (*(v176 + 32))(v181 + v179, v177, v178);
    v182 = (v181 + v180);
    *v182 = sub_226FDC794;
    v182[1] = v174;
    type metadata accessor for AssetLoaderResponse(0);
    v183 = v261;
    v261 = v175;
    v184 = v248;
    sub_227669270();
    (*(v176 + 8))(v247, v178);
    v185 = v251;
    v186 = v265;
    (v249)(v251, v259, v265);
    v187 = swift_allocObject();
    *(v187 + 16) = v183;
    v220(v187 + ((v173 + 24) & ~v173), v185, v186);
    v188 = swift_allocObject();
    *(v188 + 16) = sub_226FDC90C;
    *(v188 + 24) = v187;
    v189 = v237;
    v190 = v236;
    v191 = v238;
    (*(v237 + 16))(v236, v184, v238);
    v192 = (*(v189 + 80) + 16) & ~*(v189 + 80);
    v193 = (v235 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
    v194 = swift_allocObject();
    (*(v189 + 32))(v194 + v192, v190, v191);
    v195 = (v194 + v193);
    *v195 = sub_226FDC98C;
    v195[1] = v188;
    v196 = v183;
    v197 = v241;
    sub_227669270();
    (*(v189 + 8))(v248, v191);
    v198 = v251;
    v199 = v265;
    (v249)(v251, v259, v265);
    v200 = v262;
    v201 = swift_allocObject();
    v202 = v261;
    *(v201 + 16) = v261;
    *(v201 + 24) = v196;
    v220(v201 + v200, v198, v199);
    v203 = swift_allocObject();
    *(v203 + 16) = sub_226FDCA88;
    *(v203 + 24) = v201;
    v204 = v242;
    v205 = v240;
    v206 = v243;
    (*(v242 + 16))(v240, v197, v243);
    v207 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v208 = (v239 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
    v209 = swift_allocObject();
    (*(v204 + 32))(v209 + v207, v205, v206);
    v210 = (v209 + v208);
    *v210 = sub_226F5AAF8;
    v210[1] = v203;
    v211 = v196;
    v212 = v202;
    sub_227669270();
    (*(v204 + 8))(v197, v206);
    (*(v253 + 8))(v252, v254);
    (*(v256 + 8))(v255, v257);
    (*(v264 + 8))(v259, v265);
  }

  else
  {
    sub_226FDC688(v108, MEMORY[0x277D50D68]);
    v128 = v244;
    sub_22766A690();
    v129 = v264;
    v130 = v223;
    v131 = v259;
    (*(v264 + 16))(v223, v259, v110);
    v132 = v224;
    (*(v106 + 16))(v224, v107, v66);
    v133 = sub_22766B380();
    v134 = sub_22766C890();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      *&v274 = v258;
      *v135 = 141558786;
      *(v135 + 4) = 1752392040;
      *(v135 + 12) = 2080;
      LODWORD(v254) = v134;
      v136 = sub_227662390();
      v138 = v137;
      v139 = v130;
      v140 = *(v129 + 8);
      v140(v139, v265);
      v141 = sub_226E97AE8(v136, v138, &v274);

      *(v135 + 14) = v141;
      *(v135 + 22) = 2160;
      *(v135 + 24) = 1752392040;
      v110 = v265;
      *(v135 + 32) = 2080;
      v142 = sub_227663920();
      v144 = v143;
      v145 = v132;
      v146 = v257;
      v260 = *(v106 + 8);
      (v260)(v145, v257);
      v147 = sub_226E97AE8(v142, v144, &v274);

      *(v135 + 34) = v147;
      _os_log_impl(&dword_226E8E000, v133, v254, "[Key Loader] %{mask.hash}s Asset request %{mask.hash}s is not a key request", v135, 0x2Au);
      v148 = v258;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v148, -1, -1);
      v149 = v135;
      v131 = v259;
      MEMORY[0x22AA9A450](v149, -1, -1);

      (*(v262 + 8))(v244, v261);
    }

    else
    {

      v213 = v132;
      v146 = v257;
      v260 = *(v106 + 8);
      (v260)(v213, v257);
      v214 = v130;
      v140 = *(v129 + 8);
      v140(v214, v110);
      (*(v262 + 8))(v128, v261);
    }

    v215 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v216 = swift_allocError();
    (*(*(v215 - 8) + 104))(v217, *MEMORY[0x277D4FD08], v215);
    *(swift_allocObject() + 16) = v216;
    v218 = v216;
    sub_227669280();
    (v260)(v255, v146);
    v140(v131, v110);
  }
}

uint64_t sub_226FD81E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider), *(a2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider + 24));
  v5 = sub_227666830();
  v7 = v6;
  v8 = sub_227666870();
  sub_22734ED60(a1, v5, v7, v8, a3);
}

uint64_t sub_226FD8270@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a5;
  v27 = a2;
  v28 = a1;
  v7 = sub_2276631F0();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore + 32];
  v29 = *&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore + 24];
  v31 = v14;
  v30 = __swift_project_boxed_opaque_existential_0(&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore], v29);
  (*(v11 + 16))(v13, a4, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 8) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v13, v10);
  v19 = v26;
  v20 = v27;
  *(v18 + v16) = v27;
  (*(v8 + 32))(v18 + v17, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v21 = v32;
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v22 = type metadata accessor for AssetLoaderResponse(0);
  v23 = v20;
  v24 = v21;
  sub_226ECF5D8(sub_226FDCB08, v18, v29, v22, v31, v33);
}

uint64_t sub_226FD84F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_226FDCC24(a1, &v9 - v6, type metadata accessor for AssetLoaderResponse);
  swift_storeEnumTagMultiPayload();
  sub_226FD85F4(a3, v7);
  return sub_226E97D1C(v7, &qword_27D7B9628, &unk_227674860);
}

uint64_t sub_226FD85F4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v47 = sub_2276624A0();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_22766B390();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v44 = v2;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v17 = v46[0];
  if (v46[0])
  {
    v40 = v3;
    v18 = v46[1];
    sub_22766A690();
    (*(v5 + 16))(v10, a1, v47);
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46[0] = v38;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      v22 = sub_227662390();
      v39 = v18;
      v24 = v23;
      (*(v5 + 8))(v10, v47);
      v25 = sub_226E97AE8(v22, v24, v46);
      v18 = v39;

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v19, v20, "[Key Loader] Completing request for URL: %{mask.hash}s", v21, 0x16u);
      v26 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v47);
    }

    (*(v42 + 8))(v16, v43);
    v17(v41);
    return sub_226EA9E3C(v17, v18);
  }

  else
  {
    sub_22766A690();
    (*(v5 + 16))(v7, a1, v47);
    v27 = sub_22766B380();
    v28 = sub_22766C890();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 141558274;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2080;
      v31 = sub_227662390();
      v33 = v32;
      (*(v5 + 8))(v7, v47);
      v34 = sub_226E97AE8(v31, v33, v46);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_226E8E000, v27, v28, "[Key Loader] Expected result completion for key URL %{mask.hash}s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v47);
    }

    (*(v42 + 8))(v13, v43);
    v36 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D4FD08], v36);
    return swift_willThrow();
  }
}

uint64_t sub_226FD8B60(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - v8);
  v10 = sub_2276622B0();
  [a2 processContentKeyResponseError_];

  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  v11 = a1;
  sub_226FD85F4(a4, v9);
  return sub_226E97D1C(v9, &qword_27D7B9628, &unk_227674860);
}

uint64_t sub_226FD8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v46 = a3;
  v51 = a2;
  v49 = sub_2276624A0();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v45 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v43 - v12;
  v13 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v47 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = __clz(__rbit64(v17)) | (v21 << 6);
      v23 = *(v14 + 48);
      v24 = sub_2276639B0();
      (*(*(v24 - 8) + 16))(v10, v23 + *(*(v24 - 8) + 72) * v22, v24);
      v25 = (*(v14 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = &v10[*(v50 + 48)];
      *v29 = v26;
      *(v29 + 1) = v27;
      *(v29 + 2) = v28;
      sub_226FDAAF8(v10, v7);

      v30 = v28;
      v31 = v48;
      sub_2276639A0();
      LOBYTE(v27) = sub_227662420();
      (*v47)(v31, v49);
      if (v27)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_226E97D1C(v7, &qword_27D7B9640, &qword_227674878);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v33 = v44;
    sub_226FDAAF8(v7, v44);
    v32 = v45;
    v34 = *(v45 + 56);
    v35 = v33;
    v36 = 0;
LABEL_12:
    v37 = v50;
    v34(v35, v36, 1, v50);
    v38 = v46;

    if ((*(v32 + 48))(v33, 1, v37) == 1)
    {
      sub_226E97D1C(v33, &qword_27D7B9638, &qword_227674870);
      v39 = 0;
      result = 0;
    }

    else
    {
      v40 = v33 + *(v37 + 48);
      v41 = *(v40 + 16);
      v50 = *v40;

      v42 = sub_2276639B0();
      (*(*(v42 - 8) + 8))(v33, v42);
      result = swift_allocObject();
      *(result + 16) = v50;
      v39 = sub_226FDD0E4;
    }

    *v38 = v39;
    v38[1] = result;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v33 = v44;
        v32 = v45;
        v34 = *(v45 + 56);
        v35 = v44;
        v36 = 1;
        goto LABEL_12;
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v43 = a3;
  v48 = sub_2276624A0();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v45 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v42 - v12;
  v13 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v46 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = __clz(__rbit64(v17)) | (v21 << 6);
      v23 = *(v14 + 48);
      v24 = sub_2276639B0();
      (*(*(v24 - 8) + 16))(v10, v23 + *(*(v24 - 8) + 72) * v22, v24);
      v25 = (*(v14 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = &v10[*(v50 + 48)];
      *v29 = v26;
      *(v29 + 1) = v27;
      *(v29 + 2) = v28;
      sub_226FDAAF8(v10, v7);

      v30 = v28;
      v31 = v47;
      sub_2276639A0();
      LOBYTE(v27) = sub_227662420();
      (*v46)(v31, v48);
      if (v27)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_226E97D1C(v7, &qword_27D7B9640, &qword_227674878);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v33 = v44;
    sub_226FDAAF8(v7, v44);
    v32 = v45;
    v34 = *(v45 + 56);
    v35 = v33;
    v36 = 0;
LABEL_12:
    v37 = v50;
    v34(v35, v36, 1, v50);

    if ((*(v32 + 48))(v33, 1, v37) == 1)
    {
      sub_226E97D1C(v33, &qword_27D7B9638, &qword_227674870);
      v38 = sub_2276639B0();
      return (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
    }

    else
    {

      v39 = sub_2276639B0();
      v40 = *(v39 - 8);
      v41 = v43;
      (*(v40 + 32))(v43, v33, v39);
      return (*(v40 + 56))(v41, 0, 1, v39);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v33 = v44;
        v32 = v45;
        v34 = *(v45 + 56);
        v35 = v44;
        v36 = 1;
        goto LABEL_12;
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD9600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v62 = a2;
  v55 = a3;
  v60 = sub_2276624A0();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = v51 - v7;
  *&v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v51 - v13;
  MEMORY[0x28223BE20](v15);
  v52 = v51 - v16;
  v17 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v54 = a1;
  v51[1] = v17;
  v18 = *(a1 + v17);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v58 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v24 = 0;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_8:
      v26 = __clz(__rbit64(v21)) | (v25 << 6);
      v27 = *(v18 + 48);
      v28 = sub_2276639B0();
      (*(*(v28 - 8) + 16))(v14, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = (*(v18 + 56) + 24 * v26);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = &v14[*(v61 + 48)];
      *v33 = v30;
      *(v33 + 1) = v31;
      *(v33 + 2) = v32;
      sub_226FDAAF8(v14, v11);

      v34 = v32;
      v35 = v59;
      sub_2276639A0();
      LOBYTE(v31) = sub_227662420();
      (*v58)(v35, v60);
      if (v31)
      {
        break;
      }

      v21 &= v21 - 1;
      result = sub_226E97D1C(v11, &qword_27D7B9640, &qword_227674878);
      v24 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v36 = v57;
    sub_226FDAAF8(v11, v57);
    v37 = v56;
    v38 = *(v56 + 56);
    v39 = v36;
    v40 = 0;
LABEL_12:
    v41 = v61;
    v38(v39, v40, 1, v61);

    if ((*(v37 + 48))(v36, 1, v41) == 1)
    {
      result = sub_226E97D1C(v36, &qword_27D7B9638, &qword_227674870);
      v42 = v55;
      *v55 = 0;
      v42[1] = 0;
    }

    else
    {
      v43 = v52;
      sub_226FDAAF8(v36, v52);
      v44 = v53;
      sub_226E93170(v43, v53, &qword_27D7B9640, &qword_227674878);
      v45 = v44 + *(v41 + 48);

      swift_beginAccess();
      sub_227363430(0, 0, 0, v44);
      swift_endAccess();
      sub_226FDAAF8(v43, v44);
      v46 = v44 + *(v41 + 48);
      v47 = *(v46 + 16);
      v61 = *v46;

      v48 = swift_allocObject();
      *(v48 + 16) = v61;
      v49 = v55;
      *v55 = sub_226FDAB68;
      v49[1] = v48;
      v50 = sub_2276639B0();
      return (*(*(v50 - 8) + 8))(v44, v50);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        v37 = v56;
        v36 = v57;
        v38 = *(v56 + 56);
        v39 = v57;
        v40 = 1;
        goto LABEL_12;
      }

      v21 = *(v18 + 64 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD9B70(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v44);
  v45 = (&v42 - v3);
  v47 = sub_2276624A0();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = sub_22766B390();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v48 = v1;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v16 = v50[0];
  if (v50[0])
  {
    v17 = v50[1];
    sub_22766A690();
    (*(v4 + 16))(v9, a1, v47);
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v17;
      v22 = v21;
      v50[0] = v21;
      *v20 = 141558274;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2080;
      v23 = sub_227662390();
      v42 = v10;
      v25 = v24;
      (*(v4 + 8))(v9, v47);
      v26 = sub_226E97AE8(v23, v25, v50);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v18, v19, "[Key Loader] Cancelling request for URL: %{mask.hash}s", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v27 = v22;
      v17 = v43;
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      (*(v46 + 8))(v15, v42);
    }

    else
    {

      (*(v4 + 8))(v9, v47);
      (*(v46 + 8))(v15, v10);
    }

    v38 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D4FD10], v38);
    v41 = v45;
    *v45 = v39;
    swift_storeEnumTagMultiPayload();
    v16(v41);
    sub_226EA9E3C(v16, v17);
    return sub_226E97D1C(v41, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_22766A690();
    (*(v4 + 16))(v6, a1, v47);
    v28 = sub_22766B380();
    v29 = sub_22766C890();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v10;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50[0] = v32;
      *v31 = 141558274;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2080;
      v33 = sub_227662390();
      v35 = v34;
      (*(v4 + 8))(v6, v47);
      v36 = sub_226E97AE8(v33, v35, v50);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_226E8E000, v28, v29, "[Key Loader] No load to cancel for key URL %{mask.hash}s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);

      return (*(v46 + 8))(v12, v30);
    }

    else
    {

      (*(v4 + 8))(v6, v47);
      return (*(v46 + 8))(v12, v10);
    }
  }
}

uint64_t sub_226FDA1A0()
{
  v0 = sub_2276624A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  sub_2276639A0();
  sub_226FD9B70(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_226FDA364@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227665490();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226FDA3D0()
{
  v0 = sub_227663190();
  sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D4FCD8], v0);
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for AssetLoaderResponse(0);

  return sub_227669280();
}

uint64_t sub_226FDA558(uint64_t a1, void *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  if (*(a1 + 8) == 1)
  {
    v11 = *a1;
    sub_22766A690();
    v12 = a2;
    sub_226F04AAC(v11, 1);
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();

    sub_226EB4548(v11, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v4;
      v17 = v16;
      v35 = swift_slowAlloc();
      v39 = v35;
      *v15 = 138543618;
      *(v15 + 4) = v12;
      *v17 = v12;
      *(v15 + 12) = 2082;
      swift_getErrorValue();
      v18 = v37;
      v19 = v38;
      v20 = v12;
      v21 = MEMORY[0x22AA995D0](v18, v19);
      v23 = sub_226E97AE8(v21, v22, &v39);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v13, v14, "[Key Loader] Ended load for key %{public}@ with error %{public}s", v15, 0x16u);
      sub_226E97D1C(v17, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v17, -1, -1);
      v24 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      return (*(v5 + 8))(v10, v36);
    }

    v32 = *(v5 + 8);
    v33 = v10;
  }

  else
  {
    sub_22766A690();
    v26 = a2;
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_226E8E000, v27, v28, "[Key Loader] Ended load for key %{public}@ successfully", v29, 0xCu);
      sub_226E97D1C(v30, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    v32 = *(v5 + 8);
    v33 = v7;
  }

  return v32(v33, v4);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_226FDAA44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_226FDAA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226FDAAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FDAB70(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_226FD398C(a1, a2, v6, v7);
}

unint64_t sub_226FDAC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_2274E844C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_226F04970(v44, v42);
  v14 = *a5;
  result = sub_226E92000(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_226FE4910(v20, a4 & 1);
    result = sub_226E92000(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_226FF1414();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_226F04970(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_226F04970(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_2274E844C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_226F04970(v44, v42);
        v32 = *a5;
        result = sub_226E92000(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_226FE4910(v36, 1);
          result = sub_226E92000(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_226F04970(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_226F04970(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_2274E844C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_226EBB21C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_226FDAF24(void *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v60);
  v61 = (&v56 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v56 - v4;
  v65 = sub_2276624A0();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  sub_22766A690();
  v14 = a1;
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_226E8E000, v15, v16, "[Key Loader] initial content key request %{public}@. Requesting persistable content key.", v17, 0xCu);
    sub_226E97D1C(v18, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  v20 = *(v8 + 8);
  v20(v13, v7);
  *&v76 = 0;
  if (![v14 respondByRequestingPersistableContentKeyRequestAndReturnError_])
  {
    v58 = v7;
    v59 = v5;
    v63 = v76;
    v21 = v76;
    v22 = sub_2276622C0();

    swift_willThrow();
    sub_22766A690();
    v23 = v14;
    v24 = v22;
    v25 = sub_22766B380();
    v26 = sub_22766C890();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v63 = v22;
      v28 = v27;
      v29 = swift_slowAlloc();
      v56 = v29;
      v57 = swift_slowAlloc();
      *&v76 = v57;
      *v28 = 138543618;
      *(v28 + 4) = v23;
      *v29 = v23;
      *(v28 + 12) = 2082;
      swift_getErrorValue();
      v30 = v66;
      v31 = v67;
      v32 = v23;
      v33 = MEMORY[0x22AA995D0](v30, v31);
      v35 = sub_226E97AE8(v33, v34, &v76);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_226E8E000, v25, v26, "[Key Loader] Error requesting persistable key for request: %{public}@ error: %{public}s", v28, 0x16u);
      v36 = v56;
      sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v36, -1, -1);
      v37 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v37, -1, -1);
      v38 = v28;
      v22 = v63;
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    v20(v10, v58);
    v39 = v23;
    v40 = [v23 identifier];
    v41 = v59;
    if (v40)
    {
      sub_22766CC20();
      swift_unknownObjectRelease();
      v42 = v71;
      v43 = __swift_project_boxed_opaque_existential_0(v70, v71);
      v69 = v42;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v68);
      (*(*(v42 - 8) + 16))(boxed_opaque_existential_0, v43, v42);
      sub_226F04970(&v68, &v72);
      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v74 = v72;
    v75 = v73;
    v45 = *(&v73 + 1);
    if (*(&v73 + 1))
    {
      v46 = __swift_project_boxed_opaque_existential_0(&v74, *(&v75 + 1));
      *(&v77 + 1) = v45;
      v47 = __swift_allocate_boxed_opaque_existential_0(&v76);
      (*(*(v45 - 8) + 16))(v47, v46, v45);
      __swift_destroy_boxed_opaque_existential_0(&v74);
      if (*(&v77 + 1))
      {
        v48 = v64;
        v49 = v65;
        v50 = swift_dynamicCast();
        (*(v41 + 56))(v48, v50 ^ 1u, 1, v49);
        if ((*(v41 + 48))(v48, 1, v49) != 1)
        {
          v51 = v62;
          (*(v41 + 32))(v62, v48, v65);
          v52 = sub_2276622B0();
          [v39 processContentKeyResponseError_];

          v53 = v61;
          *v61 = v22;
          swift_storeEnumTagMultiPayload();
          v54 = v22;
          sub_226FD85F4(v51, v53);

          sub_226E97D1C(v53, &qword_27D7B9628, &unk_227674860);
          return (*(v41 + 8))(v62, v65);
        }

        return sub_226E97D1C(v48, &unk_27D7BB570, &unk_227670FC0);
      }
    }

    else
    {

      sub_226E97D1C(&v74, &unk_27D7B9650, &unk_227674890);
      v76 = 0u;
      v77 = 0u;
    }

    v48 = v64;
    sub_226E97D1C(&v76, &unk_27D7BC990, &qword_227670A30);
    (*(v41 + 56))(v48, 1, 1, v65);
    return sub_226E97D1C(v48, &unk_27D7BB570, &unk_227670FC0);
  }

  return MEMORY[0x2821F9840]();
}

uint64_t sub_226FDB7C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - v6;
  v53 = sub_22766B390();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v47 - v17;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v19 = v59;
    v20 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v57 = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v20, v19);
    sub_226F04970(&v56, &v60);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  v22 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_0(&v62, *(&v63 + 1));
    *(&v65 + 1) = v22;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v64);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    __swift_destroy_boxed_opaque_existential_0(&v62);
    v25 = v55;
    if (*(&v65 + 1))
    {
      v26 = sub_2276624A0();
      v27 = swift_dynamicCast();
      (*(*(v26 - 8) + 56))(v18, v27 ^ 1u, 1, v26);
      goto LABEL_9;
    }
  }

  else
  {
    sub_226E97D1C(&v62, &unk_27D7B9650, &unk_227674890);
    v64 = 0u;
    v65 = 0u;
    v25 = v55;
  }

  sub_226E97D1C(&v64, &unk_27D7BC990, &qword_227670A30);
  v28 = sub_2276624A0();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
LABEL_9:
  sub_22766A690();
  v54 = v18;
  sub_226E93170(v18, v14, &unk_27D7BB570, &unk_227670FC0);
  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v47[1] = v2;
    v48 = a1;
    v49 = v7;
    v50 = v5;
    v51 = v4;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v62 = v32;
    *v31 = 141558274;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2080;
    sub_226E93170(v14, v11, &unk_27D7BB570, &unk_227670FC0);
    v33 = sub_2276624A0();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v11, 1, v33) == 1)
    {
      sub_226E97D1C(v11, &unk_27D7BB570, &unk_227670FC0);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = sub_227662390();
      v36 = v37;
      (*(v34 + 8))(v11, v33);
    }

    v7 = v49;
    *&v64 = v35;
    *(&v64 + 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v38 = sub_22766CB80();
    v40 = v39;
    sub_226E97D1C(v14, &unk_27D7BB570, &unk_227670FC0);

    v41 = sub_226E97AE8(v38, v40, &v62);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_226E8E000, v29, v30, "[Key Loader] AVContentKeySession didProvide persistable request for URL: %{mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v52 + 8))(v55, v53);
    v4 = v51;
    v5 = v50;
    a1 = v48;
  }

  else
  {

    sub_226E97D1C(v14, &unk_27D7BB570, &unk_227670FC0);
    (*(v52 + 8))(v25, v53);
  }

  sub_226FD61BC(a1, v7);
  v42 = swift_allocObject();
  *(v42 + 16) = a1;
  v43 = a1;
  v44 = sub_227669290();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_226FDC648;
  *(v45 + 24) = v42;

  v44(sub_226E9F7B0, v45);

  (*(v5 + 8))(v7, v4);
  return sub_226E97D1C(v54, &unk_27D7BB570, &unk_227670FC0);
}

uint64_t sub_226FDBF40(void *a1, void *a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v30);
  v4 = (&v29 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - v6;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "[Key Loader] contentKeyRequest keyRequest: AVContentKeyRequest, didFailWithError", v16, 2u);
    a2 = v29;
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if ([v32 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v18 = v37;
    v19 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v35 = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
    sub_226F04970(&v34, &v38);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  v21 = *(&v39 + 1);
  if (!*(&v39 + 1))
  {
    sub_226E97D1C(&v40, &unk_27D7B9650, &unk_227674890);
    v42 = 0u;
    v43 = 0u;
    goto LABEL_11;
  }

  v22 = __swift_project_boxed_opaque_existential_0(&v40, *(&v41 + 1));
  *(&v43 + 1) = v21;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v42);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  __swift_destroy_boxed_opaque_existential_0(&v40);
  if (!*(&v43 + 1))
  {
LABEL_11:
    sub_226E97D1C(&v42, &unk_27D7BC990, &qword_227670A30);
    v24 = v33;
    (*(v8 + 56))(v33, 1, 1, v7);
    return sub_226E97D1C(v24, &unk_27D7BB570, &unk_227670FC0);
  }

  v24 = v33;
  v25 = swift_dynamicCast();
  (*(v8 + 56))(v24, v25 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v24, 1, v7) != 1)
  {
    v26 = v31;
    (*(v8 + 32))(v31, v24, v7);
    *v4 = a2;
    swift_storeEnumTagMultiPayload();
    v27 = a2;
    sub_226FD85F4(v26, v4);
    sub_226E97D1C(v4, &qword_27D7B9628, &unk_227674860);
    return (*(v8 + 8))(v31, v7);
  }

  return sub_226E97D1C(v24, &unk_27D7BB570, &unk_227670FC0);
}

uint64_t sub_226FDC494(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v6 = a1;
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_22766C000();
    v13 = sub_226E97AE8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Key Loader] shouldRetry keyRequest: AVContentKeyRequest, retryReason: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

uint64_t sub_226FDC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226FDC6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2276668A0();
  v5 = *(v2 + 16);

  return sub_226FD81E0(a1, v5, a2);
}

uint64_t sub_226FDC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_226FD8270(a1, v6, v7, v8, a2);
}

uint64_t objectdestroy_10Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_41Tm_0()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

int *sub_226FDCB08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2276631F0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  return sub_226FD3CAC(a1, (v2 + v6), *(v2 + v7), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_226FDCC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226FDCC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = (v2 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v2 + v9);
  v15 = (v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_226FD21F4(a1, v2 + v6, v10, v12, v13, v14, v16, v17, a2);
}

uint64_t sub_226FDCD8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_226FDCE54(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227666130() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_226FD2490(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_226FDCF94(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_227666130() - 8);
  return sub_226FD2A70(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + v9 + 8), v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80)));
}

uint64_t sub_226FDD0E8(uint64_t a1)
{
  result = sub_22766A100();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226FDD19C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_22766A070();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

void *sub_226FDD228(uint64_t (*a1)(char *, char *, uint64_t))
{
  v3 = *v1;
  result = sub_226FDDD28(a1);
  if (!v2)
  {
    v5 = result;
    v16 = 0;
    v6 = v1[2];
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    sub_226FDE4B0(v6, v7, v8);
    if (v10)
    {
      v11 = sub_22766C2B0();
    }

    else
    {
      v11 = 0;
    }

    [v5 setRelationshipKeyPathsForPrefetching_];

    v17 = sub_22766BE60();
    MEMORY[0x28223BE20](v17);
    v15[2] = v7;
    v15[3] = v8;
    v15[4] = v9;
    v12 = sub_22766C730();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = v16;
    sub_22711B820(&v17, v5, sub_226FDEBE4, v15, v6, v12, AssociatedTypeWitness, &v18);

    if (!v14)
    {
      return v18;
    }
  }

  return result;
}

void sub_226FDD3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_2274BFFCC(a2, a3, a4, a5);
  if (!v5)
  {
    sub_22766C730();
    swift_getWitnessTable();
    sub_22766C720();
  }
}

uint64_t sub_226FDD488(uint64_t (*a1)(char *, char *, uint64_t))
{
  v31 = *v1;
  v4 = v31;
  v32 = v2;
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  v10 = qword_2813B2078;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v10, v5);
  v11 = v4[10];
  v12 = v4[11];
  v13 = sub_226F5B64C(v8, v11, *(v1 + 32), v9, v11, v12);
  (*(v6 + 8))(v8, v5);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = sub_22766C370();
      if (sub_22766C3B0())
      {
        v1 = sub_226FDE808(v14, v11, v31[12]);
      }

      else
      {

        return MEMORY[0x277D84FA0];
      }
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v15 = v32;
    v16 = sub_226FDDD28(a1);
    if (!v15)
    {
      v17 = v16;
      v18 = *(v1 + 24);
      v19 = v31[12];
      v31 = *(v1 + 16);
      v32 = v18;
      sub_226FDE4B0(v31, v11, v12);
      if (v20)
      {
        v21 = sub_22766C2B0();
      }

      else
      {
        v21 = 0;
      }

      [v17 setRelationshipKeyPathsForPrefetching_];

      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      sub_226FDE780();
      v23 = sub_22766BE50();
      v30[1] = v30;
      v33 = v23;
      MEMORY[0x28223BE20](v23);
      v30[-4] = v11;
      v30[-3] = v12;
      v30[-2] = v19;
      v24 = sub_22766BEF0();
      v30[0] = v19;
      v25 = v24;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v27 = v32;
      sub_22711B820(&v33, v17, sub_226FDE7E8, &v30[-6], v31, v25, AssociatedTypeWitness, &v34);

      v28 = v34;
      sub_22766BED0();

      swift_getWitnessTable();
      v29 = sub_22766C740();
      sub_226EDAB78(v29, v27);

      v34 = v28;
      sub_22766BEE0();
      swift_getWitnessTable();
      v1 = sub_22766C740();
    }
  }

  return v1;
}

uint64_t sub_226FDD8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_22766C3D0();
  swift_getWitnessTable();
  return sub_22766C270();
}

void sub_226FDD998(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766CB90();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v14 - v10;
  v12 = *a1;
  v13 = [*a1 objectID];
  (*(a4 + 48))(v12, a3, a4);
  if (v4)
  {
  }

  else
  {
    (*(*(a3 - 8) + 56))(v11, 0, 1, a3);
    v14[1] = v13;
    sub_226E99364(255, &qword_281398AE0, 0x277CBE448);
    sub_226FDE780();
    sub_22766BEF0();
    sub_22766BF30();
  }
}

void sub_226FDDB10()
{
  v2 = *v0;
  v3 = sub_22766A100();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v8 = qword_2813B2078;
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v8, v3);
  v9 = sub_226F5B64C(v6, *(v2 + 80), *(v0 + 32), v7, *(v2 + 80), *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (v9 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v10 = sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v11 = sub_226FDDDA0(0, v10);
    if (!v1)
    {
      v12 = v11;
      [v11 setResultType_];
      v13 = sub_22766C9E0();
      v14 = v0[3];
      v15 = sub_226EDAB24(v13);

      sub_226EDAB78(v15, v14);
    }
  }
}

void *sub_226FDDDA0(uint64_t (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v48 = a1;
  v5 = *v2;
  v6 = sub_22766A100();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_226FDE274();
  if (!v3)
  {
    v40 = v11;
    v41 = v8;
    v42 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
    (*(v5[11] + 24))(v47);
    v18 = PersistenceEntityName.rawValue.getter();
    v20 = v19;
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v43 = sub_226FDE37C(v18, v20);
    [v43 setFetchBatchSize_];
    v22 = qword_2813B2078;
    v46 = qword_2813B2078;
    swift_beginAccess();
    v23 = v45;
    v48 = *(v45 + 2);
    v44 = v45 + 16;
    v48(v17, &v4[v22], v6);
    sub_22766A090();
    v24 = *(v23 + 1);
    v45 = v17;
    v24(v17, v6);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v25 = sub_22766C2B0();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v43 setPredicate_];
    v48(v14, &v4[v46], v6);
    v27 = sub_22766A0C0();
    LOBYTE(v25) = v28;
    v24(v14, v6);
    if ((v25 & 1) == 0)
    {
      [v43 setFetchLimit_];
    }

    v29 = v40;
    v48(v40, &v4[v46], v6);
    v30 = sub_22766A0E0();
    v32 = v31;
    v24(v29, v6);
    v5 = v43;
    v33 = v41;
    if ((v32 & 1) == 0)
    {
      [v43 setFetchOffset_];
    }

    v48(v33, &v4[v46], v6);
    v34 = sub_22766A0B0();
    v24(v33, v6);
    v35 = v45;
    if (v34 >> 62)
    {
      v38 = sub_22766CD20();

      if (v38)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v36)
      {
LABEL_8:
        v48(v35, &v4[v46], v6);
        sub_22766A0B0();
        v24(v35, v6);
        sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
        v37 = sub_22766C2B0();

LABEL_11:
        [v5 setSortDescriptors_];

        return v5;
      }
    }

    v37 = 0;
    goto LABEL_11;
  }

  return v5;
}

uint64_t sub_226FDE274()
{
  (*(*(*v0 + 88) + 32))();
  result = sub_227669C10();
  if (result)
  {
    v2 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D51010], v2);
    return swift_willThrow();
  }

  return result;
}

id sub_226FDE37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766BFD0();

  v4 = [v2 initWithEntityName_];

  return v4;
}

uint64_t sub_226FDE3D4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_22766A080();
  v6 = v5;
  v7 = a1;
  MEMORY[0x22AA985C0]();
  if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v4(v9, 0);
  swift_endAccess();
  return v2;
}

void sub_226FDE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2271259C8(a1, a2, a3);
  v4 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v4 + 56) + 8 * v13);

    v18 = v17;
    v19 = [v18 userInfo];
    if (!v19)
    {

      v30 = 0u;
      v31 = 0u;
      goto LABEL_5;
    }

    v20 = v19;
    v21 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v21 + 16) || (v22 = sub_226E9BF6C(v29), (v23 & 1) == 0))
    {

      sub_226E9B62C(v29);
      v30 = 0u;
      v31 = 0u;
      goto LABEL_23;
    }

    sub_226E97CC0(*(v21 + 56) + 32 * v22, &v30);
    sub_226E9B62C(v29);

    if (*(&v31 + 1))
    {
      if (swift_dynamicCast())
      {
        v24 = sub_226EB5278(v29[0], v29[1]);

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_226EB3F78(0, *(v28 + 2) + 1, 1, v28);
        }

        v26 = *(v28 + 2);
        v25 = *(v28 + 3);
        if (v26 >= v25 >> 1)
        {
          v28 = sub_226EB3F78((v25 > 1), v26 + 1, 1, v28);
        }

        *(v28 + 2) = v26 + 1;
        v27 = &v28[16 * v26];
        *(v27 + 4) = v15;
        *(v27 + 5) = v16;
      }

      else
      {

LABEL_25:
      }
    }

    else
    {
LABEL_23:

LABEL_5:
      sub_226EBC888(&v30);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_226FDE780()
{
  result = qword_281398AD0;
  if (!qword_281398AD0)
  {
    sub_226E99364(255, &qword_281398AE0, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398AD0);
  }

  return result;
}

uint64_t sub_226FDE808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (sub_22766C3B0())
  {
    sub_22766CDF0();
    v15 = sub_22766CDE0();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_22766C3B0();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_22766C390();
    sub_22766C350();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22766CE70();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_22766BF50();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_22766BFB0();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_226FDEC04(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v23 = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
    sub_22766C700();
    v5 = v22[1];
    v6 = v22[2];
    v7 = v22[3];
    v8 = v22[4];
    v9 = v22[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  while (v5 < 0)
  {
    v18 = sub_22766CD50();
    if (!v18)
    {
      goto LABEL_23;
    }

    v21 = v18;
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    swift_dynamicCast();
    v17 = v22[0];
    v15 = v8;
    v16 = v9;
    if (!v22[0])
    {
LABEL_24:
      v5 = v20;
LABEL_23:
      sub_226EBB21C(v5);
      return;
    }

LABEL_19:
    v22[0] = v17;
    a1(&v21, v22);
    if (v4)
    {

      sub_226EBB21C(v20);

      return;
    }

    if (v21)
    {
      MEMORY[0x22AA985C0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
    }

    v8 = v15;
    v9 = v16;
    v5 = v20;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_226FDEED8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v39 = sub_227664530();
  MEMORY[0x28223BE20](v39 - 8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v30 - v12;
  v31 = v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v34 = (v11 + 32);
  v35 = (v11 + 48);

  v18 = 0;
  v41 = MEMORY[0x277D84F90];
  v32 = a3;
  if (v16)
  {
LABEL_10:
    while (1)
    {
      v20 = (*(a3 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v21 = v20[1];
      v40[0] = *v20;
      v40[1] = v21;

      v37(v40);
      if (v4)
      {
        break;
      }

      v16 &= v16 - 1;

      v22 = v39;
      if ((*v35)(v8, 1, v39) == 1)
      {
        sub_226E97D1C(v8, &qword_27D7B8E60, &unk_2276724B0);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v33 = 0;
        v23 = v8;
        v24 = *v34;
        v25 = v30;
        v26 = v23;
        (*v34)(v30);
        (v24)(v36, v25, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_2273A5338(0, v41[2] + 1, 1, v41);
        }

        v28 = v41[2];
        v27 = v41[3];
        v4 = v33;
        if (v28 >= v27 >> 1)
        {
          v41 = sub_2273A5338((v27 > 1), v28 + 1, 1, v41);
        }

        v29 = v41;
        v41[2] = v28 + 1;
        (v24)(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v36, v39);
        a3 = v32;
        v8 = v26;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

char *sub_226FDF254(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a1;
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = *v6;
    (v5)(&v15, &v18, a2);
    if (v3)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v9 = v15;
      v10 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2273A5360(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_2273A5360((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v8 = &v7[16 * v12];
      *(v8 + 4) = v9;
      v8[40] = v10 & 1;
      v5 = a1;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void sub_226FDF394(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
    sub_226ECCEB4(qword_281398A40, &qword_281398A50, 0x277CE8CC0);
    sub_22766C700();
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v27 = v5;
  v28 = MEMORY[0x277D84F90];
  while (v5 < 0)
  {
    v19 = sub_22766CD50();
    if (!v19)
    {
      goto LABEL_25;
    }

    v36 = v19;
    sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
    swift_dynamicCast();
    v18 = *&v29[0];
    v16 = v8;
    v17 = v9;
    if (!*&v29[0])
    {
LABEL_26:
      v5 = v27;
LABEL_25:
      sub_226EBB21C(v5);
      return;
    }

LABEL_19:
    v36 = v18;
    a1(v29, &v36);
    if (v4)
    {

      sub_226EBB21C(v27);

      return;
    }

    v20 = v30;
    if (v30 != 255)
    {
      v24 = v29[1];
      v25 = v29[0];
      v21 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2273A664C(0, *(v28 + 2) + 1, 1, v28);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2273A664C((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v28 = v21;
      v13 = &v21[40 * v23];
      *(v13 + 2) = v25;
      *(v13 + 3) = v24;
      v13[64] = v20 & 1;
    }

    v8 = v16;
    v9 = v17;
    v5 = v27;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_226FDF694(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9970, &qword_227674DA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v49 = sub_2276688F0();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v34 - v11;
  v12 = sub_227665F20();
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v43 = (v8 + 48);
  v38 = v8;
  v39 = (v8 + 32);
  v50 = a3;
  v22 = v13;

  v23 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v50 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v43)(v7, 1, v49) == 1)
    {
      sub_226E97D1C(v7, &qword_27D7B9970, &qword_227674DA8);
    }

    else
    {
      v37 = v22;
      v25 = *v39;
      (*v39)(v40, v7, v49);
      v25(v41, v40, v49);
      v26 = v25;
      v27 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2273A69C4(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v42 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v35 = v29;
        v36 = v29 + 1;
        v33 = sub_2273A69C4((v28 > 1), v29 + 1, 1, v42);
        v29 = v35;
        v30 = v36;
        v42 = v33;
      }

      v31 = v41;
      v32 = v42;
      v42[2] = v30;
      v26(&v32[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v29], v31, v49);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_226FDFAE0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99E8, &qword_227674E10);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v36 - v7;
  v8 = sub_227669480();
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  v20 = (v17 + 63) >> 6;
  v48 = (v13 + 8);
  v49 = v13;
  v43 = (v13 + 48);
  v44 = v13 + 16;
  v38 = (v13 + 32);
  v50 = a3;

  v21 = 0;
  v41 = MEMORY[0x277D84F90];
LABEL_4:
  v22 = v21;
  if (!v19)
  {
    goto LABEL_6;
  }

  do
  {
    v21 = v22;
LABEL_9:
    v23 = *(v50 + 48);
    v42 = *(v49 + 72);
    (*(v49 + 16))(v15, v23 + v42 * (__clz(__rbit64(v19)) | (v21 << 6)), v8);
    v24 = v46;
    v47(v15);
    if (v4)
    {
      (*v48)(v15, v8);

LABEL_19:

      return;
    }

    v25 = v20;
    v26 = v16;
    v19 &= v19 - 1;
    (*v48)();
    if ((*v43)(v24, 1, v8) != 1)
    {
      v27 = v24;
      v28 = *v38;
      (*v38)(v39, v27, v8);
      v28(v40, v39, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2273A6AD0(0, *(v41 + 2) + 1, 1, v41);
      }

      v4 = 0;
      v30 = *(v41 + 2);
      v29 = *(v41 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v34 = v30 + 1;
        v37 = *(v41 + 2);
        v35 = sub_2273A6AD0((v29 > 1), v30 + 1, 1, v41);
        v31 = v34;
        v30 = v37;
        v41 = v35;
      }

      v16 = v26;
      v32 = v40;
      v33 = v41;
      *(v41 + 2) = v31;
      v28(&v33[((*(v49 + 80) + 32) & ~*(v49 + 80)) + v30 * v42], v32, v8);
      v20 = v25;
      goto LABEL_4;
    }

    sub_226E97D1C(v24, &qword_27D7B99E8, &qword_227674E10);
    v22 = v21;
    v4 = 0;
    v20 = v25;
  }

  while (v19);
LABEL_6:
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      goto LABEL_19;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

char *sub_226FDFF04(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_2276639B0();
  MEMORY[0x28223BE20](v9);
  v29 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v31 = *v15;

    (a1)(&v31);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_226E97D1C(v8, &qword_27D7B9680, &unk_227671520);
    }

    else
    {
      v17 = v9;
      v18 = v26;
      v19 = *v27;
      (*v27)(v26, v8, v17);
      v19(v29, v18, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2273A4EA4(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_2273A4EA4((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v19(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21], v29, v17);
      v9 = v17;
      a1 = v25;
    }

    ++v15;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

void sub_226FE01F8(void (*a1)(__n128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v31 = sub_227666FF0();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v28 = v5 + 16;
  v30 = (v5 + 8);
  v32 = a3;

  v13 = 0;
  v27 = MEMORY[0x277D84F90];
  while (v11)
  {
    v14 = v31;
LABEL_11:
    (*(v5 + 16))(v7, *(v32 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v29(&v33, v7);
    if (v3)
    {
      (*v30)(v7, v14);

LABEL_19:

      return;
    }

    v11 &= v11 - 1;
    (*v30)(v7, v14);
    v16 = v34;
    if (v34 != 255)
    {
      v26 = v33;
      v17 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2273A7134(0, v27[2] + 1, 1, v27);
      }

      v19 = v27[2];
      v18 = v27[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v27[2];
        v25 = v19 + 1;
        v23 = sub_2273A7134((v18 > 1), v19 + 1, 1, v27);
        v19 = v24;
        v20 = v25;
        v27 = v23;
      }

      v21 = v27;
      v27[2] = v20;
      v22 = &v21[4 * v19];
      *(v22 + 2) = v26;
      *(v22 + 48) = v16 & 1;
      v22[7] = v17;
    }
  }

  v14 = v31;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226FE04B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v3 = 0x73656E6F7ALL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x56656C69666F7270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE006E6F69737265;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (*a2 != 1)
  {
    v7 = 0x73656E6F7ALL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x56656C69666F7270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE006E6F69737265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

uint64_t sub_226FE05BC()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FE066C(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_226FE0708(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_226FE07B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226FF658C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_226FE07E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F69737265;
  v4 = 0xEA00000000007265;
  v5 = 0x696669746E656469;
  if (v2 != 1)
  {
    v5 = 0x73656E6F7ALL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x56656C69666F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_226FE0850()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x56656C69666F7270;
  }
}

unint64_t sub_226FE08B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_226FF658C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_226FE08F8(uint64_t a1)
{
  v2 = sub_226FE0CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226FE0934(uint64_t a1)
{
  v2 = sub_226FE0CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RestrictionProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9700, &qword_2276749C8);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9708, &qword_2276749D0);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_226FE0CA8();
  sub_22766D460();
  if (!v2)
  {
    v10 = v7;
    v11 = v23;
    v26 = 0;
    v20 = sub_22766D0A0();
    v25 = 1;
    v18 = sub_22766D080();
    v19 = v13;
    v24 = 2;
    sub_226FE0CFC();
    sub_22766D050();
    v17 = v4;
    v14 = sub_22766D0C0();
    v16 = &v16;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = v6;
    v15 = sub_226FDF254(sub_226FE1170, (&v16 - 4), v14);

    sub_226F436A0(v15);

    sub_227665660();
    (*(v10 + 8))(v9, v11);
    (*(v21 + 8))(v6, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_226FE0CA8()
{
  result = qword_28139B828;
  if (!qword_28139B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B828);
  }

  return result;
}

unint64_t sub_226FE0CFC()
{
  result = qword_28139B760;
  if (!qword_28139B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B760);
  }

  return result;
}

void sub_226FE0D50(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22766B390();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  LOBYTE(v34[0]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9700, &qword_2276749C8);
  sub_22766D070();
  if (!v2)
  {
    sub_226E91B50(v35, v34);
    v27 = sub_226FF6B90(v34);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0(v35);
    *a2 = v27;
    *(a2 + 8) = v29 & 1;
    *(a2 + 9) = 0;
    return;
  }

  v36 = a2;
  v35[0] = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D4E2D8])
    {

      v13 = v36;
      *v36 = 0;
      *(v13 + 4) = 256;

      return;
    }

    (*(v9 + 8))(v11, v8);
  }

  v30 = 0;

  sub_22766A730();
  v14 = v2;
  v15 = sub_22766B380();
  v16 = sub_22766C890();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35[0] = v18;
    *v17 = 136315394;
    LOBYTE(v34[0]) = v31;
    sub_226FF66F0();
    v19 = sub_22766D140();
    v21 = sub_226E97AE8(v19, v20, v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v34[0] = v2;
    v22 = v2;
    v23 = sub_22766C060();
    v25 = sub_226E97AE8(v23, v24, v35);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v15, v16, "Failed to decode RestrictionZoneKind %s: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  else
  {
  }

  (*(v32 + 8))(v7, v33);
  v26 = v36;
  *v36 = 0;
  *(v26 + 4) = 256;
}

uint64_t RestrictionProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9710, &qword_2276749D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = sub_227665640();
  if (v8)
  {
    v48 = v7;
    v49 = v4;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_226FE0CA8();
    sub_22766D480();
    sub_227665670();
    LOBYTE(v50[0]) = 0;
    sub_22766D110();
    if (v1)
    {
      (*(v49 + 8))(v6, v3);
    }

    else
    {
      LOBYTE(v50[0]) = 1;
      sub_22766D0F0();
      v43 = 0;

      LOBYTE(v51) = 2;
      sub_22766D0E0();
      v12 = sub_227665650();
      v13 = v12 + 56;
      v14 = 1 << *(v12 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v12 + 56);
      v17 = (v14 + 63) >> 6;
      v47 = v12;

      v18 = 0;
      v19 = MEMORY[0x277D84F98];
      v44 = v3;
      v45 = v13;
      v46 = v6;
      while (v16)
      {
        v22 = v18;
LABEL_17:
        v24 = *(v47 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v16))));
        v48 = *v24;
        v25 = *(v24 + 8);
        v26 = sub_227665A80();
        v28 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v19;
        v30 = sub_226E92000(v26, v28);
        v32 = v19[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_28;
        }

        v36 = v31;
        if (v19[3] >= v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v30;
            sub_226FF185C();
            v30 = v42;
          }
        }

        else
        {
          sub_226FE5520(v35, isUniquelyReferenced_nonNull_native);
          v30 = sub_226E92000(v26, v28);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_30;
          }
        }

        v16 &= v16 - 1;
        if (v36)
        {
          v20 = v30;

          v19 = v51;
          v21 = v51[7] + 16 * v20;
          *v21 = v48;
          *(v21 + 8) = v25;
        }

        else
        {
          v19 = v51;
          v51[(v30 >> 6) + 8] |= 1 << v30;
          v38 = (v19[6] + 16 * v30);
          *v38 = v26;
          v38[1] = v28;
          v39 = v19[7] + 16 * v30;
          *v39 = v48;
          *(v39 + 8) = v25;
          v40 = v19[2];
          v34 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v34)
          {
            goto LABEL_29;
          }

          v19[2] = v41;
        }

        v18 = v22;
        v13 = v45;
        v6 = v46;
      }

      v23 = v49;
      while (1)
      {
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v22 >= v17)
        {

          sub_226FF6420();
          sub_22766BF00();

          __swift_destroy_boxed_opaque_existential_0(v50);
          return (*(v23 + 8))(v6, v44);
        }

        v16 = *(v13 + 8 * v22);
        ++v18;
        if (v16)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_22766D220();
      __break(1u);
    }
  }

  else
  {
    v10 = sub_227669A60();
    sub_226FF65D8(&qword_27D7B8A18, MEMORY[0x277D4E2F0], MEMORY[0x277D4E2F8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D4E2E8], v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226FE16B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C0, &qword_227674D10);
  v40 = v4;
  result = sub_22766D000();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_226FF65D8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
      result = sub_22766BF50();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226FE1A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_227665440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97C8, &qword_227674C20);
  v39 = v4;
  result = sub_22766D000();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_226FF65D8(&qword_27D7B8660, MEMORY[0x277D51640], MEMORY[0x277D51648]);
      result = sub_22766BF50();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226FE1E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_227665440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9728, &qword_227674B88);
  v39 = v4;
  result = sub_22766D000();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_226FF65D8(&qword_27D7B8660, MEMORY[0x277D51640], MEMORY[0x277D51648]);
      result = sub_22766BF50();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226FE2228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  v34 = v4;
  result = sub_22766D000();
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

      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
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

uint64_t sub_226FE24C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
  v33 = v4;
  result = sub_22766D000();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226FE27BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v46 = a5;
  v8 = v5;
  v9 = a2;
  v10 = sub_2276694E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v9;
  result = sub_22766D000();
  v16 = result;
  if (*(v14 + 16))
  {
    v48 = v13;
    v49 = v10;
    v40 = v5;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = (v11 + 16);
    v42 = v11;
    v45 = (v11 + 32);
    v23 = result + 64;
    v43 = v14;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v11 + 72);
      v30 = v29 + v47 * v28;
      if (v44)
      {
        (*v45)(v48, v30, v49);
        v46(*(v14 + 56) + 40 * v28, v50);
      }

      else
      {
        (*v41)(v48, v30, v49);
        sub_226E91B50(*(v14 + 56) + 40 * v28, v50);
      }

      sub_226FF65D8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
      result = sub_22766BF50();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v11 = v42;
        v14 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v11 = v42;
      v14 = v43;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v45)((*(v16 + 48) + v47 * v24), v48, v49);
      result = (v46)(v50, *(v16 + 56) + 40 * v24);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v8 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v8 = v40;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v8 = v16;
  return result;
}

uint64_t sub_226FE2C08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v38 = sub_227665680();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F0, &qword_227674D40);
  v36 = v4;
  result = sub_22766D000();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
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
    v34 = (v5 + 16);
    v35 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v5 + 72);
      v24 = *(v7 + 56) + v23 * v22;
      v39 = *(*(v7 + 48) + 16 * v22);
      if (v36)
      {
        (*v16)(v37, v24, v38);
      }

      else
      {
        (*v34)(v37, v24, v38);
      }

      sub_22766D370();
      sub_227667E10();
      result = sub_22766D3F0();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 16 * v18) = v39;
      result = (*v16)(*(v9 + 56) + v23 * v18, v37, v38);
      ++*(v9 + 16);
      v5 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_226FE2FFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_227662B60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C8, &qword_227674DF0);
  v39 = v4;
  result = sub_22766D000();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_226FF65D8(&qword_27D7B8938, MEMORY[0x277D49490], MEMORY[0x277D49498]);
      result = sub_22766BF50();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226FE33D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_227665680();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9918, &qword_227674D60);
  v43 = v4;
  result = sub_22766D000();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_226E95D18(v27 + v28 * v24, v47, &qword_27D7B8E28, &unk_227672340);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_226E93170(v29 + v28 * v24, v47, &qword_27D7B8E28, &unk_227672340);
      }

      sub_226FF65D8(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
      result = sub_22766BF50();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_226E95D18(v47, *(v12 + 56) + v28 * v20, &qword_27D7B8E28, &unk_227672340);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_226FE3888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A88, &qword_227674EB0);
  v35 = v4;
  result = sub_22766D000();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v38 = *(*(v5 + 48) + v20);
      v21 = (*(v5 + 56) + 40 * v20);
      v22 = v21[1];
      v23 = v21[3];
      v36 = v21[2];
      v37 = *v21;
      v24 = v21[4];
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22766D370();
      MEMORY[0x22AA996B0](v38);
      result = sub_22766D3F0();
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
      *(*(v7 + 48) + v15) = v38;
      v16 = (*(v7 + 56) + 40 * v15);
      *v16 = v37;
      v16[1] = v22;
      v16[2] = v36;
      v16[3] = v23;
      v16[4] = v24;
      ++*(v7 + 16);
      v5 = v34;
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

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

uint64_t sub_226FE3B68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99B8, &qword_227674DE0);
  result = sub_22766D000();
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
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_22766D370();
      MEMORY[0x22AA996B0](v20);
      result = sub_22766D3F0();
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
      *(*(v7 + 48) + v15) = v20;
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

uint64_t sub_226FE3DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
  v38 = v4;
  result = sub_22766D000();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_226EB396C(v25, v26, v27);
      }

      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}