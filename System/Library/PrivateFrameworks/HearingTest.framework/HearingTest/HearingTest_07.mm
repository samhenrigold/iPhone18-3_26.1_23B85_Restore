uint64_t sub_252116584()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 24) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211661C, v1, 0);
}

uint64_t sub_25211661C()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 32) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252116690, 0, 0);
}

uint64_t sub_252116690()
{
  v1 = v0[4];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v2 = *(v0[2] + 248);
  sub_2520FBFEC(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25211672C()
{
  v1 = v0;
  if (*(v0 + 240))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25207E000, v3, v4, "HTAudioRouteRequirementManager already started, ignoring", v5, 2u);
      MEMORY[0x253099FD0](v5, -1, -1);
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDE68);
  v7 = sub_25214196C();
  v8 = sub_252141FBC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25207E000, v7, v8, "HTAudioRouteRequirementManager beginAudioRouteManagement", v9, 2u);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(type metadata accessor for HTAudioRouteRequirementManager());
  *(v1 + 240) = sub_25213AE8C(sub_252130588, v10);

  return MEMORY[0x2821F96F8]();
}

void sub_252116934(char a1, uint64_t a2)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_25207E000, v4, v5, "HTAudioRouteRequirementManager handler interrupted: %{BOOL}d", v6, 8u);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 248);

      MEMORY[0x28223BE20](v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
      sub_25214200C();

      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22[0] = v26[0];
      *(v22 + 12) = *(v26 + 12);
      if (*(&v23 + 1))
      {
        *&v23 = v19;
        v24 = v20;
        v25 = v21;
        v26[0] = v22[0];
        *(v26 + 12) = *(v22 + 12);
        if ((DWORD2(v21) == 7 || DWORD2(v21) == 1) && (HIDWORD(v21) == 7 || HIDWORD(v21) == 1))
        {
          v10 = sub_25214196C();
          v11 = sub_252141FBC();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_25207E000, v10, v11, "HTAudioRouteRequirementManager handler route changed with both AirPods both in-ear, ending test", v12, 2u);
            MEMORY[0x253099FD0](v12, -1, -1);
          }

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_25211A01C(&v23);
            sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          }

          else
          {
            sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          }
        }

        else
        {
          sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          v13 = sub_25214196C();
          v14 = sub_252141FBC();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&dword_25207E000, v13, v14, "HTAudioRouteRequirementManager handler but AirPods out of ear caused route change, ignoring", v15, 2u);
            MEMORY[0x253099FD0](v15, -1, -1);
          }
        }
      }
    }
  }

  v16 = sub_25214196C();
  v17 = sub_252141FBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25207E000, v16, v17, "HTAudioRouteRequirementManager handler complete", v18, 2u);
    MEMORY[0x253099FD0](v18, -1, -1);
  }
}

uint64_t sub_252116D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252116D60, 0, 0);
}

uint64_t sub_252116D60()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252116DF8, v1, 0);
}

uint64_t sub_252116DF8()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252116E6C, 0, 0);
}

uint64_t sub_252116E6C()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252116F24, v3, v2);
}

uint64_t sub_252116F24()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_25211704C(v3, v1, v4, v2);

  return MEMORY[0x2822009F8](sub_252116FEC, 0, 0);
}

uint64_t sub_252116FEC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_25211704C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v58 = sub_252141A4C();
  v68 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_252141A8C();
  v67 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 224);
  *(a1 + 224) = a2;
  v13 = *(a1 + 232);
  *(a1 + 232) = 0;
  v60 = a2;
  sub_25212C9DC(v12, v13);
  v14 = *(a3 + 10);
  if (v14 == 7)
  {
    v15 = 0xE800000000000000;
    v16 = 0x64656C6261736964;
  }

  else if (v14 == 1 && *(a3 + 11) == 1)
  {
    v15 = 0xE900000000000073;
    v16 = 0x6475622068746F62;
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x64756220656E6FLL;
  }

  v65 = v16;
  if (qword_27F4CD708 != -1)
  {
LABEL_27:
    swift_once();
  }

  v17 = sub_25214198C();
  v18 = __swift_project_value_buffer(v17, qword_27F4CDE68);

  sub_25210AC9C(a3, v75);
  v19 = sub_25214196C();
  v20 = sub_252141FBC();

  sub_25210ACF8(a3);
  v21 = os_log_type_enabled(v19, v20);
  v66 = v5;
  v63 = v18;
  v64 = a3;
  v59 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75[0] = v56;
    *v22 = 136446722;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, v75);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = sub_2520A5448(v65, v15, v75);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_2520A5448(a3[2], a3[3], v75);
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] handleDeviceChanged device placement %s inEar %s ", v22, 0x20u);
    v27 = v56;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v27, -1, -1);
    MEMORY[0x253099FD0](v22, -1, -1);
  }

  else
  {
  }

  v15 = *(a1 + 88);
  [v15 lock];
  swift_beginAccess();
  a4 = *(a1 + 104);
  a1 = a4 + 56;
  v28 = 1 << *(a4 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a4 + 56);
  v31 = (v28 + 63) >> 6;
  a3 = v70;
  v65 = v71;
  ++v67;
  ++v68;

  v5 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v5;
    if (!v30)
    {
      break;
    }

LABEL_18:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    sub_25212CB84(*(a4 + 48) + 48 * (v34 | (v5 << 6)), v75);
    sub_25212CBBC(v75, v73);
    if ((v73[16] & 4) != 0)
    {
      v35 = swift_allocObject();
      v56 = v15;
      *(v35 + 16) = v60;
      v36 = v35;
      v55 = v74;
      sub_25212CB84(v73, v72);
      v37 = swift_allocObject();
      sub_25212CBBC(v72, v37 + 16);
      *(v37 + 64) = sub_252130040;
      *(v37 + 72) = v36;
      v54 = v36;
      v71[2] = sub_252130788;
      v71[3] = v37;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 1107296256;
      v71[0] = sub_2520A3B78;
      v71[1] = &block_descriptor_396;
      v53 = _Block_copy(v70);
      v38 = v60;

      sub_252141A6C();
      v69 = MEMORY[0x277D84F90];
      v52 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v39 = v61;
      v40 = v58;
      sub_25214218C();
      v41 = v39;
      v42 = v53;
      MEMORY[0x2530991B0](0, v62, v41, v53);
      _Block_release(v42);

      a3 = v70;
      v43 = v40;
      v15 = v56;
      (*v68)(v61, v43);
      (*v67)(v62, v57);

      sub_25212CBF4(v73);
      v32 = 1;
    }

    else
    {
      sub_25212CBF4(v73);
    }
  }

  while (1)
  {
    v5 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v5 >= v31)
    {
      break;
    }

    v30 = *(a1 + 8 * v5);
    ++v33;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  [v15 unlock];
  if ((v32 & 1) == 0)
  {
    v44 = v64;
    sub_25210AC9C(v64, v75);
    v45 = sub_25214196C();
    v46 = sub_252141FBC();
    sub_25210ACF8(v44);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75[0] = v48;
      *v47 = 136446466;
      v49 = sub_2521425DC();
      v51 = sub_2520A5448(v49, v50, v75);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2520A5448(v44[2], v44[3], v75);
      _os_log_impl(&dword_25207E000, v45, v46, "[%{public}s] handleDeviceChanged no observers to notify device placement inEar %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v48, -1, -1);
      MEMORY[0x253099FD0](v47, -1, -1);
    }
  }
}

uint64_t sub_252117854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252117878, 0, 0);
}

uint64_t sub_252117878()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252117910, v1, 0);
}

uint64_t sub_252117910()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252117984, 0, 0);
}

uint64_t sub_252117984()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252117A3C, v3, v2);
}

uint64_t sub_252117A3C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_252117B04(v3, v1, v4, v2);

  return MEMORY[0x2822009F8](sub_252130830, 0, 0);
}

void sub_252117B04(unint64_t a1, void *a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v72 = sub_252141A4C();
  v82 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252141A8C();
  v81 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 224);
  *(a1 + 224) = a2;
  v13 = *(a1 + 232);
  *(a1 + 232) = 1;
  v75 = a2;
  sub_25212C9DC(v12, v13);
  v84 = a3;
  v14 = *(a3 + 40);
  if (v14 == 1)
  {
    if (*(v84 + 44) == 1)
    {
      v15 = 0x800000025214BAA0;
      v16 = 0xD000000000000022;
      v77 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    if (v14 == 7)
    {
      v77 = 0;
      v15 = 0xE800000000000000;
      v16 = 0x64656C6261736964;
      goto LABEL_10;
    }

    if (v14 == 2 && *(v84 + 44) == 2)
    {
      v77 = 0;
      v15 = 0xE900000000000073;
      v16 = 0x6475622068746F62;
      goto LABEL_10;
    }
  }

  v77 = 0;
  v15 = 0xE700000000000000;
  v16 = 0x64756220656E6FLL;
LABEL_10:
  if (qword_27F4CD708 != -1)
  {
LABEL_41:
    swift_once();
  }

  v17 = sub_25214198C();
  v18 = __swift_project_value_buffer(v17, qword_27F4CDE68);

  v19 = v84;
  sub_25210AC9C(v84, v91);
  v76 = v18;
  v20 = sub_25214196C();
  v21 = sub_252141FBC();

  sub_25210ACF8(v19);
  v22 = os_log_type_enabled(v20, v21);
  v79 = v5;
  v80 = a1;
  v78 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v91[0] = v24;
    *v23 = 136446722;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, v91);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_2520A5448(v16, v15, v91);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_2520A5448(*(v84 + 16), *(v84 + 24), v91);
    _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] handleDeviceChanged device placement %s outEar %s", v23, 0x20u);
    swift_arrayDestroy();
    v29 = v24;
    a1 = v80;
    MEMORY[0x253099FD0](v29, -1, -1);
    MEMORY[0x253099FD0](v23, -1, -1);
  }

  else
  {
  }

  v83 = *(a1 + 88);
  [v83 lock];
  swift_beginAccess();
  v30 = *(a1 + 104);
  v15 = v30 + 56;
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  a1 = v32 & *(v30 + 56);
  v33 = (v31 + 63) >> 6;
  v5 = v86;
  v70 = v87;
  ++v81;
  ++v82;

  a4 = 0;
  v34 = 0;
  while (1)
  {
    v35 = a4;
    if (!a1)
    {
      break;
    }

LABEL_21:
    v36 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    sub_25212CB84(*(v30 + 48) + 48 * (v36 | (a4 << 6)), v91);
    sub_25212CBBC(v91, v89);
    if ((v89[16] & 4) != 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v75;
      v38 = v37;
      v69 = v90;
      sub_25212CB84(v89, v88);
      v39 = swift_allocObject();
      sub_25212CBBC(v88, v39 + 16);
      *(v39 + 64) = sub_25212FD3C;
      *(v39 + 72) = v38;
      v68 = v38;
      v87[2] = sub_252130788;
      v87[3] = v39;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 1107296256;
      v87[0] = sub_2520A3B78;
      v87[1] = &block_descriptor_349;
      v67 = _Block_copy(v86);
      v40 = v75;

      sub_252141A6C();
      v85 = MEMORY[0x277D84F90];
      v66 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v16 = v72;
      v41 = v73;
      sub_25214218C();
      v42 = v41;
      v43 = v67;
      MEMORY[0x2530991B0](0, v74, v42, v67);
      _Block_release(v43);

      v5 = v86;
      (*v82)(v73, v16);
      (*v81)(v74, v71);

      sub_25212CBF4(v89);
      v34 = 1;
    }

    else
    {
      sub_25212CBF4(v89);
    }
  }

  while (1)
  {
    a4 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (a4 >= v33)
    {
      break;
    }

    a1 = *(v15 + 8 * a4);
    ++v35;
    if (a1)
    {
      goto LABEL_21;
    }
  }

  v44 = v83;
  [v83 unlock];
  if ((v34 & 1) == 0)
  {
    v45 = v84;
    sub_25210AC9C(v84, v91);
    v46 = sub_25214196C();
    v47 = sub_252141FBC();
    sub_25210ACF8(v45);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v91[0] = v49;
      *v48 = 136446466;
      v50 = sub_2521425DC();
      v52 = sub_2520A5448(v50, v51, v91);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v44 = v83;
      *(v48 + 14) = sub_2520A5448(*(v84 + 16), *(v84 + 24), v91);
      _os_log_impl(&dword_25207E000, v46, v47, "[%{public}s] handleDeviceChanged no observers to notify device placement outEar %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v49, -1, -1);
      MEMORY[0x253099FD0](v48, -1, -1);
    }
  }

  if ((byte_27F4D34A0 & 1) == 0)
  {
    v53 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v54 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v55 = sub_25214195C();
    v56 = __swift_project_value_buffer(v55, qword_27F4CDF30);
    sub_25214193C(v53, &dword_25207E000, v54, "HT tone playback", 16, 2, v56, "Interrupted by device placement", 31, 2, MEMORY[0x277D84F90]);
    byte_27F4D34A0 = 1;
  }

  if (v77)
  {
    v57 = sub_25214196C();
    v58 = sub_252141FBC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v91[0] = v60;
      *v59 = 136446210;
      v61 = sub_2521425DC();
      v63 = sub_2520A5448(v61, v62, v91);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_25207E000, v57, v58, "[%{public}s] notifying in ear after forcing fit test", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x253099FD0](v60, -1, -1);
      MEMORY[0x253099FD0](v59, -1, -1);
    }

    v64 = v79;
    v65 = v80;
    [v44 lock];
    sub_25211855C(v65, v75);
    if (v64)
    {

      [v44 unlock];
      __break(1u);
    }

    else
    {
      [v44 unlock];
    }
  }
}

void sub_25211855C(uint64_t a1, void *a2)
{
  v34 = a2;
  v33 = sub_252141A4C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_252141A8C();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(a1 + 104);
  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  v28 = v40;
  v27 = (v3 + 8);
  v26 = (v5 + 8);

  v13 = 0;
  v29 = v7;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_25212CB84(*(v7 + 48) + 48 * (v15 | (v14 << 6)), v44);
    sub_25212CBBC(v44, v42);
    if ((v42[16] & 4) != 0)
    {
      v16 = swift_allocObject();
      v17 = v34;
      *(v16 + 16) = v34;
      v18 = v16;
      v37 = v43;
      sub_25212CB84(v42, v41);
      v19 = swift_allocObject();
      sub_25212CBBC(v41, v19 + 16);
      *(v19 + 64) = sub_252130774;
      *(v19 + 72) = v18;
      v36 = v18;
      v40[2] = sub_252130788;
      v40[3] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v40[0] = sub_2520A3B78;
      v40[1] = &block_descriptor_359;
      v35 = _Block_copy(aBlock);
      v20 = v17;

      v21 = v30;
      sub_252141A6C();
      v38 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v22 = v32;
      v23 = v33;
      sub_25214218C();
      v24 = v35;
      MEMORY[0x2530991B0](0, v21, v22, v35);
      v7 = v29;
      _Block_release(v24);

      (*v27)(v22, v23);
      (*v26)(v21, v31);
    }

    sub_25212CBF4(v42);
    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_252118A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252118A70, 0, 0);
}

uint64_t sub_252118A70()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252118B08, v1, 0);
}

uint64_t sub_252118B08()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252118B7C, 0, 0);
}

uint64_t sub_252118B7C()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252118C34, v3, v2);
}

uint64_t sub_252118C34()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_252118CFC(v3, v1, v4, v2);

  return MEMORY[0x2822009F8](sub_252130830, 0, 0);
}

id sub_252118CFC(int64_t a1, void *a2, __int128 *a3, const void *a4)
{
  v5 = a3;
  v8 = a3[3];
  v89 = a3[2];
  v90[0] = v8;
  *(v90 + 12) = *(a3 + 60);
  v9 = a3[1];
  v87 = *a3;
  v88 = v9;
  v72 = sub_252141A4C();
  v76 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_252141A8C();
  v75 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v77 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 224);
  *(a1 + 224) = a2;
  v13 = *(a1 + 232);
  *(a1 + 232) = 3;
  v69 = a2;
  sub_25212C9DC(v12, v13);
  v14 = sub_25212A59C(v5);
  v63 = v5;
  if (v14)
  {
    if (qword_27F4CD708 != -1)
    {
LABEL_25:
      swift_once();
    }

    v15 = sub_25214198C();
    __swift_project_value_buffer(v15, qword_27F4CDE68);
    sub_25210AC9C(v5, v78);
    v16 = sub_25214196C();
    v17 = sub_252141FBC();
    sub_25210ACF8(v5);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78[0] = v19;
      *v18 = 136446466;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, v78);

      *(v18 + 4) = v22;
      v23 = v63;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2520A5448(*(v23 + 16), *(v23 + 24), v78);
      _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] handleDeviceChanged device incompatible:  %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }
  }

  v61 = a4;
  v64 = *(a1 + 88);
  [v64 lock];
  swift_beginAccess();
  v62 = a1;
  v24 = *(a1 + 104);
  v25 = v24 + 56;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  a1 = (v26 + 63) >> 6;
  v66 = (v76 + 8);
  v67 = v80;
  v65 = (v75 + 8);

  v29 = 0;
  v30 = 0;
  v5 = 48;
  v68 = v24;
  while (v28)
  {
LABEL_15:
    sub_25212CB84(*(v24 + 48) + 48 * (__clz(__rbit64(v28)) | (v29 << 6)), v78);
    sub_25212CBBC(v78, aBlock);
    if ((v83 & 4) != 0)
    {
      v32 = swift_allocObject();
      v33 = v69;
      *(v32 + 16) = v69;
      v34 = v32;
      v76 = v84;
      sub_25212CB84(aBlock, v81);
      v35 = swift_allocObject();
      sub_25212CBBC(v81, v35 + 16);
      *(v35 + 64) = sub_252130208;
      *(v35 + 72) = v34;
      v75 = v34;
      v80[2] = sub_252130788;
      v80[3] = v35;
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 1107296256;
      v80[0] = sub_2520A3B78;
      v80[1] = &block_descriptor_416;
      v74 = _Block_copy(v79);
      v36 = v33;

      v37 = v77;
      sub_252141A6C();
      v78[10] = MEMORY[0x277D84F90];
      v73 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v38 = v71;
      v39 = v72;
      sub_25214218C();
      v40 = v37;
      a4 = v74;
      MEMORY[0x2530991B0](0, v40, v38, v74);
      _Block_release(a4);

      v41 = v38;
      v24 = v68;
      v42 = v39;
      v5 = 48;
      (*v66)(v41, v42);
      (*v65)(v77, v70);

      v30 = 1;
    }

    v28 &= v28 - 1;
    sub_25212CBF4(aBlock);
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v31 >= a1)
    {
      break;
    }

    v28 = *(v25 + 8 * v31);
    ++v29;
    if (v28)
    {
      v29 = v31;
      goto LABEL_15;
    }
  }

  result = [v64 unlock];
  if ((v30 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v44 = sub_25214198C();
    __swift_project_value_buffer(v44, qword_27F4CDE68);
    v45 = v63;
    sub_25210AC9C(v63, v78);
    v46 = sub_25214196C();
    v47 = sub_252141FBC();
    sub_25210ACF8(v45);
    v48 = os_log_type_enabled(v46, v47);
    v49 = v62;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78[0] = v51;
      *v50 = 136446466;
      v52 = sub_2521425DC();
      v54 = sub_2520A5448(v52, v53, v78);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2520A5448(*(v45 + 16), *(v45 + 24), v78);
      _os_log_impl(&dword_25207E000, v46, v47, "[%{public}s] handleDeviceChanged no observers to notify device incompatible %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v51, -1, -1);
      MEMORY[0x253099FD0](v50, -1, -1);
    }

    v55 = *(v49 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v49;
    v57 = v87;
    *(v56 + 40) = v88;
    v58 = v90[0];
    *(v56 + 56) = v89;
    *(v56 + 72) = v58;
    *(v56 + 84) = *(v90 + 12);
    *(v56 + 24) = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_252130778;
    *(v59 + 24) = v56;
    v85 = sub_2520ADA58;
    v86 = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v83 = sub_252083924;
    v84 = &block_descriptor_427;
    v60 = _Block_copy(aBlock);
    sub_25210AC9C(v45, v78);

    dispatch_sync(v55, v60);
    _Block_release(v60);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if (v55)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2521195F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_25211961C, 0, 0);
}

uint64_t sub_25211961C()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 120) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_2521196B4, v1, 0);
}

uint64_t sub_2521196B4()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 128) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252119728, 0, 0);
}

uint64_t sub_252119728()
{
  v16 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[17] = v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  sub_25210AC9C(v2, (v0 + 2));
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  sub_25210ACF8(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(*(v6 + 16), *(v6 + 24), &v15);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] handleDeviceLost candidate %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  sub_252141E1C();
  v0[18] = sub_252141E0C();
  v13 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252119950, v13, v12);
}

uint64_t sub_252119950()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  sub_252119A78(v3, v4, v1, v2);

  return MEMORY[0x2822009F8](sub_252119A18, 0, 0);
}

uint64_t sub_252119A18()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_252119A78(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 248);
  v8 = sub_2520F8B10(a2);

  if (v8)
  {
LABEL_7:
    v17 = sub_25211A01C(a2);
    MEMORY[0x28223BE20](v17);
    v19 = v18;
    sub_25214200C();

    if (v47 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v20 = sub_25214198C();
      __swift_project_value_buffer(v20, qword_27F4CDE68);
      v21 = sub_25214196C();
      v22 = sub_252141FBC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v47 = v24;
        *v23 = 136446210;
        v25 = sub_2521425DC();
        v27 = sub_2520A5448(v25, v26, &v47);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] handleDeviceLost keeping device until test ends", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        v28 = v24;
LABEL_21:
        MEMORY[0x253099FD0](v28, -1, -1);
        MEMORY[0x253099FD0](v23, -1, -1);
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v29 = sub_25214198C();
      __swift_project_value_buffer(v29, qword_27F4CDE68);
      v30 = sub_25214196C();
      v31 = sub_252141FBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47 = v33;
        *v32 = 136446210;
        v34 = sub_2521425DC();
        v36 = sub_2520A5448(v34, v35, &v47);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] handleDeviceLost cleaning up", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x253099FD0](v33, -1, -1);
        MEMORY[0x253099FD0](v32, -1, -1);
      }

      v37 = *(a1 + 224);
      *(a1 + 224) = 0;
      v38 = *(a1 + 232);
      *(a1 + 232) = -1;
      sub_25212C9DC(v37, v38);
      v21 = *(a1 + 248);
      sub_2520FCE54();
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 224);
  v10 = *(a1 + 232);
  if (v10 == 255)
  {
    sub_25212D894(*(a1 + 224), 0xFFu);
    v14 = a3;
    sub_25212C9DC(v9, 0xFFu);
    sub_25212C9DC(a3, 3u);
  }

  else
  {
    v47 = *(a1 + 224);
    v48 = v10;
    v45 = a3;
    v46 = 3;
    sub_25212D894(v9, v10);
    v11 = a3;
    sub_25212D894(v9, v10);
    v12 = _s11HearingTest19HTAudioDeviceStatusO2eeoiySbAC_ACtFZ_0(&v47, &v45);
    sub_25212C9F0(v45, v46);
    sub_25212C9F0(v47, v48);
    sub_25212C9DC(v9, v10);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  MEMORY[0x28223BE20](v13);
  v16 = v15;
  sub_25214200C();

  if (v47 == 1)
  {
    goto LABEL_7;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v39 = sub_25214198C();
  __swift_project_value_buffer(v39, qword_27F4CDE68);
  sub_25210AC9C(a2, &v47);
  v21 = sub_25214196C();
  v40 = sub_252141FBC();
  sub_25210ACF8(a2);
  if (os_log_type_enabled(v21, v40))
  {
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v23 = 136446466;
    v42 = sub_2521425DC();
    v44 = sub_2520A5448(v42, v43, &v47);

    *(v23 + 4) = v44;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2520A5448(a2[2], a2[3], &v47);
    _os_log_impl(&dword_25207E000, v21, v40, "[%{public}s] handleDeviceLost ignored: %s", v23, 0x16u);
    swift_arrayDestroy();
    v28 = v41;
    goto LABEL_21;
  }

LABEL_22:
}

uint64_t sub_25211A03C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-v8];
  v10 = sub_252141E3C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v12;
  *(v11 + 92) = *(a1 + 60);
  v13 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  *(v11 + 112) = v3;
  *(v11 + 120) = v6;
  sub_25210AC9C(a1, v15);

  sub_252113050(0, 0, v9, a3, v11);
}

uint64_t sub_25211A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_25211A1B8, 0, 0);
}

uint64_t sub_25211A1B8()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 120) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211A250, v1, 0);
}

uint64_t sub_25211A250()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 128) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25211A2C4, 0, 0);
}

uint64_t sub_25211A2C4()
{
  v16 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[17] = v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  sub_25210AC9C(v2, (v0 + 2));
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  sub_25210ACF8(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(*(v6 + 16), *(v6 + 24), &v15);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] handleDeviceLost device lostConnection: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  sub_252141E1C();
  v0[18] = sub_252141E0C();
  v13 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_25211A4EC, v13, v12);
}

uint64_t sub_25211A4EC()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];

  sub_25211A5A0(v3, v1, v2);

  return MEMORY[0x2822009F8](sub_252130834, 0, 0);
}

void sub_25211A5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v43[1] = a3;
  v51 = sub_252141A4C();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_252141A8C();
  v7 = *(v49 - 8);
  v8 = MEMORY[0x28223BE20](v49);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a1 + 88);
  [v44 lock];
  swift_beginAccess();
  v56 = a1;
  v10 = *(a1 + 104);
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v47 = v60;
  v46 = (v5 + 8);
  v45 = (v7 + 8);
  v57 = v10;

  v16 = 0;
  v17 = 0;
  v52 = a2;
  while (v14)
  {
LABEL_10:
    sub_25212CB84(*(v57 + 48) + 48 * (__clz(__rbit64(v14)) | (v16 << 6)), &v64);
    sub_25212CBBC(&v64, v62);
    v19 = v56;
    v20 = *(v56 + 224);
    *(v56 + 224) = a2;
    v21 = *(v19 + 232);
    *(v19 + 232) = 2;
    v22 = a2;
    sub_25212C9DC(v20, v21);
    if ((v62[16] & 4) != 0)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v24 = v23;
      v55 = v63;
      sub_25212CB84(v62, v61);
      v25 = swift_allocObject();
      sub_25212CBBC(v61, v25 + 16);
      *(v25 + 64) = sub_25212FB5C;
      *(v25 + 72) = v24;
      v54 = v24;
      v60[2] = sub_252130788;
      v60[3] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v60[0] = sub_2520A3B78;
      v60[1] = &block_descriptor_331;
      v53 = _Block_copy(aBlock);
      v26 = v22;

      v27 = v48;
      sub_252141A6C();
      v58 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v28 = v50;
      v29 = v51;
      sub_25214218C();
      v30 = v53;
      MEMORY[0x2530991B0](0, v27, v28, v53);
      _Block_release(v30);
      a2 = v52;

      (*v46)(v28, v29);
      (*v45)(v27, v49);

      v17 = 1;
    }

    v14 &= v14 - 1;
    sub_25212CBF4(v62);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_14;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  [v44 unlock];
  if (v17)
  {
    goto LABEL_17;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_25;
  }

LABEL_14:
  v31 = sub_25214198C();
  __swift_project_value_buffer(v31, qword_27F4CDE68);
  v32 = sub_25214196C();
  v33 = sub_252141FBC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64 = v35;
    *v34 = 136446210;
    v36 = sub_2521425DC();
    v38 = sub_2520A5448(v36, v37, &v64);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] handleDeviceLost no observers to notify device lostConnection", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x253099FD0](v35, -1, -1);
    MEMORY[0x253099FD0](v34, -1, -1);
  }

LABEL_17:
  if ((byte_27F4D34A0 & 1) == 0)
  {
    v39 = sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v40 = qword_27F4CDF28;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v41 = sub_25214195C();
    v42 = __swift_project_value_buffer(v41, qword_27F4CDF30);
    sub_25214193C(v39, &dword_25207E000, v40, "HT tone playback", 16, 2, v42, "Interrupted by device lost", 26, 2, MEMORY[0x277D84F90]);
    byte_27F4D34A0 = 1;
  }
}

void sub_25211AD00(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  ObjectType = swift_getObjectType();
  v12 = a3;
  v13 = a4;
  v8 = *(a2 + 96);
  v9 = a3;
  v8(&v12, ObjectType, a2);
  v10 = v12;
  v11 = v13;

  sub_25212C9F0(v10, v11);
}

uint64_t sub_25211AD94(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v3 = 7562617;
  }

  else
  {
    v3 = 28526;
  }

  if (*(a1 + 48))
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    sub_25210AC9C(a1, v15);

    v6 = sub_25214196C();
    v7 = sub_252141FBC();
    sub_25210ACF8(a1);

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136446722;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, v15);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v15);
      *(v8 + 22) = 2080;
      v13 = sub_2520A5448(v3, v4, v15);

      *(v8 + 24) = v13;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] handleDeviceChanged %s is audio owner %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_25211B004(uint64_t a1)
{
  v2 = *(a1 + 49);
  switch(v2)
  {
    case 20:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v16 = sub_25214198C();
      __swift_project_value_buffer(v16, qword_27F4CDE68);
      sub_25210AC9C(a1, v29);
      v4 = sub_25214196C();
      v5 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_26;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, v29);

      *(v6 + 4) = v19;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v29);
      v11 = "[%{public}s] handleDeviceChanged headphones: %s";
      goto LABEL_25;
    case 18:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v12 = sub_25214198C();
      __swift_project_value_buffer(v12, qword_27F4CDE68);
      sub_25210AC9C(a1, v29);
      v4 = sub_25214196C();
      v5 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_26;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136446466;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, v29);

      *(v6 + 4) = v15;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v29);
      v11 = "[%{public}s] handleDeviceChanged microphone: %s";
      goto LABEL_25;
    case 16:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v3 = sub_25214198C();
      __swift_project_value_buffer(v3, qword_27F4CDE68);
      sub_25210AC9C(a1, v29);
      v4 = sub_25214196C();
      v5 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v4, v5))
      {
LABEL_26:

        return 1;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136446466;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, v29);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v29);
      v11 = "[%{public}s] handleDeviceChanged headset: %s";
LABEL_25:
      _os_log_impl(&dword_25207E000, v4, v5, v11, v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
      goto LABEL_26;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v21 = sub_25214198C();
    __swift_project_value_buffer(v21, qword_27F4CDE68);
    sub_25210AC9C(a1, v29);
    v22 = sub_25214196C();
    v23 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v24 = 136446466;
      v26 = sub_2521425DC();
      v28 = sub_2520A5448(v26, v27, v29);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v29);
      _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] handleDeviceChanged not audio device: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v25, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
    }
  }

  return 0;
}

void HTRequirementStatusManager.init(_:)(void *a1)
{
  v135 = a1;
  v127 = *v1;
  v2 = sub_2521418EC();
  v129 = *(v2 - 8);
  v130 = v2;
  MEMORY[0x28223BE20](v2);
  v128 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252141FEC();
  v5 = *(v4 - 1);
  v138 = v4;
  v139 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141FCC();
  MEMORY[0x28223BE20](v8);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252141A8C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v1;
  v1[4] = 0;
  v1[5] = 0;
  *(v1 + 3) = xmmword_252143B10;
  *(v1 + 64) = 0;
  v131 = sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v133 = " more than 1 year old";
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  v136 = sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  v15 = sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
  v137 = v8;
  sub_25214218C();
  v16 = *MEMORY[0x277D85260];
  v17 = v138;
  v18 = v139 + 104;
  v132 = *(v139 + 13);
  v132(v7, v16, v138);
  v19 = sub_25214202C();
  v20 = v134;
  v134[9] = v19;
  v133 = ".default-observer-queue";
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  v124 = v14;
  v123 = v15;
  sub_25214218C();
  v122 = v16;
  v21 = v16;
  v22 = v132;
  v139 = v18;
  v132(v7, v21, v17);
  v125 = v13;
  v126 = v10;
  v133 = v7;
  *(v20 + 80) = sub_25214202C();
  *(v20 + 88) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v24 = MEMORY[0x277D84FA0];
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 112) = v24;
  *(v20 + 120) = 0u;
  *(v20 + 136) = 0u;
  *(v20 + 152) = 0u;
  *(v20 + 168) = 0u;
  *(v20 + 180) = 0u;
  *(v20 + 200) = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  *(v20 + 208) = 0;
  *(v20 + 216) = 0;
  *(v20 + 224) = 0;
  *(v20 + 232) = -1;
  *(v20 + 240) = 0;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v25 = qword_27F4D3498;
  *(v20 + 248) = qword_27F4D3498;
  *(v20 + 256) = 0;
  v26 = qword_27F4CD700;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_27F4D3430;
  *(v20 + 264) = qword_27F4D3430;
  *(v20 + 272) = 0;
  *(v20 + 280) = 0;
  *(v20 + 288) = 0xE000000000000000;
  *(v20 + 296) = 0;
  *(v20 + 304) = -258;
  *(v20 + 312) = 0;
  *(v20 + 320) = -258;
  *(v20 + 328) = 0;
  *(v20 + 340) = 30;
  *(v20 + 336) = -16843010;
  *(v20 + 344) = 0;
  *(v20 + 352) = 0;
  *(v20 + 360) = -2;
  *(v20 + 368) = 0;
  *(v20 + 376) = 0xE000000000000000;
  *(v20 + 384) = 0;
  v29 = qword_27F4CD708;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_25214198C();
  v121 = __swift_project_value_buffer(v31, qword_27F4CDE68);
  v32 = sub_25214196C();
  v33 = sub_252141FBC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136446210;
    v36 = sub_2521425DC();
    v38 = v30;
    v39 = sub_2520A5448(v36, v37, &aBlock);

    *(v34 + 4) = v39;
    v30 = v38;
    _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] Init status mgr", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x253099FD0](v35, -1, -1);
    MEMORY[0x253099FD0](v34, -1, -1);
  }

  v40 = v135;
  if (v135)
  {
    v41 = v135;
  }

  else
  {
    sub_252141A6C();
    aBlock = MEMORY[0x277D84F90];
    sub_25214218C();
    v22(v133, v122, v138);
    v41 = sub_25214202C();
  }

  v42 = *(v20 + 208);
  *(v20 + 208) = v41;
  v43 = v40;
  v44 = v41;

  v45 = *(v20 + 264);
  *(v20 + 264) = v30;

  v46 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v47 = sub_252141B6C();
  v48 = [v46 initWithSuiteName_];

  if (!v48)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v138 = v43;
  v49 = sub_252141B6C();
  v50 = [v48 BOOLForKey_];

  v139 = v44;
  if (!v50)
  {
    goto LABEL_35;
  }

  v51 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v52 = sub_252141B6C();
  v53 = [v51 initWithSuiteName_];

  if (!v53)
  {
    goto LABEL_43;
  }

  v54 = sub_252141B6C();
  v55 = [v53 integerForKey_];

  NoiseMode.init(rawValue:)(v55);
  v56 = aBlock;
  v57 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v58 = sub_252141B6C();
  v59 = [v57 initWithSuiteName_];

  if (!v59)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v60 = sub_252141B6C();
  [v59 floatForKey_];
  v62 = v61;

  v63 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v64 = sub_252141B6C();
  v65 = [v63 initWithSuiteName_];

  if (!v65)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v66 = sub_252141B6C();
  [v65 floatForKey_];
  v68 = v67;

  v69 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v70 = sub_252141B6C();
  v71 = [v69 initWithSuiteName_];

  if (!v71)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v72 = sub_252141B6C();
  [v71 floatForKey_];
  v74 = v73;

  if (v62 == 0.0)
  {
    v62 = 10.5;
  }

  if (v68 == 0.0)
  {
    v68 = 5.5;
  }

  if (v74 == 0.0)
  {
    v74 = 2.5;
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_31;
  }

  v75 = sub_25214196C();
  v76 = sub_252141FBC();
  if (!os_log_type_enabled(v75, v76))
  {

    goto LABEL_31;
  }

  LODWORD(v137) = v56;
  v77 = swift_slowAlloc();
  v136 = swift_slowAlloc();
  aBlock = v136;
  *v77 = 136447234;
  v78 = sub_2521425DC();
  v80 = sub_2520A5448(v78, v79, &aBlock);

  *(v77 + 4) = v80;
  *(v77 + 12) = 2048;
  v81 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v82 = sub_252141B6C();
  v83 = [v81 initWithSuiteName_];

  if (v83)
  {
    v84 = sub_252141B6C();
    v85 = [v83 integerForKey_];

    *(v77 + 14) = v85;
    *(v77 + 22) = 2048;
    *(v77 + 24) = v62;
    *(v77 + 32) = 2048;
    *(v77 + 34) = v68;
    *(v77 + 42) = 2048;
    *(v77 + 44) = v74;
    _os_log_impl(&dword_25207E000, v75, v76, "[%{public}s] UserDefaults noiseMode %ld total time %f, transit time %f, temporary time %f", v77, 0x34u);
    v86 = v136;
    __swift_destroy_boxed_opaque_existential_0(v136);
    MEMORY[0x253099FD0](v86, -1, -1);
    MEMORY[0x253099FD0](v77, -1, -1);

    v56 = v137;
LABEL_31:
    if (v56 == 15)
    {
      v87 = 7;
    }

    else
    {
      v87 = v56;
    }

    LOBYTE(aBlock) = v87;
    v88 = *(v20 + 208);
    type metadata accessor for HTNoiseSynth();
    swift_allocObject();
    v89 = v88;
    *(v20 + 256) = HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(&aBlock, v88, v62, v68, v74);

    v44 = v139;
LABEL_35:
    v90 = v128;
    sub_2521418DC();
    v91 = sub_2521418AC();
    v93 = v92;
    (*(v129 + 8))(v90, v130);
    *(v20 + 16) = v91;
    *(v20 + 24) = v93;
    sub_25211E3AC(v44);

    v94 = *(v20 + 248);
    v95 = swift_allocObject();
    swift_weakInit();
    v96 = *&v94[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v97 = swift_allocObject();
    v97[2] = v94;
    v97[3] = sub_25212C8F8;
    v97[4] = v95;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_25212C948;
    *(v98 + 24) = v97;
    v144 = sub_2520AD484;
    v145 = v98;
    aBlock = MEMORY[0x277D85DD0];
    v141 = 1107296256;
    v142 = sub_252083924;
    v143 = &block_descriptor_9;
    v99 = _Block_copy(&aBlock);
    v100 = v94;

    swift_retain_n();

    dispatch_sync(v96, v99);

    _Block_release(v99);
    LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

    if (v96)
    {
      __break(1u);
    }

    else
    {
      v101 = *(v20 + 248);
      v102 = *&v101[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v103 = swift_allocObject();
      *(v103 + 16) = v101;
      *(v103 + 24) = v20;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_25212C9BC;
      *(v104 + 24) = v103;
      v144 = sub_2520ADA58;
      v145 = v104;
      aBlock = MEMORY[0x277D85DD0];
      v141 = 1107296256;
      v142 = sub_252083924;
      v143 = &block_descriptor_26;
      v105 = _Block_copy(&aBlock);
      swift_retain_n();
      v106 = v101;

      dispatch_sync(v102, v105);

      _Block_release(v105);
      LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

      if ((v102 & 1) == 0)
      {
        v107 = [objc_opt_self() defaultCenter];
        [v107 addObserver:v20 selector:sel_handleRouteChangeWithNotification_ name:*MEMORY[0x277CB8210] object:0];

        if (qword_27F4CD6F0 == -1)
        {
LABEL_38:
          v108 = qword_27F4D3420;
          v109 = swift_allocObject();
          swift_weakInit();
          v110 = (v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements);
          v111 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements);
          v112 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements + 8);
          *v110 = sub_25212C9C4;
          v110[1] = v109;

          sub_2520A3730(v111, v112);

          v113 = swift_allocObject();
          swift_weakInit();
          v114 = (v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
          v115 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
          v116 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements + 8);
          *v114 = sub_25212C9CC;
          v114[1] = v113;

          sub_2520A3730(v115, v116);

          v117 = swift_allocObject();
          swift_weakInit();

          v118 = (v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements);
          v119 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements);
          v120 = *(v108 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements + 8);
          *v118 = sub_25212C9D4;
          v118[1] = v117;

          sub_2520A3730(v119, v120);

          return;
        }

LABEL_41:
        swift_once();
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_25211C79C(_OWORD *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2521195D8(a1);
  }

  return result;
}

uint64_t sub_25211C7FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25211E7F0();
  }

  return result;
}

uint64_t sub_25211C854(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25212D06C(1);
  }

  return result;
}

uint64_t sub_25211C8B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25211EB24();
    sub_25212D06C(0);
  }

  return result;
}

uint64_t sub_25211C910(uint64_t a1, int a2)
{
  v151 = a2;
  v150 = *v2;
  v4 = sub_252141D3C();
  *(v4 + 16) = 16;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  v5 = sub_252141D3C();
  *(v5 + 16) = 16;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  v166 = 0;
  v6 = sub_252141D3C();
  *(v6 + 16) = 16;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  v162 = v6;
  v163 = 0;
  *&v164[1] = 0;
  v7 = *(a1 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
  v156 = a1;
  v158 = a1;
  v155 = v7;
  sub_25214200C();
  v8 = v159[0] != 0;
  v167 = v159[0] != 0;
  v165 = v159[0] != 0;
  *v164 = v159[0] != 0;
  if (v159[0])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  if (v159[0])
  {
    v10 = -63;
  }

  else
  {
    v10 = -64;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = (v8 << 8) | 0x8000;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = ((v8 & 1) << 8) | 0xC000;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 28) = 0x8000;
  v148 = v13;
  *(v13 + 24) = v9;
  v14 = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = 3;
  v152 = v15;
  *(v15 + 32) = v10;
  v147 = v11;
  v157 = v5;
  if (v151)
  {
    MEMORY[0x28223BE20](v15);
    swift_bridgeObjectRetain_n();

    v16 = sub_25214200C();
    v17 = v159[0] < 3;
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v17 = 0;
  }

  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  sub_25214200C();
  v18 = *(v159[0] + 16);

  if (v18 >= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v18;
  }

  v21 = v150;
  v149 = v12;
  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2520A59A0(v14);
    }

    v22 = v157;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2520A59A0(v157);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v23 = 0;
    v157 = v22;
    v21 = v22 + 32;
    v24 = v14 + 32;
    v154 = v14;
    while (1)
    {
      v25 = &v146;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      sub_25214200C();
      if (v23 >= *(v159[0] + 16))
      {
        break;
      }

      v26 = *(v159[0] + 8 * v23 + 32);

      if (v23 == 16)
      {
        goto LABEL_114;
      }

      v27 = v26;
      v28 = v27 - flt_28644DFB0[v23 + 8];
      if (v17)
      {
        v29 = flt_28644E010[v23 + 8];
        v28 = v28 * ((powf(v29, 4.0) * 148840000.0) / ((((v29 * v29) + 424.36) * ((v29 * v29) + 148840000.0)) * sqrtf(((v29 * v29) + 11599.0) * ((v29 * v29) + 544500.0))));
      }

      LODWORD(v25) = v154;
      if (v28 < 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v28;
      }

      if (v23 >= *(v154 + 2))
      {
        goto LABEL_115;
      }

      v31 = fminf(v30, 90.0);
      *&v24[4 * v23] = v31;
      if (v23 >= *(v157 + 16))
      {
        goto LABEL_116;
      }

      *(v21 + 4 * v23) = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2520A59A0(v6);
        v6 = isUniquelyReferenced_nonNull_native;
      }

      if (v23 >= *(v6 + 16))
      {
        goto LABEL_117;
      }

      *(v6 + 4 * v23++ + 32) = v31;
      if (v20 == v23)
      {
        v162 = v6;
        v21 = v150;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v154 = v14;
LABEL_34:
  v32 = v153[33];
  LODWORD(v24) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A);
  v164[1] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A);
  LODWORD(v25) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B);
  v164[2] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B);
  LODWORD(v23) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A);
  v164[3] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A);
  LODWORD(v20) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B);
  v164[4] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B);
  if (qword_27F4CD7B0 != -1)
  {
LABEL_118:
    isUniquelyReferenced_nonNull_native = swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v33 = sub_25214198C();
    __swift_project_value_buffer(v33, qword_27F4CDE68);
    v34 = sub_25214196C();
    v35 = sub_252141FBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v159[0] = v146;
      *v36 = 136447234;
      v37 = sub_2521425DC();
      v39 = v35;
      v40 = sub_2520A5448(v37, v38, v159);

      *(v36 + 4) = v40;
      *(v36 + 12) = 1024;
      *(v36 + 14) = v24;
      *(v36 + 18) = 1024;
      *(v36 + 20) = v25;
      *(v36 + 24) = 1024;
      *(v36 + 26) = v23;
      *(v36 + 30) = 1024;
      *(v36 + 32) = v20;
      v41 = v39;
      v21 = v150;
      _os_log_impl(&dword_25207E000, v34, v41, "[%{public}s] highStatNoise %{BOOL}d, highInstNoise %{BOOL}d, modHighStatNoise %{BOOL}d, modHighInstNoise %{BOOL}d ", v36, 0x24u);
      v42 = v146;
      __swift_destroy_boxed_opaque_existential_0(v146);
      MEMORY[0x253099FD0](v42, -1, -1);
      MEMORY[0x253099FD0](v36, -1, -1);
    }
  }

  if ((v151 & 1) == 0)
  {
    v45 = v147;
LABEL_60:
    v46 = v149;
    v47 = v148;
    goto LABEL_99;
  }

  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  sub_25214200C();
  if (v165)
  {
    v43 = 256;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 | v166;
  v45 = v147;
  v46 = v149;
  v47 = v148;
  switch(v159[0])
  {
    case 3:
      v63 = 0xD000000000000027;
      v77 = *(v149 + 16);
      v78 = v157;
      *(v149 + 16) = v157;
      *(v46 + 24) = v44 | 0x8000;

      j__swift_bridgeObjectRelease(v77);
      v79 = *(v45 + 16);
      *(v45 + 16) = v78;
      v80 = *(v45 + 24);
      *(v45 + 24) = v44 | 0x4000;

      sub_25212CA18(v79, v80);
      swift_beginAccess();
      v81 = v163;
      v82 = 256;
      if (!v164[0])
      {
        v82 = 0;
      }

      v83 = 0x10000;
      if (!v164[1])
      {
        v83 = 0;
      }

      v84 = 0x1000000;
      if (!v164[2])
      {
        v84 = 0;
      }

      v85 = 0x100000000;
      if (!v164[3])
      {
        v85 = 0;
      }

      v86 = 0x10000000000;
      if (!v164[4])
      {
        v86 = 0;
      }

      v87 = *(v47 + 16);
      v88 = *(v47 + 24) | (*(v47 + 28) << 32);
      *(v47 + 16) = v162;
      *(v47 + 24) = v82 | v81 | v83 | v84;
      *(v47 + 28) = (v85 | v86 | 0x400000000000uLL) >> 32;

      sub_25212CA68(v87, v88);
      v62 = "eptable (default)";
      v61 = v167 | 0x80;
      break;
    case 2:
      v63 = 0xD000000000000027;
      v64 = *(v149 + 16);
      v65 = v157;
      *(v149 + 16) = v157;
      *(v46 + 24) = v44 | 0x4000;

      j__swift_bridgeObjectRelease(v64);
      v66 = *(v45 + 16);
      *(v45 + 16) = v65;
      v67 = *(v45 + 24);
      *(v45 + 24) = v44;

      sub_25212CA18(v66, v67);
      swift_beginAccess();
      v68 = 256;
      if (!v164[0])
      {
        v68 = 0;
      }

      v69 = v68 | v163;
      v70 = 0x10000;
      if (!v164[1])
      {
        v70 = 0;
      }

      v71 = 0x1000000;
      if (!v164[2])
      {
        v71 = 0;
      }

      v72 = v69 | v70 | v71;
      v73 = 0x100000000;
      if (!v164[3])
      {
        v73 = 0;
      }

      v74 = 0x10000000000;
      if (!v164[4])
      {
        v74 = 0;
      }

      v75 = *(v47 + 16);
      v76 = *(v47 + 24) | (*(v47 + 28) << 32);
      *(v47 + 16) = v162;
      *(v47 + 28) = (v73 | v74) >> 32;
      *(v47 + 24) = v72;

      sub_25212CA68(v75, v76);
      v62 = "s: high, NOT acceptable";
      v61 = v167 | 0x40;
      break;
    case 1:
      v48 = *(v149 + 16);
      v49 = v157;
      *(v149 + 16) = v157;
      *(v46 + 24) = v44;

      j__swift_bridgeObjectRelease(v48);
      v50 = *(v45 + 16);
      *(v45 + 16) = v49;
      v51 = *(v45 + 24);
      *(v45 + 24) = v44;

      sub_25212CA18(v50, v51);
      swift_beginAccess();
      v52 = 256;
      if (!v164[0])
      {
        v52 = 0;
      }

      v53 = v52 | v163;
      v54 = 0x10000;
      if (!v164[1])
      {
        v54 = 0;
      }

      v55 = 0x1000000;
      if (!v164[2])
      {
        v55 = 0;
      }

      v56 = v53 | v54 | v55;
      v57 = 0x100000000;
      if (!v164[3])
      {
        v57 = 0;
      }

      v58 = 0x10000000000;
      if (!v164[4])
      {
        v58 = 0;
      }

      v59 = *(v47 + 16);
      v60 = *(v47 + 24) | (*(v47 + 28) << 32);
      *(v47 + 16) = v162;
      *(v47 + 28) = (v57 | v58) >> 32;
      *(v47 + 24) = v56;

      sub_25212CA68(v59, v60);
      v61 = v167;
      v62 = "s: moderate, acceptable";
      v63 = 0xD000000000000022;
      break;
    default:
      v89 = *(v149 + 16);
      v90 = v157;
      *(v149 + 16) = v157;
      *(v46 + 24) = v44 | 0x8000;

      j__swift_bridgeObjectRelease(v89);
      v91 = *(v45 + 16);
      *(v45 + 16) = v90;
      v92 = *(v45 + 24);
      *(v45 + 24) = v44 | 0x4000;

      sub_25212CA18(v91, v92);
      swift_beginAccess();
      v93 = v163;
      v94 = 256;
      if (!v164[0])
      {
        v94 = 0;
      }

      v95 = 0x10000;
      if (!v164[1])
      {
        v95 = 0;
      }

      v96 = 0x1000000;
      if (!v164[2])
      {
        v96 = 0;
      }

      v97 = 0x100000000;
      if (!v164[3])
      {
        v97 = 0;
      }

      v98 = 0x10000000000;
      if (!v164[4])
      {
        v98 = 0;
      }

      v99 = *(v47 + 16);
      v100 = *(v47 + 24) | (*(v47 + 28) << 32);
      *(v47 + 16) = v162;
      *(v47 + 24) = v94 | v93 | v95 | v96;
      *(v47 + 28) = (v97 | v98 | 0x400000000000uLL) >> 32;

      sub_25212CA68(v99, v100);
      v61 = v167 | 0x80;
      v62 = "isCurrentPortCheckPassed";
      v63 = 0xD000000000000031;
      break;
  }

  v101 = v152;
  v102 = *(v152 + 16);
  *(v152 + 16) = v154;
  *(v101 + 24) = 3;
  *(v101 + 32) = v61;

  j__swift_bridgeObjectRelease(v102);
  v103 = v62 | 0x8000000000000000;
  if (v153[46] == v63 && v103 == v153[47])
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_99;
  }

  v104 = sub_25214247C();

  if ((v104 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v136 = sub_25214198C();
    __swift_project_value_buffer(v136, qword_27F4CDE68);

    v137 = sub_25214196C();
    v138 = sub_252141FBC();

    v139 = v137;
    if (os_log_type_enabled(v137, v138))
    {
      v140 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v160 = v156;
      *v140 = 136446466;
      v141 = sub_2521425DC();
      v143 = sub_2520A5448(v141, v142, &v160);

      *(v140 + 4) = v143;
      *(v140 + 12) = 2080;
      *(v140 + 14) = sub_2520A5448(v63, v103, &v160);
      _os_log_impl(&dword_25207E000, v139, v138, "[%{public}s] %s", v140, 0x16u);
      v144 = v156;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v144, -1, -1);
      MEMORY[0x253099FD0](v140, -1, -1);
    }

    else
    {
    }

    v145 = v153;
    v153[46] = v63;
    v145[47] = v103;

    goto LABEL_60;
  }

LABEL_99:
  v105 = *(v46 + 16);
  v106 = v153;
  v107 = v153[39];
  v153[39] = v105;
  v108 = *(v106 + 320);
  *(v106 + 320) = *(v46 + 24);
  j__swift_bridgeObjectRetain(v105);
  sub_25212CA2C(v107, v108);
  v109 = *(v45 + 16);
  v110 = *(v106 + 296);
  *(v106 + 296) = v109;
  v111 = *(v45 + 24);
  v112 = *(v106 + 304);
  *(v106 + 304) = v111;
  v113.n128_f64[0] = sub_25212CC54(v109, v111);
  sub_25212CA04(v110, v112, v113);
  v114 = *(v47 + 16);
  v115 = *(v47 + 28);
  v116 = *(v47 + 24);
  v117 = *(v106 + 328);
  v118 = *(v106 + 336) | (*(v106 + 340) << 32);
  *(v106 + 328) = v114;
  *(v106 + 336) = v116;
  *(v106 + 340) = v115;
  v119.n128_f64[0] = sub_25212CC68(v114, v116 | (v115 << 32));
  sub_25212CA44(v117, v118, v119);
  v120 = v152;
  v121 = *(v152 + 16);
  v122 = *(v152 + 24);
  v123 = *(v106 + 344);
  v124 = *(v106 + 352);
  *(v106 + 344) = v121;
  *(v106 + 352) = v122;
  v125 = *(v106 + 360);
  *(v106 + 360) = *(v120 + 32);
  j__swift_bridgeObjectRetain(v121);
  sub_25212CA7C(v123, v124, v125);
  v161[0] = 0;
  v126 = *(v106 + 88);
  [v126 lock];
  sub_25211DA88(v106, v46, v45, v47, v120, v161, v21);
  [v126 unlock];

  if (v161[0])
  {
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v127 = sub_25214198C();
    __swift_project_value_buffer(v127, qword_27F4CDE68);
    v128 = sub_25214196C();
    v129 = sub_252141FBC();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v160 = v131;
      *v130 = 136446210;
      v132 = sub_2521425DC();
      v134 = sub_2520A5448(v132, v133, &v160);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_25207E000, v128, v129, "[%{public}s] no observers to notify noise status changed (1)", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x253099FD0](v131, -1, -1);
      MEMORY[0x253099FD0](v130, -1, -1);
    }
  }
}

void sub_25211DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v54 = a7;
  v70 = a6;
  v68 = a5;
  v62 = a3;
  v61 = a2;
  v60 = sub_252141A4C();
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_252141A8C();
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 104);
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);

  v72 = a4;
  swift_beginAccess();
  v18 = 0;
  v19 = (v15 + 63) >> 6;
  v71 = "tat";
  v69 = "noiseTemporaryTime";
  v57 = v75;
  v56 = (v9 + 8);
  v55 = (v11 + 8);
  *&v20 = 136446466;
  v53 = v20;
  v66 = v13;
  while (v17)
  {
LABEL_11:
    sub_25212CB84(*(v13 + 48) + 48 * (__clz(__rbit64(v17)) | (v18 << 6)), v81);
    sub_25212CBBC(v81, v79);
    if ((v79[16] & 2) != 0)
    {
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v24 = sub_25214198C();
        __swift_project_value_buffer(v24, qword_27F4CDE68);
        sub_25212CB84(v79, v76);
        v25 = sub_25214196C();
        v26 = sub_252141FBC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          aBlock[0] = v65;
          *v27 = v53;
          v28 = sub_2521425DC();
          v30 = sub_2520A5448(v28, v29, aBlock);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2080;
          v31 = v77;
          v32 = v78;

          sub_25212CBF4(v76);
          v33 = sub_2520A5448(v31, v32, aBlock);
          v13 = v66;

          *(v27 + 14) = v33;
          _os_log_impl(&dword_25207E000, v25, v26, "[%{public}s] NoiseCheck request %s in queue", v27, 0x16u);
          v34 = v65;
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v34, -1, -1);
          MEMORY[0x253099FD0](v27, -1, -1);
        }

        else
        {

          sub_25212CBF4(v76);
        }
      }

      v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v36 = sub_252141B6C();
      v37 = [v35 initWithSuiteName_];

      if (!v37)
      {
        goto LABEL_31;
      }

      v38 = sub_252141B6C();
      v39 = [v37 BOOLForKey_];

      if ((v39 & 1) == 0)
      {
        v40 = swift_allocObject();
        v41 = v62;
        v40[2] = v61;
        v40[3] = v41;
        v42 = v68;
        v40[4] = v72;
        v40[5] = v42;
        v65 = v80;
        sub_25212CB84(v79, v76);
        v43 = swift_allocObject();
        sub_25212CBBC(v76, v43 + 16);
        *(v43 + 64) = sub_252130680;
        *(v43 + 72) = v40;
        v75[2] = sub_252130788;
        v75[3] = v43;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v75[0] = sub_2520A3B78;
        v75[1] = &block_descriptor_317;
        v64 = _Block_copy(aBlock);

        v44 = v67;
        sub_252141A6C();
        v73 = MEMORY[0x277D84F90];
        v63 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
        sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
        v45 = v59;
        v46 = v60;
        sub_25214218C();
        v47 = v44;
        v48 = v64;
        MEMORY[0x2530991B0](0, v47, v45, v64);
        _Block_release(v48);

        v49 = v46;
        v13 = v66;
        (*v56)(v45, v49);
        (*v55)(v67, v58);
      }

      *v70 = 1;
      if (((*(v72 + 28) << 32) & 0xC00000000000) == 0x400000000000 && (byte_27F4D34A0 & 1) == 0)
      {
        v50 = sub_2521420BC();
        if (qword_27F4CD748 != -1)
        {
          swift_once();
        }

        v51 = qword_27F4CDF28;
        if (qword_27F4CD750 != -1)
        {
          swift_once();
        }

        v21 = sub_25214195C();
        v22 = __swift_project_value_buffer(v21, qword_27F4CDF30);
        LOBYTE(v52) = 2;
        sub_25214193C(v50, &dword_25207E000, v51, "HT tone playback", 16, 2, v22, "Interrupted by noise", 20, v52, MEMORY[0x277D84F90]);
        byte_27F4D34A0 = 1;
      }
    }

    v17 &= v17 - 1;
    sub_25212CBF4(v79);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return;
    }

    v17 = *(v14 + 8 * v23);
    ++v18;
    if (v17)
    {
      v18 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25211E3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [aBlock setDispatchQueue_];

  sub_25214200C();
  [aBlock setDiscoveryFlags_];

  sub_25214200C();
  v5 = aBlock;
  v6 = swift_allocObject();
  swift_weakInit();
  v19 = sub_252130590;
  v20 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2520FEAF8;
  v18 = &block_descriptor_524;
  v7 = _Block_copy(&aBlock);

  [v5 setDeviceFoundHandler_];
  _Block_release(v7);

  sub_25214200C();
  v8 = aBlock;
  v9 = swift_allocObject();
  swift_weakInit();
  v19 = sub_2521305C0;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2520FEAF8;
  v18 = &block_descriptor_529_0;
  v10 = _Block_copy(&aBlock);

  [v8 setDeviceLostHandler_];
  _Block_release(v10);

  sub_25214200C();
  v11 = aBlock;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  v19 = sub_2521305F0;
  v20 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2520FE7C8;
  v18 = &block_descriptor_536;
  v13 = _Block_copy(&aBlock);

  [v11 activateWithCompletion_];
  _Block_release(v13);

  v14 = v2[33];
  sub_2520C834C();
}

uint64_t sub_25211E75C(void *a1, uint64_t a2, void (*a3)(void *))
{
  v4 = a1;
  sub_25212CC7C(v4, v6);

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return sub_25210ACF8(v6);
  }

  a3(v6);
  sub_25210ACF8(v6);
}

void sub_25211E7F0()
{
  if (*(v0 + 216) == 1)
  {
    *(v0 + 216) = 0;
    v1 = *(v0 + 264);
    sub_2520C8748();

    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    [v18 invalidate];

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136446210;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Deactivate discovery", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    oslog = sub_25214196C();
    v11 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_25207E000, oslog, v11, "[%{public}s] Discovery already deactivated", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_25211EB24()
{
  v1 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Activating discovery", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if (*(v0 + 216))
  {
    oslog = sub_25214196C();
    v10 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136446210;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, aBlock);

      *(v11 + 4) = v15;
      v16 = "[%{public}s] Discovery already activated";
LABEL_13:
      _os_log_impl(&dword_25207E000, oslog, v10, v16, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);

      return;
    }
  }

  else
  {
    v17 = *(v0 + 208);
    if (v17)
    {
      v18 = objc_allocWithZone(MEMORY[0x277CBE030]);
      v19 = v17;
      v20 = [v18 init];
      v21 = *(v1 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      *(v22 + 24) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_252130310;
      *(v23 + 24) = v22;
      aBlock[4] = sub_2520ADA58;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_252083924;
      aBlock[3] = &block_descriptor_437;
      v24 = _Block_copy(aBlock);

      v25 = v20;

      dispatch_sync(v21, v24);

      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
      }

      else
      {
        sub_25211E3AC(v19);
      }

      return;
    }

    oslog = sub_25214196C();
    v10 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136446210;
      v26 = sub_2521425DC();
      v28 = sub_2520A5448(v26, v27, aBlock);

      *(v11 + 4) = v28;
      v16 = "[%{public}s] Invalid queue";
      goto LABEL_13;
    }
  }
}

void sub_25211EFA8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v62 - v3;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72[0] = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = v1;
    v12 = sub_2520A5448(v9, v10, v72);

    *(v7 + 4) = v12;
    v1 = v11;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] handleRouteChange", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v13 = sub_25214170C();
  if (!v13)
  {
    goto LABEL_34;
  }

  v14 = v13;
  v70 = sub_252141B9C();
  v71 = v15;
  sub_2521421DC();
  if (!*(v14 + 16) || (v16 = sub_25213E754(v72), (v17 & 1) == 0))
  {

    sub_2520E42D8(v72);
    goto LABEL_34;
  }

  sub_2520A5FC4(*(v14 + 56) + 32 * v16, v73);
  sub_2520E42D8(v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v51 = sub_25214196C();
    v52 = sub_252141FAC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v53 = 136446210;
      v55 = sub_2521425DC();
      v57 = sub_2520A5448(v55, v56, v72);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] handleRouteChange Route change reason unavailable", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x253099FD0](v54, -1, -1);
      MEMORY[0x253099FD0](v53, -1, -1);
    }

    return;
  }

  v64 = v1;
  v18 = v70;
  v19 = sub_25214196C();
  v20 = sub_252141FBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v72[0] = v22;
    *v21 = 136446466;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, v72);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v18;
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] handleRouteChange Route change reason %lu ", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  if (v18 != 1)
  {
    return;
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 currentRoute];

  v28 = [v27 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v29 = sub_252141CDC();

  if (v29 >> 62)
  {
LABEL_42:
    v31 = sub_25214232C();
    if (v31)
    {
      goto LABEL_14;
    }

LABEL_43:

    return;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_43;
  }

LABEL_14:
  v32 = 0;
  v33 = 0;
  v66 = *MEMORY[0x277CB81D0];
  v67 = v29 & 0xC000000000000001;
  v65 = v29 & 0xFFFFFFFFFFFFFF8;
  *&v30 = 136446210;
  v62 = v30;
LABEL_15:
  LODWORD(v63) = v32;
  v34 = v33;
  do
  {
    if (v67)
    {
      v35 = MEMORY[0x2530993D0](v34, v29);
    }

    else
    {
      if (v34 >= *(v65 + 16))
      {
        goto LABEL_41;
      }

      v35 = *(v29 + 8 * v34 + 32);
    }

    v36 = v35;
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v37 = [v35 portType];
    v38 = sub_252141B9C();
    v40 = v39;
    if (v38 == sub_252141B9C() && v40 == v41)
    {

LABEL_29:
      v44 = sub_25214196C();
      v45 = sub_252141FAC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v72[0] = v63;
        *v46 = v62;
        v47 = sub_2521425DC();
        v49 = sub_2520A5448(v47, v48, v72);

        *(v46 + 4) = v49;
        _os_log_impl(&dword_25207E000, v44, v45, "[%{public}s] handleRouteChange switched to wired headphone", v46, 0xCu);
        v50 = v63;
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x253099FD0](v50, -1, -1);
        MEMORY[0x253099FD0](v46, -1, -1);
      }

      v32 = 1;
      if (v33 == v31)
      {

LABEL_39:
        v58 = sub_252141E3C();
        v59 = v69;
        (*(*(v58 - 8) + 56))(v69, 1, 1, v58);
        v60 = swift_allocObject();
        v60[2] = 0;
        v60[3] = 0;
        v61 = v64;
        v60[4] = v68;
        v60[5] = v61;

        sub_252113050(0, 0, v59, &unk_252147B10, v60);

        return;
      }

      goto LABEL_15;
    }

    v43 = sub_25214247C();

    if (v43)
    {
      goto LABEL_29;
    }

    ++v34;
  }

  while (v33 != v31);

  if (v63)
  {
    goto LABEL_39;
  }
}

uint64_t sub_25211F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x2822009F8](sub_25211F780, 0, 0);
}

uint64_t sub_25211F780()
{
  v1 = *(*(v0 + 176) + 248);
  *(swift_task_alloc() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  *(v0 + 192) = 0;

  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  v4 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v4;
  *(v0 + 76) = *(v0 + 156);
  if (*(v0 + 24))
  {
    sub_2520A2584(v0 + 16, &qword_27F4CE6F0, &qword_2521467A0);
    if (qword_27F4CD7C8 != -1)
    {
      swift_once();
    }

    v5 = qword_27F4D34A8;
    *(v0 + 200) = qword_27F4D34A8;

    return MEMORY[0x2822009F8](sub_25211F910, v5, 0);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_25211F910()
{
  v1 = *(*(v0 + 200) + 112);
  *(v0 + 208) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25211F984, 0, 0);
}

id sub_25211F984()
{
  v1 = v0[26];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = *(v4 + 88);
  [v5 lock];
  sub_25211FA90(v4, v1, v3);
  if (v2)
  {

    return [v5 unlock];
  }

  else
  {
    [v5 unlock];

    v7 = v0[1];

    return v7();
  }
}

void sub_25211FA90(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v34 = a2;
  v33 = sub_252141A4C();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_252141A8C();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v39 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(a1 + 104);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v29 = v42;
  v28 = (v4 + 8);
  v27 = (v6 + 8);

  v14 = 0;
  v30 = v8;
  while (v12)
  {
LABEL_10:
    sub_25212CB84(*(v8 + 48) + 48 * (__clz(__rbit64(v12)) | (v14 << 6)), v46);
    sub_25212CBBC(v46, v44);
    if ((v44[16] & 4) != 0)
    {
      v16 = swift_allocObject();
      v17 = v34;
      v18 = v35;
      *(v16 + 16) = v34;
      *(v16 + 24) = v18;
      v38 = v45;
      sub_25212CB84(v44, v43);
      v19 = swift_allocObject();
      sub_25212CBBC(v43, v19 + 16);
      *(v19 + 64) = sub_25212F9A4;
      *(v19 + 72) = v16;
      v42[2] = sub_252130788;
      v42[3] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v42[0] = sub_2520A3B78;
      v42[1] = &block_descriptor_301;
      v37 = _Block_copy(aBlock);
      v20 = v17;

      v21 = v39;
      sub_252141A6C();
      v40 = MEMORY[0x277D84F90];
      v36 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v22 = v32;
      v23 = v33;
      sub_25214218C();
      v24 = v21;
      v25 = v37;
      MEMORY[0x2530991B0](0, v24, v22, v37);
      v8 = v30;
      _Block_release(v25);

      (*v28)(v22, v23);
      (*v27)(v39, v31);
    }

    v12 &= v12 - 1;
    sub_25212CBF4(v44);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_25211FF88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v17 = a3;
  v18 = 2;
  v7 = *(a2 + 96);
  v8 = a3;
  v7(&v17, ObjectType, a2);
  sub_25212C9F0(v17, v18);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  __swift_project_value_buffer(v9, qword_27F4CDE68);
  oslog = sub_25214196C();
  v10 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25207E000, oslog, v10, "[%{public}s] handleRouteChange Lost connection due to new device available", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }
}

void *HTRequirementStatusManager.deinit()
{
  v1 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Deinit status mgr", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  *(v1 + 216) = 0;
  v10 = *(v1 + 264);
  sub_2520C8748();

  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v1 name:*MEMORY[0x277CB8210] object:0];

  [*(v1 + 200) invalidate];
  v12 = *(v1 + 208);
  *(v1 + 208) = 0;

  sub_25210B774(*(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184));

  sub_25212C9DC(*(v1 + 224), *(v1 + 232));

  sub_25212CA04(*(v1 + 296), *(v1 + 304), v13);
  sub_25212CA2C(*(v1 + 312), *(v1 + 320));
  sub_25212CA44(*(v1 + 328), *(v1 + 336) | (*(v1 + 340) << 32), v14);
  sub_25212CA7C(*(v1 + 344), *(v1 + 352), *(v1 + 360));

  return v1;
}

uint64_t HTRequirementStatusManager.__deallocating_deinit()
{
  HTRequirementStatusManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252120534(void *a1, uint64_t a2)
{
  v3 = v2;
  v144 = a1;
  v5 = *v2;
  v135 = sub_252141A4C();
  v146 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_252141A8C();
  v7 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v136 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4CD708 != -1)
  {
LABEL_59:
    swift_once();
  }

  v150 = (v3 + 34);
  v9 = sub_25214198C();
  v10 = __swift_project_value_buffer(v9, qword_27F4CDE68);
  swift_retain_n();

  v142 = v10;
  v11 = sub_25214196C();
  v12 = sub_252141FBC();

  v13 = os_log_type_enabled(v11, v12);
  v137 = v5;
  v145 = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v158[0] = v15;
    *v14 = 136446978;
    v16 = sub_2521425DC();
    v18 = sub_2520A5448(v16, v17, v158);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v144;
    *(v14 + 22) = 2080;
    v19 = MEMORY[0x253098E80](a2, MEMORY[0x277D83A90]);
    v21 = sub_2520A5448(v19, v20, v158);

    *(v14 + 24) = v21;
    *(v14 + 32) = 1024;
    v22 = *v150;

    *(v14 + 34) = v22;

    _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] NoiseUpdated %ld, %s, timerdone %{BOOL}d", v14, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v15, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  else
  {
  }

  v23 = sub_252141D3C();
  *(v23 + 16) = 16;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  v164 = 3;
  v165 = 0;
  v24 = sub_252141D3C();
  *(v24 + 16) = 16;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  v162 = 0;
  v25 = sub_252141D3C();
  *(v25 + 16) = 16;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v163 = a2;
  swift_bridgeObjectRetain_n();

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  v151 = a2;
  if (byte_27F4D3492 != 1)
  {
    goto LABEL_28;
  }

  v26 = sub_25214196C();
  v27 = sub_252141FBC();
  if (!os_log_type_enabled(v26, v27))
  {

LABEL_28:
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    LODWORD(v143) = 0;
    v39 = 0;
    v38 = 0;
    goto LABEL_29;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v158[0] = v29;
  *v28 = 136446466;
  v30 = sub_2521425DC();
  v32 = sub_2520A5448(v30, v31, v158);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;

  v34 = MEMORY[0x253098E80](v33, MEMORY[0x277D83A90]);
  v36 = v35;

  v37 = sub_2520A5448(v34, v36, v158);

  *(v28 + 14) = v37;
  _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] Noise data %s", v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x253099FD0](v29, -1, -1);
  MEMORY[0x253099FD0](v28, -1, -1);

  v38 = HIBYTE(v162);
  LODWORD(v143) = HIBYTE(v161);
  if (v162)
  {
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  if (v161)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  if (HIBYTE(v160))
  {
    v41 = 0x10000;
  }

  else
  {
    v41 = 0;
  }

  if (v160)
  {
    v42 = 0x1000000;
  }

  else
  {
    v42 = 0;
  }

  if (HIBYTE(v159))
  {
    v43 = 0x100000000;
  }

  else
  {
    v43 = 0;
  }

  if (v159)
  {
    v44 = 0x10000000000;
  }

  else
  {
    v44 = 0;
  }

LABEL_29:
  v45 = swift_allocObject();
  v46 = v151;
  *(v45 + 16) = v151;
  v141 = v45 + 16;
  v47 = v39 | v38;
  v147 = v45;
  LODWORD(v138) = *&v47 | 0xFFFF8000;
  *(v45 + 24) = v47 | 0x8000;
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  v139 = v48 + 16;
  v148 = v48;
  *(v48 + 24) = v47 | 0xC000;
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  v140 = v49 + 16;
  v50 = v40 | v41 | v42 | v143 | v43 | v44;
  *(v49 + 24) = v50;
  v149 = v49;
  *(v49 + 28) = (v50 | 0xFFFF800000000000) >> 32;
  v7 = swift_allocObject();
  swift_beginAccess();
  v52 = v163;
  v51 = v164;
  *(v7 + 16) = v163;
  v53 = v165 | 0xFFFFFFC0;
  *(v7 + 24) = v51;
  *(v7 + 32) = v53;
  v54 = *v150;
  v143 = v7 + 16;
  if (v54 != 1)
  {
    swift_bridgeObjectRetain_n();

LABEL_35:
    v56 = v146;
    goto LABEL_40;
  }

  LODWORD(v132) = v53;
  v131 = v51;
  if (v144 == 3)
  {
    v70 = v151;
    v71 = v148;
    *(v148 + 16) = v151;
    v72 = v138;
    *(v71 + 24) = v138;
    swift_bridgeObjectRetain_n();

    j__swift_bridgeObjectRelease(v70);
    v73 = v147;
    *(v147 + 16) = v70;
    *(v73 + 24) = v47 | 0x4000;

    sub_25212CA18(v74, v72);
    v75 = v149;
    *(v149 + 16) = v70;
    *(v75 + 28) = (v50 | 0x400000000000uLL) >> 32;
    *(v75 + 24) = v50;

    sub_25212CA68(v76, v50 | 0xFFFF800000000000);
    v77 = v164;
    v78 = v165 | 0x80;
    *(v7 + 16) = v163;
    *(v7 + 24) = v77;
    *(v7 + 32) = v78;

    j__swift_bridgeObjectRelease(v52);
    goto LABEL_35;
  }

  v55 = v151;
  v56 = v146;
  if (v144 == 2)
  {
    v65 = v148;
    *(v148 + 16) = v151;
    *(v65 + 24) = v47 | 0x4000;
    swift_bridgeObjectRetain_n();

    j__swift_bridgeObjectRelease(v55);
    v66 = v147;
    *(v147 + 16) = v55;
    *(v66 + 24) = v47;

    sub_25212CA18(v67, v138);
    v68 = v149;
    *(v149 + 16) = v55;
    *(v68 + 28) = WORD2(v50);
    *(v68 + 24) = v50;

    sub_25212CA68(v69, v50 | 0xFFFF800000000000);
    v62 = v163;
    v63 = v164;
    v64 = v165 | 0x40;
  }

  else
  {
    v57 = v148;
    if (v144 == 1)
    {
      *(v148 + 16) = v151;
      *(v57 + 24) = v47;
      swift_bridgeObjectRetain_n();

      j__swift_bridgeObjectRelease(v55);
      v58 = v147;
      *(v147 + 16) = v55;
      *(v58 + 24) = v47;

      sub_25212CA18(v59, v138);
      v60 = v149;
      *(v149 + 16) = v55;
      *(v60 + 28) = WORD2(v50);
      *(v60 + 24) = v50;

      sub_25212CA68(v61, v50 | 0xFFFF800000000000);
      v62 = v163;
      v63 = v164;
      v64 = v165;
    }

    else
    {
      *(v148 + 16) = v151;
      v79 = v138;
      *(v57 + 24) = v138;
      swift_bridgeObjectRetain_n();

      j__swift_bridgeObjectRelease(v55);
      v80 = v147;
      *(v147 + 16) = v55;
      *(v80 + 24) = v47 | 0x4000;

      v82 = v79;
      v56 = v146;
      sub_25212CA18(v81, v82);
      v83 = v149;
      *(v149 + 16) = v55;
      *(v83 + 28) = (v50 | 0x400000000000uLL) >> 32;
      *(v83 + 24) = v50;

      sub_25212CA68(v84, v50 | 0xFFFF800000000000);
      v62 = v163;
      v63 = v164;
      v64 = v165 | 0x80;
    }
  }

  *(v7 + 16) = v62;
  *(v7 + 24) = v63;
  *(v7 + 32) = v64;

  j__swift_bridgeObjectRelease(v52);
LABEL_40:
  v85 = v3[11];
  [v85 lock];
  swift_beginAccess();
  v86 = v3[13];
  v87 = 1 << *(v86 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & *(v86 + 56);
  v90 = (v87 + 63) >> 6;
  v138 = (v56 + 8);
  v144 = v154;
  ++v145;

  v5 = 0;
  LODWORD(v146) = 0;
LABEL_43:
  v91 = v5;
  a2 = v148;
  if (!v89)
  {
    goto LABEL_45;
  }

  do
  {
    v5 = v91;
LABEL_48:
    v92 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    sub_25212CB84(*(v86 + 48) + 48 * (v92 | (v5 << 6)), v158);
    sub_25212CBBC(v158, v156);
    if ((v156[16] & 2) != 0)
    {
      v93 = swift_allocObject();
      v94 = v147;
      v93[2] = a2;
      v93[3] = v94;
      v93[4] = v149;
      v93[5] = v7;
      v95 = v93;
      v146 = v157;
      sub_25212CB84(v156, v155);
      v96 = swift_allocObject();
      v132 = v85;
      v97 = v96;
      sub_25212CBBC(v155, v96 + 16);
      *(v97 + 64) = sub_25212CC24;
      *(v97 + 72) = v95;
      v130[2] = v95;
      v154[2] = sub_25212CC44;
      v154[3] = v97;
      v153[0] = MEMORY[0x277D85DD0];
      v153[1] = 1107296256;
      v154[0] = sub_2520A3B78;
      v154[1] = &block_descriptor_50_1;
      v131 = _Block_copy(v153);

      sub_252141A6C();
      v152 = MEMORY[0x277D84F90];
      v130[1] = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
      v98 = v134;
      sub_25214218C();
      v99 = v98;
      v100 = v131;
      MEMORY[0x2530991B0](0, v136, v99, v131);
      v85 = v132;
      _Block_release(v100);

      (*v138)(v134, v135);
      (*v145)(v136, v133);

      sub_25212CBF4(v156);
      LODWORD(v146) = 1;
      goto LABEL_43;
    }

    sub_25212CBF4(v156);
    v91 = v5;
  }

  while (v89);
  while (1)
  {
LABEL_45:
    v5 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v5 >= v90)
    {
      break;
    }

    v89 = *(v86 + 56 + 8 * v5);
    ++v91;
    if (v89)
    {
      goto LABEL_48;
    }
  }

  [v85 unlock];
  swift_beginAccess();
  v101 = *(a2 + 16);
  v102 = v3[39];
  v3[39] = v101;
  v103 = *(v3 + 160);
  *(v3 + 160) = *(a2 + 24);
  j__swift_bridgeObjectRetain(v101);
  sub_25212CA2C(v102, v103);
  swift_beginAccess();
  v104 = v147;
  v105 = *(v147 + 16);
  v106 = v3[37];
  v3[37] = v105;
  v107 = *(v104 + 24);
  v108 = *(v3 + 152);
  *(v3 + 152) = v107;
  v109.n128_f64[0] = sub_25212CC54(v105, v107);
  sub_25212CA04(v106, v108, v109);
  swift_beginAccess();
  v110 = *(v149 + 16);
  v111 = *(v149 + 28);
  v112 = *(v149 + 24);
  v113 = v150 + 64;
  v114 = v3[41];
  v115 = *(v150 + 16) | (*(v150 + 34) << 32);
  v3[41] = v110;
  *v113 = v112;
  *(v113 + 2) = v111;
  v116.n128_f64[0] = sub_25212CC68(v110, v112 | (v111 << 32));
  sub_25212CA44(v114, v115, v116);
  swift_beginAccess();
  v117 = *(v7 + 16);
  v118 = *(v7 + 24);
  v119 = v3[43];
  v120 = v3[44];
  v3[43] = v117;
  v3[44] = v118;
  v121 = *(v3 + 360);
  *(v3 + 360) = *(v7 + 32);
  j__swift_bridgeObjectRetain(v117);
  sub_25212CA7C(v119, v120, v121);
  if (v146)
  {
  }

  else
  {
    v122 = sub_25214196C();
    v123 = sub_252141FBC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v152 = v125;
      *v124 = 136446210;
      v126 = sub_2521425DC();
      v128 = sub_2520A5448(v126, v127, &v152);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_25207E000, v122, v123, "[%{public}s] no observers to notify noise status changed (2)", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x253099FD0](v125, -1, -1);
      MEMORY[0x253099FD0](v124, -1, -1);
    }
  }
}

uint64_t sub_252121480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v12 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = v12;
  v13 = a2[9];
  v14 = j__swift_bridgeObjectRetain(v34);
  v13(&v34, ObjectType, a2, v14);
  j__swift_bridgeObjectRelease(v34);
  swift_beginAccess();
  v15 = *(a4 + 24);
  v32 = *(a4 + 16);
  v33 = v15;
  v16 = a2[8];
  v17 = sub_25212CC54(v32, v15);
  v16(&v32, ObjectType, a2, v17);
  sub_25212CA18(v32, v33);
  swift_beginAccess();
  v18 = *(a5 + 28);
  v19 = *(a5 + 24);
  v29 = *(a5 + 16);
  v31 = v18;
  v30 = v19;
  v20 = a2[10];
  v21 = sub_25212CC68(v29, v19 | (v18 << 32));
  v20(&v29, ObjectType, a2, v21);
  sub_25212CA68(v29, v30 | (v31 << 32));
  swift_beginAccess();
  v22 = *(a6 + 24);
  v23 = *(a6 + 32);
  v27[0] = *(a6 + 16);
  v27[1] = v22;
  v28 = v23;
  v24 = a2[11];
  v25 = j__swift_bridgeObjectRetain(v27[0]);
  v24(v27, ObjectType, a2, v25);
  return j__swift_bridgeObjectRelease(v27[0]);
}

uint64_t sub_252121640(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(v1 + 264);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v6 = v5;
  sub_2520C8C70(&v10);
  v8 = v7;

  return v8 & 1;
}

void sub_2521216B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v7 = sub_25214198C();
    __swift_project_value_buffer(v7, qword_27F4CDE68);
    v8 = a1;
    v9 = sub_25214196C();
    v10 = sub_252141FAC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v13;
      *v11 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, &v43);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] Discovery cannot activate. Error %@", v11, 0x16u);
      sub_2520A2584(v12, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);
    }

    v19 = 0;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);
    swift_retain_n();
    v21 = sub_25214196C();
    v22 = sub_252141FBC();
    v23 = &selRef_categoryOptions;
    if (!os_log_type_enabled(v21, v22))
    {

      goto LABEL_14;
    }

    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v43 = v4;
    *v3 = 136446466;
    v24 = sub_2521425DC();
    v26 = sub_2520A5448(v24, v25, &v43);

    *(v3 + 4) = v26;
    *(v3 + 12) = 2048;
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v27 = [v42 discoveredDevices];

    sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
    v28 = sub_252141CDC();

    if (v28 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25214232C())
    {

      *(v3 + 14) = i;

      _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Discovery started. Device count is  %ld", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x253099FD0](v4, -1, -1);
      MEMORY[0x253099FD0](v3, -1, -1);

      v23 = &selRef_categoryOptions;
LABEL_14:
      sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
      sub_25214200C();
      v30 = v43;
      v31 = [v43 v23[46]];

      sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
      v32 = sub_252141CDC();

      if (!(v32 >> 62))
      {
        break;
      }

      v33 = sub_25214232C();

      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_26:
      ;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_16:
    if (v33)
    {
      for (j = 0; j != v33; ++j)
      {
        v35 = sub_25214196C();
        v36 = sub_252141FBC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v43 = v38;
          *v37 = 136446466;
          v39 = sub_2521425DC();
          v41 = sub_2520A5448(v39, v40, &v43);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2048;
          *(v37 + 14) = j;
          _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] Update device placement %ld", v37, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x253099FD0](v38, -1, -1);
          MEMORY[0x253099FD0](v37, -1, -1);
        }
      }

      v19 = 1;
    }

    else
    {
      v19 = 1;
    }
  }

  *(a2 + 216) = v19;
}

uint64_t sub_252121C7C()
{
  sub_252122B30();
  if (v1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 216);
  }
}

uint64_t sub_252121CA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_252121CF0, 0, 0);
}

uint64_t sub_252121CF0()
{
  v23 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  v0[5] = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25207E000, v2, v3, "User tapped 'Get Started'", v4, 2u);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  sub_252122B30();
  v6 = v5;
  if (v5)
  {
    v7 = sub_25214196C();
    v8 = sub_252141FBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25207E000, v7, v8, "Denied attempt to start hearing test", v9, 2u);
LABEL_13:
      MEMORY[0x253099FD0](v9, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v10 = v0[2];
  v11 = (v10 * 10) >> 64;
  v12 = 10 * v10;
  v0[6] = v12;
  if (v11 != v12 >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 1)
  {
LABEL_21:
    __break(1u);
    return MEMORY[0x282200480](v5);
  }

  v13 = v0[3];
  v0[7] = 1;
  if (*(v13 + 216) != 1)
  {
    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    v21[1] = sub_252122034;
    v5 = 100000000;

    return MEMORY[0x282200480](v5);
  }

  sub_25212389C();
  sub_25211672C();
  v7 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v7, v14))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v9 = 136446210;
    v16 = sub_2521425DC();
    v18 = sub_2520A5448(v16, v17, &v22);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_25207E000, v7, v14, "[%{public}s] Discovery Activated", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x253099FD0](v15, -1, -1);
    goto LABEL_13;
  }

LABEL_14:

  v19 = v0[1];

  return v19((v6 & 1) == 0);
}

uint64_t sub_252122034()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2521223E4;
  }

  else
  {
    v2 = sub_252122148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252122148(uint64_t a1)
{
  v19 = v1;
  v3 = v1[6];
  v2 = v1[7];
  if (v2 != v3)
  {
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v1[7] = v2 + 1;
      if (*(v1[3] + 216) == 1)
      {
        sub_25212389C();
        sub_25211672C();
        v4 = sub_25214196C();
        v5 = sub_252141FBC();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v18 = v7;
          *v6 = 136446210;
          v8 = sub_2521425DC();
          v10 = sub_2520A5448(v8, v9, &v18);

          *(v6 + 4) = v10;
          v11 = "[%{public}s] Discovery Activated";
LABEL_8:
          _os_log_impl(&dword_25207E000, v4, v5, v11, v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v7);
          MEMORY[0x253099FD0](v7, -1, -1);
          MEMORY[0x253099FD0](v6, -1, -1);
          goto LABEL_9;
        }

        goto LABEL_9;
      }

      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      v17[1] = sub_252122034;
      a1 = 100000000;
    }

    return MEMORY[0x282200480](a1);
  }

  v4 = sub_25214196C();
  v5 = sub_252141FAC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &v18);

    *(v6 + 4) = v14;
    v11 = "[%{public}s] Timeout discovery activation.";
    goto LABEL_8;
  }

LABEL_9:

  v15 = v1[1];

  return v15(v2 != v3);
}

uint64_t sub_2521223E4(uint64_t a1)
{
  v29 = v1;
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Unable to get discovery activation status", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  v13 = v1[6];
  v12 = v1[7];
  if (v12 != v13)
  {
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v1[7] = v12 + 1;
      if (*(v1[3] + 216) == 1)
      {
        sub_25212389C();
        sub_25211672C();
        v14 = sub_25214196C();
        v15 = sub_252141FBC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28 = v17;
          *v16 = 136446210;
          v18 = sub_2521425DC();
          v20 = sub_2520A5448(v18, v19, &v28);

          *(v16 + 4) = v20;
          v21 = "[%{public}s] Discovery Activated";
LABEL_10:
          _os_log_impl(&dword_25207E000, v14, v15, v21, v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x253099FD0](v17, -1, -1);
          MEMORY[0x253099FD0](v16, -1, -1);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      v27 = swift_task_alloc();
      v1[8] = v27;
      *v27 = v1;
      v27[1] = sub_252122034;
      v11 = 100000000;
    }

    return MEMORY[0x282200480](v11);
  }

  v14 = sub_25214196C();
  v15 = sub_252141FAC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136446210;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, &v28);

    *(v16 + 4) = v24;
    v21 = "[%{public}s] Timeout discovery activation.";
    goto LABEL_10;
  }

LABEL_11:

  v25 = v1[1];

  return v25(v12 != v13);
}

uint64_t sub_25212275C()
{
  sub_252122B30();
  v33 = v0;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  __swift_project_value_buffer(v1, qword_27F4CDF10);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v34 = v5;
    *v4 = 136446466;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v34);

    *(v4 + 4) = v8;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v33 & 1;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] otherHearingTestAlreadyActive: %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  sub_25212D5F0();
  v10 = v9;
  v12 = v11;
  v13 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446466;
    v17 = sub_2521425DC();
    v19 = sub_2520A5448(v17, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_2520A5448(v10, v12, &v34);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] hearingTestProcessName: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v16, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  else
  {
  }

  sub_25212D740();
  v22 = v21;
  v24 = v23;

  v25 = sub_25214196C();
  v26 = sub_252141FBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136446466;
    v29 = sub_2521425DC();
    v31 = sub_2520A5448(v29, v30, &v34);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2520A5448(v22, v24, &v34);
    _os_log_impl(&dword_25207E000, v25, v26, "[%{public}s] hearingTestApplicationName: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v28, -1, -1);
    MEMORY[0x253099FD0](v27, -1, -1);
  }

  return v33 & 1;
}

void sub_252122B30()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v53 - v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_252141B6C();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    sub_2520DB7EC(v4);

    v8 = sub_25214188C();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v9 = sub_25214198C();
      __swift_project_value_buffer(v9, qword_27F4CDF10);
      v10 = sub_25214196C();
      v11 = sub_252141FBC();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_17;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "No framework timestamp found, ok to continue";
      goto LABEL_15;
    }

    v53 = v1;
    sub_25212D5F0();
    v15 = v14;
    v17 = v16;
    v18 = [objc_opt_self() processInfo];
    v19 = [v18 processName];

    v20 = sub_252141B9C();
    v22 = v21;

    if (v15 == v20 && v17 == v22)
    {

LABEL_11:

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v24 = sub_25214198C();
      __swift_project_value_buffer(v24, qword_27F4CDF10);
      v10 = sub_25214196C();
      v11 = sub_252141FBC();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_17;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Our framework timestamp found, ok to continue";
LABEL_15:
      _os_log_impl(&dword_25207E000, v10, v11, v13, v12, 2u);
      v25 = v12;
LABEL_16:
      MEMORY[0x253099FD0](v25, -1, -1);
LABEL_17:

LABEL_18:
      sub_2520A2584(v4, &qword_27F4CDD08, &unk_252144B00);
      return;
    }

    v23 = sub_25214247C();

    if (v23)
    {
      goto LABEL_11;
    }

    v26 = [objc_opt_self() currentDevice];
    v27 = [v26 model];

    v28 = sub_252141B9C();
    v30 = v29;

    if (v28 == 1684099177 && v30 == 0xE400000000000000)
    {

      goto LABEL_23;
    }

    v31 = sub_25214247C();

    if (v31)
    {
LABEL_23:
      sub_2521232A4(v15, v17, 1.0);
      if (v32)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v33 = sub_25214198C();
        __swift_project_value_buffer(v33, qword_27F4CDF10);

        v10 = sub_25214196C();
        v34 = sub_252141FBC();

        if (os_log_type_enabled(v10, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v54 = v36;
          *v35 = 136446466;
          v37 = sub_2521425DC();
          v39 = sub_2520A5448(v37, v38, &v54);

          *(v35 + 4) = v39;
          *(v35 + 12) = 2080;
          v40 = sub_2520A5448(v15, v17, &v54);

          *(v35 + 14) = v40;
          _os_log_impl(&dword_25207E000, v10, v34, "[%{public}s] %s has recent timestamp and is probably active", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v36, -1, -1);
          MEMORY[0x253099FD0](v35, -1, -1);
          goto LABEL_17;
        }

        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v42 = sub_252141B6C();
    v43 = [v41 initWithSuiteName_];

    if (v43)
    {
      v44 = sub_2520DBAD4();

      if ((v44 & 1) == 0)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v45 = sub_25214198C();
        __swift_project_value_buffer(v45, qword_27F4CDF10);

        v10 = sub_25214196C();
        v46 = sub_252141FBC();

        if (os_log_type_enabled(v10, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v54 = v48;
          *v47 = 136446466;
          v49 = sub_2521425DC();
          v51 = sub_2520A5448(v49, v50, &v54);

          *(v47 + 4) = v51;
          *(v47 + 12) = 2080;
          v52 = sub_2520A5448(v15, v17, &v54);

          *(v47 + 14) = v52;
          _os_log_impl(&dword_25207E000, v10, v46, "[%{public}s] %s crashed, okay to continue", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v48, -1, -1);
          v25 = v47;
          goto LABEL_16;
        }

LABEL_36:

        goto LABEL_17;
      }

LABEL_30:
      sub_2521232A4(v15, v17, 120.0);

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2521232A4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_25214188C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_252141B6C();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    sub_2520DB7EC(v8);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_2520A2584(v8, &qword_27F4CDD08, &unk_252144B00);
      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v16 = sub_25214198C();
      __swift_project_value_buffer(v16, qword_27F4CDF10);
      v17 = sub_25214196C();
      v18 = sub_252141FBC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v21 = sub_2521425DC();
        v23 = sub_2520A5448(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] framework timestamp missing, ok to continue", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x253099FD0](v20, -1, -1);
        MEMORY[0x253099FD0](v19, -1, -1);
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_25214186C();
      if (-v24 >= a3)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v34 = sub_25214198C();
        __swift_project_value_buffer(v34, qword_27F4CDF10);

        v26 = sub_25214196C();
        v35 = sub_252141FBC();

        if (os_log_type_enabled(v26, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v42 = a1;
          v43 = v37;
          v38 = v37;
          *v36 = 136446466;
          v39 = sub_2521425DC();
          v41 = sub_2520A5448(v39, v40, &v43);

          *(v36 + 4) = v41;
          *(v36 + 12) = 2080;
          *(v36 + 14) = sub_2520A5448(v42, a2, &v43);
          _os_log_impl(&dword_25207E000, v26, v35, "[%{public}s] framework timestamp expired from %s, ok to continue", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v38, -1, -1);
          MEMORY[0x253099FD0](v36, -1, -1);
        }
      }

      else
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v25 = sub_25214198C();
        __swift_project_value_buffer(v25, qword_27F4CDF10);

        v26 = sub_25214196C();
        v27 = sub_252141FBC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v42 = a1;
          v43 = v29;
          v30 = v29;
          *v28 = 136446466;
          v31 = sub_2521425DC();
          v33 = sub_2520A5448(v31, v32, &v43);

          *(v28 + 4) = v33;
          *(v28 + 12) = 2080;
          *(v28 + 14) = sub_2520A5448(v42, a2, &v43);
          _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] framework timestamp already in use by %s, this process should not continue", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v30, -1, -1);
          MEMORY[0x253099FD0](v28, -1, -1);
        }
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25212389C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDF10);
  v7 = sub_25214196C();
  v8 = sub_252141FBC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = [objc_opt_self() processInfo];
    v12 = [v11 processName];

    v13 = sub_252141B9C();
    v15 = v14;

    v16 = sub_2520A5448(v13, v15, &v37);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_25207E000, v7, v8, "Starting current session timestamp for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_252141B6C();
  v19 = [v17 initWithSuiteName_];

  if (!v19)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_25214187C();
  v20 = sub_25214188C();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v5, 0, 1, v20);
  sub_2520A2D9C(v5, v2, &qword_27F4CDD08, &unk_252144B00);
  v22 = 0;
  if ((*(v21 + 48))(v2, 1, v20) != 1)
  {
    v22 = sub_25214185C();
    (*(v21 + 8))(v2, v20);
  }

  v23 = sub_252141B6C();
  [v19 setValue:v22 forKey:v23];

  swift_unknownObjectRelease();
  sub_2520A2584(v5, &qword_27F4CDD08, &unk_252144B00);
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_252141B6C();
  v26 = [v24 initWithSuiteName_];

  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = [objc_opt_self() processInfo];
  v28 = [v27 processName];

  if (!v28)
  {
    sub_252141B9C();
    v28 = sub_252141B6C();
  }

  v29 = sub_252141B6C();
  [v26 setValue:v28 forKey:v29];

  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_252141B6C();
  v32 = [v30 initWithSuiteName_];

  if (v32)
  {
    sub_2520DC654();
    v33 = sub_252141B6C();

    v34 = sub_252141B6C();
    [v32 setValue:v33 forKey:v34];

    v35 = *(v36 + 248);
    sub_2520F85B8(1);

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_252123DD8()
{
  v1 = v0;
  v2 = *(v0 + 256);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v4 = sub_252141B6C();
    v5 = [v3 initWithSuiteName_];

    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = sub_252141B6C();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v8 = sub_25214198C();
      __swift_project_value_buffer(v8, qword_27F4CDE68);
      v9 = sub_25214196C();
      v10 = sub_252141FBC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29 = v12;
        *v11 = 136446210;
        v13 = sub_2521425DC();
        v15 = sub_2520A5448(v13, v14, &v29);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] start noise sim", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253099FD0](v12, -1, -1);
        MEMORY[0x253099FD0](v11, -1, -1);
      }

      *(v2 + 48) = v1;
      *(v2 + 56) = &protocol witness table for HTRequirementStatusManager;

      swift_unknownObjectRelease();
      sub_2520A4F04();
      sub_252114478();

      return;
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v16 = sub_25214198C();
  __swift_project_value_buffer(v16, qword_27F4CDE68);

  v17 = sub_25214196C();
  v18 = sub_252141FBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446466;
    v21 = sub_2521425DC();
    v23 = sub_2520A5448(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = *(v1 + 16);
    v25 = *(v1 + 24);

    v26 = sub_2520A5448(v24, v25, &v29);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] startListeningEnvNoise %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);
  }

  v27 = *(v1 + 264);
  sub_25212BCA8(v1, v27);

  v28 = *(v1 + 264);
  sub_2520C7F08();
}

void sub_252124210()
{
  v1 = v0;
  if (*(v0 + 256))
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v3 = sub_252141B6C();
    v4 = [v2 initWithSuiteName_];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = sub_252141B6C();
    v6 = [v4 BOOLForKey_];

    if (v6)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v7 = sub_25214198C();
      __swift_project_value_buffer(v7, qword_27F4CDE68);
      v8 = sub_25214196C();
      v9 = sub_252141FBC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        v12 = sub_2521425DC();
        v14 = sub_2520A5448(v12, v13, &v28);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] stop noise sim", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x253099FD0](v11, -1, -1);
        MEMORY[0x253099FD0](v10, -1, -1);
      }

      sub_2520A50DC();

      return;
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v15 = sub_25214198C();
  __swift_project_value_buffer(v15, qword_27F4CDE68);

  v16 = sub_25214196C();
  v17 = sub_252141FBC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446466;
    v20 = sub_2521425DC();
    v22 = sub_2520A5448(v20, v21, &v28);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = *(v1 + 16);
    v24 = *(v1 + 24);

    v25 = sub_2520A5448(v23, v24, &v28);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] stopListeningEnvNoise %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v19, -1, -1);
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  v26 = *(v1 + 264);
  sub_25212BFE0(v1, v26);

  v27 = *(v1 + 264);
  sub_2520C80A4();
}

unint64_t sub_25212462C@<X0>(uint64_t a1@<X8>)
{
  result = sub_25209D178(MEMORY[0x277D84F90]);
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t sub_25212466C(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v2[79] = *v1;
  return MEMORY[0x2822009F8](sub_2521246B8, 0, 0);
}

uint64_t sub_2521246B8()
{
  v36 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  *(v0 + 640) = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v35);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Starting hearingTestFaultCheckStatusWithReasonFetchOnDemand", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_252141B6C();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v15 = sub_252141B6C();
  v16 = [v11 BOOLForKey_];

  v17 = sub_25214196C();
  v18 = sub_252141FBC();
  v19 = os_log_type_enabled(v17, v18);
  if (!v16)
  {
    if (v19)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      v29 = sub_2521425DC();
      v31 = sub_2520A5448(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] FaultCheck: UserDefaults sim mode disabled.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x253099FD0](v28, -1, -1);
      MEMORY[0x253099FD0](v27, -1, -1);
    }

    *(v0 + 648) = sub_252141E1C();
    *(v0 + 656) = sub_252141E0C();
    v32 = sub_252141DEC();
    v34 = v33;
    v12 = sub_252124AE4;
    v13 = v32;
    v14 = v34;

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136446210;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, &v35);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] FaultCheck: UserDefaults sim mode enabled.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v20, -1, -1);
  }

  sub_252126B10(*(v0 + 616));
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252124AE4()
{
  v1 = (v0 + 496);
  v2 = *(v0 + 624);

  v3 = *(v2 + 248);
  *(swift_task_alloc() + 16) = v3;
  v4 = v3;
  *(v0 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  *(v0 + 672) = 0;

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 680) = v6;
  *(v0 + 688) = v5;
  v7 = *(v0 + 48);
  *(v0 + 496) = *(v0 + 32);
  *(v0 + 512) = v7;
  *(v0 + 528) = *(v0 + 64);
  *(v0 + 540) = *(v0 + 76);
  if (v5)
  {
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    v8 = *(v0 + 512);
    *(v0 + 112) = *v1;
    *(v0 + 128) = v8;
    *(v0 + 144) = *(v0 + 528);
    *(v0 + 156) = *(v0 + 540);

    sub_2520A2584(v0 + 96, &qword_27F4CE6F0, &qword_2521467A0);
    v9 = sub_252124DD8;
  }

  else
  {
    *(v0 + 416) = v6;
    *(v0 + 424) = 0;
    v10 = *(v0 + 512);
    *(v0 + 432) = *v1;
    *(v0 + 448) = v10;
    *(v0 + 464) = *(v0 + 528);
    *(v0 + 476) = *(v0 + 540);
    sub_2520A2584(v0 + 416, &qword_27F4CE6F0, &qword_2521467A0);
    v9 = sub_252124C8C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252124C8C(uint64_t a1)
{
  v12 = v1;
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] FaultCheck: Cannot get connected device uuid", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  **(v1 + 616) = 2;
  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_252124DD8()
{
  v15 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 680) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    *(v0 + 696) = sub_252141E0C();
    v4 = sub_252141DEC();

    return MEMORY[0x2822009F8](sub_252124FB4, v4, v3);
  }

  else
  {

    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] FaultCheck: Cannot get connected device uuid", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    **(v0 + 616) = 2;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_252124FB4()
{
  v1 = (v0 + 560);
  v2 = *(v0 + 624);

  v3 = *(v2 + 248);
  *(swift_task_alloc() + 16) = v3;
  v4 = v3;
  sub_25214200C();

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 208);
  *(v0 + 560) = *(v0 + 192);
  *(v0 + 576) = v7;
  *(v0 + 592) = *(v0 + 224);
  *(v0 + 608) = *(v0 + 240);
  v8 = *(v0 + 248);
  *(v0 + 92) = v8;
  if (v5)
  {
    *(v0 + 256) = v6;
    *(v0 + 264) = v5;
    v9 = *(v0 + 576);
    *(v0 + 272) = *v1;
    *(v0 + 288) = v9;
    *(v0 + 304) = *(v0 + 592);
    *(v0 + 320) = *(v0 + 608);
    *(v0 + 328) = v8;
    sub_2520A2584(v0 + 256, &qword_27F4CE6F0, &qword_2521467A0);
    v10 = sub_25212514C;
  }

  else
  {

    *(v0 + 336) = v6;
    *(v0 + 344) = 0;
    v11 = *(v0 + 576);
    *(v0 + 352) = *v1;
    *(v0 + 368) = v11;
    *(v0 + 384) = *(v0 + 592);
    *(v0 + 400) = *(v0 + 608);
    *(v0 + 408) = v8;
    sub_2520A2584(v0 + 336, &qword_27F4CE6F0, &qword_2521467A0);
    v10 = sub_252125488;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25212514C()
{
  v24 = v0;
  v1 = *(v0 + 92);
  switch(v1)
  {
    case 8231:
      if (qword_27F4CD790 == -1)
      {
        v2 = 8231;
        goto LABEL_10;
      }

      goto LABEL_18;
    case 8228:
      if (qword_27F4CD780 == -1)
      {
        v2 = 8228;
        goto LABEL_10;
      }

LABEL_18:
      swift_once();
      v2 = *(v0 + 92);
      goto LABEL_10;
    case 8212:
      if (qword_27F4CD780 == -1)
      {
        v2 = 8212;
LABEL_10:
        v3 = *(v0 + 688);
        v4 = *(v0 + 680);
        v5 = *(v0 + 632);
        v6 = *(v0 + 624);
        v7 = *(v6 + 264);
        sub_2520C7514(v2);

        v8 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
        *(v0 + 704) = v8;
        v9 = *(v6 + 248);
        *(v0 + 712) = v9;
        v10 = swift_task_alloc();
        *(v0 + 720) = v10;
        *(v10 + 16) = v8;
        *(v10 + 24) = v4;
        *(v10 + 32) = v3;
        *(v10 + 40) = 3;
        *(v10 + 48) = v9;
        *(v10 + 56) = v5;
        v11 = v9;
        v12 = swift_task_alloc();
        *(v0 + 728) = v12;
        *v12 = v0;
        v12[1] = sub_2521255D4;
        v13 = *(v0 + 616);

        return MEMORY[0x2822007B8](v13, 0, 0, 0xD000000000000034, 0x800000025214B700, sub_25212D864, v10, &type metadata for HTFaultStatusWithReason);
      }

      goto LABEL_18;
  }

  v14 = sub_25214196C();
  v15 = sub_252141FAC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_2521425DC();
    v20 = sub_2520A5448(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] FaultCheck: product unsupported for calibration", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x253099FD0](v17, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  **(v0 + 616) = 2;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_252125488(uint64_t a1)
{
  v12 = v1;
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] FaultCheck: product unsupported for calibration", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  **(v1 + 616) = 2;
  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2521255D4()
{

  return MEMORY[0x2822009F8](sub_252125708, 0, 0);
}

uint64_t sub_252125708()
{
  v1 = *(v0 + 704);

  v2 = *(v0 + 8);

  return v2();
}

void sub_252125770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7)
{
  v22 = a5;
  v21 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = sub_252141B6C();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  *(v18 + v17) = a6;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;
  aBlock[4] = sub_252130434;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252126A98;
  aBlock[3] = &block_descriptor_443_1;
  v19 = _Block_copy(aBlock);
  v20 = a6;

  [v21 fetchOcclusionResultForDeviceIdentifier:v15 featureID:v22 completion:v19];
  _Block_release(v19);
}

void sub_25212597C(int a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  v9 = sub_25214196C();
  v10 = sub_252141FBC();
  v107 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446466;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1;
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] client fetchOcclusionResult %d ", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  if (!a2)
  {
    v27 = sub_25214196C();
    if (a1 <= 3)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v83 = sub_252141FBC();
          if (os_log_type_enabled(v27, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            aBlock = v85;
            *v84 = 136446210;
            v86 = sub_2521425DC();
            v88 = sub_2520A5448(v86, v87, &aBlock);

            *(v84 + 4) = v88;
            _os_log_impl(&dword_25207E000, v27, v83, "[%{public}s] fetch occlusion return fail", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x253099FD0](v85, -1, -1);
            MEMORY[0x253099FD0](v84, -1, -1);
          }

          LOBYTE(aBlock) = 2;
        }

        else
        {
          v49 = sub_252141FBC();
          if (os_log_type_enabled(v27, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            aBlock = v51;
            *v50 = 136446210;
            v52 = sub_2521425DC();
            v54 = sub_2520A5448(v52, v53, &aBlock);

            *(v50 + 4) = v54;
            _os_log_impl(&dword_25207E000, v27, v49, "[%{public}s] fetch occlusion return pass", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x253099FD0](v51, -1, -1);
            MEMORY[0x253099FD0](v50, -1, -1);
          }

          LOBYTE(aBlock) = 3;
        }

        goto LABEL_51;
      }

      if (!a1)
      {
        v61 = sub_252141FBC();
        if (os_log_type_enabled(v27, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          aBlock = v63;
          *v62 = 136446210;
          v64 = sub_2521425DC();
          v66 = sub_2520A5448(v64, v65, &aBlock);

          *(v62 + 4) = v66;
          v67 = "[%{public}s] fetch occlusion return unknown";
LABEL_49:
          _os_log_impl(&dword_25207E000, v27, v61, v67, v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x253099FD0](v63, -1, -1);
          MEMORY[0x253099FD0](v62, -1, -1);
        }

LABEL_50:

        LOBYTE(aBlock) = 0;
        goto LABEL_51;
      }

      if (a1 == 1)
      {
        v28 = sub_252141FBC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          aBlock = v30;
          *v29 = 136446210;
          v31 = sub_2521425DC();
          v33 = sub_2520A5448(v31, v32, &aBlock);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] fetch occlusion return insufficientMeasurements", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          MEMORY[0x253099FD0](v30, -1, -1);
          MEMORY[0x253099FD0](v29, -1, -1);
        }

        LOBYTE(aBlock) = 1;
        goto LABEL_51;
      }

LABEL_47:
      v61 = sub_252141FAC();
      if (os_log_type_enabled(v27, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        aBlock = v63;
        *v62 = 136446210;
        v104 = sub_2521425DC();
        v106 = sub_2520A5448(v104, v105, &aBlock);

        *(v62 + 4) = v106;
        v67 = "[%{public}s] cannot parse occlusion result";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          v55 = sub_252141FBC();
          if (os_log_type_enabled(v27, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            aBlock = v57;
            *v56 = 136446210;
            v58 = sub_2521425DC();
            v60 = sub_2520A5448(v58, v59, &aBlock);

            *(v56 + 4) = v60;
            _os_log_impl(&dword_25207E000, v27, v55, "[%{public}s] fetch occlusion return failOnSubsequentAttempt", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v57);
            MEMORY[0x253099FD0](v57, -1, -1);
            MEMORY[0x253099FD0](v56, -1, -1);
          }

          LOBYTE(aBlock) = 7;
          goto LABEL_51;
        }

        goto LABEL_47;
      }

      v89 = sub_252141FBC();
      if (os_log_type_enabled(v27, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136446210;
        v92 = sub_2521425DC();
        v94 = sub_2520A5448(v92, v93, &aBlock);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_25207E000, v27, v89, "[%{public}s] fetch occlusion return passWithGainTableUpdateBothSides", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x253099FD0](v91, -1, -1);
        MEMORY[0x253099FD0](v90, -1, -1);
      }

      v95 = *&v107[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v96 = swift_allocObject();
      *(v96 + 16) = v107;
      *(v96 + 24) = 1;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_252130798;
      *(v97 + 24) = v96;
      v112 = sub_2520ADA58;
      v113 = v97;
      aBlock = MEMORY[0x277D85DD0];
      v109 = 1107296256;
      v110 = sub_252083924;
      v111 = &block_descriptor_496;
      v98 = _Block_copy(&aBlock);
      v99 = v107;

      dispatch_sync(v95, v98);
      _Block_release(v98);
      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if ((v98 & 1) == 0)
      {
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        *(v100 + 24) = 1;
        v101 = swift_allocObject();
        *(v101 + 16) = sub_25213079C;
        *(v101 + 24) = v100;
        v112 = sub_2520ADA58;
        v113 = v101;
        aBlock = MEMORY[0x277D85DD0];
        v109 = 1107296256;
        v110 = sub_252083924;
        v111 = &block_descriptor_507;
        v102 = _Block_copy(&aBlock);
        v103 = v99;

        dispatch_sync(v95, v102);
        _Block_release(v102);
        LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

        if ((v102 & 1) == 0)
        {
          LOBYTE(aBlock) = 6;
          goto LABEL_51;
        }

        goto LABEL_56;
      }
    }

    else
    {
      if (a1 != 4)
      {
        v34 = sub_252141FBC();
        if (os_log_type_enabled(v27, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock = v36;
          *v35 = 136446210;
          v37 = sub_2521425DC();
          v39 = sub_2520A5448(v37, v38, &aBlock);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_25207E000, v27, v34, "[%{public}s] fetch occlusion return passWithGainTableUpdateRight", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x253099FD0](v36, -1, -1);
          MEMORY[0x253099FD0](v35, -1, -1);
        }

        v40 = *&v107[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
        v41 = swift_allocObject();
        *(v41 + 16) = v107;
        *(v41 + 24) = 0;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_252130530;
        *(v42 + 24) = v41;
        v112 = sub_2520ADA58;
        v113 = v42;
        aBlock = MEMORY[0x277D85DD0];
        v109 = 1107296256;
        v110 = sub_252083924;
        v111 = &block_descriptor_453;
        v43 = _Block_copy(&aBlock);
        v44 = v107;

        dispatch_sync(v40, v43);
        _Block_release(v43);
        LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

        if ((v43 & 1) == 0)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v44;
          *(v45 + 24) = 1;
          v46 = swift_allocObject();
          *(v46 + 16) = sub_25213053C;
          *(v46 + 24) = v45;
          v112 = sub_2520ADA58;
          v113 = v46;
          aBlock = MEMORY[0x277D85DD0];
          v109 = 1107296256;
          v110 = sub_252083924;
          v111 = &block_descriptor_463;
          v47 = _Block_copy(&aBlock);
          v48 = v44;

          dispatch_sync(v40, v47);
          _Block_release(v47);
          LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

          if ((v47 & 1) == 0)
          {
            LOBYTE(aBlock) = 5;
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
            sub_252141DFC();
            return;
          }

LABEL_57:
          __break(1u);
          return;
        }

        goto LABEL_54;
      }

      v68 = sub_252141FBC();
      if (os_log_type_enabled(v27, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock = v70;
        *v69 = 136446210;
        v71 = sub_2521425DC();
        v73 = sub_2520A5448(v71, v72, &aBlock);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_25207E000, v27, v68, "[%{public}s] fetch occlusion return passWithGainTableUpdateLeft", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x253099FD0](v70, -1, -1);
        MEMORY[0x253099FD0](v69, -1, -1);
      }

      v74 = *&v107[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v75 = swift_allocObject();
      *(v75 + 16) = v107;
      *(v75 + 24) = 1;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_252130798;
      *(v76 + 24) = v75;
      v112 = sub_2520ADA58;
      v113 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v109 = 1107296256;
      v110 = sub_252083924;
      v111 = &block_descriptor_474;
      v77 = _Block_copy(&aBlock);
      v78 = v107;

      dispatch_sync(v74, v77);
      _Block_release(v77);
      LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

      if ((v77 & 1) == 0)
      {
        v79 = swift_allocObject();
        *(v79 + 16) = v78;
        *(v79 + 24) = 0;
        v80 = swift_allocObject();
        *(v80 + 16) = sub_25213079C;
        *(v80 + 24) = v79;
        v112 = sub_2520ADA58;
        v113 = v80;
        aBlock = MEMORY[0x277D85DD0];
        v109 = 1107296256;
        v110 = sub_252083924;
        v111 = &block_descriptor_485;
        v81 = _Block_copy(&aBlock);
        v82 = v78;

        dispatch_sync(v74, v81);
        _Block_release(v81);
        LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

        if ((v81 & 1) == 0)
        {
          LOBYTE(aBlock) = 4;
          goto LABEL_51;
        }

        goto LABEL_55;
      }

      __break(1u);
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = a2;
  v17 = sub_25214196C();
  v18 = sub_252141FAC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v19 = 136446466;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, &aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = a2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    *v20 = v26;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] error %@ fetch occlusion result", v19, 0x16u);
    sub_2520A2584(v20, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);
  }

  LOBYTE(aBlock) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  sub_252141DFC();
}

void sub_252126A98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_252126B10(char *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_252141B6C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_252141B6C();
    v6 = [v4 objectForKey_];

    if (!v6)
    {
      memset(v86, 0, sizeof(v86));
      sub_2520A2584(v86, &unk_27F4CE0B0, &unk_252144AF0);
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v21 = sub_25214198C();
      __swift_project_value_buffer(v21, qword_27F4CDE68);
      v22 = sub_25214196C();
      v23 = sub_252141FBC();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v86[0] = v25;
      *v24 = 136446210;
      v26 = sub_2521425DC();
      v28 = sub_2520A5448(v26, v27, v86);

      *(v24 + 4) = v28;
      v29 = "[%{public}s] UserDefaults HTSimModeFaultCheckStatusWithReason not set, default to: pass";
      goto LABEL_17;
    }

    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v86, &unk_27F4CE0B0, &unk_252144AF0);
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_252141B6C();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      v10 = sub_252141B6C();
      v11 = [v9 integerForKey_];

      if (v11 > 3)
      {
        if (v11 <= 5)
        {
          if (v11 == 4)
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v58 = sub_25214198C();
            __swift_project_value_buffer(v58, qword_27F4CDE68);
            v59 = sub_25214196C();
            v60 = sub_252141FBC();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *&v86[0] = v62;
              *v61 = 136446210;
              v63 = sub_2521425DC();
              v65 = sub_2520A5448(v63, v64, v86);

              *(v61 + 4) = v65;
              _os_log_impl(&dword_25207E000, v59, v60, "[%{public}s] UserDefaults check fault with reason: pass with left gain updated", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v62);
              MEMORY[0x253099FD0](v62, -1, -1);
              MEMORY[0x253099FD0](v61, -1, -1);
            }

            v20 = 4;
          }

          else
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v30 = sub_25214198C();
            __swift_project_value_buffer(v30, qword_27F4CDE68);
            v31 = sub_25214196C();
            v32 = sub_252141FBC();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              *&v86[0] = v34;
              *v33 = 136446210;
              v35 = sub_2521425DC();
              v37 = sub_2520A5448(v35, v36, v86);

              *(v33 + 4) = v37;
              _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] UserDefaults check fault with reason: pass with right gain updated", v33, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v34);
              MEMORY[0x253099FD0](v34, -1, -1);
              MEMORY[0x253099FD0](v33, -1, -1);
            }

            v20 = 5;
          }

          goto LABEL_19;
        }

        if (v11 == 6)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v74 = sub_25214198C();
          __swift_project_value_buffer(v74, qword_27F4CDE68);
          v75 = sub_25214196C();
          v76 = sub_252141FBC();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *&v86[0] = v78;
            *v77 = 136446210;
            v79 = sub_2521425DC();
            v81 = sub_2520A5448(v79, v80, v86);

            *(v77 + 4) = v81;
            _os_log_impl(&dword_25207E000, v75, v76, "[%{public}s] UserDefaults check fault with reason: pass with both side gain updated", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v78);
            MEMORY[0x253099FD0](v78, -1, -1);
            MEMORY[0x253099FD0](v77, -1, -1);
          }

          v20 = 6;
          goto LABEL_19;
        }

        if (v11 == 7)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v42 = sub_25214198C();
          __swift_project_value_buffer(v42, qword_27F4CDE68);
          v43 = sub_25214196C();
          v44 = sub_252141FAC();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *&v86[0] = v46;
            *v45 = 136446210;
            v47 = sub_2521425DC();
            v49 = sub_2520A5448(v47, v48, v86);

            *(v45 + 4) = v49;
            _os_log_impl(&dword_25207E000, v43, v44, "[%{public}s] UserDefaults check fault with reason: fail on subsequent attempt", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v46);
            MEMORY[0x253099FD0](v46, -1, -1);
            MEMORY[0x253099FD0](v45, -1, -1);
          }

          v20 = 7;
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v66 = sub_25214198C();
            __swift_project_value_buffer(v66, qword_27F4CDE68);
            v67 = sub_25214196C();
            v68 = sub_252141FAC();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *&v86[0] = v70;
              *v69 = 136446210;
              v71 = sub_2521425DC();
              v73 = sub_2520A5448(v71, v72, v86);

              *(v69 + 4) = v73;
              _os_log_impl(&dword_25207E000, v67, v68, "[%{public}s] UserDefaults check fault with reason: fail", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v70);
              MEMORY[0x253099FD0](v70, -1, -1);
              MEMORY[0x253099FD0](v69, -1, -1);
            }

            v20 = 2;
            goto LABEL_19;
          }

          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v38 = sub_25214198C();
          __swift_project_value_buffer(v38, qword_27F4CDE68);
          v22 = sub_25214196C();
          v23 = sub_252141FBC();
          if (!os_log_type_enabled(v22, v23))
          {
            goto LABEL_18;
          }

          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *&v86[0] = v25;
          *v24 = 136446210;
          v39 = sub_2521425DC();
          v41 = sub_2520A5448(v39, v40, v86);

          *(v24 + 4) = v41;
          v29 = "[%{public}s] UserDefaults check fault with reason: pass";
          goto LABEL_17;
        }

        if (!v11)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v50 = sub_25214198C();
          __swift_project_value_buffer(v50, qword_27F4CDE68);
          v51 = sub_25214196C();
          v52 = sub_252141FAC();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *&v86[0] = v54;
            *v53 = 136446210;
            v55 = sub_2521425DC();
            v57 = sub_2520A5448(v55, v56, v86);

            *(v53 + 4) = v57;
            _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] UserDefaults check fault with reason: unknown", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x253099FD0](v54, -1, -1);
            MEMORY[0x253099FD0](v53, -1, -1);
          }

          v20 = 0;
          goto LABEL_19;
        }

        if (v11 == 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v12 = sub_25214198C();
          __swift_project_value_buffer(v12, qword_27F4CDE68);
          v13 = sub_25214196C();
          v14 = sub_252141FAC();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            *&v86[0] = v16;
            *v15 = 136446210;
            v17 = sub_2521425DC();
            v19 = sub_2520A5448(v17, v18, v86);

            *(v15 + 4) = v19;
            _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] UserDefaults check fault with reason: insufficient measurements", v15, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v16);
            MEMORY[0x253099FD0](v16, -1, -1);
            MEMORY[0x253099FD0](v15, -1, -1);
          }

          v20 = 1;
          goto LABEL_19;
        }
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v82 = sub_25214198C();
      __swift_project_value_buffer(v82, qword_27F4CDE68);
      v22 = sub_25214196C();
      v23 = sub_252141FAC();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_18;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v86[0] = v25;
      *v24 = 136446210;
      v83 = sub_2521425DC();
      v85 = sub_2520A5448(v83, v84, v86);

      *(v24 + 4) = v85;
      v29 = "[%{public}s] UserDefaults check fault with reason: default pass";
LABEL_17:
      _os_log_impl(&dword_25207E000, v22, v23, v29, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x253099FD0](v25, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
LABEL_18:

      v20 = 3;
LABEL_19:
      *a1 = v20;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_25212775C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_252141D3C();
  *(v2 + 16) = 16;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

void sub_2521277A8(uint64_t a1@<X8>)
{
  v4 = *(v2 + 304);
  if ((~v4 & 0xFEFE) != 0)
  {
    v13 = *(v2 + 296);
    sub_25212CC54(v13, *(v2 + 304));
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    sub_25212CC54(v13, v4);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25212CA04(v13, v4, v17);
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = v4 >> 14;
      v24 = 0xED0000656C626174;
      v25 = 0x7065636341746F6ELL;
      if (v4 >> 14 != 1)
      {
        v25 = 0x6572676F72506E69;
        v24 = 0xEA00000000007373;
      }

      if (v23)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0x6261747065636361;
      }

      if (v23)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xEA0000000000656CLL;
      }

      v28 = sub_2520A5448(v26, v27, &v29);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Noise Status %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v29);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (noiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    LOWORD(v4) = 0x8000;
  }

  *a1 = v13;
  *(a1 + 8) = v4;
}

void sub_252127B44(uint64_t a1@<X8>)
{
  v3 = *(v1 + 320);
  if ((~v3 & 0xFEFE) != 0)
  {
    v12 = *(v1 + 312);
    j__swift_bridgeObjectRetain(v12);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v13 = sub_25214198C();
    __swift_project_value_buffer(v13, qword_27F4CDE68);
    j__swift_bridgeObjectRetain(v12);
    v14 = sub_25214196C();
    v15 = sub_252141FBC();
    sub_25212CA2C(v12, v3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446466;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = 7827308;
      v22 = 0xE400000000000000;
      v23 = 1751607656;
      if (v3 >> 14 != 2)
      {
        v23 = 0x6572676F72506E69;
        v22 = 0xEA00000000007373;
      }

      if (v3 >> 14)
      {
        v21 = 6580589;
      }

      if (v3 >> 14 <= 1)
      {
        v24 = v21;
      }

      else
      {
        v24 = v23;
      }

      if (v3 >> 14 <= 1)
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = v22;
      }

      v26 = sub_2520A5448(v24, v25, &v27);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] Noise Status %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v27);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Noise Status not available (envNoiseStatus)", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    v12 = sub_252141D3C();
    *(v12 + 16) = 16;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    LOWORD(v3) = -16384;
  }

  *a1 = v12;
  *(a1 + 8) = v3;
}

void sub_252127EDC(uint64_t a1@<X8>)
{
  v4 = *(v2 + 336) | (*(v2 + 340) << 32);
  if ((v4 & 0xFEFEFEFEFEFEFEFELL) == 0x1EFEFEFEFELL)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v27);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (enviNoiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    v4 = 0x800000000000;
  }

  else
  {
    v13 = *(v2 + 328);
    sub_25212CC68(v13, *(v2 + 336) | (*(v2 + 340) << 32));
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    sub_25212CC68(v13, v4);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25212CA44(v13, v4, v17);
    if (os_log_type_enabled(v15, v16))
    {
      v18 = 0xEA0000000000656CLL;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446466;
      v21 = sub_2521425DC();
      v23 = sub_2520A5448(v21, v22, &v27);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = v4 >> 46;
      if (v4 >> 46)
      {
        if (v24 == 1)
        {
          v25 = 0x7065636341746F6ELL;
        }

        else
        {
          v25 = 0x6572676F72506E69;
        }

        if (v24 == 1)
        {
          v18 = 0xED0000656C626174;
        }

        else
        {
          v18 = 0xEA00000000007373;
        }
      }

      else
      {
        v25 = 0x6261747065636361;
      }

      v26 = sub_2520A5448(v25, v18, &v27);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Noise Status %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v20, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }
  }

  *a1 = v13;
  *(a1 + 8) = v4;
  *(a1 + 12) = WORD2(v4);
}

void sub_25212828C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 360);
  if (v3 <= 0xFD)
  {
    v12 = *(v1 + 344);
    v13 = *(v1 + 352);
    j__swift_bridgeObjectRetain(v12);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    j__swift_bridgeObjectRetain(v12);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25212CA7C(v12, v13, v3);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136446466;
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, &v29);

      *(v17 + 4) = v21;
      v22 = 0xE300000000000000;
      *(v17 + 12) = 2080;
      v23 = 7827308;
      v24 = 0xE400000000000000;
      v25 = 1751607656;
      if (v3 >> 6 != 2)
      {
        v25 = 0x6572676F72506E69;
        v24 = 0xEA00000000007373;
      }

      if (v3 >> 6)
      {
        v23 = 0x6574617265646F6DLL;
        v22 = 0xE800000000000000;
      }

      if (v3 >> 6 <= 1)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      if (v3 >> 6 <= 1)
      {
        v27 = v22;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_2520A5448(v26, v27, &v29);

      *(v17 + 14) = v28;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Noise Status %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v29);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Noise Status not available (environmentalNoiseStatus)", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    v12 = sub_252141D3C();
    *(v12 + 16) = 16;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    LOBYTE(v3) = -64;
    v13 = 3;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v3;
}

void sub_252128638(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v33);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] compatibleAudioDeviceStatus requested", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v13 = *(v2 + 232);
  if (v13 == 255)
  {
    v17 = sub_25214196C();
    v18 = sub_252141FAC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      v21 = sub_2521425DC();
      v23 = sub_2520A5448(v21, v22, &v33);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] No audio device available", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x253099FD0](v20, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    v14 = 0;
    LOBYTE(v13) = -1;
  }

  else
  {
    v14 = *(v2 + 224);
    MEMORY[0x28223BE20](v12);
    v16 = v15;
    sub_25212D894(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();

    if (v33)
    {
    }

    else
    {
      v24 = sub_25214196C();
      v25 = sub_252141FAC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v26 = 136446210;
        v28 = sub_2521425DC();
        v30 = sub_2520A5448(v28, v29, &v33);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] audio device expired, resetting", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x253099FD0](v27, -1, -1);
        MEMORY[0x253099FD0](v26, -1, -1);
      }

      sub_25212C9DC(v14, v13);

      v31 = *(v2 + 224);
      *(v2 + 224) = 0;
      v32 = *(v2 + 232);
      LOBYTE(v13) = -1;
      *(v2 + 232) = -1;
      sub_25212C9DC(v31, v32);
      v14 = 0;
    }
  }

  *a1 = v14;
  *(a1 + 8) = v13;
}

id sub_252128A44(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v100 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v95 - v11;
  v13 = *a3;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = *(v5 + 72);
  }

  v111 = 0;
  swift_unknownObjectWeakInit();
  v111 = a2;
  swift_unknownObjectWeakAssign();
  v112 = v13;
  v113 = v14;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 16);
  v17 = a4;
  *&aBlock = v16(ObjectType, a2);
  *(&aBlock + 1) = v18;
  v114 = sub_252141C4C();
  v115 = v19;
  v109 = &unk_28644E6B8;
  v20 = *(v5 + 88);
  [v20 lock];
  sub_2521296F8(&v109, v5, v110, a1, a2, v13, v100);
  v21 = 0x2796F5000uLL;
  v22 = [v20 unlock];
  v23 = 0x27F4CD000;
  if (v13 != 4)
  {
    goto LABEL_26;
  }

  MEMORY[0x28223BE20](v22);
  *(&v95 - 2) = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  v105 = aBlock;
  v106 = v117;
  v107 = *v118;
  v108[0] = *&v118[16];
  *(v108 + 12) = *&v118[28];
  if (*(&aBlock + 1))
  {
    *&aBlock = v105;
    v117 = v106;
    *v118 = v107;
    *&v118[16] = v108[0];
    *&v118[28] = *(v108 + 12);
    v23 = 0x27F4CD000uLL;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v26 = sub_25214198C();
    __swift_project_value_buffer(v26, qword_27F4CDE68);
    v27 = sub_25214196C();
    v28 = sub_252141FBC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v102 = v30;
      *v29 = 136446210;
      v31 = sub_2521425DC();
      v33 = sub_2520A5448(v31, v32, &v102);
      v23 = 0x27F4CD000;

      *(v29 + 4) = v33;
      _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] Notifying 'discovery' observer of previously found device", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x253099FD0](v30, -1, -1);
      MEMORY[0x253099FD0](v29, -1, -1);
    }

    v21 = 0x2796F5000;
    sub_252114A48(&aBlock);
    sub_2520A2584(&v105, &qword_27F4CE6F0, &qword_2521467A0);
    goto LABEL_26;
  }

  v34 = *(v5 + 80);
  sub_25214200C();
  v35 = aBlock;
  v102 = v117;
  v103 = *v118;
  v104[0] = *&v118[16];
  *(v104 + 12) = *&v118[28];
  if (*(&aBlock + 1))
  {
    v98 = *(&aBlock + 1);
    aBlock = v102;
    v117 = v103;
    *v118 = v104[0];
    *&v118[12] = *(v104 + 12);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v99 = v34;
    v36 = sub_25214198C();
    __swift_project_value_buffer(v36, qword_27F4CDE68);
    v37 = sub_25214196C();
    v38 = sub_252141FBC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v101[0] = v96;
      *v39 = 136446210;
      v40 = sub_2521425DC();
      v97 = v35;
      v42 = sub_2520A5448(v40, v41, v101);
      v35 = v97;

      *(v39 + 4) = v42;
      _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] Notifying 'discovery' observer of previously found invalid device", v39, 0xCu);
      v43 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x253099FD0](v43, -1, -1);
      v44 = v39;
      v45 = v100;
      MEMORY[0x253099FD0](v44, -1, -1);
    }

    else
    {

      v45 = v100;
    }

    v72 = sub_252141E3C();
    (*(*(v72 - 8) + 56))(v12, 1, 1, v72);
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    v74 = v98;
    *(v73 + 32) = v35;
    *(v73 + 40) = v74;
    v75 = v117;
    *(v73 + 48) = aBlock;
    *(v73 + 64) = v75;
    *(v73 + 80) = *v118;
    *(v73 + 92) = *&v118[12];
    *(v73 + 112) = v5;
    *(v73 + 120) = v45;

    sub_252113050(0, 0, v12, &unk_252146B38, v73);

    v76 = swift_allocObject();
    *(v76 + 16) = v5;
    *(v76 + 24) = 0u;
    *(v76 + 40) = 0u;
    *(v76 + 56) = 0u;
    *(v76 + 72) = 0u;
    *(v76 + 84) = 0u;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_25212DA00;
    *(v77 + 24) = v76;
    v101[4] = sub_2520ADA58;
    v101[5] = v77;
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 1107296256;
    v101[2] = sub_252083924;
    v101[3] = &block_descriptor_79;
    v78 = _Block_copy(v101);

    dispatch_sync(v99, v78);
    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    v23 = 0x27F4CD000uLL;
    if ((v78 & 1) == 0)
    {
      v21 = 0x2796F5000uLL;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27F4CD708 != -1)
  {
LABEL_32:
    swift_once();
  }

  v46 = sub_25214198C();
  v47 = __swift_project_value_buffer(v46, qword_27F4CDE68);
  v48 = sub_25214196C();
  v49 = sub_252141FAC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v99 = v47;
    v52 = v51;
    *&aBlock = v51;
    *v50 = 136446210;
    v53 = sub_2521425DC();
    v55 = sub_2520A5448(v53, v54, &aBlock);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] Not Notifying 'discovery' observer, no connected/pending CBDevice", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x253099FD0](v52, -1, -1);
    MEMORY[0x253099FD0](v50, -1, -1);
  }

  v56 = *(v5 + 248);
  sub_2520FEBE8();

  v57 = *(v5 + 248);
  sub_2520FF020();

  sub_25211E7F0();
  sub_25211EB24();
  v58 = sub_25214196C();
  v59 = sub_252141FAC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&aBlock = v61;
    *v60 = 136446210;
    v62 = sub_2521425DC();
    v64 = sub_2520A5448(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_25207E000, v58, v59, "[%{public}s] No connected device after resetting discovery", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x253099FD0](v61, -1, -1);
    MEMORY[0x253099FD0](v60, -1, -1);
  }

  v65 = *(v5 + 248);
  v66 = *&v65[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  *(v67 + 24) = 1;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_25212D930;
  *(v68 + 24) = v67;
  *v118 = sub_2520ADA58;
  *&v118[8] = v68;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v117 = sub_252083924;
  *(&v117 + 1) = &block_descriptor_65;
  v69 = _Block_copy(&aBlock);
  v70 = v65;

  dispatch_sync(v66, v69);
  _Block_release(v69);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    result = [v20 *(isEscapingClosureAtFileLocation + 3648)];
    __break(1u);
    return result;
  }

  v21 = 0x2796F5000;
  v23 = 0x27F4CD000;
LABEL_26:
  [v20 lock];
  swift_beginAccess();

  v80 = sub_252112AD8(v79);

  swift_beginAccess();
  v109 = v80;

  [v20 *(v21 + 3648)];
  if (*(v23 + 1800) != -1)
  {
    swift_once();
  }

  v81 = sub_25214198C();
  __swift_project_value_buffer(v81, qword_27F4CDE68);
  v82 = sub_25214196C();
  v83 = sub_252141FBC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v101[0] = v85;
    *v84 = 136446466;
    v86 = sub_2521425DC();
    v88 = sub_2520A5448(v86, v87, v101);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;

    v90 = MEMORY[0x253098E80](v89, MEMORY[0x277D837D0]);
    v92 = v91;

    v93 = sub_2520A5448(v90, v92, v101);

    *(v84 + 14) = v93;
    _os_log_impl(&dword_25207E000, v82, v83, "[%{public}s] observers after add are %s", v84, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v85, -1, -1);
    MEMORY[0x253099FD0](v84, -1, -1);
  }

  sub_25212CBF4(v110);
}

void sub_2521296F8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();

  v11 = sub_252112AD8(v10);

  swift_beginAccess();
  *a1 = v11;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v12 = sub_25214198C();
  v57 = __swift_project_value_buffer(v12, qword_27F4CDE68);
  v13 = sub_25214196C();
  v14 = sub_252141FBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v56[0] = v16;
    *v15 = 136446466;
    v17 = sub_2521425DC();
    v52 = a3;
    v19 = sub_2520A5448(v17, v18, v56);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_beginAccess();

    v21 = MEMORY[0x253098E80](v20, MEMORY[0x277D837D0]);
    v23 = v22;

    v24 = v21;
    a3 = v52;
    v25 = sub_2520A5448(v24, v23, v56);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] observers before add are %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v16, -1, -1);
    MEMORY[0x253099FD0](v15, -1, -1);
  }

  v26 = *(a2 + 104);

  v27 = sub_252112F28(a3, v26);

  if (v27)
  {
    swift_unknownObjectRetain();
    v28 = sub_25214196C();
    v29 = sub_252141FAC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v56[0] = v31;
      *v30 = 136446722;
      v32 = sub_2521425DC();
      v34 = a3;
      v35 = sub_2520A5448(v32, v33, v56);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v37 = (*(a5 + 16))(ObjectType);
      v39 = sub_2520A5448(v37, v38, v56);

      *(v30 + 14) = v39;
      a3 = v34;
      *(v30 + 22) = 2048;
      *(v30 + 24) = a6;
      _os_log_impl(&dword_25207E000, v28, v29, "[%{public}s] Replacing old observer %s (type: %ld)", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v31, -1, -1);
      MEMORY[0x253099FD0](v30, -1, -1);
    }

    swift_beginAccess();
    sub_25212B580(a3, v56);
    sub_2520A2584(v56, &qword_27F4CE940, &qword_252147B60);
    swift_endAccess();
  }

  sub_25212CB84(a3, v55);
  swift_beginAccess();
  sub_25213EE4C(v56, v55);
  sub_25212CBF4(v56);
  swift_endAccess();
  swift_retain_n();
  swift_unknownObjectRetain();
  v40 = sub_25214196C();
  v41 = sub_252141FBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v56[0] = v43;
    *v42 = 136446978;
    v44 = sub_2521425DC();
    v46 = sub_2520A5448(v44, v45, v56);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v47 = swift_getObjectType();
    v48 = (*(a5 + 16))(v47);
    v50 = sub_2520A5448(v48, v49, v56);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2048;
    *(v42 + 24) = a6;
    *(v42 + 32) = 2048;
    v51 = *(*(a2 + 104) + 16);

    *(v42 + 34) = v51;

    _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] Added observer %s, type %ld, number of observers in queue is %ld", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v42, -1, -1);
  }

  else
  {
  }
}

id sub_252129CE4(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[11];
  [v6 lock];
  sub_252129DB0(v2, a1, a2, v5);

  return [v6 unlock];
}

void sub_252129DB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v63 = a1;

  v7 = sub_252112AD8(v6);

  v70 = v7;
  if (qword_27F4CD708 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v8 = sub_25214198C();
    __swift_project_value_buffer(v8, qword_27F4CDE68);
    v9 = sub_25214196C();
    v10 = sub_252141FBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v69[0] = v12;
      *v11 = 136446466;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, v69);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;

      v17 = MEMORY[0x253098E80](v16, MEMORY[0x277D837D0]);
      v19 = v18;

      v20 = sub_2520A5448(v17, v19, v69);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] observers before remove are %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);
    }

    ObjectType = swift_getObjectType();
    a3 = (*(a3 + 16))(ObjectType, a3);
    v23 = v22;
    v24 = *(v63 + 104);
    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 56);
    v28 = (v25 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    if (v27)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        v68[0] = xmmword_252143AF0;
        memset(&v68[1], 0, 32);
        goto LABEL_18;
      }

      v27 = *(v24 + 56 + 8 * v30);
      ++v29;
      if (v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v30 = v29;
LABEL_11:
    sub_25212CB84(*(v24 + 48) + 48 * (__clz(__rbit64(v27)) | (v30 << 6)), v67);
    sub_25212CBBC(v67, v64);
    if (v65 == a3 && v66 == v23)
    {
      break;
    }

    if (sub_25214247C())
    {
      break;
    }

    v27 &= v27 - 1;
    sub_25212CBF4(v64);
    v29 = v30;
    if (!v27)
    {
      goto LABEL_8;
    }
  }

  sub_25212CBBC(v64, v68);
LABEL_18:

  if (v68[0] == __PAIR128__(1, 0))
  {
    sub_2520A2584(v68, &qword_27F4CE940, &qword_252147B60);

    v31 = sub_25214196C();
    v32 = sub_252141FAC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69[0] = v34;
      *v33 = 136446466;
      v35 = sub_2521425DC();
      v37 = sub_2520A5448(v35, v36, v69);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_2520A5448(a3, v23, v69);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] Cannot remove observer %s because it was not in queue.", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_25212CBBC(v68, v69);
    swift_beginAccess();
    sub_25212B580(v69, v68);
    sub_2520A2584(v68, &qword_27F4CE940, &qword_252147B60);
    swift_endAccess();
    v39 = *(*(v63 + 104) + 16);

    v40 = sub_25214196C();
    v41 = sub_252141FBC();

    if (os_log_type_enabled(v40, v41))
    {
      v62 = v39;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v68[0] = v43;
      *v42 = 136446722;
      v44 = sub_2521425DC();
      v46 = sub_2520A5448(v44, v45, v68);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = sub_2520A5448(a3, v23, v68);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2048;
      *(v42 + 24) = v62;
      _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] Removed observer %s; number of observers remaining in queue is %ld.", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v43, -1, -1);
      MEMORY[0x253099FD0](v42, -1, -1);
    }

    else
    {
    }

    v49 = sub_252112AD8(v48);

    swift_beginAccess();
    v70 = v49;

    v50 = sub_25214196C();
    v51 = sub_252141FBC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67[0] = v53;
      *v52 = 136446466;
      v54 = sub_2521425DC();
      v56 = sub_2520A5448(v54, v55, v67);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;

      v58 = MEMORY[0x253098E80](v57, MEMORY[0x277D837D0]);
      v60 = v59;

      v61 = sub_2520A5448(v58, v60, v67);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] observers after remove are %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v53, -1, -1);
      MEMORY[0x253099FD0](v52, -1, -1);
    }

    sub_25212CBF4(v69);
  }
}

uint64_t sub_25212A59C(uint64_t *a1)
{
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = *(v1 + 248);
  v5 = sub_2520F8B10(a1);

  if (v5)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  v6 = a1[1];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_9:
    v12 = 1;
  }

  else
  {
    v9 = *(v3 + 96);
    [v9 lock];
    swift_beginAccess();
    v10 = *(v3 + 112);

    v11 = sub_252112E30(v7, v6, v10);

    [v9 unlock];
    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

void sub_25212A6B4(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 248);
  v6 = sub_2520F8B10(a1);

  if ((v6 & 1) == 0)
  {
    v7 = a1[1];
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v7 & 0xF00000000000000) == 0)
      {
        return;
      }
    }

    else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return;
    }

    v8 = *(v2 + 96);
    [v8 lock];
    sub_25212A7D0(v2, a1, v4);

    [v8 unlock];
  }
}

uint64_t sub_25212A7D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 112);
  v8 = *a2;
  v7 = a2[1];

  v9 = sub_252112E30(v8, v7, v6);

  if ((v9 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    sub_25210AC9C(a2, v21);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v3;
      v14 = v13;
      v19 = swift_slowAlloc();
      v21[0] = v19;
      *v14 = 136446466;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, v21);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(a2[2], a2[3], v21);
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] discovery events for %s will no longer be logged 🙈", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    swift_beginAccess();
    sub_25213ECFC(v20, v8, v7);
    swift_endAccess();
  }
}

uint64_t *sub_25212AA10(uint64_t *result)
{
  v2 = result;
  v3 = *v1;
  v4 = result[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0xF00000000000000) == 0)
    {
      return result;
    }
  }

  else if ((*result & 0xFFFFFFFFFFFFLL) == 0)
  {
    return result;
  }

  v5 = v1[12];
  [v5 lock];
  sub_25212AAFC(v1, v2, v3);

  return [v5 unlock];
}

uint64_t sub_25212AAFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 112);
  v7 = *a2;
  v8 = a2[1];

  v9 = sub_252112E30(v7, v8, v6);

  if (v9)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    sub_25210AC9C(a2, v20);
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[14] = v3;
      v15 = v14;
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v15 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v20);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2520A5448(a2[2], a2[3], v20);
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] discovery events for %s will resume logging 💡", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    swift_beginAccess();
    sub_25212B444(v7, v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25212AD24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2520DA018;

  return sub_25212466C(a1);
}

unint64_t sub_25212ADC0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2520F203C(0x10uLL, 0);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_25212AEF0(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(*v1 + 264);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v6 = v5;
  sub_2520C8C70(&v10);
  v8 = v7;

  return v8 & 1;
}

double sub_25212AF70()
{
  if (qword_27F4CD7D0 != -1)
  {
    swift_once();
  }

  qword_27F4CE8B8 = qword_27F4CE8B0;

  return result;
}

double static HTRequirementStatusManagerInstance.shared.getter()
{
  if (qword_27F4CD7D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_25212B030(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25212B128;

  return v6(a1);
}

uint64_t sub_25212B128()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25212B274@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25212B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  sub_25214255C();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_252141BEC();
  result = sub_25214258C();
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      sub_2520CB768(*(v6 + 48) + 40 * v11, v17);
      if (v17[3] == v7 && v17[4] == v8)
      {
        break;
      }

      v14 = sub_25214247C();
      result = sub_2520CB7D8(v17);
      if (v14)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2520CB7D8(v17);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v17[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252140094();
      v16 = v17[0];
    }

    sub_2520CB7A0(*(v16 + 48) + 40 * v11, a2);
    result = sub_25212B700(v11);
    *v3 = v17[0];
  }

  else
  {
LABEL_9:
    *a2 = xmmword_252143AF0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_25212B444(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_25214255C();
  sub_252141BEC();
  v6 = sub_25214258C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25214247C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252140200();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_25212B8EC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_25212B580@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  sub_25214255C();
  v7 = a1[4];
  v8 = a1[5];
  sub_252141BEC();
  MEMORY[0x253099700](a1[2]);
  result = sub_25214258C();
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      sub_25212CB84(*(v6 + 48) + 48 * v11, v17);
      if (v17[4] == v7 && v17[5] == v8)
      {
        break;
      }

      v14 = sub_25214247C();
      result = sub_25212CBF4(v17);
      if (v14)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_25212CBF4(v17);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v17[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25214035C();
      v16 = v17[0];
    }

    sub_25212CBBC(*(v16 + 48) + 48 * v11, a2);
    result = sub_25212BAB0(v11);
    *v3 = v17[0];
  }

  else
  {
LABEL_9:
    *a2 = xmmword_252143AF0;
    a2[1] = 0u;
    a2[2] = 0u;
  }

  return result;
}

unint64_t sub_25212B700(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        sub_2520CB768(*(v3 + 48) + 40 * v6, v15);
        sub_25214255C();
        sub_252141BEC();
        v10 = sub_25214258C();
        sub_2520CB7D8(v15);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          break;
        }

        if (v11 < v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 40 * v2 >= *(v3 + 48) + 40 * v6 + 40)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v11 < v9)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v12 = *(v3 + 16);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25212B8EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25214255C();

        sub_252141BEC();
        v10 = sub_25214258C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25212BAB0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2521421AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        sub_25212CB84(*(v3 + 48) + 48 * v6, v15);
        sub_25214255C();
        sub_252141BEC();
        MEMORY[0x253099700](v16);
        v10 = sub_25214258C();
        sub_25212CBF4(v15);
        v11 = v10 & v7;
        if (v2 >= v9)
        {
          break;
        }

        if (v11 < v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 48 * v2 >= *(v3 + 48) + 48 * v6 + 48)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v11 < v9)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v12 = *(v3 + 16);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    ++*(v3 + 36);
  }

  return result;
}

id sub_25212BCA8(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *&a2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue];
  if (v6)
  {
    v7 = ObjectType;
    swift_unknownObjectWeakInit();
    v31 = &off_286457070;
    swift_unknownObjectWeakAssign();
    v32 = v6;
    v8 = a1[3];
    v28[4] = a1[2];
    v28[5] = v8;
    v9 = v6;

    v33 = sub_252141C4C();
    v34 = v10;
    v29 = &unk_28644E688;
    v11 = *&a2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock];
    [v11 lock];
    sub_2520C96A4(&v29, a2, v30, a1, &off_286457070, v7);
    [v11 unlock];
    [v11 lock];
    swift_beginAccess();

    v13 = sub_2520ADAD8(v12);

    swift_beginAccess();
    v29 = v13;

    [v11 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      nullsub_1();
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;

      v23 = MEMORY[0x253098E80](v22, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_2520A5448(v23, v25, v28);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] observers after add are %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v17, -1, -1);
    }

    sub_2520CB7D8(v30);
  }

  else
  {
    __break(1u);

    result = [v2 unlock];
    __break(1u);
  }

  return result;
}

id sub_25212BFE0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
  [v5 lock];
  sub_2520C9C88(a2, a1, &off_286457070, ObjectType);

  return [v5 unlock];
}

BOOL sub_25212C094(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_25214247C()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (sub_25214247C()) && *(a1 + 8) == *(a2 + 32) && *(a1 + 9) == *(a2 + 36) && *(a1 + 10) == *(a2 + 40) && *(a1 + 11) == *(a2 + 44) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && ((*(a1 + 51) ^ *(a2 + 51)) & 1) == 0 && ((*(a1 + 52) ^ *(a2 + 52)) & 1) == 0 && (a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64) || (sub_25214247C())))
  {
    return *(a1 + 18) == *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

BOOL _s11HearingTest19HTAudioDeviceStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        sub_25212D8A8(v6, *(a2 + 8));
        sub_25212D8A8(v2, 2u);
        v7 = v2;
        v8 = 2;
        goto LABEL_18;
      }

      sub_25212D8A8(v6, 2u);
      sub_25212D8A8(v2, 2u);
      v9 = [v2 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_252141B9C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v29 = [v4 identifier];
      if (v29)
      {
        v30 = v29;
        v31 = sub_252141B9C();
        v33 = v32;

        if (v13)
        {
          if (v33)
          {
            if (v11 == v31 && v13 == v33)
            {
              sub_25212C9F0(v2, 2u);
              v34 = v4;
              v35 = 2;
LABEL_55:
              sub_25212C9F0(v34, v35);

              return 1;
            }

            v54 = sub_25214247C();
            sub_25212C9F0(v2, 2u);
            v55 = v4;
            v56 = 2;
LABEL_77:
            sub_25212C9F0(v55, v56);

            return (v54 & 1) != 0;
          }

LABEL_43:
          sub_25212C9F0(v2, 2u);
          v46 = v4;
          v47 = 2;
LABEL_58:
          sub_25212C9F0(v46, v47);
LABEL_74:

          return 0;
        }
      }

      else
      {
        if (v13)
        {
          goto LABEL_43;
        }

        v33 = 0;
      }

      sub_25212C9F0(v2, 2u);
      sub_25212C9F0(v4, 2u);
      if (v33)
      {
        goto LABEL_74;
      }

      return 1;
    }

    if (v5 != 3)
    {
      sub_25212D8A8(v6, *(a2 + 8));
      sub_25212D8A8(v2, 3u);
      v7 = v2;
      v8 = 3;
      goto LABEL_18;
    }

    sub_25212D8A8(v6, 3u);
    sub_25212D8A8(v2, 3u);
    v19 = [v2 identifier];
    if (v19)
    {
      v20 = v19;
      v21 = sub_252141B9C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v41 = [v4 identifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_252141B9C();
      v45 = v44;

      if (v23)
      {
        if (v45)
        {
          if (v21 == v43 && v23 == v45)
          {
            sub_25212C9F0(v2, 3u);
            v34 = v4;
            v35 = 3;
            goto LABEL_55;
          }

          v54 = sub_25214247C();
          sub_25212C9F0(v2, 3u);
          v55 = v4;
          v56 = 3;
          goto LABEL_77;
        }

LABEL_47:
        sub_25212C9F0(v2, 3u);
        v46 = v4;
        v47 = 3;
        goto LABEL_58;
      }
    }

    else
    {
      if (v23)
      {
        goto LABEL_47;
      }

      v45 = 0;
    }

    sub_25212C9F0(v2, 3u);
    sub_25212C9F0(v4, 3u);
    if (v45)
    {
      goto LABEL_74;
    }

    return 1;
  }

  if (!v3)
  {
    if (*(a2 + 8))
    {
      sub_25212D8A8(v6, *(a2 + 8));
      sub_25212D8A8(v2, 0);
      v7 = v2;
      v8 = 0;
LABEL_18:
      sub_25212C9F0(v7, v8);
      sub_25212C9F0(v4, v5);
      return 0;
    }

    sub_25212D8A8(v6, 0);
    sub_25212D8A8(v2, 0);
    v24 = [v2 identifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_252141B9C();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v48 = [v4 identifier];
    if (v48)
    {
      v49 = v48;
      v50 = sub_252141B9C();
      v52 = v51;

      if (v28)
      {
        if (v52)
        {
          if (v26 == v50 && v28 == v52)
          {
            sub_25212C9F0(v2, 0);
            v34 = v4;
            v35 = 0;
            goto LABEL_55;
          }

          v54 = sub_25214247C();
          sub_25212C9F0(v2, 0);
          v55 = v4;
          v56 = 0;
          goto LABEL_77;
        }

        goto LABEL_57;
      }
    }

    else
    {
      if (v28)
      {
LABEL_57:
        sub_25212C9F0(v2, 0);
        v46 = v4;
        v47 = 0;
        goto LABEL_58;
      }

      v52 = 0;
    }

    sub_25212C9F0(v2, 0);
    sub_25212C9F0(v4, 0);
    if (v52)
    {
      goto LABEL_74;
    }

    return 1;
  }

  if (v5 != 1)
  {
    sub_25212D8A8(v6, *(a2 + 8));
    sub_25212D8A8(v2, 1u);
    v7 = v2;
    v8 = 1;
    goto LABEL_18;
  }

  sub_25212D8A8(v6, 1u);
  sub_25212D8A8(v2, 1u);
  v14 = [v2 identifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252141B9C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v36 = [v4 identifier];
  if (!v36)
  {
    if (v18)
    {
      goto LABEL_45;
    }

    v40 = 0;
LABEL_63:
    sub_25212C9F0(v2, 1u);
    sub_25212C9F0(v4, 1u);
    if (v40)
    {
      goto LABEL_74;
    }

    return 1;
  }

  v37 = v36;
  v38 = sub_252141B9C();
  v40 = v39;

  if (!v18)
  {
    goto LABEL_63;
  }

  if (!v40)
  {
LABEL_45:
    sub_25212C9F0(v2, 1u);
    v46 = v4;
    v47 = 1;
    goto LABEL_58;
  }

  if (v16 == v38 && v18 == v40)
  {
    sub_25212C9F0(v2, 1u);
    v34 = v4;
    v35 = 1;
    goto LABEL_55;
  }

  v57 = sub_25214247C();
  sub_25212C9F0(v2, 1u);
  sub_25212C9F0(v4, 1u);

  result = 1;
  if ((v57 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _s11HearingTest29HTFaultCheckStatusWithReasonsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        LOBYTE(v3) = 1;
        sub_2521305F8(*a2, 1u);
        v6 = v2;
        v7 = 1;
LABEL_9:
        sub_2521305F8(v6, v7);
        v8 = sub_252113760(v2, v4);
        goto LABEL_11;
      }
    }

    else if (v5 == 2)
    {
      LOBYTE(v3) = 2;
      sub_2521305F8(*a2, 2u);
      v6 = v2;
      v7 = 2;
      goto LABEL_9;
    }

LABEL_10:
    sub_2521305F8(*a2, *(a2 + 8));
    sub_2521305F8(v2, v3);
    v8 = 0;
    goto LABEL_11;
  }

  if (*(a2 + 8))
  {
    goto LABEL_10;
  }

  sub_2521305F8(*a2, 0);
  sub_2521305F8(v2, 0);
  v8 = sub_252113760(v2, v4);
  LOBYTE(v3) = 0;
LABEL_11:
  sub_25213060C(v2, v3);
  sub_25213060C(v4, v5);
  return v8 & 1;
}

uint64_t sub_25212C8C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25212C900()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_25212C97C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25212C9DC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_25212C9F0(result, a2);
  }
}

void sub_25212C9F0(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

uint64_t sub_25212CA04(uint64_t result, int a2, __n128 a3)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_25212CA18(result, a2);
  }

  return result;
}

uint64_t sub_25212CA18(uint64_t result, unsigned __int16 a2)
{
  if ((a2 >> 14) <= 2u)
  {
  }

  return v2;
}

uint64_t sub_25212CA2C(uint64_t result, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return j__swift_bridgeObjectRelease(result);
  }

  return result;
}

uint64_t sub_25212CA44(uint64_t result, unint64_t a2, __n128 a3)
{
  if ((a2 & 0xFEFEFEFEFEFELL) != 0x1EFEFEFEFELL)
  {
    return sub_25212CA68(result, a2);
  }

  return result;
}

uint64_t sub_25212CA68(uint64_t result, unint64_t a2)
{
  if (((a2 >> 46) & 3) != 3)
  {
  }

  return v2;
}

uint64_t sub_25212CA7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return j__swift_bridgeObjectRelease(a1);
  }

  return a1;
}

uint64_t objectdestroy_31Tm(void (*a1)(void, void))
{
  a1(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 26, 7);
}

uint64_t sub_25212CB04()
{
  sub_25212CA68(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32));

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_25212CB48()
{
  j__swift_bridgeObjectRelease(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

double sub_25212CC54(uint64_t a1, unsigned __int16 a2)
{
  if ((a2 >> 14) <= 2u)
  {
  }

  return result;
}

double sub_25212CC68(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 46) & 3) != 3)
  {
  }

  return result;
}

uint64_t sub_25212CC7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v43 = &v32 - v6;
  v7 = [a1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_252141B9C();
    v41 = v10;
    v42 = v9;
  }

  else
  {
    v41 = 0xE000000000000000;
    v42 = 0;
  }

  v11 = [a1 name];
  if (v11)
  {
    v12 = v11;
    v40[0] = sub_252141B9C();
    v40[1] = v13;
  }

  else
  {
    HIBYTE(v40[1]) = -18;
    strcpy(v40, "(missing name)");
  }

  v39 = [a1 proximityPairingPrimaryPlacement];
  v38 = [a1 proximityPairingSecondaryPlacement];
  v37 = [a1 primaryPlacement];
  v36 = [a1 secondaryPlacement];
  v14 = [a1 deviceFlags];
  v35 = [a1 deviceType];
  v34 = [a1 hearingTestSupport];
  v33 = [a1 respondsToSelector_];
  v15 = [a1 accessoryStatusFlags];
  v16 = [a1 btAddressData];
  if (v16)
  {
    v17 = v16;
    v18 = sub_25214184C();
    v20 = v19;

    sub_2520CBC7C(v18, v20);
    v21 = sub_2520F79EC(v18, v20);
    sub_2520CB598(v18, v20);
    v44 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
    sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530, MEMORY[0x277D83958]);
    v32 = sub_252141B3C();
    v23 = v22;
  }

  else
  {
    v32 = 0;
    v18 = 0;
    v20 = 0xF000000000000000;
    v23 = 0xE000000000000000;
  }

  v24 = [a1 productID];
  v25 = sub_252141E3C();
  v26 = v43;
  (*(*(v25 - 8) + 56))(v43, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a1;
  v28 = a1;
  sub_252113050(0, 0, v26, &unk_252147B58, v27);
  sub_25210B134(v18, v20);

  v30 = v41;
  *a2 = v42;
  *(a2 + 8) = v30;
  v31 = v40[1];
  *(a2 + 16) = v40[0];
  *(a2 + 24) = v31;
  LODWORD(v31) = v38;
  *(a2 + 32) = v39;
  *(a2 + 36) = v31;
  LODWORD(v31) = v36;
  *(a2 + 40) = v37;
  *(a2 + 44) = v31;
  *(a2 + 48) = (v14 & 0x40) != 0;
  LOBYTE(v31) = v34;
  *(a2 + 49) = v35;
  *(a2 + 50) = v31;
  *(a2 + 51) = v33;
  *(a2 + 52) = v15 & 1;
  *(a2 + 56) = v32;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
  return result;
}