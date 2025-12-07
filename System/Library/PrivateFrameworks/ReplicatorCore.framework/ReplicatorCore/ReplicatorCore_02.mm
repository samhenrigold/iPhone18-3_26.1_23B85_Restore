unint64_t *sub_230461F90(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v31 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v30 = (v9 - 1) & v9;
LABEL_13:
    v28 = v11 | (v5 << 6);

    v14 = sub_2304A5284();
    v16 = v15;
    if (*(a4 + 16) && (v17 = v14, sub_2304A6394(), sub_2304A5D54(), v18 = sub_2304A63B4(), v19 = -1 << *(a4 + 32), v20 = v18 & ~v19, ((*(v31 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = (*(a4 + 48) + 16 * v20);
        v23 = *v22 == v17 && v22[1] == v16;
        if (v23 || (sub_2304A62F4() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v31 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v24 = __OFADD__(v27++, 1);
      v9 = v30;
      if (v24)
      {
        __break(1u);
        return sub_23045F7B0(v26, a2, v27, a3);
      }
    }

    else
    {
LABEL_5:

      v9 = v30;
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
      return sub_23045F7B0(v26, a2, v27, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v30 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2304621E8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_bridgeObjectRetain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_23045DFD8(v13, v8, a1, a2);
      MEMORY[0x23191A000](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_230461F90((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_2304623A8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v35 = MEMORY[0x277D84F98];
    v4 = sub_2304A61A4();

    v5 = sub_2304A6234();
    if (v5)
    {
      v6 = v5;
      sub_2304A4984();
      v7 = v6;
      v8 = a2 + 56;
      do
      {
        v34 = v7;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        if (!v33)
        {
          break;
        }

        v9 = sub_2304A5284();
        v11 = v10;
        if (*(a2 + 16) && (v12 = v9, sub_2304A6394(), sub_2304A5D54(), v13 = sub_2304A63B4(), v14 = -1 << *(a2 + 32), v15 = v13 & ~v14, ((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v12 && v17[1] == v11;
            if (v18 || (sub_2304A62F4() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v19 = *(v3 + 16);
          if (*(v3 + 24) <= v19)
          {
            sub_23046E490(v19 + 1, 1);
          }

          v3 = v35;
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
          result = sub_2304A5CF4();
          v21 = v35 + 64;
          v22 = -1 << *(v35 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          if (((-1 << v23) & ~*(v35 + 64 + 8 * (v23 >> 6))) != 0)
          {
            v25 = __clz(__rbit64((-1 << v23) & ~*(v35 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = 0;
            v27 = (63 - v22) >> 6;
            do
            {
              if (++v24 == v27 && (v26 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v28 = v24 == v27;
              if (v24 == v27)
              {
                v24 = 0;
              }

              v26 |= v28;
              v29 = *(v21 + 8 * v24);
            }

            while (v29 == -1);
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          }

          *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          *(*(v35 + 48) + 8 * v25) = v33;
          *(*(v35 + 56) + 8 * v25) = v34;
          ++*(v35 + 16);
        }

        else
        {
LABEL_4:
        }

        v7 = sub_2304A6234();
      }

      while (v7);
    }

    sub_230433B3C(v4 | 0x8000000000000000);

    return v3;
  }

  else
  {

    v32 = sub_2304621E8(a1, a2, v31);

    return v32;
  }
}

uint64_t sub_230462768()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_230462810(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

unint64_t sub_230462828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
    v3 = sub_2304A62A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_230464B24(v4, &v13, &qword_27DB53F50, &unk_2304A73B0);
      v5 = v13;
      v6 = v14;
      result = sub_230469C40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230462958(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_230462958(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_230462988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54178, &qword_2304A7530);
    v3 = sub_2304A62A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_230464B24(v4, &v13, &qword_27DB54180, &qword_2304A7538);
      v5 = v13;
      v6 = v14;
      result = sub_230469C40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230464AA4(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_230462ABC(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *, void *))
{
  v151 = a1;
  v5 = sub_2304A53C4();
  v147 = *(v5 - 8);
  v148 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A53E4();
  v149 = *(v8 - 8);
  v150 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v144 = v126 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v138 = v126 - v15;
  MEMORY[0x28223BE20](v14);
  v133 = v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v126 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v145 = v126 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v146 = v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v139 = v126 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v140 = v126 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v132 = v126 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v134 = v126 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v129 = v126 - v37;
  MEMORY[0x28223BE20](v36);
  v130 = v126 - v38;
  v127 = sub_2304A4084();
  v126[2] = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126[1] = v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2304A57B4();
  v136 = *(v40 - 8);
  v137 = v40;
  v41 = *(v136 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v128 = v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = v126 - v43;
  v135 = sub_2304A5124();
  v131 = *(v135 - 8);
  v45 = MEMORY[0x28223BE20](v135);
  v126[0] = v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = (v126 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = v126 - v50;
  v152 = swift_allocObject();
  *(v152 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v141 = v7;
    v143 = Strong;
    v53 = *(a2 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v54 = MEMORY[0x28223BE20](Strong);
    v55 = v151;
    v126[-2] = a2;
    v126[-1] = v55;
    MEMORY[0x28223BE20](v54);
    v126[-2] = sub_2304640D8;
    v126[-1] = v56;
    v142 = a3;
    _Block_copy(a3);
    os_unfair_lock_lock(v53 + 4);
    sub_230431F50();
    os_unfair_lock_unlock(v53 + 4);
    v57 = sub_2304A5294();
    if ((*(*(v57 - 8) + 48))(v51, 1, v57) == 1)
    {
      v58 = v141;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v59 = sub_2304A5B74();
      __swift_project_value_buffer(v59, qword_28149B008);
      v60 = sub_2304A5B54();
      v61 = sub_2304A5E74();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v146;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_230430000, v60, v61, "Cannot send a message for an unknown client descriptor", v64, 2u);
        MEMORY[0x23191A000](v64, -1, -1);
      }

      v65 = sub_2304A55C4();
      v66 = *(v65 - 8);
      (*(v66 + 56))(v63, 1, 1, v65);
      (*(v147 + 104))(v58, *MEMORY[0x277D468C0], v148);
      v67 = v144;
      sub_2304A53D4();
      sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      v68 = v150;
      v69 = swift_allocError();
      (*(v149 + 32))(v70, v67, v68);
      v71 = sub_2304A3F14();
      v72 = v145;
      sub_230464B24(v63, v145, &qword_27DB53FC8, &qword_2304A7420);
      v73 = 0;
      if ((*(v66 + 48))(v72, 1, v65) != 1)
      {
        sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988], MEMORY[0x277D46980]);
        v73 = sub_2304A5454();
        (*(v66 + 8))(v72, v65);
      }

      v142[2](v142, v73, v71);
      swift_unknownObjectRelease();

      v74 = v63;
    }

    else
    {
      v93 = v151;
      v94 = sub_2304A57A4();
      if (v95)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v96 = sub_2304A5B74();
        __swift_project_value_buffer(v96, qword_28149B008);
        v97 = sub_2304A5B54();
        v98 = sub_2304A5E74();
        v99 = os_log_type_enabled(v97, v98);
        v101 = v139;
        v100 = v140;
        if (v99)
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_230430000, v97, v98, "Cannot send a message expecting a response without a timeout value", v102, 2u);
          MEMORY[0x23191A000](v102, -1, -1);
        }

        v103 = sub_2304A55C4();
        v104 = *(v103 - 8);
        (*(v104 + 56))(v100, 1, 1, v103);
        (*(v147 + 104))(v141, *MEMORY[0x277D468D0], v148);
        v105 = v138;
      }

      else
      {
        v106 = *&v94;
        v107 = sub_2304A5794();
        if ((v108 & 1) == 0)
        {
          v149 = v107;
          v150 = v51;
          v119 = v106;
          sub_2304A5784();
          v120 = v136;
          v121 = v137;
          v148 = *(v136 + 16);
          v148(v44, v93, v137);
          v122 = (*(v120 + 80) + 32) & ~*(v120 + 80);
          v123 = swift_allocObject();
          v124 = v152;
          *(v123 + 16) = sub_2304640D0;
          *(v123 + 24) = v124;
          (*(v120 + 32))(v123 + v122, v44, v121);

          sub_230450084(v48, v149, a2, sub_230464108, v123, v119);
          v125 = (v131 + 8);

          swift_unknownObjectRelease();
          (*v125)(v48, v135);
          sub_230464970(v150, &qword_27DB53FD0, &qword_2304A7428);
        }

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v109 = sub_2304A5B74();
        __swift_project_value_buffer(v109, qword_28149B008);
        v110 = sub_2304A5B54();
        v111 = sub_2304A5E74();
        v112 = os_log_type_enabled(v110, v111);
        v100 = v134;
        v101 = v132;
        if (v112)
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_230430000, v110, v111, "Cannot send a message expecting a response without a timeout value", v113, 2u);
          MEMORY[0x23191A000](v113, -1, -1);
        }

        v103 = sub_2304A55C4();
        v104 = *(v103 - 8);
        (*(v104 + 56))(v100, 1, 1, v103);
        (*(v147 + 104))(v141, *MEMORY[0x277D468D0], v148);
        v105 = v133;
      }

      sub_2304A53D4();
      sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      v114 = v150;
      v69 = swift_allocError();
      (*(v149 + 32))(v115, v105, v114);
      v116 = sub_2304A3F14();
      sub_230464B24(v100, v101, &qword_27DB53FC8, &qword_2304A7420);
      v117 = 0;
      if ((*(v104 + 48))(v101, 1, v103) != 1)
      {
        sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988], MEMORY[0x277D46980]);
        v117 = sub_2304A5454();
        (*(v104 + 8))(v101, v103);
      }

      v142[2](v142, v117, v116);
      swift_unknownObjectRelease();

      v74 = v100;
    }

    sub_230464970(v74, &qword_27DB53FC8, &qword_2304A7420);
    sub_230464970(v51, &qword_27DB53FD0, &qword_2304A7428);
    v92 = v69;
  }

  else
  {
    v75 = v11;
    v76 = a3;
    _Block_copy(a3);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v77 = sub_2304A5B74();
    __swift_project_value_buffer(v77, qword_28149B008);
    v78 = sub_2304A5B54();
    v79 = sub_2304A5E74();
    v80 = v23;
    v81 = v75;
    if (os_log_type_enabled(v78, v79))
    {
      v82 = v7;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_230430000, v78, v79, "Cannot send a message as delegate is not set", v83, 2u);
      v84 = v83;
      v7 = v82;
      MEMORY[0x23191A000](v84, -1, -1);
    }

    v85 = sub_2304A55C4();
    v86 = *(v85 - 8);
    (*(v86 + 56))(v80, 1, 1, v85);
    (*(v147 + 104))(v7, *MEMORY[0x277D468D8], v148);
    sub_2304A53D4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    v87 = v150;
    v88 = swift_allocError();
    (*(v149 + 32))(v89, v81, v87);
    v90 = sub_2304A3F14();
    sub_230464B24(v80, v20, &qword_27DB53FC8, &qword_2304A7420);
    v91 = 0;
    if ((*(v86 + 48))(v20, 1, v85) != 1)
    {
      sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988], MEMORY[0x277D46980]);
      v91 = sub_2304A5454();
      (*(v86 + 8))(v20, v85);
    }

    v76[2](v76, v91, v90);

    sub_230464970(v80, &qword_27DB53FC8, &qword_2304A7420);
    v92 = v88;
  }
}

uint64_t sub_230464108(char *a1)
{
  v3 = *(sub_2304A57B4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23045870C(a1, v4, v5, v6);
}

uint64_t sub_23046417C(void **a1)
{
  v3 = *(sub_2304A46C4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2304A5124() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_230450EF4(a1, v1 + v4, v1 + v7, v9, v10);
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

uint64_t sub_2304643E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230464448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304644B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_23046453C@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

unint64_t sub_2304645C4()
{
  result = qword_281499DD8;
  if (!qword_281499DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DD8);
  }

  return result;
}

unint64_t sub_230464618()
{
  result = qword_27DB54060;
  if (!qword_27DB54060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54060);
  }

  return result;
}

uint64_t sub_2304647C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_230464834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_230464898@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_23045E478(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_23046492C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_230464970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2304649EC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
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

_OWORD *sub_230464AA4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_230464ABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_230464B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_230464B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ReplicationServer.ReplicationServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicationServer.ReplicationServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230464D94()
{
  result = qword_27DB54228;
  if (!qword_27DB54228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54228);
  }

  return result;
}

uint64_t sub_230464F00(uint64_t a1)
{
  result = MEMORY[0x231919370](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_23046ADBC(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23046501C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_2304A4924() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t Daemon.__allocating_init(workloop:)(void *a1)
{
  v2 = swift_allocObject();
  Daemon.init(workloop:)(a1);
  return v2;
}

void *Daemon.init(workloop:)(void *a1)
{
  v433 = a1;
  v504[5] = *MEMORY[0x277D85DE8];
  v2 = v1;
  v466 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v3 - 8);
  v404 = &v399 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54358, &qword_2304A7670);
  MEMORY[0x28223BE20](v5 - 8);
  v428 = &v399 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54360, &qword_2304A7678);
  v430 = *(v7 - 8);
  v431 = v7;
  MEMORY[0x28223BE20](v7);
  v429 = &v399 - v8;
  v9 = sub_2304A52F4();
  v426 = *(v9 - 8);
  v427 = v9;
  MEMORY[0x28223BE20](v9);
  v425 = &v399 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  MEMORY[0x28223BE20](v11 - 8);
  v440 = &v399 - v12;
  v13 = sub_2304A47E4();
  v409 = *(v13 - 8);
  v410 = v13;
  MEMORY[0x28223BE20](v13);
  v438 = &v399 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_2304A3F34();
  v452 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v443 = &v399 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = sub_2304A3FC4();
  v454 = *(v444 - 8);
  v16 = MEMORY[0x28223BE20](v444);
  v403 = &v399 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v408 = &v399 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v401 = &v399 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v406 = &v399 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v407 = &v399 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v432 = &v399 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v400 = &v399 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v412 = &v399 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v402 = &v399 - v33;
  MEMORY[0x28223BE20](v32);
  v451 = &v399 - v34;
  v475 = sub_2304A4924();
  v473 = *(v475 - 1);
  v35 = MEMORY[0x28223BE20](v475);
  v413 = &v399 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  OpaqueTypeConformance2 = &v399 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v468 = (&v399 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v461 = &v399 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v471 = &v399 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v470 = (&v399 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v467 = &v399 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v472 = &v399 - v50;
  MEMORY[0x28223BE20](v49);
  v474 = &v399 - v51;
  v52 = sub_2304A47A4();
  v436 = *(v52 - 8);
  v437 = v52;
  MEMORY[0x28223BE20](v52);
  v449 = &v399 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2304A4894();
  v434 = *(v54 - 8);
  v435 = v54;
  MEMORY[0x28223BE20](v54);
  v448 = &v399 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2304A4114();
  v57 = *(v56 - 8);
  v455 = v56;
  v456 = v57;
  v58 = MEMORY[0x28223BE20](v56);
  v414 = &v399 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v446 = &v399 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v457 = (&v399 - v63);
  MEMORY[0x28223BE20](v62);
  v465 = &v399 - v64;
  v441 = sub_2304A5ED4();
  v65 = *(v441 - 1);
  MEMORY[0x28223BE20](v441);
  v67 = &v399 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v68);
  v70 = &v399 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2304A5C64();
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v399 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[9] = 0;
  v450 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v464 = "sponseGetRecords24@0:8^@16";
  sub_2304A5C44();
  v481 = MEMORY[0x277D84F90];
  v74 = sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  v417 = sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  v418 = v75;
  v421 = v68;
  v419 = v74;
  sub_2304A5FA4();
  v76 = *(v65 + 104);
  v416 = *MEMORY[0x277D85268];
  v423 = v65 + 104;
  v415 = v76;
  v76(v67);
  v420 = v73;
  v422 = v70;
  v424 = v67;
  v453[10] = sub_2304A5F04();
  LockStateProvider = type metadata accessor for MobileKeybagFirstLockStateProvider();
  swift_allocObject();
  v78 = sub_23047B93C();
  v504[3] = LockStateProvider;
  v504[4] = sub_230469BF8(&unk_28149A250, type metadata accessor for MobileKeybagFirstLockStateProvider, &unk_2304A7AD4);
  v504[0] = v78;
  if (qword_281499E70 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v79 = qword_28149B068;
    swift_retain_n();
    v80 = v465;
    sub_230468CF0(v465);
    type metadata accessor for DataMigrator(0);
    v81 = swift_allocObject();
    v447 = v79;
    *(v81 + 16) = v79;
    (*(v456 + 32))(v81 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType, v80, v455);
    *(v81 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages) = MEMORY[0x277D84F90];
    v405 = v81;
    sub_230495C68();
    v82 = v475;
    v411 = 0;
    sub_23048BA74(v447);
    v83 = sub_2304A53B4();

    v84 = sub_2304A53A4();
    v483 = v83;
    v484 = sub_230469BF8(&unk_281499F38, MEMORY[0x277D468B8], MEMORY[0x277D468B0]);
    v481 = v84;
    v85 = sub_2304A5544();

    v86 = sub_2304A5534();
    v478 = v85;
    v479 = sub_230469BF8(&qword_281499F20, MEMORY[0x277D46958], MEMORY[0x277D46950]);
    v477[0] = v86;
    v439 = sub_2304A42F4();
    swift_allocObject();
    v445 = sub_2304A42E4();
    sub_2304A4884();
    sub_2304A4794();
    sub_2304A4784();
    sub_2304A4774();
    sub_230468CF0(v457);
    v87 = sub_2304A4914();
    v88 = MEMORY[0x277D46490];
    v466 = *(v87 + 16);
    if (!v466)
    {
      break;
    }

    v89 = 0;
    v465 = v473 + 88;
    LODWORD(v464) = *MEMORY[0x277D46488];
    LODWORD(v460) = *MEMORY[0x277D46490];
    v463 = (v473 + 8);
    v458 = 0x80000002304A8780;
    v459 = 0x80000002304A8740;
    v90 = MEMORY[0x277D84F98];
    v462 = v87;
    while (v89 < *(v87 + 16))
    {
      v95 = v90;
      v96 = v473;
      v97 = *(v473 + 72);
      v98 = *(v473 + 16);
      v99 = v474;
      v98(v474, v87 + ((*(v473 + 80) + 32) & ~*(v473 + 80)) + v97 * v89, v82);
      v100 = v467;
      v98(v467, v99, v82);
      v101 = (*(v96 + 88))(v100, v82);
      if (v101 == v464)
      {
        v102 = v470;
        v98(v470, v99, v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v481 = v95;
        v104 = sub_23046A018(v102);
        v106 = v95[2];
        v107 = (v105 & 1) == 0;
        v108 = __OFADD__(v106, v107);
        v109 = v106 + v107;
        if (v108)
        {
          goto LABEL_101;
        }

        v110 = v105;
        if (v95[3] >= v109)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v143 = v104;
            sub_230471D40();
            v104 = v143;
          }
        }

        else
        {
          sub_23046F728(v109, isUniquelyReferenced_nonNull_native);
          v104 = sub_23046A018(v470);
          if ((v110 & 1) != (v111 & 1))
          {
            goto LABEL_111;
          }
        }

        v82 = v475;
        v131 = v481;
        if (v110)
        {
          v91 = (*(v481 + 56) + 16 * v104);
          v92 = v458;
          *v91 = 0xD000000000000023;
          v91[1] = v92;
          v93 = v131;

          v94 = *v463;
          (*v463)(v470, v82);
LABEL_5:
          v94(v474, v82);
          v90 = v93;
          goto LABEL_6;
        }

        v132 = v481;
        *(v481 + 8 * (v104 >> 6) + 64) |= 1 << v104;
        v133 = v104;
        v134 = v132[6] + v104 * v97;
        v135 = v470;
        v98(v134, v470, v82);
        v136 = (v132[7] + 16 * v133);
        v137 = v458;
        *v136 = 0xD000000000000023;
        v136[1] = v137;
        v138 = *v463;
        (*v463)(v135, v82);
        v138(v474, v82);
        v139 = v132[2];
        v108 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (v108)
        {
          goto LABEL_105;
        }

        v90 = v132;
        v132[2] = v140;
      }

      else
      {
        v110 = 0xD00000000000001FLL;
        if (v101 != v460)
        {
          goto LABEL_112;
        }

        v112 = v471;
        v98(v471, v474, v82);
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v481 = v95;
        v110 = sub_23046A018(v112);
        v115 = v95[2];
        v116 = (v114 & 1) == 0;
        v117 = v115 + v116;
        if (__OFADD__(v115, v116))
        {
          goto LABEL_102;
        }

        v118 = v114;
        if (v95[3] >= v117)
        {
          if (v113)
          {
            v121 = v481;
            if (v114)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_230471D40();
            v121 = v481;
            if (v118)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_23046F728(v117, v113);
          v119 = sub_23046A018(v471);
          if ((v118 & 1) != (v120 & 1))
          {
LABEL_111:
            sub_2304A6314();
            __break(1u);
LABEL_112:
            v481 = 0;
            v482 = 0xE000000000000000;
            sub_2304A6104();

            v481 = v110;
            v482 = 0x80000002304A8720;
            sub_230469BF8(&qword_27DB54378, MEMORY[0x277D46498], MEMORY[0x277D464B0]);
            v391 = sub_2304A62D4();
            v368 = v392;
            MEMORY[0x2319192E0](v391);

            LODWORD(v398) = 0;
            i = 62;
            goto LABEL_114;
          }

          v110 = v119;
          v121 = v481;
          if (v118)
          {
LABEL_27:
            v141 = (*(v121 + 56) + 16 * v110);
            v142 = v459;
            *v141 = 0xD000000000000031;
            v141[1] = v142;
            v93 = v121;

            v94 = *v463;
            v82 = v475;
            (*v463)(v471, v475);
            goto LABEL_5;
          }
        }

        v122 = v121;
        *(v121 + 8 * (v110 >> 6) + 64) |= 1 << v110;
        v123 = *(v121 + 48) + v110 * v97;
        v124 = v471;
        v125 = v475;
        v98(v123, v471, v475);
        v126 = (*(v122 + 56) + 16 * v110);
        v127 = v459;
        *v126 = 0xD000000000000031;
        v126[1] = v127;
        v128 = *v463;
        (*v463)(v124, v125);
        v128(v474, v125);
        v129 = *(v122 + 16);
        v108 = __OFADD__(v129, 1);
        v130 = v129 + 1;
        if (v108)
        {
          goto LABEL_106;
        }

        v90 = v122;
        *(v122 + 16) = v130;
        v82 = v475;
      }

LABEL_6:
      v88 = MEMORY[0x277D46490];
      v87 = v462;
      if (v466 == ++v89)
      {
        goto LABEL_31;
      }
    }

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
    swift_once();
  }

  v90 = MEMORY[0x277D84F98];
LABEL_31:
  v460 = v90;

  v144 = sub_2304A4914();
  v145 = MEMORY[0x277D84F98];
  v474 = *(v144 + 16);
  if (v474)
  {
    v146 = 0;
    v471 = (v473 + 88);
    LODWORD(v470) = *MEMORY[0x277D46488];
    LODWORD(v465) = *v88;
    v464 = 0x80000002304A87B0;
    v467 = (v473 + 8);
    v463 = 0x80000002304A87E0;
    v100 = v472;
    v466 = v144;
    do
    {
      if (v146 >= *(v144 + 16))
      {
        goto LABEL_100;
      }

      v151 = v473;
      v110 = *(v473 + 72);
      v152 = *(v473 + 16);
      v153 = v475;
      v152(v100, v144 + ((*(v473 + 80) + 32) & ~*(v473 + 80)) + v110 * v146, v475);
      v154 = v461;
      v152(v461, v100, v153);
      v155 = (*(v151 + 88))(v154, v153);
      if (v155 != v470)
      {
        if (v155 != v465)
        {
          v481 = 0;
          v482 = 0xE000000000000000;
          sub_2304A6104();

          v481 = 0xD00000000000001FLL;
          v482 = 0x80000002304A8720;
          sub_230469BF8(&qword_27DB54378, MEMORY[0x277D46498], MEMORY[0x277D464B0]);
          v394 = sub_2304A62D4();
          v368 = v395;
          MEMORY[0x2319192E0](v394);

          LODWORD(v398) = 0;
          for (i = 74; ; i = 206)
          {
LABEL_114:
            v397 = i;
            sub_2304A6254();
            __break(1u);
LABEL_115:
            v481 = 0;
            v482 = 0xE000000000000000;
            sub_2304A6104();
            MEMORY[0x2319192E0](v100 + 4, 0x80000002304A8880);
            v477[0] = v368;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB543B0, &qword_2304A76A0);
            sub_2304A6184();
            LODWORD(v398) = 0;
          }
        }

        v166 = OpaqueTypeConformance2;
        v152(OpaqueTypeConformance2, v472, v475);
        v167 = v145;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v481 = v167;
        v169 = sub_23046A018(v166);
        v171 = v167[2];
        v172 = (v170 & 1) == 0;
        v108 = __OFADD__(v171, v172);
        v173 = v171 + v172;
        if (v108)
        {
          goto LABEL_104;
        }

        v174 = v170;
        if (v167[3] < v173)
        {
          sub_23046F728(v173, v168);
          v169 = sub_23046A018(OpaqueTypeConformance2);
          if ((v174 & 1) != (v175 & 1))
          {
            goto LABEL_111;
          }

          goto LABEL_53;
        }

        if (v168)
        {
LABEL_53:
          v145 = v481;
          if ((v174 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v187 = v169;
          sub_230471D40();
          v169 = v187;
          v145 = v481;
          if ((v174 & 1) == 0)
          {
LABEL_58:
            v145[(v169 >> 6) + 8] |= 1 << v169;
            v188 = v169;
            v189 = OpaqueTypeConformance2;
            v190 = v475;
            v152(v145[6] + v169 * v110, OpaqueTypeConformance2, v475);
            v191 = (v145[7] + 16 * v188);
            v192 = v464;
            *v191 = 0xD000000000000022;
            v191[1] = v192;
            v193 = *v467;
            (*v467)(v189, v190);
            v100 = v472;
            v193(v472, v190);
            v194 = v145[2];
            v108 = __OFADD__(v194, 1);
            v183 = v194 + 1;
            if (v108)
            {
              goto LABEL_108;
            }

            goto LABEL_59;
          }
        }

        v184 = (v145[7] + 16 * v169);
        v185 = v464;
        *v184 = 0xD000000000000022;
        v184[1] = v185;

        v148 = *v467;
        v149 = OpaqueTypeConformance2;
        goto LABEL_34;
      }

      v156 = v468;
      v152(v468, v100, v153);
      v157 = v145;
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v481 = v157;
      v159 = sub_23046A018(v156);
      v161 = v157[2];
      v162 = (v160 & 1) == 0;
      v108 = __OFADD__(v161, v162);
      v163 = v161 + v162;
      if (v108)
      {
        goto LABEL_103;
      }

      v164 = v160;
      if (v157[3] >= v163)
      {
        if ((v158 & 1) == 0)
        {
          v186 = v159;
          sub_230471D40();
          v159 = v186;
          v145 = v481;
          if ((v164 & 1) == 0)
          {
LABEL_49:
            v145[(v159 >> 6) + 8] |= 1 << v159;
            v176 = v159;
            v177 = v145[6] + v159 * v110;
            v178 = v468;
            v179 = v475;
            v152(v177, v468, v475);
            v180 = (v145[7] + 16 * v176);
            *v180 = 0xD00000000000001FLL;
            v180[1] = v463;
            v181 = *v467;
            (*v467)(v178, v179);
            v100 = v472;
            v181(v472, v179);
            v182 = v145[2];
            v108 = __OFADD__(v182, 1);
            v183 = v182 + 1;
            if (v108)
            {
              goto LABEL_107;
            }

LABEL_59:
            v145[2] = v183;
            goto LABEL_35;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_23046F728(v163, v158);
        v159 = sub_23046A018(v468);
        if ((v164 & 1) != (v165 & 1))
        {
          goto LABEL_111;
        }
      }

      v145 = v481;
      if ((v164 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_33:
      v147 = (v145[7] + 16 * v159);
      *v147 = 0xD00000000000001FLL;
      v147[1] = v463;

      v148 = *v467;
      v149 = v468;
LABEL_34:
      v150 = v475;
      v148(v149, v475);
      v100 = v472;
      v148(v472, v150);
LABEL_35:
      v144 = v466;
      ++v146;
    }

    while (v474 != v146);
  }

  v468 = v145;

  v196 = v411;
  v195 = v412;
  sub_23048BD04(v412);
  if (v196)
  {
    v197 = *MEMORY[0x277CC91D8];
    v474 = v196;
    v471 = 0;
    v198 = v444;
    v199 = v454;
    v201 = v451;
    v200 = v452;
    v202 = v442;
LABEL_73:
    v239 = NSTemporaryDirectory();
    sub_2304A5D24();

    (*(v199 + 56))(v404, 1, 1, v198);
    (*(v200 + 104))(v443, v197, v202);
    sub_2304A3FA4();
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v240 = sub_2304A5B74();
    __swift_project_value_buffer(v240, qword_28149AFF0);
    v222 = *(v454 + 16);
    v464 = ((v454 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v241 = v403;
    v222(v403, v201, v198);
    v242 = v474;
    v243 = v474;
    v244 = sub_2304A5B54();
    v245 = sub_2304A5E74();

    v209 = v198;
    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v472 = swift_slowAlloc();
      v481 = swift_slowAlloc();
      v462 = v222;
      v247 = v481;
      *v246 = 136446466;
      sub_230469BF8(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v248 = sub_2304A62D4();
      v249 = v242;
      v251 = v250;
      (*(v454 + 8))(v241, v209);
      v252 = sub_23046A5C8(v248, v251, &v481);

      *(v246 + 4) = v252;
      *(v246 + 12) = 2114;
      v253 = v249;
      v254 = _swift_stdlib_bridgeErrorToNSError();
      *(v246 + 14) = v254;
      v255 = v472;
      *v472 = v254;
      _os_log_impl(&dword_230430000, v244, v245, "Failed to create group container tmp directory; falling back to %{public}s: %{public}@", v246, 0x16u);
      sub_230464970(v255, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v255, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v247);
      v256 = v247;
      v222 = v462;
      MEMORY[0x23191A000](v256, -1, -1);
      MEMORY[0x23191A000](v246, -1, -1);
    }

    else
    {

      (*(v454 + 8))(v241, v198);
    }

    goto LABEL_78;
  }

  v471 = 0;
  v481 = 7368052;
  v482 = 0xE300000000000000;
  v203 = v452;
  v204 = *(v452 + 104);
  v205 = v442;
  v206 = v443;
  LODWORD(v470) = *MEMORY[0x277CC91D8];
  v204(v443);
  sub_2304645C4();
  v207 = v402;
  sub_2304A3FB4();
  (*(v203 + 8))(v206, v205);
  v208 = (v454 + 8);
  v209 = v444;
  v472 = *(v454 + 8);
  (v472)(v195, v444);
  v210 = objc_opt_self();
  v211 = [v210 defaultManager];
  sub_2304A3F84();
  v212 = sub_2304A5D14();

  v213 = [v211 fileExistsAtPath_];

  v201 = v451;
  if (v213)
  {
    v214 = [v210 defaultManager];
    v215 = sub_2304A3F54();
    v481 = 0;
    v216 = [v214 removeItemAtURL:v215 error:&v481];

    if (!v216)
    {
      v237 = v481;
      v238 = sub_2304A3F24();

      v474 = v238;
      swift_willThrow();
      (v472)(v207, v209);
      v471 = 0;
      v202 = v442;
      v201 = v451;
      v200 = v452;
      goto LABEL_72;
    }

    v217 = v481;
    v201 = v451;
  }

  v218 = [v210 defaultManager];
  v219 = sub_2304A3F54();
  v481 = 0;
  v220 = [v218 createDirectoryAtURL:v219 withIntermediateDirectories:1 attributes:0 error:&v481];

  v221 = v481;
  if (!v220)
  {
    v235 = v481;
    v236 = sub_2304A3F24();

    v474 = v236;
    swift_willThrow();
    (v472)(v207, v209);
    v471 = 0;
    v202 = v442;
    v200 = v452;
LABEL_72:
    v198 = v209;
    v197 = v470;
    v199 = v454;
    goto LABEL_73;
  }

  v474 = v208;
  v222 = *(v454 + 16);
  v464 = ((v454 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  v222(v201, v207, v209);
  v223 = qword_281499E28;
  v224 = v221;
  if (v223 != -1)
  {
    swift_once();
  }

  v225 = sub_2304A5B74();
  __swift_project_value_buffer(v225, qword_28149AFF0);
  v226 = v400;
  v222(v400, v201, v209);
  v227 = sub_2304A5B54();
  v228 = sub_2304A5E94();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v470 = swift_slowAlloc();
    v481 = v470;
    *v229 = 136446210;
    sub_230469BF8(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v230 = sub_2304A62D4();
    v232 = v231;
    (v472)(v226, v209);
    v233 = sub_23046A5C8(v230, v232, &v481);

    *(v229 + 4) = v233;
    _os_log_impl(&dword_230430000, v227, v228, "Cleared group container tmp directory at %{public}s", v229, 0xCu);
    v234 = v470;
    __swift_destroy_boxed_opaque_existential_0Tm(v470);
    MEMORY[0x23191A000](v234, -1, -1);
    MEMORY[0x23191A000](v229, -1, -1);

    (v472)(v207, v209);
  }

  else
  {

    v390 = v472;
    (v472)(v226, v209);
    v390(v207, v209);
  }

LABEL_78:
  v257 = v455;
  v472 = *(v456 + 16);
  (v472)(v446, v457, v455);
  v462 = v222;
  v222(v432, v451, v209);
  v484 = MEMORY[0x277D46380];
  v483 = v439;
  v258 = v445;
  v481 = v445;

  v259 = v468;

  sub_2304A47D4();
  v474 = sub_2304A4634();
  sub_230464834(v504, &v481);
  v470 = sub_2304A4734();
  swift_allocObject();
  v467 = sub_2304A4724();
  v260 = v473;
  v261 = v413;
  v262 = v475;
  (*(v473 + 104))(v413, *MEMORY[0x277D46488], v475);
  if (*(v259 + 16))
  {
    v263 = sub_23046A018(v261);
    if (v264)
    {
      v265 = (*(v259 + 56) + 16 * v263);
      v266 = v265[1];
      v412 = *v265;
      v267 = *(v260 + 8);

      v267(v261, v475);
      goto LABEL_84;
    }

    (*(v260 + 8))(v261, v475);
  }

  else
  {
    (*(v260 + 8))(v261, v262);
  }

  v412 = 0;
  v266 = 0;
LABEL_84:
  v503 = 0;
  memset(v502, 0, sizeof(v502));
  sub_230464834(v504, &v481);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54380, &qword_2304A7680);
  swift_allocObject();
  v269 = sub_2304A4604();
  v501[3] = v268;
  v501[4] = sub_230474FF4(&unk_281499FE8, &unk_27DB54380, &qword_2304A7680, MEMORY[0x277D463E8]);
  v501[0] = v269;
  v270 = qword_281499E38;

  v271 = v414;
  if (v270 != -1)
  {
    swift_once();
  }

  v272 = sub_2304A5B74();
  v273 = __swift_project_value_buffer(v272, qword_28149B008);
  (v472)(v271, v457, v257);
  v274 = sub_2304A5B54();
  v275 = sub_2304A5E94();
  v276 = os_log_type_enabled(v274, v275);
  v466 = v266;
  v413 = v273;
  if (v276)
  {
    v277 = swift_slowAlloc();
    v278 = swift_slowAlloc();
    v481 = v278;
    *v277 = 136446210;
    sub_230469BF8(qword_281499FF8, MEMORY[0x277D46338], MEMORY[0x277D46340]);
    v279 = sub_2304A62D4();
    v281 = v280;
    (*(v456 + 8))(v271, v455);
    v282 = sub_23046A5C8(v279, v281, &v481);

    *(v277 + 4) = v282;
    _os_log_impl(&dword_230430000, v274, v275, "Creating zone advertisers for device type %{public}s", v277, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v278);
    v257 = v455;
    MEMORY[0x23191A000](v278, -1, -1);
    MEMORY[0x23191A000](v277, -1, -1);
  }

  else
  {

    (*(v456 + 8))(v271, v257);
  }

  v283 = v471;
  v284 = sub_2304A4914();
  MEMORY[0x28223BE20](v284);
  v397 = v504;
  v398 = v457;
  v285 = sub_23046501C(MEMORY[0x277D84F90], sub_230474040, v396, v284);

  v286 = *(v285 + 16);
  v458 = v283;
  if (v286 == 1)
  {
    sub_230464834(v285 + 32, v500);
  }

  else
  {
    v287 = sub_2304A4714();
    swift_allocObject();
    v288 = sub_2304A4704();
    v500[3] = v287;
    v500[4] = MEMORY[0x277D46440];

    v500[0] = v288;
  }

  v289 = v470;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_unknownObjectRetain();
  sub_2304A40E4();
  sub_2304A40D4();
  v290 = sub_2304A48B4();
  swift_allocObject();
  v291 = sub_2304A48A4();
  v484 = MEMORY[0x277D46378];
  v483 = v439;
  v481 = v258;
  v292 = v435;
  v478 = v435;
  v479 = MEMORY[0x277D46478];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v477);
  (*(v434 + 16))(boxed_opaque_existential_1, v448, v292);
  v294 = v437;
  v498 = v437;
  v499 = MEMORY[0x277D46468];
  v295 = __swift_allocate_boxed_opaque_existential_1(v497);
  (*(v436 + 16))(v295, v449, v294);
  (v472)(v446, v457, v257);

  swift_unknownObjectRetain();
  v296 = v291;

  sub_2304A4504();
  sub_230464834(v500, v496);
  sub_230464834(v501, v495);
  v494 = MEMORY[0x277D46448];
  v493 = v289;
  v492[0] = v467;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54390, &qword_2304A7688);
  v297 = v456;
  v298 = *(v456 + 72);
  v299 = (*(v456 + 80) + 32) & ~*(v456 + 80);
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_2304A7660;
  v301 = *(v297 + 104);
  v301(v300 + v299, *MEMORY[0x277D46310], v257);
  v301(v300 + v299 + v298, *MEMORY[0x277D46328], v257);
  sub_23047405C(v502, v491);
  memset(v490, 0, sizeof(v490));
  v489[4] = MEMORY[0x277D46480];
  v489[3] = v290;
  v459 = v296;
  v489[0] = v296;
  v302 = sub_2304A40F4();
  v470 = v302;
  swift_allocObject();

  v396[0] = 0;
  v396[1] = 0;
  v397 = v490;
  v398 = v489;
  v303 = sub_2304A40A4();
  sub_23047405C(v502, v477);
  v484 = MEMORY[0x277D462C8];
  v485 = MEMORY[0x277D462B0];
  v483 = v302;
  v481 = v303;
  v475 = v303;
  sub_2304A45D4();
  swift_allocObject();
  swift_unknownObjectRetain();

  v463 = sub_2304A45B4();
  type metadata accessor for NotifydNotificationPoster();
  v304 = swift_allocObject();
  v461 = type metadata accessor for DebouncingNotificationPoster();
  v305 = swift_allocObject();
  v472 = sub_2304739F8(v304, v305);
  v306 = sub_2304A5474();

  v473 = sub_2304A5464();
  v307 = sub_2304A5904();

  v308 = sub_2304A58F4();
  v471 = v308;
  v309 = sub_2304A56A4();

  v310 = sub_2304A5694();
  v311 = type metadata accessor for AllowedClientVerifier();
  v312 = swift_allocObject();
  v313 = sub_23048A900();
  v314 = sub_230473E0C(v313);

  *(v312 + 16) = v314;
  v484 = MEMORY[0x277D462B8];
  v485 = MEMORY[0x277D462C0];
  v486 = MEMORY[0x277D462C8];
  v487 = MEMORY[0x277D462D0];
  v488 = MEMORY[0x277D462B0];
  v483 = v470;
  v481 = v475;
  v499 = MEMORY[0x277D46910];
  v440 = v306;
  v498 = v306;
  v497[0] = v473;
  v496[4] = MEMORY[0x277D46AB8];
  v496[3] = v307;
  v496[0] = v308;
  v495[4] = MEMORY[0x277D469E0];
  v495[3] = v309;
  v495[0] = v310;
  v494 = &protocol witness table for AllowedClientVerifier;
  v493 = v311;
  v492[0] = v312;
  v315 = v312;
  v491[4] = &off_28451C1E8;
  v491[3] = v461;
  v491[0] = v472;
  v316 = type metadata accessor for ReplicationServer();
  v317 = objc_allocWithZone(v316);
  v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled] = 0;
  v318 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v319 = swift_allocObject();
  *(v319 + 16) = 0;
  *&v317[v318] = v319;
  v320 = MEMORY[0x277D84FA0];
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_clients] = MEMORY[0x277D84FA0];
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices] = 0;
  v321 = MEMORY[0x277D84F98];
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources] = MEMORY[0x277D84F98];
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_subscriptions] = v320;
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs] = v320;
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages] = v321;
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener] = 0;
  sub_230474F80(&v481, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator]);
  v322 = &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService];
  v323 = OpaqueTypeConformance2;
  *v322 = v474;
  v322[1] = v323;
  sub_230464834(v497, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore]);
  sub_230464834(v496, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore]);
  sub_230464834(v495, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore]);
  sub_230464834(v492, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier]);
  sub_230464834(v491, &v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster]);
  v324 = v433;
  swift_unknownObjectRetain();

  v325 = v324;

  v465 = v310;

  v446 = v315;

  sub_2304A5C44();
  v477[0] = MEMORY[0x277D84F90];
  sub_2304A5FA4();
  v415(v424, v416, v441);
  OpaqueTypeConformance2 = v325;
  *&v317[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue] = sub_2304A5F04();
  v476.receiver = v317;
  v476.super_class = v316;
  v326 = objc_msgSendSuper2(&v476, sel_init);
  v327 = v425;
  sub_2304A5564();
  sub_2304A52E4();
  (*(v426 + 8))(v327, v427);
  sub_2304A5554();
  v328 = sub_2304A5D14();

  v329 = sub_2304A5D14();

  v330 = [objc_opt_self() configurationWithDomain:v328 service:v329];

  v331 = swift_allocObject();
  *(v331 + 16) = v326;
  v479 = sub_2304740CC;
  v480 = v331;
  v477[0] = MEMORY[0x277D85DD0];
  v477[1] = 1107296256;
  v477[2] = sub_2304318E8;
  v478 = &block_descriptor_0;
  v332 = _Block_copy(v477);
  v333 = objc_opt_self();
  v334 = v326;
  v335 = [v333 listenerWithConfiguration:v330 handler:v332];
  _Block_release(v332);

  v336 = *&v334[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener];
  *&v334[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener] = v335;
  v461 = v335;

  v477[0] = sub_2304A48E4();
  v490[0] = *&v334[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue];
  v337 = v490[0];
  v338 = sub_2304A5EC4();
  v339 = v428;
  (*(*(v338 - 8) + 56))(v428, 1, 1, v338);
  v340 = v337;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB543A8, &qword_2304A7698);
  sub_230474FF4(&unk_281499E00, &qword_27DB543A8, &qword_2304A7698, MEMORY[0x277CBCD90]);
  sub_2304740D4();
  v341 = v429;
  sub_2304A5BD4();
  sub_230464970(v339, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_230474FF4(&qword_281499E20, &unk_27DB54360, &qword_2304A7678, MEMORY[0x277CBCD60]);
  v342 = v431;
  sub_2304A5BE4();

  v343 = v341;
  v344 = OpaqueTypeConformance2;
  (*(v430 + 8))(v343, v342);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  swift_getObjectType();
  sub_230469BF8(&qword_28149A868, type metadata accessor for ReplicationServer, &unk_2304A7334);
  swift_unknownObjectRetain();
  sub_2304A4324();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v491);
  __swift_destroy_boxed_opaque_existential_0Tm(v492);
  __swift_destroy_boxed_opaque_existential_0Tm(v495);
  __swift_destroy_boxed_opaque_existential_0Tm(v496);
  __swift_destroy_boxed_opaque_existential_0Tm(v497);
  __swift_destroy_boxed_opaque_existential_0Tm(&v481);
  v345 = v475;
  if (v466)
  {

    v346 = v465;

    v347 = v472;

    v348 = sub_2304A5D14();
  }

  else
  {

    v346 = v465;

    v347 = v472;

    v348 = 0;
  }

  v349 = [objc_allocWithZone(MEMORY[0x277D18778]) initWithService_];

  if (!v349)
  {
    __break(1u);
  }

  v350 = objc_allocWithZone(type metadata accessor for ReplicatorControlServer());
  v351 = v344;
  v352 = v433;
  v353 = sub_230474144(v345, v347, v346, v349, v433, v350);

  v470 = v351;
  v354 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v355 = sub_230476D94();
  v484 = &off_28451C130;
  v483 = v354;
  v481 = v355;
  v356 = objc_allocWithZone(type metadata accessor for StateCaptureServer());
  v357 = __swift_mutable_project_boxed_opaque_existential_1(&v481, v483);
  MEMORY[0x28223BE20](v357);
  v359 = (&v399 - ((v358 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v360 + 16))(v359);
  v361 = *v359;

  v362 = sub_230472D48(v361, v352, v356);
  __swift_destroy_boxed_opaque_existential_0Tm(&v481);

  sub_23047323C(v363);
  sub_23047323C(v345);
  sub_23047323C(v345);
  sub_23047323C(v345);

  v364 = v334;
  OpaqueTypeConformance2 = v355;
  sub_230473360(v364);

  v100 = 0xD00000000000001FLL;
  v365 = v453;
  v453[8] = v447;
  v366 = v463;
  v365[2] = v345;
  v365[3] = v366;
  v365[4] = v364;
  v365[5] = v362;
  v365[6] = v353;

  v447 = v364;

  v450 = v362;
  v461 = v353;
  v367 = v406;
  v368 = v458;
  sub_23048BD04(v406);
  if (v368)
  {
    goto LABEL_115;
  }

  v481 = 0x7364726F636572;
  v482 = 0xE700000000000000;
  v369 = v452;
  v370 = *(v452 + 104);
  v371 = v442;
  v372 = v443;
  LODWORD(v466) = *MEMORY[0x277CC91D8];
  v468 = (v452 + 104);
  v460 = v370;
  v370(v443);
  v373 = sub_2304645C4();
  v374 = v407;
  v458 = v373;
  sub_2304A3FB4();
  v375 = *(v369 + 8);
  v452 = v369 + 8;
  v441 = v375;
  v375(v372, v371);
  v376 = *(v454 + 8);
  v377 = v444;
  v376(v367, v444);
  v378 = v432;
  v462(v432, v374, v377);
  v379 = v445;

  v380 = v473;

  v381 = v471;

  v382 = sub_230473480(v379, v380, v381, v378);
  v383 = v374;
  v384 = v376;
  v376(v383, v377);
  v453[7] = v382;
  v385 = v408;
  sub_23048BD04(v408);
  v481 = 0x7364726F636572;
  v482 = 0xE700000000000000;
  v386 = v442;
  v387 = v443;
  v460(v443, v466, v442);
  v388 = v401;
  sub_2304A3FB4();
  v441(v387, v386);
  v384(v385, v377);
  v484 = MEMORY[0x277D46910];
  v483 = v440;
  v481 = v473;

  sub_2304A5304();

  swift_unknownObjectRelease();

  v384(v388, v377);
  sub_230464970(v502, &unk_27DB54398, &qword_2304A7690);
  (*(v409 + 8))(v438, v410);
  v384(v451, v377);
  (*(v436 + 8))(v449, v437);
  (*(v434 + 8))(v448, v435);
  __swift_destroy_boxed_opaque_existential_0Tm(v500);
  __swift_destroy_boxed_opaque_existential_0Tm(v501);
  (*(v456 + 8))(v457, v455);
  __swift_destroy_boxed_opaque_existential_0Tm(v504);
  __swift_destroy_boxed_opaque_existential_0Tm(&v481);
  return v453;
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

id sub_230468CF0@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result deviceClass];

    v5 = sub_2304A4114();
    v6 = *(*(v5 - 8) + 104);
    if (v4 > 4)
    {
      v7 = MEMORY[0x277D46330];
    }

    else
    {
      v7 = qword_2788C0D40[v4];
    }

    v8 = *v7;

    return v6(a1, v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_230468DC0()
{
  v1 = v0;
  v32 = sub_2304A52F4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A4114();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v0 + 40) + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener);
  if (!v9)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v9 activate];
  v10 = *(v0 + 80);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230469604;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, v11);
  _Block_release(v11);
  sub_230469664();
  sub_230468CF0(v8);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = v12 == *MEMORY[0x277D46320] || v12 == *MEMORY[0x277D46328];
  v14 = v13;
  if (!v13)
  {
    (*(v6 + 8))(v8, v5);
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v15 = sub_2304A5B74();
  __swift_project_value_buffer(v15, qword_28149B008);
  v16 = sub_2304A5B54();
  v17 = sub_2304A5E94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    if (v14)
    {
      v20 = 0x64656C62616E65;
    }

    else
    {
      v20 = 0x64656C6261736964;
    }

    if (v14)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xE900000000000029;
    }

    v22 = sub_23046A5C8(v20, v21, aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_230430000, v16, v17, "Replicator is %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23191A000](v19, -1, -1);
    MEMORY[0x23191A000](v18, -1, -1);
  }

  if (v14)
  {
    sub_2304692B0();
    sub_2304A45C4();
    v23 = *(v1 + 32);
    v24 = 1;
    *(v23 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled) = 1;
    __swift_project_boxed_opaque_existential_5Tm((v23 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v23 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4274();
    sub_230435144();
  }

  else
  {
    v24 = 0;
    v23 = *(v1 + 32);
    *(v23 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled) = 0;
  }

  v25 = *(v23 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener);
  if (!v25)
  {
    goto LABEL_27;
  }

  [v25 activate];
  v26 = *(v1 + 48);
  *(v26 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled) = v24;
  v27 = *(v26 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener);
  if (v27)
  {
    [v27 activate];
    v28 = objc_opt_self();
    sub_2304A52D4();
    sub_2304A52E4();
    (*(v2 + 8))(v4, v32);
    v29 = sub_2304A5D14();

    v30 = [v28 activateManualDomain_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_2304692B0()
{
  sub_2304A5A94();
  v1 = sub_2304A5AC4();

  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 56);
    v4 = *&v3[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_230474EF8;
    *(v6 + 24) = v5;
    aBlock[4] = sub_230474F00;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_230478D34;
    aBlock[3] = &block_descriptor_20;
    v7 = _Block_copy(aBlock);
    v8 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      return sub_2304A5B34();
    }
  }

  return result;
}

uint64_t sub_2304695BC()
{
  sub_2304A5A94();
  sub_2304A5B14();
}

uint64_t sub_230469604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_230469664()
{
  v1 = v0;
  v19 = sub_2304A5C04();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5C14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2304A5B84();
  signal(15, v13);
  sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  (*(v10 + 104))(v12, *MEMORY[0x277D851C8], v9);
  v14 = sub_2304A5F14();
  (*(v10 + 8))(v12, v9);
  sub_230474F08(0, &unk_281499D70, 0x277D85CA0);
  v15 = v14;
  v16 = sub_2304A5F24();

  *(v1 + 72) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);
  sub_2304A5C34();
  sub_230469A30();
  sub_2304A5F34();
  _Block_release(v17);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v4, v19);
  (*(v6 + 8))(v8, v5);
  if (*(v1 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2304A5F44();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2304699EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_230469A30()
{
  sub_2304A5C04();
  sub_230469BF8(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_230474FF4(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788, MEMORY[0x277D83970]);
  return sub_2304A5FA4();
}

id *Daemon.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230469BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_230469C40(uint64_t a1, uint64_t a2)
{
  sub_2304A6394();
  sub_2304A5D54();
  v4 = sub_2304A63B4();

  return sub_23046A214(a1, a2, v4);
}

unint64_t sub_230469CB8(uint64_t a1)
{
  sub_2304A4984();
  v2 = MEMORY[0x277D464B8];
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  v3 = sub_2304A5CF4();
  return sub_23046A4D8(a1, v3, MEMORY[0x277D464B8], &unk_281499FC0, v2, MEMORY[0x277D464C8]);
}

unint64_t sub_230469D9C(uint64_t a1)
{
  sub_2304A4FF4();
  v2 = MEMORY[0x277D46790];
  sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v3 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v3, MEMORY[0x277D46790], &qword_281499F80, v2, MEMORY[0x277D467B8]);
}

unint64_t sub_230469E70(uint64_t a1)
{
  sub_2304A4084();
  v2 = MEMORY[0x277CC95F0];
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v3, MEMORY[0x277CC95F0], &unk_27DB54450, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_230469F44(uint64_t a1)
{
  sub_2304A41D4();
  v2 = MEMORY[0x277D46350];
  sub_230469BF8(&qword_27DB54480, MEMORY[0x277D46350], MEMORY[0x277D46358]);
  v3 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v3, MEMORY[0x277D46350], &qword_27DB54488, v2, MEMORY[0x277D46360]);
}

unint64_t sub_23046A018(uint64_t a1)
{
  sub_2304A4924();
  v2 = MEMORY[0x277D46498];
  sub_230469BF8(&qword_281499FE0, MEMORY[0x277D46498], MEMORY[0x277D464A0]);
  v3 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v3, MEMORY[0x277D46498], &qword_281499FD8, v2, MEMORY[0x277D464A8]);
}

unint64_t sub_23046A0EC(uint64_t a1)
{
  v2 = sub_2304A6384();

  return sub_23046A46C(a1, v2);
}

unint64_t sub_23046A130(uint64_t a1)
{
  sub_2304A4A04();
  v2 = MEMORY[0x277D464E8];
  sub_230469BF8(&qword_281499FB8, MEMORY[0x277D464E8], MEMORY[0x277D464F0]);
  v3 = sub_2304A5CF4();
  return sub_23046A4D8(a1, v3, MEMORY[0x277D464E8], &qword_281499FB0, v2, MEMORY[0x277D464F8]);
}

unint64_t sub_23046A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2304A62F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23046A2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_230469BF8(v23, v24, v25);
      v19 = sub_2304A5D04();
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

unint64_t sub_23046A46C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23046A4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = -1 << *(v6 + 32);
  v8 = a2 & ~v7;
  if ((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    a3(0);
    sub_230469BF8(a4, a5, a6);
    do
    {
      if (sub_2304A5D04())
      {
        break;
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_23046A5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23046A694(v11, 0, 0, 1, a1, a2);
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
    sub_230474E9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23046A694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23046A7A0(a5, a6);
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
    result = sub_2304A6124();
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

void *sub_23046A7A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23046A7EC(a1, a2);
  sub_23046A91C(&unk_28451BAD0);
  return v3;
}

void *sub_23046A7EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_23046AA08(v5, 0);
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

  result = sub_2304A6124();
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
        v10 = sub_2304A5D84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23046AA08(v10, 0);
        result = sub_2304A60E4();
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

uint64_t sub_23046A91C(uint64_t result)
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

  result = sub_23046AA7C(result, v11, 1, v3);
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

void *sub_23046AA08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E0, &qword_2304A7790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23046AA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E0, &qword_2304A7790);
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

uint64_t sub_23046AB70(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2304A6054();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_23045A440(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_23046BFE4(v20 + 1, &qword_27DB54500, &qword_2304A7568);
    }

    v18 = v8;
    sub_230464EC4();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = sub_2304A5F64();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_230432278(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27DB54500, &qword_2304A7568, type metadata accessor for Client);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2304A5F74();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_23046ADBC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2304A6394();
  sub_2304A5D54();
  v8 = sub_2304A63B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2304A62F4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23046C560(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23046AF0C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2304A6054();

    if (v8)
    {

      sub_2304A4984();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_23045A47C(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_23046B9E0(v17 + 1);
    }

    sub_23045A8DC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_2304A4984();
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  v10 = sub_2304A5CF4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_23046C6E0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_230469BF8(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
  while ((sub_2304A5D04() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_23046B1AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2304A5294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
  v33 = a2;
  v11 = sub_2304A5CF4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_230469BF8(&unk_281499F50, MEMORY[0x277D46850], MEMORY[0x277D46860]);
      v21 = sub_2304A5D04();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23046C8C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23046B48C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2304A4084();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_2304A5CF4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_230469BF8(&unk_27DB54450, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2304A5D04();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23046CB90(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23046B780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  result = sub_2304A60B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23046B9E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  result = sub_2304A60B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      result = sub_2304A5CF4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23046BC74(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2304A5294();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  result = sub_2304A60B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
      result = sub_2304A5CF4();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23046BFE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2304A60B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2304A5F64();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_23046C204(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2304A4084();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  result = sub_2304A60B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2304A5CF4();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23046C560(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23046B780(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23046CE6C();
      goto LABEL_16;
    }

    sub_23046D4CC(v8 + 1);
  }

  v10 = *v4;
  sub_2304A6394();
  sub_2304A5D54();
  result = sub_2304A63B4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2304A62F4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046C6E0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23046B9E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23046CFC8();
      goto LABEL_12;
    }

    sub_23046D704(v6 + 1);
  }

  v8 = *v3;
  sub_2304A4984();
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  result = sub_2304A5CF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_230469BF8(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
    do
    {
      result = sub_2304A5D04();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046C8C8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2304A5294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23046BC74(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23046D294(MEMORY[0x277D46850], &qword_27DB544A8, &unk_2304A7BB0);
      goto LABEL_12;
    }

    sub_23046D97C(v10 + 1);
  }

  v12 = *v3;
  sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
  v13 = sub_2304A5CF4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_230469BF8(&unk_281499F50, MEMORY[0x277D46850], MEMORY[0x277D46860]);
      v21 = sub_2304A5D04();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046CB90(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2304A4084();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23046C204(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23046D294(MEMORY[0x277CC95F0], &unk_27DB545E0, &unk_2304A7B60);
      goto LABEL_12;
    }

    sub_23046DEA4(v10 + 1);
  }

  v12 = *v3;
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_2304A5CF4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_230469BF8(&unk_27DB54450, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2304A5D04();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

void *sub_23046CE6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  v2 = *v0;
  v3 = sub_2304A60A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_23046CFC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  v2 = *v0;
  v3 = sub_2304A60A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_23046D154(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2304A60A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_23046D294(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2304A60A4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_23046D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  result = sub_2304A60B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2304A6394();

      sub_2304A5D54();
      result = sub_2304A63B4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23046D704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  result = sub_2304A60B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);

      result = sub_2304A5CF4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23046D97C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2304A5294();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  v7 = sub_2304A60B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850], MEMORY[0x277D46858]);
      result = sub_2304A5CF4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23046DC98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2304A60B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2304A5F64();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_23046DEA4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2304A4084();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  v7 = sub_2304A60B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2304A5CF4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23046E1E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54420, &qword_2304A7728);
  v34 = v4;
  result = sub_2304A6284();
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

      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_23046E490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  v31 = v4;
  result = sub_2304A6284();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
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
      v32 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      result = sub_2304A5CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
      v12 = v32;
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
        v32 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23046E774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A0, &qword_2304A7770);
  v31 = v4;
  result = sub_2304A6284();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
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
      v32 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      result = sub_2304A5CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
      v12 = v32;
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
        v32 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23046EA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2304A4FF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54498, &qword_2304A7768);
  v39 = v4;
  result = sub_2304A6284();
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

      sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      result = sub_2304A5CF4();
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

uint64_t sub_23046EE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2304A4FF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54490, &qword_2304A7760);
  v45 = v4;
  result = sub_2304A6284();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      result = sub_2304A5CF4();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_23046F280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2304A4F74();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4084();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B8, &qword_2304A7778);
  v47 = v4;
  result = sub_2304A6284();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2304A5CF4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23046F728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2304A4924();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54508, &qword_2304A77A8);
  v44 = v4;
  result = sub_2304A6284();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_230469BF8(&qword_281499FE0, MEMORY[0x277D46498], MEMORY[0x277D464A0]);
      result = sub_2304A5CF4();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23046FB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54470, &qword_2304A7758);
  result = sub_2304A6284();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_2304A6384();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23046FD80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54468, &qword_2304A7750);
  v34 = v4;
  result = sub_2304A6284();
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

      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_230470050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_2304A6284();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_2304703D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_2304A5054();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544C0, &qword_2304A7780);
  v37 = v4;
  result = sub_2304A6284();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_2304A6384();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
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

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_230470720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
  v33 = v4;
  result = sub_2304A6284();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_230462958(v24, v34);
      }

      else
      {
        sub_230474E9C(v24, v34);
      }

      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_230462958(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2304709D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_2304A4A64();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54430, &qword_2304A7738);
  v37 = v4;
  result = sub_2304A6284();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v33 = v2;
    v34 = (v5 + 16);
    v35 = v7;
    v36 = v5;
    v38 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v42 = v23;
      v39 = *(v36 + 72);
      v24 = v22 + v39 * v21;
      if (v37)
      {
        (*v38)(v40, v24, v41);
      }

      else
      {
        (*v34)(v40, v24, v41);
      }

      sub_2304A4A04();
      sub_230469BF8(&qword_281499FB8, MEMORY[0x277D464E8], MEMORY[0x277D464F0]);
      result = sub_2304A5CF4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = (*v38)(*(v9 + 56) + v39 * v17, v40, v41);
      ++*(v9 + 16);
      v7 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v11, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_230470D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54428, &qword_2304A7730);
  v33 = v4;
  result = sub_2304A6284();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_230474E48(v34, *(&v34 + 1));
      }

      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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
        v12 = (v20 - 1) & v20;
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

void *sub_230471078()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54420, &qword_2304A7728);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2304711E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_23047134C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A0, &qword_2304A7770);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_2304714B0()
{
  v1 = v0;
  v31 = sub_2304A4FF4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54498, &qword_2304A7768);
  v3 = *v0;
  v4 = sub_2304A6274();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_230471724()
{
  v1 = v0;
  v34 = sub_2304A4FF4();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54490, &qword_2304A7760);
  v5 = *v0;
  v6 = sub_2304A6274();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
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

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

char *sub_2304719EC()
{
  v1 = v0;
  v41 = sub_2304A4F74();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2304A4084();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B8, &qword_2304A7778);
  v4 = *v0;
  v5 = sub_2304A6274();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_230471D40()
{
  v1 = v0;
  v35 = sub_2304A4924();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54508, &qword_2304A77A8);
  v3 = *v0;
  v4 = sub_2304A6274();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_230471FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54470, &qword_2304A7758);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_230472128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54468, &qword_2304A7750);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2304722C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_2304A6274();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_230472548()
{
  v1 = v0;
  v29 = sub_2304A5054();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544C0, &qword_2304A7780);
  v3 = *v0;
  v4 = sub_2304A6274();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2304727B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
  v2 = *v0;
  v3 = sub_2304A6274();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_230474E9C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_230462958(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_230472954()
{
  v1 = v0;
  v29 = sub_2304A4A64();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54430, &qword_2304A7738);
  v3 = *v0;
  v4 = sub_2304A6274();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v25 = v3 + 64;
    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v26 = v31 + 32;
    for (i = v31 + 16; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_230472BC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54428, &qword_2304A7730);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_230474E48(v22, *(&v22 + 1));
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

char *sub_230472D48(uint64_t a1, void *a2, char *a3)
{
  v27 = a2;
  v5 = sub_2304A52F4();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2304A5ED4();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2304A5C64();
  MEMORY[0x28223BE20](v11 - 8);
  v33[3] = type metadata accessor for StateCaptureService();
  v33[4] = &off_28451C130;
  v33[0] = a1;
  *&a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener] = 0;
  v12 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v25[1] = "ator.xpc.MigrationClient";
  v25[2] = v12;
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  sub_2304A5FA4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v26);
  v13 = v27;
  *&a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_requestProcessingQueue] = sub_2304A5F04();
  sub_230464834(v33, &a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager]);
  v14 = type metadata accessor for StateCaptureServer();
  v32.receiver = a3;
  v32.super_class = v14;
  v15 = objc_msgSendSuper2(&v32, sel_init);
  v16 = v28;
  sub_2304A56C4();
  sub_2304A52E4();
  (*(v29 + 8))(v16, v30);
  sub_2304A56B4();
  v17 = sub_2304A5D14();

  v18 = sub_2304A5D14();

  v19 = [objc_opt_self() configurationWithDomain:v17 service:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  aBlock[4] = sub_230474F78;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304318E8;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);
  v22 = [objc_opt_self() listenerWithConfiguration:v19 handler:v21];

  _Block_release(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);

  v23 = *&v15[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener];
  *&v15[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener] = v22;

  return v15;
}

uint64_t sub_23047323C(uint64_t a1)
{
  v8[3] = sub_2304A40F4();
  v8[4] = &off_28451BF18;
  v8[0] = a1;
  v2 = qword_28149A870;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_28149A878;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_230475088(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_230473360(void *a1)
{
  v8[3] = type metadata accessor for ReplicationServer();
  v8[4] = &off_28451BB78;
  v8[0] = a1;
  v2 = qword_28149A870;
  v3 = a1;
  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_28149A878;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_230431F78(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

char *sub_230473480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = sub_2304A5ED4();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2304A5C64();
  MEMORY[0x28223BE20](v9 - 8);
  v36[3] = sub_2304A42F4();
  v36[4] = MEMORY[0x277D46378];
  v36[0] = a1;
  v35[3] = sub_2304A5474();
  v35[4] = MEMORY[0x277D46910];
  v35[0] = a2;
  v34[3] = sub_2304A5904();
  v34[4] = MEMORY[0x277D46AB8];
  v34[0] = a3;
  v27 = type metadata accessor for MigrationClient(0);
  v10 = objc_allocWithZone(v27);
  v11 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection;
  *&v10[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection] = 0;
  v26 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue;
  v25[1] = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  sub_2304A5FA4();
  (*(v29 + 104))(v28, *MEMORY[0x277D85268], v30);
  *&v10[v26] = sub_2304A5F04();
  sub_230464834(v36, &v10[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore]);
  sub_230464834(v35, &v10[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordStore]);
  sub_230464834(v34, &v10[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_clientDescriptorStore]);
  v12 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_url;
  v13 = sub_2304A3FC4();
  v14 = *(v13 - 8);
  v15 = v31;
  (*(v14 + 16))(&v10[v12], v31, v13);
  v16 = *&v10[v11];
  *&v10[v11] = 0;

  v33.receiver = v10;
  v33.super_class = v27;
  v17 = objc_msgSendSuper2(&v33, sel_init);
  v18 = *&v17[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_230474F50;
  *(v20 + 24) = v19;
  aBlock[4] = sub_23047506C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230478D34;
  aBlock[3] = &block_descriptor_33;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  v23 = v18;

  dispatch_sync(v23, v21);
  _Block_release(v21);

  (*(v14 + 8))(v15, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_2304739F8(uint64_t a1, uint64_t a2)
{
  v14 = sub_2304A5ED4();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2304A5C64();
  MEMORY[0x28223BE20](v8 - 8);
  v17 = type metadata accessor for NotifydNotificationPoster();
  v18 = &off_28451C1D8;
  *&v16 = a1;
  v9 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v13[1] = "ateCaptureServiceServer";
  v13[2] = v9;
  sub_2304A5C44();
  v15 = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  sub_2304A5FA4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v14);
  v10 = sub_2304A5F04();
  v11 = MEMORY[0x277D84F98];
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  sub_230464EC8(&v16, a2 + 32);
  return a2;
}

uint64_t sub_230473CA0(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_2304A6044();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_2304A4984();
  v5 = sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
  result = MEMORY[0x231919370](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231919680](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23046AF0C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_2304A6044();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_230473E0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231919370](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23046ADBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_230473EA4(uint64_t a1)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x231919370](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_23046B48C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_23047405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54398, &qword_2304A7690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2304740D4()
{
  result = qword_281499D88;
  if (!qword_281499D88)
  {
    sub_230474F08(255, &qword_281499D80, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499D88);
  }

  return result;
}

char *sub_230474144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _BYTE *a6)
{
  v56 = a5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E8, &qword_2304A7798);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54358, &qword_2304A7670);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v50 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54360, &qword_2304A7678);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - v14;
  v55 = sub_2304A52F4();
  v54 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2304A5ED4();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v17);
  v18 = sub_2304A5C64();
  MEMORY[0x28223BE20](v18 - 8);
  v57 = sub_2304A40F4();
  v72[4] = MEMORY[0x277D462B8];
  v72[5] = MEMORY[0x277D462C8];
  v72[6] = MEMORY[0x277D462D0];
  v72[7] = MEMORY[0x277D462B0];
  v72[8] = MEMORY[0x277D462D8];
  v72[3] = v57;
  v72[0] = a1;
  v71[3] = type metadata accessor for DebouncingNotificationPoster();
  v71[4] = &off_28451C1E8;
  v71[0] = a2;
  v58 = sub_2304A56A4();
  v70[3] = v58;
  v70[4] = MEMORY[0x277D469E0];
  v70[0] = a3;
  a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled] = 0;
  v19 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&a6[v19] = v20;
  v21 = MEMORY[0x277D84FA0];
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_clients] = MEMORY[0x277D84FA0];
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices] = 0;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_subscriptions] = v21;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener] = 0;
  sub_230474F80(v72, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator]);
  sub_230464834(v71, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_notificationPoster]);
  sub_230464834(v70, &a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_clientSettingsStore]);
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_idsService] = a4;
  v66 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v22 = a4;
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980, MEMORY[0x277D83970]);
  sub_2304A5FA4();
  (*(v51 + 104))(v50, *MEMORY[0x277D85268], v52);
  v23 = v56;
  *&a6[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue] = sub_2304A5F04();
  v24 = type metadata accessor for ReplicatorControlServer();
  v69.receiver = a6;
  v69.super_class = v24;
  v25 = objc_msgSendSuper2(&v69, sel_init);
  v26 = v53;
  sub_2304A4C14();
  sub_2304A52E4();
  (*(v54 + 8))(v26, v55);
  sub_2304A4C04();
  v27 = sub_2304A5D14();

  v28 = sub_2304A5D14();

  v29 = [objc_opt_self() configurationWithDomain:v27 service:v28];
  v56 = v29;

  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  aBlock[4] = sub_230431950;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304318E8;
  aBlock[3] = &block_descriptor_47;
  v31 = _Block_copy(aBlock);
  v32 = objc_opt_self();
  v33 = v25;
  v34 = [v32 listenerWithConfiguration:v29 handler:v31];
  _Block_release(v31);

  v35 = *&v33[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener];
  *&v33[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener] = v34;
  v55 = v34;

  aBlock[0] = sub_2304A48E4();
  v57 = OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue;
  v67 = *&v33[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue];
  v36 = v67;
  v37 = sub_2304A5EC4();
  v38 = *(v37 - 8);
  v53 = *(v38 + 56);
  v54 = v38 + 56;
  v39 = v59;
  (v53)(v59, 1, 1, v37);
  v40 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB543A8, &qword_2304A7698);
  v41 = MEMORY[0x277CBCD90];
  sub_230474FF4(&unk_281499E00, &qword_27DB543A8, &qword_2304A7698, MEMORY[0x277CBCD90]);
  v52 = sub_2304740D4();
  v42 = v60;
  sub_2304A5BD4();
  sub_230464970(v39, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = MEMORY[0x277CBCD60];
  sub_230474FF4(&qword_281499E20, &unk_27DB54360, &qword_2304A7678, MEMORY[0x277CBCD60]);
  v44 = v61;
  sub_2304A5BE4();

  (*(v62 + 8))(v42, v44);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  aBlock[0] = sub_2304A5414();
  v67 = *&v33[v57];
  v45 = v67;
  (v53)(v39, 1, 1, v37);
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544F0, &qword_2304A77A0);
  sub_230474FF4(&qword_281499DF8, &unk_27DB544F0, &qword_2304A77A0, v41);
  v47 = v63;
  sub_2304A5BD4();
  sub_230464970(v39, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_230474FF4(&unk_281499E10, &qword_27DB544E8, &qword_2304A7798, v43);
  v48 = v64;
  sub_2304A5BE4();

  (*(v65 + 8))(v47, v48);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v71);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  return v33;
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

uint64_t sub_230474E48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_230474E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230474F08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_230474F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230474FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2304750A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v7 = sub_2304A4114();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A4924();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D46488])
  {
    (*(v8 + 16))(v10, a4, v7);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D46320])
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v16 = sub_2304A5B74();
      __swift_project_value_buffer(v16, qword_28149B008);
      v17 = sub_2304A5B54();
      v18 = sub_2304A5E94();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_230430000, v17, v18, "Adding StatusKit advertiser", v19, 2u);
        MEMORY[0x23191A000](v19, -1, -1);
      }

      sub_230464834(a3, &v46);
      v20 = sub_2304A47C4();
      swift_allocObject();
      v21 = sub_2304A47B4();
      v22 = v49;
      v23 = *v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_230459D08(0, v23[2] + 1, 1, v23);
      }

      v25 = v23[2];
      v24 = v23[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v23 = sub_230459D08((v24 > 1), v25 + 1, 1, v23);
      }

      v27 = MEMORY[0x277D46470];
LABEL_22:
      v47 = v20;
      v48 = v27;
      *&v46 = v21;
      v23[2] = v26;
      result = sub_230433DAC(&v46, &v23[5 * v25 + 4]);
      *v22 = v23;
      return result;
    }

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v35 = sub_2304A5B74();
    __swift_project_value_buffer(v35, qword_28149B008);
    v36 = sub_2304A5B54();
    v37 = sub_2304A5E94();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_230430000, v36, v37, "Adding StatusKit advertiser", v38, 2u);
      MEMORY[0x23191A000](v38, -1, -1);
    }

    sub_230464834(a3, &v46);
    v39 = sub_2304A47C4();
    swift_allocObject();
    v40 = sub_2304A47B4();
    v41 = *v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_230459D08(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = sub_230459D08((v42 > 1), v43 + 1, 1, v41);
    }

    v47 = v39;
    v48 = MEMORY[0x277D46470];
    *&v46 = v40;
    v41[2] = v43 + 1;
    sub_230433DAC(&v46, &v41[5 * v43 + 4]);
    *v49 = v41;
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (v15 == *MEMORY[0x277D46490])
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v28 = sub_2304A5B74();
      __swift_project_value_buffer(v28, qword_28149B008);
      v29 = sub_2304A5B54();
      v30 = sub_2304A5E94();
      v31 = os_log_type_enabled(v29, v30);
      v22 = v49;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_230430000, v29, v30, "Adding terminus advertiser", v32, 2u);
        MEMORY[0x23191A000](v32, -1, -1);
      }

      sub_230464834(a3, &v46);
      v20 = sub_2304A45A4();
      swift_allocObject();
      v21 = sub_2304A4594();
      v23 = *v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_230459D08(0, v23[2] + 1, 1, v23);
      }

      v25 = v23[2];
      v33 = v23[3];
      v26 = v25 + 1;
      if (v25 >= v33 >> 1)
      {
        v23 = sub_230459D08((v33 > 1), v25 + 1, 1, v23);
      }

      v27 = MEMORY[0x277D463C0];
      goto LABEL_22;
    }

    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_2304A6104();

    *&v46 = 0xD00000000000001FLL;
    *(&v46 + 1) = 0x80000002304A8720;
    sub_2304757DC();
    v44 = sub_2304A62D4();
    MEMORY[0x2319192E0](v44);

    result = sub_2304A6254();
    __break(1u);
  }

  return result;
}

unint64_t sub_2304757DC()
{
  result = qword_27DB54378;
  if (!qword_27DB54378)
  {
    sub_2304A4924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54378);
  }

  return result;
}

uint64_t sub_230475834()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_230475898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = *(*v6 + 40);
  v15 = *(*v6 + 48);
  __swift_project_boxed_opaque_existential_5Tm((*v6 + 16), v14);
  if (((*(v15 + 8))(a1, a2, a3, a4, a5, a6, v14, v15) & 1) == 0)
  {
    v16 = v13[10];
    v17 = v13[11];
    __swift_project_boxed_opaque_existential_5Tm(v13 + 7, v16);
    (*(v17 + 8))(a5, a6, v16, v17);
  }

  return 1;
}

uint64_t sub_230475978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28149A878 = result;
  return result;
}

uint64_t sub_2304759B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28149A570 = result;
  return result;
}

uint64_t sub_230475A0C()
{
  v0 = sub_2304A5ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2304A5C64();
  MEMORY[0x28223BE20](v5 - 8);
  sub_23047773C();
  sub_2304A5C54();
  v7[1] = MEMORY[0x277D84F90];
  sub_230477788(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304777D0();
  sub_2304A5FA4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_2304A5F04();
  qword_28149A760 = result;
  return result;
}

uint64_t sub_230475C44(uint64_t a1)
{
  if (qword_28149A260 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_2304790E4(v1);
  swift_endAccess();
}

void *sub_230475D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_281499E60 != -1)
  {
    swift_once();
  }

  v12 = sub_2304A5B74();
  __swift_project_value_buffer(v12, qword_28149B050);

  v13 = sub_2304A5B54();
  v14 = sub_2304A5E94();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_23046A5C8(a1, a2, &v18);
    _os_log_impl(&dword_230430000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x23191A000](v16, -1, -1);
    MEMORY[0x23191A000](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_230475EA0()
{

  return swift_deallocClassInstance();
}

double sub_230475F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a3;
  v15[7] = a4;
  aBlock[4] = sub_2304776D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304769FC;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  v17 = os_state_add_handler();
  _Block_release(v16);
  if (v17)
  {
    if (qword_28149A568 != -1)
    {
      v18 = swift_once();
    }

    v19 = qword_28149A570;
    v20 = MEMORY[0x28223BE20](v18);
    MEMORY[0x28223BE20](v20);
    os_unfair_lock_lock(v19 + 4);
    sub_230431F78(v21);
    os_unfair_lock_unlock(v19 + 4);
    v22 = type metadata accessor for StateCaptureInvalidator();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = v17;
    *(a8 + 24) = v22;
    *(a8 + 32) = &off_28451C120;
    *a8 = v23;
  }

  else
  {
    if (qword_281499E60 != -1)
    {
      swift_once();
    }

    v25 = sub_2304A5B74();
    __swift_project_value_buffer(v25, qword_28149B050);
    v26 = sub_2304A5B54();
    v27 = sub_2304A5E74();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_230430000, v26, v27, "[state-capture] os_state_add_handler() failed to return a handle", v28, 2u);
      MEMORY[0x23191A000](v28, -1, -1);
    }

    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}