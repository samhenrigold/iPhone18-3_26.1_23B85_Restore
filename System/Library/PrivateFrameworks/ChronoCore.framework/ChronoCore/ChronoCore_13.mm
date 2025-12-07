BOOL sub_224B5014C(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + qword_28135C9F0) + 16));
  if (v4 >= 0x100 && HIBYTE(a2) != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v10)
    {

      if (HIBYTE(a2) != 2)
      {
        return 0;
      }
    }

    else if (HIBYTE(a2) != 1)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  type metadata accessor for _HostFilterableChange(0);
  v11 = (a2 == 1 ? MEMORY[0x277CFA040] : MEMORY[0x277CFA038]);
  v12 = *v11;
  v16 = *(v6 + 104);
  v16(v9, v12, v5);
  sub_224A80EB8(&qword_281351828, MEMORY[0x277CFA048], MEMORY[0x277CFA058]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if (v18 == v17)
  {
    return 1;
  }

  v16(v9, v12, v5);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v13(v9, v5);
  return v18 == v17;
}

uint64_t sub_224B503DC()
{
  v1 = *v0;
  os_unfair_lock_assert_owner((*(v0 + qword_28135C9F0))[2]);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host(0, v1[10], v1[11], v1[12]);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  nullsub_1();
  sub_224DAED38();

  swift_getWitnessTable();
  return sub_224DAEF68();
}

BOOL sub_224B5057C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = *(*v6 + 216);
  swift_beginAccess();
  sub_224A3796C(v6 + v7, v5, &qword_27D6F3948, &qword_224DB5C10);
  v8 = sub_224DAC378();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_224A3311C(v5, &qword_27D6F3948, &qword_224DB5C10);
  return v9;
}

void sub_224B506A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_224DAC378();
  v101 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v92 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v108 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v92 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v106 = &v92 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v107 = &v92 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v113 = &v92 - v30;
  v115 = sub_224DAB258();
  v31 = *(v115 - 8);
  v33 = MEMORY[0x28223BE20](v115, v32);
  v112 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v110 = (&v92 - v36);
  os_unfair_lock_assert_owner(*(*&v1[qword_28135C9F0] + 16));
  v37 = qword_28135CA40;
  v38 = *&v1[qword_28135CA40];
  v96 = v7;
  v97 = v18;
  v102 = v22;
  if (v38)
  {

    sub_224DAC5F8();
  }

  v95 = v37;
  *&v1[v37] = 0;

  v39 = sub_224B503DC();
  v117[0] = v39;
  v40 = v2[11];
  v41 = v2[12];
  v100 = v2[10];
  v99 = v40;
  v98 = v41;
  v114 = type metadata accessor for _Host(255, v100, v40, v41);
  v42 = sub_224DAF0B8();
  WitnessTable = swift_getWitnessTable();
  if ((sub_224DAF248() & 1) == 0)
  {
    v93 = v11;
    v51 = v31;
    v52 = *(v31 + 16);
    v53 = v112;
    v54 = v115;
    v52(v112, &v1[qword_281365438], v115);

    v55 = sub_224DAB228();
    v56 = sub_224DAF268();

    v57 = os_log_type_enabled(v55, v56);
    v94 = v1;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v109 = v58;
      v59 = swift_slowAlloc();
      v110 = v59;
      v116 = v39;
      v117[0] = v59;
      *v58 = 136446210;
      MEMORY[0x28223BE20](v59, v60);
      v61 = v99;
      *(&v92 - 4) = v100;
      *(&v92 - 3) = v61;
      *(&v92 - 2) = v98;
      v62 = v55;
      LODWORD(v105) = v56;
      v116 = sub_224A4A740(sub_224B53148, (&v92 - 6), v42, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v64 = sub_224DAEDA8();
      v66 = v65;

      v67 = sub_224A33F74(v64, v66, v117);

      v68 = v109;
      *(v109 + 1) = v67;
      _os_log_impl(&dword_224A2F000, v62, v105, "Starting orphaned host purge timer for host identifiers: %{public}s", v68, 0xCu);
      v69 = v110;
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x22AA5EED0](v69, -1, -1);
      MEMORY[0x22AA5EED0](v68, -1, -1);

      (*(v51 + 8))(v53, v115);
    }

    else
    {

      (*(v51 + 8))(v53, v54);
    }

    v71 = v107;
    v70 = v108;
    v104 = *(v101 + 56);
    v105 = v101 + 56;
    v104(v113, 1, 1, v3);
    if (!sub_224DAF088())
    {
LABEL_27:

      v85 = v113;
      v86 = v97;
      sub_224A3796C(v113, v97, &qword_27D6F3948, &qword_224DB5C10);
      v87 = v101;
      if ((*(v101 + 48))(v86, 1, v3) == 1)
      {
        sub_224A3311C(v85, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v86, &qword_27D6F3948, &qword_224DB5C10);
      }

      else
      {
        v88 = v93;
        (*(v87 + 32))(v93, v86, v3);
        sub_224DAC648();
        (*(v87 + 16))(v96, v88, v3);
        sub_224DAC618();
        *(v94 + v95) = sub_224DAC608();

        v89 = swift_allocObject();
        swift_weakInit();
        v90 = swift_allocObject();
        v91 = v99;
        v90[2] = v100;
        v90[3] = v91;
        v90[4] = v98;
        v90[5] = v89;

        sub_224DAC638();

        (*(v87 + 8))(v88, v3);
        sub_224A3311C(v85, &qword_27D6F3948, &qword_224DB5C10);
      }

      return;
    }

    v111 = v39;
    v112 = (v101 + 48);
    v110 = (v101 + 32);
    v103 = (v101 + 8);
    v72 = 4;
    while (1)
    {
      v73 = v72 - 4;
      v74 = sub_224DAF068();
      sub_224DAF028();
      if (v74)
      {
        v75 = *(v39 + 8 * v72);

        v76 = v72 - 3;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v75 = sub_224DAF948();
        v76 = v72 - 3;
        if (__OFADD__(v73, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v115 = v76;
      v77 = *(*v75 + 216);
      swift_beginAccess();
      sub_224A3796C(v75 + v77, v71, &qword_27D6F3948, &qword_224DB5C10);
      v78 = *v112;
      if ((*v112)(v71, 1, v3) == 1)
      {

        sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
      }

      else
      {
        v109 = *v110;
        (v109)(v70, v71, v3);
        v79 = v113;
        v80 = v106;
        sub_224A3796C(v113, v106, &qword_27D6F3948, &qword_224DB5C10);
        if (v78(v80, 1, v3) == 1)
        {

          sub_224A3311C(v80, &qword_27D6F3948, &qword_224DB5C10);
          v70 = v108;
        }

        else
        {
          sub_224A3311C(v80, &qword_27D6F3948, &qword_224DB5C10);
          v81 = v102;
          sub_224A3796C(v79, v102, &qword_27D6F3948, &qword_224DB5C10);
          if (v78(v81, 1, v3) == 1)
          {
            __break(1u);
            return;
          }

          sub_224A80EB8(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
          v70 = v108;
          v82 = sub_224DAEDB8();

          v83 = *v103;
          (*v103)(v81, v3);
          if ((v82 & 1) == 0)
          {
            v83(v70, v3);
            v71 = v107;
            goto LABEL_14;
          }
        }

        v84 = v113;
        sub_224A3311C(v113, &qword_27D6F3948, &qword_224DB5C10);
        (v109)(v84, v70, v3);
        v104(v84, 0, 1, v3);
        v71 = v107;
      }

LABEL_14:
      v39 = v111;
      ++v72;
      if (v115 == sub_224DAF088())
      {
        goto LABEL_27;
      }
    }
  }

  if (v38)
  {
    v44 = v31;
    v45 = *(v31 + 16);
    v46 = v110;
    v47 = v115;
    v45(v110, &v1[qword_281365438], v115);
    v48 = sub_224DAB228();
    v49 = sub_224DAF268();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_224A2F000, v48, v49, "Invalidated orphaned host purge timer.", v50, 2u);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    (*(v44 + 8))(v46, v47);
  }
}

double sub_224B5128C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224B512E4();
  }

  return result;
}

void sub_224B512E4()
{
  v1 = type metadata accessor for _HostFilterableChange(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v6 = *&v0[qword_28135C9F0];
  os_unfair_lock_lock(*(v6 + 16));
  sub_224B51454(v0, &v11);
  os_unfair_lock_unlock(*(v6 + 16));
  if (v11)
  {
    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v9 = *(v2 + 72);
      do
      {
        sub_224B530D8(v8, v5);
        sub_224B4F824(15, v5);
        sub_224A6951C(v5);
        v8 += v9;
        --v7;
      }

      while (v7);
    }

    else
    {
    }
  }
}

uint64_t sub_224B51454(char *a1, uint64_t *a2)
{
  v115 = a2;
  v3 = *a1;
  v105 = type metadata accessor for _HostFilterableChange(0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v4);
  v114 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v7);
  v116 = &v93[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v103 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v93[-v14];
  v111 = sub_224DAC378();
  v16 = *(v111 - 8);
  v18 = MEMORY[0x28223BE20](v111, v17);
  v108 = &v93[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v93[-v22];
  MEMORY[0x28223BE20](v21, v24);
  v119 = &v93[-v25];
  v26 = sub_224DAB258();
  v28 = MEMORY[0x28223BE20](v26, v27);
  v109 = &v93[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v93[-v31];
  v34 = v33;
  v35 = *(v33 + 16);
  v101 = qword_281365438;
  v121 = a1;
  v110 = v36;
  v100 = v33 + 16;
  v99 = v35;
  (v35)(&v93[-v31], &a1[qword_281365438]);
  v37 = sub_224DAB228();
  v38 = sub_224DAF278();
  v39 = os_log_type_enabled(v37, v38);
  v107 = v15;
  if (v39)
  {
    v40 = v3;
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_224A2F000, v37, v38, "Orphaned host purge timer fired", v41, 2u);
    v42 = v41;
    v3 = v40;
    v15 = v107;
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  v43 = *(v34 + 8);
  v102 = v34 + 8;
  v98 = v43;
  v43(v32, v110);
  sub_224DAC338();
  sub_224DAC358();
  v44 = *(v16 + 8);
  v45 = v111;
  v118 = v16 + 8;
  v117 = v44;
  v44(v23, v111);
  v46 = sub_224B503DC();
  v47 = type metadata accessor for _Host(0, v3[10], v3[11], v3[12]);
  v48 = sub_224DAF088();
  v50 = v108;
  if (!v48)
  {
LABEL_31:

    sub_224B506A8();
    return v117(v119, v45);
  }

  v97 = &v121[qword_28135CA30];
  v124 = (v16 + 48);
  v96 = qword_28135CA28;
  v112 = (v16 + 32);
  v122 = (v6 + 16);
  v106 = (v6 + 8);
  v95 = (v16 + 56);
  v51 = 4;
  *&v49 = 136446210;
  v94 = v49;
  v113 = v46;
  v126 = v47;
  while (1)
  {
    v52 = v46;
    v53 = sub_224DAF068();
    sub_224DAF028();
    if (v53)
    {
      v54 = *(v52 + 8 * v51);
    }

    else
    {
      result = sub_224DAF948();
      v54 = result;
    }

    v46 = v52;
    if (__OFADD__(v51 - 4, 1))
    {
      break;
    }

    v127 = v51 - 3;
    v56 = *(*v54 + 216);
    swift_beginAccess();
    v125 = v56;
    sub_224A3796C(v54 + v56, v15, &qword_27D6F3948, &qword_224DB5C10);
    if ((*v124)(v15, 1, v45) != 1)
    {
      (*v112)(v50, v15, v45);
      sub_224A80EB8(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
      if (sub_224DAEDB8())
      {
        v117(v50, v45);

LABEL_29:
        v46 = v113;
        goto LABEL_6;
      }

      v57 = v109;
      v58 = v110;
      v99(v109, &v121[v101], v110);

      v59 = sub_224DAB228();
      v60 = sub_224DAF2A8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v128 = v120;
        *v61 = v94;
        v62 = v123;
        v63 = v116;
        (*v122)(v116, v54 + qword_281365430, v123);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v64 = sub_224DAFD28();
        v66 = v65;

        (*v106)(v63, v62);
        v67 = sub_224A33F74(v64, v66, &v128);

        *(v61 + 4) = v67;
        _os_log_impl(&dword_224A2F000, v59, v60, "Purging orphaned host: %{public}s", v61, 0xCu);
        v68 = v120;
        __swift_destroy_boxed_opaque_existential_1(v120);
        MEMORY[0x22AA5EED0](v68, -1, -1);
        MEMORY[0x22AA5EED0](v61, -1, -1);

        v69 = v109;
        v70 = v110;
      }

      else
      {

        v69 = v57;
        v70 = v58;
      }

      v98(v69, v70);
      if (!*v115)
      {
        *v115 = MEMORY[0x277D84F90];
      }

      v71 = v114;
      v120 = *v122;
      (v120)(v114, v54 + qword_281365430, v123);
      v72 = *(*v54 + 112);
      swift_beginAccess();
      v73 = v105;
      v74 = *(v105 + 24);
      v75 = sub_224DAA428();
      v76 = *(*(v75 - 8) + 16);
      v76(&v71[v74], v54 + v72, v75);
      v76(&v71[*(v73 + 20)], &v71[v74], v75);
      v77 = v115;
      v78 = *v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v77 = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = sub_224AD9290(0, v78[2] + 1, 1, v78);
        *v77 = v78;
      }

      v45 = v111;
      v81 = v78[2];
      v80 = v78[3];
      if (v81 >= v80 >> 1)
      {
        v78 = sub_224AD9290((v80 > 1), v81 + 1, 1, v78);
        *v77 = v78;
      }

      v78[2] = v81 + 1;
      sub_224B52FE4(v114, v78 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v81);
      v82 = v103;
      (*v95)(v103, 1, 1, v45);
      v83 = v125;
      swift_beginAccess();
      sub_224A838C0(v82, v54 + v83, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v84 = qword_281365430;
      (v120)(v116, v54 + qword_281365430, v123);
      v131 = 0;
      swift_beginAccess();
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      sub_224DAED48();

      sub_224DAED68();
      swift_endAccess();
      if (*(v97 + 3))
      {
        sub_224A3317C(v97, &v128);
        v85 = *(&v129 + 1);
        if (*(&v129 + 1))
        {
          goto LABEL_24;
        }

LABEL_26:

        v50 = v108;
        v117(v108, v45);
        if (*(&v129 + 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v92 = *(v97 + 1);
        v128 = *v97;
        v129 = v92;
        v130 = *(v97 + 4);
        v85 = *(&v92 + 1);
        if (!*(&v92 + 1))
        {
          goto LABEL_26;
        }

LABEL_24:
        v86 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, v85);
        v87 = v54 + v84;
        v88 = v116;
        v89 = v123;
        (v120)(v116, v87, v123);

        v90 = *(v86 + 48);
        v91 = v86;
        v45 = v111;
        v90(v88, v85, v91);

        (*v106)(v88, v89);
        v50 = v108;
        v117(v108, v45);
LABEL_27:
        __swift_destroy_boxed_opaque_existential_1(&v128);
      }

      v15 = v107;
      goto LABEL_29;
    }

    sub_224A3311C(v15, &qword_27D6F3948, &qword_224DB5C10);
LABEL_6:
    ++v51;
    if (v127 == sub_224DAF088())
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B522B0()
{
  type metadata accessor for HostService(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  swift_getMetatypeMetadata();
  return sub_224DAEE28();
}

unint64_t sub_224B5234C()
{
  v1 = *(v0 + qword_28135C9F0);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B523C0(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224B523C0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_224DAF938();

  v21 = 0xD000000000000014;
  v22 = 0x8000000224DC6BE0;
  v5 = qword_28135CA28;
  swift_beginAccess();
  v23 = *(a1 + v5);
  v16 = v4[10];
  v17 = v4[11];
  v18 = v4[12];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host(255, v16, v17, v18);
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  v6 = sub_224DAED48();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_224A4A740(sub_224B530B4, &v15, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
  v10 = sub_224DAEDA8();
  v12 = v11;

  MEMORY[0x22AA5D210](v10, v12);

  result = MEMORY[0x22AA5D210](32010, 0xE200000000000000);
  v14 = v22;
  *a2 = v21;
  a2[1] = v14;
  return result;
}

uint64_t sub_224B52650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v40 = a4;
  v9 = sub_224DAA428();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host(255, a2, a3, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v15);
  v17 = &v34 - v16;
  v41 = 9;
  v42 = 0xE100000000000000;
  v18 = *(v14 + 16);
  v18(&v34 - v16, a1, TupleTypeMetadata2);

  v19 = sub_224DAA1C8();
  v21 = v20;
  v22 = *(v12 - 8);
  v35 = *(v22 + 8);
  v36 = v22 + 8;
  v35(v17, v12);
  MEMORY[0x22AA5D210](v19, v21);

  MEMORY[0x22AA5D210](10272, 0xE200000000000000);
  v18(v17, a1, TupleTypeMetadata2);
  v23 = *&v17[*(TupleTypeMetadata2 + 48)];
  v24 = *(*v23 + 112);
  swift_beginAccess();
  v25 = v37;
  v26 = v38;
  v27 = v39;
  (*(v38 + 16))(v37, v23 + v24, v39);

  v28 = sub_224DAA408();
  v30 = v29;
  (*(v26 + 8))(v25, v27);
  MEMORY[0x22AA5D210](v28, v30);

  v35(v17, v12);
  result = MEMORY[0x22AA5D210](41, 0xE100000000000000);
  v32 = v42;
  v33 = v40;
  *v40 = v41;
  v33[1] = v32;
  return result;
}

uint64_t _s10ChronoCore27ConfigurationCharacteristicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_224DAFD88();
}

unint64_t sub_224B52A2C()
{
  result = qword_2813549F8[0];
  if (!qword_2813549F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813549F8);
  }

  return result;
}

uint64_t sub_224B52A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_224B52AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_224B52B24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_224B52B74(uint64_t a1)
{
  sub_224B52C2C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_224B52C2C(uint64_t a1)
{
  if (!qword_281350DC8)
  {
    sub_224DAC378();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281350DC8);
    }
  }
}

uint64_t sub_224B52C84(uint64_t a1)
{
  result = sub_224DAB258();
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

void sub_224B52D9C(uint64_t a1)
{
  sub_224AFCD10(319);
  if (v1 <= 0x3F)
  {
    sub_224DAA428();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_224B52E28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_224B52ED8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_224DAF728() - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224B4D104(v0 + v2, v0 + v5, v6);
}

uint64_t sub_224B52FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B530D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B53148@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = sub_224DAA1C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_224B53220()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4240, &unk_224DB60F0);
    sub_224B55454();
    v1 = sub_224DAB3A8();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224B532B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B533EC, 0, 0);
}

uint64_t sub_224B533EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 32), *(v0[3] + 56));
  sub_224DAABA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224B53508;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224B53508()
{

  return MEMORY[0x2822009F8](sub_224B53604, 0, 0);
}

uint64_t sub_224B53604()
{
  if (v0[2])
  {
    sub_224B53734(v0[2]);

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224B53508;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

void sub_224B53734(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(sub_224DAAA98() - 8);
    v5 = (a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v6 = *(v4 + 72);
    do
    {
      v7 = MEMORY[0x22AA5E4C0]();
      sub_224B53AEC(v5, v1);
      objc_autoreleasePoolPop(v7);
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_224B53804()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v1 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_224B538E8(uint64_t a1)
{
  result = sub_224DAB258();
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

void sub_224B539CC(uint64_t a1)
{
  sub_224B53A78(319, &qword_281351710, MEMORY[0x277D467E8]);
  if (v1 <= 0x3F)
  {
    sub_224B53A78(319, &qword_281351718, MEMORY[0x277D46790]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224B53A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_224DAAE38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_224B53AEC(char *a1, void *a2)
{
  v241 = a1;
  v244 = a2;
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  MEMORY[0x28223BE20](updated, v2);
  v227 = &v213 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v225 = &v213 - v6;
  v218 = sub_224DAB018();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v7);
  v219 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v228 = (&v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v13);
  v229 = &v213 - v14;
  v234 = sub_224DAAE38();
  v239 = *(v234 - 8);
  v16 = MEMORY[0x28223BE20](v234, v15);
  v224 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v230 = &v213 - v19;
  v240 = sub_224DA9908();
  v243 = *(v240 - 8);
  v21 = MEMORY[0x28223BE20](v240, v20);
  v237 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v233 = &v213 - v24;
  v25 = sub_224DAAF28();
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v231 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v232 = &v213 - v30;
  v31 = sub_224DAAF48();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v221 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v223 = &v213 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v236 = &v213 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v213 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v220 = &v213 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v222 = &v213 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v235 = (&v213 - v54);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v213 - v56;
  v58 = sub_224DAAB18();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v60);
  v62 = &v213 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_224DAAA98();
  MEMORY[0x28223BE20](v63, v64);
  v66 = &v213 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224B5533C(v241, v66);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v245 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v32 + 32))(v45, v66, v31);
    v68 = sub_224DAAF08();
    v70 = v244;
    v71 = v31;
    v72 = v32;
    v73 = v45;
    if (v68 == v244[10] && v69 == v244[11])
    {

      v74 = v236;
    }

    else
    {
      v79 = sub_224DAFD88();

      v74 = v236;
      if ((v79 & 1) == 0)
      {
        return (*(v32 + 8))(v45, v71);
      }
    }

    v80 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
    v81 = *(v32 + 16);
    v216 = v73;
    v235 = v81;
    v236 = (v32 + 16);
    v81(v74, v73, v71);
    v82 = v70;
    v233 = v80;
    v83 = sub_224DAB228();
    v84 = sub_224DAF2A8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v74;
      v86 = swift_slowAlloc();
      v87 = v71;
      v88 = swift_slowAlloc();
      v246 = v88;
      *v86 = 136446210;
      sub_224B553A0();
      v89 = sub_224DAFD28();
      v91 = v90;
      v241 = *(v245 + 8);
      (v241)(v85, v87);
      v92 = sub_224A33F74(v89, v91, &v246);

      *(v86 + 4) = v92;
      _os_log_impl(&dword_224A2F000, v83, v84, "Received deleted record: %{public}s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      v93 = v88;
      v71 = v87;
      v94 = v243;
      MEMORY[0x22AA5EED0](v93, -1, -1);
      MEMORY[0x22AA5EED0](v86, -1, -1);

      v95 = v239;
    }

    else
    {

      v241 = *(v72 + 8);
      (v241)(v74, v71);
      v95 = v239;
      v94 = v243;
    }

    v116 = v231;
    v117 = v216;
    sub_224DAAF38();
    v118 = v240;
    if ((*(v94 + 48))(v116, 1, v240) == 1)
    {
      v119 = v117;
      return (v241)(v119, v71);
    }

    (*(v94 + 32))(v237, v116, v118);
    __swift_project_boxed_opaque_existential_1(v82 + 4, v82[7]);
    v123 = v228;
    sub_224DAAC98();
    v124 = v234;
    if ((*(v95 + 48))(v123, 1, v234) != 1)
    {
      v155 = v224;
      (*(v95 + 32))(v224, v123, v124);
      v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4230, &unk_224DB60E0) + 48);
      v157 = v227;
      v158 = v216;
      v235(v227, v216, v71);
      (*(v95 + 16))(v157 + v156, v155, v124);
      swift_storeEnumTagMultiPayload();
      sub_224DAB348();
      sub_224B553F8(v157);
      (*(v95 + 8))(v155, v124);
      (*(v243 + 8))(v237, v118);
      v119 = v158;
      return (v241)(v119, v71);
    }

    sub_224A3311C(v123, &qword_27D6F3320, &unk_224DBD6F0);
    v125 = v223;
    v126 = v216;
    v235(v223, v216, v71);
    v127 = sub_224DAB228();
    v128 = sub_224DAF288();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v246 = v130;
      *v129 = 136446210;
      sub_224B553A0();
      v131 = sub_224DAFD28();
      v132 = v125;
      v134 = v133;
      v135 = v71;
      v245 += 8;
      v136 = v71;
      v137 = v241;
      (v241)(v132, v136);
      v138 = sub_224A33F74(v131, v134, &v246);

      *(v129 + 4) = v138;
      _os_log_impl(&dword_224A2F000, v127, v128, "Received deleted remote record from a device that does not exist: %{public}s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x22AA5EED0](v130, -1, -1);
      MEMORY[0x22AA5EED0](v129, -1, -1);

      (*(v243 + 8))(v237, v240);
      return (v137)(v216, v135);
    }

    else
    {

      v184 = v241;
      (v241)(v125, v71);
      (*(v243 + 8))(v237, v118);
      return (v184)(v126, v71);
    }
  }

  else
  {
    v238 = v31;
    (*(v59 + 32))(v62, v66, v58);
    sub_224DAAAF8();
    v76 = v62;
    if (sub_224DAAF08() == v244[10] && v75 == v244[11])
    {

      v77 = v238;
      v78 = v235;
    }

    else
    {
      v96 = sub_224DAFD88();

      v77 = v238;
      v78 = v235;
      if ((v96 & 1) == 0)
      {
        (*(v245 + 8))(v57, v238);
        return (*(v59 + 8))(v76, v58);
      }
    }

    v241 = v76;
    v97 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
    v98 = v245;
    v99 = *(v245 + 16);
    v215 = v57;
    v236 = (v245 + 16);
    v237 = v99;
    (v99)(v78, v57, v77);
    v235 = v97;
    v100 = sub_224DAB228();
    v101 = sub_224DAF2A8();
    v102 = os_log_type_enabled(v100, v101);
    v214 = v59;
    if (v102)
    {
      v103 = v58;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v246 = v105;
      *v104 = 136446210;
      sub_224B553A0();
      v106 = sub_224DAFD28();
      v107 = v78;
      v109 = v108;
      v110 = *(v98 + 8);
      v110(v107, v238);
      v111 = sub_224A33F74(v106, v109, &v246);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_224A2F000, v100, v101, "Received updated record: %{public}s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v112 = v105;
      v77 = v238;
      MEMORY[0x22AA5EED0](v112, -1, -1);
      v113 = v104;
      v58 = v103;
      v59 = v214;
      v114 = v243;
      MEMORY[0x22AA5EED0](v113, -1, -1);

      v115 = v240;
    }

    else
    {

      v110 = *(v98 + 8);
      v110(v78, v77);
      v115 = v240;
      v114 = v243;
    }

    v120 = v232;
    v121 = v215;
    sub_224DAAF38();
    if ((*(v114 + 48))(v120, 1, v115) == 1)
    {
      v110(v121, v77);
      return (*(v59 + 8))(v241, v58);
    }

    else
    {
      v228 = v110;
      v231 = v58;
      (*(v114 + 32))(v233, v120, v115);
      v139 = v244;
      __swift_project_boxed_opaque_existential_1(v244 + 4, v244[7]);
      v140 = v229;
      sub_224DAAC98();
      v141 = v239;
      v142 = v234;
      if ((*(v239 + 48))(v140, 1, v234) == 1)
      {
        sub_224A3311C(v140, &qword_27D6F3320, &unk_224DBD6F0);
        v143 = v222;
        (v237)(v222, v121, v77);
        v144 = sub_224DAB228();
        v145 = sub_224DAF288();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = v143;
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v246 = v148;
          *v147 = 136446210;
          sub_224B553A0();
          v149 = sub_224DAFD28();
          v151 = v150;
          v152 = v146;
          v153 = v228;
          v228(v152, v77);
          v154 = sub_224A33F74(v149, v151, &v246);

          *(v147 + 4) = v154;
          _os_log_impl(&dword_224A2F000, v144, v145, "Received incoming remote record from a device that does not exist: %{public}s", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x22AA5EED0](v148, -1, -1);
          MEMORY[0x22AA5EED0](v147, -1, -1);

          (*(v243 + 8))(v233, v240);
          v153(v215, v77);
        }

        else
        {

          v185 = v228;
          v228(v143, v77);
          (*(v243 + 8))(v233, v115);
          v185(v121, v77);
        }
      }

      else
      {
        (*(v141 + 32))(v230, v140, v142);
        __swift_project_boxed_opaque_existential_1(v139 + 4, v139[7]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v159 = (*(v245 + 80) + 32) & ~*(v245 + 80);
        v160 = swift_allocObject();
        *(v160 + 16) = xmmword_224DB3100;
        v161 = v160 + v159;
        v162 = v237;
        (v237)(v161, v121, v77);
        v163 = sub_224DA9688();
        v164 = v225;
        (*(*(v163 - 8) + 56))(v225, 1, 1, v163);
        v165 = v242;
        v166 = sub_224DAAC08();
        if (v165)
        {
          sub_224A3311C(v164, &unk_27D6F4680, &unk_224DB4610);

          v167 = v221;
          (v162)(v221, v215, v77);
          v168 = v165;
          v169 = v77;
          v170 = sub_224DAB228();
          v171 = sub_224DAF288();

          if (os_log_type_enabled(v170, v171))
          {
            v172 = v169;
            v173 = swift_slowAlloc();
            v242 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v246 = v244;
            *v173 = 136446466;
            sub_224B553A0();
            v174 = sub_224DAFD28();
            v176 = v175;
            v177 = v172;
            v178 = v228;
            v228(v167, v177);
            v179 = sub_224A33F74(v174, v176, &v246);

            *(v173 + 4) = v179;
            *(v173 + 12) = 2114;
            v180 = v165;
            v181 = _swift_stdlib_bridgeErrorToNSError();
            *(v173 + 14) = v181;
            v182 = v242;
            *v242 = v181;
            _os_log_impl(&dword_224A2F000, v170, v171, "Could not retrieve incoming record: %{public}s; %{public}@", v173, 0x16u);
            sub_224A3311C(v182, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v182, -1, -1);
            v183 = v244;
            __swift_destroy_boxed_opaque_existential_1(v244);
            MEMORY[0x22AA5EED0](v183, -1, -1);
            MEMORY[0x22AA5EED0](v173, -1, -1);

            (*(v239 + 8))(v230, v234);
            (*(v243 + 8))(v233, v240);
            v178(v215, v238);
          }

          else
          {

            v199 = v228;
            v228(v167, v169);
            (*(v239 + 8))(v230, v234);
            (*(v243 + 8))(v233, v240);
            v199(v215, v169);
          }
        }

        else
        {
          v186 = v166;
          v242 = 0;
          sub_224A3311C(v164, &unk_27D6F4680, &unk_224DB4610);

          v187 = v215;
          if (*(v186 + 16) && (v188 = sub_224B0B3CC(v215), (v189 & 1) != 0))
          {
            v190 = v217;
            v191 = *(v217 + 16);
            v192 = v219;
            v193 = v218;
            v191(v219, *(v186 + 56) + *(v217 + 72) * v188, v218);

            v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4238, &unk_224DC3330) + 48);
            v195 = v227;
            v191(v227, v192, v193);
            v196 = v239;
            v197 = v230;
            v198 = v234;
            (*(v239 + 16))(v195 + v194, v230, v234);
            swift_storeEnumTagMultiPayload();
            sub_224DAB348();
            sub_224B553F8(v195);
            (*(v190 + 8))(v219, v193);
            (*(v196 + 8))(v197, v198);
            (*(v243 + 8))(v233, v240);
            v228(v187, v238);
          }

          else
          {

            v200 = v220;
            v201 = v238;
            (v237)(v220, v187, v238);
            v202 = sub_224DAB228();
            v203 = sub_224DAF288();
            if (os_log_type_enabled(v202, v203))
            {
              v204 = swift_slowAlloc();
              v205 = swift_slowAlloc();
              v246 = v205;
              *v204 = 136446210;
              sub_224B553A0();
              v206 = sub_224DAFD28();
              v208 = v207;
              v209 = v200;
              v210 = v228;
              v228(v209, v201);
              v211 = sub_224A33F74(v206, v208, &v246);

              *(v204 + 4) = v211;
              _os_log_impl(&dword_224A2F000, v202, v203, "Received incoming remote record that does not exist: %{public}s", v204, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v205);
              MEMORY[0x22AA5EED0](v205, -1, -1);
              MEMORY[0x22AA5EED0](v204, -1, -1);

              (*(v239 + 8))(v230, v234);
              (*(v243 + 8))(v233, v240);
              v210(v215, v201);
            }

            else
            {

              v212 = v228;
              v228(v200, v201);
              (*(v239 + 8))(v230, v234);
              (*(v243 + 8))(v233, v240);
              v212(v187, v201);
            }
          }
        }
      }

      return (*(v214 + 8))(v241, v231);
    }
  }
}

uint64_t sub_224B5533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAA98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B553A0()
{
  result = qword_281351720;
  if (!qword_281351720)
  {
    sub_224DAAF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351720);
  }

  return result;
}

uint64_t sub_224B553F8(uint64_t a1)
{
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_224B55454()
{
  result = qword_281350F98;
  if (!qword_281350F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4240, &unk_224DB60F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350F98);
  }

  return result;
}

uint64_t sub_224B554B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a7;
  v21 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  type metadata accessor for ReplicatorUpdateObserver(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4240, &unk_224DB60F0);
  swift_allocObject();
  *(v14 + 24) = sub_224DAB358();
  *(v14 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) = 0;
  sub_224AB1DE0(&v18, (v14 + 32));
  *(v14 + 80) = a2;
  *(v14 + 88) = a3;
  v15 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
  v16 = sub_224DAB258();
  (*(*(v16 - 8) + 32))(v14 + v15, a4, v16);
  return v14;
}

uint64_t type metadata accessor for PushEvent(uint64_t a1)
{
  result = qword_281351BB8;
  if (!qword_281351BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B55660(uint64_t a1)
{
  result = sub_224DA9878();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_224B556FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224B55744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_224B557A4()
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x6D617473656D6974, 0xEB00000000203A70);
  type metadata accessor for PushEvent(0);
  sub_224DA9878();
  sub_224B558C8();
  v0 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v0);

  MEMORY[0x22AA5D210](0x54746E657665203BLL, 0xED0000203A657079);
  sub_224DAFA48();
  MEMORY[0x22AA5D210](59, 0xE100000000000000);
  return 0;
}

unint64_t sub_224B558C8()
{
  result = qword_27D6F32B8;
  if (!qword_27D6F32B8)
  {
    sub_224DA9878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F32B8);
  }

  return result;
}

uint64_t sub_224B55920()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EE0);
  __swift_project_value_buffer(v0, qword_281364EE0);
  return sub_224DAB238();
}

uint64_t sub_224B559A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_27D6F7198);
  __swift_project_value_buffer(v2, qword_27D6F7198);
  sub_224DA9FF8();
  return sub_224DAA228();
}

void sub_224B55AAC(uint64_t a1, void *a2)
{
  v87 = a2;
  v93 = sub_224DAA428();
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_224DA9908();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v6);
  v86 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v77 - v20;
  sub_224DAC218();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
    return;
  }

  v78 = v5;
  (*(v18 + 32))(v21, v16, v17);
  v85 = v9;
  v22 = *(v9 + 16);
  v84 = v12;
  v22(v12, a1, v8);
  v99 = MEMORY[0x277D84F90];
  v23 = v92[5];
  v24 = v92[6];
  __swift_project_boxed_opaque_existential_1(v92 + 2, v23);
  (*(v24 + 24))(v97, v21, v23, v24);
  v82 = v17;
  v81 = v18;
  v80 = v21;
  v79 = v8;
  if (v98)
  {
    v25 = v93;
    if (*(v98 + 16))
    {
      v26 = a1;
      v27 = sub_224A79FA8(v98);
      sub_224A699F0(v97);
      v28 = v85;
      v29 = v84;
      if (v27 >> 62)
      {
LABEL_29:
        v30 = sub_224DAF838();
        if (v30)
        {
LABEL_7:
          v29 = 0;
          v95 = (v27 & 0xC000000000000001);
          v96 = 0;
          v91 = MEMORY[0x277D84F90];
          v83 = v27 & 0xFFFFFFFFFFFFFF8;
          v94 = v26;
          do
          {
            if (v95)
            {
              v32 = MEMORY[0x22AA5DCC0](v29, v27);
            }

            else
            {
              if (v29 >= *(v83 + 16))
              {
                goto LABEL_28;
              }

              v32 = *(v27 + 8 * v29 + 32);
            }

            v33 = v32;
            v25 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v28 = [v32 family];
            v34 = sub_224DAC248();
            v35 = [v34 family];

            if (v28 == v35)
            {
              v36 = [v33 widgets];
              sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
              v37 = sub_224DAF008();

              MEMORY[0x28223BE20](v38, v39);
              v76 = v26;
              v28 = sub_224AFD844(sub_224B57590, (&v77 - 4), v37);

              if (v28)
              {

                (v85)[1](v84, v79);
                (*(v81 + 8))(v80, v82);

                return;
              }

              v96 = v33;
            }

            else
            {
              v31 = v33;
              MEMORY[0x22AA5D350]();
              if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_224DAF038();
              }

              sub_224DAF078();

              v91 = v99;
            }

            ++v29;
            v26 = v94;
          }

          while (v25 != v30);

          v25 = v93;
          v28 = v85;
          v29 = v84;
          if (!v96)
          {
            goto LABEL_31;
          }

          v96 = v96;
          v40 = [v96 widgets];
          sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
          v41 = sub_224DAF008();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_224DB2780;
          v43 = v87;
          *(inited + 32) = v87;
          v97[0] = v41;
          v44 = v43;
          sub_224B42648(inited);
          v45 = v86;
          sub_224DA98F8();
          sub_224DA9898();
          (*(v88 + 8))(v45, v89);
          v46 = sub_224DAC248();
          v47 = [v46 family];

          v48 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
          v49 = sub_224DAEDE8();

          v50 = sub_224DAEFF8();

          [v48 initWithUniqueIdentifier:v49 location:0 canAppearInSecureEnvironment:0 page:0 family:v47 widgets:v50 activeWidget:0];

          v51 = (*(v28 + 1))(v29, v79);
          MEMORY[0x22AA5D350](v51);
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();

          goto LABEL_34;
        }
      }

      else
      {
        v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_224A699F0(v97);
      v28 = v85;
      v29 = v84;
    }
  }

  else
  {
    sub_224A3311C(v97, &qword_27D6F50E0, &qword_224DB41A0);
    v28 = v85;
    v29 = v84;
    v25 = v93;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_224DB2780;
  v53 = v87;
  *(v52 + 32) = v87;
  v54 = v53;
  v55 = v86;
  sub_224DA98F8();
  sub_224DA9898();
  (*(v88 + 8))(v55, v89);
  v56 = sub_224DAC248();
  v57 = [v56 family];

  v58 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
  v59 = sub_224DAEDE8();

  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v60 = sub_224DAEFF8();

  [v58 initWithUniqueIdentifier:v59 location:0 canAppearInSecureEnvironment:0 page:0 family:v57 widgets:v60 activeWidget:0];

  v61 = (*(v28 + 1))(v29, v79);
  MEMORY[0x22AA5D350](v61);
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  v96 = 0;
LABEL_34:
  v62 = [objc_allocWithZone(MEMORY[0x277CFA3F8]) init];
  v63 = objc_allocWithZone(MEMORY[0x277CFA2B0]);
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v64 = v62;
  v95 = v64;
  v65 = sub_224DAEFF8();

  v66 = [v63 initWithContainerDescriptors:v65 metricsSpecification:v64];

  v67 = [objc_opt_self() allPredicate];
  [v66 setReplicationPredicate_];

  [v66 setExpirationTimeout_];
  v68 = v90;
  v69 = v78;
  (*(v90 + 104))(v78, *MEMORY[0x277CFA040], v25);
  v70 = v92[5];
  v71 = v92[6];
  __swift_project_boxed_opaque_existential_1(v92 + 2, v70);
  v97[0] = v66;
  v72 = *(v71 + 8);
  v73 = *(v72 + 56);
  v74 = v66;
  v75 = v80;
  v73(v97, v69, v80, v70, v72);

  (*(v68 + 8))(v69, v93);
  (*(v81 + 8))(v75, v82);
}

uint64_t sub_224B566EC(void **a1)
{
  v1 = *a1;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v2 = [v1 widget];
  v3 = sub_224DAC248();
  v4 = sub_224DAF6A8();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [v1 metrics];
  v6 = sub_224DAC258();
  v7 = sub_224DAF6A8();

  return v7 & 1;
}

void sub_224B567E4(void *a1)
{
  v78 = sub_224DAA428();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v3);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DA9908();
  v74 = *(v5 - 1);
  v75 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v65 - v20;
  sub_224DAC218();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
    return;
  }

  (*(v18 + 32))(v21, v16, v17);
  v68 = v9;
  v69 = v8;
  v23 = *(v9 + 16);
  v22 = (v9 + 16);
  v23(v12, a1, v8);
  v82 = MEMORY[0x277D84F90];
  v24 = v1[5];
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v24);
  (*(v25 + 24))(v80, v21, v24, v25);
  v71 = v18;
  v72 = v17;
  v70 = v21;
  if (!v81)
  {
    a1 = v1;
    sub_224A3311C(v80, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_27:
    v50 = v68;
    v28 = v77;
LABEL_28:
    (*(v50 + 8))(v12, v69);
    v79 = 0;
LABEL_29:
    v51 = [objc_allocWithZone(MEMORY[0x277CFA3F8]) init];
    v52 = objc_allocWithZone(MEMORY[0x277CFA360]);
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v53 = v51;
    v75 = v53;
    v54 = sub_224DAEFF8();

    v55 = [v52 initWithContainerDescriptors:v54 metricsSpecification:v53];

    v56 = v76;
    (*(v76 + 104))(v28, *MEMORY[0x277CFA038], v78);
    v57 = v28;
    v58 = a1[5];
    v59 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v58);
    v80[0] = v55;
    v60 = *(v59 + 8);
    v61 = *(v60 + 56);
    v62 = v55;
    v63 = v70;
    v61(v80, v57, v70, v58, v60);

    (*(v56 + 8))(v57, v78);
    (*(v71 + 8))(v63, v72);

    return;
  }

  if (!*(v81 + 16))
  {
    a1 = v1;
    sub_224A699F0(v80);
    goto LABEL_27;
  }

  v67 = v1;
  v26 = sub_224A79FA8(v81);
  sub_224A699F0(v80);
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v77;
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_32:

    a1 = v67;
    v50 = v68;
    goto LABEL_28;
  }

  v27 = sub_224DAF838();
  v28 = v77;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_7:
  v65 = 0;
  v66 = v12;
  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v29 = a1;
  v79 = 0;
  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x22AA5DCC0](i, v26);
    }

    else
    {
      v31 = *(v26 + 8 * i + 32);
    }

    v32 = v31;
    v33 = [v31 family];
    v34 = sub_224DAC248();
    v35 = [v34 family];

    if (v33 == v35)
    {

      v79 = v32;
    }

    else
    {
      v36 = v32;
      MEMORY[0x22AA5D350]();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
    }
  }

  if (!v79)
  {
    v28 = v77;
    a1 = v67;
    v50 = v68;
    v12 = v66;
    goto LABEL_28;
  }

  v12 = v79;
  v37 = [v12 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v38 = sub_224DAF008();

  MEMORY[0x28223BE20](v39, v40);
  v64 = v29;
  v41 = v65;
  v42 = sub_224A4ECE8(sub_224B575B0, (&v65 - 4), v38);
  a1 = v67;
  v27 = v68;
  v22 = v66;
  if (!v41)
  {
    if (!(v42 >> 62))
    {
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        v43 = v73;
        sub_224DA98F8();
        sub_224DA9898();
        (*(v74 + 8))(v43, v75);
        v44 = sub_224DAC248();
        v45 = [v44 family];

        v46 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
        v47 = sub_224DAEDE8();

        v48 = sub_224DAEFF8();

        [v46 initWithUniqueIdentifier:v47 location:0 canAppearInSecureEnvironment:0 page:0 family:v45 widgets:v48 activeWidget:0];

        v49 = (*(v27 + 8))(v22, v69);
        MEMORY[0x22AA5D350](v49);
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();

        goto LABEL_36;
      }

LABEL_35:
      (*(v27 + 8))(v22, v69);

LABEL_36:
      v28 = v77;
      goto LABEL_29;
    }

LABEL_34:
    if (sub_224DAF838())
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  (*(v27 + 8))(v22, v69);
  __break(1u);
}

uint64_t sub_224B570F8(id *a1)
{
  v1 = *a1;
  v2 = [*a1 widget];
  v3 = sub_224DAC248();
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v4 = sub_224DAF6A8();

  if (v4)
  {
    v5 = [v1 metrics];
    v6 = sub_224DAC258();
    sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
    v7 = sub_224DAF6A8();

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_224B57200(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_224B57260(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_224B572D0(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_224B57340(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 40))(a1, v3, v4) & 1;
}

unint64_t sub_224B5741C()
{
  result = qword_27D6F4248;
  if (!qword_27D6F4248)
  {
    sub_224A3B79C(255, &qword_281350958, 0x277CFA360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4248);
  }

  return result;
}

uint64_t sub_224B57484(uint64_t a1)
{
  result = sub_224B574C8(qword_281354670, &unk_224DB61FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B574C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224B57508(uint64_t a1)
{
  result = sub_224B574C8(&qword_281354660, &unk_224DB622C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B5754C(uint64_t a1)
{
  result = sub_224B574C8(&qword_281354658, &unk_224DB6248);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B5760C()
{
  type metadata accessor for SignificantTimeChangeNotification(0);
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = sub_224B57898(v2);
  qword_2813651C8 = v0;
  return result;
}

uint64_t sub_224B57664()
{
  sub_224DAF938();

  sub_224DA9878();
  sub_224B59870(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v0 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v0);

  MEMORY[0x22AA5D210](0x6D6574737973203BLL, 0xEA0000000000203ALL);
  type metadata accessor for SignificantTimeChangeNotification.Times(0);
  sub_224DAC378();
  sub_224B59870(&unk_281350DD0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A28]);
  v1 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v1);

  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DC6E60);
  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  return 0x203A646C726F77;
}

uint64_t sub_224B57820()
{
  v1 = 0x76617254656D6974;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7665446B636F6C63;
  }
}

uint64_t sub_224B57898(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  *(v1 + 56) = sub_224DAB358();
  v9 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock;
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v2 + v9) = v10;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason) = 3;
  *v11 = 0;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) = 0;
  *(v10 + 16) = v11;
  v12 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription) = -1;
  sub_224B598B8(a1, &v31);
  if (v32)
  {
    sub_224A36F98(&v31, &aBlock);
  }

  else
  {
    v13 = type metadata accessor for SignificantTimeChangeStore(0);
    swift_allocObject();
    sub_224B58CA4();
    v28 = v13;
    v29 = &off_28382B2C8;
    *&aBlock = v14;
    if (v32)
    {
      sub_224B59928(&v31);
    }
  }

  sub_224A36F98(&aBlock, v2 + 16);
  swift_beginAccess();
  v15 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  sub_224B5950C(v15 + v16, v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes);
  sub_224AC319C();
  (*(v5 + 104))(v8, *MEMORY[0x277D851C8], v4);
  v17 = sub_224DAF428();
  (*(v5 + 8))(v8, v4);
  v18 = swift_allocObject();
  swift_weakInit();
  v29 = sub_224B59990;
  v30 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_224AC3A24;
  v28 = &block_descriptor_11;
  v19 = _Block_copy(&aBlock);

  swift_beginAccess();
  v20 = notify_register_dispatch("SignificantTimeChangeNotification", (v2 + v12), v17, v19);
  swift_endAccess();
  _Block_release(v19);

  if (v20)
  {
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364DF0);
    v22 = sub_224DAB228();
    v23 = sub_224DAF288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67240192;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_224A2F000, v22, v23, "Unable to register for significant time change notifications: %{public}u", v24, 8u);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }
  }

  sub_224B59928(a1);
  return v2;
}

double sub_224B57CAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224B57D08(1);
  }

  return result;
}

double sub_224B57D08(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_224B57ED4(v1, v2);
  os_unfair_lock_unlock(*(v3 + 16));

  return sub_224B58274();
}

double sub_224B57DD4()
{
  v1 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) = 1;
  os_unfair_lock_unlock(*(v2 + 16));

  v4 = *(v0 + v1);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_224B57ED4(v0, 1);
  os_unfair_lock_unlock(*(v4 + 16));

  return sub_224B58274();
}

uint64_t sub_224B57ED4(uint64_t a1, int a2)
{
  v33 = a2;
  v38 = sub_224DA9878();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_224DA9A08();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v12 = v11 - 8;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v37 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v32[-v18];
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v32[-v21];
  sub_224DA9868();
  sub_224DAC338();
  sub_224DA99F8();
  sub_224DA9868();
  v23 = sub_224DA99C8();
  v34 = *(v3 + 8);
  v35 = v3 + 8;
  v34(v6, v38);
  (*(v7 + 8))(v10, v36);
  *&v22[*(v12 + 32)] = v23;
  v24 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes;
  swift_beginAccess();
  sub_224B5950C(a1 + v24, v19);
  if (*&v19[*(v12 + 32)] != v23)
  {
    v26 = 2;
    goto LABEL_5;
  }

  sub_224DA9768();
  v25 = sub_224DA9788();
  v34(v6, v38);
  if (v25)
  {
    v26 = 1;
LABEL_5:
    sub_224B5941C(v19);
LABEL_6:
    *(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason) = v26;
    goto LABEL_7;
  }

  if ((v33 & 1) == 0)
  {
    sub_224B5941C(v19);
    goto LABEL_7;
  }

  v31 = sub_224B59570(v19, v22);
  sub_224B5941C(v19);
  if (v31)
  {
    v26 = 0;
    goto LABEL_6;
  }

LABEL_7:
  swift_beginAccess();
  sub_224B593B8(v22, a1 + v24);
  swift_endAccess();
  v27 = v37;
  sub_224B5950C(v22, v37);
  swift_beginAccess();
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, v28);
  (*(v29 + 16))(v27, v28, v29);
  swift_endAccess();
  return sub_224B5941C(v22);
}

double sub_224B58274()
{
  v4 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_224B58360(v0, &v4);
  os_unfair_lock_unlock(*(v1 + 16));

  if (v4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224B594A8();
    sub_224DAB398();
  }

  return result;
}

void sub_224B58360(uint64_t a1, _BYTE *a2)
{
  v3 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason;
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) != 1)
  {
    if (v4 == 3)
    {
      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v10 = sub_224DAB258();
      __swift_project_value_buffer(v10, qword_281364DF0);
      v6 = sub_224DAB228();
      v7 = sub_224DAF2A8();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_37;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "SignificantTimeChangeNotification: ignoring; no pending notification and not started";
LABEL_12:
      _os_log_impl(&dword_224A2F000, v6, v7, v9, v8, 2u);
LABEL_36:
      MEMORY[0x22AA5EED0](v8, -1, -1);
      goto LABEL_37;
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281364DF0);

    v6 = sub_224DAB228();
    v20 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v20))
    {

LABEL_37:

      return;
    }

    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v8 = 136446210;
    v22 = *(a1 + v3);

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_39;
      }

      v23 = 0x656E6F7A656D6974;
      v24 = 0xEE0065676E616843;
    }

    else if (v22)
    {
      v23 = 0x76617254656D6974;
      v24 = 0xEA00000000006C65;
    }

    else
    {
      v23 = 0x7665446B636F6C63;
      v24 = 0xEE006E6F69746169;
    }

    v26 = sub_224A33F74(v23, v24, &v28);

    *(v8 + 4) = v26;
    _os_log_impl(&dword_224A2F000, v6, v20, "SignificantTimeChangeNotification: pending (%{public}s); not started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    goto LABEL_36;
  }

  if (v4 == 3)
  {
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364DF0);
    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_37;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SignificantTimeChangeNotification: ignoring; no pending notification";
    goto LABEL_12;
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364DF0);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (!os_log_type_enabled(v12, v13))
  {

LABEL_33:

    *a2 = 1;
    *(a1 + v3) = 3;
    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v28 = v15;
  *v14 = 136446210;
  v16 = *(a1 + v3);

  if (v16 <= 1)
  {
    if (v16)
    {
      v17 = 0x76617254656D6974;
      v18 = 0xEA00000000006C65;
    }

    else
    {
      v17 = 0x7665446B636F6C63;
      v18 = 0xEE006E6F69746169;
    }

    goto LABEL_32;
  }

  if (v16 == 2)
  {
    v17 = 0x656E6F7A656D6974;
    v18 = 0xEE0065676E616843;
LABEL_32:
    v25 = sub_224A33F74(v17, v18, &v28);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_224A2F000, v12, v13, "SignificantTimeChangeNotification: notifying (%{public}s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    goto LABEL_33;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_224B58850()
{
  v1 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_224B5941C(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes);

  return swift_deallocClassInstance();
}

uint64_t sub_224B5892C(uint64_t a1)
{
  result = type metadata accessor for SignificantTimeChangeNotification.Times(319);
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

void sub_224B58A18()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x646C726F77;
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 40) = 0xE500000000000000;
  v7 = v0 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  (*(v2 + 16))(v5, v7, v1);
  sub_224DA97D8();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000224DC6E40;
  v11 = *(v7 + *(type metadata accessor for SignificantTimeChangeNotification.Times(0) + 24));
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v11;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_224DAECC8();

  v14 = sub_224DAEDE8();
  [v12 setObject:v13 forKey:v14];
}

void sub_224B58CA4()
{
  v0 = sub_224DAC378();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224DA9878();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9A08();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_224DAEDE8();
  v18 = [v16 dictionaryForKey_];

  if (!v18)
  {
    sub_224DA9868();
    sub_224DAC338();
    sub_224DA99F8();
    sub_224DA9868();
    v28 = sub_224DA99C8();
    (*(v4 + 8))(v7, v3);
    (*(v29 + 8))(v11, v8);
    *&v15[*(v12 + 24)] = v28;
    sub_224B59998(v15, v33 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes);
    return;
  }

  v19 = v33;
  v20 = sub_224DAECE8();

  if (!*(v20 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = sub_224A3A40C(0x646C726F77, 0xE500000000000000);
  if ((v22 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_224A33E0C(*(v20 + 56) + 32 * v21, v35);
  sub_224A739A4(v35, v36);
  swift_dynamicCast();
  sub_224DA97C8();
  v23 = v32;
  sub_224DAC338();
  if (*(v20 + 16))
  {
    v24 = sub_224A3A40C(0xD000000000000016, 0x8000000224DC6E40);
    if (v25)
    {
      sub_224A33E0C(*(v20 + 56) + 32 * v24, v35);

      sub_224A739A4(v35, v36);
      swift_dynamicCast();
      v26 = v34;
      v27 = v19 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
      (*(v4 + 32))(v19 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes, v7, v3);
      (*(v30 + 32))(v27 + *(v12 + 20), v23, v31);
      *(v27 + *(v12 + 24)) = v26;
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_224B59110()
{
  sub_224B5941C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes);

  return swift_deallocClassInstance();
}

uint64_t sub_224B5919C(uint64_t a1)
{
  result = type metadata accessor for SignificantTimeChangeNotification.Times(319);
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

uint64_t sub_224B59264(uint64_t a1)
{
  result = sub_224DA9878();
  if (v2 <= 0x3F)
  {
    result = sub_224DAC378();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224B592F4()
{
  result = qword_27D6F4258;
  if (!qword_27D6F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4258);
  }

  return result;
}

uint64_t sub_224B59348(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  sub_224B593B8(a1, v3 + v4);
  swift_endAccess();
  sub_224B58A18();
  return sub_224B5941C(a1);
}

uint64_t sub_224B593B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B5941C(uint64_t a1)
{
  v2 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B59478@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_224B594A8()
{
  result = qword_281350EF0;
  if (!qword_281350EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EF0);
  }

  return result;
}

uint64_t sub_224B5950C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B59570(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC378();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v27 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v27 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = v27 - v18;
  sub_224DA9838();
  v21 = v20;
  result = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v23 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_224DAC348();
  sub_224DAC348();
  sub_224DAC348();
  sub_224B59870(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
  if (sub_224DAEDB8())
  {
    v27[1] = a2;
    v24 = *(v4 + 32);
    v24(v8, v16, v3);
    v24(v16, v12, v3);
    v24(v12, v8, v3);
  }

  if (sub_224DAC318())
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_224DAEDB8();
  }

  v26 = *(v4 + 8);
  v26(v12, v3);
  v26(v16, v3);
  v26(v19, v3);
  return v25 & 1;
}

uint64_t sub_224B59870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224B598B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4260, &qword_224DB6460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B59928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4260, &qword_224DB6460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B59998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B599FC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v32 = v33;
    v3 = v1 + 64;
    v4 = sub_224DAF798();
    v5 = 0;
    v6 = *(v1 + 36);
    v27 = v1 + 72;
    v28 = v2;
    v29 = v6;
    v30 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v31 = v5;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = v1;
      v13 = *v10;
      v12 = v10[1];
      v14 = *(v9 + 8 * v4);

      v15 = v14;
      MEMORY[0x22AA5D210](v13, v12);
      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();

      v16 = v32;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_224A3DFD8((v17 > 1), v18 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v3 = v30;
      v20 = *(v30 + 8 * v8);
      if ((v20 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v32 = v16;
      v6 = v29;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v4 & 0x3F));
      if (v21)
      {
        v7 = __clz(__rbit64(v21)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (v27 + 8 * v8);
        while (v23 < (v7 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_224A3E204(v4, v29, 0);
            v7 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v4, v29, 0);
      }

LABEL_4:
      v5 = v31 + 1;
      v4 = v7;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
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

void sub_224B59CCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v27 = v33;
    v3 = v1 + 64;
    v4 = sub_224DAF798();
    v5 = 0;
    v28 = *(v1 + 36);
    v23 = v1 + 72;
    v24 = v2;
    v25 = v1 + 64;
    v26 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v28 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(v1 + 48) + 16 * v4);
      v9 = *(*(v1 + 56) + 8 * v4);
      v31 = *v8;
      v32 = v8[1];
      swift_bridgeObjectRetain_n();
      v10 = v9;
      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      swift_getErrorValue();
      v11 = sub_224D1680C(v29, v30);
      MEMORY[0x22AA5D210](v11);

      v12 = v27;
      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_224A3DFD8((v13 > 1), v14 + 1, 1);
        v12 = v27;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v31;
      *(v15 + 40) = v32;
      v1 = v26;
      v6 = 1 << *(v26 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = v25;
      v16 = *(v25 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v27 = v12;
      if (v28 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v6 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (v23 + 8 * v7);
        while (v19 < (v6 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_224A3E204(v4, v28, 0);
            v6 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v4, v28, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
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

uint64_t sub_224B59F80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B59FEC()
{
  v0 = sub_224DAD448();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DADC48();
  (*(v1 + 104))(v4, *MEMORY[0x277CF9CC8], v0);
  v6 = sub_224CD6C74(v4, v5);

  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_224B5A0FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DADC38();
  *a1 = result;
  return result;
}

uint64_t sub_224B5A128(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  while (1)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_3:
    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281364CD0);

    v11 = sub_224DAB228();
    v12 = sub_224DAF2A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38[0] = v14;
      *v13 = 136446210;
      sub_224DACF58();
      sub_224DAF538();
      sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      v15 = sub_224DAF1C8();
      v17 = v16;

      v18 = sub_224A33F74(v15, v17, v38);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v11, v12, "Got updated descriptor collection with identities %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v13, -1, -1);
    }

    v19 = sub_224DACF58();
    v20 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_224DAF7E8();
      sub_224DAF538();
      sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v20 = v38[0];
      v21 = v38[1];
      v22 = v38[2];
      v23 = v38[3];
      v24 = v38[4];
    }

    else
    {
      v23 = 0;
      v25 = -1 << *(v19 + 32);
      v21 = v19 + 56;
      v22 = ~v25;
      v26 = -v25;
      v27 = v26 < 64 ? ~(-1 << v26) : -1;
      v24 = v27 & *(v19 + 56);
    }

    if (v20 < 0)
    {
      break;
    }

LABEL_12:
    v28 = v23;
    v29 = v24;
    v30 = v23;
    if (v24)
    {
LABEL_16:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v20 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (v32)
      {
        goto LABEL_20;
      }

      return sub_224A3B7E4(v20);
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= ((v22 + 64) >> 6))
      {
        return sub_224A3B7E4(v20);
      }

      v29 = *(v21 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v33 = sub_224DAF878();
    if (!v33)
    {
      break;
    }

    v36[1] = v33;
    sub_224DAF538();
    swift_dynamicCast();
    v32 = v37;
    v30 = v23;
    v31 = v24;
    if (!v37)
    {
      break;
    }

LABEL_20:
    v34 = v32;
    sub_224B6627C(v34, v2, v34);

    v23 = v30;
    v24 = v31;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  return sub_224A3B7E4(v20);
}

void *sub_224B5A58C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  swift_unknownObjectRelease();
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, &unk_27D6F4680, &unk_224DB4610);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter));

  return v0;
}

uint64_t sub_224B5A67C()
{
  sub_224B5A58C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetRelevanceService(uint64_t a1)
{
  result = qword_2813570A8;
  if (!qword_2813570A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224B5A728(uint64_t a1)
{
  sub_224B5A81C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_224B5A81C(uint64_t a1)
{
  if (!qword_281351A68)
  {
    sub_224DA9688();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281351A68);
    }
  }
}

void sub_224B5A874()
{
  v1 = v0;
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364CD0);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "start", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_224B67CEC;
  *(v7 + 24) = v1;
  v9[4] = sub_224A8A838;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_224A9B6F8;
  v9[3] = &block_descriptor_129;
  v8 = _Block_copy(v9);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_224B5AA68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  MEMORY[0x28223BE20](v10, v11);
  v14 = &v23 - v13;
  v15 = &unk_281357000;
  if (!a1[22])
  {
    v16 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider + 24);
    v25 = v12;
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider), v16);
    v24 = sub_224DAA168();
    v27 = v24;
    v28 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v17 = v28;
    v18 = sub_224DAF358();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
    sub_224B67CF4();
    v15 = &unk_281357000;
    sub_224DAB448();
    sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600, MEMORY[0x277CBCD60]);
    v19 = sub_224DAB488();

    (*(v25 + 8))(v14, v10);
    *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken) = v19;
  }

  __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
  v27 = sub_224DAC698();
  v28 = *(a1 + v15[23]);
  v20 = v28;
  v21 = sub_224DAF358();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v26 + 8))(v5, v2);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  if (a1[22])
  {
    sub_224B5B340();
  }
}

double sub_224B5B028(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23[-1] - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v7)
    {
      if (qword_2813513D8 != -1)
      {
        swift_once();
      }

      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_281364CD0);
      v12 = sub_224DAB228();
      v13 = sub_224DAF2A8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_224A2F000, v12, v13, "First unlock event received with relevanceCacheManager being nil.  Reloading any default intents if necessary...", v14, 2u);
        MEMORY[0x22AA5EED0](v14, -1, -1);
      }

      sub_224DAD348();
      sub_224A3317C((v10 + 17), &v24);
      v15 = v10[10];
      v16 = v10[11];
      v17 = __swift_project_boxed_opaque_existential_1(v10 + 7, v15);
      v18 = *(v16 + 40);
      v23[3] = v15;
      v23[4] = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
      sub_224A3796C(v10 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, v6, &unk_27D6F4680, &unk_224DB4610);
      v20 = sub_224DAD338();
      v21 = sub_224A80F00(&qword_27D6F4288, MEMORY[0x277CF9C98], MEMORY[0x277CF9C90]);
      v10[22] = v20;
      v10[23] = v21;
      swift_unknownObjectRelease();
      sub_224B5B340();
    }
  }

  return result;
}

void sub_224B5B340()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = v0[22];
  if (!v6)
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281364CD0);
    v27 = sub_224DAB228();
    v17 = sub_224DAF2A8();
    if (os_log_type_enabled(v27, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224A2F000, v27, v17, "func _queue_reap - nil relevanceCacheManager returning early", v18, 2u);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    v19 = v27;

    return;
  }

  v27 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  swift_unknownObjectRetain();
  v7 = sub_224DADA38();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_23:
    v20 = sub_224DAF128();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = v27;
    v21[4] = v6;
    v21[5] = v22;
    v21[6] = v8;
    v21[7] = v1;

    sub_224D8E744(0, 0, v5, &unk_224DB6610, v21);

    return;
  }

  v9 = sub_224DACF18();

  if (v9 >> 62)
  {
    v10 = sub_224DAF838();
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_5:
  v24 = v6;
  v25 = v5;
  v26 = v0;
  v28 = v8;
  sub_224DAF9E8();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AA5DCC0](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 extensionIdentity];
      v15 = [v13 kind];
      if (!v15)
      {
        sub_224DAEE18();
        v15 = sub_224DAEDE8();
      }

      ++v11;
      [objc_allocWithZone(MEMORY[0x277CFA418]) initWithExtensionIdentity:v14 kind:v15];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v10 != v11);

    v8 = v28;
    v5 = v25;
    v1 = v26;
    v6 = v24;
    goto LABEL_23;
  }

  __break(1u);
}

double sub_224B5B704(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(v4);
  }

  return result;
}

double sub_224B5B778(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  BSDispatchQueueAssert();
  v8 = *(v1 + 176);
  if (v8)
  {
    v9 = *(v1 + 184);
    v10 = qword_2813513D8;
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281364CD0);

    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = *(a1 + 16);

      _os_log_impl(&dword_224A2F000, v12, v13, "Purging %{public}ld widget relevances", v14, 0xCu);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    else
    {
    }

    v20 = sub_224DAF128();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a1;
    v21[5] = v8;
    v21[6] = v9;
    v21[7] = v2;

    sub_224D8E744(0, 0, v7, &unk_224DB6620, v21);
  }

  else
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281364CD0);
    v23 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224A2F000, v23, v16, "func _queue_handleExtensionsRemoved with nil relevanceCacheManager returning early", v17, 2u);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    v18 = v23;
  }

  return result;
}

void sub_224B5BA90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v49 = v38 - v10;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  if (!sub_224DADA38())
  {
    return;
  }

  v11 = sub_224DACF58();

  v38[1] = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v11 = v55;
    v12 = v56;
    v13 = v57;
    v14 = v58;
    v15 = v59;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
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

    v15 = v18 & *(v11 + 56);

    v14 = 0;
  }

  v38[0] = v13;
  v19 = (v13 + 64) >> 6;
  v44 = (v4 + 16);
  v45 = (v4 + 8);
  v20 = MEMORY[0x277CFA138];
  v39 = a1;
  v40 = v8;
  v43 = v12;
  for (i = v11; ; v11 = i)
  {
    v46 = v14;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v24 = sub_224DAF878();
    if (!v24)
    {
      goto LABEL_32;
    }

    v51 = v24;
    sub_224DAF538();
    swift_dynamicCast();
    v23 = v53;
    v48 = v15;
    if (!v53)
    {
      goto LABEL_32;
    }

LABEL_20:
    v47 = v15;
    v25 = *v20;
    swift_beginAccess();
    v26 = v23;
    v27 = *v44;
    v50 = v26;
    v27(v49, &v26[v25], v3);
    v28 = *v20;
    swift_beginAccess();
    v27(v8, (a1 + v28), v3);
    sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB8]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    if (v53 == v51 && v54 == v52)
    {
      v29 = *v45;
      (*v45)(v8, v3);
      v29(v49, v3);
    }

    else
    {
      v41 = sub_224DAFD88();
      v30 = *v45;
      (*v45)(v8, v3);
      v30(v49, v3);

      if ((v41 & 1) == 0)
      {

        v15 = v48;
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    swift_beginAccess();

    v31 = sub_224DAA058();
    v33 = v32;

    v34 = sub_224DAA058();
    v36 = v35;

    if (!v33)
    {
      if (!v36)
      {
        goto LABEL_36;
      }

LABEL_31:

      v15 = v48;
      a1 = v39;
      v8 = v40;
      goto LABEL_10;
    }

    if (!v36)
    {
      goto LABEL_31;
    }

    if (v31 == v34 && v33 == v36)
    {

LABEL_36:
      v11 = i;
LABEL_32:
      sub_224A3B7E4(v11);

      return;
    }

    v37 = sub_224DAFD88();

    v8 = v40;
    if (v37)
    {
      goto LABEL_36;
    }

    v15 = v48;
    a1 = v39;
LABEL_10:
    v12 = v43;
  }

  v21 = v14;
  v22 = v15;
  if (v15)
  {
LABEL_16:
    v48 = (v22 - 1) & v22;
    v23 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_32;
    }

    v22 = *(v12 + 8 * v14);
    ++v21;
    if (v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_224B5C188(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v122 = a2;
  v123 = a4;
  v10 = sub_224DAB798();
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v111 = (&v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_224DAB878();
  v114 = *(v13 - 8);
  v115 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v109 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v110 = &v106 - v18;
  v117 = sub_224DA9878();
  v119 = *(v117 - 8);
  v20 = MEMORY[0x28223BE20](v117, v19);
  v116 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v118 = &v106 - v23;
  v24 = sub_224DAB7B8();
  MEMORY[0x28223BE20](v24, v25);
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v6 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v120 = v31;
  v32 = sub_224DAB8F8();
  (*(v27 + 8))(v30, v26);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v6 + 176))
  {
    v33 = objc_allocWithZone(MEMORY[0x277CFA418]);
    v32 = v122;
    v34 = sub_224DAEDE8();
    v35 = [v33 initWithExtensionIdentity:a1 kind:v34];

    v36 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
    swift_beginAccess();
    v37 = *(v6 + v36);
    v121 = v35;
    v38 = sub_224D24244(v35, v37);
    if (v38)
    {
      v30 = v38;
      swift_endAccess();
      if (qword_2813513D8 == -1)
      {
LABEL_5:
        v39 = sub_224DAB258();
        __swift_project_value_buffer(v39, qword_281364CD0);
        v40 = a1;

        v41 = sub_224DAB228();
        v42 = sub_224DAF2A8();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v45 = a3;
          v46 = swift_slowAlloc();
          aBlock[0] = v46;
          *v43 = 138543618;
          *(v43 + 4) = v40;
          *v44 = v40;
          *(v43 + 12) = 2082;
          v47 = v40;
          *(v43 + 14) = sub_224A33F74(v32, v45, aBlock);
          _os_log_impl(&dword_224A2F000, v41, v42, "[%{public}@-%{public}s] debouncing _queue_reloadWidgetRelevances due to frequent calling", v43, 0x16u);
          sub_224A3311C(v44, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v44, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x22AA5EED0](v46, -1, -1);
          MEMORY[0x22AA5EED0](v43, -1, -1);
        }

        v48 = v121;
        v49 = swift_allocObject();
        *(v49 + 16) = v123;
        *(v49 + 24) = a5;
        swift_beginAccess();
        v50 = v30[6];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30[6] = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_224AD95EC(0, v50[2] + 1, 1, v50);
          v30[6] = v50;
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v50 = sub_224AD95EC((v52 > 1), v53 + 1, 1, v50);
        }

        v50[2] = v53 + 1;
        v54 = &v50[2 * v53];
        v54[4] = sub_224B680D4;
        v54[5] = v49;
        v30[6] = v50;
        swift_endAccess();

        v30[5] = 0;

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_5;
    }

    swift_endAccess();
    type metadata accessor for WidgetRelevanceRefreshTask();
    v61 = swift_allocObject();
    v61[2] = a1;
    v61[3] = v32;
    v61[4] = a3;
    v61[5] = 0;
    v108 = v61;
    v61[6] = MEMORY[0x277D84F90];
    v62 = (v61 + 6);
    v63 = swift_allocObject();
    *(v63 + 16) = v123;
    *(v63 + 24) = a5;
    swift_beginAccess();
    v64 = *v62;
    v65 = a1;
    v123 = a3;

    v66 = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v64;
    v107 = v65;
    if ((v66 & 1) == 0)
    {
      v64 = sub_224AD95EC(0, v64[2] + 1, 1, v64);
      *v62 = v64;
    }

    v67 = v121;
    v69 = v64[2];
    v68 = v64[3];
    if (v69 >= v68 >> 1)
    {
      v64 = sub_224AD95EC((v68 > 1), v69 + 1, 1, v64);
    }

    v64[2] = v69 + 1;
    v70 = &v64[2 * v69];
    v70[4] = sub_224B675D8;
    v70[5] = v63;
    *v62 = v64;
    swift_endAccess();
    swift_beginAccess();
    v71 = *(v6 + v36);
    if ((v71 & 0xC000000000000001) != 0)
    {
      if (v71 < 0)
      {
        v72 = *(v6 + v36);
      }

      else
      {
        v72 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v73 = v67;
      v74 = v108;

      v75 = sub_224DAF838();
      if (__OFADD__(v75, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      *(v6 + v36) = sub_224D2CB80(v72, v75 + 1);
    }

    else
    {
      v76 = v67;
      v74 = v108;
    }

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *(v6 + v36);
    sub_224B208F8(v74, v67, v77);
    *(v6 + v36) = v125;

    swift_endAccess();
    v78 = swift_allocObject();
    v78[2] = v6;
    v78[3] = v67;
    v78[4] = v74;
    aBlock[4] = sub_224B67604;
    aBlock[5] = v78;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_45;
    _Block_copy(aBlock);
    v125 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v69 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    sub_224DAB8B8();
    swift_allocObject();
    sub_224DAB8A8();

    v79 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates;
    swift_beginAccess();
    v80 = *(v6 + v79);
    if (*(v80 + 16) && (v81 = sub_224B0B854(v69), (v82 & 1) != 0))
    {
      v84 = v118;
      v83 = v119;
      v36 = v117;
      (*(v119 + 16))(v118, *(v80 + 56) + *(v119 + 72) * v81, v117);
      swift_endAccess();
      v85 = v116;
      sub_224DA9808();
      sub_224DA9758();
      v87 = v86;
      v88 = *(v83 + 8);
      v72 = v83 + 8;
      v67 = v88;
      v88(v85, v36);
      if (v87 < 4.0)
      {
        if (qword_2813513D8 == -1)
        {
LABEL_32:
          v119 = v72;
          v89 = sub_224DAB258();
          __swift_project_value_buffer(v89, qword_281364CD0);
          v90 = v107;
          v91 = v123;

          v92 = sub_224DAB228();
          v93 = sub_224DAF2A8();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            aBlock[0] = v96;
            *v94 = 138543618;
            *(v94 + 4) = v90;
            *v95 = v90;
            *(v94 + 12) = 2082;
            v97 = v90;
            *(v94 + 14) = sub_224A33F74(v122, v91, aBlock);
            _os_log_impl(&dword_224A2F000, v92, v93, "[%{public}@-%{public}s] delaying _queue_reloadWidgetRelevances due to frequent calling", v94, 0x16u);
            sub_224A3311C(v95, &unk_27D6F69F0, &unk_224DB3900);
            v98 = v95;
            v36 = v117;
            MEMORY[0x22AA5EED0](v98, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v96);
            MEMORY[0x22AA5EED0](v96, -1, -1);
            MEMORY[0x22AA5EED0](v94, -1, -1);
          }

          v99 = v109;
          sub_224DAB858();
          v100 = v111;
          *v111 = 4;
          v102 = v112;
          v101 = v113;
          (*(v112 + 104))(v100, *MEMORY[0x277D85188], v113);
          v103 = v110;
          MEMORY[0x22AA59C40](v99, v100);
          (*(v102 + 8))(v100, v101);
          v104 = v115;
          v105 = *(v114 + 8);
          v105(v99, v115);
          sub_224DAF328();

          v105(v103, v104);
          (v67)(v118, v36);
          return;
        }

LABEL_41:
        swift_once();
        goto LABEL_32;
      }

      (v67)(v84, v36);
    }

    else
    {
      swift_endAccess();
    }

    sub_224DAF408();

    return;
  }

  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v55 = sub_224DAB258();
  __swift_project_value_buffer(v55, qword_281364CD0);
  v56 = sub_224DAB228();
  v57 = sub_224DAF2A8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_224A2F000, v56, v57, "func _queue_reloadWidgetRelevances with nil relevanceCacheManager returning early", v58, 2u);
    MEMORY[0x22AA5EED0](v58, -1, -1);
  }

  sub_224B67480();
  v59 = swift_allocError();
  *v60 = 0;
  *(v60 + 8) = 5;
  v123();
}

double sub_224B5CF4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_224DAB7B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAB848();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_224B6786C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_96;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  sub_224DAB7E8();
  v23 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);

  return result;
}

void sub_224B5D240(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v78 = a1;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DADA98();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB8C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v21 = v22;
  v23 = *(v18 + 104);
  v73 = *MEMORY[0x277D85200];
  v74 = v18 + 104;
  v72 = v23;
  v23(v21);
  v70 = v22;
  LOBYTE(v22) = sub_224DAB8F8();
  v24 = *(v18 + 8);
  v75 = v17;
  v71 = v24;
  v24(v21, v17);
  if (v22)
  {
    v62 = v10;
    v76 = a3;
    v63 = v7;
    v64 = v6;
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364CD0);
  v26 = v78;
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_224A2F000, v27, v28, "[%{public}@] batch reload requested", v29, 0xCu);
    sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  sub_224B5BA90(v26);
  if (!v32)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v42 = sub_224CBC42C(24, 0xD000000000000025, 0x8000000224DC72C0);
    v77();
LABEL_11:

    return;
  }

  v33 = v32;
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  if (!sub_224DADA38())
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v42 = sub_224CBC42C(24, 0xD000000000000034, 0x8000000224DC72F0);
    v77();

    goto LABEL_11;
  }

  sub_224DACA18();
  v34 = v69;
  sub_224DACF08();

  (*(v68 + 8))(v16, v34);
  v35 = sub_224B5DB74(aBlock[0]);

  v36 = v33;

  v37 = sub_224DAB228();
  v38 = sub_224DAF2A8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543618;
    *(v39 + 4) = v36;
    *v40 = v33;
    *(v39 + 12) = 2050;
    *(v39 + 14) = *(v35 + 16);
    v41 = v36;

    _os_log_impl(&dword_224A2F000, v37, v38, "[%{public}@] batch reload beginning with %{public}ld kinds", v39, 0x16u);
    sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {
  }

  v43 = v75;
  v44 = v73;
  v46 = v71;
  v45 = v72;
  v47 = v70;
  *v21 = v70;
  v45(v21, v44, v43);
  v48 = v47;
  LOBYTE(v47) = sub_224DAB8F8();
  v46(v21, v43);
  if (v47)
  {
    v78 = v48;
    v49 = dispatch_group_create();
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x277D84F98];
    v51 = *(v35 + 16);
    if (v51)
    {
      v52 = (v35 + 40);
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;

        dispatch_group_enter(v49);

        v55 = v49;
        sub_224B652F4(v36, v53, v54, v4, v4, v50, v53, v54, v55);

        swift_bridgeObjectRelease_n();
        v52 += 2;
        --v51;
      }

      while (v51);
    }

    v56 = swift_allocObject();
    v57 = v76;
    v56[2] = v77;
    v56[3] = v57;
    v56[4] = v4;
    v56[5] = v50;
    aBlock[4] = sub_224B67898;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_105;
    v58 = _Block_copy(aBlock);

    v77 = v35;
    v59 = v65;
    sub_224DAB7E8();
    v79 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v60 = v67;
    v61 = v64;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v58);

    (*(v63 + 8))(v60, v61);
    (*(v66 + 8))(v59, v62);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224B5DB74(void *a1)
{
  v43[2] = a1;
  sub_224A33088(&qword_281350CF8, &unk_27D6F55E0, &unk_224DB65D0, MEMORY[0x277CF9C58]);
  v2 = sub_224DAEF48();
  v43[0] = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
  v3 = v43[0];
  v40 = a1;

  v4 = &v40;
  sub_224DAEF38();
  if (v2 < 0)
  {
    goto LABEL_43;
  }

  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = v41;
  if (v41 >> 62)
  {
    goto LABEL_44;
  }

  v32 = v41 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v6 = 0;
  v35 = v4 & 0xC000000000000001;
  v37 = v42;
  v33 = v4;
  v34 = v2;
  v31 = v4 + 8 * v42 + 32;
  v38 = (v42 - v5);
  do
  {
    if (v6 >= v2)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v32 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = sub_224DAF838();
      goto LABEL_5;
    }

    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_38;
    }

    if (!&v38[v6])
    {
      goto LABEL_39;
    }

    v8 = v37 + v6;
    if (v35)
    {
      v9 = MEMORY[0x22AA5DCC0](v37 + v6, v33);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v8 >= *(v32 + 16))
      {
        goto LABEL_42;
      }

      v9 = *(v31 + 8 * v6);
    }

    v4 = v9;
    v10 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      goto LABEL_40;
    }

    v11 = [v9 kind];
    v12 = sub_224DAEE18();
    v14 = v13;

    v43[0] = v3;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    if (v16 >= v15 >> 1)
    {
      v4 = v43;
      sub_224A3DFD8((v15 > 1), v16 + 1, 1);
      v3 = v43[0];
    }

    *(v3 + 16) = v16 + 1;
    v17 = v3 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
    ++v6;
    v2 = v34;
  }

  while (v7 != v34);
  v42 = v10;
LABEL_19:
  v18 = v41 & 0xFFFFFFFFFFFFFF8;
  v39 = v41 & 0xC000000000000001;
  v2 = v41 + 32;
  v36 = v41;
  v19 = v41 >> 62;
  if (!(v41 >> 62))
  {
LABEL_20:
    v20 = *(v18 + 16);
    goto LABEL_22;
  }

  while (1)
  {
    v20 = sub_224DAF838();
LABEL_22:
    v4 = v42;
    if (v42 == v20)
    {
      break;
    }

    if (v39)
    {
      v21 = MEMORY[0x22AA5DCC0](v42, v36);
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v42 >= *(v18 + 16))
      {
        goto LABEL_36;
      }

      v21 = *(v2 + 8 * v42);
    }

    v22 = v21;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v42 = v4 + 1;
    v23 = [v21 kind];
    v24 = sub_224DAEE18();
    v26 = v25;

    v43[0] = v3;
    v28 = *(v3 + 16);
    v27 = *(v3 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_224A3DFD8((v27 > 1), v28 + 1, 1);
      v3 = v43[0];
    }

    *(v3 + 16) = v28 + 1;
    v29 = v3 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v3;
}

uint64_t sub_224B5DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x2822009F8](sub_224B5DF20, 0, 0);
}

uint64_t sub_224B5DF20()
{
  v1 = *(v0 + 56);
  v2 = v1[2];
  *(v0 + 88) = v2;
  if (v2)
  {
    ObjectType = swift_getObjectType();
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 96) = ObjectType;
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    *(v0 + 120) = sub_224DAE338();
    v5 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v5, v4);
  }

  else
  {
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = 1;
    sub_224DAB348();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_224B5E060()
{
  v1 = v0[13];
  sub_224DAD488();
  v0[16] = v1;
  v2 = v0[15];
  if (v1)
  {

    v3 = sub_224B5E2F8;
  }

  else
  {

    v3 = sub_224B5E104;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224B5E104()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 88))
  {
    v9 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v2 = 0;
    v3 = 32;
    do
    {
      v4 = *(v0 + 88);
      ++v2;
      sub_224A3317C(*(v0 + 56) + v3, v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v3 += 40;
    }

    while (v2 != v4);
    *(v0 + 16) = v9;
    *(v0 + 24) = 1;
    sub_224DAB348();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 104) = *(v0 + 128);
    *(v0 + 112) = v1;
    __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 40 * v1 + 32), *(*(v0 + 56) + 40 * v1 + 56));
    *(v0 + 120) = sub_224DAE338();
    v8 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v8, v7);
  }
}

uint64_t sub_224B5E2F8()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 88))
  {
    v9 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v2 = 0;
    v3 = 32;
    do
    {
      v4 = *(v0 + 88);
      ++v2;
      sub_224A3317C(*(v0 + 56) + v3, v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v3 += 40;
    }

    while (v2 != v4);
    *(v0 + 16) = v9;
    *(v0 + 24) = 1;
    sub_224DAB348();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = v1;
    __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 40 * v1 + 32), *(*(v0 + 56) + 40 * v1 + 56));
    *(v0 + 120) = sub_224DAE338();
    v8 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v8, v7);
  }
}

double sub_224B5E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v21 - v14;
  v16 = sub_224DAF128();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  swift_unknownObjectRetain();
  v19 = a5;
  swift_unknownObjectRetain();
  sub_224D00D34(0, 0, v15, &unk_224DB6570, v18);

  return result;
}

uint64_t sub_224B5E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v14;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = sub_224DAB7B8();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_224DAB848();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v11 = sub_224DA9688();
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B5E810, 0, 0);
}

uint64_t sub_224B5E810()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    swift_getObjectType();
    sub_224DABCF8();
    v0[29] = 0;
    (*(v0[25] + 32))(v0[27], v0[26], v0[24]);
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364CD0);
    v6 = v4;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_224A2F000, v7, v8, "Accepted content of write handle for %{public}@", v10, 0xCu);
      sub_224A3311C(v11, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    v0[30] = swift_getObjectType();
    v14 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5EAFC, v14, v13);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_224B5EAFC()
{
  v1 = *(v0 + 232);
  sub_224DAD468();
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_224B5EE24;
  }

  else
  {
    v2 = sub_224B5EB90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224B5EB90()
{
  v1 = v0[28];
  v15 = v0[24];
  v16 = v0[27];
  v2 = v0[20];
  v13 = v0[21];
  v14 = v0[25];
  v3 = v0[18];
  v11 = v0[19];
  v12 = v0[22];
  v4 = v0[15];
  v10 = v0[23];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[6] = sub_224B675D0;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_224A39F40;
  v0[5] = &block_descriptor_36;
  v6 = _Block_copy(v0 + 2);
  v7 = v4;

  sub_224DAB7E8();
  v0[11] = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v2, v6);
  _Block_release(v6);
  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v10, v13);
  (*(v14 + 8))(v16, v15);

  v8 = v0[1];

  return v8();
}

uint64_t sub_224B5EE24()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  sub_224B67480();
  swift_allocError();
  *v5 = v1;
  *(v5 + 8) = 4;
  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_224B5EF20(void *a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364CD0);
  v10 = a1;
  v11 = sub_224DAB228();
  v12 = sub_224DAF268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_224A2F000, v11, v12, "Publishing change of %{public}@", v13, 0xCu);
    sub_224A3311C(v14, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_224DB2780;
  *(v16 + 32) = v10;
  v17 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v8 = v17;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v18 = v10;
  v19 = v17;
  LOBYTE(v17) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if (v17)
  {
    v21 = v16;
    v22 = 0;

    sub_224DAB348();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B5F1C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4268, &qword_224DB6560);
  sub_224A33088(&qword_281350F88, &qword_27D6F4268, &qword_224DB6560, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224B5F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_224DAB7B8();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_224DAB848();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_getObjectType();
  v11 = sub_224DAF0C8();

  return MEMORY[0x2822009F8](sub_224B5F3A0, v11, v10);
}

uint64_t sub_224B5F3A0()
{
  *(v0 + 160) = sub_224DAD498();
  *(v0 + 168) = 0;

  return MEMORY[0x2822009F8](sub_224B5F434, 0, 0);
}

uint64_t sub_224B5F434()
{
  v1 = v0[20];
  if (v1 >> 62)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    result = sub_224DAF9E8();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [MEMORY[0x22AA5DCC0]() extensionIdentity];
        swift_unknownObjectRelease();
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v5 = v6;
      }

      while (v2 != v6);
    }

    else
    {
      v9 = (v0[20] + 32);
      do
      {
        v10 = *v9++;
        v11 = [v10 extensionIdentity];
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        --v2;
      }

      while (v2);
    }

    v8 = v23;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v12 = v0[18];
  v13 = v0[15];
  v21 = v0[17];
  v22 = v0[16];
  v14 = v0[13];
  v20 = v0[14];
  v15 = v0[12];
  v16 = sub_224A3DADC(v8);

  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v0[6] = sub_224B67E68;
  v0[7] = v17;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_224A39F40;
  v0[5] = &block_descriptor_141;
  v18 = _Block_copy(v0 + 2);

  sub_224DAB7E8();
  v0[8] = v3;
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v12, v13, v18);
  _Block_release(v18);
  (*(v20 + 8))(v13, v14);
  (*(v21 + 8))(v12, v22);

  v19 = v0[1];

  return v19();
}

uint64_t sub_224B5F7DC()
{
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364CD0);
  v3 = v1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224A2F000, v4, v5, "Failed to reap cache: %{public}@", v8, 0xCu);
    sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

double sub_224B5F994(uint64_t a1, uint64_t a2)
{
  sub_224D40590(a2);
  sub_224DAB348();

  return result;
}

void sub_224B5F9EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v11 = sub_224DAB8C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_224DAB8F8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (a1)
    {
      swift_beginAccess();
      v18 = a1;

      sub_224B07E2C(a1, a4, a5);
      swift_endAccess();
    }

    dispatch_group_leave(a6);
  }

  else
  {
    __break(1u);
  }
}

void sub_224B5FB74(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v6 = sub_224B678A4(v5);

  a1(v6);
}

double sub_224B5FBF0(void *a1)
{
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9878();
  v148 = *(v8 - 8);
  v149 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v143 = (&v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v145 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v142, v14);
  v147 = (&v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v134 - v18;
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  v28 = *(v21 + 8);
  v27 = v21 + 8;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = v150[22];
  if (v27)
  {
    v139 = v7;
    v140 = v4;
    v138 = v150[23];
    v7 = a1[2];
    v29 = a1[3];
    v4 = a1[4];
    v30 = objc_allocWithZone(MEMORY[0x277CFA418]);
    swift_unknownObjectRetain();

    v144 = v29;
    v31 = sub_224DAEDE8();
    v32 = [v30 initWithExtensionIdentity:v7 kind:v31];

    v33 = v32;
    sub_224DA9808();
    (*(v148 + 7))(v19, 0, 1, v149);
    swift_beginAccess();
    v146 = v33;
    sub_224B07F24(v19, v33);
    swift_endAccess();
    if (qword_2813513D8 == -1)
    {
LABEL_4:
      v34 = sub_224DAB258();
      v35 = __swift_project_value_buffer(v34, qword_281364CD0);

      v36 = v7;
      v37 = sub_224DAB228();
      v38 = sub_224DAF2A8();

      v39 = os_log_type_enabled(v37, v38);
      v141 = v3;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v136 = v35;
        v42 = a1;
        v43 = v41;
        v44 = v4;
        v45 = v27;
        v46 = swift_slowAlloc();
        v153[0] = v46;
        *v40 = 138543618;
        *(v40 + 4) = v36;
        *v43 = v36;
        *(v40 + 12) = 2082;
        v47 = v36;
        v48 = v144;
        *(v40 + 14) = sub_224A33F74(v144, v44, v153);
        _os_log_impl(&dword_224A2F000, v37, v38, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances requested", v40, 0x16u);
        sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
        v49 = v43;
        a1 = v42;
        MEMORY[0x22AA5EED0](v49, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v46);
        v50 = v46;
        v27 = v45;
        v4 = v44;
        MEMORY[0x22AA5EED0](v50, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      else
      {

        v48 = v144;
      }

      sub_224B60BDC(v36, v48, v4);
      v137 = v27;
      v136 = a1;

      v56 = v36;
      v57 = sub_224DAB228();
      v58 = sub_224DAF2A8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v153[0] = v61;
        *v59 = 138543618;
        *(v59 + 4) = v56;
        *v60 = v56;
        *(v59 + 12) = 2082;
        v62 = v56;
        *(v59 + 14) = sub_224A33F74(v48, v4, v153);
        _os_log_impl(&dword_224A2F000, v57, v58, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances beginning", v59, 0x16u);
        sub_224A3311C(v60, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v60, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x22AA5EED0](v61, -1, -1);
        MEMORY[0x22AA5EED0](v59, -1, -1);
      }

      v63 = v143;
      v64 = v147;
      *v147 = v56;
      v64[1] = v48;
      v64[2] = v4;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
      v65 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
      v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_224DB3100;
      v68 = sub_224DAE8B8();
      (*(*(v68 - 8) + 56))(v67 + v66, 3, 5, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
      v70 = v145;
      (*(*(v69 - 8) + 56))(v145, 1, 1, v69);
      v143 = type metadata accessor for ExtensionTask(0);
      v71 = objc_allocWithZone(v143);
      v72 = v56;

      v73 = v72;
      sub_224DAE908();
      v74 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      *&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
      v75 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
      v76 = sub_224DAC938();
      (*(*(v76 - 8) + 56))(&v71[v75], 1, 1, v76);
      v77 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
      *v77 = 0;
      v77[1] = 0;
      v78 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      *v78 = 0;
      v78[1] = 0;
      v79 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      *v79 = 0;
      v79[1] = 0;
      v80 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
      *v80 = 0;
      v80[1] = 0;
      sub_224DA9868();
      (*(v148 + 4))(&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v63, v149);
      *&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v56;
      v148 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
      sub_224A3F63C(v70, &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
      swift_beginAccess();
      *&v71[v74] = v67;
      v142 = v73;

      v81 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
      *v81 = 0;
      v81[8] = 1;
      v135 = type metadata accessor for ExtensionTask.Identifier;
      sub_224A3F63C(v147, &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
      v82 = v139;
      sub_224DA98F8();
      v83 = v140;
      v84 = *(v140 + 16);
      v149 = v4;
      v85 = v141;
      v84(&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v82, v141);
      v151 = sub_224DA98E8();
      sub_224A3F6A4();
      v86 = sub_224DAEF18();
      v88 = sub_224A3D19C(8, v86, v87);
      v90 = v89;
      v92 = v91;
      v94 = v93;

      v95 = MEMORY[0x22AA5D1C0](v88, v90, v92, v94);
      v97 = v96;

      v98 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      *v98 = v95;
      v98[1] = v97;
      v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
      v152.receiver = v71;
      v152.super_class = v143;
      v99 = objc_msgSendSuper2(&v152, sel_init);
      v100 = v142;

      (*(v83 + 8))(v82, v85);
      sub_224A3D238(v145, v148);
      sub_224A3D238(v147, v135);
      swift_getObjectType();
      v101 = sub_224DAD478();
      v103 = v102;
      v104 = v101;
      v105 = swift_allocObject();
      *(v105 + 16) = 0;
      *(v105 + 24) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
      v106 = swift_allocBox();
      v107 = v99;
      v143 = v99;
      v108 = v106;
      v110 = v109;
      v111 = sub_224DAB1F8();
      (*(*(v111 - 8) + 56))(v110, 1, 1, v111);
      v112 = swift_allocObject();
      v112[2] = v108;
      v112[3] = v100;
      v113 = v100;
      v114 = v150;
      v112[4] = v150;
      v112[5] = v104;
      v115 = v104;
      v116 = v144;
      v112[6] = v103;
      v112[7] = v116;
      v117 = v149;
      v112[8] = v149;
      v112[9] = v105;
      v118 = v146;
      v112[10] = v146;
      v119 = (v107 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem);
      v148 = v103;
      v120 = *(v107 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem);
      v121 = *(v107 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem + 8);
      *v119 = &unk_224DB6590;
      v119[1] = v112;
      v122 = v115;
      swift_unknownObjectRetain_n();

      v123 = v118;
      v124 = v113;

      sub_224A3D418(v120, v121);
      v125 = swift_allocObject();
      *(v125 + 2) = v114;
      *(v125 + 3) = v124;
      *(v125 + 4) = v116;
      *(v125 + 5) = v117;
      *(v125 + 6) = v105;
      *(v125 + 7) = v122;
      *(v125 + 8) = v148;
      *(v125 + 9) = v108;
      *(v125 + 10) = v136;
      *(v125 + 11) = v123;
      v126 = v143;
      v127 = (v143 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
      v128 = *(v143 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
      v129 = *(v143 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
      *v127 = sub_224B67710;
      v127[1] = v125;
      v130 = v123;
      v131 = v124;

      sub_224A3D418(v128, v129);
      v132 = v114[5];
      v133 = v114[6];
      __swift_project_boxed_opaque_existential_1(v114 + 2, v132);
      (*(v133 + 16))(v126, v132, v133);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      return result;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v51 = sub_224DAB258();
  __swift_project_value_buffer(v51, qword_281364CD0);
  v52 = sub_224DAB228();
  v53 = sub_224DAF298();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_224A2F000, v52, v53, "func _queue_debounced_reloadWidgetRelevances with nil relevanceCacheManager returning early. We should never get here", v54, 2u);
    MEMORY[0x22AA5EED0](v54, -1, -1);
  }

  return result;
}

void sub_224B60BDC(char *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = sub_224DADA98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  if (!sub_224DADA38())
  {
    goto LABEL_6;
  }

  v36 = a1;
  v37 = v9;
  sub_224DACA18();
  sub_224DACF08();

  (*(v11 + 8))(v14, v10);
  v15 = v44;
  v43 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  sub_224A33088(&qword_281350CF8, &unk_27D6F55E0, &unk_224DB65D0, MEMORY[0x277CF9C58]);
  sub_224DAEF38();
  v38 = v15;
  v39 = v41;
  if (v41 >> 62)
  {
LABEL_33:
    v16 = sub_224DAF838();
  }

  else
  {
    v16 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v42;
  if (v42 == v16)
  {
LABEL_5:

LABEL_6:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(1, 0xD00000000000003FLL, 0x8000000224DC7200);
    swift_willThrow();
    return;
  }

  v18 = v39 & 0xC000000000000001;
  v19 = v39 & 0xFFFFFFFFFFFFFF8;
  v20 = v39 + 32;
  while (1)
  {
    if (v18)
    {
      v21 = MEMORY[0x22AA5DCC0](v17, v39);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v17 >= *(v19 + 16))
      {
        goto LABEL_32;
      }

      v21 = *(v20 + 8 * v17);
    }

    v22 = v21;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    v42 = v17 + 1;
    v23 = [v21 kind];
    v24 = sub_224DAEE18();
    v26 = v25;

    if (v24 == a2 && v26 == v40)
    {

      goto LABEL_24;
    }

    v28 = sub_224DAFD88();

    if (v28)
    {
      break;
    }

    v17 = v42;
    if (v42 == v16)
    {
      goto LABEL_5;
    }
  }

LABEL_24:
  v29 = v36;
  v30 = [v36 isRemote];
  v31 = v37;
  if (v30)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v32 = 0x8000000224DC7280;
    v33 = 0xD000000000000030;
LABEL_28:
    sub_224CBC42C(24, v33, v32);
    swift_willThrow();

    return;
  }

  v34 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v29 + v34, v31, &unk_27D6F5060, &qword_224DB5620);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  if ((*(*(v35 - 8) + 48))(v31, 1, v35) == 1)
  {
    sub_224A3311C(v31, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v33 = 0xD000000000000039;
    v32 = 0x8000000224DC7240;
    goto LABEL_28;
  }

  sub_224A3311C(v31, &unk_27D6F5060, &qword_224DB5620);
}

uint64_t sub_224B610D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v13;
  v8[30] = v14;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[22] = a1;
  v9 = sub_224DA9688();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v10 = sub_224DAB1F8();
  v8[35] = v10;
  v8[36] = *(v10 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_224B61284, 0, 0);
}

uint64_t sub_224B61284()
{
  v55 = v0;
  if (qword_2813507E8 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  v5 = v0[36];
  v6 = qword_281364CC0;
  sub_224DAB1E8();
  (*(v5 + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_224A92290(v2, v1);
  swift_beginAccess();
  sub_224A3796C(v1, v3, &qword_27D6F4270, &qword_224DB6580);
  v7 = *(v5 + 48);
  if (v7(v3, 1, v4) == 1)
  {
    sub_224A3311C(v0[40], &qword_27D6F4270, &qword_224DB6580);
  }

  else
  {
    v8 = v0[38];
    v9 = v0[36];
    v52 = v0[35];
    v10 = v6;
    v11 = v0[23];
    (*(v9 + 32))(v8, v0[40]);
    v51 = sub_224DAF4B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_224DB3100;
    v13 = [v11 description];
    v14 = sub_224DAEE18();
    v16 = v15;

    v6 = v10;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_224A92300();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_224DAB1D8(v51, &dword_224A2F000, v10, "WidgetRelevancesReload", 22, 2, v8, "enableTelemetry=YES Performing reload task. BundleIdOverride=%{public, signpost.description:attribute}@", 103, 2, v12);

    (*(v9 + 8))(v8, v52);
  }

  v17 = v0[24];
  v18 = *(v17 + 176);
  v0[43] = v18;
  if (v18)
  {
    v19 = v0[22];
    v0[44] = *(v17 + 184);
    sub_224A3796C(v19, (v0 + 2), &qword_27D6F4760, &unk_224DB3680);
    if (v0[5])
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
      if (swift_dynamicCast())
      {
        v0[45] = v0[21];
        v0[46] = swift_getObjectType();
        v20 = sub_224DABCE8();
        v0[47] = v20;
        v34 = qword_2813513D8;
        v35 = v20;
        if (v34 != -1)
        {
          swift_once();
        }

        v36 = v0[23];
        v37 = sub_224DAB258();
        v0[48] = __swift_project_value_buffer(v37, qword_281364CD0);
        v38 = v36;

        v39 = sub_224DAB228();
        v40 = sub_224DAF2A8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = v0[27];
          v53 = v0[28];
          v42 = v0[23];
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v54 = v45;
          *v43 = 138543618;
          *(v43 + 4) = v42;
          *v44 = v42;
          *(v43 + 12) = 2082;
          v46 = v42;
          *(v43 + 14) = sub_224A33F74(v41, v53, &v54);
          _os_log_impl(&dword_224A2F000, v39, v40, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances fetching widget relevances", v43, 0x16u);
          sub_224A3311C(v44, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v44, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x22AA5EED0](v45, -1, -1);
          MEMORY[0x22AA5EED0](v43, -1, -1);
        }

        sub_224DAE5E8();

        v47 = sub_224DAE5D8();
        v0[49] = v47;
        ObjectType = swift_getObjectType();
        v49 = swift_task_alloc();
        v0[50] = v49;
        *v49 = v0;
        v49[1] = sub_224B61B24;

        return sub_224B623F4(v47, ObjectType);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      sub_224A3311C((v0 + 2), &qword_27D6F4760, &unk_224DB3680);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(6, 0xD000000000000029, 0x8000000224DC7120);
    swift_willThrow();
    swift_unknownObjectRelease();

    v24 = v0[1];
  }

  else
  {
    v21 = v0[42];
    v22 = v0[39];
    v23 = v0[35];
    swift_beginAccess();
    sub_224A3796C(v21, v22, &qword_27D6F4270, &qword_224DB6580);
    if (v7(v22, 1, v23) == 1)
    {
      sub_224A3311C(v0[39], &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v26 = v0[36];
      v25 = v0[37];
      v27 = v0[35];
      (*(v26 + 32))(v25, v0[39], v27);
      v28 = sub_224DAF4A8();
      LOBYTE(v50) = 2;
      sub_224DAB1D8(v28, &dword_224A2F000, v6, "WidgetRelevancesReload", 22, 2, v25, "Reload succeeded - nil relevanceCacheManager.", 45, v50, MEMORY[0x277D84F90]);
      (*(v26 + 8))(v25, v27);
    }

    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364CD0);
    v30 = sub_224DAB228();
    v31 = sub_224DAF298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_224A2F000, v30, v31, "func _queue_reloadWidgetRelevances - Task with nil relevanceCacheManager should never occur", v32, 2u);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_224B61B24()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_224B6218C;
  }

  else
  {
    v2 = sub_224B61C38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224B61C38()
{
  v1 = *(v0 + 408);

  sub_224DABCF8();
  *(v0 + 416) = v1;
  if (v1)
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 360);
    sub_224B67480();
    swift_allocError();
    *v4 = v1;
    *(v4 + 8) = 2;
    swift_willThrow();

    [v3 invalidate];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(*(v0 + 256) + 32))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
    *(v0 + 424) = swift_getObjectType();
    v8 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B61DFC, v8, v7);
  }
}

uint64_t sub_224B61DFC()
{
  v1 = v0[52];
  v0[54] = sub_224DAD468();
  v0[55] = v1;
  if (v1)
  {
    v2 = sub_224B622B0;
  }

  else
  {
    v2 = sub_224B61E90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224B61E90()
{
  v28 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  swift_beginAccess();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  swift_retain_n();
  v4 = v3;

  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v23 = *(v0 + 376);
    v24 = *(v0 + 256);
    v25 = *(v0 + 248);
    v26 = *(v0 + 272);
    v7 = *(v0 + 232);
    v22 = *(v0 + 224);
    v8 = *(v0 + 216);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138543874;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2082;
    v13 = v9;
    *(v10 + 14) = sub_224A33F74(v8, v22, &v27);
    *(v10 + 22) = 2050;
    swift_beginAccess();
    v14 = *(v7 + 16);
    LODWORD(v8) = *(v2 + 24);

    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    *(v10 + 24) = v15;

    _os_log_impl(&dword_224A2F000, v5, v6, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances success, %{public}ld relevances", v10, 0x20u);
    sub_224A3311C(v11, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x22AA5EED0](v12, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v16 = *(v0 + 376);
    v17 = *(v0 + 272);
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);

    (*(v19 + 8))(v17, v18);
  }

  [*(v0 + 360) invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_224B6218C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);

  sub_224B67480();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = 3;
  swift_willThrow();

  [v3 invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_224B622B0(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[47];
  v4 = v1[45];
  v5 = v1[34];
  v6 = v1[31];
  v7 = v1[32];
  sub_224B67480();
  swift_allocError();
  *v8 = v2;
  *(v8 + 8) = 4;
  swift_willThrow();

  (*(v7 + 8))(v5, v6);
  [v4 invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v1[1];

  return v9();
}

uint64_t sub_224B623F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_224B62418, 0, 0);
}

uint64_t sub_224B62418()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_224B62514;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_224B62514()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_224B62648;
  }

  else
  {

    v2 = sub_224B62630;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224B62648()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_224B626AC(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v37 = a3;
  v38 = a8;
  v36 = a2;
  v34 = a13;
  v35 = a10;
  v40 = sub_224DAB7B8();
  v44 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v18);
  v39 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB848();
  v42 = *(v20 - 8);
  v43 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  *(v24 + 48) = v38;
  *(v24 + 56) = a1;
  *(v24 + 64) = v36 & 1;
  v25 = v37;
  *(v24 + 72) = v37;
  *(v24 + 80) = a9;
  *(v24 + 88) = v35;
  *(v24 + 96) = a11;
  *(v24 + 104) = a12;
  *(v24 + 112) = a13;
  aBlock[4] = sub_224B67754;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_65;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v27 = a5;

  v28 = v25;

  v29 = v34;
  sub_224DAB7E8();
  v45 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v31 = v39;
  v30 = v40;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v23, v31, v26);
  _Block_release(v26);
  (*(v44 + 8))(v31, v30);
  (*(v42 + 8))(v23, v43);

  return result;
}

void sub_224B62A20(unint64_t a1, char *a2, void *a3, unint64_t a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  LODWORD(v101) = a7;
  v100 = a6;
  v105 = a4;
  v103 = a13;
  v98 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v93 = &v91 - v23;
  v102 = sub_224DAB1F8();
  v97 = *(v102 - 8);
  v25 = MEMORY[0x28223BE20](v102, v24);
  v92 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v91 = &v91 - v28;
  v95 = sub_224DAB8C8();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v29);
  v31 = (&v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = swift_projectBox();
  v104 = a1;
  sub_224A3317C(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter, &v109);
  v32 = v111;
  v33 = v112;
  __swift_project_boxed_opaque_existential_1(&v109, v111);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v34 = a2;
  v35 = sub_224DA9FE8();
  v37 = v36;
  swift_endAccess();
  swift_beginAccess();
  v38.n128_u64[0] = v100;
  if (v101)
  {
    v38.n128_f64[0] = 0.0;
  }

  (*(v33 + 8))(v35, v37, a3, v105, *(a5 + 16), *(a5 + 24), v32, v33, v38);

  __swift_destroy_boxed_opaque_existential_1(&v109);
  if (a8)
  {
    v40 = v103;
    v39 = v104;
    swift_getObjectType();
    v41 = a8;
    sub_224DABD08();
    v42 = v99;
    swift_beginAccess();
    v43 = v42;
    v44 = v96;
    sub_224A3796C(v43, v96, &qword_27D6F4270, &qword_224DB6580);
    v45 = v97;
    v46 = v102;
    if ((*(v97 + 48))(v44, 1, v102) == 1)
    {
      sub_224A3311C(v44, &qword_27D6F4270, &qword_224DB6580);
      v47 = v98;
      v48 = v40;
    }

    else
    {
      v59 = v92;
      (*(v45 + 32))(v92, v44, v46);
      v60 = sub_224DAF4A8();
      v47 = v98;
      v48 = v40;
      if (qword_2813507E8 != -1)
      {
        v89 = v60;
        swift_once();
        v60 = v89;
      }

      sub_224DAB1D8(v60, &dword_224A2F000, qword_281364CC0, "WidgetRelevancesReload", 22, 2, v59, "Reload failed.", 14, 2, MEMORY[0x277D84F90]);
      (*(v45 + 8))(v59, v46);
    }

    v61 = v47[5];
    v62 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      swift_getErrorValue();
      if ((sub_224B6352C(v106) & 1) != 0 && v62 <= 2)
      {
        if (qword_2813513D8 != -1)
        {
          swift_once();
        }

        v63 = sub_224DAB258();
        __swift_project_value_buffer(v63, qword_281364CD0);
        v64 = v48;
        v65 = sub_224DAB228();
        v66 = sub_224DAF2A8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          *(v67 + 4) = v64;
          *v68 = v64;
          v69 = v64;
          _os_log_impl(&dword_224A2F000, v65, v66, "Attempting to retry reload task for %@", v67, 0xCu);
          sub_224A3311C(v68, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v68, -1, -1);
          MEMORY[0x22AA5EED0](v67, -1, -1);
        }

        sub_224B63838(v47);
      }

      else
      {
        swift_beginAccess();
        v70 = v47[6];
        v71 = *(v70 + 16);
        if (v71)
        {
          v72 = a8;

          v73 = v70 + 40;
          do
          {
            v74 = *(v73 - 8);
            v107 = a8;

            v74(&v107);

            v73 += 16;
            --v71;
          }

          while (v71);
        }
      }

      return;
    }

    __break(1u);
  }

  else
  {
    v49 = v99;
    v39 = v93;
    v101 = v34;
    v50 = v102;
    v100 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_224DB2780;
    v40 = v103;
    v52 = v104;
    *(v51 + 32) = v103;
    v53 = *(v52 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    *v31 = v53;
    v54 = v94;
    v48 = v95;
    (*(v94 + 104))(v31, *MEMORY[0x277D85200], v95);
    v55 = v40;
    v56 = v53;
    LOBYTE(v53) = sub_224DAB8F8();
    (*(v54 + 8))(v31, v48);
    if (v53)
    {
      v109 = v51;
      v110 = 0;

      sub_224DAB348();
      swift_bridgeObjectRelease_n();
      swift_beginAccess();
      sub_224A3796C(v49, v39, &qword_27D6F4270, &qword_224DB6580);
      v57 = v97;
      v58 = v50;
      if ((*(v97 + 48))(v39, 1, v50) == 1)
      {
        sub_224A3311C(v39, &qword_27D6F4270, &qword_224DB6580);
        v31 = v98;
        v39 = v105;
        v40 = v100;
        v48 = v101;
      }

      else
      {
        v75 = v91;
        (*(v57 + 32))(v91, v39, v58);
        v76 = sub_224DAF4A8();
        v31 = v98;
        v39 = v105;
        v40 = v100;
        v48 = v101;
        if (qword_2813507E8 != -1)
        {
          v90 = v76;
          swift_once();
          v76 = v90;
        }

        sub_224DAB1D8(v76, &dword_224A2F000, qword_281364CC0, "WidgetRelevancesReload", 22, 2, v75, "Reload succeeded.", 17, 2, MEMORY[0x277D84F90]);
        (*(v57 + 8))(v75, v58);
      }

      if (qword_2813513D8 == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_29:
  v77 = sub_224DAB258();
  __swift_project_value_buffer(v77, qword_281364CD0);
  v78 = v48;

  v79 = sub_224DAB228();
  v80 = sub_224DAF2A8();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v108[0] = v83;
    *v81 = 138543618;
    *(v81 + 4) = v78;
    *v82 = v78;
    *(v81 + 12) = 2082;
    v84 = v78;
    *(v81 + 14) = sub_224A33F74(v40, v39, v108);
    _os_log_impl(&dword_224A2F000, v79, v80, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances calling completions", v81, 0x16u);
    sub_224A3311C(v82, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v82, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x22AA5EED0](v83, -1, -1);
    MEMORY[0x22AA5EED0](v81, -1, -1);
  }

  swift_beginAccess();
  v85 = v31[6];
  v86 = *(v85 + 16);
  if (v86)
  {

    v87 = v85 + 40;
    do
    {
      v88 = *(v87 - 8);
      v107 = 0;

      v88(&v107);

      v87 += 16;
      --v86;
    }

    while (v86);
  }
}

uint64_t sub_224B6352C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE6E8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  (*(v12 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v29;
    v15 = v30;
    if (v30 == 3)
    {
      if (!v29)
      {
        return 0;
      }

      v16 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v17 = v28;
        v18 = [v28 domain];
        v19 = sub_224DAEE18();
        v21 = v20;

        if (v19 == sub_224DAEE18() && v21 == v22)
        {

LABEL_14:
          v25 = [v17 code];
          (*(v5 + 104))(v9, *MEMORY[0x277CE3C58], v4);
          v26 = sub_224DAE6D8();

          sub_224B67798(v14, 3u);
          (*(v5 + 8))(v9, v4);
          return v25 == v26;
        }

        v24 = sub_224DAFD88();

        if (v24)
        {
          goto LABEL_14;
        }

        sub_224B67798(v14, 3u);

        return 0;
      }

      v23 = v14;
      v15 = 3;
    }

    else
    {
      v23 = v29;
    }

    sub_224B67798(v23, v15);
    return 0;
  }

  return result;
}

void sub_224B63838(void *a1)
{
  v2 = v1;
  v52 = sub_224DAB798();
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v4);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB878();
  v55 = *(v6 - 8);
  v56 = v6;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v50 - v12;
  v14 = sub_224DAB7B8();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[2];
  v19 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v20 = sub_224DAEDE8();
  v21 = [v19 initWithExtensionIdentity:v18 kind:v20];

  v22 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
  swift_beginAccess();
  if (sub_224D24244(v21, *&v2[v22]))
  {
    swift_endAccess();
    swift_beginAccess();
    swift_beginAccess();

    sub_224B42914(v23);
    swift_endAccess();

    return;
  }

  v50 = v10;
  v51 = v13;
  swift_endAccess();
  v24 = a1[5];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  a1[5] = v26;
  v13 = v2;
  swift_beginAccess();
  v27 = *&v2[v22];
  if ((v27 & 0xC000000000000001) != 0)
  {
    if (v27 < 0)
    {
      v28 = *&v2[v22];
    }

    else
    {
      v28 = v27 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = v21;

    v30 = sub_224DAF838();
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    *&v2[v22] = sub_224D2CB80(v28, v30 + 1);
  }

  else
  {
    v31 = v21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *&v2[v22];
  sub_224B208F8(a1, v21, isUniquelyReferenced_nonNull_native);
  *&v2[v22] = v57;

  swift_endAccess();
  v33 = swift_allocObject();
  v33[2] = v2;
  v33[3] = v21;
  v33[4] = a1;
  aBlock[4] = sub_224B680DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_71;
  _Block_copy(aBlock);
  v57 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v17 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  v14 = a1;
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  sub_224DAB8B8();
  swift_allocObject();
  sub_224DAB8A8();

  if (qword_2813513D8 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v34 = sub_224DAB258();
  __swift_project_value_buffer(v34, qword_281364CD0);
  v35 = v17;

  v36 = sub_224DAB228();
  v37 = sub_224DAF2A8();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v56;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 134218242;
    *(v40 + 4) = v14[5];

    *(v40 + 12) = 2112;
    *(v40 + 14) = v35;
    *v41 = v35;
    v42 = v35;
    _os_log_impl(&dword_224A2F000, v36, v37, "Scheduling retry %ld for %@", v40, 0x16u);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {
  }

  v43 = v52;
  v44 = v53;
  v46 = v54;
  v45 = v55;
  v47 = v50;
  sub_224DAB858();
  *v44 = *&v13[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_retryTimeout];
  (*(v46 + 104))(v44, *MEMORY[0x277D85188], v43);
  v48 = v51;
  MEMORY[0x22AA59C40](v47, v44);
  (*(v46 + 8))(v44, v43);
  v49 = *(v45 + 8);
  v49(v47, v39);
  sub_224DAF328();

  v49(v48, v39);
}

double sub_224B63F0C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  sub_224B0D4A8(a2);
  swift_endAccess();

  return sub_224B5FBF0(a3);
}

void sub_224B63F8C(NSObject *a1, void *a2)
{
  if (!a1)
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364CD0);
    v15 = a2;
    oslog = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_224A2F000, oslog, v16, "Reloaded relevances for %{public}@", v17, 0xCu);
      sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v18, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = a1;
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281364CD0);
  v6 = a1;
  v7 = a2;
  oslog = sub_224DAB228();
  v8 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2114;
    v11 = a1;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_224A2F000, oslog, v8, "Failed to reload relevances for %{public}@: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);

LABEL_10:
    v20 = oslog;

    goto LABEL_12;
  }

  v20 = a1;

LABEL_12:
}

void sub_224B64278(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_224B677B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224BC6D2C;
  aBlock[3] = &block_descriptor_81;
  v13 = _Block_copy(aBlock);

  [a2 getWidgetRelevancesWithRequest:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_224B64430(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224B644A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v94 = a8;
  v79 = a4;
  v80 = a6;
  v101 = a5;
  v77 = a3;
  v88 = a2;
  v89 = a1;
  v78 = a19;
  v76 = a18;
  v75 = a16;
  v81 = a15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v99 = v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4290, &qword_224DB6628);
  v91 = *(v23 - 8);
  v92 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v90 = v74 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4298, &qword_224DB6630);
  v95 = *(v26 - 8);
  v96 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v93 = v74 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42A0, &qword_224DB6638);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v29);
  v97 = v74 - v30;
  v31 = sub_224DAF3C8();
  v86 = *(v31 - 8);
  v87 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v85 = v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_224DAF318();
  MEMORY[0x28223BE20](v83, v34);
  v84 = v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_224DAB848();
  MEMORY[0x28223BE20](v36 - 8, v37);
  v82 = v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DA92C8();
  v74[0] = *(v39 - 8);
  v74[1] = v39;
  MEMORY[0x28223BE20](v39, v40);
  v110[3] = a10;
  v110[4] = v81;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, v89, a10);
  v108 = a12;
  v109 = a17;
  v89 = a17;
  v42 = __swift_allocate_boxed_opaque_existential_1(v107);
  v43 = *(*(a12 - 8) + 32);
  v81 = v42;
  v44 = v88;
  v88 = a12;
  v43(v42, v44, a12);
  v106[3] = a11;
  v106[4] = v75;
  v45 = __swift_allocate_boxed_opaque_existential_1(v106);
  (*(*(a11 - 8) + 32))(v45, v77, a11);
  v105[3] = a13;
  v105[4] = v76;
  v46 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(*(a13 - 8) + 32))(v46, v79, a13);
  v104[3] = a14;
  v104[4] = v78;
  v47 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a14 - 8) + 32))(v47, v80, a14);
  v48 = swift_allocObject();
  *(v48 + 176) = 0;
  *(v48 + 184) = 0;
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken) = 0;
  v49 = MEMORY[0x277D84F98];
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks) = MEMORY[0x277D84F98];
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates) = v49;
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_subscriptions) = MEMORY[0x277D84FA0];
  v50 = (v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter);
  v51 = type metadata accessor for RelevancePowerlogReporter();
  swift_allocObject();
  v52 = RelevancePowerlogReporter.init(subsystem:category:)(0x746567646957, 0xE600000000000000, 0xD000000000000016, 0x8000000224DC73F0);
  v50[3] = v51;
  v50[4] = &protocol witness table for RelevancePowerlogReporter;
  *v50 = v52;
  v53 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4268, &qword_224DB6560);
  swift_allocObject();
  *(v48 + v53) = sub_224DAB358();
  sub_224A3317C(v106, v48 + 96);
  sub_224A3317C(v110, v48 + 16);
  sub_224A3317C(v107, v48 + 56);
  sub_224A3317C(v105, v48 + 136);
  sub_224A3796C(a7, v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, &unk_27D6F4680, &unk_224DB4610);
  sub_224A3317C(v101, v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider);
  v54 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider;
  sub_224A3317C(v104, v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider);
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_retryTimeout) = v94;
  sub_224A3317C(v48 + v54, v103);
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v55 = v108;
  v56 = v109;
  v57 = __swift_project_boxed_opaque_existential_1(v107, v108);
  v58 = *(v56 + 40);
  v102[3] = v55;
  v102[4] = v58;
  v59 = __swift_allocate_boxed_opaque_existential_1(v102);
  (*(*(v55 - 8) + 16))(v59, v57, v55);
  v94 = a7;
  v60 = sub_224DADE08();
  v62 = v61;
  __swift_destroy_boxed_opaque_existential_1(v102);
  *(v48 + 176) = v60;
  *(v48 + 184) = v62;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v103[0] = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v86 + 104))(v85, *MEMORY[0x277D85260], v87);
  *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue) = sub_224DAF418();
  v103[0] = sub_224DAD8B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
  sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60, MEMORY[0x277CBCD90]);
  v63 = v90;
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  sub_224A33088(&qword_281351360, &qword_27D6F4290, &qword_224DB6628, MEMORY[0x277CBCC90]);
  v64 = v92;
  v65 = v93;
  sub_224DAB3E8();
  (*(v91 + 8))(v63, v64);
  v103[0] = *(v48 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v66 = v103[0];
  v67 = sub_224DAF358();
  v68 = v99;
  (*(*(v67 - 8) + 56))(v99, 1, 1, v67);
  sub_224A33088(&qword_281351388, &qword_27D6F4298, &qword_224DB6630, MEMORY[0x277CBCC08]);
  sub_224B67CF4();
  v69 = v66;
  v71 = v96;
  v70 = v97;
  sub_224DAB448();
  sub_224A3311C(v68, &qword_27D6F5090, &qword_224DB5C30);
  (*(v95 + 8))(v65, v71);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_2813511D0, &qword_27D6F42A0, &qword_224DB6638, MEMORY[0x277CBCD60]);
  v72 = v100;
  sub_224DAB488();

  (*(v98 + 8))(v70, v72);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3311C(v94, &unk_27D6F4680, &unk_224DB4610);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v107);
  return v48;
}

void sub_224B652F4(char *a1, void *a2, unint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v135 = a2;
  v136 = a3;
  v134 = a1;
  v118 = sub_224DAB798();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v14);
  v116 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_224DAB878();
  v119 = *(v120 - 8);
  v17 = MEMORY[0x28223BE20](v120, v16);
  v114 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v115 = &v114 - v20;
  v123 = sub_224DA9878();
  v124 = *(v123 - 8);
  v22 = MEMORY[0x28223BE20](v123, v21);
  v121 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v122 = &v114 - v25;
  v125 = sub_224DAB7B8();
  MEMORY[0x28223BE20](v125, v26);
  v126 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAB8C8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = (&v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  v33[2] = a5;
  v33[3] = a6;
  v128 = a7;
  v33[4] = a7;
  v33[5] = a8;
  v137 = v33;
  v33[6] = a9;
  v34 = *&a4[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue];
  *v32 = v34;
  v36 = v29 + 104;
  v35 = *(v29 + 104);
  v132 = *MEMORY[0x277D85200];
  v131 = v35;
  v35(v32);
  v133 = a5;

  v130 = a6;

  v129 = a8;

  v37 = a9;
  v127 = v34;
  v38 = sub_224DAB8F8();
  v41 = *(v29 + 8);
  v39 = (v29 + 8);
  v40 = v41;
  v41(v32, v28);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (!*(a4 + 22))
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v62 = sub_224DAB258();
    __swift_project_value_buffer(v62, qword_281364CD0);
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224A2F000, v63, v64, "func _queue_reloadWidgetRelevances with nil relevanceCacheManager returning early", v38, 2u);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    sub_224B67480();
    v42 = swift_allocError();
    *v65 = 0;
    *(v65 + 8) = 5;
    v66 = *&v133[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue];
    *v32 = v66;
    v131(v32, v132, v28);
    v67 = v66;
    LOBYTE(v66) = sub_224DAB8F8();
    (v40)(v32, v28);
    if (v66)
    {
      v68 = v130;
      swift_beginAccess();
      v69 = v129;

      v70 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = *(v68 + 2);
      sub_224B20A98(v42, v128, v69, isUniquelyReferenced_nonNull_native);

      *(v68 + 2) = v139;
      swift_endAccess();
      dispatch_group_leave(v37);

      return;
    }

    __break(1u);
LABEL_41:
    v32 = sub_224AD95EC(0, v32[2] + 1, 1, v32);
    *v39 = v32;
    goto LABEL_19;
  }

  v42 = a4;
  v43 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v32 = v135;
  v36 = v136;
  v44 = sub_224DAEDE8();
  a6 = v134;
  a4 = [v43 initWithExtensionIdentity:v134 kind:v44];

  v37 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
  swift_beginAccess();
  v45 = sub_224D24244(a4, *(&v37->isa + v42));
  if (v45)
  {
    v39 = v45;
    swift_endAccess();
    if (qword_2813513D8 == -1)
    {
LABEL_5:
      v46 = sub_224DAB258();
      __swift_project_value_buffer(v46, qword_281364CD0);
      v47 = a6;

      v48 = sub_224DAB228();
      v49 = sub_224DAF2A8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = v32;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *v50 = 138543618;
        *(v50 + 4) = v47;
        *v52 = v47;
        *(v50 + 12) = 2082;
        v54 = v47;
        *(v50 + 14) = sub_224A33F74(v51, v36, aBlock);
        _os_log_impl(&dword_224A2F000, v48, v49, "[%{public}@-%{public}s] debouncing _queue_reloadWidgetRelevances due to frequent calling", v50, 0x16u);
        sub_224A3311C(v52, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v52, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x22AA5EED0](v53, -1, -1);
        MEMORY[0x22AA5EED0](v50, -1, -1);
      }

      v55 = v137;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_224B67C94;
      *(v56 + 24) = v55;
      swift_beginAccess();
      v57 = v39[6];

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v39[6] = v57;
      if ((v58 & 1) == 0)
      {
        v57 = sub_224AD95EC(0, v57[2] + 1, 1, v57);
        v39[6] = v57;
      }

      v60 = v57[2];
      v59 = v57[3];
      if (v60 >= v59 >> 1)
      {
        v57 = sub_224AD95EC((v59 > 1), v60 + 1, 1, v57);
      }

      v57[2] = v60 + 1;
      v61 = &v57[2 * v60];
      v61[4] = sub_224B680D4;
      v61[5] = v56;
      v39[6] = v57;
      swift_endAccess();

      v39[5] = 0;

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_5;
  }

  swift_endAccess();
  type metadata accessor for WidgetRelevanceRefreshTask();
  v40 = swift_allocObject();
  *(v40 + 16) = a6;
  *(v40 + 24) = v32;
  *(v40 + 32) = v36;
  *(v40 + 40) = 0;
  *(v40 + 48) = MEMORY[0x277D84F90];
  v39 = (v40 + 48);
  v38 = swift_allocObject();
  v72 = v137;
  *(v38 + 16) = sub_224B67C94;
  *(v38 + 24) = v72;
  swift_beginAccess();
  v32 = *(v40 + 48);
  v73 = a6;

  v74 = swift_isUniquelyReferenced_nonNull_native();
  *(v40 + 48) = v32;
  v134 = v73;
  if ((v74 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_19:
  v76 = v32[2];
  v75 = v32[3];
  if (v76 >= v75 >> 1)
  {
    v32 = sub_224AD95EC((v75 > 1), v76 + 1, 1, v32);
  }

  v32[2] = v76 + 1;
  v77 = &v32[2 * v76];
  v77[4] = sub_224B680D4;
  v77[5] = v38;
  *v39 = v32;
  swift_endAccess();
  swift_beginAccess();
  v78 = *(&v37->isa + v42);
  if ((v78 & 0xC000000000000001) != 0)
  {
    if (v78 < 0)
    {
      v79 = *(&v37->isa + v42);
    }

    else
    {
      v79 = v78 & 0xFFFFFFFFFFFFFF8;
    }

    v80 = a4;

    v81 = sub_224DAF838();
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    *(&v37->isa + v42) = sub_224D2CB80(v79, v81 + 1);
  }

  else
  {
    v82 = a4;
  }

  v83 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *(&v37->isa + v42);
  sub_224B208F8(v40, a4, v83);
  *(&v37->isa + v42) = v139;

  swift_endAccess();
  v84 = swift_allocObject();
  v84[2] = v42;
  v84[3] = a4;
  v84[4] = v40;
  aBlock[4] = sub_224B680DC;
  aBlock[5] = v84;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_119_0;
  _Block_copy(aBlock);
  v139 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  a4 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  sub_224DAB8B8();
  swift_allocObject();
  sub_224DAB8A8();

  v85 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates;
  swift_beginAccess();
  v86 = *&v42[v85];
  if (!*(v86 + 16) || (v87 = sub_224B0B854(a4), (v88 & 1) == 0))
  {
    swift_endAccess();
LABEL_36:
    sub_224DAF408();

    return;
  }

  v89 = v124;
  v90 = v122;
  v91 = v123;
  (*(v124 + 16))(v122, *(v86 + 56) + *(v124 + 72) * v87, v123);
  swift_endAccess();
  v92 = v121;
  sub_224DA9808();
  sub_224DA9758();
  v94 = v93;
  v97 = *(v89 + 8);
  v95 = v89 + 8;
  v96 = v97;
  (v97)(v92, v91);
  if (v94 >= 4.0)
  {
    (v96)(v90, v91);
    goto LABEL_36;
  }

  v133 = v96;
  v124 = v95;
  if (qword_2813513D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v98 = sub_224DAB258();
  __swift_project_value_buffer(v98, qword_281364CD0);
  v99 = v134;
  v100 = v136;

  v101 = sub_224DAB228();
  v102 = sub_224DAF2A8();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    aBlock[0] = v105;
    *v103 = 138543618;
    *(v103 + 4) = v99;
    *v104 = v99;
    *(v103 + 12) = 2082;
    v106 = v99;
    *(v103 + 14) = sub_224A33F74(v135, v100, aBlock);
    _os_log_impl(&dword_224A2F000, v101, v102, "[%{public}@-%{public}s] delaying _queue_reloadWidgetRelevances due to frequent calling", v103, 0x16u);
    sub_224A3311C(v104, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v104, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x22AA5EED0](v105, -1, -1);
    MEMORY[0x22AA5EED0](v103, -1, -1);
  }

  v107 = v114;
  sub_224DAB858();
  v108 = v116;
  *v116 = 4;
  v109 = v117;
  v110 = v118;
  (*(v117 + 104))(v108, *MEMORY[0x277D85188], v118);
  v111 = v115;
  MEMORY[0x22AA59C40](v107, v108);
  (*(v109 + 8))(v108, v110);
  v112 = *(v119 + 8);
  v113 = v120;
  v112(v107, v120);
  sub_224DAF328();

  v112(v111, v113);
  (v133)(v122, v123);
}

void sub_224B6627C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_224DAB848();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v10);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DADA98();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB8C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v19 = v21;
  v22 = *(v16 + 104);
  v77 = *MEMORY[0x277D85200];
  v78 = v16 + 104;
  v76 = v22;
  v22(v19);
  v80 = a3;
  v75 = v21;
  LOBYTE(v21) = sub_224DAB8F8();
  v23 = *(v16 + 8);
  v79 = v15;
  v23(v19, v15);
  if (v21)
  {
    v67 = v23;
    v65 = v7;
    v66 = v6;
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364CD0);
  v25 = a1;
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v25;
    *v30 = v25;
    v31 = v25;
    _os_log_impl(&dword_224A2F000, v26, v27, "[%{public}@] batch reload requested", v29, 0xCu);
    sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    v32 = v29;
    v20 = v28;
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  sub_224B5BA90(v25);
  if (!v33)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v45 = sub_224CBC42C(24, 0xD000000000000025, 0x8000000224DC72C0);
    sub_224B63F8C(v45, v80);

LABEL_11:

    return;
  }

  v34 = v33;
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  if (!sub_224DADA38())
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v45 = sub_224CBC42C(24, 0xD000000000000034, 0x8000000224DC72F0);
    sub_224B63F8C(v45, v80);

    goto LABEL_11;
  }

  v35 = v72;
  sub_224DACA18();
  v36 = v74;
  sub_224DACF08();

  (*(v73 + 8))(v35, v36);
  v37 = sub_224B5DB74(aBlock[0]);

  v38 = v34;

  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();

  v41 = os_log_type_enabled(v39, v40);
  v64 = v20;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543618;
    *(v42 + 4) = v38;
    *v43 = v34;
    *(v42 + 12) = 2050;
    *(v42 + 14) = v37[2];
    v44 = v38;

    _os_log_impl(&dword_224A2F000, v39, v40, "[%{public}@] batch reload beginning with %{public}ld kinds", v42, 0x16u);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {
  }

  v46 = v79;
  v47 = v77;
  v49 = v75;
  v48 = v76;
  *v19 = v75;
  v48(v19, v47, v46);
  v50 = v49;
  LOBYTE(v49) = sub_224DAB8F8();
  v67(v19, v46);
  if (v49)
  {
    v79 = v50;
    v51 = dispatch_group_create();
    v52 = swift_allocObject();
    *(v52 + 16) = MEMORY[0x277D84F98];
    v80 = v37;
    v53 = v37[2];
    if (v53)
    {
      v54 = v80 + 5;
      do
      {
        v55 = *(v54 - 1);
        v56 = *v54;

        dispatch_group_enter(v51);

        v57 = v51;
        sub_224B652F4(v38, v55, v56, a2, a2, v52, v55, v56, v57);

        swift_bridgeObjectRelease_n();
        v54 += 2;
        --v53;
      }

      while (v53);
    }

    v58 = swift_allocObject();
    v59 = v64;
    v58[2] = sub_224B67F74;
    v58[3] = v59;
    v58[4] = a2;
    v58[5] = v52;
    aBlock[4] = sub_224B680D8;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_157;
    v60 = _Block_copy(aBlock);

    v61 = v68;
    sub_224DAB7E8();
    v81 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v62 = v70;
    v63 = v66;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v60);

    (*(v65 + 8))(v62, v63);
    (*(v69 + 8))(v61, v71);
  }

  else
  {
    __break(1u);
  }
}

void sub_224B66C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = sub_224DAB7B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB848();
  v29 = *(v15 - 8);
  v30 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  _Block_copy(a5);
  sub_224B5BA90(a1);
  if (v20)
  {
    v21 = v20;
    v28 = *(a4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v22 = swift_allocObject();
    v22[2] = a4;
    v22[3] = v21;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = sub_224B67834;
    v22[7] = v19;
    aBlock[4] = sub_224B6783C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_90;
    v23 = _Block_copy(aBlock);

    v27 = v21;

    sub_224DAB7E8();
    v31 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v18, v14, v23);
    _Block_release(v23);

    (*(v11 + 8))(v14, v10);
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v24 = sub_224CBC42C(24, 0xD000000000000025, 0x8000000224DC72C0);
    v30 = sub_224DA9518();
    a5[2](a5, v30);

    v25 = v30;
  }
}

void sub_224B66FF8(void *a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v4 = v3;
  v5 = a3;
  *(swift_allocObject() + 16) = a3;
  _Block_copy(v5);
  v8 = qword_2813513D8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364CD0);
  v10 = a1;
  v11 = sub_224DAB228();
  v12 = sub_224DAF268();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = a2;
    v13 = v5;
    v14 = v4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v10;
    *v16 = v10;
    v17 = v10;
    _os_log_impl(&dword_224A2F000, v11, v12, "Fetching write handle for %{public}@", v15, 0xCu);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    v18 = v15;
    v4 = v14;
    v5 = v13;
    a2 = v38;
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    v20 = *(a2 + 184);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v21 = sub_224DAD478();
    if (!v4)
    {
      v27 = v22;
      v38 = v21;
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      v30 = v38;
      v29[2] = v28;
      v29[3] = v30;
      v29[4] = v27;
      v29[5] = v10;
      v29[6] = v19;
      v29[7] = v20;
      aBlock[4] = sub_224B674D4;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A3837C;
      aBlock[3] = &block_descriptor_12;
      v31 = _Block_copy(aBlock);
      v32 = objc_opt_self();
      v33 = v10;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v34 = [v32 responderWithHandler_];
      _Block_release(v31);

      swift_getObjectType();
      v35 = sub_224DABCE8();
      v36 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v34];
      (v5)[2](v5, 0, v35, v36);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_224A2F000, v23, v24, "func withFileHandle with nil relevanceCacheManager returning early", v25, 2u);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    sub_224B67480();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 5;
    swift_willThrow();
  }
}

unint64_t sub_224B67480()
{
  result = qword_281358A00;
  if (!qword_281358A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358A00);
  }

  return result;
}

uint64_t sub_224B674E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_224ACFF60;

  return sub_224B5E67C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_224B67624(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_224ACED1C;

  return sub_224B610D8(a1, v3, v4, v5, v6, v7, v8, v9);
}

void sub_224B67798(id a1, unsigned __int8 a2)
{
  if (a2 <= 5u)
  {
  }
}

uint64_t sub_224B677B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);

  return sub_224B64430(a1);
}

id sub_224B678A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_224B599FC(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
  v2 = sub_224DAEDA8();
  v4 = v3;

  sub_224B59CCC(a1);
  v5 = sub_224DAEDA8();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v9;
  MEMORY[0x22AA5D210](v2, v4);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 48) = 91;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v10;
  MEMORY[0x22AA5D210](v5, v7);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 80) = 91;
  *(inited + 88) = 0xE100000000000000;
  v11 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  swift_arrayDestroy();
  sub_224B67B98();
  sub_224B67BEC();
  sub_224B67C40();
  v12 = sub_224DA93D8();
  sub_224D9F01C(v11);

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_224DAEDE8();
  v15 = sub_224DAECC8();

  v16 = [v13 initWithDomain:v14 code:v12 userInfo:v15];

  return v16;
}

unint64_t sub_224B67B98()
{
  result = qword_28135CCD0;
  if (!qword_28135CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCD0);
  }

  return result;
}

unint64_t sub_224B67BEC()
{
  result = qword_28135CCC8;
  if (!qword_28135CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCC8);
  }

  return result;
}

unint64_t sub_224B67C40()
{
  result = qword_281350BE8;
  if (!qword_281350BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BE8);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_224B67CF4()
{
  result = qword_281350A80;
  if (!qword_281350A80)
  {
    sub_224A3B79C(255, &qword_281350A70, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A80);
  }

  return result;
}

uint64_t sub_224B67D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_224ACED1C;

  return sub_224B5F25C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_224B67E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_224ACFF60;

  return sub_224B5DEFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_101Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore20WidgetRelevanceErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_224B67FE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224B68028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_224B6806C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_224B68144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444974736F68 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B681C8(uint64_t a1)
{
  v2 = sub_224B6B2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B68204(uint64_t a1)
{
  v2 = sub_224B6B2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B68240@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4360, &qword_224DB6B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B2B8();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_224DAFC58();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_224B683BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4368, &qword_224DB6B60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B2B8();
  sub_224DAFF08();
  sub_224DAFCC8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224B684F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6F69746361;
  }

  else
  {
    v2 = 0x746567646977;
  }

  if (*a2)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x746567646977;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_224DAFD88();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_224B68578()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B685E8(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224B6863C(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

void sub_224B686B4(uint64_t *a1@<X8>)
{
  v2 = 0x746567646977;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_224B686E4()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_224B6871C(uint64_t a1)
{
  v2 = sub_224B6AA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B68758(uint64_t a1)
{
  v2 = sub_224B6AA28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_224B68794(void *a1)
{
  v3 = v1;
  v29 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4380, &qword_224DB6B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AA28();
  sub_224DAFF08();
  sub_224DAAD38();
  v10 = *(v3 + 16);
  v11 = sub_224DAAD08();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v13 = v11;
    v14 = v12;

    v27 = v13;
    v28 = v14;
    v26 = 0;
    v15 = sub_224B6B30C();
    sub_224DAFCE8();
    v16 = objc_opt_self();
    v17 = *(v3 + 24);
    v27 = 0;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v27];
    v19 = v27;
    if (v18)
    {
      v20 = sub_224DA96D8();
      v25[1] = v15;
      v21 = v20;
      v23 = v22;

      v27 = v21;
      v28 = v23;
      v26 = 1;
      sub_224DAFCE8();
      (*(v6 + 8))(v9, v5);
      sub_224A78024(v13, v14);
      sub_224A78024(v21, v23);
    }

    else
    {
      v24 = v19;
      sub_224DA9528();

      swift_willThrow();
      sub_224A78024(v13, v14);
      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_224B68A7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B8, &qword_224DB6B20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AA28();
  sub_224DAFEF8();
  if (v2)
  {
    type metadata accessor for InteractionMessage();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v21 = 0;
  sub_224B6AA7C();
  sub_224DAFC68();
  v10 = v19;
  v18 = v20;
  sub_224DAAD38();
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v17 = v10;
  *(v1 + 16) = sub_224DAACF8();
  v21 = 1;
  sub_224DAFC68();
  v11 = v19;
  v12 = v20;
  sub_224A3B79C(0, &qword_27D6F42D0, 0x277CCAAC8);
  sub_224A3B79C(0, &qword_27D6F42D8, 0x277D23720);
  result = sub_224DAF2E8();
  v14 = v17;
  v16 = result;
  if (result)
  {
    (*(v6 + 8))(v9, v5);
    sub_224A78024(v11, v12);
    sub_224A78024(v14, v18);
    *(v3 + 24) = v16;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B68DA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B68E08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InteractionMessage();
  v5 = swift_allocObject();
  result = sub_224B68A7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_224B68E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x496C6F72746E6F63;
  }

  if (v2)
  {
    v4 = 0xEF797469746E6564;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0x496C6F72746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEF797469746E6564;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_224DAFD88();
  }

  return v8 & 1;
}

uint64_t sub_224B68F40()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B68FCC(uint64_t a1)
{
  sub_224DAEE78();
}

uint64_t sub_224B69044(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B690D8@<X0>(char *a3@<X8>)
{
  v4 = sub_224DAFBF8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_224B69134(uint64_t *a1@<X8>)
{
  v2 = 0x496C6F72746E6F63;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xEF797469746E6564;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_224B6917C()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x496C6F72746E6F63;
  }
}

uint64_t sub_224B691CC@<X0>(char *a4@<X8>)
{
  v5 = sub_224DAFBF8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_224B6922C(uint64_t a1)
{
  v2 = sub_224B6AB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B69268(uint64_t a1)
{
  v2 = sub_224B6AB90();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_224B692A4(void *a1)
{
  v2 = v1;
  v4 = sub_224DAE738();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4370, &qword_224DB6B68);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AB90();
  sub_224DAFF08();
  sub_224DAAD38();
  v12 = *(v1 + 16);
  v13 = v23;
  v14 = sub_224DAAD08();
  if (v13)
  {
    (*(v8 + 8))(v11, v24);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v23 = v8;
    v18 = v2;
    v19 = v22;

    v25 = v16;
    v26 = v17;
    v27 = 0;
    sub_224B6B30C();
    sub_224DAFCE8();
    v20 = v21;
    (*(v21 + 16))(v7, v18 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v19);
    LOBYTE(v25) = 1;
    sub_224B6A434(&qword_27D6F4378, 255, MEMORY[0x277CE3C88], MEMORY[0x277CE3C90]);
    sub_224DAFCE8();
    sub_224A78024(v16, v17);
    (*(v20 + 8))(v7, v19);
    (*(v23 + 8))(v11, v24);
  }
}

uint64_t sub_224B695B8(void *a1)
{
  v3 = sub_224DAE738();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42E0, &qword_224DB6B28);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - v10;
  v12 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_224B6AB90();
  sub_224DAFEF8();
  if (v1)
  {
    v13 = v22;
    type metadata accessor for ControlInteractionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v6;
    v14 = v8;
    v25 = 0;
    sub_224B6AA7C();
    sub_224DAFC68();
    v16 = v23;
    v15 = v24;
    sub_224DAAD38();
    sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
    v17 = sub_224DAACF8();
    v13 = v22;
    *(v22 + 16) = v17;
    LOBYTE(v23) = 1;
    sub_224B6A434(&qword_27D6F42F0, 255, MEMORY[0x277CE3C88], MEMORY[0x277CE3C98]);
    sub_224DAFC68();
    (*(v14 + 8))(v11, v7);
    sub_224A78024(v16, v15);
    (*(v20 + 32))(v13 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v19, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v13;
}

uint64_t sub_224B69960()
{
  v1 = OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action;
  v2 = sub_224DAE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_224B69A2C(uint64_t a1)
{
  result = sub_224DAE738();
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

void sub_224B69B24(uint64_t a1)
{
  sub_224B5A81C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224B69BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_224B69BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224B69C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ControlInteractionMessage(0);
  v5 = swift_allocObject();
  result = sub_224B695B8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_224B69CEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4350, &qword_224DB6B50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B0CC();
  sub_224DAFF08();
  v9[15] = 0;
  sub_224DAFCC8();
  if (!v1)
  {
    type metadata accessor for RemoteActivityLaunchMessage(0);
    v9[14] = 1;
    sub_224DA9688();
    sub_224B6A434(&qword_27D6F4358, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_224DAFCB8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_224B69EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4338, &qword_224DB6B48);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RemoteActivityLaunchMessage(0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = sub_224DA9688();
  v19 = *(*(v18 - 8) + 56);
  v26 = v17;
  v19(v16 + v17, 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B0CC();
  sub_224DAFEF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_224B6B120(v16 + v26);
  }

  else
  {
    v20 = v24;
    v28 = 0;
    *v16 = sub_224DAFC58();
    v16[1] = v21;
    v27 = 1;
    sub_224B6A434(&qword_27D6F4348, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_224DAFC48();
    (*(v20 + 8))(v11, v25);
    sub_224B6B188(v7, v16 + v26);
    sub_224B6B1F8(v16, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_224B6B25C(v16);
  }
}

uint64_t sub_224B6A1D0()
{
  if (*v0)
  {
    return 0x525568636E75616CLL;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_224B6A214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v6 || (sub_224DAFD88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x525568636E75616CLL && a2 == 0xE90000000000004CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();

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

uint64_t sub_224B6A300(uint64_t a1)
{
  v2 = sub_224B6B0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A33C(uint64_t a1)
{
  v2 = sub_224B6B0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B6A3A8(uint64_t a1)
{
  *(a1 + 8) = sub_224B6A434(&qword_2813545A0, 255, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6948);
  result = sub_224B6A434(qword_2813545A8, 255, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6920);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6A434(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224B6A47C(uint64_t a1)
{
  v2 = sub_224B6B9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A4B8(uint64_t a1)
{
  v2 = sub_224B6B9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B6A4F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F43F8, &qword_224DB7198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B9F8();
  sub_224DAFF08();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224B6A608(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4320, &qword_224DB6B40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AF58();
  sub_224DAFF08();
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
  sub_224B6B000(&qword_27D6F4328, sub_224B6B078, MEMORY[0x277D83948]);
  sub_224DAFCE8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224B6A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B6A82C(uint64_t a1)
{
  v2 = sub_224B6AF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A868(uint64_t a1)
{
  v2 = sub_224B6AF58();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_224B6A8A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_224B6ADA4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_224B6A918(uint64_t a1)
{
  *(a1 + 8) = sub_224B6A434(&qword_281355990, 255, type metadata accessor for ControlInteractionMessage, &unk_224DB6A48);
  result = sub_224B6A434(qword_281355998, 255, type metadata accessor for ControlInteractionMessage, &unk_224DB6A20);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6A9A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_224B6A434(&unk_281359D90, a2, type metadata accessor for InteractionMessage, &unk_224DB6ADC);
  result = sub_224B6A434(qword_281359DA0, v3, type metadata accessor for InteractionMessage, &unk_224DB6AB4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_224B6AA28()
{
  result = qword_27D6F42C0;
  if (!qword_27D6F42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42C0);
  }

  return result;
}

unint64_t sub_224B6AA7C()
{
  result = qword_27D6F42C8;
  if (!qword_27D6F42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42C8);
  }

  return result;
}

uint64_t sub_224B6AAD0(uint64_t a1, uint64_t a2)
{
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  v6 = v4;
  v7 = sub_224DAF6A8();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = v8;
  v11 = v9;
  v12 = sub_224DAF6A8();

  return v12 & 1;
}

unint64_t sub_224B6AB90()
{
  result = qword_27D6F42E8;
  if (!qword_27D6F42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42E8);
  }

  return result;
}

uint64_t sub_224B6ABE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE738();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = *(v5 + 16);
  v13(&v21 - v11, a1 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v4);
  v13(v9, a2 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v4);
  v14 = MEMORY[0x22AA5CA70](v12, v9);
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v12, v4);
  if (v14)
  {
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v16 = *(a2 + 16);
    v17 = *(a1 + 16);
    v18 = v16;
    v19 = sub_224DAF6A8();
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void *sub_224B6ADA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42F8, &qword_224DB6B30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AF58();
  sub_224DAFEF8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
    sub_224B6B000(&qword_27D6F4310, sub_224B6AFAC, MEMORY[0x277D83978]);
    sub_224DAFC68();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_224B6AF58()
{
  result = qword_27D6F4300;
  if (!qword_27D6F4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4300);
  }

  return result;
}

unint64_t sub_224B6AFAC()
{
  result = qword_27D6F4318;
  if (!qword_27D6F4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4318);
  }

  return result;
}

uint64_t sub_224B6B000(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4308, &qword_224DB6B38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_224B6B078()
{
  result = qword_27D6F4330;
  if (!qword_27D6F4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4330);
  }

  return result;
}

unint64_t sub_224B6B0CC()
{
  result = qword_27D6F4340;
  if (!qword_27D6F4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4340);
  }

  return result;
}

uint64_t sub_224B6B120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B6B188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B6B1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B6B25C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224B6B2B8()
{
  result = qword_28135B178[0];
  if (!qword_28135B178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135B178);
  }

  return result;
}

unint64_t sub_224B6B30C()
{
  result = qword_281351A60;
  if (!qword_281351A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A60);
  }

  return result;
}

unint64_t sub_224B6B3C4()
{
  result = qword_27D6F4388;
  if (!qword_27D6F4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4388);
  }

  return result;
}

unint64_t sub_224B6B41C()
{
  result = qword_27D6F4390;
  if (!qword_27D6F4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4390);
  }

  return result;
}

unint64_t sub_224B6B474()
{
  result = qword_27D6F4398;
  if (!qword_27D6F4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4398);
  }

  return result;
}