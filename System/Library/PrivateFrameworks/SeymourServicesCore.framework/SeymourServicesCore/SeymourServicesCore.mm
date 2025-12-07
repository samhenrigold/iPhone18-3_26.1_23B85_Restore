uint64_t sub_265BAEC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v41 = a1;
  v37 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_265BF2C30();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265BF3240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  sub_265BF3130();
  sub_265BF3220();
  v15 = *(v10 + 8);
  v36 = v9;
  v34 = v10 + 8;
  v32 = v15;
  v15(v14, v9);
  v16 = objc_opt_self();
  v17 = *MEMORY[0x277CBE640];
  v18 = (v6 + 8);
  v38 = a3 + 16;
  v39 = a3;
  do
  {
    v19 = MEMORY[0x26676D6B0]();
    v20 = v4;
    v21 = [v16 mainRunLoop];
    sub_265BF2BF0();
    v22 = sub_265BF2C10();
    (*v18)(v8, v40);
    v23 = [v21 runMode:v17 beforeDate:v22];

    v4 = v20;
    objc_autoreleasePoolPop(v19);
  }

  while (v23 && ((*(v39 + 16))(v20) & 1) != 0);
  v24 = v33;
  sub_265BF3130();
  v25 = v37;
  v26 = v35;
  (*(v37 + 16))(v35, v41, v4);
  v27 = sub_265BF3230();
  v28 = sub_265BF34E0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    *(v29 + 4) = v23;
    *(v29 + 8) = 1024;
    v30 = (*(v39 + 16))(v4) & 1;
    (*(v25 + 8))(v26, v4);
    *(v29 + 10) = v30;
    _os_log_impl(&dword_265BAD000, v27, v28, "Daemon run complete runloop: %{BOOL}d, daemon: %{BOOL}d", v29, 0xEu);
    MEMORY[0x26676DCA0](v29, -1, -1);
  }

  else
  {
    (*(v25 + 8))(v26, v4);
  }

  return v32(v24, v36);
}

uint64_t sub_265BAF098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  if (qword_281068810 != -1)
  {
    swift_once();
  }

  return RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)(a1, a2, *&qword_281068818);
}

uint64_t RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v94 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v93 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = v87 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v101 = v87 - v13;
  v91 = v14;
  MEMORY[0x28223BE20](v12);
  v102 = v87 - v15;
  v16 = sub_265BF3240();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v87 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v87 - v23;
  sub_265BF3140();
  sub_265BF3220();
  v98 = *(v17 + 8);
  v99 = v17 + 8;
  v98(v24, v16);
  swift_beginAccess();
  sub_265BB0718((v4 + 19), &v108);
  v25 = v109;
  v89 = v16;
  LODWORD(v97) = a1;
  if (v109)
  {
    v26 = v108;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265BB0750(v114, &qword_28003C480, &qword_265BF4EC8);
    sub_265BF3140();

    v27 = sub_265BF3230();
    v28 = sub_265BF34D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v108 = v30;
      *v29 = 136446210;
      v31 = sub_265BB064C(v26, v25, &v108);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_265BAD000, v27, v28, "Clobbering existing discovery for identifier: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v32 = v30;
      a1 = v97;
      MEMORY[0x26676DCA0](v32, -1, -1);
      MEMORY[0x26676DCA0](v29, -1, -1);
    }

    else
    {
    }

    v98(v22, v16);
  }

  else
  {
    sub_265BB07B4(&v108);
  }

  v33 = v4[6];
  v34 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v33);
  v35 = (*(v34 + 8))(a1, v33, v34, a3);
  v37 = v36;
  ObjectType = swift_getObjectType();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v37[16];

  v40(sub_265BAFE24, v39, ObjectType, v37);

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v37[19];

  v42(sub_265BC3560, v41, ObjectType, v37);

  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v37[22];

  v100 = v35;
  v44(sub_265BC3590, v43, ObjectType, v37);

  v45 = sub_265BF3370();
  v47 = v46;
  v48 = v4[11];
  v87[1] = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v48);
  sub_265BC3598();
  v49 = sub_265BF3520();
  v50 = swift_allocObject();
  v90 = v4;
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v45;
  v51[4] = v47;

  v52 = sub_265BF3080();

  v53 = v97;

  if (v53 <= 5u && ((1 << v53) & 0x26) != 0)
  {
    v54 = v45;
    v55 = v90[16];
    v56 = v90[17];
    __swift_project_boxed_opaque_existential_1(v90 + 13, v55);
    v57 = v55;
    v45 = v54;
    (*(v56 + 8))(v107, v57, v56);
  }

  else
  {
    memset(v107, 0, 40);
  }

  v58 = v88;
  v108 = v45;
  v109 = v47;
  v110 = v100;
  v111 = v37;
  v112 = v53;
  v113 = v52;
  sub_265BC35F0(v107, v114);
  swift_unknownObjectRetain();
  v97 = v52;
  swift_unknownObjectRetain();
  sub_265BF3140();
  sub_265BB0718(&v108, v105);
  v59 = sub_265BF3230();
  v60 = sub_265BF34E0();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v89;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v104 = v64;
    *v63 = 136446210;
    sub_265BB0718(v105, &v103);
    v65 = sub_265BF3350();
    v67 = v66;
    sub_265BB07B4(v105);
    v68 = sub_265BB064C(v65, v67, &v104);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_265BAD000, v59, v60, "Starting discovery: %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x26676DCA0](v64, -1, -1);
    MEMORY[0x26676DCA0](v63, -1, -1);
  }

  else
  {

    sub_265BB07B4(v105);
  }

  v98(v58, v62);
  RemoteParticipantDiscovery.endDiscovering()();
  v69 = swift_allocObject();
  swift_weakInit();
  sub_265BB0718(&v108, v105);
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  v71 = v105[3];
  *(v70 + 56) = v105[2];
  *(v70 + 72) = v71;
  *(v70 + 88) = v105[4];
  *(v70 + 104) = v106;
  v72 = v105[1];
  *(v70 + 24) = v105[0];
  *(v70 + 40) = v72;
  v73 = v101;
  sub_265BF2DF0();
  v74 = v95;
  v75 = v96;
  v98 = *(v95 + 16);
  v76 = v92;
  (v98)(v92, v73, v96);
  v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v78 = v77 + v91;
  v99 = swift_allocObject();
  v79 = *(v74 + 32);
  v79(v99 + v77, v76, v75);
  v80 = v93;
  (v98)(v93, v102, v75);
  v81 = (v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v79(v82 + v77, v80, v75);
  v83 = (v82 + v81);
  v84 = v99;
  *v83 = sub_265BB2398;
  v83[1] = v84;
  sub_265BF2DF0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v85 = *(v74 + 8);
  v85(v101, v75);
  v85(v102, v75);
  sub_265BB07B4(&v108);
  return sub_265BB0750(v107, &qword_28003C480, &qword_265BF4EC8);
}

uint64_t sub_265BAFC3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BAFC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BAFD10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_265BAFDBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_265BAFE54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_265BAFEC8(void *a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v60[-v11];
  v13 = sub_265BF2CC0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v65 = &v60[-v18];
  swift_beginAccess();
  sub_265BB0718(v2 + 152, v68);
  if (v68[1])
  {
    v64 = v4;

    swift_unknownObjectRelease();
    v19 = v69;
    swift_unknownObjectRelease();
    sub_265BB0750(&v70, &qword_28003C480, &qword_265BF4EC8);
    if (sub_265BB0998(a1, v19))
    {
      v20 = a1;
      v21 = v65;
      sub_265BB8C58(v20, v19, v65);
      sub_265BF3140();
      v22 = v14;
      v23 = *(v14 + 16);
      v24 = v13;
      v23(v17, v21, v13);
      v25 = sub_265BF3230();
      v26 = sub_265BF34E0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v63 = v20;
        v28 = v27;
        v62 = swift_slowAlloc();
        v68[0] = v62;
        *v28 = 136446466;
        v67 = v19;
        v29 = sub_265BF3350();
        v61 = v26;
        v31 = sub_265BB064C(v29, v30, v68);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2082;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v32 = sub_265BF36D0();
        v34 = v33;
        v35 = *(v22 + 8);
        v35(v17, v24);
        v36 = sub_265BB064C(v32, v34, v68);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_265BAD000, v25, v61, "Registering discovered participant (%{public}s: %{public}s", v28, 0x16u);
        v37 = v62;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v37, -1, -1);
        v38 = v28;
        v20 = v63;
        MEMORY[0x26676DCA0](v38, -1, -1);
      }

      else
      {

        v35 = *(v22 + 8);
        v35(v17, v24);
      }

      v56 = (*(v66 + 8))(v12, v64);
      MEMORY[0x28223BE20](v56);
      *&v60[-16] = v2;
      *&v60[-8] = v20;
      sub_265BF2EA0();
      swift_beginAccess();
      v57 = *(v2 + 240);
      if (v57)
      {
        v58 = *(v2 + 248);
        swift_endAccess();

        v59 = v65;
        v57(v65);
        sub_265BB060C(v57, v58);
        return (v35)(v59, v24);
      }

      else
      {
        v35(v65, v24);
        return swift_endAccess();
      }
    }

    else
    {
      sub_265BF3140();
      v46 = a1;
      v47 = sub_265BF3230();
      v48 = sub_265BF34E0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v68[0] = v51;
        *v49 = 136446466;
        v67 = v19;
        v52 = sub_265BF3350();
        v54 = sub_265BB064C(v52, v53, v68);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2114;
        *(v49 + 14) = v46;
        *v50 = v46;
        v55 = v46;
        _os_log_impl(&dword_265BAD000, v47, v48, "Discovered unsupported (not %{public}s) device: %{public}@", v49, 0x16u);
        sub_265BB0750(v50, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v50, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x26676DCA0](v51, -1, -1);
        MEMORY[0x26676DCA0](v49, -1, -1);
      }

      return (*(v66 + 8))(v10, v64);
    }
  }

  else
  {
    sub_265BB07B4(v68);
    sub_265BF3140();
    v39 = a1;
    v40 = sub_265BF3230();
    v41 = sub_265BF34D0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_265BAD000, v40, v41, "Discovered device while inactive: %{public}@", v42, 0xCu);
      sub_265BB0750(v43, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v43, -1, -1);
      MEMORY[0x26676DCA0](v42, -1, -1);
    }

    return (*(v66 + 8))(v7, v4);
  }
}

uint64_t sub_265BB060C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore26RemoteParticipantDiscoveryC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore27AggressiveBluetoothScanning_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_265BB064C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265BB07E4(v11, 0, 0, 1, a1, a2);
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
    sub_265BB08F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_265BB0750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_265BB07E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265BB0C48(a5, a6);
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
    result = sub_265BF3660();
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

uint64_t sub_265BB08F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_265BB0998(void *a1, unsigned __int8 a2)
{
  v2 = 1;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      return ([a1 statusFlags] >> 16) & 1;
    }

    if (a2 != 4)
    {
      v6 = [a1 model];
      if (v6)
      {
        v7 = v6;
        v8 = v7;
        v9 = @"Watch";
        goto LABEL_15;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return ([a1 statusFlags] >> 27) & 1;
    }

    if (a2 != 1)
    {
      v3 = [a1 model];
      if (v3)
      {
        v4 = v3;
        v5 = [v4 hasPrefix:@"Watch"];

        if (v5)
        {

          return 1;
        }

        v7 = v4;
        v8 = v7;
        v9 = @"iPhone";
LABEL_15:
        v2 = [v7 hasPrefix:v9];

        return v2;
      }

      return 0;
    }
  }

  return v2;
}

void *sub_265BB0AA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_265BB0BD4(v5, 0);
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

  result = sub_265BF3660();
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
        v10 = sub_265BF33C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265BB0BD4(v10, 0);
        result = sub_265BF3610();
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

void *sub_265BB0BD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C340, &qword_265BF47D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_265BB0C48(uint64_t a1, unint64_t a2)
{
  v3 = sub_265BB0AA4(a1, a2);
  sub_265BB1274(&unk_2877733B0);
  return v3;
}

uint64_t RemoteParticipantDiscovery.endDiscovering()()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v4 = swift_allocObject();
  swift_weakInit();
  sub_265BB0718(v12, v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v10[3];
  *(v5 + 56) = v10[2];
  *(v5 + 72) = v6;
  *(v5 + 88) = v10[4];
  *(v5 + 104) = v11;
  v7 = v10[1];
  *(v5 + 24) = v10[0];
  *(v5 + 40) = v7;
  sub_265BF2DF0();
  return sub_265BB07B4(v12);
}

uint64_t sub_265BB0E70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB0EB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265BB1210(a1, a2, v2 + v6, v8, v9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_265BB0FE0(char a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setAwdlGuestDiscoveryTimeout_];
  [v4 setRssiThreshold_];
  return v4;
}

uint64_t sub_265BB10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265BF2E40();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

void sub_265BB1168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265BAFDBC;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

uint64_t sub_265BB1274(uint64_t result)
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

  result = sub_265BB71B4(result, v11, 1, v3);
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_265BB1424(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_retain_n();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      sub_265BB15C8(a4, v8, a1, a2);
    }
  }

  else
  {
    v9 = sub_265BF2C40();
    sub_265BC3994(&qword_281068910, MEMORY[0x277D50320], MEMORY[0x277D50328]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D50318], v9);
    v12 = v10;
    v13 = 1;
    a1(&v12);
  }
}

uint64_t sub_265BB15C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = sub_265BF3240();
  v8 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = swift_allocObject();
  v73 = a3;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v76 = v17;
  v77 = a4;
  v18 = a2[2];
  swift_retain_n();
  v72 = v18;
  sub_265BF2EA0();
  sub_265BB0718(v102, v94);
  v74 = a1;
  sub_265BB0718(a1, &v95);
  if (!v94[1])
  {
    if (v96)
    {

      v20 = v97;
      v73 = v98;
      swift_unknownObjectRelease();
      v78[0] = v99;
      v78[1] = v100;
      v79 = v101;
      sub_265BF3140();
      sub_265BB0718(v74, &v88);
      v21 = sub_265BF3230();
      v22 = sub_265BF34E0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v71 = 0;
        v25 = v24;
        *&v86[0] = v24;
        *v23 = 136446210;
        sub_265BB0718(&v88, &v82);
        v26 = sub_265BF3350();
        v70 = v20;
        v27 = v26;
        v29 = v28;
        sub_265BB07B4(&v88);
        v30 = sub_265BB064C(v27, v29, v86);

        *(v23 + 4) = v30;
        _os_log_impl(&dword_265BAD000, v21, v22, "Becoming active: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x26676DCA0](v25, -1, -1);
        MEMORY[0x26676DCA0](v23, -1, -1);
      }

      else
      {

        sub_265BB07B4(&v88);
      }

      (*(v8 + 8))(v16, v75);
      v45 = v76;
      v46 = sub_265BE5450(MEMORY[0x277D84F90]);
      swift_beginAccess();
      a2[18] = v46;

      MEMORY[0x28223BE20](v47);
      v48 = v74;
      *(&v68 - 2) = a2;
      *(&v68 - 1) = v48;
      sub_265BF2EA0();
      sub_265BC35F0(v78, &v88);
      if (*(&v89 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
        AggressiveBluetoothScanning.activate()();
        __swift_destroy_boxed_opaque_existential_0Tm(&v88);
      }

      else
      {
        sub_265BB0750(&v88, &qword_28003C480, &qword_265BF4EC8);
      }

      ObjectType = swift_getObjectType();
      v59 = swift_allocObject();
      swift_weakInit();
      sub_265BB0718(v74, &v88);
      v60 = swift_allocObject();
      v61 = v91;
      *(v60 + 72) = v90;
      *(v60 + 88) = v61;
      *(v60 + 104) = v92;
      v62 = v89;
      *(v60 + 40) = v88;
      *(v60 + 16) = sub_265BB87AC;
      *(v60 + 24) = v45;
      *(v60 + 32) = v59;
      *(v60 + 120) = v93;
      *(v60 + 56) = v62;
      v63 = v73;
      v64 = *(v73 + 264);

      v64(sub_265BC39F8, v60, ObjectType, v63);
      swift_unknownObjectRelease();

      sub_265BB0750(v78, &qword_28003C480, &qword_265BF4EC8);
      sub_265BB07B4(v102);

      goto LABEL_24;
    }

    goto LABEL_7;
  }

  sub_265BB0718(v94, &v88);

  v19 = *(&v90 + 1);
  if (v96)
  {
    sub_265BB0750(&v91, &qword_28003C480, &qword_265BF4EC8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_7:
    sub_265BF3140();
    v31 = sub_265BF3230();
    v32 = sub_265BF34E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_265BAD000, v31, v32, "Transitioning to equivalent state, nothing to do", v33, 2u);
      MEMORY[0x26676DCA0](v33, -1, -1);
    }

    (*(v8 + 8))(v14, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3810();
    v34 = v88;
    v35 = BYTE8(v88);
    v82 = v88;
    v83 = BYTE8(v88);
    (v73)(&v82);
    sub_265BB85E0(v34, v35);
    sub_265BB07B4(v102);
    sub_265BB07B4(&v95);
    goto LABEL_24;
  }

  v69 = *(&v89 + 1);
  v70 = v89;
  v86[0] = v91;
  v86[1] = v92;
  v87 = v93;
  sub_265BF3140();
  sub_265BB0718(v102, &v82);
  v36 = sub_265BF3230();
  v37 = sub_265BF34E0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v80 = v39;
    *v38 = 136446210;
    sub_265BB0718(&v82, v78);
    v40 = sub_265BF3350();
    v71 = 0;
    v41 = v40;
    v68 = v19;
    v43 = v42;
    sub_265BB07B4(&v82);
    v44 = sub_265BB064C(v41, v43, &v80);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_265BAD000, v36, v37, "Becoming inactive: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x26676DCA0](v39, -1, -1);
    MEMORY[0x26676DCA0](v38, -1, -1);
  }

  else
  {

    sub_265BB07B4(&v82);
  }

  (*(v8 + 8))(v11, v75);
  v49 = sub_265BE5450(MEMORY[0x277D84F90]);
  swift_beginAccess();
  a2[18] = v49;

  MEMORY[0x28223BE20](v50);
  v51 = v74;
  *(&v68 - 2) = a2;
  *(&v68 - 1) = v51;
  sub_265BF2EA0();
  v52 = a2[36];
  if (v52)
  {
    v53 = a2[37];

    v52(v54);
    sub_265BB060C(v52, v53);
  }

  v55 = swift_getObjectType();
  (*(v69 + 272))(v55);
  sub_265BC35F0(v86, &v82);
  v56 = v84;
  if (v84)
  {
    v57 = v85;
    __swift_project_boxed_opaque_existential_1(&v82, v84);
    (*(v57 + 16))(v56, v57);
    __swift_destroy_boxed_opaque_existential_0Tm(&v82);
  }

  else
  {
    sub_265BB0750(&v82, &qword_28003C480, &qword_265BF4EC8);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_265BF3090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3810();
  v65 = v82;
  v66 = v83;
  v80 = v82;
  v81 = v83;
  (v73)(&v80);
  sub_265BB85E0(v65, v66);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_265BB0750(v86, &qword_28003C480, &qword_265BF4EC8);
  sub_265BB07B4(v102);
LABEL_24:
  sub_265BB07B4(v94);
}

uint64_t sub_265BB1F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB1FB8()
{

  if (v0[6])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v0[14])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

void sub_265BB20AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BBD73C;
    v4[3] = &block_descriptor_63;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_265BB2154(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_265BB85E0(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_265BF2E40();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_265BB8864, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_265BB231C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_265BB2398@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265BB231C(v4, a1);
}

_DWORD *sub_265BB24A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_265BB24E8(_DWORD *a1, int *a2)
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

_DWORD *sub_265BB2518@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_265BB2544@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_265BB25F4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_265BB5164(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_265BB2634()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB266C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_265BB26B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB271C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2764()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB279C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB27D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2820()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB286C()
{

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_265BBB1D0(*(v0 + 80), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_265BB28D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB290C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB2960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB29CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB2A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB2B0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2B48()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_265BB2B80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2BC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265BB2BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BF2CC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265BB2C84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BF2CC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265BB2D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2D60()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265BB2DC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265BB2E04()
{

  return MEMORY[0x2821FE8E8](v0, 83, 7);
}

uint64_t sub_265BB2E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2E84()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_265BB2F80()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[7];
  v6 = sub_265BF2CC0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_265BB30B8()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265BB31B0()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB32C4()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_265BB3324()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_265BB3438()
{

  return MEMORY[0x2821FE8E8](v0, 43, 7);
}

uint64_t sub_265BB3470()
{

  return MEMORY[0x2821FE8E8](v0, 51, 7);
}

uint64_t sub_265BB34A8()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_265BF2CC0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265BB35B0()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[7];
  v6 = sub_265BF2CC0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_265BB37F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265BF2D90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265BB38EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265BF2D90();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265BB39F4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_265BB3A54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB3A8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB3AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_265BF2FD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265BB3C40()
{
  v1 = sub_265BF2FD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB3D04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_265BF2FD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265BB3E70()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265BB3EA8()
{
  v1 = sub_265BF2FD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB3F8C()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265BB407C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB40B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB40F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB412C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_265BF2CF0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_265BB42A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_265BF2FD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265BB4350(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BF2FD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265BB43F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB442C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4464()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 69, 7);
}

uint64_t sub_265BB44B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB44EC()
{

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t sub_265BB452C()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_265BB4574()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB461C()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265BB4720()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265BB47EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265BB4868()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265BB48A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB48D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB4910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4970()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB49B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB49F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB4A30()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB4A90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static DaemonProtocol.main()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x26676D6B0](v6);
  sub_265BB4BF8(v2, a1, a2);
  objc_autoreleasePoolPop(v9);
  v13 = a1;
  v14 = a2;
  v15 = v8;
  sub_265BB4CD4(v8, sub_265BB4CB0, v12, a1, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v10);
  return (*(v5 + 8))(v8, a1);
}

uint64_t sub_265BB4BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  _s19SeymourServicesCore7SandboxV9bootstrapyySSFZ_0(v5, v6);

  (*(a3 + 24))(a2, a3);
  return (*(a3 + 32))(a2, a3);
}

uint64_t sub_265BB4CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t sub_265BB4E20(uint64_t a1, int a2)
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

uint64_t sub_265BB4E40(uint64_t result, int a2, int a3)
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

void sub_265BB4E90(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_265BB4F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BB5164(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t SigTermHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  sub_265BB5350(0, &qword_281068A30, 0x277D85CA0);
  sub_265BB5350(0, qword_281068A38, 0x277D85C78);
  v1 = sub_265BF3520();
  v2 = sub_265BF3550();

  *(v0 + 16) = v2;
  return v0;
}

uint64_t SigTermHandler.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  sub_265BB5350(0, &qword_281068A30, 0x277D85CA0);
  sub_265BB5350(0, qword_281068A38, 0x277D85C78);
  v2 = sub_265BF3520();
  v3 = sub_265BF3550();

  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_265BB5350(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Void __swiftcall SigTermHandler.activate()()
{
  v0 = sub_265BF3270();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265BF32A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v9 + 8))(v11, v8);
  swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_265BB5858;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265BB5860;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  sub_265BF3290();
  sub_265BB58AC();
  sub_265BF3560();
  _Block_release(v13);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);

  v14 = sub_265BF3260();
  signal(15, v14);
  sub_265BF3570();
}

uint64_t sub_265BB56C8(uint64_t a1)
{
  v1 = sub_265BF3240();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3130();
  v5 = sub_265BF3230();
  v6 = sub_265BF34E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265BAD000, v5, v6, "SigTerm received, exiting clean", v7, 2u);
    MEMORY[0x26676DCA0](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  xpc_transaction_exit_clean();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    *(v9 + 24) = 1;
  }

  return result;
}

uint64_t sub_265BB5860(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_265BB58AC()
{
  sub_265BF3270();
  sub_265BB59DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C2F0, &unk_265BF46E0);
  sub_265BB5A7C();
  return sub_265BF35C0();
}

uint64_t SigTermHandler.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

unint64_t sub_265BB59DC()
{
  result = qword_281068928;
  if (!qword_281068928)
  {
    sub_265BF3270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068928);
  }

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

unint64_t sub_265BB5A7C()
{
  result = qword_281068918;
  if (!qword_281068918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C2F0, &unk_265BF46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068918);
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

uint64_t getEnumTagSinglePayload for DeviceSystemService(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DeviceSystemService(_WORD *result, int a2, int a3)
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

SeymourServicesCore::AppLaunchState __swiftcall AppLauncher.appLaunchState(bundle:)(Swift::String bundle)
{
  object = bundle._object;
  countAndFlagsBits = bundle._countAndFlagsBits;
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  sub_265BB60C4();
  v8 = sub_265BF3330();
  v9 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  v10 = sub_265BB7DD4(v9);
  v11 = [v10 currentState];

  if (v11)
  {
    v12 = [v11 taskState] != 4 && objc_msgSend(v11, sel_taskState) != 2;
    v18 = [v11 endowmentNamespaces];
    if (v18)
    {
      v19 = v18;
      v20 = sub_265BF3480();

      v21 = sub_265BF3340();
      v23 = sub_265BB6110(v21, v22, v20);

      if (!v12 && (v23 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {
    }

    return 2;
  }

  else
  {
    sub_265BF3110();

    v14 = sub_265BF3230();
    v15 = sub_265BF34D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 141558274;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_265BB064C(countAndFlagsBits, object, &v25);
      _os_log_impl(&dword_265BAD000, v14, v15, "Can't find process state for %{mask.hash}s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x26676DCA0](v17, -1, -1);
      MEMORY[0x26676DCA0](v16, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

unint64_t sub_265BB60C4()
{
  result = qword_28003C2F8;
  if (!qword_28003C2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C2F8);
  }

  return result;
}

uint64_t sub_265BB6110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_265BF37B0();
  sub_265BF3390();
  v6 = sub_265BF37E0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_265BF36E0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_265BB6208(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_265BF37B0();
  v3 = sub_265BF2D50();
  MEMORY[0x26676D5D0](v3);
  v4 = sub_265BF37E0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = sub_265BF2D50();
    v9 = v8 == sub_265BF2D50();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t AppLauncher.launch(bundle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a2;
  v45 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v40 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v46 = *(v41 - 8);
  v11 = v46[8];
  v12 = MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v47 = &v40 - v19;
  sub_265BB7E98(v4, &v48);
  v20 = swift_allocObject();
  *(v20 + 16) = 1;
  v21 = v49;
  *(v20 + 24) = v48;
  *(v20 + 40) = v21;
  *(v20 + 56) = v50;
  sub_265BF2E00();
  sub_265BB7E98(v4, &v48);
  sub_265BB7EE8(a3, v10);
  v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v23 = v22 + v8;
  v24 = (v22 + v8) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v49;
  v25[1] = v48;
  v25[2] = v26;
  v25[3] = v50;
  sub_265BB7F58(v10, v25 + v22);
  *(v25 + v23) = 1;
  v27 = v25 + v24;
  v28 = v44;
  *(v27 + 1) = v43;
  *(v27 + 2) = v28;

  v40 = v18;
  sub_265BF2DF0();
  v29 = v46;
  v30 = v46[2];
  v31 = v41;
  v30(v15, v18, v41);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v29[4];
  v34(v33 + v32, v15, v31);
  v35 = v42;
  v30(v42, v47, v31);
  v36 = swift_allocObject();
  v34(v36 + v32, v35, v31);
  v37 = (v36 + ((v32 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_265BB2394;
  v37[1] = v33;
  sub_265BF2DF0();
  v38 = v46[1];
  v38(v40, v31);
  return (v38)(v47, v31);
}

uint64_t AppLauncher.launch(bundle:url:appLaunchState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v47 = a1;
  v48 = a2;
  v49 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v51 = *(v45 - 8);
  v13 = v51[8];
  v14 = MEMORY[0x28223BE20](v45);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v43 - v20;
  sub_265BB7E98(v6, &v53);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  v22 = v54;
  *(v21 + 24) = v53;
  *(v21 + 40) = v22;
  *(v21 + 56) = v55;
  sub_265BF2E00();
  sub_265BB7E98(v6, &v53);
  sub_265BB7EE8(a3, v12);
  v23 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v24 = v23 + v10;
  v25 = (v23 + v10) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v54;
  v26[1] = v53;
  v26[2] = v27;
  v26[3] = v55;
  sub_265BB7F58(v12, v26 + v23);
  *(v26 + v24) = a4;
  v28 = v26 + v25;
  v29 = v48;
  *(v28 + 1) = v47;
  *(v28 + 2) = v29;

  v30 = v50;
  sub_265BF2DF0();
  v31 = v51;
  v32 = v51[2];
  v33 = v30;
  v34 = v45;
  v32(v17, v33, v45);
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v36 = swift_allocObject();
  v37 = v31[4];
  v37(v36 + v35, v17, v34);
  v38 = v46;
  v32(v46, v52, v34);
  v39 = swift_allocObject();
  v37(v39 + v35, v38, v34);
  v40 = (v39 + ((v35 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_265BB885C;
  v40[1] = v36;
  sub_265BF2DF0();
  v41 = v51[1];
  v41(v50, v34);
  return (v41)(v52, v34);
}

void sub_265BB6AF4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_265BF2BA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BE5320(MEMORY[0x277D84F90]);
  sub_265BB7EE8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_265BB0750(v6, &qword_28003C308, &qword_265BF4738);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_265BF3340();
    v14 = v13;
    v27 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(v8 + 16))(boxed_opaque_existential_0, v10, v7);
    sub_265BB87C8(v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11;
    sub_265BE48E8(v25, v12, v14, isUniquelyReferenced_nonNull_native);

    (*(v8 + 8))(v10, v7);
    v11 = v24;
  }

  if (a2 == 2)
  {
    v17 = sub_265BF3340();
    v19 = v18;
    v27 = MEMORY[0x277D839B0];
    LOBYTE(v26[0]) = 1;
    sub_265BB87C8(v26, v25);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11;
    sub_265BE48E8(v25, v17, v19, v20);

    v11 = v24;
  }

  sub_265BD8844(v11);
  v21 = sub_265BF32E0();

  v22 = [objc_opt_self() optionsWithDictionary_];

  if (v22)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_265BB6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_265BF3240();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_265BF3110();
  sub_265BF3220();
  (*(v12 + 8))(v14, v11);
  sub_265BB6AF4(a4, a5);
  v17 = v16;
  v18 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v18)
  {
    v19 = v18;
    v20 = sub_265BF3330();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_265BB87AC;
    *(v21 + 24) = v15;
    aBlock[4] = sub_265BB87B8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BB7108;
    aBlock[3] = &block_descriptor_0;
    v22 = _Block_copy(aBlock);
    v23 = v17;

    [v19 openApplication:v20 withOptions:v23 completion:v22];

    _Block_release(v22);
  }

  else
  {
  }
}

void sub_265BB7078(int a1, id a2, void (*a3)(uint64_t, void))
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3800();
  a3(v5, v6);
  sub_265BB85E0(v5, v6);
}

void sub_265BB7108(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

char *sub_265BB71B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C340, &qword_265BF47D8);
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

void sub_265BB7424(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  if (a2)
  {
    v19[1] = 0;
    v19[2] = 0;
    v19[0] = a1;
    v20 = 1;
    v16 = a1;
    a5(v19);
    sub_265BB85E0(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_265BF2E40();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_265BB85EC, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_265BB75C8(void *a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C328, &qword_265BF47C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  if (a2)
  {
    v20 = 1;
    *&v18[0] = a1;
    v19 = 1;
    v15 = a1;
    a5(v18);
    v21[2] = v18[2];
    v21[3] = v18[3];
    v21[4] = v18[4];
    v22 = v19;
    v21[0] = v18[0];
    v21[1] = v18[1];
    sub_265BB0750(v21, &qword_28003C330, &qword_265BF47C8);
  }

  else
  {
    *&v21[0] = a1;

    a3(v21);
    v16 = sub_265BF2E40();
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;

    v16(sub_265BB883C, v17);

    (*(v12 + 8))(v14, v11);
    sub_265BB871C(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_265BB77D4(void *a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C328, &qword_265BF47C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  if (a2)
  {
    v21 = 1;
    *&v19[0] = a1;
    v20 = 1;
    v15 = a1;
    a5(v19);
    v22[2] = v19[2];
    v22[3] = v19[3];
    v22[4] = v19[4];
    v23 = v20;
    v22[0] = v19[0];
    v22[1] = v19[1];
    sub_265BB0750(v22, &qword_28003C330, &qword_265BF47C8);
  }

  else
  {
    *&v22[0] = a1;
    v16 = a1;
    a3(v22);
    v17 = sub_265BF2E40();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_265BB869C, v18);

    (*(v12 + 8))(v14, v11);
    sub_265BB86A0(a1);
  }
}

void sub_265BB79C8(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v25 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v26 = a1;
  if (a4)
  {
    LOBYTE(v27) = 1;
    v18 = a1;
    v25(&v26);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 1;
  }

  else
  {
    v27 = a2;
    v28 = a3;
    swift_unknownObjectRetain();
    a5(&v26);
    v23 = sub_265BF2E40();
    v24 = swift_allocObject();
    *(v24 + 16) = v25;
    *(v24 + 24) = a8;

    v23(sub_265BB8864, v24);

    (*(v15 + 8))(v17, v14);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 0;
  }

  sub_265BB8678(v19, v20, v21, v22);
}

void sub_265BB7BA4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v21 = a1;
  if (a2)
  {
    v22 = 1;
    v15 = a1;
    a5(&v21);
    v16 = MEMORY[0x277D85008];
    v17 = a1;
    v18 = 1;
  }

  else
  {

    a3(&v21);
    v19 = sub_265BF2E40();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_265BB8654, v20);

    (*(v12 + 8))(v14, v11);
    v16 = MEMORY[0x277D85008];
    v17 = a1;
    v18 = 0;
  }

  sub_265BB871C(v17, v18, v16);
}

__int128 *sub_265BB7D84(__int128 *result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 2);
  v3 = *(result + 24);
  v4 = *result;
  v5 = v2;
  v6 = v3;
  if (a2)
  {
    return a2(&v4);
  }

  return result;
}

id sub_265BB7DD4(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_265BF2B90();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_265BB7EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BB7F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BB7FCC()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
    return (*(v2 + 8))(v1, v2);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v5 = sub_265BF2BA0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

void sub_265BB8168(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v2 + v7);

  sub_265BB6DFC(a1, a2, v2 + 16, v2 + v6, v11, v9, v10);
}

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB82BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_8Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB83E8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BB10A8(a1, a2, v2 + v6, *v7, v7[1], &unk_28003C470, &qword_265BF4740, &unk_287773900, sub_265BB2094);
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

uint64_t sub_265BB8524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BB856C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_265BB85E0(id a1, char a2)
{
  if (a2)
  {
  }
}

__int128 *sub_265BB85EC(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 2);
  v4 = *(result + 24);
  v5 = *result;
  v6 = v3;
  v7 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

void sub_265BB8678(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_265BB86C4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 48);
  v5[2] = *(result + 32);
  v5[3] = v3;
  v5[4] = *(result + 64);
  v6 = *(result + 80);
  v4 = *(result + 16);
  v5[0] = *result;
  v5[1] = v4;
  if (v2)
  {
    return v2(v5);
  }

  return result;
}

void sub_265BB871C(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_265BB87C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static DataProtectionClass.current.getter()
{
  v0 = MKBGetDeviceLockState();
  v1 = MKBDeviceUnlockedSinceBoot() == 1;
  if (v0 == 3)
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t DataProtectionClass.init(protectionType:)(void *a1)
{
  v2 = sub_265BF3340();
  v4 = v3;
  if (v2 == sub_265BF3340() && v4 == v5)
  {

    return 3;
  }

  v7 = sub_265BF36E0();

  if (v7)
  {

    return 3;
  }

  v9 = sub_265BF3340();
  v11 = v10;
  if (v9 == sub_265BF3340() && v11 == v12)
  {

    return 2;
  }

  else
  {
    v14 = sub_265BF36E0();

    if (v14)
    {

      return 2;
    }

    else
    {
      v15 = sub_265BF3340();
      v17 = v16;
      if (v15 == sub_265BF3340() && v17 == v18)
      {

        return 1;
      }

      else
      {
        v19 = sub_265BF36E0();

        if (v19)
        {

          return 1;
        }

        else
        {
          v20 = sub_265BF3340();
          v22 = v21;
          if (v20 != sub_265BF3340() || v22 != v23)
          {
            sub_265BF36E0();
          }

          return 0;
        }
      }
    }
  }
}

id RemoteParticipantLinkProvider.makeDiscoveryLink(role:timeout:)(char a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setAwdlGuestDiscoveryTimeout_];
  [v4 setRssiThreshold_];
  return v4;
}

void sub_265BB8C58(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_265BF2D60();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1;
  v8 = [v7 model];
  if (v8)
  {
    v9 = v8;
    sub_265BF3340();

    v19 = sub_265BF2D40();
  }

  else
  {
    v19 = 4;
  }

  v10 = [v7 effectiveIdentifier];
  v11 = sub_265BF3340();
  v18[1] = v12;
  v18[2] = v11;

  sub_265BD68EC(v6);
  v13 = [v7 model];
  if (v13)
  {
    v14 = v13;
    sub_265BF3340();
  }

  sub_265BD6710([v7 statusFlags]);
  v15 = [v7 idsDeviceIdentifier];
  if (v15)
  {
    v16 = v15;
    sub_265BF3340();
  }

  v17 = [v7 name];

  if (v17)
  {
    sub_265BF3340();
  }

  sub_265BF2C60();
}

uint64_t RemoteParticipantConnectionBrokering.connect(to:service:authentication:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_265BF3240();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v11 + 8))(v13, v10);
  v14 = sub_265BF2CB0();
  if (v15)
  {
    return (*(a5 + 8))(a1, v14 == 3, a2 & 1, a3, a4, a5);
  }

  v17 = sub_265BF2D20();
  sub_265BB90C0();
  v18 = swift_allocError();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D525E8], v17);
  *(swift_allocObject() + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
  return sub_265BF2E00();
}

unint64_t sub_265BB90C0()
{
  result = qword_281068900;
  if (!qword_281068900)
  {
    sub_265BF2D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068900);
  }

  return result;
}

uint64_t RemoteParticipantConnectionBrokering.connectToAnyParticipant(havingRole:preferredDeviceType:service:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 == 3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(a5 + 16))(a1, a2, v10, a3 & 1, sub_265BB947C, v11, a4, a5);
}

uint64_t sub_265BB921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_265BF3240();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3130();
  v10 = sub_265BF3230();
  v11 = sub_265BF34E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v18[7] = a5;
    v14 = sub_265BF3350();
    v16 = sub_265BB064C(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265BAD000, v10, v11, "ConnectToAnyParticipant (%s, privacy: .public) No handshake required", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x26676DCA0](v13, -1, -1);
    MEMORY[0x26676DCA0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return sub_265BF2E50();
}

id sub_265BB9448()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t RemoteParticipantConnectionBrokerProvider.init(analyticsReporter:eventHub:xpcBroadcastConnection:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_265BB4A90(a1, a7);
  a7[5] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t RemoteParticipantConnectionBrokerProvider.makeBroker(transportPriority:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_265BF3060();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  sub_265BB9CAC(v2, v49);
  v12 = sub_265BF3370();
  v14 = v13;
  v47 = &type metadata for RemoteParticipantLinkProvider;
  v48 = &protocol witness table for RemoteParticipantLinkProvider;
  type metadata accessor for DeviceConnectionBroker();
  v15 = swift_allocObject();
  *(v15 + 152) = 0;
  *(v15 + 160) = 0;
  sub_265BB9CAC(v49, v15 + 16);
  *(v15 + 56) = v12;
  *(v15 + 64) = v14;
  sub_265BF2EC0();
  swift_allocObject();
  v16 = sub_265BF2EB0();
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  *(v15 + 112) = v16;
  sub_265BB4A90(&v46, v15 + 72);
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 120) = a1 & 1;
  v18 = *(v3 + 40);
  v17 = *(v3 + 48);
  v39 = *(v3 + 72);
  v43 = *(v3 + 56);
  sub_265BB9CAC(v3, v49);

  sub_265BF3050();
  type metadata accessor for RemoteParticipantDiscovery();
  v19 = swift_allocObject();
  (*(v6 + 16))(v9, v11, v5);
  v20 = sub_265BB9B7C(v9, v19);
  v41 = v20;
  (*(v6 + 8))(v11, v5);
  v47 = &type metadata for RemoteParticipantLinkProvider;
  v48 = &protocol witness table for RemoteParticipantLinkProvider;
  v45[3] = v5;
  v45[4] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_0(v45);
  sub_265BF3050();
  v38 = type metadata accessor for RemoteParticipantConnectionBroker(0);
  v21 = swift_allocObject();
  sub_265BB9CAC(v49, v21 + 16);
  *(v21 + 56) = v15;
  *(v21 + 64) = &off_287776A58;
  *(v21 + 72) = v20;
  *(v21 + 80) = &protocol witness table for RemoteParticipantDiscovery;
  *(v21 + 88) = v18;
  *(v21 + 96) = v17;
  v40 = v17;
  sub_265BB9CAC(&v46, v21 + 104);
  swift_allocObject();

  swift_unknownObjectRetain();
  *(v21 + 144) = sub_265BF2EB0();
  type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  swift_storeEnumTagMultiPayload();
  sub_265BF3000();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v21 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_subscriptionToken) = sub_265BF2FF0();
  sub_265BB9CAC(v45, v21 + 152);
  *(v21 + 192) = v43;
  *(v21 + 208) = v39;
  v22 = *(v21 + 80);
  ObjectType = swift_getObjectType();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v22 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v25(sub_265BB9D10, v24, ObjectType, v22);
  swift_unknownObjectRelease();

  v26 = *(v21 + 80);
  v27 = swift_getObjectType();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v26 + 8);
  swift_unknownObjectRetain();

  v29(sub_265BB9D18, v28, v27, v26);
  swift_unknownObjectRelease();

  v30 = *(v21 + 56);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = *(v30 + 152);
  v33 = *(v30 + 160);
  *(v30 + 152) = sub_265BB9D20;
  *(v30 + 160) = v31;
  swift_unknownObjectRetain();
  swift_retain_n();
  sub_265BB060C(v32, v33);
  swift_unknownObjectRelease();

  swift_getObjectType();
  sub_265BF3100();
  swift_allocObject();
  swift_weakInit();

  sub_265BF2FB0();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(&v46);
  v34 = v42;
  v42[3] = v38;
  v34[4] = &off_287774C58;
  v35 = v34;

  *v35 = v21;
  return result;
}

uint64_t sub_265BB9B7C(uint64_t a1, uint64_t a2)
{
  v14 = &type metadata for RemoteParticipantLinkProvider;
  v15 = &protocol witness table for RemoteParticipantLinkProvider;
  v11 = &type metadata for BluetoothScannerProvider;
  v12 = &protocol witness table for BluetoothScannerProvider;
  v4 = sub_265BF3060();
  v8 = v4;
  v9 = MEMORY[0x277D4F358];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v7);
  (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, a1, v4);
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 296) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 144) = sub_265BE5450(MEMORY[0x277D84F90]);
  sub_265BF2EC0();
  swift_allocObject();
  *(a2 + 16) = sub_265BF2EB0();
  sub_265BB4A90(&v13, a2 + 24);
  sub_265BB4A90(&v10, a2 + 104);
  sub_265BB4A90(&v7, a2 + 64);
  return a2;
}

uint64_t sub_265BB9CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_265BB9D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_265BB9DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RemoteParticipantError.init(error:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF2D20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v8 = sub_265BF3720();
  v10 = v9;
  swift_getErrorValue();
  v11 = sub_265BF3710();
  v25[1] = *MEMORY[0x277D44250];
  if (sub_265BF3340() == v8 && v12 == v10)
  {

    if (v11 == -71165)
    {
LABEL_7:
      v15 = MEMORY[0x277D525E0];
LABEL_24:

LABEL_25:
      (*(v5 + 104))(v7, *v15, v4);
      (*(v5 + 32))(a2, v7, v4);
      v21 = 0;
      return (*(v5 + 56))(a2, v21, 1, v4);
    }
  }

  else
  {
    v14 = sub_265BF36E0();

    if ((v14 & 1) != 0 && v11 == -71165)
    {
      goto LABEL_7;
    }
  }

  if (sub_265BF3340() == v8 && v16 == v10)
  {
  }

  else
  {
    v18 = sub_265BF36E0();

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v11 == -6776)
  {
    v15 = MEMORY[0x277D52618];
    goto LABEL_24;
  }

LABEL_18:
  if (sub_265BF3340() == v8 && v19 == v10)
  {
  }

  else
  {
    v20 = sub_265BF36E0();

    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v11 == -25300)
  {
    v15 = MEMORY[0x277D52630];
    goto LABEL_24;
  }

LABEL_27:
  if (sub_265BF3340() == v8 && v23 == v10)
  {

    if (v11 != -6754)
    {
      v21 = 1;
      return (*(v5 + 56))(a2, v21, 1, v4);
    }

    goto LABEL_33;
  }

  v24 = sub_265BF36E0();

  v21 = 1;
  if ((v24 & 1) != 0 && v11 == -6754)
  {
LABEL_33:
    v15 = MEMORY[0x277D52630];
    goto LABEL_25;
  }

  return (*(v5 + 56))(a2, v21, 1, v4);
}

uint64_t RemoteParticipantError.init(reason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&unk_279BBA9C8 + a1);
  v4 = sub_265BF2D20();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_265BBA26C(uint64_t a1, void *a2)
{
  if (*(*a1 + 16))
  {
    sub_265BB9CAC(*a1 + 32, v42);
    v3 = [a2 effectiveIdentifier];
    v4 = sub_265BF3340();
    v40 = v5;
    v41 = v4;

    v6 = [a2 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_265BF3340();
      v10 = v9;
    }

    else
    {
      v15 = v43;
      v16 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v8 = (*(v16 + 48))(v15, v16);
      v10 = v17;
    }

    v18 = [a2 model];
    if (v18)
    {
      v19 = v18;
      v20 = sub_265BF3340();
      v22 = v21;
    }

    else
    {
      v23 = v43;
      v24 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v20 = (*(v24 + 56))(v23, v24);
      v22 = v25;
    }

    v26 = [a2 idsDeviceIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_265BF3340();
      v30 = v29;
    }

    else
    {
      v31 = v43;
      v32 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v28 = (*(v32 + 32))(v31, v32);
      v30 = v33;
    }

    v34 = v43;
    v35 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v36 = (*(v35 + 24))(v34, v35);
    v38 = v37;
    v39 = swift_allocObject();
    v39[2] = v41;
    v39[3] = v40;
    v39[4] = v8;
    v39[5] = v10;
    v39[6] = v20;
    v39[7] = v22;
    v39[8] = v28;
    v39[9] = v30;
    v39[10] = v36;
    v39[11] = v38;
    sub_265BF2E00();
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    v11 = sub_265BF2D20();
    sub_265BB90C0();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D52670], v11);
    *(swift_allocObject() + 16) = v12;

    return sub_265BF2E00();
  }
}

uint64_t LocalDeviceProvider.queryLocalDeviceIdentity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C320, &qword_265BF4990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_265BBABEC();
  sub_265BF2DF0();
  sub_265BBAC38(v0, v17);
  v8 = swift_allocObject();
  v9 = v17[1];
  *(v8 + 16) = v17[0];
  *(v8 + 32) = v9;
  *(v8 + 48) = v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBAC70;
  *(v10 + 24) = v8;
  (*(v2 + 16))(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v11, v5, v1);
  v14 = (v13 + v12);
  *v14 = sub_265BBAC78;
  v14[1] = v10;
  sub_265BF2DF0();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_265BBA7E8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C338, &qword_265BF47D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(1, v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_265BBB03C;
  v17[1] = v13;
  v18 = a1;
  sub_265BF2DF0();
  return (*(v5 + 8))(v10, v4);
}

void sub_265BBA9F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277D44160]);

  v6 = [v5 init];
  v7 = swift_allocObject();
  v7[2] = sub_265BBB2F8;
  v7[3] = v4;
  v7[4] = v6;
  v16 = sub_265BBB338;
  v17 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_265BAFDBC;
  v15 = &block_descriptor_1;
  v8 = _Block_copy(&v12);

  v9 = v6;

  [v9 setLocalDeviceUpdatedHandler_];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBB2F8;
  *(v10 + 24) = v4;
  v16 = sub_265BBB390;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_265BD5854;
  v15 = &block_descriptor_42;
  v11 = _Block_copy(&v12);

  [v9 activateWithCompletion_];
  _Block_release(v11);
}

unint64_t sub_265BBABEC()
{
  result = qword_2810683C8;
  if (!qword_2810683C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810683C8);
  }

  return result;
}

void sub_265BBACA4(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }
}

uint64_t sub_265BBAD04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C320, &qword_265BF4990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_265BBABEC();
  sub_265BF2DF0();
  sub_265BBAC38(v0, v17);
  v8 = swift_allocObject();
  v9 = v17[1];
  *(v8 + 16) = v17[0];
  *(v8 + 32) = v9;
  *(v8 + 48) = v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBB39C;
  *(v10 + 24) = v8;
  (*(v2 + 16))(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v11, v5, v1);
  v14 = (v13 + v12);
  *v14 = sub_265BBB3A4;
  v14[1] = v10;
  sub_265BF2DF0();
  return (*(v2 + 8))(v7, v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265BBAF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265BBAFE4(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_5Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_265BBB108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265BBB1D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_265BBB224@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_265BBB29C(v8, &v7);
}

uint64_t sub_265BBB2F8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

id sub_265BBB338(uint64_t a1)
{
  v2 = *(v1 + 32);
  (*(v1 + 16))(a1, 0);

  return [v2 invalidate];
}

uint64_t DeviceIdentity.init(identifier:name:model:idsIdentifier:identityResolvingKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t DeviceIdentity.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceIdentity.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeviceIdentity.model.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeviceIdentity.idsIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeviceIdentity.identityResolvingKey.getter()
{
  v1 = *(v0 + 64);
  sub_265BBB4BC(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_265BBB4BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_265BBB4D0(a1, a2);
  }

  return a1;
}

uint64_t sub_265BBB4D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t DeviceIdentity.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  sub_265BF3390();
  if (v3)
  {
    sub_265BF37D0();
    sub_265BF3390();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_265BF37D0();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_265BF37D0();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_265BF37D0();
  sub_265BF3390();
  if (v5)
  {
LABEL_4:
    sub_265BF37D0();
    sub_265BF3390();
    goto LABEL_8;
  }

LABEL_7:
  sub_265BF37D0();
LABEL_8:
  if (v7 >> 60 == 15)
  {
    return sub_265BF37D0();
  }

  sub_265BF37D0();

  return MEMORY[0x28211D370](a1, v6, v7);
}

uint64_t DeviceIdentity.hashValue.getter()
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BBB6AC()
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BBB6F0(uint64_t a1)
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v2);
  return sub_265BF37E0();
}

uint64_t sub_265BBB730@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_265BF2B50();
    if (v10)
    {
      v11 = sub_265BF2B70();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_265BF2B60();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_265BF2B50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265BF2B70();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265BF2B60();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_265BBB960(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_265BBBAF0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265BBB1D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_265BBB730(v13, a3, a4, &v12);
  v10 = v4;
  sub_265BBB1D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_265BBBAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265BF2B50();
  v11 = result;
  if (result)
  {
    result = sub_265BF2B70();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_265BF2B60();
  sub_265BBB730(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_265BBBBA8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265BBB4D0(a3, a4);
          return sub_265BBB960(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s19SeymourServicesCore14DeviceIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v20 = a1[9];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v15 = a2[6];
  v16 = a1[6];
  v17 = a2[8];
  v18 = a1[8];
  v19 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_265BF36E0() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (sub_265BF36E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v4 != v9 || v5 != v10) && (sub_265BF36E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v11 || (v16 != v15 || v6 != v11) && (sub_265BF36E0() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v20 >> 60 == 15)
  {
    v12 = v19;
    if (v19 >> 60 == 15)
    {
      sub_265BBB4BC(v18, v20);
      sub_265BBB4BC(v17, v19);
      sub_265BBC0A4(v18, v20);
      return 1;
    }

    goto LABEL_29;
  }

  v12 = v19;
  if (v19 >> 60 == 15)
  {
LABEL_29:
    sub_265BBB4BC(v18, v20);
    sub_265BBB4BC(v17, v12);
    sub_265BBC0A4(v18, v20);
    sub_265BBC0A4(v17, v12);
    return 0;
  }

  sub_265BBB4BC(v18, v20);
  sub_265BBB4BC(v17, v19);
  v14 = sub_265BBBBA8(v18, v20, v17, v19);
  sub_265BBC0A4(v17, v19);
  sub_265BBC0A4(v18, v20);
  return v14;
}

unint64_t sub_265BBBF60()
{
  result = qword_28003C350;
  if (!qword_28003C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C350);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265BBBFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_265BBC040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BBC0A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_265BBB1D0(result, a2);
  }

  return result;
}

uint64_t sub_265BBC0D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_265BF3340();

  return v6;
}

void sub_265BBC17C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BD5854;
    v4[3] = &block_descriptor_2;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_265BBC2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4BC0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000265BF9930;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BF9950;
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000265BF9970;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
  sub_265BF3670();
  v1 = sub_265BF3330();

  *(inited + 96) = v1;
  *(inited + 104) = 0x65636976726573;
  *(inited + 112) = 0xE700000000000000;
  sub_265BF3670();
  v2 = sub_265BF3330();

  *(inited + 120) = v2;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  sub_265BF3670();
  v3 = sub_265BF3330();

  *(inited + 144) = v3;
  v4 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_265BBC50C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_265BF3040();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265BBC5B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BBC5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall AggressiveBluetoothScanning.activate()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  (*(v2 + 8))(sub_265BBC794, 0, v3, v2);
}

uint64_t sub_265BBC794(void *a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_265BF3130();
    v8 = a1;
    v9 = sub_265BF3230();
    v10 = sub_265BF34D0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x26676D550](v16[2], v16[3]);
      v15 = sub_265BB064C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_265BAD000, v9, v10, "Error activating SF aggressive scanner: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x26676DCA0](v12, -1, -1);
      MEMORY[0x26676DCA0](v11, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_265BBC984(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_265BD5854;
    v5[3] = &block_descriptor_3;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 activateWithCompletion_];
  _Block_release(v4);
}

id RemoteParticipantHostLinkProvider.makeLink()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D54CE0]) init];
  [v0 setIdentifier_];
  [v0 setAdvertiseRate_];
  v1 = sub_265BF3330();
  [v0 setLabel_];

  [v0 setDeviceActionType_];
  [v0 setPairSetupDisabled_];
  [v0 setNeedsKeyboard_];
  return v0;
}

id (*sub_265BBCBDC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flags];
  return sub_265BBCC30;
}

id (*sub_265BBCC6C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 controlFlags];
  return sub_265BBCCC0;
}

uint64_t (*sub_265BBCCD4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBCD48(v2);
  return sub_265BBCD44;
}

void (*sub_265BBCD48(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 serviceType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_265BF3340();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_265BBCDD0;
}

void sub_265BBCDD0(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = sub_265BF3330();
    }

    else
    {
      v4 = 0;
    }

    [a1[2] setServiceType_];
  }

  else if (v3)
  {
    v4 = sub_265BF3330();

    [a1[2] setServiceType_];
  }

  else
  {
    v4 = 0;
    [a1[2] setServiceType_];
  }
}

id sub_265BBCEA4()
{
  v1 = [v0 localDevice];

  return v1;
}

uint64_t (*sub_265BBCEDC())()
{
  result = [v0 localDeviceUpdatedHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBCF64(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBCFD4(v2);
  return sub_265BBE688;
}

void (*sub_265BBCFD4(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 localDeviceUpdatedHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE684;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD09C;
}

id sub_265BBD0B8()
{
  v1 = [v0 destinationDevice];

  return v1;
}

void sub_265BBD0F0(void *a1)
{
  [v1 setDestinationDevice_];
}

void (*sub_265BBD138(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 destinationDevice];
  return sub_265BBD194;
}

void sub_265BBD194(id *a1)
{
  v1 = *a1;
  [a1[1] setDestinationDevice_];
}

uint64_t (*sub_265BBD1DC())()
{
  result = [v0 deviceFoundHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBD250(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBD2C0(v2);
  return sub_265BBE688;
}

void (*sub_265BBD2C0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceFoundHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE684;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD388;
}

uint64_t (*sub_265BBD3A4())()
{
  result = [v0 deviceLostHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBD418(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBD488(v2);
  return sub_265BBE688;
}

void (*sub_265BBD488(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceLostHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5C8;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD550;
}

void sub_265BBD56C(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  if (a2)
  {
    if (v7)
    {
      v8 = v6[7];
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BAFDBC;
      v6[3] = a5;
      v9 = _Block_copy(v6);
    }

    else
    {
      v9 = 0;
    }

    [v6[8] *a4];
    _Block_release(v9);
    sub_265BB060C(v6[6], v6[7]);
  }

  else
  {
    if (v7)
    {
      v10 = v6[7];
      v6[4] = v7;
      v6[5] = v10;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BAFDBC;
      v6[3] = a3;
      v11 = _Block_copy(v6);
    }

    else
    {
      v11 = 0;
    }

    [v6[8] *a4];
    _Block_release(v11);
  }

  free(v6);
}

uint64_t (*sub_265BBD6C8())()
{
  result = [v0 deviceChangedHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE624;
  }

  return result;
}

void sub_265BBD73C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t (*sub_265BBD7B0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBD820(v2);
  return sub_265BBE688;
}

void (*sub_265BBD820(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceChangedHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5B0;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD8E8;
}

void sub_265BBD8E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_265BBD73C;
      v2[3] = &block_descriptor_54;
      v5 = _Block_copy(v2);
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setDeviceChangedHandler_];
    _Block_release(v5);
    sub_265BB060C(v2[6], v2[7]);
  }

  else
  {
    if (v3)
    {
      v6 = v2[7];
      v2[4] = v3;
      v2[5] = v6;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_265BBD73C;
      v2[3] = &block_descriptor_57;
      v7 = _Block_copy(v2);
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setDeviceChangedHandler_];
    _Block_release(v7);
  }

  free(v2);
}

uint64_t (*sub_265BBDA50())()
{
  result = [v0 invalidationHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

uint64_t (*sub_265BBDAD8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBDB48(v2);
  return sub_265BBE688;
}

void (*sub_265BBDB48(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 invalidationHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE628;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBDC10;
}

uint64_t (*sub_265BBDC2C())()
{
  result = [v0 interruptionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

uint64_t (*sub_265BBDCB4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBDD24(v2);
  return sub_265BBE688;
}

void (*sub_265BBDD24(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 interruptionHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE628;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBDDEC;
}

uint64_t (*sub_265BBDE08())()
{
  result = [v0 disconnectHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

void sub_265BBDE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265BB5860;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

uint64_t (*sub_265BBDF38(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_265BBDFF0(v2);
  return sub_265BBE688;
}

void sub_265BBDFA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_265BBDFF0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 disconnectHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5A0;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBE0B8;
}

void sub_265BBE0D4(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  if (a2)
  {
    if (v7)
    {
      v8 = v6[7];
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BB5860;
      v6[3] = a5;
      v9 = _Block_copy(v6);
    }

    else
    {
      v9 = 0;
    }

    [v6[8] *a4];
    _Block_release(v9);
    sub_265BB060C(v6[6], v6[7]);
  }

  else
  {
    if (v7)
    {
      v10 = v6[7];
      v6[4] = v7;
      v6[5] = v10;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BB5860;
      v6[3] = a3;
      v11 = _Block_copy(v6);
    }

    else
    {
      v11 = 0;
    }

    [v6[8] *a4];
    _Block_release(v11);
  }

  free(v6);
}

void sub_265BBE230(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BD5854;
    v4[3] = &block_descriptor_4;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_265BBE68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4D80;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0x6D6F44726F727265;
  *(inited + 88) = 0xEB000000006E6961;
  *(inited + 96) = sub_265BF3330();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x8000000265BF9950;
  *(inited + 120) = sub_265BF3330();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000265BF9970;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
  sub_265BF3670();
  v1 = sub_265BF3330();

  *(inited + 144) = v1;
  *(inited + 152) = 0x65636976726573;
  *(inited + 160) = 0xE700000000000000;
  sub_265BF3670();
  v2 = sub_265BF3330();

  *(inited + 168) = v2;
  *(inited + 176) = 0x6369706F74;
  *(inited + 184) = 0xE500000000000000;
  sub_265BF3670();
  v3 = sub_265BF3330();

  *(inited + 192) = v3;
  v4 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v4;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265BBE964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BBE9AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BBEA14(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v3 = sub_265BF2D90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  sub_265BF3130();
  v13 = *(v4 + 16);
  v39 = v2;
  v13(v6, v2, v3);
  v14 = sub_265BF3230();
  v15 = sub_265BF34E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v7;
    v17 = v16;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v17 = 136446210;
    sub_265BBF888(&qword_28003C438, MEMORY[0x277D537B0], MEMORY[0x277D537C8]);
    v18 = sub_265BF36D0();
    v35 = v8;
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    v21 = sub_265BB064C(v18, v20, &v41);
    v8 = v35;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_265BAD000, v14, v15, "Validating handshake request: %{public}s", v17, 0xCu);
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x26676DCA0](v22, -1, -1);
    v23 = v17;
    v7 = v36;
    MEMORY[0x26676DCA0](v23, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v24 = *(v8 + 8);
  v24(v12, v7);
  v25 = sub_265BF2D80();
  v26 = v40;
  if (v25 >= v38 && sub_265BF2D70() <= v37)
  {
    return sub_265BF2E50();
  }

  sub_265BF3130();
  v27 = sub_265BF3230();
  v28 = sub_265BF34D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349312;
    *(v29 + 4) = 8;
    *(v29 + 12) = 2050;
    *(v29 + 14) = 6;
    _os_log_impl(&dword_265BAD000, v27, v28, "Request incompatible with host version: %{public}ld, minimum required version (%{public}ld", v29, 0x16u);
    MEMORY[0x26676DCA0](v29, -1, -1);
  }

  v24(v26, v7);
  v30 = sub_265BF2D20();
  sub_265BBF888(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
  v31 = swift_allocError();
  (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D52648], v30);
  *(swift_allocObject() + 16) = v31;
  return sub_265BF2E00();
}

uint64_t sub_265BBEEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v42[1] = a3;
  v5 = sub_265BF3240();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v42 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v42 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  sub_265BF3130();
  sub_265BF3220();
  v21 = *(v6 + 8);
  v21(v20, v5);
  sub_265BBF7B0(a1, &v43);
  if (v44)
  {
    sub_265BB4A90(&v43, v45);
    v22 = sub_265BF2E70();
    if (v22 == sub_265BF2E70())
    {
      sub_265BF3130();
      v23 = sub_265BF3230();
      v24 = sub_265BF34E0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_265BAD000, v23, v24, "TV is always assumed to be unlocked", v25, 2u);
        MEMORY[0x26676DCA0](v25, -1, -1);
      }

      v26 = v12;
    }

    else
    {
      if (v3 - 1 >= 2 && v3)
      {
        goto LABEL_19;
      }

      v31 = v46;
      v32 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      (*(v32 + 16))(v31, v32);
      if (sub_265BF3030())
      {
        sub_265BF3130();
        v33 = sub_265BF3230();
        v34 = sub_265BF34D0();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_265BAD000, v33, v34, "Device locked, rejecting remote participant handshake", v35, 2u);
          MEMORY[0x26676DCA0](v35, -1, -1);
        }

        v21(v15, v5);
        v36 = sub_265BF2D20();
        sub_265BBF888(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D525F0], v36);
        *(swift_allocObject() + 16) = v37;
        sub_265BF2E00();
        return __swift_destroy_boxed_opaque_existential_0Tm(v45);
      }

      sub_265BF3130();
      v39 = sub_265BF3230();
      v40 = sub_265BF34E0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_265BAD000, v39, v40, "We are unlocked!!", v41, 2u);
        MEMORY[0x26676DCA0](v41, -1, -1);
      }

      v26 = v18;
    }

    v21(v26, v5);
LABEL_19:
    sub_265BF2E50();
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  sub_265BBF820(&v43);
  sub_265BF3130();
  v27 = sub_265BF3230();
  v28 = sub_265BF34E0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_265BAD000, v27, v28, "No data protection monitor, assuming we are unlocked", v29, 2u);
    MEMORY[0x26676DCA0](v29, -1, -1);
  }

  v21(v9, v5);
  return sub_265BF2E50();
}

uint64_t RemoteParticipantHandshakeRequest.validateHandshake(dataProtectionMonitor:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v36 = &v30 - v14;
  v15 = sub_265BF3240();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v16 + 8))(v18, v15);
  sub_265BBEA14(8, 6);
  v32 = v13;
  sub_265BBEEE4(v34, a2, v13);
  v19 = v5;
  v20 = *(v5 + 16);
  v20(v10, v13, v4);
  v21 = *(v19 + 80);
  v31 = v19;
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  v24 = *(v19 + 32);
  v24(v23 + v22, v10, v4);
  v25 = v33;
  v20(v33, v36, v4);
  v26 = swift_allocObject();
  v24(v26 + v22, v25, v4);
  v27 = (v26 + ((v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_265BB2398;
  v27[1] = v23;
  sub_265BF2DF0();
  v28 = *(v31 + 8);
  v28(v32, v4);
  return (v28)(v36, v4);
}

uint64_t sub_265BBF7B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C430, &qword_265BF4E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BBF820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C430, &qword_265BF4E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265BBF888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BBF8EC(void *a1)
{
  v2 = sub_265BF2D20();
  v36 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C440, &qword_265BF4E38);
  v37 = sub_265BF3360();
  v7 = v6;
  swift_getErrorValue();
  v8 = sub_265BF3720();
  v10 = v9;
  swift_getErrorValue();
  v11 = sub_265BF3710();
  v13 = sub_265BF3340() == v8 && v12 == v10;
  v38 = v11;
  if (v13)
  {

    if (v11 == -71165)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = sub_265BF36E0();

    if ((v14 & 1) != 0 && v38 == -71165)
    {
      goto LABEL_26;
    }
  }

  if (sub_265BF3340() == v8 && v15 == v10)
  {
  }

  else
  {
    v17 = sub_265BF36E0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v38 != -6714)
  {
LABEL_17:
    v18 = v37 == v8 && v7 == v10;
    v19 = v18;
    v35 = v19;
    if (!v18 && (sub_265BF36E0() & 1) == 0)
    {
      goto LABEL_30;
    }

    v20 = *MEMORY[0x277D525E0];
    v21 = v36;
    v34 = *(v36 + 104);
    v34(v5, v20, v2);
    sub_265BB90C0();
    v22 = sub_265BF3710();
    (*(v21 + 8))(v5, v2);
    if (v22 == v38)
    {
      goto LABEL_26;
    }

    if (v35)
    {
      v24 = v36;
      v25 = v34;
    }

    else
    {
LABEL_30:
      if ((sub_265BF36E0() & 1) == 0)
      {
LABEL_35:
        if ((sub_265BF36E0() & 1) == 0)
        {
          goto LABEL_41;
        }

        v28 = *(v36 + 104);
LABEL_37:
        v29 = v28;
        v28(v5, *MEMORY[0x277D525F0], v2);
        sub_265BB90C0();
        v30 = sub_265BF3710();
        (*(v36 + 8))(v5, v2);
        if (v30 == v38)
        {

          return 2;
        }

        if (v35)
        {

          v31 = v36;
          goto LABEL_43;
        }

LABEL_41:
        v32 = sub_265BF36E0();

        if ((v32 & 1) == 0)
        {

          return 4;
        }

        v31 = v36;
        v29 = *(v36 + 104);
LABEL_43:
        v29(v5, *MEMORY[0x277D52600], v2);
        sub_265BB90C0();
        v33 = sub_265BF3710();

        (*(v31 + 8))(v5, v2);
        if (v33 == v38)
        {
          return 3;
        }

        return 4;
      }

      v24 = v36;
      v25 = *(v36 + 104);
    }

    v26 = *MEMORY[0x277D52648];
    v34 = v25;
    v25(v5, v26, v2);
    sub_265BB90C0();
    v27 = sub_265BF3710();
    (*(v24 + 8))(v5, v2);
    if (v27 == v38)
    {

      return 1;
    }

    v28 = v34;
    if (v35)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_26:

  return 0;
}

uint64_t RPClient.requestIdentities(matching:)(int a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C448, &qword_265BF4E40);

  return sub_265BF2DF0();
}

void sub_265BBFE84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_265BBB2F8;
  *(v9 + 24) = v8;
  v11[4] = sub_265BC03C0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_265BC0280;
  v11[3] = &block_descriptor_5;
  v10 = _Block_copy(v11);

  [a3 getIdentitiesWithFlags:a4 completion:v10];
  _Block_release(v10);
}

void sub_265BBFFB0(unint64_t a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = sub_265BC00C8(a1);
    a3(v4, 0);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      a3(a2, 1);
      v7 = a2;
    }

    else
    {
      v8 = sub_265BF2D20();
      sub_265BB90C0();
      v9 = swift_allocError();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D52668], v8);
      a3(v9, 1);
      v7 = v9;
    }
  }
}

void *sub_265BC00C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_265BF3690();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_265BC041C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26676D450](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_265BC041C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_265BC03D0();
        v16 = &protocol witness table for RPIdentity;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_265BB4A90(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_265BC041C((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_265BC03D0();
        v16 = &protocol witness table for RPIdentity;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_265BB4A90(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_265BC0280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_265BC03D0();
    v4 = sub_265BF33F0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_265BC0314(int a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C448, &qword_265BF4E40);

  return sub_265BF2DF0();
}

unint64_t sub_265BC03D0()
{
  result = qword_28003C450;
  if (!qword_28003C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C450);
  }

  return result;
}

void *sub_265BC041C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BC043C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265BC043C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C458, &qword_265BF4E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C460, &qword_265BF4EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t RemoteParticipantDiscovery.__allocating_init(linkProvider:bluetoothScannerProvider:timerProvider:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  v8 = a1[3];
  v7 = a1[4];
  v28 = v6;
  v29 = v7;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v27 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a3[3];
  v18 = a3[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a3, v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_265BC3370(v11, v16, v22, v28, v8, v19, v13, v29, v18, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v24;
}

uint64_t RemoteParticipantDiscovery.init(linkProvider:bluetoothScannerProvider:timerProvider:)(void *a1, void *a2, void *a3)
{
  v6 = a1[3];
  v26 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2[3];
  v25 = a2[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_265BC3370(v9, v14, v20, v27, v6, v17, v11, v26, v16, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v22;
}

uint64_t *RemoteParticipantDiscovery.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  RemoteParticipantDiscovery.endDiscovering()();
  v6 = sub_265BF2E40();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v6(sub_265BC355C, v7);

  (*(v3 + 8))(v5, v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  sub_265BB07B4((v0 + 19));
  sub_265BB060C(v1[30], v1[31]);
  sub_265BB060C(v1[32], v1[33]);
  sub_265BB060C(v1[34], v1[35]);
  sub_265BB060C(v1[36], v1[37]);
  return v0;
}

uint64_t RemoteParticipantDiscovery.__deallocating_deinit()
{
  RemoteParticipantDiscovery.deinit();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

void sub_265BC0C38(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(a1, 1);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      MEMORY[0x28223BE20](Strong);
      sub_265BF2EA0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3810();
    a2(v8, v9);
    sub_265BB85E0(v8, v9);
  }
}

uint64_t sub_265BC0D98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_265BC3A08(a2, a1 + 152);
  return swift_endAccess();
}

void sub_265BC0DFC(void *a1, int a2)
{
  LODWORD(v113) = a2;
  v117 = sub_265BF2CC0();
  v4 = *(v117 - 8);
  v5 = MEMORY[0x28223BE20](v117);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v107 - v8;
  MEMORY[0x28223BE20](v7);
  v119 = &v107 - v9;
  v10 = sub_265BF3240();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v107 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v114 = &v107 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v107 - v23;
  swift_beginAccess();
  v118 = v2;
  sub_265BB0718(v2 + 152, v121);
  if (v121[1])
  {

    swift_unknownObjectRelease();
    v25 = v122;
    swift_unknownObjectRelease();
    sub_265BB0750(&v123, &qword_28003C480, &qword_265BF4EC8);
    if (sub_265BB0998(a1, v25))
    {
      v111 = v4;
      sub_265BF3140();
      v26 = a1;
      v27 = sub_265BF3230();
      v28 = sub_265BF34E0();

      v29 = os_log_type_enabled(v27, v28);
      v115 = v10;
      v110 = v11;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v121[0] = v31;
        *v30 = 136446722;
        v120 = v25;
        v32 = sub_265BF3350();
        v34 = sub_265BB064C(v32, v33, v121);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        v35 = RPDeviceChangeFlags.logOutput.getter(v113);
        v37 = sub_265BB064C(v35, v36, v121);

        *(v30 + 14) = v37;
        *(v30 + 22) = 2114;
        *(v30 + 24) = v26;
        v38 = v109;
        *v109 = v26;
        v39 = v26;
        _os_log_impl(&dword_265BAD000, v27, v28, "Discovery (%{public}s has a changed device: %{public}s -> %{public}@", v30, 0x20u);
        sub_265BB0750(v38, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v38, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v31, -1, -1);
        MEMORY[0x26676DCA0](v30, -1, -1);

        v40 = *(v110 + 8);
        v41 = v24;
        v42 = v115;
      }

      else
      {

        v40 = *(v11 + 8);
        v41 = v24;
        v42 = v10;
      }

      v113 = v40;
      v40(v41, v42);
      v63 = v117;
      v64 = v26;
      v65 = v119;
      v109 = v64;
      sub_265BB8C58(v64, v25, v119);
      sub_265BF3140();
      v66 = v111;
      v67 = *(v111 + 16);
      v68 = v116;
      v67(v116, v65, v63);
      v69 = sub_265BF3230();
      v70 = sub_265BF34E0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v108 = v67;
        v72 = v68;
        v73 = v71;
        v74 = swift_slowAlloc();
        v121[0] = v74;
        *v73 = 136446210;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v75 = sub_265BF36D0();
        v76 = v63;
        v78 = v77;
        v79 = *(v66 + 8);
        v80 = v72;
        v67 = v108;
        v79(v80, v76);
        v81 = sub_265BB064C(v75, v78, v121);

        *(v73 + 4) = v81;
        _os_log_impl(&dword_265BAD000, v69, v70, "Updating previously discovered participant: %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        MEMORY[0x26676DCA0](v74, -1, -1);
        MEMORY[0x26676DCA0](v73, -1, -1);

        v82 = v79;
      }

      else
      {

        v82 = *(v66 + 8);
        v82(v68, v63);
      }

      v83 = v113(v22, v115);
      v84 = v118;
      MEMORY[0x28223BE20](v83);
      v85 = v109;
      *(&v107 - 2) = v84;
      *(&v107 - 1) = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
      sub_265BF2EA0();
      v86 = v121[0];
      if (v121[0])
      {
        swift_beginAccess();
        v87 = *(v84 + 34);
        if (v87)
        {
          v88 = *(v84 + 35);
          swift_endAccess();

          v89 = v119;
          v87(v119);
          sub_265BB060C(v87, v88);

          v82(v89, v117);
        }

        else
        {
          v82(v119, v117);
          swift_endAccess();
        }
      }

      else
      {
        v118 = v82;
        v90 = v114;
        sub_265BF3140();
        v91 = v112;
        v92 = v117;
        v67(v112, v119, v117);
        v93 = sub_265BF3230();
        v94 = sub_265BF34E0();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v121[0] = v96;
          *v95 = 136446210;
          sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
          v97 = sub_265BF36D0();
          v98 = v91;
          v100 = v99;
          v101 = v118;
          v118(v98, v92);
          v102 = sub_265BB064C(v97, v100, v121);

          *(v95 + 4) = v102;
          _os_log_impl(&dword_265BAD000, v93, v94, "We don't have a registered device for %{public}s, broadcasting discovery!", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          MEMORY[0x26676DCA0](v96, -1, -1);
          MEMORY[0x26676DCA0](v95, -1, -1);

          v103 = v114;
        }

        else
        {

          v101 = v118;
          v118(v91, v92);
          v103 = v90;
        }

        v113(v103, v115);
        swift_beginAccess();
        v104 = *(v84 + 30);
        if (v104)
        {
          v105 = *(v84 + 31);
          swift_endAccess();

          v106 = v119;
          v104(v119);
          sub_265BB060C(v104, v105);
          v101(v106, v92);
        }

        else
        {
          v101(v119, v92);
          swift_endAccess();
        }
      }
    }

    else
    {
      sub_265BF3140();
      v51 = a1;
      v52 = sub_265BF3230();
      v53 = sub_265BF34E0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v11;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v115 = v10;
        v57 = v56;
        v58 = swift_slowAlloc();
        v121[0] = v58;
        *v55 = 138543618;
        *(v55 + 4) = v51;
        *v57 = v51;
        *(v55 + 12) = 2082;
        v120 = v25;
        v59 = v51;
        v60 = sub_265BF3350();
        v62 = sub_265BB064C(v60, v61, v121);

        *(v55 + 14) = v62;
        _os_log_impl(&dword_265BAD000, v52, v53, "%{public}@ is no longer supported as %{public}s...", v55, 0x16u);
        sub_265BB0750(v57, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v57, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x26676DCA0](v58, -1, -1);
        MEMORY[0x26676DCA0](v55, -1, -1);

        (*(v54 + 8))(v17, v115);
      }

      else
      {

        (*(v11 + 8))(v17, v10);
      }

      sub_265BC1A38(v51);
    }
  }

  else
  {
    sub_265BB07B4(v121);
    sub_265BF3140();
    v43 = a1;
    v44 = sub_265BF3230();
    v45 = sub_265BF34D0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v11;
      v48 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v43;
      *v48 = v43;
      v49 = v43;
      _os_log_impl(&dword_265BAD000, v44, v45, "Changed device while inactive: %{public}@", v46, 0xCu);
      sub_265BB0750(v48, &qword_28003C4A0, &qword_265BF5020);
      v50 = v48;
      v11 = v47;
      MEMORY[0x26676DCA0](v50, -1, -1);
      MEMORY[0x26676DCA0](v46, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265BC1A38(void *a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v75 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = sub_265BF2CC0();
  v74 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  swift_beginAccess();
  sub_265BB0718((v2 + 19), v77);
  if (v77[1])
  {
    v72 = v18;
    v73 = v4;
    v19 = v13;

    swift_unknownObjectRelease();
    v20 = v78;
    swift_unknownObjectRelease();
    v21 = sub_265BB0750(&v79, &qword_28003C480, &qword_265BF4EC8);
    v22 = v2[2];
    MEMORY[0x28223BE20](v21);
    *(&v67 - 2) = v2;
    *(&v67 - 1) = a1;
    v71 = v22;
    sub_265BF2EA0();
    if (LOBYTE(v77[0]) == 1)
    {
      v70 = 0;
      v23 = a1;
      v24 = v72;
      sub_265BB8C58(v23, v20, v72);
      sub_265BF3140();
      v25 = v74;
      v26 = v19;
      (*(v74 + 16))(v16, v24, v19);
      v27 = sub_265BF3230();
      v28 = sub_265BF34E0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v69 = v23;
        v30 = v29;
        v68 = swift_slowAlloc();
        v77[0] = v68;
        *v30 = 136446466;
        v76 = v20;
        v31 = sub_265BF3350();
        v32 = v28;
        v34 = sub_265BB064C(v31, v33, v77);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v35 = sub_265BF36D0();
        v37 = v36;
        v38 = *(v74 + 8);
        v38(v16, v26);
        v39 = sub_265BB064C(v35, v37, v77);

        *(v30 + 14) = v39;
        _os_log_impl(&dword_265BAD000, v27, v32, "Removing lost participant (%{public}s: %{public}s", v30, 0x16u);
        v40 = v68;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v40, -1, -1);
        v41 = v30;
        v23 = v69;
        MEMORY[0x26676DCA0](v41, -1, -1);
      }

      else
      {

        v38 = *(v25 + 8);
        v38(v16, v26);
      }

      v62 = (*(v75 + 8))(v12, v73);
      v63 = v26;
      MEMORY[0x28223BE20](v62);
      *(&v67 - 2) = v2;
      *(&v67 - 1) = v23;
      sub_265BF2EA0();
      swift_beginAccess();
      v64 = v2[32];
      v65 = v72;
      if (v64)
      {
        v66 = v2[33];
        swift_endAccess();

        v64(v65);
        sub_265BB060C(v64, v66);
        return (v38)(v65, v63);
      }

      else
      {
        v38(v72, v63);
        return swift_endAccess();
      }
    }

    else
    {
      v51 = v20;
      sub_265BF3140();
      v52 = a1;
      v53 = sub_265BF3230();
      v54 = sub_265BF34E0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v77[0] = v57;
        *v55 = 136446466;
        v76 = v51;
        v58 = sub_265BF3350();
        v60 = sub_265BB064C(v58, v59, v77);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2114;
        *(v55 + 14) = v52;
        *v56 = v52;
        v61 = v52;
        _os_log_impl(&dword_265BAD000, v53, v54, "Existing device matching %{public}s not found: %{public}@", v55, 0x16u);
        sub_265BB0750(v56, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v56, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x26676DCA0](v57, -1, -1);
        MEMORY[0x26676DCA0](v55, -1, -1);
      }

      return (*(v75 + 8))(v10, v73);
    }
  }

  else
  {
    sub_265BB07B4(v77);
    sub_265BF3140();
    v42 = a1;
    v43 = sub_265BF3230();
    v44 = sub_265BF34D0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v4;
      v47 = swift_slowAlloc();
      *v45 = 138543362;
      *(v45 + 4) = v42;
      *v47 = v42;
      v48 = v42;
      _os_log_impl(&dword_265BAD000, v43, v44, "Lost device while inactive: %{public}@", v45, 0xCu);
      sub_265BB0750(v47, &qword_28003C4A0, &qword_265BF5020);
      v49 = v47;
      v4 = v46;
      MEMORY[0x26676DCA0](v49, -1, -1);
      MEMORY[0x26676DCA0](v45, -1, -1);
    }

    return (*(v75 + 8))(v7, v4);
  }
}

uint64_t sub_265BC21F8@<X0>(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v6 = [a1 effectiveIdentifier];
  v7 = sub_265BF3340();
  v9 = v8;

  swift_beginAccess();
  v10 = *(a2 + 144);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_265BE38DC(v7, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(*(v10 + 56) + 8 * v11);
  v15 = v14;
LABEL_6:
  swift_endAccess();
  v16 = [a1 effectiveIdentifier];
  v17 = sub_265BF3340();
  v19 = v18;

  swift_beginAccess();
  v20 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a2 + 144);
  *(a2 + 144) = 0x8000000000000000;
  sub_265BE4A38(v20, v17, v19, isUniquelyReferenced_nonNull_native);

  *(a2 + 144) = v23;
  result = swift_endAccess();
  *a3 = v14;
  return result;
}

uint64_t sub_265BC2370(uint64_t a1, id a2)
{
  v4 = [a2 effectiveIdentifier];
  v5 = sub_265BF3340();
  v7 = v6;

  swift_beginAccess();
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 144);
  *(a1 + 144) = 0x8000000000000000;
  sub_265BE4A38(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *(a1 + 144) = v11;
  return swift_endAccess();
}

uint64_t sub_265BC2444@<X0>(id a1@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  v5 = [a1 effectiveIdentifier];
  v6 = sub_265BF3340();
  v8 = v7;

  swift_beginAccess();
  if (*(*(a2 + 144) + 16))
  {
    sub_265BE38DC(v6, v8);
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  result = swift_endAccess();
  *a3 = v10 & 1;
  return result;
}

uint64_t sub_265BC2510(uint64_t a1, id a2)
{
  v2 = [a2 effectiveIdentifier];
  v3 = sub_265BF3340();
  v5 = v4;

  swift_beginAccess();
  sub_265BD3760(0, v3, v5);
  return swift_endAccess();
}

uint64_t sub_265BC25B0(uint64_t a1, uint64_t a2)
{
  sub_265BF2EA0();
  sub_265BB0718(v11, &v8);
  v4 = v9;
  if (v9)
  {
    v5 = v8;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265BB0750(&v10, &qword_28003C480, &qword_265BF4EC8);
    if (v5 == a1 && v4 == a2)
    {

      sub_265BB07B4(v11);
      return 1;
    }

    v6 = sub_265BF36E0();

    sub_265BB07B4(v11);
    if (v6)
    {
      return 1;
    }
  }

  else
  {
    sub_265BB07B4(v11);
    sub_265BB07B4(&v8);
  }

  return 0;
}

uint64_t sub_265BC26D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - v7;
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = sub_265BC25B0(a2, a3);

    if (v13)
    {
      sub_265BF3140();

      v14 = sub_265BF3230();
      v15 = sub_265BF34E0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v34 = v5;
        v17 = v16;
        v32 = swift_slowAlloc();
        v37[0] = v32;
        *v17 = 136446466;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v31 = v15;
        v36 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C498, &qword_265BF5018);
        v30 = v14;
        v19 = sub_265BF3590();
        v33 = v6;
        v21 = v20;

        v22 = sub_265BB064C(v19, v21, v37);
        v6 = v33;

        *(v17 + 4) = v22;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_265BB064C(a2, a3, v37);
        v23 = v30;
        _os_log_impl(&dword_265BAD000, v30, v31, "%{public}s: Remote participant discovery (%{public}s expired", v17, 0x16u);
        v24 = v32;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v24, -1, -1);
        v25 = v17;
        v5 = v34;
        MEMORY[0x26676DCA0](v25, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v26 = v35;
        RemoteParticipantDiscovery.endDiscovering()();

        v27 = v6;
        v28 = sub_265BF2E40();
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        v28(sub_265BC3A74, v29);

        return (*(v27 + 8))(v26, v5);
      }
    }
  }

  return result;
}

uint64_t RemoteParticipantDiscovery.onParticipantDiscovered(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 240);
  v6 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t RemoteParticipantDiscovery.onParticipantLost(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 256);
  v6 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t RemoteParticipantDiscovery.onParticipantUpdated(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t RemoteParticipantDiscovery.onDiscoveryExpired(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  sub_265BB2BC4(a1, a2);

  return sub_265BB060C(v3, v4);
}

uint64_t RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  if (qword_281068810 != -1)
  {
    swift_once();
  }

  return RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)(a1, a2, *&qword_281068818);
}

uint64_t sub_265BC2DB0(void *a1, int a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BC0DFC(a1, a2);
  }

  return result;
}

uint64_t RemoteParticipantDiscovery.queryDiscoveredDevice(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  v10 = v2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  sub_265BF2EA0();
  return v12;
}

uint64_t sub_265BC2F78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_265BF2C70();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a1 + 144);
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_265BE38DC(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  v12 = v11;
LABEL_6:
  *a2 = v11;
  return swift_endAccess();
}

uint64_t sub_265BC3034(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 240);
  v6 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t sub_265BC30A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 256);
  v6 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t sub_265BC3114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  sub_265BB2BC4(a1, a2);
  return sub_265BB060C(v5, v6);
}

uint64_t sub_265BC3184(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  sub_265BB2BC4(a1, a2);

  return sub_265BB060C(v3, v4);
}

uint64_t sub_265BC31D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v7, v4);
  v10 = v2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  sub_265BF2EA0();
  return v12;
}

uint64_t *sub_265BC3328(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_265BC3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a5;
  v29 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v25 = a7;
  v26 = a10;
  v18 = __swift_allocate_boxed_opaque_existential_0(&v24);
  (*(*(a7 - 8) + 32))(v18, a2, a7);
  v22 = a6;
  v23 = a9;
  v19 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a6 - 8) + 32))(v19, a3, a6);
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 296) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 144) = sub_265BE5450(MEMORY[0x277D84F90]);
  sub_265BF2EC0();
  swift_allocObject();
  *(a4 + 16) = sub_265BF2EB0();
  sub_265BB4A90(&v27, a4 + 24);
  sub_265BB4A90(&v24, a4 + 104);
  sub_265BB4A90(&v21, a4 + 64);
  return a4;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_265BC3598()
{
  result = qword_281068A38[0];
  if (!qword_281068A38[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281068A38);
  }

  return result;
}

uint64_t sub_265BC35F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C480, &qword_265BF4EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_5Tm_1()
{

  if (v0[4])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v0[12])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_265BC37E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265BC3830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_265BC3894(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t *sub_265BC38DC(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_265BC3994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BC3A78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BF2EA0();
  }

  return result;
}

uint64_t sub_265BC3B04(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BC43D0(a1);
  }

  return result;
}

uint64_t sub_265BC3B64(uint64_t a1, uint64_t a2)
{
  v2 = sub_265BF2F90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v3 + 104))(v5, *MEMORY[0x277D4E190], v2);
    sub_265BF2DC0();
    sub_265BF2E90();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_265BC3CE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_265BF2DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265BF2F90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E1A8], v6);
    sub_265BF30E0();
    sub_265BF2E90();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_265BC3EF4(void *a1, void *a2)
{
  v28 = a2;
  v27 = a1;
  v2 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_265BF3240();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v12 + 8))(v14, v11);
  sub_265BF2EA0();
  sub_265BD2384(v10, v8, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
LABEL_5:
    sub_265BD244C(v8, v4);
    v17 = *v4;
    v16 = v4[1];

    sub_265BD23EC(v4, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    if (v17 != v27 || v16 != v28)
    {
      v19 = sub_265BF36E0();

      if (v19)
      {
        return sub_265BD23EC(v10, type metadata accessor for RemoteParticipantConnectionBroker.State);
      }

LABEL_10:
      v20 = sub_265BF2D20();
      sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D52660], v20);
      swift_willThrow();
      return sub_265BD23EC(v10, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

LABEL_11:

    return sub_265BD23EC(v10, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v23 = *v8 == v27 && *(v8 + 1) == v28;
  if (!v23 && (sub_265BF36E0() & 1) == 0)
  {
    v24 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D52660], v24);
    swift_willThrow();

    goto LABEL_11;
  }

  sub_265BD23EC(v10, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

uint64_t sub_265BC43D0(void *a1)
{
  v353 = a1;
  v355 = sub_265BF2CC0();
  v345 = *(v355 - 1);
  v1 = MEMORY[0x28223BE20](v355);
  v334 = &v312 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v338 = &v312 - v3;
  v4 = sub_265BF2C30();
  v328 = *(v4 - 8);
  v329 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v323 = v6;
  v324 = &v312 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v346 = &v312 - v7;
  v8 = sub_265BF3210();
  v316 = *(v8 - 8);
  v317 = v8;
  MEMORY[0x28223BE20](v8);
  v318 = &v312 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265BF31F0();
  MEMORY[0x28223BE20](v10 - 8);
  v315 = &v312 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF2F60();
  v325 = *(v12 - 8);
  v326 = v12;
  MEMORY[0x28223BE20](v12);
  v342 = &v312 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v352 = *(v330 - 8);
  v14 = MEMORY[0x28223BE20](v330);
  v341 = &v312 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v322 = &v312 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v343 = &v312 - v19;
  v320 = v20;
  MEMORY[0x28223BE20](v18);
  v344 = &v312 - v21;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v354 = *(v340 - 8);
  v22 = v354[8];
  v23 = MEMORY[0x28223BE20](v340);
  v319 = &v312 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v347 = &v312 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v327 = &v312 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v331 = &v312 - v29;
  MEMORY[0x28223BE20](v28);
  v332 = &v312 - v30;
  v359 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v321 = *(v359 - 8);
  v31 = *(v321 + 64);
  v32 = MEMORY[0x28223BE20](v359);
  v333 = (&v312 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v32);
  v314 = &v312 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v351 = (&v312 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v339 = &v312 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v360 = &v312 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v358 = (&v312 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v357 = &v312 - v44;
  MEMORY[0x28223BE20](v43);
  v356 = (&v312 - v45);
  v46 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v312 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v312 - v50;
  v52 = sub_265BF3240();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v349 = (&v312 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = MEMORY[0x28223BE20](v54);
  v337 = &v312 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v313 = &v312 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v336 = (&v312 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v335 = &v312 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v350 = &v312 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v312 - v67;
  v69 = MEMORY[0x28223BE20](v66);
  v348 = &v312 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = &v312 - v71;
  sub_265BF3130();
  sub_265BF3220();
  v362 = *(v53 + 8);
  v363 = v52;
  v361 = (v53 + 8);
  v362(v72, v52);
  v73 = *(v365 + 144);
  sub_265BF2EA0();
  v364 = v51;
  sub_265BD2384(v51, v49, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v80 = v357;
    v81 = v358;
    v82 = v356;
    v348 = v31;
    v349 = v73;
    v337 = v22;
    if (EnumCaseMultiPayload)
    {

      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190);
      sub_265BD244C(&v49[*(v134 + 48)], v82);
      v135 = v68;
      sub_265BF3130();
      v136 = v80;
      sub_265BD2384(v82, v80, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      sub_265BD2384(v82, v81, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v137 = sub_265BF3230();
      v138 = sub_265BF34E0();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v365 = v135;
        v140 = v139;
        v141 = swift_slowAlloc();
        *&v374 = v141;
        *v140 = 136446466;
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v142 = sub_265BF36D0();
        v143 = v136;
        v144 = v142;
        v146 = v145;
        sub_265BD23EC(v143, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v147 = sub_265BB064C(v144, v146, &v374);

        *(v140 + 4) = v147;
        *(v140 + 12) = 2082;
        v148 = v81;
        v149 = *v81;
        v150 = v81[1];

        sub_265BD23EC(v148, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v151 = sub_265BB064C(v149, v150, &v374);

        *(v140 + 14) = v151;
        _os_log_impl(&dword_265BAD000, v137, v138, "Participant connection broker ignoring discovered participant while already connecting to %{public}s with identifier %{public}s", v140, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v141, -1, -1);
        MEMORY[0x26676DCA0](v140, -1, -1);

        v152 = v365;
      }

      else
      {

        sub_265BD23EC(v81, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        sub_265BD23EC(v136, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v152 = v135;
      }

      v362(v152, v363);
      sub_265BD23EC(v82, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      goto LABEL_43;
    }

    v358 = 0;
    v83 = v49;
    v84 = v360;
    sub_265BD244C(v83, v360);
    v85 = v365;
    v86 = *(v365 + 80);
    ObjectType = swift_getObjectType();
    v88 = *(v359 + 20);
    v89 = (*(v86 + 64))(v88 + v84, ObjectType, v86);
    if (v89)
    {
      v90 = v89;
      v356 = v88;
      sub_265BF3130();
      v91 = v339;
      sub_265BD2384(v84, v339, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v92 = v90;
      v93 = sub_265BF3230();
      v94 = sub_265BF34E0();

      v95 = os_log_type_enabled(v93, v94);
      v357 = v92;
      if (v95)
      {
        v96 = v91;
        v97 = v92;
        v98 = swift_slowAlloc();
        v353 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v374 = v99;
        *v98 = 136446466;
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v100 = sub_265BF36D0();
        v102 = v101;
        sub_265BD23EC(v96, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v103 = sub_265BB064C(v100, v102, &v374);
        v85 = v365;

        *(v98 + 4) = v103;
        *(v98 + 12) = 2114;
        *(v98 + 14) = v97;
        v104 = v353;
        *v353 = v90;
        v105 = v97;
        _os_log_impl(&dword_265BAD000, v93, v94, "We have found a device that matches %{public}s. Connecting to device: %{public}@", v98, 0x16u);
        sub_265BD2214(v104);
        v84 = v360;
        MEMORY[0x26676DCA0](v104, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v99);
        MEMORY[0x26676DCA0](v99, -1, -1);
        MEMORY[0x26676DCA0](v98, -1, -1);
      }

      else
      {

        sub_265BD23EC(v91, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      }

      v362(v350, v363);
      v185 = sub_265BF2CB0();
      v186 = v351;
      if (v187)
      {
        LODWORD(v363) = v185;
        v188 = v85[5];
        v362 = v85[6];
        v361 = __swift_project_boxed_opaque_existential_1(v85 + 2, v188);
        sub_265BD2384(v84, v186, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        sub_265BF3450();
        v189 = v359;
        v191 = v190 - *(v186 + *(v359 + 36));
        v193 = *v186;
        v192 = v186[1];

        v194 = sub_265BF2CB0();
        v196 = v195;
        v197 = v186;
        v198 = *(v186 + *(v189 + 28));
        v199 = *(v197 + *(v189 + 24));
        sub_265BD23EC(v197, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        *(&v375 + 1) = &type metadata for ValidDeviceDiscoveredAnalyticsEvent;
        *&v376 = sub_265BD2B7C();
        v200 = swift_allocObject();
        *&v374 = v200;
        *(v200 + 16) = v191;
        *(v200 + 24) = v193;
        *(v200 + 32) = v192;
        *(v200 + 40) = v194;
        v201 = v365;
        *(v200 + 48) = v196 & 1;
        *(v200 + 49) = v198;
        *(v200 + 50) = v199;
        v202 = v360;
        sub_265BF3010();
        v203 = __swift_destroy_boxed_opaque_existential_0Tm(&v374);
        MEMORY[0x28223BE20](v203);
        v204 = v357;
        *(&v312 - 4) = v201;
        *(&v312 - 3) = v204;
        *(&v312 - 2) = v202;
        sub_265BF2EA0();
        v205 = *(v201 + 56);
        v206 = *(v202 + *(v189 + 24));
        v207 = *(v202 + *(v189 + 28));
        if (v363 == 4)
        {
          v208 = 0;
        }

        else
        {
          v208 = 1;
          v223 = 1;
          if ((v363 - 3) >= 2)
          {
LABEL_48:
            v224 = *(v202 + *(v359 + 32));
            v225 = swift_allocObject();
            v226 = v357;
            *(v225 + 16) = v205;
            *(v225 + 24) = v226;
            *(v225 + 32) = v207;
            *(v225 + 33) = v208;
            *(v225 + 34) = v224;
            *(v225 + 35) = v223;
            *(v225 + 36) = v206;
            v338 = v226;
            swift_unknownObjectRetain();
            v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
            v228 = v343;
            v314 = v227;
            sub_265BF2DF0();
            sub_265BF3180();
            sub_265BF2F30();
            swift_allocObject();
            v229 = sub_265BF2F00();
            v230 = v318;
            sub_265BF2F50();

            sub_265BF3200();
            sub_265BF31E0();
            (*(v316 + 8))(v230, v317);
            sub_265BF2F50();
            sub_265BF31C0();
            swift_allocObject();
            v231 = sub_265BF3190();
            v336 = v231;
            *&v374 = v229;
            v232 = sub_265BF3350();
            v335 = v232;
            v234 = v233;
            sub_265BF2C20();
            v235 = swift_allocObject();
            v356 = v229;
            *(v235 + 16) = v229;
            *(v235 + 24) = v231;
            *(v235 + 32) = v232;
            *(v235 + 40) = v234;
            v334 = v234;
            *(v235 + 48) = "DeviceConnection.connect";
            *(v235 + 56) = 24;
            *(v235 + 64) = 2;

            v236 = v347;
            sub_265BF2DF0();
            v237 = v352;
            v238 = *(v352 + 16);
            v353 = (v352 + 16);
            v355 = v238;
            v239 = v341;
            v240 = v330;
            v238(v341, v228, v330);
            v241 = v237;
            v350 = *(v237 + 80);
            v333 = (((v350 + 16) & ~v350) + v320);
            v242 = (v350 + 16) & ~v350;
            v345 = v242;
            v243 = swift_allocObject();
            v244 = *(v241 + 32);
            v339 = v241 + 32;
            v349 = v244;
            v244(v243 + v242, v239, v240);
            v245 = v354;
            v246 = v354[2];
            v362 = (v354 + 2);
            v363 = v246;
            v247 = v319;
            v248 = v236;
            v249 = v340;
            v246(v319, v248, v340);
            v250 = *(v245 + 80);
            v251 = v245;
            v361 = v250;
            v252 = (v250 + 16) & ~v250;
            v358 = v252;
            v337 = (&v337[v252 + 7] & 0xFFFFFFFFFFFFFFF8);
            v253 = v337;
            v254 = swift_allocObject();
            v255 = v251[4];
            v357 = (v251 + 4);
            v359 = v255;
            v255(v254 + v252, v247, v249);
            v256 = &v253[v254];
            *v256 = sub_265BD3390;
            *(v256 + 1) = v243;
            v257 = v322;
            sub_265BF2DF0();
            v259 = v328;
            v258 = v329;
            v260 = v324;
            (*(v328 + 16))(v324, v346, v329);
            v261 = (*(v259 + 80) + 49) & ~*(v259 + 80);
            v262 = (v323 + v261 + 7) & 0xFFFFFFFFFFFFFFF8;
            v263 = swift_allocObject();
            v264 = v334;
            *(v263 + 16) = v335;
            *(v263 + 24) = v264;
            *(v263 + 32) = "DeviceConnection.connect";
            *(v263 + 40) = 24;
            *(v263 + 48) = 2;
            (*(v259 + 32))(v263 + v261, v260, v258);
            *(v263 + v262) = v336;
            v265 = v355;
            *(v263 + ((v262 + 15) & 0xFFFFFFFFFFFFFFF8)) = v356;
            v266 = v341;
            v265(v341, v257, v240);
            v267 = (v333 + 7) & 0xFFFFFFFFFFFFFFF8;
            v268 = swift_allocObject();
            v349(v268 + v345, v266, v240);
            v269 = (v268 + v267);
            *v269 = sub_265BD3364;
            v269[1] = v263;

            sub_265BF2DF0();
            v271 = v352 + 8;
            v270 = *(v352 + 8);
            v270(v257, v240);
            v336 = v270;
            v352 = v271;
            v341 = v354[1];
            ++v354;
            v272 = v340;
            (v341)(v347, v340);
            (*(v259 + 8))(v346, v258);
            (*(v325 + 8))(v342, v326);
            v273 = v343;
            v270(v343, v240);

            v356 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
            v274 = v351;
            sub_265BD2384(v360, v351, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
            v346 = *(v321 + 80);
            v275 = (v346 + 24) & ~v346;
            v348 += v275;
            v342 = v275;
            v276 = swift_allocObject();
            v277 = v272;
            v278 = v365;
            *(v276 + 16) = v365;
            sub_265BD244C(v274, v276 + v275);
            v279 = swift_allocObject();
            *(v279 + 16) = sub_265BD3010;
            *(v279 + 24) = v276;
            v280 = v344;
            v355(v273, v344, v240);
            v281 = swift_allocObject();
            v349(v281 + v345, v273, v240);
            v282 = (v281 + v267);
            *v282 = sub_265BD3090;
            v282[1] = v279;

            v283 = v327;
            sub_265BF2DF0();
            v336(v280, v240);
            v284 = v347;
            v363(v347, v283, v277);
            v285 = v337;
            v286 = swift_allocObject();
            (v359)(v358 + v286, v284, v277);
            v287 = &v285[v286];
            *v287 = sub_265BD3098;
            *(v287 + 1) = v278;

            v288 = v331;
            sub_265BF2DF0();
            (v341)(v283, v277);
            v289 = v351;
            sub_265BD2384(v360, v351, v356);
            v290 = (v348 + 7) & 0xFFFFFFFFFFFFFFF8;
            v291 = swift_allocObject();
            v292 = v338;
            *(v291 + 16) = v338;
            sub_265BD244C(v289, &v342[v291]);
            *(v291 + v290) = v278;
            v293 = swift_allocObject();
            *(v293 + 16) = sub_265BD30C4;
            *(v293 + 24) = v291;
            v363(v284, v288, v277);
            v294 = swift_allocObject();
            (v359)(v358 + v294, v284, v277);
            v295 = &v285[v294];
            *v295 = sub_265BD3358;
            v295[1] = v293;
            v296 = v292;

            v297 = v332;
            sub_265BF2DF0();
            v298 = v341;
            (v341)(v288, v277);
            v299 = sub_265BF2E40();
            v300 = swift_allocObject();
            *(v300 + 16) = 0;
            *(v300 + 24) = 0;
            v299(sub_265BB8864, v300);

            v298(v297, v277);
            sub_265BD23EC(v364, type metadata accessor for RemoteParticipantConnectionBroker.State);
            v222 = v360;
            v221 = v356;
            return sub_265BD23EC(v222, v221);
          }
        }

        v223 = v208;
        v208 = 0;
        goto LABEL_48;
      }

      v209 = v335;
      sub_265BF3130();
      v210 = v314;
      sub_265BD2384(v84, v314, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v211 = sub_265BF3230();
      v212 = sub_265BF34D0();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        *&v368 = v214;
        *v213 = 136446210;
        *&v374 = sub_265BF2CB0();
        BYTE8(v374) = v215 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
        v216 = sub_265BF3350();
        v218 = v217;
        sub_265BD23EC(v210, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v219 = sub_265BB064C(v216, v218, &v368);

        *(v213 + 4) = v219;
        _os_log_impl(&dword_265BAD000, v211, v212, "Discovered remote participant with unknown role (%{public}s. Ignoring", v213, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v214);
        MEMORY[0x26676DCA0](v214, -1, -1);
        MEMORY[0x26676DCA0](v213, -1, -1);

        v184 = v335;
      }

      else
      {

        sub_265BD23EC(v210, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v184 = v209;
      }
    }

    else
    {
      v167 = v336;
      sub_265BF3130();
      v168 = v333;
      sub_265BD2384(v84, v333, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v169 = v345;
      v170 = v338;
      v171 = v355;
      (*(v345 + 16))(v338, v353, v355);
      v172 = sub_265BF3230();
      v173 = sub_265BF34D0();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        v365 = swift_slowAlloc();
        *&v374 = v365;
        *v174 = 136446466;
        v175 = *v168;
        v176 = v168[1];

        sub_265BD23EC(v168, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v177 = sub_265BB064C(v175, v176, &v374);

        *(v174 + 4) = v177;
        *(v174 + 12) = 2082;
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
        v178 = v338;
        v179 = sub_265BF36D0();
        v181 = v180;
        (*(v169 + 8))(v178, v171);
        v182 = sub_265BB064C(v179, v181, &v374);

        *(v174 + 14) = v182;
        _os_log_impl(&dword_265BAD000, v172, v173, "Unable to find device for discovered participant matching intent (%{public}s): %{public}s", v174, 0x16u);
        v183 = v365;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v183, -1, -1);
        MEMORY[0x26676DCA0](v174, -1, -1);

        v184 = v336;
      }

      else
      {

        (*(v169 + 8))(v170, v171);
        sub_265BD23EC(v168, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v184 = v167;
      }
    }

    v362(v184, v363);
    sub_265BD23EC(v364, type metadata accessor for RemoteParticipantConnectionBroker.State);
    v221 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v222 = v84;
    return sub_265BD23EC(v222, v221);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v75 = v348;
      sub_265BF3130();
      v76 = sub_265BF3230();
      v77 = sub_265BF34E0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_265BAD000, v76, v77, "Participant connection broker ignoring discovered participant while idle", v78, 2u);
        MEMORY[0x26676DCA0](v78, -1, -1);
      }

      v79 = v75;
    }

    else
    {
      v130 = v349;
      sub_265BF3130();
      v131 = sub_265BF3230();
      v132 = sub_265BF34E0();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_265BAD000, v131, v132, "Participant connection broker ignoring device discovered after completing", v133, 2u);
        MEMORY[0x26676DCA0](v133, -1, -1);
      }

      v79 = v130;
    }

    goto LABEL_42;
  }

  v358 = 0;
  v106 = *(v49 + 3);
  v376 = *(v49 + 2);
  v377 = v106;
  v378 = *(v49 + 4);
  v379 = *(v49 + 10);
  v107 = *(v49 + 1);
  v374 = *v49;
  v375 = v107;
  v108 = v365;
  v109 = *(v365 + 80);
  v110 = swift_getObjectType();
  v111 = v353;
  v112 = (*(v109 + 64))(v353, v110, v109);
  if (!v112)
  {
    v153 = v337;
    sub_265BF3130();
    v154 = v345;
    v155 = v334;
    v156 = v355;
    (*(v345 + 16))(v334, v111, v355);
    sub_265BD1ED4(&v374, &v368);
    v157 = sub_265BF3230();
    v158 = sub_265BF34D0();
    sub_265BD1F0C(&v374);
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v368 = v160;
      *v159 = 136446466;
      v161 = v374;

      v162 = sub_265BB064C(v161, *(&v161 + 1), &v368);

      *(v159 + 4) = v162;
      *(v159 + 12) = 2082;
      sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
      v163 = sub_265BF36D0();
      v165 = v164;
      (*(v154 + 8))(v155, v156);
      v166 = sub_265BB064C(v163, v165, &v368);

      *(v159 + 14) = v166;
      _os_log_impl(&dword_265BAD000, v157, v158, "Participant connection broker failed to look up discovered participant device for intent (%{public}s): %{public}s", v159, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v160, -1, -1);
      MEMORY[0x26676DCA0](v159, -1, -1);

      sub_265BD1F0C(&v374);
      v79 = v337;
    }

    else
    {

      sub_265BD1F0C(&v374);
      (*(v154 + 8))(v155, v156);
      v79 = v153;
    }

    goto LABEL_42;
  }

  v113 = v112;
  v349 = v73;
  v114 = *(&v375 + 1);
  if (*(*(&v375 + 1) + 16))
  {
    v115 = [v112 model];
    if (v115)
    {
      v116 = v115;
      sub_265BF3340();

      v117 = sub_265BF2D40();
      if (v117 != 4)
      {
        v118 = v117;
        if (!sub_265BB6208(v117, v114))
        {
          v301 = v313;
          sub_265BF3130();
          sub_265BD1ED4(&v374, &v368);
          v302 = sub_265BF3230();
          v303 = sub_265BF34D0();
          sub_265BD1F0C(&v374);
          if (os_log_type_enabled(v302, v303))
          {
            v304 = swift_slowAlloc();
            v305 = swift_slowAlloc();
            *&v368 = v305;
            *v304 = 141558786;
            *(v304 + 4) = 1752392040;
            *(v304 + 12) = 2080;
            LOBYTE(v366[0]) = v118;
            v306 = sub_265BF3350();
            v308 = sub_265BB064C(v306, v307, &v368);

            *(v304 + 14) = v308;
            *(v304 + 22) = 2160;
            *(v304 + 24) = 1752392040;
            *(v304 + 32) = 2080;
            sub_265BD2BEC();
            v309 = sub_265BF3490();
            v311 = sub_265BB064C(v309, v310, &v368);

            *(v304 + 34) = v311;
            _os_log_impl(&dword_265BAD000, v302, v303, "Discovered Any Participant Device Type %{mask.hash}s does not match intent preferred device types %{mask.hash}s", v304, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x26676DCA0](v305, -1, -1);
            MEMORY[0x26676DCA0](v304, -1, -1);

            sub_265BD1F0C(&v374);
            v79 = v313;
          }

          else
          {

            sub_265BD1F0C(&v374);
            v79 = v301;
          }

LABEL_42:
          v362(v79, v363);
LABEL_43:
          v221 = type metadata accessor for RemoteParticipantConnectionBroker.State;
          v222 = v364;
          return sub_265BD23EC(v222, v221);
        }
      }
    }
  }

  __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
  sub_265BD1ED4(&v374, &v368);
  sub_265BF3450();
  v120 = v119 - *(&v376 + 1);
  v121 = v374;

  sub_265BD1F0C(&v374);
  v122 = v375;
  v123 = BYTE1(v376);
  v124 = v376;
  *(&v369 + 1) = &type metadata for ValidDeviceDiscoveredAnalyticsEvent;
  *&v370 = sub_265BD2B7C();
  v125 = swift_allocObject();
  *&v368 = v125;
  *(v125 + 16) = v120;
  *(v125 + 24) = v121;
  *(v125 + 40) = v122;
  *(v125 + 48) = 1;
  *(v125 + 49) = v123;
  *(v125 + 50) = v124;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(&v368);
  if (v379 >> 62)
  {
    v126 = sub_265BF3690();
  }

  else
  {
    v126 = *((v379 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v370 = v376;
  v371 = v377;
  v372 = v378;
  v373 = v379;
  v368 = v374;
  v369 = v375;
  sub_265BD1ED4(&v374, v366);
  v127 = v113;
  MEMORY[0x26676D1F0]();
  v128 = v365;
  if (*((v373 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v373 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_265BF3410();
  }

  v129 = sub_265BF3430();
  MEMORY[0x28223BE20](v129);
  *(&v312 - 2) = v128;
  *(&v312 - 1) = &v368;
  sub_265BF2EA0();
  if (v126)
  {
    sub_265BD23EC(v364, type metadata accessor for RemoteParticipantConnectionBroker.State);

    sub_265BD1F0C(&v374);
  }

  else
  {
    sub_265BC7D60(v121, *(&v121 + 1));
    sub_265BD1F0C(&v374);

    sub_265BD23EC(v364, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v366[2] = v370;
  v366[3] = v371;
  v366[4] = v372;
  v367 = v373;
  v366[0] = v368;
  v366[1] = v369;
  return sub_265BD1F0C(v366);
}

uint64_t sub_265BC692C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
  *v8 = a2;
  sub_265BD2384(a3, v8 + v9, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  v11 = a2;
  sub_265BD2718(v8, a1 + v10);
  return swift_endAccess();
}

uint64_t sub_265BC6A40(uint64_t *a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  result = sub_265BC3EF4(*a3, a3[1]);
  if (!v3)
  {
    v9 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
    return (*(a3 + *(v9 + 40)))(v5, v6, v7, 0);
  }

  return result;
}

uint64_t sub_265BC6ABC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v55 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v7 = MEMORY[0x28223BE20](v55);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v48 - v10);
  v12 = sub_265BF3240();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  v56 = a3;
  sub_265BD2384(a3, v11, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v15 = a2;
  v16 = a1;
  v17 = sub_265BF3230();
  v18 = sub_265BF34D0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v53 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = v21;
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v20 = 138543874;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 2082;
    LODWORD(v48) = v18;
    v22 = a1;
    v23 = *v11;
    v24 = v11[1];
    v25 = v15;

    sub_265BD23EC(v11, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v26 = sub_265BB064C(v23, v24, v59);
    a1 = v22;

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    swift_getErrorValue();
    v27 = MEMORY[0x26676D550](v57, v58);
    v29 = sub_265BB064C(v27, v28, v59);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_265BAD000, v17, v48, "Error in establishing a connection to %{public}@ for (%{public}s): %{public}s", v20, 0x20u);
    v30 = v49;
    sub_265BD2214(v49);
    MEMORY[0x26676DCA0](v30, -1, -1);
    v31 = v50;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v31, -1, -1);
    MEMORY[0x26676DCA0](v20, -1, -1);

    (*(v54 + 8))(v14, v53);
  }

  else
  {

    sub_265BD23EC(v11, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    (*(v54 + 8))(v14, v12);
  }

  v51 = a1;
  v53 = v52[5];
  v54 = v52[6];
  v52 = __swift_project_boxed_opaque_existential_1(v52 + 2, v53);
  sub_265BD2384(v56, v9, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  sub_265BF3450();
  v32 = v55;
  v34 = v33 - *(v9 + *(v55 + 36));
  swift_getErrorValue();
  v50 = sub_265BF3750();
  v49 = v35;
  swift_getErrorValue();
  v36 = sub_265BF3760();
  v38 = v37;
  v39 = v9[1];
  v48 = *v9;

  v40 = sub_265BF2CB0();
  LOBYTE(v59[0]) = v41 & 1;
  v42 = *(v9 + v32[7]);
  v43 = *(v9 + v32[6]);
  sub_265BD23EC(v9, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v44 = v59[0];
  v59[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
  v59[4] = sub_265BD1FD0();
  v45 = swift_allocObject();
  v59[0] = v45;
  *(v45 + 16) = v34;
  v46 = v49;
  *(v45 + 24) = v50;
  *(v45 + 32) = v46;
  *(v45 + 40) = v36;
  *(v45 + 48) = v38;
  *(v45 + 56) = v48;
  *(v45 + 64) = v39;
  *(v45 + 72) = v40;
  *(v45 + 80) = v44;
  *(v45 + 81) = v42;
  *(v45 + 82) = v43;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return (*(v56 + v32[10]))(v51, 0, 0, 1);
}

uint64_t sub_265BC7010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 48);
  v16 = *(a2 + 32);
  v7 = v16;
  v17 = v8;
  v18 = *(a2 + 64);
  v9 = v18;
  v19 = *(a2 + 80);
  v11 = *(a2 + 16);
  v15[0] = *a2;
  v10 = v15[0];
  v15[1] = v11;
  *(v6 + 10) = v19;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *v6 = v10;
  *(v6 + 1) = v11;
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD1ED4(v15, v14);
  sub_265BD2718(v6, a1 + v12);
  return swift_endAccess();
}

uint64_t sub_265BC7110(void *a1)
{
  v130 = sub_265BF2D20();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v133 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v131 = v3;
  v132 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v123 = (&v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v127 = &v119 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v124 = (&v119 - v10);
  MEMORY[0x28223BE20](v9);
  v122 = &v119 - v11;
  v12 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v13 = MEMORY[0x28223BE20](v12);
  v128 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v119 - v15;
  v17 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v119 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v119 - v24;
  v26 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  v129 = a1;
  v125 = v26;
  sub_265BD2384(a1 + v26, v16, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v126 = v12;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v34 = v124;
    v35 = v20;
    v127 = v25;
    v123 = v17;
    if (EnumCaseMultiPayload)
    {

      v16 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
    }

    v36 = v127;
    v37 = v34;
    sub_265BD244C(v16, v127);
    sub_265BF3130();
    v38 = v23;
    sub_265BD2384(v36, v23, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v39 = sub_265BF3230();
    v40 = sub_265BF34E0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v136 = v42;
      *v41 = 136446210;
      v43 = *(v23 + 1);
      v124 = *v38;

      sub_265BD23EC(v38, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v44 = sub_265BB064C(v124, v43, &v136);

      *(v41 + 4) = v44;
      _os_log_impl(&dword_265BAD000, v39, v40, "Participant connection broker cancelling participant intent %{public}s, discovery expired", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26676DCA0](v42, -1, -1);
      MEMORY[0x26676DCA0](v41, -1, -1);
    }

    else
    {

      sub_265BD23EC(v23, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    }

    (*(v132 + 8))(v37, v131);
    v87 = v123;
    v88 = v128;
    swift_storeEnumTagMultiPayload();
    v89 = v129;
    v90 = v125;
    swift_beginAccess();
    sub_265BD2718(v88, v89 + v90);
    swift_endAccess();
    v91 = v133;
    v92 = v134;
    v93 = v130;
    (*(v134 + 104))(v133, *MEMORY[0x277D52670], v130);
    v94 = v89[6];
    v131 = v89[5];
    v132 = v94;
    v129 = __swift_project_boxed_opaque_existential_1(v89 + 2, v131);
    v124 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    sub_265BD2384(v127, v35, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v128 = sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v95 = swift_allocError();
    v96 = *(v92 + 16);
    v125 = v92 + 16;
    v126 = v96;
    v96(v97, v91, v93);
    sub_265BF3450();
    v99 = v98 - *(v35 + v87[9]);
    swift_getErrorValue();
    v100 = sub_265BF3750();
    v122 = v101;
    v123 = v100;
    swift_getErrorValue();
    v102 = sub_265BF3760();
    v120 = v103;
    v121 = v102;
    v104 = v35[1];
    v119 = *v35;

    v105 = sub_265BF2CB0();
    v107 = v106;

    LOBYTE(v136) = v107 & 1;
    LOBYTE(v95) = *(v35 + v87[7]);
    v108 = *(v35 + v87[6]);
    v109 = v124;
    sub_265BD23EC(v35, v124);
    v110 = v136;
    *(&v137 + 1) = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
    *&v138 = sub_265BD1FD0();
    v111 = swift_allocObject();
    *&v136 = v111;
    *(v111 + 16) = v99;
    v112 = v122;
    *(v111 + 24) = v123;
    *(v111 + 32) = v112;
    v113 = v120;
    *(v111 + 40) = v121;
    *(v111 + 48) = v113;
    *(v111 + 56) = v119;
    *(v111 + 64) = v104;
    *(v111 + 72) = v105;
    *(v111 + 80) = v110;
    *(v111 + 81) = v95;
    *(v111 + 82) = v108;
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v136);
    v114 = v127;
    v115 = *&v127[v87[10]];

    sub_265BD23EC(v114, v109);
    v116 = swift_allocError();
    v117 = v133;
    v126(v118, v133, v93);
    v115(v116, 0, 0, 1);

    v32 = *(v134 + 8);
    v33 = v117;
    v86 = v93;
    return v32(v33, v86);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v28 = v122;
      sub_265BF3130();
      v29 = sub_265BF3230();
      v30 = sub_265BF34E0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_265BAD000, v29, v30, "Participant connection broker ignoring expired discovery, currently idle", v31, 2u);
        MEMORY[0x26676DCA0](v31, -1, -1);
      }

      v32 = *(v132 + 8);
      v33 = v28;
    }

    else
    {
      v82 = v123;
      sub_265BF3130();
      v83 = sub_265BF3230();
      v84 = sub_265BF34E0();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_265BAD000, v83, v84, "Participant connection broker ignoring expired discovery, already complete", v85, 2u);
        MEMORY[0x26676DCA0](v85, -1, -1);
      }

      v32 = *(v132 + 8);
      v33 = v82;
    }

    v86 = v131;
    return v32(v33, v86);
  }

  v45 = *(v16 + 3);
  v138 = *(v16 + 2);
  v139 = v45;
  v140 = *(v16 + 4);
  v141 = *(v16 + 10);
  v46 = *(v16 + 1);
  v136 = *v16;
  v137 = v46;
  v47 = v127;
  sub_265BF3130();
  sub_265BD1ED4(&v136, v135);
  v48 = sub_265BF3230();
  v49 = sub_265BF34E0();
  sub_265BD1F0C(&v136);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v135[0] = v51;
    *v50 = 136446210;
    v52 = v136;

    v53 = sub_265BB064C(v52, *(&v52 + 1), v135);

    *(v50 + 4) = v53;
    _os_log_impl(&dword_265BAD000, v48, v49, "Participant connection broker cancelling role intent %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x26676DCA0](v51, -1, -1);
    MEMORY[0x26676DCA0](v50, -1, -1);
  }

  (*(v132 + 8))(v47, v131);
  v54 = v128;
  swift_storeEnumTagMultiPayload();
  v55 = v129;
  v56 = v125;
  swift_beginAccess();
  sub_265BD2718(v54, v55 + v56);
  swift_endAccess();
  v57 = v133;
  v58 = v134;
  v59 = v130;
  (*(v134 + 104))(v133, *MEMORY[0x277D52670], v130);
  v60 = v55[6];
  v131 = v55[5];
  v132 = v60;
  v129 = __swift_project_boxed_opaque_existential_1(v55 + 2, v131);
  v128 = sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
  v61 = swift_allocError();
  v62 = *(v58 + 16);
  v126 = (v58 + 16);
  v127 = v62;
  (v62)(v63, v57, v59);
  sub_265BD1ED4(&v136, v135);
  sub_265BF3450();
  v65 = v64 - *(&v138 + 1);
  swift_getErrorValue();
  v66 = sub_265BF3750();
  v124 = v67;
  v125 = v66;
  swift_getErrorValue();
  v68 = sub_265BF3760();
  v70 = v69;

  v71 = v136;

  sub_265BD1F0C(&v136);
  v72 = v137;
  LOBYTE(v135[0]) = 1;
  v73 = BYTE1(v138);
  v74 = v138;
  v135[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
  v135[4] = sub_265BD1FD0();
  v75 = swift_allocObject();
  v135[0] = v75;
  *(v75 + 16) = v65;
  v76 = v124;
  *(v75 + 24) = v125;
  *(v75 + 32) = v76;
  *(v75 + 40) = v68;
  *(v75 + 48) = v70;
  *(v75 + 56) = v71;
  *(v75 + 72) = v72;
  *(v75 + 80) = 1;
  *(v75 + 81) = v73;
  *(v75 + 82) = v74;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v135);
  v77 = v139;
  v78 = swift_allocError();
  v79 = v133;
  (v127)(v80, v133, v59);
  v77(v78, 0, 0, 1);

  sub_265BD1F0C(&v136);
  return (*(v134 + 8))(v79, v59);
}