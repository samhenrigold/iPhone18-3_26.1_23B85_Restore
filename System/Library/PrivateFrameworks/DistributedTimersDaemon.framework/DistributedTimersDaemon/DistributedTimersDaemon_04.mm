void sub_2490DF8DC()
{
  v1 = v0;
  v82 = sub_24910C2FC();
  v69 = *(v82 - 8);
  v2 = MEMORY[0x28223BE20](v82);
  v68 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v80 = &v68 - v5;
  MEMORY[0x28223BE20](v4);
  v83 = &v68 - v6;
  if (qword_27EEDAFD0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v7 = sub_24910C89C();
    v78 = __swift_project_value_buffer(v7, qword_27EEDAFD8);
    v8 = sub_24910C87C();
    v9 = sub_24910CF5C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_249083000, v8, v9, "Monitor timer check", v10, 2u);
      MEMORY[0x24C1F26F0](v10, -1, -1);
    }

    v11 = sub_24910C4AC();
    v12 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
    swift_beginAccess();
    v76 = v1;
    v13 = *(v1 + v12);
    v14 = v13 + 8;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13[8];
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    *&v20 = 136315138;
    v74 = v20;
    v75 = v11;
    v81 = v12;
    v79 = v13;
    if (!v17)
    {
      break;
    }

LABEL_14:
    while (1)
    {
      v22 = __clz(__rbit64(v17)) | (v19 << 6);
      if (v11 < *(*(v13[7] + v22) + 48))
      {
        break;
      }

      v17 &= v17 - 1;
      v23 = (v13[6] + 16 * v22);
      v1 = *v23;
      v24 = v23[1];

      if (sub_24910C31C() >= 0x21C)
      {

        v25 = sub_24910C87C();
        v26 = sub_24910CF5C();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v77 = v25;
          v29 = v28;
          v85[0] = v28;
          *v27 = v74;
          *(v27 + 4) = sub_24909F930(v1, v24, v85);
          v30 = v26;
          v31 = v77;
          _os_log_impl(&dword_249083000, v77, v30, "Monitor idle cleanup: peer=%s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x24C1F26F0](v29, -1, -1);
          MEMORY[0x24C1F26F0](v27, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();
        v32 = sub_2490A0A3C(v1, v24);
        v34 = v33;

        v13 = v79;
        if (v34)
        {
          v35 = v81;
          v1 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *&v35[v1];
          v84 = v37;
          *&v35[v1] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490F4364();
            v37 = v84;
          }

          sub_2490CD11C(v32, v37);
          *&v35[v1] = v37;
        }

        swift_endAccess();

        v11 = v75;
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      else
      {

        v13 = v79;
        if (!v17)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  while (1)
  {
LABEL_10:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = v14[v21];
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_14;
    }
  }

  v84 = MEMORY[0x277D84FA0];
  v38 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  v1 = v76;
  swift_beginAccess();
  v39 = *(v1 + v38);
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v79 = (v69 + 16);
  v81 = (v69 + 8);

  v45 = 0;
  v72 = v39;
  v71 = v39 + 64;
  v70 = v44;
  if (!v43)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
LABEL_34:
      v47 = (v45 << 9) | (8 * __clz(__rbit64(v43)));
      v48 = *(*(v39 + 56) + v47);
      if (v11 < *(v48 + 24))
      {
        goto LABEL_49;
      }

      v43 &= v43 - 1;
      v49 = *(*(v39 + 48) + v47);

      if (sub_24910C31C() >= 0xB4)
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_30;
      }
    }

    v73 = v49;
    *&v74 = v48;
    v50 = [*(v48 + 16) uniqueIdentifier];
    sub_24910C2CC();

    v51 = v84;
    if (*(v84 + 16) && (sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v52 = sub_24910CC3C(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, v78 = v51 + 56, ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
    {
      v77 = ~v53;
      v55 = *(v69 + 72);
      v56 = *(v69 + 16);
      while (1)
      {
        v57 = v80;
        v58 = v82;
        v56(v80, *(v51 + 48) + v55 * v54, v82);
        sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v59 = sub_24910CC7C();
        v60 = *v81;
        (*v81)(v57, v58);
        if (v59)
        {
          break;
        }

        v54 = (v54 + 1) & v77;
        if (((*(v78 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v60(v83, v82);

      v1 = v76;
    }

    else
    {
LABEL_41:
      v61 = v74;
      v1 = v76;
      sub_2490E00F0(v73, v74);
      v62 = v68;
      v63 = v82;
      v64 = v83;
      (*v79)(v68, v83, v82);
      v65 = v80;
      sub_2490F44D4(v80, v62);
      v66 = *v81;
      (*v81)(v65, v63);
      v67 = sub_24910C4AC();
      v66(v64, v63);
      *(v61 + 24) = v67;
    }

    v11 = v75;
    v39 = v72;
    v40 = v71;
    v44 = v70;
  }

  while (v43);
  while (1)
  {
LABEL_30:
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_47;
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v46);
    ++v45;
    if (v43)
    {
      v45 = v46;
      goto LABEL_34;
    }
  }

  sub_2490D48A0();
}

uint64_t sub_2490E00F0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = sub_24910C2FC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v68 = *(v5 - 1);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v61 = v54 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v54 - v18;
  sub_24910C2EC();
  v20 = v5[5];
  v21 = *MEMORY[0x277D057C8];
  v22 = sub_24910C86C();
  v23 = *(*(v22 - 8) + 104);
  v62 = v22;
  v23(&v19[v20], v21);
  v24 = &v19[v5[6]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v63 = v5;
  v19[v5[7]] = 2;
  v25 = *(a2 + 16);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v26 = sub_24910C89C();
  v27 = __swift_project_value_buffer(v26, qword_27EEDAFD8);
  sub_2490FA748(v19, v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(v19, v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v28 = v25;
  v60 = v27;
  v29 = sub_24910C87C();
  v30 = sub_24910CF5C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v31;
    v57 = swift_slowAlloc();
    v69[0] = v57;
    *v32 = 136315906;
    v54[1] = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v56 = v29;
    v33 = v66;
    v34 = sub_24910D50C();
    v36 = v35;
    v55 = v30;
    sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v37 = sub_24909F930(v34, v36, v69);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v38 = sub_24910D50C();
    v40 = v39;
    sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v41 = sub_24909F930(v38, v40, v69);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v59;
    *(v32 + 32) = 2080;
    v42 = [v28 uniqueIdentifier];
    v43 = v64;
    sub_24910C2CC();

    v44 = sub_24910D50C();
    v46 = v45;
    (*(v65 + 8))(v43, v33);
    v47 = sub_24909F930(v44, v46, v69);

    *(v32 + 34) = v47;
    v48 = v56;
    _os_log_impl(&dword_249083000, v56, v55, "HMMM send start: xid=%s, request=%s, monitorID=%llu, to:%s", v32, 0x2Au);
    v49 = v57;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v49, -1, -1);
    MEMORY[0x24C1F26F0](v32, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v50 = v67;
  sub_2490FA748(v19, v67, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v51 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v52 = swift_allocObject();
  sub_2490FA810(v50, v52 + v51, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  *(v52 + ((v6 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_2490D580C(v19, v28, sub_2490FA668, v52);

  return sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

void sub_2490E0AC4(void *a1, unint64_t a2, char a3, uint64_t a4, void *a5)
{
  v83 = a1;
  v9 = sub_24910C2FC();
  v82 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v23 = sub_24910C89C();
    __swift_project_value_buffer(v23, qword_27EEDAFD8);
    sub_2490FA748(a4, v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA748(a4, v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v24 = v83;
    sub_2490FA40C(v83, a2, 1);
    v25 = a5;
    v26 = sub_24910C87C();
    v27 = sub_24910CF4C();

    sub_2490FA418(v24, a2, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = v80;
      *v28 = 136315906;
      v77 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = v27;
      v29 = sub_24910D50C();
      v78 = v26;
      v30 = v29;
      v32 = v31;
      sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v33 = sub_24909F930(v30, v32, &v84);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
      v34 = sub_24910D50C();
      v36 = v35;
      sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v37 = sub_24909F930(v34, v36, &v84);

      *(v28 + 14) = v37;
      *(v28 + 22) = 2080;
      v38 = [v25 uniqueIdentifier];
      v39 = v81;
      sub_24910C2CC();

      v40 = sub_24910D50C();
      v42 = v41;
      (*(v82 + 8))(v39, v9);
      v43 = sub_24909F930(v40, v42, &v84);

      *(v28 + 24) = v43;
      *(v28 + 32) = 2080;
      swift_getErrorValue();
      v44 = sub_24910D5DC();
      v46 = sub_24909F930(v44, v45, &v84);

      *(v28 + 34) = v46;
      v47 = v78;
      _os_log_impl(&dword_249083000, v78, v79, "### HMMM send failed: xid=%s, request=%s, to:%s, error=%s", v28, 0x2Au);
      v48 = v80;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v48, -1, -1);
      MEMORY[0x24C1F26F0](v28, -1, -1);

      return;
    }

    sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v73 = v17;
    goto LABEL_14;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v49 = sub_24910C89C();
  __swift_project_value_buffer(v49, qword_27EEDAFD8);
  sub_2490FA748(a4, v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(a4, v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v50 = v83;
  sub_2490FA40C(v83, a2, 0);
  sub_2490FA40C(v50, a2, 0);
  v51 = a5;
  v52 = sub_24910C87C();
  v53 = sub_24910CF5C();

  if (!os_log_type_enabled(v52, v53))
  {
    sub_2490FA418(v50, a2, 0);

    sub_2490FA418(v50, a2, 0);
    sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v73 = v22;
LABEL_14:
    sub_2490FA7B0(v73, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    return;
  }

  v79 = v53;
  v78 = v52;
  v54 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v84 = v77;
  *v54 = 136315906;
  v80 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v55 = sub_24910D50C();
  v57 = v56;
  sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v58 = sub_24909F930(v55, v57, &v84);

  *(v54 + 4) = v58;
  *(v54 + 12) = 2080;
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
  v59 = sub_24910D50C();
  v61 = v60;
  sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v62 = sub_24909F930(v59, v61, &v84);

  *(v54 + 14) = v62;
  *(v54 + 22) = 2080;
  v63 = [v51 uniqueIdentifier];
  v64 = v81;
  sub_24910C2CC();

  v65 = sub_24910D50C();
  v67 = v66;
  (*(v82 + 8))(v64, v9);
  v68 = sub_24909F930(v65, v67, &v84);

  *(v54 + 24) = v68;
  *(v54 + 32) = 2048;
  v69 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v70 = v83;
    if (v69 == 2)
    {
      v71 = *(v83 + 2);
      v74 = *(v83 + 3);
      sub_2490FA418(v83, a2, 0);
      v72 = v74 - v71;
      if (__OFSUB__(v74, v71))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      sub_2490FA418(v83, a2, 0);
      v72 = 0;
    }

    v75 = v78;
    LOBYTE(v71) = v79;
    goto LABEL_24;
  }

  v70 = v83;
  LOBYTE(v71) = v79;
  if (!v69)
  {
    sub_2490FA418(v83, a2, 0);
    v72 = BYTE6(a2);
LABEL_21:
    v75 = v78;
LABEL_24:
    *(v54 + 34) = v72;
    sub_2490FA418(v70, a2, 0);
    _os_log_impl(&dword_249083000, v75, v71, "HMMM send success: xid=%s, request=%s, to:%s, response=%ld bytes", v54, 0x2Au);
    v76 = v77;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v76, -1, -1);
    MEMORY[0x24C1F26F0](v54, -1, -1);

    return;
  }

LABEL_19:
  sub_2490FA418(v70, a2, 0);
  LODWORD(v72) = HIDWORD(v70) - v70;
  if (!__OFSUB__(HIDWORD(v70), v70))
  {
    v72 = v72;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_2490E13EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = sub_24910D2FC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_24910D30C();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2490E1514, 0, 0);
}

uint64_t sub_2490E1514()
{
  swift_beginAccess();
  swift_beginAccess();
  if ((sub_24910CE4C() & 1) != 0 || !swift_weakLoadStrong())
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 120);

    sub_24910D5AC();
    *(v0 + 88) = xmmword_249110200;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v4 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24910D31C();
    v5 = *(v2 + 8);
    *(v0 + 176) = v5;
    *(v0 + 184) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v1, v3);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *v6 = v0;
    v6[1] = sub_2490E1774;
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);

    return MEMORY[0x2822008C8](v8, v0 + 64, v7, v4);
  }
}

uint64_t sub_2490E1774()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 144), *(v2 + 120));
    v3 = sub_2490E1BAC;
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 176))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = sub_2490E18CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2490E18CC()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {
    sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E1C48, v3, v2);
  }

  else if ((sub_24910CE4C() & 1) != 0 || !swift_weakLoadStrong())
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);

    sub_24910D5AC();
    *(v0 + 88) = xmmword_249110200;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v7 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24910D31C();
    v8 = *(v5 + 8);
    *(v0 + 176) = v8;
    *(v0 + 184) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_2490E1774;
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);

    return MEMORY[0x2822008C8](v11, v0 + 64, v10, v7);
  }
}

uint64_t sub_2490E1BAC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2490E1C48()
{
  sub_2490DF8DC();

  return MEMORY[0x2822009F8](sub_2490E1CB8, 0, 0);
}

uint64_t sub_2490E1CB8(__n128 a1)
{
  if ((sub_24910CE4C() & 1) != 0 || !swift_weakLoadStrong())
  {

    v10 = *(v1 + 8);

    return v10();
  }

  else
  {
    v3 = *(v1 + 128);
    v2 = *(v1 + 136);
    v4 = *(v1 + 120);

    sub_24910D5AC();
    *(v1 + 88) = xmmword_249110200;
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
    *(v1 + 80) = 1;
    v5 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24910D31C();
    v6 = *(v3 + 8);
    *(v1 + 176) = v6;
    *(v1 + 184) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v2, v4);
    v7 = swift_task_alloc();
    *(v1 + 192) = v7;
    *v7 = v1;
    v7[1] = sub_2490E1774;
    v9 = *(v1 + 144);
    v8 = *(v1 + 152);

    return MEMORY[0x2822008C8](v9, v1 + 64, v8, v5);
  }
}

void sub_2490E1EEC(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  type metadata accessor for DTXPCServer(0);
  sub_2490F57CC(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2490F105C;
    *(v7 + 24) = 0;
    v8[0] = v6;
    sub_2490FC724(v8);
    if (!v2)
    {

      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
LABEL_5:
        *a2 = v6 == 0;
        return;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v8[6] = v6;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  sub_24910D33C();
  __break(1u);
}

void sub_2490E2120(NSObject *a1)
{
  v2 = v1;
  v4 = sub_24910C2FC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24910C78C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910C86C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24910C4FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  sub_24910C6FC();
  v17 = (*(v13 + 88))(v15, v12);
  if (v17 == *MEMORY[0x277D05658])
  {
    (*(v13 + 96))(v15, v12);
    sub_2490E26B4(*v15, v15[1], a1, 0);
  }

  else if (v17 == *MEMORY[0x277D05660])
  {
    v18 = a1;
    (*(v9 + 16))(v11, a1 + *(v16 + 24), v8);
    v19 = (*(v9 + 88))(v11, v8);
    v20 = *MEMORY[0x277D05788];
    (*(v9 + 8))(v11, v8);
    if (v19 == v20)
    {
      sub_2490DAEB4();
      v21 = v40;
      sub_24910C77C();
      sub_2490F57CC(&unk_27EED7FC0, MEMORY[0x277D05738], MEMORY[0x277D05740]);
      v22 = v42;
      v33 = sub_24910BFBC();
      v35 = v34;
      sub_2490B38D0(v33, v34);
      sub_2490F7BC8(a1, v33, v35, 0);
      sub_2490A453C(v33, v35);
      sub_2490A453C(v33, v35);
      (*(v41 + 8))(v21, v22);
    }

    else
    {
      v25 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
      if (v25 && (v26 = [v25 currentAccessory]) != 0)
      {
        v27 = v26;
        v28 = [v26 uniqueIdentifier];

        v29 = v37;
        sub_24910C2CC();

        v30 = sub_24910C28C();
        v32 = v31;
        (*(v38 + 8))(v29, v39);
        sub_2490E26B4(v30, v32, v18, 0);
      }

      else
      {
        sub_2490E46D0(a1);
      }
    }
  }

  else
  {
    sub_24910C7DC();
    v23 = sub_24910C7EC();
    swift_willThrow();
    (*(v13 + 8))(v15, v12);
    v24 = v23;
    sub_2490F7BC8(a1, v23, 0, 1);
  }
}

void sub_2490E26B4(uint64_t a1, uint64_t a2, NSObject *a3, int a4)
{
  v5 = v4;
  LODWORD(v251) = a4;
  v255 = a2;
  v256 = a3;
  v253 = a1;
  ObjectType = swift_getObjectType();
  v247 = sub_24910CB8C();
  v6 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v240 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v241 = sub_24910CBAC();
  v239 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v238 = &v208[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v9 - 8);
  v230 = &v208[-v10];
  v11 = sub_24910C4FC();
  MEMORY[0x28223BE20](v11 - 8);
  v227 = &v208[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_24910C73C();
  v233 = *(v242 - 8);
  v13 = MEMORY[0x28223BE20](v242);
  v229 = &v208[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v224 = v14;
  MEMORY[0x28223BE20](v13);
  v232 = &v208[-v15];
  v248 = sub_24910C86C();
  v243 = *(v248 - 8);
  v16 = *(v243 + 64);
  v17 = MEMORY[0x28223BE20](v248);
  v223 = &v208[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v17);
  v226 = &v208[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v228 = &v208[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v222 = &v208[-v23];
  MEMORY[0x28223BE20](v22);
  v225 = &v208[-v24];
  v249 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v234 = *(v249 - 8);
  v25 = MEMORY[0x28223BE20](v249);
  v236 = &v208[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v246 = &v208[-v28];
  v235 = v29;
  MEMORY[0x28223BE20](v27);
  v245 = &v208[-v30];
  v258 = sub_24910C2FC();
  v250 = *(v258 - 8);
  v31 = MEMORY[0x28223BE20](v258);
  v254 = &v208[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v257 = &v208[-v33];
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F20, &qword_249110878);
  v34 = MEMORY[0x28223BE20](v244);
  v231 = &v208[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v37 = &v208[-v36];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v41 = &v208[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v39);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v208[-v45];
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v208[-v48];
  MEMORY[0x28223BE20](v47);
  v53 = &v208[-v52];
  v54 = *(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v54)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    return;
  }

  v219 = v51;
  v220 = v50;
  v218 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v221 = v6;
  v55 = sub_24910C50C();
  v260 = v55;
  v261 = sub_2490F57CC(&qword_27EED7F28, MEMORY[0x277D05678], MEMORY[0x277D05668]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v55 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D05670], v55);
  v57 = v54;
  LOBYTE(v55) = sub_24910C30C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v55 & 1) == 0 && ![v57 hasOptedToHH2])
  {
LABEL_14:
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    return;
  }

  if ((*(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred) & 1) != 0 || (sub_2490E52F8(v253, v255), v217 = v59, !v58))
  {
    if ((v251 & 1) == 0)
    {
      sub_2490E4CC4(v253, v255, v256);

      return;
    }

    goto LABEL_14;
  }

  v210 = v41;
  v60 = v58;
  v215 = sub_2490E55A0();
  v214 = v60;
  v61 = [v60 uniqueIdentifier];
  sub_24910C2CC();

  v62 = v250 + 56;
  v63 = 1;
  v251 = *(v250 + 56);
  v251(v53, 0, 1, v258);
  v216 = v57;
  v64 = [v57 currentAccessory];
  v252 = v5;
  if (v64)
  {
    v65 = v64;
    v66 = [v64 uniqueIdentifier];

    sub_24910C2CC();
    v63 = 0;
  }

  v67 = v258;
  v213 = v62;
  v251(v49, v63, 1, v258);
  v68 = *(v244 + 48);
  sub_2490A4674(v53, v37, &qword_27EED7900, &qword_24910EB50);
  sub_2490A4674(v49, &v37[v68], &qword_27EED7900, &qword_24910EB50);
  v70 = v250 + 48;
  v69 = *(v250 + 48);
  v71 = v69(v37, 1, v67);
  v211 = v70;
  if (v71 == 1)
  {
    sub_2490A487C(v49, &qword_27EED7900, &qword_24910EB50);
    sub_2490A487C(v53, &qword_27EED7900, &qword_24910EB50);
    v72 = v69(&v37[v68], 1, v67);
    v73 = v255;
    v74 = v67;
    if (v72 == 1)
    {
      sub_2490A487C(v37, &qword_27EED7900, &qword_24910EB50);
      LODWORD(v75) = 1;
      v76 = v256;
      v78 = v245;
      v77 = v246;
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  sub_2490A4674(v37, v46, &qword_27EED7900, &qword_24910EB50);
  v212 = v69;
  if (v69(&v37[v68], 1, v67) == 1)
  {
    sub_2490A487C(v49, &qword_27EED7900, &qword_24910EB50);
    sub_2490A487C(v53, &qword_27EED7900, &qword_24910EB50);
    (*(v250 + 8))(v46, v67);
    v73 = v255;
    v74 = v67;
    v69 = v212;
LABEL_17:
    sub_2490A487C(v37, &qword_27EED7F20, &qword_249110878);
    v76 = v256;
    v79 = v216;
    v77 = v246;
    goto LABEL_18;
  }

  v87 = v257;
  (*(v250 + 32))(v257, &v37[v68], v67);
  sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v209 = sub_24910CC7C();
  v88 = *(v250 + 8);
  v88(v87, v67);
  sub_2490A487C(v49, &qword_27EED7900, &qword_24910EB50);
  sub_2490A487C(v53, &qword_27EED7900, &qword_24910EB50);
  v88(v46, v67);
  sub_2490A487C(v37, &qword_27EED7900, &qword_24910EB50);
  v73 = v255;
  v76 = v256;
  v79 = v216;
  v74 = v67;
  v77 = v246;
  v69 = v212;
  if (v209)
  {
    LODWORD(v75) = 1;
    v78 = v245;
    goto LABEL_33;
  }

LABEL_18:
  v78 = v245;
  if (!v215)
  {
    LODWORD(v75) = 0;
    goto LABEL_33;
  }

  v212 = v69;
  v80 = [v215 uniqueIdentifier];
  v81 = v220;
  sub_24910C2CC();

  v82 = 1;
  v251(v81, 0, 1, v74);
  v83 = [v79 currentAccessory];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 uniqueIdentifier];

    v86 = v219;
    sub_24910C2CC();

    v82 = 0;
  }

  else
  {
    v86 = v219;
  }

  v251(v86, v82, 1, v74);
  v75 = *(v244 + 48);
  v89 = v220;
  v90 = v231;
  sub_2490A4674(v220, v231, &qword_27EED7900, &qword_24910EB50);
  sub_2490A4674(v86, &v90[v75], &qword_27EED7900, &qword_24910EB50);
  v91 = v212;
  if (v212(v90, 1, v74) == 1)
  {
    sub_2490A487C(v86, &qword_27EED7900, &qword_24910EB50);
    v92 = v231;
    sub_2490A487C(v89, &qword_27EED7900, &qword_24910EB50);
    v93 = v91(&v92[v75], 1, v74);
    v73 = v255;
    v78 = v245;
    if (v93 == 1)
    {
      sub_2490A487C(v92, &qword_27EED7900, &qword_24910EB50);
      LODWORD(v75) = 1;
LABEL_31:
      v77 = v246;
      v76 = v256;
      goto LABEL_33;
    }

LABEL_30:
    sub_2490A487C(v92, &qword_27EED7F20, &qword_249110878);
    LODWORD(v75) = 0;
    goto LABEL_31;
  }

  v94 = v210;
  sub_2490A4674(v90, v210, &qword_27EED7900, &qword_24910EB50);
  v95 = v91(&v90[v75], 1, v74);
  v73 = v255;
  v78 = v245;
  if (v95 == 1)
  {
    sub_2490A487C(v219, &qword_27EED7900, &qword_24910EB50);
    v92 = v231;
    sub_2490A487C(v220, &qword_27EED7900, &qword_24910EB50);
    (*(v250 + 8))(v94, v74);
    goto LABEL_30;
  }

  v96 = v250;
  v97 = v257;
  (*(v250 + 32))(v257, &v90[v75], v74);
  sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LODWORD(v244) = sub_24910CC7C();
  v98 = *(v96 + 8);
  v98(v97, v74);
  sub_2490A487C(v219, &qword_27EED7900, &qword_24910EB50);
  sub_2490A487C(v220, &qword_27EED7900, &qword_24910EB50);
  v98(v94, v74);
  LODWORD(v75) = v244;
  v76 = v256;
  sub_2490A487C(v231, &qword_27EED7900, &qword_24910EB50);
  v77 = v246;
LABEL_33:
  v99 = [v217 siriEndpointProfile];
  v100 = v99;
  if (v99)
  {
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v101 = sub_24910C89C();
  __swift_project_value_buffer(v101, qword_27EEDAFD8);
  sub_2490FA748(v76, v78, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(v76, v77, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);

  v102 = v214;
  v103 = sub_24910C87C();
  v104 = sub_24910CF5C();

  v105 = os_log_type_enabled(v103, v104);
  v251 = v102;
  if (v105)
  {
    LODWORD(v214) = v100 != 0;
    v106 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    aBlock[0] = v231;
    *v106 = 136316162;
    v213 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v220 = v103;
    LODWORD(v244) = v75;
    v75 = v258;
    v107 = sub_24910D50C();
    LODWORD(v219) = v104;
    v109 = v108;
    sub_2490FA7B0(v78, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v110 = sub_24909F930(v107, v109, aBlock);

    *(v106 + 4) = v110;
    *(v106 + 12) = 2080;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v111 = sub_24910D50C();
    v113 = v112;
    sub_2490FA7B0(v77, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v114 = sub_24909F930(v111, v113, aBlock);

    *(v106 + 14) = v114;
    *(v106 + 22) = 2080;
    *(v106 + 24) = sub_24909F930(v253, v73, aBlock);
    *(v106 + 32) = 1024;
    *(v106 + 34) = v214;
    *(v106 + 38) = 2080;
    v115 = [v102 uniqueIdentifier];
    v116 = v257;
    sub_24910C2CC();

    v117 = sub_24910D50C();
    v119 = v118;
    v120 = v75;
    LOBYTE(v75) = v244;
    (*(v250 + 8))(v116, v120);
    v121 = sub_24909F930(v117, v119, aBlock);

    *(v106 + 40) = v121;
    v122 = v249;
    v123 = v220;
    _os_log_impl(&dword_249083000, v220, v219, "Operation start: xid=%s, request=%s, hkid=%s, sidekick=%{BOOL}d, preferred=%s", v106, 0x30u);
    v124 = v231;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v124, -1, -1);
    MEMORY[0x24C1F26F0](v106, -1, -1);

    v125 = v252;
  }

  else
  {

    sub_2490FA7B0(v77, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v78, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v125 = v252;
    v122 = v249;
  }

  v126 = dispatch_group_create();
  v127 = swift_allocObject();
  *(v127 + 16) = 0;
  *(v127 + 24) = 0;
  *(v127 + 32) = -1;
  dispatch_group_enter(v126);
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  *(v128 + 24) = v126;
  v244 = v128;
  v129 = *(v122 + 24);
  v131 = v243 + 16;
  v130 = *(v243 + 16);
  v132 = (v243 + 88);
  v231 = (v243 + 8);
  v133 = v256;
  v245 = v127;
  v246 = v126;
  v220 = v129;
  v219 = v243 + 88;
  if ((v75 & 1) == 0)
  {
    v143 = v226;
    v144 = v248;
    v232 = v130;
    (v130)(v226, v129 + v256, v248);
    v233 = *(v131 + 72);
    LODWORD(v243) = (v233)(v143, v144);
    LODWORD(v242) = *MEMORY[0x277D057C0];
    v145 = *v231;

    v146 = v126;
    v147 = v143;
    v148 = v145;
    v145(v147, v144);
    if (v243 == v242)
    {
      v149 = v251;
      sub_2490D42F8(v133, v217, v251);
      v150 = v247;
      v151 = v244;
      v152 = v133;
      v153 = v149;
    }

    else
    {
      v174 = v223;
      (v232)(v223, v220 + v133, v144);
      v175 = (v233)(v174, v144);
      v176 = *MEMORY[0x277D05790];
      v148(v174, v144);
      v150 = v247;
      v151 = v244;
      v152 = v133;
      v153 = v251;
      if (v175 == v176)
      {
        sub_2490D4DC4(v152, v251);
      }
    }

    sub_2490F5FE4(v153, v253, v255, v152, v125, v151);

    goto LABEL_53;
  }

  v134 = v225;
  v135 = v248;
  v136 = v130;
  (v130)(v225, v129 + v256, v248);
  v214 = *v132;
  LODWORD(v226) = (v214)(v134, v135);
  LODWORD(v223) = *MEMORY[0x277D057C0];
  v137 = *v231;

  v138 = v126;
  v139 = v134;
  v140 = v137;
  v137(v139, v135);
  if (v226 == v223)
  {
    v141 = v136;
    v125 = v252;
    sub_2490D2FC8(v256, v217);
    v142 = v244;
  }

  else
  {
    v154 = v222;
    v141 = v136;
    v136(v222, v220 + v256, v135);
    v155 = (v214)(v154, v135);
    v156 = *MEMORY[0x277D05790];
    v140(v154, v135);
    v157 = v155 == v156;
    v125 = v252;
    v142 = v244;
    if (v157)
    {
      sub_2490D3F48(v256, v217);
    }
  }

  sub_24910C4DC();
  v158 = v232;
  sub_24910C70C();
  v159 = swift_allocObject();
  *(v159 + 2) = sub_2490FA900;
  *(v159 + 3) = v142;
  v231 = v159;
  if (*(v125 + v218))
  {
    v227 = *(v125 + v218);
    v160 = sub_24910CDEC();
    (*(*(v160 - 8) + 56))(v230, 1, 1, v160);
    v161 = v233;
    (*(v233 + 16))(v229, v158, v242);
    v141(v228, v220 + v256, v135);
    v226 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
    v162 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v163 = (v224 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
    v164 = v243;
    v165 = (*(v243 + 80) + v163 + 8) & ~*(v243 + 80);
    v166 = (v16 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
    v167 = swift_allocObject();
    v168 = v226;
    *(v167 + 16) = v125;
    *(v167 + 24) = v168;
    (*(v161 + 32))(v167 + v162, v229, v242);
    v169 = v227;
    *(v167 + v163) = v227;
    v152 = v256;
    (*(v164 + 32))(v167 + v165, v228, v248);
    *(v167 + v166) = v125;
    v170 = (v167 + ((v166 + 15) & 0xFFFFFFFFFFFFFFF8));
    v171 = v231;
    *v170 = sub_2490FACB8;
    v170[1] = v171;
    v172 = v169;
    swift_retain_n();
    v173 = v172;

    sub_2490E832C(0, 0, v230, &unk_249110890, v167);

    (*(v233 + 8))(v232, v242);
    v150 = v247;
    v153 = v251;
LABEL_53:
    v177 = v245;
    goto LABEL_54;
  }

  (*(v233 + 8))(v158, v242);
  v150 = v247;
  v153 = v251;
  v177 = v245;
  v152 = v256;
LABEL_54:
  if ((sub_24910C83C() & 1) == 0)
  {
LABEL_70:
    v198 = sub_24910C34C();
    v199 = v152;
    v200 = v236;
    sub_2490FA748(v199, v236, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v201 = (*(v234 + 80) + 24) & ~*(v234 + 80);
    v202 = (v235 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v203 = swift_allocObject();
    *(v203 + 16) = v177;
    sub_2490FA810(v200, v203 + v201, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    *(v203 + v202) = ObjectType;
    v261 = sub_2490FAB54;
    v262 = v203;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2490FC7CC;
    v260 = &block_descriptor_182_0;
    v204 = _Block_copy(aBlock);

    v205 = v238;
    sub_24910CB9C();
    v263 = MEMORY[0x277D84F90];
    sub_2490F57CC(&qword_27EED7F30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F38, &qword_249110880);
    sub_2490FAC70(&unk_27EED7F40, &qword_27EED7F38, &qword_249110880, MEMORY[0x277D83970]);
    v206 = v240;
    sub_24910D14C();
    v207 = v246;
    sub_24910CF8C();

    _Block_release(v204);

    (*(v221 + 8))(v206, v150);
    (*(v239 + 8))(v205, v241);

    return;
  }

  LODWORD(v249) = *(v125 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait);
  v178 = sub_2490F6B68(v217);
  v179 = v178;
  if (!(v178 >> 62))
  {
    v180 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v181 = 0x278F87000;
    if (v180)
    {
      goto LABEL_57;
    }

LABEL_69:

    v150 = v247;
    v152 = v256;
    v153 = v251;
    v177 = v245;
    goto LABEL_70;
  }

  v196 = v178;
  v197 = sub_24910D19C();
  v179 = v196;
  v180 = v197;
  v181 = 0x278F87000;
  if (!v197)
  {
    goto LABEL_69;
  }

LABEL_57:
  if (v180 >= 1)
  {
    v182 = 0;
    v248 = v179 & 0xC000000000000001;
    v183 = (v250 + 8);
    v250 = v179;
    do
    {
      if (v248)
      {
        v186 = MEMORY[0x24C1F1C90](v182);
      }

      else
      {
        v186 = *(v179 + 8 * v182 + 32);
      }

      v185 = v186;
      v187 = [v186 *(v181 + 3360)];
      v188 = v257;
      sub_24910C2CC();

      v189 = [v251 *(v181 + 3360)];
      v190 = v254;
      sub_24910C2CC();

      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v191 = v258;
      v192 = sub_24910CC7C();
      v193 = *v183;
      (*v183)(v190, v191);
      v193(v188, v191);
      if ((v192 & 1) == 0)
      {
        v194 = v252;
        v195 = v246;
        if (v249)
        {
          dispatch_group_enter(v246);
        }

        v184 = v195;
        sub_2490F6E90(v185, v253, v255, v256, v194, v249, v184);

        v185 = v184;
      }

      v181 = 0x278F87000uLL;
      ++v182;

      v179 = v250;
    }

    while (v180 != v182);
    goto LABEL_69;
  }

  __break(1u);
}

void sub_2490E46D0(uint64_t a1)
{
  v46 = a1;
  ObjectType = swift_getObjectType();
  v52 = sub_24910C86C();
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v42 = v3;
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24910C73C();
  v43 = *(v48 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v38 - v6;
  v7 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v12 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v12)
  {
    v41 = v2;
    v13 = sub_24910C50C();
    v51[3] = v13;
    v51[4] = sub_2490F57CC(&qword_27EED7F28, MEMORY[0x277D05678], MEMORY[0x277D05668]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D05670], v13);
    v15 = v12;
    LOBYTE(v13) = sub_24910C30C();
    __swift_destroy_boxed_opaque_existential_0(v51);
    if ((v13 & 1) != 0 || [v15 hasOptedToHH2])
    {
      v16 = *(v7 + 24);
      v17 = *(v7 + 28);
      v39 = v16;
      v40 = v15;
      v18 = v46;
      sub_2490FA748(v46, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      sub_2490FA810(v10, v21 + v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      *(v21 + v20) = ObjectType;
      if (*(v1 + v11))
      {
        v22 = v1;
        ObjectType = *(v1 + v11);
        v23 = sub_24910CDEC();
        (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
        v24 = v43;
        (*(v43 + 16))(v47, v18 + v17, v48);
        v38 = v21;
        v25 = v44;
        (*(v44 + 16))(v50, v18 + v39, v52);
        v46 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v27 = (v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = (*(v25 + 80) + v27 + 8) & ~*(v25 + 80);
        v29 = (v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        v32 = v46;
        v31 = v47;
        *(v30 + 16) = v22;
        *(v30 + 24) = v32;
        (*(v24 + 32))(v30 + v26, v31, v48);
        v33 = ObjectType;
        *(v30 + v27) = ObjectType;
        (*(v25 + 32))(v30 + v28, v50, v52);
        v34 = v38;
        *(v30 + v29) = v22;
        v35 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v35 = sub_2490FB5D8;
        v35[1] = v34;
        v36 = v33;
        swift_retain_n();
        v37 = v36;

        sub_2490E832C(0, 0, v49, &unk_249110900, v30);
      }
    }

    else
    {
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
    }
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
  }
}

uint64_t sub_2490E4CC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_24910C49C();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v49 = CUNextIDDecimal64();
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v19 = sub_24910C89C();
  __swift_project_value_buffer(v19, qword_27EEDAFD8);

  v20 = sub_24910C87C();
  v21 = sub_24910CF5C();

  if (os_log_type_enabled(v20, v21))
  {
    v40 = a3;
    v41 = v13;
    v42 = v10;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51[0] = v23;
    *v22 = 134218498;
    *(v22 + 4) = v49;
    *(v22 + 12) = 2080;
    v43 = a1;
    *(v22 + 14) = sub_24909F930(a1, a2, v51);
    *(v22 + 22) = 2080;
    if (qword_27EEDB010 != -1)
    {
      swift_once();
    }

    v24 = sub_24910D66C();
    v26 = sub_24909F930(v24, v25, v51);

    *(v22 + 24) = v26;
    _os_log_impl(&dword_249083000, v20, v21, "WaiterStart: xid=%llu, accessoryID=%s, timeout=%s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v23, -1, -1);
    MEMORY[0x24C1F26F0](v22, -1, -1);

    v10 = v42;
    a1 = v43;
    a3 = v40;
    v13 = v41;
  }

  else
  {
  }

  v27 = sub_24910CDEC();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  v28 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v29 = swift_allocObject();
  v29[2] = v4;
  v29[3] = v28;
  v29[4] = v4;
  v29[5] = a1;
  v30 = v49;
  v29[6] = a2;
  v29[7] = v30;
  v29[8] = ObjectType;
  swift_retain_n();

  v31 = sub_249094614(0, 0, v18, &unk_2491108D8, v29);
  sub_2490FA748(a3, v15 + *(v13 + 20), type metadata accessor for DTTransportDaemon.DTOperationItemRequest);

  v32 = v45;
  sub_24910C39C();
  sub_24910C44C();
  (*(v46 + 8))(v32, v47);
  *v15 = a1;
  v15[1] = a2;
  *(v15 + *(v13 + 28)) = v31;
  v33 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  swift_beginAccess();
  if (*(*(v4 + v33) + 16) && (sub_2490A0A3C(a1, a2), (v34 & 1) != 0))
  {
  }

  else
  {
    v35 = sub_2490F79F0(MEMORY[0x277D84F90]);
  }

  v52 = v35;
  swift_endAccess();
  sub_2490FA748(v15, v10, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
  (*(v48 + 56))(v10, 0, 1, v13);
  sub_2490D3B04(v10, v49);
  v36 = v52;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v4 + v33);
  *(v4 + v33) = 0x8000000000000000;
  sub_2490F33EC(v36, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v33) = v50;
  swift_endAccess();
  return sub_2490FA7B0(v15, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
}

void sub_2490E52F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  sub_2490E7FBC(a1, a2);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 siriEndpointProfile];
    if (!v12)
    {
LABEL_8:
      v17 = v11;
      return;
    }

    v13 = v12;
    v14 = [v12 sessionHubIdentifier];

    if (v14)
    {
      sub_24910C2CC();

      v15 = sub_24910C2FC();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v15 = sub_24910C2FC();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    sub_2490B3868(v7, v9, &qword_27EED7900, &qword_24910EB50);
    sub_24910C2FC();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_2490A487C(v9, &qword_27EED7900, &qword_24910EB50);
      goto LABEL_8;
    }

    v18 = sub_24910C28C();
    v20 = v19;
    (*(v16 + 8))(v9, v15);
    if (sub_2490F0A04(v18, v20))
    {
    }

    else
    {
      sub_2490E7FBC(v18, v20);
      v22 = v21;

      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }
}

unint64_t sub_2490E55A0()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F20, &qword_249110878);
  MEMORY[0x28223BE20](v78);
  v6 = &v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v85 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v75 = &v62 - v13;
  v79 = v1;
  v14 = [v1 home];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 mediaSystems];

    sub_2490A4744(0, &qword_27EED7F78, 0x277CD1BE8);
    v17 = sub_24910CD5C();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v18 = v17 >> 62;
  v19 = v17;
  v20 = v75;
  v64 = v19;
  if (v18)
  {
    goto LABEL_65;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_57:

    return 0;
  }

LABEL_6:
  v66 = v64 & 0xC000000000000001;
  v63 = v64 & 0xFFFFFFFFFFFFFF8;
  v62 = v64 + 32;
  v76 = (v3 + 48);
  v77 = (v3 + 56);
  v71 = (v3 + 32);
  v73 = (v3 + 8);
  v74 = v10;
  v22 = 0x278F87000;
  v3 = 0;
  v65 = v21;
  v70 = v6;
  while (1)
  {
    if (v66)
    {
      v23 = MEMORY[0x24C1F1C90](v3, v64);
    }

    else
    {
      if (v3 >= *(v63 + 16))
      {
        goto LABEL_64;
      }

      v23 = *(v62 + 8 * v3);
    }

    v10 = v23;
    if (__OFADD__(v3++, 1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v21 = sub_24910D19C();
      if (!v21)
      {
        goto LABEL_57;
      }

      goto LABEL_6;
    }

    v25 = [v23 components];
    v67 = sub_2490A4744(0, &qword_27EED7F70, 0x277CD1C00);
    v26 = sub_24910CD5C();

    v68 = v3;
    v69 = v10;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        break;
      }

      goto LABEL_52;
    }

    v27 = sub_24910D19C();
    if (v27)
    {
      break;
    }

LABEL_52:

LABEL_55:

LABEL_56:
    v3 = v68;
    if (v68 == v65)
    {
      goto LABEL_57;
    }
  }

  v10 = 0;
  v82 = v26 & 0xFFFFFFFFFFFFFF8;
  v83 = v26 & 0xC000000000000001;
  v80 = v27;
  v81 = v26;
  while (v83)
  {
    v29 = MEMORY[0x24C1F1C90](v10, v26);
    v30 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_58;
    }

LABEL_21:
    v86 = v29;
    v31 = [v29 mediaProfile];
    v84 = v30;
    if (v31 && (v32 = v31, v33 = [v31 accessory], v32, v33))
    {
      v34 = [v33 *(v22 + 3360)];

      sub_24910C2CC();
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = *v77;
    (*v77)(v20, v35, 1, v2);
    v37 = [v79 *(v22 + 3360)];
    v38 = v85;
    sub_24910C2CC();

    v36(v38, 0, 1, v2);
    v39 = *(v78 + 48);
    sub_2490A4674(v20, v6, &qword_27EED7900, &qword_24910EB50);
    sub_2490A4674(v38, &v6[v39], &qword_27EED7900, &qword_24910EB50);
    v40 = *v76;
    if ((*v76)(v6, 1, v2) == 1)
    {
      sub_2490A487C(v85, &qword_27EED7900, &qword_24910EB50);
      sub_2490A487C(v20, &qword_27EED7900, &qword_24910EB50);
      v28 = v40(&v6[v39], 1, v2);
      v26 = v81;
      if (v28 != 1)
      {
LABEL_16:
        sub_2490A487C(v6, &qword_27EED7F20, &qword_249110878);
        v22 = 0x278F87000uLL;
        goto LABEL_17;
      }

      sub_2490A487C(v6, &qword_27EED7900, &qword_24910EB50);
      v22 = 0x278F87000;
LABEL_34:

      v49 = [v86 role];
      v50 = [v49 type];

      v51 = 1;
      if (v50 == 1)
      {
        v51 = 2;
      }

      v84 = v51;
      v52 = [v69 components];
      v3 = sub_24910CD5C();

      if (v3 >> 62)
      {
        v53 = sub_24910D19C();
        if (v53)
        {
LABEL_38:
          v10 = 0;
          v82 = v3 & 0xFFFFFFFFFFFFFF8;
          v83 = v3 & 0xC000000000000001;
          while (1)
          {
            if (v83)
            {
              v54 = MEMORY[0x24C1F1C90](v10, v3);
            }

            else
            {
              if (v10 >= *(v82 + 16))
              {
                goto LABEL_62;
              }

              v54 = *(v3 + 8 * v10 + 32);
            }

            v20 = v54;
            v55 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            v56 = v3;
            v57 = [v54 role];
            v58 = [v57 type];

            if (v58 == v84)
            {
              break;
            }

            ++v10;
            v3 = v56;
            v20 = v75;
            if (v55 == v53)
            {
              goto LABEL_54;
            }
          }

          v59 = [v20 mediaProfile];
          if (!v59)
          {

            v20 = v75;
            goto LABEL_56;
          }

          v60 = v59;
          v10 = [v59 accessory];

          v20 = v75;
          if (!v10)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v53 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v53)
        {
          goto LABEL_38;
        }
      }

LABEL_54:

      goto LABEL_55;
    }

    v41 = v74;
    sub_2490A4674(v6, v74, &qword_27EED7900, &qword_24910EB50);
    if (v40(&v6[v39], 1, v2) == 1)
    {
      sub_2490A487C(v85, &qword_27EED7900, &qword_24910EB50);
      v42 = v75;
      sub_2490A487C(v75, &qword_27EED7900, &qword_24910EB50);
      v43 = v41;
      v20 = v42;
      (*v73)(v43, v2);
      v26 = v81;
      goto LABEL_16;
    }

    v44 = v72;
    (*v71)(v72, &v6[v39], v2);
    sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v45 = sub_24910CC7C();
    v46 = *v73;
    (*v73)(v44, v2);
    sub_2490A487C(v85, &qword_27EED7900, &qword_24910EB50);
    v47 = v75;
    sub_2490A487C(v75, &qword_27EED7900, &qword_24910EB50);
    v48 = v41;
    v20 = v47;
    v46(v48, v2);
    v6 = v70;
    sub_2490A487C(v70, &qword_27EED7900, &qword_24910EB50);
    v22 = 0x278F87000;
    v26 = v81;
    if (v45)
    {
      goto LABEL_34;
    }

LABEL_17:

    ++v10;
    if (v84 == v80)
    {
      goto LABEL_52;
    }
  }

  if (v10 >= *(v82 + 16))
  {
    goto LABEL_59;
  }

  v29 = *(v26 + 8 * v10 + 32);
  v30 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_21;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:

  return v10;
}

void sub_2490E5F10(void *a1, unint64_t a2, int a3, uint64_t a4, void *a5, uint64_t (*a6)(void, void, void), uint64_t a7)
{
  v91 = a7;
  v92 = a1;
  v93 = a2;
  v11 = sub_24910C2FC();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v81 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  v90 = a3;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v25 = sub_24910C89C();
    __swift_project_value_buffer(v25, qword_27EEDAFD8);
    sub_2490FA748(a4, v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA748(a4, v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v27 = v92;
    v26 = v93;
    sub_2490FA40C(v92, v93, 1);
    v28 = a5;
    v29 = sub_24910C87C();
    v30 = sub_24910CF4C();

    sub_2490FA418(v27, v26, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v94 = v85;
      *v31 = 136315906;
      v82 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v84) = v30;
      v32 = v89;
      v33 = sub_24910D50C();
      v86 = a6;
      v35 = v34;
      v83 = v29;
      sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v36 = sub_24909F930(v33, v35, &v94);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
      v37 = sub_24910D50C();
      v39 = v38;
      sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v40 = sub_24909F930(v37, v39, &v94);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2080;
      v41 = [v28 uniqueIdentifier];
      v42 = v87;
      sub_24910C2CC();

      v43 = sub_24910D50C();
      v45 = v44;
      (*(v88 + 8))(v42, v32);
      v46 = sub_24909F930(v43, v45, &v94);

      *(v31 + 24) = v46;
      *(v31 + 32) = 2080;
      a6 = v86;
      swift_getErrorValue();
      v47 = sub_24910D5DC();
      v49 = sub_24909F930(v47, v48, &v94);

      *(v31 + 34) = v49;
      v50 = v83;
      _os_log_impl(&dword_249083000, v83, v84, "### HMMM send failed: xid=%s, request=%s, hkID=%s, error=%s", v31, 0x2Au);
      v51 = v85;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v51, -1, -1);
      MEMORY[0x24C1F26F0](v31, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    }

    v53 = v93;
    goto LABEL_24;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v52 = sub_24910C89C();
  __swift_project_value_buffer(v52, qword_27EEDAFD8);
  sub_2490FA748(a4, v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a4, v22, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v27 = v92;
  v53 = v93;
  sub_2490FA40C(v92, v93, 0);
  sub_2490FA40C(v27, v53, 0);
  v54 = a5;
  v55 = sub_24910C87C();
  v56 = sub_24910CF5C();

  if (!os_log_type_enabled(v55, v56))
  {
    sub_2490FA418(v27, v53, 0);

    sub_2490FA418(v27, v53, 0);
    sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
LABEL_24:
    a6(v27, v53, v90 & 1);
    return;
  }

  LODWORD(v83) = v56;
  v84 = v55;
  v86 = a6;
  v57 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  v94 = v82;
  *v57 = 136315906;
  v85 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v58 = v89;
  v59 = sub_24910D50C();
  v61 = v60;
  sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v62 = sub_24909F930(v59, v61, &v94);

  *(v57 + 4) = v62;
  *(v57 + 12) = 2080;
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
  v63 = sub_24910D50C();
  v65 = v64;
  sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v66 = sub_24909F930(v63, v65, &v94);

  *(v57 + 14) = v66;
  *(v57 + 22) = 2080;
  v67 = [v54 uniqueIdentifier];
  v68 = v87;
  sub_24910C2CC();

  v69 = sub_24910D50C();
  v71 = v70;
  (*(v88 + 8))(v68, v58);
  v72 = sub_24909F930(v69, v71, &v94);

  *(v57 + 24) = v72;
  *(v57 + 32) = 2048;
  v73 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    v27 = v92;
    if (v73 != 2)
    {
      sub_2490FA418(v92, v53, 0);
      v74 = 0;
      goto LABEL_22;
    }

    v76 = *(v92 + 2);
    v75 = *(v92 + 3);
    sub_2490FA418(v92, v53, 0);
    v74 = v75 - v76;
    a6 = v86;
    if (!__OFSUB__(v75, v76))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v27 = v92;
    if (!v73)
    {
      sub_2490FA418(v92, v53, 0);
      v74 = BYTE6(v53);
LABEL_22:
      a6 = v86;
      goto LABEL_23;
    }
  }

  sub_2490FA418(v27, v53, 0);
  LODWORD(v74) = HIDWORD(v27) - v27;
  a6 = v86;
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v74 = v74;
LABEL_23:
    v77 = v83;
    *(v57 + 34) = v74;
    sub_2490FA418(v27, v53, 0);
    v78 = v77;
    v79 = v84;
    _os_log_impl(&dword_249083000, v84, v78, "HMMM send success: xid=%s, request=%s, hkID=%s, response=%ld bytes", v57, 0x2Au);
    v80 = v82;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v80, -1, -1);
    MEMORY[0x24C1F26F0](v57, -1, -1);

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_2490E687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v17;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = sub_24910C73C();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v10 = sub_24910C86C();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v11 = sub_24910C2FC();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v12 = sub_24910C4FC();
  v8[34] = v12;
  v8[35] = *(v12 - 8);
  v8[36] = swift_task_alloc();
  type metadata accessor for DTTransportDaemon(0);
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v14 = sub_24910CDAC();
  v8[37] = v14;
  v8[38] = v13;

  return MEMORY[0x2822009F8](sub_2490E6ADC, v14, v13);
}

uint64_t sub_2490E6ADC(uint64_t a1)
{
  v47 = v1;
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v4 = *(v1 + 272);
  sub_24910C6FC();
  v5 = sub_24910C4EC();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  if (!v7)
  {
    v8 = [*(v1 + 136) currentAccessory];
    if (v8)
    {
      v10 = *(v1 + 256);
      v9 = *(v1 + 264);
      v11 = *(v1 + 248);
      v12 = v8;
      v13 = [v8 uniqueIdentifier];

      sub_24910C2CC();
      v5 = sub_24910C28C();
      v7 = v14;
      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }
  }

  v15 = *(v1 + 208);
  v16 = *(v1 + 176);
  v17 = *(v1 + 184);
  v18 = *(v1 + 128);
  sub_24910C84C();
  v19 = *(v17 + 16);
  *(v1 + 312) = v19;
  *(v1 + 320) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);
  if (v7)
  {

    sub_2490E7FBC(v5, v7);
    v21 = v20;

    if (v21)
    {
      sub_2490D36A8();
      sub_24910C72C();
    }
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v23 = *(v1 + 232);
  v22 = *(v1 + 240);
  v24 = *(v1 + 216);
  v25 = *(v1 + 224);
  v26 = sub_24910C89C();
  __swift_project_value_buffer(v26, qword_27EEDAFD8);
  (*(v25 + 16))(v23, v22, v24);
  v27 = sub_24910C87C();
  v28 = sub_24910CF5C();
  v29 = os_log_type_enabled(v27, v28);
  v31 = *(v1 + 224);
  v30 = *(v1 + 232);
  v32 = *(v1 + 216);
  if (v29)
  {
    v44 = v28;
    v33 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v33 = 136315394;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v34 = sub_24910D50C();
    v36 = v35;
    v37 = *(v31 + 8);
    v37(v30, v32);
    v38 = sub_24909F930(v34, v36, &v46);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    swift_beginAccess();
    sub_2490F57CC(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v39 = sub_24910D50C();
    v41 = sub_24909F930(v39, v40, &v46);

    *(v33 + 14) = v41;

    _os_log_impl(&dword_249083000, v27, v44, "RequestForSelf: request=%s, %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v45, -1, -1);
    MEMORY[0x24C1F26F0](v33, -1, -1);
  }

  else
  {

    v37 = *(v31 + 8);
    v37(v30, v32);
  }

  *(v1 + 328) = v37;
  v42 = swift_task_alloc();
  *(v1 + 336) = v42;
  *v42 = v1;
  v42[1] = sub_2490E6F48;

  return sub_2490CEEA0();
}

uint64_t sub_2490E6F48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 304);
  v6 = *(v3 + 296);
  if (v1)
  {
    v7 = sub_2490E7BF8;
  }

  else
  {
    v7 = sub_2490E708C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490E708C()
{
  v1 = v0[39];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[22];
  swift_beginAccess();
  v1(v2, v3, v4);
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_2490E7170;
  v6 = v0[30];
  v7 = v0[25];

  return DTTimerDaemon.handleRequest(_:context:)((v0 + 2), v6, v7);
}

uint64_t sub_2490E7170()
{
  v2 = *v1;
  v2[46] = v0;

  v3 = v2[25];
  v4 = v2[23];
  v5 = v2[22];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = v2[37];
    v10 = v2[38];
    v11 = sub_2490E7D34;
  }

  else
  {
    v2[47] = v7;
    v2[48] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = v2[37];
    v10 = v2[38];
    v11 = sub_2490E731C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2490E731C()
{
  if ((sub_24910C81C() & 1) != 0 && (Strong = swift_weakLoadStrong(), (v0[49] = Strong) != 0))
  {
    v0[50] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E75F0, v3, v2);
  }

  else
  {
    v4 = v0[46];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v5 = sub_24910BFBC();
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v7 = v0[41];
      v8 = v0[30];
      v9 = v0[27];
      v25 = v0[26];
      v10 = v0[22];
      v11 = v0[23];
      v12 = v0[20];
      v13 = v4;
      v12(v4, 0, 1);

      v7(v8, v9);
      (*(v11 + 8))(v25, v10);
    }

    else
    {
      v24 = v0[47];
      v14 = v0[41];
      v15 = v0[30];
      v16 = v0[27];
      v23 = v0[26];
      v17 = v0[22];
      v18 = v0[20];
      v19 = v5;
      v20 = v6;
      sub_2490B38D0(v5, v6);
      v18(v19, v20, 0);
      sub_2490A453C(v19, v20);
      sub_2490A453C(v19, v20);
      v14(v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v24(v23, v17);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2490E75F0()
{
  v1 = v0[49];
  v2 = v0[50];
  swift_beginAccess();
  v0[51] = *(v1 + v2);
  v3 = v0[37];
  v4 = v0[38];

  return MEMORY[0x2822009F8](sub_2490E7684, v3, v4);
}

uint64_t sub_2490E7684()
{
  v1 = *(v0 + 408);

  if (v1)
  {
    (*(v0 + 312))(*(v0 + 192), *(v0 + 208), *(v0 + 176));
    type metadata accessor for DTSyncDaemon(0);
    sub_2490F57CC(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E794C, v3, v2);
  }

  else
  {
    v4 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v5 = sub_24910BFBC();
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v7 = *(v0 + 328);
      v8 = *(v0 + 240);
      v9 = *(v0 + 216);
      v25 = *(v0 + 208);
      v10 = *(v0 + 176);
      v11 = *(v0 + 184);
      v12 = *(v0 + 160);
      v13 = v4;
      v12(v4, 0, 1);

      v7(v8, v9);
      (*(v11 + 8))(v25, v10);
    }

    else
    {
      v24 = *(v0 + 376);
      v14 = *(v0 + 328);
      v15 = *(v0 + 240);
      v16 = *(v0 + 216);
      v23 = *(v0 + 208);
      v17 = *(v0 + 176);
      v18 = *(v0 + 160);
      v19 = v5;
      v20 = v6;
      sub_2490B38D0(v5, v6);
      v18(v19, v20, 0);
      sub_2490A453C(v19, v20);
      sub_2490A453C(v19, v20);
      v14(v15, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v24(v23, v17);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2490E794C()
{
  v1 = *(v0 + 368);
  DTSyncDaemon.handleRequest(_:context:)(*(v0 + 240), *(v0 + 192));
  *(v0 + 416) = v1;
  (*(v0 + 376))(*(v0 + 192), *(v0 + 176));
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  if (v1)
  {
    v4 = sub_2490E7E70;
  }

  else
  {
    v4 = sub_2490E79EC;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_2490E79EC()
{

  v1 = v0[52];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_24910BFBC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v4 = v0[41];
    v5 = v0[30];
    v6 = v0[27];
    v22 = v0[26];
    v7 = v0[22];
    v8 = v0[23];
    v9 = v0[20];
    v10 = v1;
    v9(v1, 0, 1);

    v4(v5, v6);
    (*(v8 + 8))(v22, v7);
  }

  else
  {
    v21 = v0[47];
    v11 = v0[41];
    v12 = v0[30];
    v13 = v0[27];
    v20 = v0[26];
    v14 = v0[22];
    v15 = v0[20];
    v16 = v2;
    v17 = v3;
    sub_2490B38D0(v2, v3);
    v15(v16, v17, 0);
    sub_2490A453C(v16, v17);
    sub_2490A453C(v16, v17);
    v11(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v21(v20, v14);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2490E7BF8()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[30];
  v4 = v0[27];
  v11 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v1;
  v7(v1, 0, 1);

  v2(v3, v4);
  (*(v6 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2490E7D34()
{
  v1 = v0[46];
  v2 = v0[41];
  v3 = v0[30];
  v4 = v0[27];
  v11 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v1;
  v7(v1, 0, 1);

  v2(v3, v4);
  (*(v6 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2490E7E70()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[52];
  v2 = v0[41];
  v3 = v0[30];
  v4 = v0[27];
  v11 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v1;
  v7(v1, 0, 1);

  v2(v3, v4);
  (*(v6 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

void sub_2490E7FBC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v33 = sub_24910C2FC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v2 homes];
  sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
  v7 = sub_24910CD5C();

  v8 = v7;
  if (v7 >> 62)
  {
LABEL_28:
    v24 = v8;
    v9 = sub_24910D19C();
    v8 = v24;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v29 = v8;
  v30 = v8 & 0xC000000000000001;
  v26 = v8 + 32;
  v27 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = v3 + 1;
  v28 = v9;
  while (1)
  {
    if (v30)
    {
      v8 = MEMORY[0x24C1F1C90](v10, v29);
      goto LABEL_9;
    }

    if (v10 >= *(v27 + 16))
    {
      break;
    }

    v8 = *(v26 + 8 * v10);
LABEL_9:
    v12 = v8;
    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (v13)
    {
      goto LABEL_27;
    }

    v3 = [v8 accessories];
    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v15 = sub_24910CD5C();

    v31 = v14;
    v32 = v12;
    if (v15 >> 62)
    {
      v8 = sub_24910D19C();
      v16 = v8;
      if (v8)
      {
LABEL_12:
        v17 = 0;
        v36 = v15 & 0xC000000000000001;
        while (1)
        {
          if (v36)
          {
            v8 = MEMORY[0x24C1F1C90](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v8 = *(v15 + 8 * v17 + 32);
          }

          v3 = v8;
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v19 = [v8 uniqueIdentifier];
          sub_24910C2CC();

          v20 = sub_24910C28C();
          v22 = v21;
          (*v11)(v5, v33);
          v39 = v20;
          v40 = v22;
          v37 = v34;
          v38 = v35;
          sub_2490A44E8();
          v23 = sub_24910D12C();

          if (!v23)
          {

            return;
          }

          ++v17;
          if (v18 == v16)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_4:

    v10 = v31;
    if (v31 == v28)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_2490E832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2490A4674(a3, v25 - v10, &unk_27EED7B50, &qword_24910E810);
  v12 = sub_24910CDEC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2490A487C(v11, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24910CDAC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24910CCAC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2490E862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_24910C49C();
  v8[6] = v9;
  v8[7] = *(v9 - 8);
  v8[8] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v11 = sub_24910CDAC();
  v8[9] = v11;
  v8[10] = v10;

  return MEMORY[0x2822009F8](sub_2490E8740, v11, v10);
}

uint64_t sub_2490E8740(uint64_t a1)
{
  sub_24910C39C();
  if (qword_27EEDB010 != -1)
  {
    swift_once();
  }

  v2 = qword_27EEDB018;
  v3 = qword_27EEDB020;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v1;
  v4[1] = sub_2490E8858;

  return sub_2490E8ACC(v2, v3, 0, 0, 1);
}

uint64_t sub_2490E8858()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_2490E8A68;
  }

  else
  {
    v8 = sub_2490E89F0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490E89F0(__n128 a1)
{
  if ((sub_24910CE4C() & 1) == 0)
  {
    sub_2490E8F84(v1[3], v1[4], v1[5]);
  }

  v2 = v1[1];

  return v2();
}

uint64_t sub_2490E8A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490E8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24910C48C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2490E8BCC, 0, 0);
}

uint64_t sub_2490E8BCC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24910C49C();
  v5 = sub_2490F57CC(&qword_27EED7FA0, MEMORY[0x277D02A08], MEMORY[0x277D02A10]);
  sub_24910D58C();
  sub_2490F57CC(&qword_27EED7FA8, MEMORY[0x277D029F8], MEMORY[0x277D02A00]);
  sub_24910D31C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2490E8D5C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2490E8D5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2490E8F18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2490E8F18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2490E8F84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v42 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v13 = sub_24910C89C();
  __swift_project_value_buffer(v13, qword_27EEDAFD8);

  v14 = sub_24910C87C();
  v15 = sub_24910CF4C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v8;
    v17 = v4;
    v18 = v10;
    v19 = v12;
    v20 = v9;
    v21 = v16;
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v21 = 134218242;
    v23 = v42;
    *(v21 + 4) = v41;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_24909F930(v23, a2, v43);
    _os_log_impl(&dword_249083000, v14, v15, "### WaiterTimeout: xid=%llu, accessoryID=%s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1F26F0](v22, -1, -1);
    v24 = v21;
    v9 = v20;
    v12 = v19;
    v10 = v18;
    v4 = v17;
    v8 = v40;
    MEMORY[0x24C1F26F0](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  swift_beginAccess();
  v26 = *(v4 + v25);
  if (!*(v26 + 16) || (v27 = sub_2490A0A3C(v42, a2), (v28 & 1) == 0))
  {
    swift_endAccess();

    v29 = sub_24910C87C();
    v30 = sub_24910CF4C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43[0] = v32;
      *v31 = 134218242;
      v35 = v42;
      *(v31 + 4) = v41;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24909F930(v35, a2, v43);
      v34 = "### WaiterTimeout failed: accessory not tracked, xid=%llu, accessoryID=%s";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  v44 = *(*(v26 + 56) + 8 * v27);
  swift_endAccess();

  sub_2490E9518(v41, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_2490A487C(v8, &qword_27EED7F80, &qword_2491108C8);

    v29 = sub_24910C87C();
    v30 = sub_24910CF4C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43[0] = v32;
      *v31 = 134218242;
      v33 = v42;
      *(v31 + 4) = v41;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_24909F930(v33, a2, v43);
      v34 = "### WaiterTimeout failed: xid not found, xid=%llu, accessoryID=%s";
LABEL_12:
      _os_log_impl(&dword_249083000, v29, v30, v34, v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1F26F0](v32, -1, -1);
      MEMORY[0x24C1F26F0](v31, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v36 = v9;
  sub_2490FA810(v8, v12, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
  v37 = v44;
  if (!*(v44 + 16))
  {

    v37 = 0;
  }

  swift_beginAccess();

  sub_2490D3D58(v37, v42, a2);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
  sub_24910CE3C();
  sub_24910C7DC();
  v38 = sub_24910C7EC();
  sub_2490F7BC8(&v12[*(v36 + 20)], v38, 0, 1);

  sub_2490FA7B0(v12, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
}

uint64_t sub_2490E9518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2490A0AB4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2490F4130(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
    v19 = *(v12 - 8);
    sub_2490FA810(v11 + *(v19 + 72) * v7, a2, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
    sub_2490F2F30(v7, v10);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2490E9674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  swift_getObjectType();
  v5[32] = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v7 = sub_24910CDAC();
  v5[38] = v7;
  v5[39] = v6;

  return MEMORY[0x2822009F8](sub_2490E979C, v7, v6);
}

uint64_t sub_2490E979C()
{
  v56 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  sub_24910C32C();
  v1 = *(v0 + 160);
  *(v0 + 320) = v1;
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_2490FC1B4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 328) = v4;
  *(v0 + 336) = v3;
  v5 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  sub_24910C32C();
  v6 = *(v0 + 192);
  *(v0 + 344) = v6;
  if (v5 >> 60 == 15)
  {
    sub_24910C7DC();
    v7 = sub_24910C7EC();
    swift_willThrow();
LABEL_9:
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v10 = sub_24910C89C();
    __swift_project_value_buffer(v10, qword_27EEDAFD8);
    v11 = v7;
    v12 = sub_24910C87C();
    v13 = sub_24910CF4C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v55 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_24910D5DC();
      v18 = sub_24909F930(v16, v17, &v55);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_249083000, v12, v13, "### HMMM receive request failed: error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1F26F0](v15, -1, -1);
      MEMORY[0x24C1F26F0](v14, -1, -1);
    }

    v19 = *(v0 + 320);
    v20 = sub_24910C10C();
    if (v19)
    {
      v54 = *(v0 + 328);

      v21 = [v20 domain];
      if (!v21)
      {
        sub_24910CC9C();
        v21 = sub_24910CC8C();
      }

      v52 = *(v0 + 336);
      v53 = *(v0 + 344);
      v51 = *(v0 + 328);
      v22 = [v20 code];
      v23 = [v20 userInfo];
      sub_24910CC2C();

      v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v25 = sub_24910CC1C();

      v26 = [v24 initWithDomain:v21 code:v22 userInfo:v25];

      v54(0, 0xF000000000000000, v26);
      sub_2490FBDE0(v51, v52);

      sub_2490FBDE0(v51, v52);
      v20 = v26;
    }

    else
    {
    }

    v27 = *(v0 + 8);

    return v27();
  }

  if (!v1)
  {
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    sub_24910C7DC();
    sub_2490B38D0(v9, v8);
    v7 = sub_24910C7EC();
    swift_willThrow();
    sub_2490B3854(v9, v8);
    goto LABEL_9;
  }

  sub_2490B3924(*(v0 + 216), *(v0 + 224));
  sub_2490FBE30(v4, v3);
  sub_2490FC158(qword_27EEDB648, &unk_24911058C);
  sub_24910BF8C();
  sub_2490FA810(*(v0 + 288), *(v0 + 296), type metadata accessor for DTTransportDaemon.DTTransportRequest);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 296);
  v30 = *(v0 + 280);
  v31 = sub_24910C89C();
  *(v0 + 352) = __swift_project_value_buffer(v31, qword_27EEDAFD8);
  sub_2490FA748(v29, v30, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v32 = v6;
  v33 = sub_24910C87C();
  v34 = sub_24910CF5C();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 280);
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315394;
    v39 = sub_2490EF944();
    v41 = v40;
    sub_2490FA7B0(v36, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v42 = sub_24909F930(v39, v41, &v55);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = [v32 peerDestination];
    v44 = [v43 idsIdentifier];

    v45 = sub_24910CC9C();
    v47 = v46;

    v48 = sub_24909F930(v45, v47, &v55);

    *(v37 + 14) = v48;
    _os_log_impl(&dword_249083000, v33, v34, "HMMM receive request: %s, from=%s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v38, -1, -1);
    MEMORY[0x24C1F26F0](v37, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v36, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = sub_2490EA044;
  v50 = *(v0 + 296);

  return sub_2490D5D08(v0 + 16, v50, v32);
}

uint64_t sub_2490EA044()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_2490EA9EC;
  }

  else
  {
    v5 = sub_2490EA180;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490EA180()
{
  v69 = v0;
  sub_2490A4674(v0 + 16, v0 + 96, &unk_27EED8010, &qword_249110980);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 272);
    sub_2490FC19C((v0 + 96), v0 + 56);
    sub_2490FA748(v1, v2, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v3 = sub_24910C87C();
    v4 = sub_24910CF5C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 272);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v68[0] = v8;
      *v7 = 136315138;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v9 = sub_24910D50C();
      v11 = v10;
      sub_2490FA7B0(v6, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v12 = sub_24909F930(v9, v11, v68);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_249083000, v3, v4, "HMMM send response: xid=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1F26F0](v8, -1, -1);
      MEMORY[0x24C1F26F0](v7, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v6, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v25 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v26 = sub_24910BFBC();
    if (v25)
    {
      v28 = *(v0 + 296);
      v30 = *(v0 + 216);
      v29 = *(v0 + 224);
      sub_2490FBDE0(*(v0 + 328), *(v0 + 336));
      sub_2490B3854(v30, v29);
      sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
      sub_2490FA7B0(v28, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v31 = sub_24910C89C();
      __swift_project_value_buffer(v31, qword_27EEDAFD8);
      v32 = v25;
      v33 = sub_24910C87C();
      v34 = sub_24910CF4C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v68[0] = v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = sub_24910D5DC();
        v39 = sub_24909F930(v37, v38, v68);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_249083000, v33, v34, "### HMMM receive request failed: error=%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1F26F0](v36, -1, -1);
        MEMORY[0x24C1F26F0](v35, -1, -1);
      }

      v40 = *(v0 + 320);
      v41 = sub_24910C10C();
      if (v40)
      {
        v67 = *(v0 + 328);

        v42 = [v41 domain];
        if (!v42)
        {
          sub_24910CC9C();
          v42 = sub_24910CC8C();
        }

        v66 = *(v0 + 344);
        v43 = [v41 code];
        v44 = [v41 userInfo];
        sub_24910CC2C();

        v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v46 = sub_24910CC1C();

        v47 = [v45 initWithDomain:v42 code:v43 userInfo:v46];

        v67(0, 0xF000000000000000, v47);
        sub_2490FBDE0(v64, v65);

        sub_2490FBDE0(v64, v65);
      }

      else
      {
      }
    }

    else
    {
      v48 = *(v0 + 336);
      v49 = *(v0 + 344);
      v50 = *(v0 + 328);
      v51 = *(v0 + 296);
      v53 = *(v0 + 216);
      v52 = *(v0 + 224);
      v54 = v26;
      v55 = v27;
      sub_2490FBDE0(v50, v48);
      sub_2490B38D0(v54, v55);
      v50(v54, v55, 0);
      sub_2490FBDE0(v50, v48);
      sub_2490A453C(v54, v55);
      sub_2490B3854(v53, v52);
      sub_2490A453C(v54, v55);

      sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
      sub_2490FA7B0(v51, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }
  }

  else
  {
    v13 = *(v0 + 296);
    v14 = *(v0 + 264);
    sub_2490FBDE0(*(v0 + 328), *(v0 + 336));
    sub_2490A487C(v0 + 96, &unk_27EED8010, &qword_249110980);
    sub_2490FA748(v13, v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v15 = sub_24910C87C();
    v16 = sub_24910CF5C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 264);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68[0] = v20;
      *v19 = 136315138;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_24910D50C();
      v23 = v22;
      sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v24 = sub_24909F930(v21, v23, v68);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_249083000, v15, v16, "HMMM send response: nil, xid=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1F26F0](v20, -1, -1);
      MEMORY[0x24C1F26F0](v19, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v56 = *(v0 + 336);
    v57 = *(v0 + 344);
    v58 = *(v0 + 328);
    v59 = *(v0 + 296);
    v61 = *(v0 + 216);
    v60 = *(v0 + 224);
    v58(0, 0xF000000000000000, 0);
    sub_2490FBDE0(v58, v56);
    sub_2490B3854(v61, v60);

    sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
    sub_2490FA7B0(v59, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2490EA9EC()
{
  v29 = v0;
  v1 = *(v0 + 296);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_2490FBDE0(*(v0 + 328), *(v0 + 336));
  sub_2490B3854(v3, v2);
  sub_2490FA7B0(v1, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v4 = *(v0 + 368);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v5 = sub_24910C89C();
  __swift_project_value_buffer(v5, qword_27EEDAFD8);
  v6 = v4;
  v7 = sub_24910C87C();
  v8 = sub_24910CF4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_24910D5DC();
    v13 = sub_24909F930(v11, v12, &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_249083000, v7, v8, "### HMMM receive request failed: error=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1F26F0](v10, -1, -1);
    MEMORY[0x24C1F26F0](v9, -1, -1);
  }

  v14 = *(v0 + 320);
  v15 = sub_24910C10C();
  if (v14)
  {
    v27 = *(v0 + 328);

    v16 = [v15 domain];
    if (!v16)
    {
      sub_24910CC9C();
      v16 = sub_24910CC8C();
    }

    v25 = *(v0 + 336);
    v26 = *(v0 + 344);
    v24 = *(v0 + 328);
    v17 = [v15 code];
    v18 = [v15 userInfo];
    sub_24910CC2C();

    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_24910CC1C();

    v21 = [v19 initWithDomain:v16 code:v17 userInfo:v20];

    v27(0, 0xF000000000000000, v21);
    sub_2490FBDE0(v24, v25);

    sub_2490FBDE0(v24, v25);
    v15 = v21;
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_2490EAD84(void *a1, unint64_t a2, id a3, void (*a4)(id, unint64_t, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      sub_24910C7DC();
      v8 = sub_24910C7EC();
      a3 = 0;
      v5 = v8;
    }

    v9 = a3;
    a4(v5, 0, 1);
  }

  else
  {
    sub_2490B38D0(a1, a2);
    a4(a1, a2, 0);

    sub_2490B3854(a1, a2);
  }
}

uint64_t sub_2490EAE90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_24910C1DC();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, v11, a4);

  sub_2490B3854(v6, v10);
}

uint64_t sub_2490EAF58(id *a1, uint64_t a2)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_24910C2CC();

  v8 = sub_24910C2BC();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void *sub_2490EB05C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1F1C90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2490EB170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v19 && (v20 = [v19 currentAccessory]) != 0)
  {
    v21 = v20;
    v22 = sub_2490E55A0();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 uniqueIdentifier];
      v60 = v4;
      v25 = v7;
      v26 = v3;
      v27 = v9;
      v28 = v21;
      v29 = ObjectType;
      v30 = v24;

      sub_24910C2CC();
      ObjectType = v29;
      v21 = v28;
      v9 = v27;
      v3 = v26;
      v7 = v25;
      v4 = v60;
      (*(v60 + 56))(v18, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v18, 1, 1, v3);
    }

    v37 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
    swift_beginAccess();
    sub_2490FC258(v18, v1 + v37);
    swift_endAccess();
    sub_2490A4674(v1 + v37, v16, &qword_27EED7900, &qword_24910EB50);
    if ((*(v4 + 48))(v16, 1, v3) == 1)
    {
      sub_2490A487C(v16, &qword_27EED7900, &qword_24910EB50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24910E880;
      v39 = [v21 uniqueIdentifier];
      sub_24910C2CC();

      v40 = sub_24910C28C();
      v42 = v41;
      (*(v4 + 8))(v7, v3);
      *(inited + 32) = v40;
      *(inited + 40) = v42;
      v43 = sub_2490F5E7C(inited);
      swift_setDeallocating();
      v44 = sub_2490FC2C8(inited + 32);
      if (qword_27EEDAFF0 != -1)
      {
        v44 = swift_once();
      }

      v45 = qword_27EEDAFF8;
      v46 = MEMORY[0x28223BE20](v44);
      *(&v60 - 2) = ObjectType;
      *(&v60 - 1) = v43;
      MEMORY[0x28223BE20](v46);
      *(&v60 - 2) = sub_2490FC7E4;
      *(&v60 - 1) = v47;
      os_unfair_lock_lock(v45 + 4);
      sub_2490FC878();
      os_unfair_lock_unlock(v45 + 4);
    }

    else
    {
      v60 = ObjectType;
      (*(v4 + 32))(v9, v16, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_249110210;
      v49 = [v21 uniqueIdentifier];
      sub_24910C2CC();

      v50 = sub_24910C28C();
      v52 = v51;
      v53 = *(v4 + 8);
      v53(v7, v3);
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      *(v48 + 48) = sub_24910C28C();
      *(v48 + 56) = v54;
      v55 = sub_2490F5E7C(v48);
      swift_setDeallocating();
      v56 = swift_arrayDestroy();
      if (qword_27EEDAFF0 != -1)
      {
        v56 = swift_once();
      }

      v57 = qword_27EEDAFF8;
      v58 = MEMORY[0x28223BE20](v56);
      *(&v60 - 2) = v60;
      *(&v60 - 1) = v55;
      MEMORY[0x28223BE20](v58);
      *(&v60 - 2) = sub_2490FC7E4;
      *(&v60 - 1) = v59;
      os_unfair_lock_lock(v57 + 4);
      sub_2490FC878();
      os_unfair_lock_unlock(v57 + 4);

      v53(v9, v3);
    }
  }

  else
  {
    (*(v4 + 56))(v13, 1, 1, v3);
    v31 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
    swift_beginAccess();
    sub_2490FC258(v13, v1 + v31);
    v32 = swift_endAccess();
    if (qword_27EEDAFF0 != -1)
    {
      v32 = swift_once();
    }

    v33 = qword_27EEDAFF8;
    v34 = MEMORY[0x28223BE20](v32);
    v35 = MEMORY[0x277D84FA0];
    *(&v60 - 2) = ObjectType;
    *(&v60 - 1) = v35;
    MEMORY[0x28223BE20](v34);
    *(&v60 - 2) = sub_2490FC7E4;
    *(&v60 - 1) = v36;
    os_unfair_lock_lock(v33 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v33 + 4);
  }
}

uint64_t sub_2490EB864()
{
  v122 = sub_24910C2FC();
  v1 = *(v122 - 8);
  v2 = MEMORY[0x28223BE20](v122);
  v116 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v97 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v97 - v8;
  v101 = v10;
  MEMORY[0x28223BE20](v7);
  v114 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD0, &qword_249110908);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v97 - v16;
  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v111 = v0;
  v19 = *(v0 + v18);
  v20 = *(v19 + 64);
  v105 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v118 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  v98 = (v21 + 63) >> 6;
  v119 = (v1 + 32);
  v120 = (v1 + 16);
  v117 = v1;
  v104 = (v1 + 8);
  v100 = "xt:xpcConnection:)";
  v99 = &v125;
  v103 = v19;

  v24 = 0;
  *&v25 = 136315138;
  v97 = v25;
  v102 = v6;
  v121 = v9;
  v113 = v15;
  v112 = v17;
  while (v23)
  {
    v37 = v24;
    v38 = v111;
LABEL_16:
    v42 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v43 = v42 | (v37 << 6);
    v44 = v103;
    v45 = v117;
    v46 = v114;
    v47 = v122;
    (*(v117 + 16))(v114, *(v103 + 48) + *(v117 + 72) * v43, v122);
    v48 = *(*(v44 + 56) + 8 * v43);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    v50 = *(v49 + 48);
    v51 = *(v45 + 32);
    v15 = v113;
    v51(v113, v46, v47);
    *&v15[v50] = v48;
    (*(*(v49 - 8) + 56))(v15, 0, 1, v49);
    v52 = v48;
    v17 = v112;
    v41 = v38;
LABEL_17:
    sub_2490B3868(v15, v17, &qword_27EED7FD0, &qword_249110908);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    if ((*(*(v53 - 8) + 48))(v17, 1, v53) == 1)
    {
    }

    v54 = *&v17[*(v53 + 48)];
    v55 = *v119;
    (*v119)(v121, v17, v122);
    v56 = v118;
    swift_beginAccess();
    if (*(*(v41 + v56) + 16) && (sub_2490F128C(v121), (v57 & 1) != 0))
    {
      swift_endAccess();

      (*v104)(v121, v122);
    }

    else
    {
      v110 = v54;
      swift_endAccess();
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v58 = sub_24910C89C();
      __swift_project_value_buffer(v58, qword_27EEDAFD8);
      v59 = *v120;
      v60 = v102;
      (*v120)(v102, v121, v122);
      v61 = sub_24910C87C();
      v62 = sub_24910CF5C();
      v63 = os_log_type_enabled(v61, v62);
      v109 = v55;
      v115 = v59;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v65 = v122;
        v66 = v64;
        v108 = swift_slowAlloc();
        aBlock = v108;
        *v66 = v97;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v67 = sub_24910D50C();
        v69 = v68;
        v70 = v104;
        v71 = v65;
        v72 = *v104;
        (*v104)(v60, v71);
        v73 = sub_24909F930(v67, v69, &aBlock);
        v41 = v111;

        *(v66 + 4) = v73;
        _os_log_impl(&dword_249083000, v61, v62, "HMMM register start: home=%s", v66, 0xCu);
        v74 = v108;
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x24C1F26F0](v74, -1, -1);
        v75 = v66;
        v59 = v115;
        MEMORY[0x24C1F26F0](v75, -1, -1);
      }

      else
      {

        v70 = v104;
        v72 = *v104;
        (*v104)(v60, v122);
      }

      v76 = v116;
      v59(v116, v121, v122);
      v77 = v118;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v41 + v77);
      v79 = v129;
      *(v41 + v77) = 0x8000000000000000;
      v80 = sub_2490F128C(v76);
      v82 = v79[2];
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(v82, v83);
      v85 = v82 + v83;
      if (v84)
      {
        goto LABEL_38;
      }

      v86 = v81;
      if (v79[3] >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v95 = v80;
          sub_2490F3990();
          v80 = v95;
        }
      }

      else
      {
        sub_2490F14E4(v85, isUniquelyReferenced_nonNull_native);
        v80 = sub_2490F128C(v116);
        if ((v86 & 1) != (v87 & 1))
        {
          goto LABEL_40;
        }
      }

      v88 = v129;
      v108 = (v70 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v107 = v72;
      if (v86)
      {
        *(v129[7] + v80) = 0;
        v72(v116, v122);
      }

      else
      {
        v129[(v80 >> 6) + 8] |= 1 << v80;
        v89 = v116;
        v90 = v80;
        v91 = v122;
        v59((v88[6] + *(v117 + 72) * v80), v116, v122);
        *(v88[7] + v90) = 0;
        v72(v89, v91);
        v92 = v88[2];
        v84 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v84)
        {
          goto LABEL_39;
        }

        v88[2] = v93;
      }

      *(v41 + v118) = v88;

      swift_endAccess();
      v106 = [objc_allocWithZone(MEMORY[0x277CD1B48]) initWithUserRestriction_];
      v26 = sub_24910CC8C();
      v27 = swift_allocObject();
      swift_weakInit();
      v127 = sub_2490FB82C;
      v128 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v124 = 1107296256;
      v125 = sub_2490ECA6C;
      v126 = &block_descriptor_251;
      v28 = _Block_copy(&aBlock);

      v29 = swift_allocObject();
      swift_weakInit();
      v30 = v114;
      v31 = v122;
      v115(v114, v121, v122);
      v32 = (*(v117 + 80) + 24) & ~*(v117 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      v109(v33 + v32, v30, v31);
      v127 = sub_2490FB8F8;
      v128 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v124 = 1107296256;
      v125 = sub_2490EDB80;
      v126 = &block_descriptor_258;
      v34 = _Block_copy(&aBlock);

      v35 = v110;
      v36 = v106;
      [v110 registerModernMessagingRequestHandlerWithMessageName:v26 options:v106 requestHandler:v28 completionHandler:v34];
      _Block_release(v34);
      _Block_release(v28);

      v107(v121, v31);
      v15 = v113;
      v17 = v112;
    }
  }

  if (v98 <= v24 + 1)
  {
    v39 = v24 + 1;
  }

  else
  {
    v39 = v98;
  }

  v40 = v39 - 1;
  v41 = v111;
  while (1)
  {
    v37 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v37 >= v98)
    {
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
      (*(*(v94 - 8) + 56))(v15, 1, 1, v94);
      v23 = 0;
      v24 = v40;
      goto LABEL_17;
    }

    v23 = *(v105 + 8 * v37);
    ++v24;
    if (v23)
    {
      v38 = v111;
      v24 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24910D57C();
  __break(1u);
  return result;
}

uint64_t sub_2490EC3A4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v56 = a5;
  v60 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = v17;
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v52 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  v19 = *(v63 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v63);
  v57 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v62 = a2;
    v70 = a3;
    sub_2490A4744(0, &qword_27EED8000, 0x277CD1B40);
    v26 = a3;
    sub_24910C33C();
    v65 = v14;
    if (a4)
    {
      v27 = swift_allocObject();
      v28 = v56;
      *(v27 + 16) = a4;
      *(v27 + 24) = v28;
      v29 = sub_2490FC120;
    }

    else
    {
      v29 = 0;
      v27 = 0;
      v28 = v56;
    }

    v70 = v29;
    v71 = v27;
    sub_2490FBE30(a4, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8008, &qword_249110950);
    v30 = v64;
    sub_24910C33C();
    v54 = sub_24910C34C();
    v52 = sub_24910CDEC();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v13, 1, 1, v52);
    v31 = *(v19 + 16);
    v32 = v13;
    v33 = v57;
    v56 = v23;
    v34 = v23;
    v35 = v63;
    v31(v57, v34, v63);
    v36 = v59;
    v15[2](v59, v30, v65);
    v37 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v38 = *(v15 + 80);
    v55 = v32;
    v39 = (v20 + v38 + v37) & ~v38;
    v40 = swift_allocObject();
    v41 = v60;
    *(v40 + 2) = v25;
    *(v40 + 3) = v41;
    *(v40 + 4) = v62;
    v58 = v19;
    (*(v19 + 32))(&v40[v37], v33, v35);
    v57 = v15;
    v42 = v15[4];
    v43 = v55;
    v42(&v40[v39], v36, v65);
    v44 = v61;
    sub_2490A4674(v43, v61, &unk_27EED7B50, &qword_24910E810);
    v45 = v53;
    v46 = v52;
    v47 = (*(v53 + 48))(v44, 1);

    sub_2490B3924(v41, v62);
    if (v47 == 1)
    {
      sub_2490A487C(v44, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v45 + 8))(v44, v46);
    }

    v48 = sub_2490A46DC();
    v49 = swift_allocObject();
    *(v49 + 16) = &unk_249110960;
    *(v49 + 24) = v40;
    v66 = 6;
    v67 = 0;
    v50 = v54;
    v68 = v54;
    v69 = v48;

    v51 = v50;
    swift_task_create();
    sub_2490A487C(v43, &unk_27EED7B50, &qword_24910E810);

    v57[1](v64, v65);
    return (*(v58 + 8))(v56, v63);
  }

  return result;
}

uint64_t sub_2490EC9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_24908837C;

  return sub_2490E9674(a3, a4, a5, a6);
}

uint64_t sub_2490ECA6C(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_24910C1DC();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = _Block_copy(a4);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_2490FBE28;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v7(v6, v10, v13, v11, v12);

  sub_2490FBDE0(v11, v12);
  sub_2490B3854(v6, v10);
}

void sub_2490ECB80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_24910C10C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_24910C1CC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_2490ECC18(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = result;
    v31 = sub_24910C34C();
    v16 = a3;
    v17 = v5;
    v18 = sub_24910CDEC();
    v19 = *(v18 - 8);
    v30 = a1;
    v20 = v19;
    (*(v19 + 56))(v13, 1, 1, v18);
    (*(v6 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v17);
    v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v15;
    (*(v6 + 32))(v22 + v21, v29, v17);
    v23 = v30;
    *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    sub_2490A4674(v13, v11, &unk_27EED7B50, &qword_24910E810);
    LODWORD(v21) = (*(v20 + 48))(v11, 1, v18);

    v24 = v23;
    if (v21 == 1)
    {
      sub_2490A487C(v11, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v20 + 8))(v11, v18);
    }

    v25 = sub_2490A46DC();
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_249110930;
    *(v26 + 24) = v22;
    v32 = 6;
    v33 = 0;
    v27 = v31;
    v34 = v31;
    v35 = v25;

    v28 = v27;
    swift_task_create();
    sub_2490A487C(v13, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490ECFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for DTTransportDaemon(0);
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v6 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490ED08C, v6, v5);
}

uint64_t sub_2490ED08C()
{
  sub_2490ED0F0(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490ED0F0(void *a1, void *a2)
{
  v5 = sub_24910CB8C();
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v79 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24910CBAC();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910CB7C();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_24910CBCC();
  v76 = *(v82 - 8);
  v11 = MEMORY[0x28223BE20](v82);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v65 - v13;
  v14 = sub_24910C2FC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  if (a2)
  {
    v69 = v2;
    v68 = v5;
    v24 = a2;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v25 = sub_24910C89C();
    __swift_project_value_buffer(v25, qword_27EEDAFD8);
    v67 = *(v15 + 16);
    v67(v23, a1, v14);
    v26 = a2;
    v27 = a2;
    v28 = sub_24910C87C();
    v29 = sub_24910CF4C();
    v71 = v27;

    v66 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70 = a1;
      v31 = v30;
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v31 = 136315394;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_24910D50C();
      v34 = v33;
      (*(v15 + 8))(v23, v14);
      v35 = sub_24909F930(v32, v34, aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v36 = sub_24910D5DC();
      v38 = sub_24909F930(v36, v37, aBlock);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_249083000, v28, v66, "### HMMM register failed: home=%s error=%s", v31, 0x16u);
      v39 = v65;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v39, -1, -1);
      v40 = v31;
      a1 = v70;
      MEMORY[0x24C1F26F0](v40, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v23, v14);
    }

    v67(v21, a1, v14);
    swift_beginAccess();
    sub_2490D3868(2, v21);
    swift_endAccess();
    v70 = sub_24910C34C();
    v52 = v72;
    sub_24910CBBC();
    *v10 = 10;
    v54 = v73;
    v53 = v74;
    (*(v73 + 104))(v10, *MEMORY[0x277D85188], v74);
    v55 = v75;
    MEMORY[0x24C1F1610](v52, v10);
    (*(v54 + 8))(v10, v53);
    v76 = *(v76 + 8);
    (v76)(v52, v82);
    v56 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2490FBB4C;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2490FC7CC;
    aBlock[3] = &block_descriptor_271;
    v57 = _Block_copy(aBlock);

    v58 = v77;
    sub_24910CB9C();
    v84 = MEMORY[0x277D84F90];
    sub_2490F57CC(&qword_27EED7F30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F38, &qword_249110880);
    sub_2490FAC70(&unk_27EED7F40, &qword_27EED7F38, &qword_249110880, MEMORY[0x277D83970]);
    v59 = v79;
    v60 = v68;
    sub_24910D14C();
    v61 = v70;
    MEMORY[0x24C1F19C0](v55, v58, v59, v57);
    _Block_release(v57);

    (*(v81 + 8))(v59, v60);
    (*(v78 + 8))(v58, v80);
    (v76)(v55, v82);
  }

  else
  {
    v41 = v2;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v42 = sub_24910C89C();
    __swift_project_value_buffer(v42, qword_27EEDAFD8);
    v43 = *(v15 + 16);
    v70 = a1;
    v43(v18, a1, v14);
    v44 = sub_24910C87C();
    v45 = sub_24910CF5C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315138;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = sub_24910D50C();
      v50 = v49;
      (*(v15 + 8))(v18, v14);
      v51 = sub_24909F930(v48, v50, aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_249083000, v44, v45, "HMMM registered: home=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C1F26F0](v47, -1, -1);
      MEMORY[0x24C1F26F0](v46, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v63 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v41 + v63);
    *(v41 + v63) = 0x8000000000000000;
    sub_2490F30DC(1, v70, isUniquelyReferenced_nonNull_native);
    *(v41 + v63) = v84;
    return swift_endAccess();
  }
}

void sub_2490EDB80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2490EDBEC(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v4 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v5 = *(a1 + v2);
      *(a1 + v2) = v4;
      v6 = v4;

      [v6 setDelegate_];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }
}

uint64_t sub_2490EDCB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2490EDD38()
{
  sub_24910D25C();

  strcpy(v7, "dataSyncState=");
  HIBYTE(v7[1]) = -18;
  v1 = [v0 dataSyncState];
  if (v1 <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v2 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
        goto LABEL_20;
      }

      if (v1 == 1)
      {
        v2 = 0xE400000000000000;
        v3 = 1685024583;
        goto LABEL_20;
      }

LABEL_19:
      v2 = 0xE100000000000000;
      v3 = 63;
      goto LABEL_20;
    }

    if (v1 != 2)
    {
      v2 = 0x80000002491115B0;
      v3 = 0xD000000000000016;
      goto LABEL_20;
    }

    v3 = 0xD000000000000012;
    v4 = "KeychainNotEnabled";
LABEL_17:
    v2 = (v4 - 32) | 0x8000000000000000;
    goto LABEL_20;
  }

  if (v1 > 5)
  {
    if (v1 == 6)
    {
      v2 = 0x8000000249111550;
      v3 = 0xD00000000000001CLL;
      goto LABEL_20;
    }

    if (v1 != 7)
    {
      goto LABEL_19;
    }

    v3 = 0xD000000000000012;
    v4 = "UnsupportedAccount";
    goto LABEL_17;
  }

  if (v1 == 4)
  {
    v2 = 0x8000000249111590;
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0x8000000249111570;
    v3 = 0xD00000000000001ALL;
  }

LABEL_20:
  MEMORY[0x24C1F1710](v3, v2);

  MEMORY[0x24C1F1710](0x737574617473202CLL, 0xE90000000000003DLL);
  v5 = sub_2490F0864([v0 status]);
  MEMORY[0x24C1F1710](v5);

  return v7[0];
}

uint64_t sub_2490EDF4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490FC7C8, v4, v3);
}

uint64_t sub_2490EE05C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v15 = sub_24910C89C();
  __swift_project_value_buffer(v15, qword_27EEDAFD8);
  v16 = a1;
  v17 = sub_24910C87C();
  v18 = sub_24910CF5C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136446210;
    v21 = sub_2490EDD38();
    v23 = sub_24909F930(v21, v22, v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_249083000, v17, v18, a2, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1F26F0](v20, -1, -1);
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  v24 = sub_24910C34C();
  v25 = sub_24910CDEC();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v14, 1, 1, v25);
  sub_2490A4674(v14, v12, &unk_27EED7B50, &qword_24910E810);
  v27 = (*(v26 + 48))(v12, 1, v25);

  if (v27 == 1)
  {
    sub_2490A487C(v12, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v26 + 8))(v12, v25);
  }

  v28 = sub_2490A46DC();
  v29 = swift_allocObject();
  *(v29 + 16) = v33;
  *(v29 + 24) = v7;
  v35[1] = 6;
  v35[2] = 0;
  v35[3] = v24;
  v35[4] = v28;

  v30 = v24;
  swift_task_create();
  sub_2490A487C(v14, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EE3EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_2490EE644(uint64_t a1, uint64_t a2, void *a3, void *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  v13 = a3;
  v14 = a4;

  sub_2490F887C(v14, a5, a6, a7, a8);
}

uint64_t sub_2490EE6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490EE7A4, v4, v3);
}

uint64_t sub_2490EE7A4()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v4 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v5 = *(v1 + v2);
      *(v1 + v2) = v4;
      v6 = v4;

      [v6 setDelegate_];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2490EEA28(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v55 = a6;
  v52 = a4;
  v53 = a5;
  v8 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v15;
  v16 = sub_24910C2FC();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v19 = sub_24910C89C();
  __swift_project_value_buffer(v19, qword_27EEDAFD8);
  v20 = a1;
  v21 = a2;
  v22 = sub_24910C87C();
  v23 = sub_24910CF5C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = v8;
    v25 = v24;
    v49 = swift_slowAlloc();
    v56[0] = v49;
    *v25 = 136315394;
    v26 = [v20 name];
    v27 = sub_24910CC9C();
    v48 = a3;
    v29 = v28;

    v30 = sub_24909F930(v27, v29, v56);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = [v21 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_24910D50C();
    v34 = v33;
    (*(v51 + 8))(v18, v16);
    v35 = sub_24909F930(v32, v34, v56);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_249083000, v22, v23, v48, v25, 0x16u);
    v36 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v36, -1, -1);
    v37 = v25;
    v8 = v50;
    MEMORY[0x24C1F26F0](v37, -1, -1);
  }

  v38 = sub_24910C34C();
  v39 = sub_24910CDEC();
  v40 = *(v39 - 8);
  v41 = v54;
  (*(v40 + 56))(v54, 1, 1, v39);
  sub_2490A4674(v41, v14, &unk_27EED7B50, &qword_24910E810);
  v42 = (*(v40 + 48))(v14, 1, v39);

  if (v42 == 1)
  {
    sub_2490A487C(v14, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v40 + 8))(v14, v39);
  }

  v43 = sub_2490A46DC();
  v44 = swift_allocObject();
  *(v44 + 16) = v53;
  *(v44 + 24) = v8;
  v56[1] = 6;
  v56[2] = 0;
  v56[3] = v38;
  v56[4] = v43;

  v45 = v38;
  swift_task_create();
  sub_2490A487C(v41, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EEF48(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  v7 = a3;
  v8 = a4;

  a5(v7, v8);
}

uint64_t DTTransportDaemon.siriEndpointProfile(_:didUpdateSessionHubIdentifier:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v6;
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v11 = sub_24910C89C();
  __swift_project_value_buffer(v11, qword_27EEDAFD8);
  v12 = a1;
  v13 = sub_24910C87C();
  v14 = sub_24910CF5C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v15 = 136315394;
    v16 = [v12 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_24910D50C();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_24909F930(v17, v19, v42);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v12 accessory];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 name];

      v24 = sub_24910CC9C();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = sub_24909F930(v24, v26, v42);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_249083000, v13, v14, "HomeKit didUpdateSessionHubIdentifier: id=%s, name=%s", v15, 0x16u);
    v28 = v39;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v28, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  v29 = v41;
  v30 = sub_24910C34C();
  v31 = sub_24910CDEC();
  v32 = *(v31 - 8);
  v33 = v40;
  (*(v32 + 56))(v40, 1, 1, v31);
  sub_2490A4674(v33, v5, &unk_27EED7B50, &qword_24910E810);
  v34 = (*(v32 + 48))(v5, 1, v31);

  if (v34 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v32 + 8))(v5, v31);
  }

  v35 = sub_2490A46DC();
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_2491102E8;
  *(v36 + 24) = v29;
  v42[1] = 6;
  v42[2] = 0;
  v42[3] = v30;
  v42[4] = v35;

  v37 = v30;
  swift_task_create();
  sub_2490A487C(v33, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EF640()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2490EF680()
{

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_2490EF6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  result = [*(v0 + 16) device];
  if (result)
  {
    v8 = result;
    v9 = [result idsIdentifier];

    if (v9)
    {
      sub_24910C2CC();

      v10 = sub_24910C2FC();
      (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    }

    else
    {
      v10 = sub_24910C2FC();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    }

    sub_2490B3868(v4, v6, &qword_27EED7900, &qword_24910EB50);
    sub_24910C2FC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_2490A487C(v6, &qword_27EED7900, &qword_24910EB50);
      return 0;
    }

    else
    {
      v12 = sub_24910C28C();
      (*(v11 + 8))(v6, v10);
      return v12;
    }
  }

  return result;
}

uint64_t sub_2490EF8FC()
{

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2490EF944()
{
  sub_24910D25C();
  MEMORY[0x24C1F1710](1029990776, 0xE400000000000000);
  sub_24910C2FC();
  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_24910D50C();
  MEMORY[0x24C1F1710](v0);

  MEMORY[0x24C1F1710](0x736575716572202CLL, 0xEA00000000003D74);
  type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
  v1 = sub_24910D50C();
  MEMORY[0x24C1F1710](v1);

  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x72616D697270202CLL, 0xEA00000000003D79);
  sub_24910D52C();
  return 0;
}

uint64_t sub_2490EFB3C()
{
  v1 = 6580600;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0x7972616D697270;
  }

  if (*v0)
  {
    v1 = 0x74736575716572;
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

uint64_t sub_2490EFBA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2490FC598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2490EFBDC(uint64_t a1)
{
  v2 = sub_2490FA0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490EFC18(uint64_t a1)
{
  v2 = sub_2490FA0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490EFC54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7E90, &qword_2491107A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490FA0A4();
  sub_24910D64C();
  v8[15] = 0;
  sub_24910C2FC();
  sub_2490F57CC(&qword_27EED7E98, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24910D4EC();
  if (!v1)
  {
    type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
    v8[14] = 1;
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7EA0, MEMORY[0x277D057E0], MEMORY[0x277D057E8]);
    sub_24910D4EC();
    v8[13] = 2;
    sub_24910D46C();
    v8[12] = 3;
    sub_24910D47C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2490EFEB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_24910C86C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24910C2FC();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EA8, &qword_2491107A8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v25 - v7;
  v9 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490FA0A4();
  v33 = v8;
  v12 = v34;
  sub_24910D63C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v34 = v9;
  v13 = v28;
  v14 = v29;
  v38 = 0;
  sub_2490F57CC(&qword_27EED7EB0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_24910D43C();
  v15 = *(v13 + 32);
  v16 = v31;
  v31 = v5;
  v15(v11, v16);
  v37 = 1;
  sub_2490F57CC(&qword_27EED7EB8, MEMORY[0x277D057E0], MEMORY[0x277D057F0]);
  v17 = v4;
  v18 = v14;
  sub_24910D43C();
  v19 = v34;
  (*(v27 + 32))(&v11[*(v34 + 20)], v17, v18);
  v36 = 2;
  v20 = sub_24910D3BC();
  v21 = &v11[*(v19 + 24)];
  *v21 = v20;
  v21[1] = v22;
  v35 = 3;
  v23 = sub_24910D3CC();
  (*(v30 + 8))(v33, v32);
  v11[*(v19 + 28)] = v23;
  sub_2490FA748(v11, v26, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2490FA7B0(v11, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

uint64_t DTTransportDaemon.deinit()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID, &qword_27EED7900, &qword_24910EB50);

  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollDeadline, &unk_27EED7B70, &qword_249110300);

  return v0;
}

uint64_t DTTransportDaemon.__deallocating_deinit()
{
  DTTransportDaemon.deinit();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x34);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2490F0670(uint64_t a1)
{
  v1 = sub_24910C34C();
  v2 = sub_24910D02C();

  return v2;
}

uint64_t sub_2490F06C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTTransportDaemon.summary.getter();
}

uint64_t sub_2490F074C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTTransportDaemon.activate()();
}

uint64_t sub_2490F07D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTTransportDaemon.invalidate()();
}

uint64_t sub_2490F0864(uint64_t a1)
{
  v2 = sub_24910C3EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 1685024583;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_24910C3CC();
  if ((a1 & 1) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    sub_24910CCBC();
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_24910CCBC();
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0x20) != 0)
  {
LABEL_5:
    sub_24910CCBC();
  }

LABEL_6:
  v6 = v9;
  v7 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v7 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v6 = 0x6E776F6E6B6E55;
  }

  (*(v3 + 8))(v5, v2);
  return v6;
}

void *sub_2490F0A04(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = [v2 homes];
  sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
  v10 = sub_24910CD5C();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    do
    {
      v13 = 0;
      v43 = v11;
      v44 = v11 & 0xC000000000000001;
      v40 = v11 + 32;
      v41 = v11 & 0xFFFFFFFFFFFFFF8;
      v42 = v12;
      while (1)
      {
        if (v44)
        {
          v14 = MEMORY[0x24C1F1C90](v13);
        }

        else
        {
          if (v13 >= *(v41 + 16))
          {
            goto LABEL_35;
          }

          v14 = *(v40 + 8 * v13);
        }

        v15 = v14;
        v16 = __OFADD__(v13, 1);
        v17 = v13 + 1;
        if (v16)
        {
          break;
        }

        v18 = [v14 accessories];
        sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
        v19 = sub_24910CD5C();

        v45 = v17;
        v46 = v15;
        if (v19 >> 62)
        {
          v20 = sub_24910D19C();
          v21 = 0x278F87000;
          if (v20)
          {
LABEL_12:
            v22 = 0;
            v51 = v19 & 0xFFFFFFFFFFFFFF8;
            v52 = v19 & 0xC000000000000001;
            v49 = v20;
            v50 = v19;
            while (1)
            {
              if (v52)
              {
                v23 = MEMORY[0x24C1F1C90](v22, v19);
              }

              else
              {
                if (v22 >= *(v51 + 16))
                {
                  goto LABEL_33;
                }

                v23 = *(v19 + 8 * v22 + 32);
              }

              v24 = v23;
              v25 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              v26 = [v23 *(v21 + 3432)];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 idsIdentifier];

                if (v28)
                {
                  sub_24910C2CC();

                  v29 = 0;
                }

                else
                {
                  v29 = 1;
                }

                v30 = sub_24910C2FC();
                v31 = *(v30 - 8);
                (*(v31 + 56))(v6, v29, 1, v30);
                sub_2490B3868(v6, v8, &qword_27EED7900, &qword_24910EB50);
                if ((*(v31 + 48))(v8, 1, v30) == 1)
                {

                  sub_2490A487C(v8, &qword_27EED7900, &qword_24910EB50);
                }

                else
                {
                  v32 = sub_24910C28C();
                  v34 = v33;
                  (*(v31 + 8))(v8, v30);
                  v55 = v32;
                  v56 = v34;
                  v53 = v47;
                  v54 = v48;
                  sub_2490A44E8();
                  v35 = sub_24910D12C();

                  if (!v35)
                  {

                    return v24;
                  }

                  v21 = 0x278F87000;
                }

                v20 = v49;
                v19 = v50;
              }

              else
              {
              }

              ++v22;
              if (v25 == v20)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = 0x278F87000uLL;
          if (v20)
          {
            goto LABEL_12;
          }
        }

LABEL_4:

        v11 = v43;
        v13 = v45;
        if (v45 == v42)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v36 = v11;
      v37 = sub_24910D19C();
      v11 = v36;
      v12 = v37;
    }

    while (v37);
  }

LABEL_37:

  return 0;
}

BOOL sub_2490F0EC8(void *a1, uint64_t *a2)
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

void *sub_2490F0EF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2490F0F24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2490F101C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2490F5374(a1);

  *a2 = v3;
  return result;
}

void *sub_2490F10B4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F08, &qword_249110860);
  v10 = *(type metadata accessor for DTTransportDaemon.DTOperationItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DTTransportDaemon.DTOperationItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2490F128C(uint64_t a1)
{
  sub_24910C2FC();
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24910CC3C();

  return sub_2490F1324(a1, v2);
}

unint64_t sub_2490F1324(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24910CC7C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2490F14E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE8, &qword_249110920);
  v40 = v4;
  result = sub_24910D36C();
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

      v27 = *(*(v9 + 56) + v24);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24910CC3C();
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
      *(*(v11 + 56) + v19) = v27;
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

uint64_t sub_2490F18A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE0, &qword_249110918);
  v39 = v4;
  result = sub_24910D36C();
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

      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24910CC3C();
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

uint64_t sub_2490F1C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_24910D36C();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
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
      }

      result = sub_24910D5FC();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2490F1EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
  v34 = v4;
  result = sub_24910D36C();
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

      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
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

uint64_t sub_2490F2190(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
  v38 = v5;
  result = sub_24910D36C();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v4;
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
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v37 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v38)
      {
        sub_2490FA810(v26, v8, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      else
      {
        sub_2490FA748(v26, v8, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      result = sub_24910D5FC();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      result = sub_2490FA810(v8, *(v11 + 56) + v25 * v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v4 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v4 = v36;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v4 = v11;
  return result;
}

uint64_t sub_2490F24D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EF0, &qword_249110848);
  v34 = v4;
  result = sub_24910D36C();
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

      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
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

unint64_t sub_2490F2780(int64_t a1, uint64_t a2)
{
  v40 = sub_24910C2FC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24910D16C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24910CC3C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_2490F2AA0(int64_t a1, uint64_t a2)
{
  v40 = sub_24910C2FC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24910D16C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24910CC3C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_2490F2DC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24910D5FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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

unint64_t sub_2490F2F30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24910D5FC();
      v11 = result & v7;
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

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2490F30DC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2490F128C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_2490F3990();
    goto LABEL_7;
  }

  sub_2490F14E4(result, a3 & 1);
  result = sub_2490F128C(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2490F3830(v14, v11, a1 & 1, v20);
}

unint64_t sub_2490F327C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_2490A0AB4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_2490F1C80(v18, a3 & 1, a4, a5);
      result = sub_2490A0AB4(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2490F3E74(a4, a5);
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

void sub_2490F33EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2490A0A3C(a2, a3);
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
      sub_2490F1EE8(v16, a4 & 1);
      v11 = sub_2490A0A3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24910D57C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2490F3FC0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2490F3568(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490A0AB4(a2);
  v12 = v8[2];
  v13 = (v9 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v9;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      sub_2490F4130(v11);
      goto LABEL_7;
    }

    sub_2490F2190(v14, a3 & 1, v11);
    v21 = sub_2490A0AB4(a2);
    if ((v15 & 1) == (v22 & 1))
    {
      v10 = v21;
      v17 = *v4;
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

LABEL_7:
  v17 = *v4;
  if (v15)
  {
LABEL_8:
    v18 = v17[7];
    v19 = v18 + *(*(type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0) - 8) + 72) * v10;

    return sub_2490FB3C0(a1, v19);
  }

LABEL_13:

  return sub_2490F38E8(v10, a2, a1, v17, v11);
}

void sub_2490F36B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2490A0A3C(a2, a3);
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
      sub_2490F24D8(v16, a4 & 1);
      v11 = sub_2490A0A3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24910D57C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2490F4364();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2490F3830(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24910C2FC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2490F38E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  result = sub_2490FA810(a3, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_2490F3990()
{
  v1 = v0;
  v31 = sub_24910C2FC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE8, &qword_249110920);
  v3 = *v0;
  v4 = sub_24910D35C();
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
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
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

char *sub_2490F3C00()
{
  v1 = v0;
  v31 = sub_24910C2FC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE0, &qword_249110918);
  v3 = *v0;
  v4 = sub_24910D35C();
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

void *sub_2490F3E74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24910D35C();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void sub_2490F3FC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
  v2 = *v0;
  v3 = sub_24910D35C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_2490F4130(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
  v6 = *v1;
  v7 = sub_24910D35C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v2;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_2490FA748(*(v6 + 56) + v23, v5, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_2490FA810(v5, *(v8 + 56) + v23, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v8;
  }

  return result;
}

void *sub_2490F4364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EF0, &qword_249110848);
  v2 = *v0;
  v3 = sub_24910D35C();
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

uint64_t sub_2490F44D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_24910CC3C();
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
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24910CC7C();
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
    sub_2490F4B10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2490F47B4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24910C2FC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  result = sub_24910D21C();
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
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24910CC3C();
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

uint64_t sub_2490F4B10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24910C2FC();
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
    sub_2490F47B4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2490F4DB4();
      goto LABEL_12;
    }

    sub_2490F4FEC(v10 + 1);
  }

  v12 = *v3;
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_24910CC3C();
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
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24910CC7C();
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
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_2490F4DB4()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  v6 = *v0;
  v7 = sub_24910D20C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2490F4FEC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24910C2FC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  v7 = sub_24910D21C();
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
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24910CC3C();
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

uint64_t sub_2490F5374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2490F53AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
    v3 = sub_24910D37C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2490A0A3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_2490F54B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v2[3] = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) = 0;
  v6 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing) = v6;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal) = v6;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait) = 1;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags) = 0;
  v7 = v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride;
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
  v9 = sub_24910C2FC();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportDecoder;
  sub_24910BFAC();
  swift_allocObject();
  *&v3[v10] = sub_24910BF9C();
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder;
  sub_24910BFDC();
  swift_allocObject();
  *&v3[v11] = sub_24910BFCC();
  v12 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  *&v3[v13] = sub_2490F53AC(v12);
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred] = 0;
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollDeadline;
  v15 = sub_24910C48C();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask] = 0;
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap] = v6;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap] = v6;
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointsReady] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap] = v6;
  swift_weakAssign();
  v16 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__environment;
  v17 = sub_24910C3BC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v3[v16], a2, v17);
  v21.receiver = v3;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v18 + 8))(a2, v17);
  return v19;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2490F57CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2490F5864()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2490F59B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490F5A58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F5AE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

void sub_2490F5B78(unint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v30 = a2;
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    v12 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v13 = (v5 + 8);
    v26 = i;
    v27 = a1;
    while (1)
    {
      if (v29)
      {
        v14 = MEMORY[0x24C1F1C90](v12, a1);
      }

      else
      {
        if (v12 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 uniqueIdentifier];
      sub_24910C2CC();

      v18 = [v30 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v5 = sub_24910CC7C();
      v19 = *v13;
      (*v13)(v8, v4);
      v19(v10, v4);
      if ((v5 & 1) == 0)
      {
        v20 = [v15 device];
        if (v20)
        {
          v21 = v20;
          v5 = [v20 productInfo];

          if (v5)
          {
            v22 = [v5 productClass];

            if (v22 == 6)
            {
              v25 = v15;
              v5 = v24;
              MEMORY[0x24C1F1760]();
              if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24910CD7C();
                v5 = v24;
              }

              sub_24910CD9C();
            }
          }
        }
      }

      ++v12;
      a1 = v27;
      if (v16 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_2490F5E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8030, &qword_249110998);
    v3 = sub_24910D23C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24910D60C();

      sub_24910CCCC();
      result = sub_24910D62C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24910D54C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2490F5FE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a5;
  v94 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  MEMORY[0x28223BE20](v94);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24910C2FC();
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x28223BE20](v13);
  v88 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v92 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v85 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v80 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v89 = v25;
  MEMORY[0x28223BE20](v22);
  v27 = &v80 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2490FA900;
  *(v28 + 24) = a6;
  v100 = v28;
  v86 = a6;
  v87 = v15;
  v29 = *(v15 + 24);

  v91 = v29;
  v30 = sub_24910C82C();
  if (v30)
  {
    v31 = a2;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = a3;
  }

  else
  {
    v32 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v90 = v31;
  v33 = sub_24910C89C();
  v34 = __swift_project_value_buffer(v33, qword_27EEDAFD8);
  sub_2490FA748(a4, v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v96 = a4;
  sub_2490FA748(a4, v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  swift_bridgeObjectRetain_n();
  v35 = a1;
  v83 = v34;
  v36 = sub_24910C87C();
  v37 = sub_24910CF5C();

  v38 = os_log_type_enabled(v36, v37);
  v97 = v12;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v81 = v37;
    v40 = v39;
    v82 = swift_slowAlloc();
    v101[0] = v82;
    *v40 = 136315906;
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v80 = v36;
    v41 = v99;
    v42 = sub_24910D50C();
    v44 = v43;
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v45 = sub_24909F930(v42, v44, v101);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v46 = sub_24910D50C();
    v48 = v47;
    sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v49 = sub_24909F930(v46, v48, v101);

    *(v40 + 14) = v49;
    *(v40 + 22) = 2080;
    v50 = [v35 uniqueIdentifier];
    v51 = v88;
    sub_24910C2CC();

    v52 = sub_24910D50C();
    v54 = v53;
    v55 = v98;
    (*(v98 + 8))(v51, v41);
    v56 = sub_24909F930(v52, v54, v101);

    *(v40 + 24) = v56;
    *(v40 + 32) = 2080;
    v12 = v97;
    v57 = v35;
    v58 = v90;
    if (v32)
    {
      v59 = v90;
    }

    else
    {
      v59 = 7104878;
    }

    if (v32)
    {
      v60 = v32;
    }

    else
    {
      v60 = 0xE300000000000000;
    }

    v61 = sub_24909F930(v59, v60, v101);

    *(v40 + 34) = v61;
    v62 = v80;
    _os_log_impl(&dword_249083000, v80, v81, "HMMM send start: xid=%s, request=%s, hkID=%s, target=%s", v40, 0x2Au);
    v63 = v82;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v63, -1, -1);
    MEMORY[0x24C1F26F0](v40, -1, -1);

    v64 = v100;
  }

  else
  {

    sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v41 = v99;
    v64 = v100;
    v55 = v98;
    v57 = v35;
    v58 = v90;
  }

  v65 = *(v55 + 16);
  v66 = v96;
  v65(v12, v96, v41);
  v67 = v94;
  v68 = *(v94 + 20);
  v69 = sub_24910C86C();
  v70 = *(*(v69 - 8) + 16);
  v71 = v66 + v91;
  v91 = v69;
  v70(&v12[v68], v71);
  v72 = &v12[*(v67 + 24)];
  *v72 = v58;
  *(v72 + 1) = v32;
  v12[*(v67 + 28)] = 1;
  v73 = v93;
  sub_2490FA748(v66, v93, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v74 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v75 = (v89 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_2490FA810(v73, v76 + v74, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  *(v76 + v75) = v57;
  v77 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v77 = sub_2490FC804;
  v77[1] = v64;

  v78 = v57;

  sub_2490D580C(v12, v78, sub_2490FC758, v76);
  sub_2490FA7B0(v12, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

uint64_t sub_2490F6B68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = [a1 siriEndpointProfile];
  if (!v8)
  {
    v12 = sub_24910C2FC();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 sessionHubIdentifier];

  if (v10)
  {
    sub_24910C2CC();

    v11 = sub_24910C2FC();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  }

  else
  {
    v11 = sub_24910C2FC();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  sub_2490B3868(v5, v7, &qword_27EED7900, &qword_24910EB50);
  sub_24910C2FC();
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
LABEL_7:
    sub_2490A487C(v7, &qword_27EED7900, &qword_24910EB50);
    v13 = sub_2490E55A0();
    if (v13)
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F68, &qword_2491108C0);
      result = swift_allocObject();
      *(result + 16) = xmmword_249110220;
      *(result + 32) = v14;
      return result;
    }

    return MEMORY[0x277D84F90];
  }

  sub_2490A487C(v7, &qword_27EED7900, &qword_24910EB50);
  v22 = MEMORY[0x277D84F90];
  v16 = [a1 home];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 accessories];

    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v19 = sub_24910CD5C();

    v20 = a1;
    sub_2490F5B78(v19, v20, &v22);

    return v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2490F6E90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v91 = a5;
  v90 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  MEMORY[0x28223BE20](v90);
  v94 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24910C2FC();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v85 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v82 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v89 = v75 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v75 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v75 - v26;
  v28 = swift_allocObject();
  v83 = a6;
  *(v28 + 16) = a6;
  v96 = v28;
  *(v28 + 24) = a7;
  v84 = v16;
  v29 = *(v16 + 24);
  v79 = a7;
  v87 = v29;
  v30 = sub_24910C82C();
  if (v30)
  {
    v31 = a2;
  }

  else
  {
    v31 = 0;
  }

  v86 = v31;
  if (v30)
  {
    v32 = a3;
  }

  else
  {
    v32 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v33 = sub_24910C89C();
  v34 = __swift_project_value_buffer(v33, qword_27EEDAFD8);
  sub_2490FA748(a4, v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a4, v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  swift_bridgeObjectRetain_n();
  v35 = a1;
  v80 = v34;
  v36 = sub_24910C87C();
  v37 = sub_24910CF5C();

  v95 = v35;

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v97[0] = v77;
    *v38 = 136315906;
    v75[1] = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v76 = v37;
    v39 = v93;
    v40 = sub_24910D50C();
    v42 = v41;
    v78 = a4;
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v43 = sub_24909F930(v40, v42, v97);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v44 = sub_24910D50C();
    v46 = v45;
    sub_2490FA7B0(v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v47 = sub_24909F930(v44, v46, v97);

    *(v38 + 14) = v47;
    *(v38 + 22) = 2080;
    v48 = [v95 uniqueIdentifier];
    v49 = v85;
    sub_24910C2CC();

    v50 = sub_24910D50C();
    v52 = v51;
    v53 = v92;
    v54 = v49;
    a4 = v78;
    (*(v92 + 8))(v54, v39);
    v55 = sub_24909F930(v50, v52, v97);

    *(v38 + 24) = v55;
    *(v38 + 32) = 2080;
    v56 = v86;
    if (v32)
    {
      v57 = v86;
    }

    else
    {
      v57 = 7104878;
    }

    if (v32)
    {
      v58 = v32;
    }

    else
    {
      v58 = 0xE300000000000000;
    }

    v59 = sub_24909F930(v57, v58, v97);

    *(v38 + 34) = v59;
    _os_log_impl(&dword_249083000, v36, v76, "HMMM send start: xid=%s, request=%s, hkID=%s, target=%s", v38, 0x2Au);
    v60 = v77;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v60, -1, -1);
    MEMORY[0x24C1F26F0](v38, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v53 = v92;
    v39 = v93;
    v56 = v86;
  }

  v61 = v94;
  (*(v53 + 16))(v94, a4, v39);
  v62 = v90;
  v63 = *(v90 + 20);
  v64 = sub_24910C86C();
  (*(*(v64 - 8) + 16))(v61 + v63, a4 + v87, v64);
  v65 = (v61 + *(v62 + 24));
  *v65 = v56;
  v65[1] = v32;
  *(v61 + *(v62 + 28)) = 0;
  v66 = v89;
  sub_2490FA748(a4, v89, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v67 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v68 = (v17 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_2490FA810(v66, v69 + v67, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v71 = v95;
  v70 = v96;
  *(v69 + v68) = v95;
  v72 = (v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v72 = sub_2490FAFD0;
  v72[1] = v70;

  v73 = v71;

  sub_2490D580C(v61, v73, sub_2490FAFEC, v69);
  sub_2490FA7B0(v61, type metadata accessor for DTTransportDaemon.DTTransportRequest);

  v96 = v69;
}

unint64_t sub_2490F79F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F98, &qword_2491108F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
    v7 = sub_24910D37C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_2490A4674(v9, v5, &qword_27EED7F98, &qword_2491108F0);
      v11 = *v5;
      result = sub_2490A0AB4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
      result = sub_2490FA810(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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