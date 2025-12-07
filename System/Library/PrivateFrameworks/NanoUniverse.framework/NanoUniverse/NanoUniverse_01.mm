uint64_t sub_25B706D74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_25B716250();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25B7019EC(a1, &unk_27FA4A4C8, &qword_25B7383E0);
    v13 = sub_25B6FC4E8(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25B710D2C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_25B7108C8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25B7019EC(v8, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_25B710B18(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_25B706FC4(char *a1, uint64_t a2, uint64_t a3, int64_t a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v10 = sub_25B716250();
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v60 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A558, &qword_25B738688);
  v12 = MEMORY[0x28223BE20](v57);
  v56 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v50 - v14;
  v15 = a2 + 16;
  v16 = *&a1[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_25B715424;
  *(v18 + 24) = v17;
  aBlock[4] = sub_25B7157B8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B706188;
  aBlock[3] = &block_descriptor_191;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_21:
    __break(1u);
  }

  else if (qword_2810C3220 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v21 = sub_25B716340();
  __swift_project_value_buffer(v21, qword_2810C3228);

  v22 = sub_25B716320();
  v23 = sub_25B7168E0();

  v24 = os_log_type_enabled(v22, v23);
  v50[2] = a5;
  v51 = a4;
  v50[1] = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    swift_beginAccess();
    sub_25B7154DC();

    v27 = sub_25B716780();
    v29 = v28;

    v30 = sub_25B6F69F0(v27, v29, aBlock);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_25B6D4000, v22, v23, "Finished loading cloud textures. Urls: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25F86BDB0](v26, -1, -1);
    MEMORY[0x25F86BDB0](v25, -1, -1);
  }

  swift_beginAccess();
  v31 = *(a3 + 16);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v17 = (v33 + 63) >> 6;
  v53 = v61 + 16;
  v36 = v61 + 32;
  v58 = v31;
  swift_bridgeObjectRetain_n();
  a4 = 0;
  v37 = MEMORY[0x277D84F90];
  v54 = v10;
  v52 = v36;
  if (v35)
  {
    while (1)
    {
      a3 = v10;
LABEL_13:
      v39 = __clz(__rbit64(v35)) | (a4 << 6);
      v40 = v57;
      v41 = *(v58 + 56);
      v42 = *(*(v58 + 48) + v39);
      v43 = v61;
      v59 = *(v61 + 72);
      v44 = v55;
      (*(v61 + 16))(&v55[*(v57 + 48)], v41 + v59 * v39, a3);
      *v44 = v42;
      v45 = v56;
      sub_25B715474(v44, v56, &unk_27FA4A558, &qword_25B738688);
      a5 = *(v43 + 32);
      a5(v60, v45 + *(v40 + 48), a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_25B710150(0, v37[2] + 1, 1, v37);
      }

      v47 = v37[2];
      v46 = v37[3];
      if (v47 >= v46 >> 1)
      {
        v37 = sub_25B710150((v46 > 1), v47 + 1, 1, v37);
      }

      v35 &= v35 - 1;
      v37[2] = v47 + 1;
      v48 = v37 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v47 * v59;
      v10 = v54;
      a5(v48, v60, v54);
      if (!v35)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v38 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v38 >= v17)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++a4;
    if (v35)
    {
      a3 = v10;
      a4 = v38;
      goto LABEL_13;
    }
  }

  v51(v37);
}

uint64_t sub_25B7075BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25B707600(char a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  if ((*(v1 + v3) & 1) == 0)
  {
    v4 = v1 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_backoffInterval;
    if (a1)
    {
      *v4 = 0;
      *(v4 + 8) = 1;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v5 = sub_25B716340();
      __swift_project_value_buffer(v5, qword_2810C3228);
      v6 = sub_25B716320();
      v7 = sub_25B7168E0();
      if (!os_log_type_enabled(v6, v7))
      {
        v9 = 3600.0;
        goto LABEL_18;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25B6D4000, v6, v7, "Resetting backoff.", v8, 2u);
      v9 = 3600.0;
    }

    else
    {
      v10 = *v4 + *v4;
      if (*(v4 + 8))
      {
        v10 = 600.0;
      }

      if (v10 <= 86400.0)
      {
        v9 = v10;
      }

      else
      {
        v9 = 86400.0;
      }

      *v4 = v9;
      *(v4 + 8) = 0;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v11 = sub_25B716340();
      __swift_project_value_buffer(v11, qword_2810C3228);
      v6 = sub_25B716320();
      v12 = sub_25B7168E0();
      if (!os_log_type_enabled(v6, v12))
      {
        goto LABEL_18;
      }

      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v9;
      _os_log_impl(&dword_25B6D4000, v6, v12, "Incrementing backoff to %f seconds.", v8, 0xCu);
    }

    MEMORY[0x25F86BDB0](v8, -1, -1);
LABEL_18:

    sub_25B707850(v9);
  }
}

uint64_t sub_25B707850(double a1)
{
  v2 = sub_25B7166C0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v51 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v50 = (&v46 - v5);
  v61 = sub_25B716730();
  v49 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v8;
  v58 = sub_25B7166D0();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B7166F0();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B716970();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7151BC(0, &qword_2810C3168, 0x277D85CA0);
  aBlock = MEMORY[0x277D84F90];
  sub_25B715538(&unk_2810C3170, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A528, &qword_25B738660);
  sub_25B701E14(&qword_2810C3190, &unk_27FA4A528, &qword_25B738660, MEMORY[0x277D83970]);
  sub_25B7169F0();
  v17 = sub_25B716980();
  (*(v14 + 8))(v16, v13);
  ObjectType = swift_getObjectType();
  v19 = swift_allocObject();
  v20 = v60;
  *(v19 + 16) = v60;
  v67 = sub_25B715204;
  v68 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v54 = &v65;
  v65 = sub_25B7157A8;
  v66 = &block_descriptor_80;
  v21 = _Block_copy(&aBlock);
  v47 = v20;
  v22 = v55;
  sub_25B7166E0();
  sub_25B708710();
  sub_25B716990();
  _Block_release(v21);
  v23 = *(v62 + 8);
  v62 += 8;
  v24 = v58;
  v23(v10, v58);
  v25 = v57;
  v26 = *(v56 + 8);
  v26(v22, v57);

  v67 = sub_25B708628;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_25B7157A8;
  v66 = &block_descriptor_83;
  v27 = _Block_copy(&aBlock);
  sub_25B7166E0();
  sub_25B708710();
  v56 = ObjectType;
  v60 = v17;
  sub_25B7169A0();
  _Block_release(v27);
  v23(v10, v24);
  v26(v22, v25);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v28 = sub_25B716340();
  __swift_project_value_buffer(v28, qword_2810C3228);
  v29 = sub_25B716320();
  v30 = sub_25B7168E0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = a1;
    _os_log_impl(&dword_25B6D4000, v29, v30, "Setting up DispatchSourceTimer with %f seconds.", v31, 0xCu);
    MEMORY[0x25F86BDB0](v31, -1, -1);
  }

  v32 = v59;
  result = sub_25B716720();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v34 = v50;
  *v50 = a1;
  v36 = v52;
  v35 = v53;
  v37 = *(v52 + 104);
  v37(v34, *MEMORY[0x277D85188], v53);
  v38 = v48;
  MEMORY[0x25F86AE00](v32, v34);
  v39 = *(v36 + 8);
  v39(v34, v35);
  v40 = *(v49 + 8);
  v40(v32, v61);
  v37(v34, *MEMORY[0x277D85180], v35);
  v41 = v51;
  *v51 = 0;
  v37(v41, *MEMORY[0x277D85168], v35);
  MEMORY[0x25F86B080](v38, v34, v41, v56);
  v39(v41, v35);
  v39(v34, v35);
  v42 = v38;
  v43 = v60;
  v40(v42, v61);
  sub_25B7169C0();
  v44 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer;
  v45 = v47;
  if (*&v47[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_25B7169B0();
    swift_unknownObjectRelease();
  }

  *&v45[v44] = v43;
  return swift_unknownObjectRelease();
}

uint64_t sub_25B7080B0(char *a1)
{
  v2 = sub_25B7166D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B7166F0();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v9 = sub_25B716340();
  __swift_project_value_buffer(v9, qword_2810C3228);
  v10 = sub_25B716320();
  v11 = sub_25B7168E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25B6D4000, v10, v11, "DispatchSourceTimer triggered.", v12, 2u);
    MEMORY[0x25F86BDB0](v12, -1, -1);
  }

  *&a1[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer] = 0;
  swift_unknownObjectRelease();
  result = sub_25B7061B0();
  if (result)
  {
    v14 = sub_25B716320();
    v15 = sub_25B7168E0();
    v16 = os_log_type_enabled(v14, v15);
    v28 = v6;
    if (v16)
    {
      v27 = v3;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      if (qword_2810C3240 != -1)
      {
        swift_once();
      }

      v19 = sub_25B7167D0();
      v21 = sub_25B6F69F0(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_25B6D4000, v14, v15, "Posting %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25F86BDB0](v18, -1, -1);
      MEMORY[0x25F86BDB0](v17, -1, -1);

      v3 = v27;
    }

    else
    {
    }

    sub_25B7151BC(0, &qword_2810C3180, 0x277D85C78);
    v22 = sub_25B716930();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    aBlock[4] = sub_25B71520C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor_89;
    v24 = _Block_copy(aBlock);
    v25 = a1;

    sub_25B7166E0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v8, v5, v24);
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    return (*(v29 + 8))(v8, v28);
  }

  return result;
}

void sub_25B708588()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_2810C3240 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_2810C3250 object:0];
}

void sub_25B708628()
{
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v0 = sub_25B716340();
  __swift_project_value_buffer(v0, qword_2810C3228);
  oslog = sub_25B716320();
  v1 = sub_25B7168E0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25B6D4000, oslog, v1, "DispatchSourceTimer cancelled.", v2, 2u);
    MEMORY[0x25F86BDB0](v2, -1, -1);
  }
}

uint64_t sub_25B708710()
{
  sub_25B7166D0();
  sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
  sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
  return sub_25B7169F0();
}

uint64_t sub_25B7087FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);

    MEMORY[0x28223BE20](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
    sub_25B716940();
  }

  return a4(a1);
}

void sub_25B70890C(uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_25B711BCC(v3, &v7);
    swift_endAccess();
  }

  *a3 = 0;
}

uint64_t sub_25B7089B4(unsigned __int8 *a1)
{
  v2 = v1;
  v105 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v98 - v5;
  v6 = sub_25B716290();
  v102 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v99 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v98 - v9;
  v11 = sub_25B716250();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v98 - v16;
  v18 = *a1;
  v100 = v10;
  if (v18 >= 4)
  {
  }

  else
  {
    v19 = sub_25B716AF0();

    if ((v19 & 1) == 0)
    {
      v20 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
      swift_beginAccess();
      (*(v12 + 16))(v15, v2 + v20, v11);
      v103 = 0x61632D632D333070;
      v104 = 0xEF2D65706F696C6CLL;
      v21 = 0xE500000000000000;
      v22 = 6580589;
      if (v18 != 2)
      {
        v22 = 7827308;
      }

      v23 = 1751607656;
      if (v18)
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v23 = 0x6C61746F74;
      }

      if (v18 <= 1)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      if (v18 <= 1)
      {
        v25 = v21;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      MEMORY[0x25F86AEB0](v24, v25);

      sub_25B716200();

      sub_25B716210();
      v17 = v15;
      goto LABEL_30;
    }
  }

  v26 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v12 + 16))(v17, v2 + v26, v11);
  v27 = 0xE500000000000000;
  v103 = 0x61632D632D333070;
  v104 = 0xEF2D65706F696C6CLL;
  v28 = 0xE300000000000000;
  v29 = 6580589;
  v30 = 0xE300000000000000;
  v31 = 7827308;
  if (v18 != 3)
  {
    v31 = 0x6F626D6F63;
    v30 = 0xE500000000000000;
  }

  if (v18 != 2)
  {
    v29 = v31;
    v28 = v30;
  }

  v32 = 1751607656;
  if (v18)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v32 = 0x6C61746F74;
  }

  if (v18 <= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = v29;
  }

  if (v18 <= 1)
  {
    v34 = v27;
  }

  else
  {
    v34 = v28;
  }

  MEMORY[0x25F86AEB0](v33, v34);

  sub_25B716200();

  sub_25B716210();
LABEL_30:
  v35 = sub_25B716230();
  v37 = v36;
  (*(v12 + 8))(v17, v11);
  v38 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;
  swift_beginAccess();
  v39 = *(v2 + v38);

  v40 = sub_25B709650(v18, v39);

  if ((v40 & 1) != 0 || (v41 = objc_opt_self(), v42 = [v41 defaultManager], v43 = v6, v44 = v35, v45 = sub_25B7167A0(), v46 = objc_msgSend(v42, sel_fileExistsAtPath_, v45), v42, v45, v35 = v44, v47 = v43, v48 = v102, !v46))
  {
    v66 = v40 ^ 1;
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v67 = sub_25B716340();
    __swift_project_value_buffer(v67, qword_2810C3228);

    v68 = sub_25B716320();
    v69 = sub_25B7168B0();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v103 = v71;
      *v70 = 136315394;
      v72 = v35;
      if (v18 <= 1)
      {
        if (v18)
        {
          v73 = 0xE400000000000000;
          v74 = 1751607656;
        }

        else
        {
          v73 = 0xE500000000000000;
          v74 = 0x6C61746F74;
        }
      }

      else if (v18 == 2)
      {
        v73 = 0xE300000000000000;
        v74 = 6580589;
      }

      else if (v18 == 3)
      {
        v73 = 0xE300000000000000;
        v74 = 7827308;
      }

      else
      {
        v73 = 0xE500000000000000;
        v74 = 0x6F626D6F63;
      }

      v95 = sub_25B6F69F0(v74, v73, &v103);

      *(v70 + 4) = v95;
      *(v70 + 12) = 2080;
      v96 = sub_25B6F69F0(v72, v37, &v103);

      *(v70 + 14) = v96;
      _os_log_impl(&dword_25B6D4000, v68, v69, "Cached file for %s not found. File Name: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v71, -1, -1);
      MEMORY[0x25F86BDB0](v70, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v49 = [v41 defaultManager];
    v50 = sub_25B7167A0();
    v103 = 0;
    v51 = [v49 attributesOfItemAtPath:v50 error:&v103];

    v52 = v103;
    if (v51)
    {
      type metadata accessor for FileAttributeKey();
      sub_25B715538(&qword_27FA4A0F0, type metadata accessor for FileAttributeKey, &unk_25B737D48);
      v53 = sub_25B716770();
      v54 = v52;

      if (*(v53 + 16) && (v55 = sub_25B6FC454(*MEMORY[0x277CCA150]), (v56 & 1) != 0))
      {
        sub_25B6F7068(*(v53 + 56) + 32 * v55, &v103);

        v57 = v101;
        v58 = swift_dynamicCast();
        (*(v48 + 56))(v57, v58 ^ 1u, 1, v47);
        if ((*(v48 + 48))(v57, 1, v47) != 1)
        {

          v59 = v100;
          (*(v48 + 32))(v100, v57, v47);
          v60 = v99;
          sub_25B716280();
          sub_25B716260();
          v62 = v61;
          v63 = *(v48 + 8);
          v63(v60, v47);
          sub_25B716260();
          v65 = v64;
          v63(v59, v47);
          v66 = v62 - v65 > 3600.0;
          return v66 & 1;
        }
      }

      else
      {

        v57 = v101;
        (*(v48 + 56))(v101, 1, 1, v47);
      }

      sub_25B7019EC(v57, &unk_27FA4A518, &qword_25B738658);
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v75 = sub_25B716340();
      __swift_project_value_buffer(v75, qword_2810C3228);

      v76 = sub_25B716320();
      v77 = sub_25B7168C0();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v103 = v79;
        *v78 = 136315138;
        v80 = sub_25B6F69F0(v35, v37, &v103);

        *(v78 + 4) = v80;
        _os_log_impl(&dword_25B6D4000, v76, v77, "No last modified data attribute for file. This may cause serious issues in refresh policy. File: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x25F86BDB0](v79, -1, -1);
        MEMORY[0x25F86BDB0](v78, -1, -1);
      }

      else
      {
      }

      v66 = 0;
    }

    else
    {
      v81 = v103;
      v82 = sub_25B7161C0();

      swift_willThrow();
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v83 = sub_25B716340();
      __swift_project_value_buffer(v83, qword_2810C3228);

      v84 = v82;
      v85 = sub_25B716320();
      v86 = sub_25B7168C0();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v89 = v35;
        v90 = v88;
        v103 = v88;
        *v87 = 136315394;
        v91 = sub_25B6F69F0(v89, v37, &v103);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        swift_getErrorValue();
        v92 = sub_25B716B20();
        v94 = sub_25B6F69F0(v92, v93, &v103);

        *(v87 + 14) = v94;
        _os_log_impl(&dword_25B6D4000, v85, v86, "No last modified data attribute for file %s. Error: %s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v90, -1, -1);
        MEMORY[0x25F86BDB0](v87, -1, -1);
      }

      else
      {
      }

      v66 = 0;
    }
  }

  return v66 & 1;
}

uint64_t sub_25B709650(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = 0x6C61746F74, sub_25B716B70(), sub_25B7167F0(), , v5 = sub_25B716B90(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v22 = ~v6;
    v8 = 1751607656;
    v9 = 7827308;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      if (v10 <= 1)
      {
        v11 = *(*(a2 + 48) + v7) ? 1751607656 : v4;
        v12 = *(*(a2 + 48) + v7) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v10 == 2)
      {
        v12 = 0xE300000000000000;
        v11 = 6580589;
      }

      else
      {
        v11 = v10 == 3 ? 7827308 : 0x6F626D6F63;
        v12 = v10 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      v13 = a1;
      v14 = a1;
      if (a1 == 3)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v9 = 0x6F626D6F63;
        v15 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v9 = 6580589;
        v15 = 0xE300000000000000;
      }

      v16 = v4;
      if (v14)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v8 = v4;
        v17 = 0xE500000000000000;
      }

      v18 = v14 <= 1 ? v8 : v9;
      v19 = v14 <= 1 ? v17 : v15;
      if (v11 == v18 && v12 == v19)
      {
        break;
      }

      v20 = sub_25B716AF0();

      if ((v20 & 1) == 0)
      {
        v7 = (v7 + 1) & v22;
        v4 = v16;
        a1 = v13;
        v8 = 1751607656;
        v9 = 7827308;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_25B7098C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - v2;
  v4 = sub_25B716290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v9;
  v10 = sub_25B7166D0();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25B7166F0();
  v13 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25B7061B0())
  {
    sub_25B7151BC(0, &qword_2810C3180, 0x277D85C78);
    v34 = sub_25B716930();
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    aBlock[4] = sub_25B7151B4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor_74;
    v17 = _Block_copy(aBlock);
    v18 = v0;

    sub_25B7166E0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    v19 = v34;
    MEMORY[0x25F86B000](0, v15, v12, v17);
    _Block_release(v17);

    (*(v36 + 8))(v12, v10);
    return (*(v13 + 8))(v15, v35);
  }

  else
  {
    sub_25B70A6C4(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      return sub_25B7019EC(v3, &unk_27FA4A518, &qword_25B738658);
    }

    else
    {
      v21 = v34;
      (*(v5 + 32))(v34, v3, v4);
      sub_25B716280();
      sub_25B716260();
      v23 = v22;
      v24 = *(v5 + 8);
      v24(v8, v4);
      sub_25B716260();
      v26 = v25 - v23;
      v27 = 3600.0;
      if (qword_2810C3220 != -1)
      {
        *&v36 = 3600.0;
        swift_once();
        v27 = *&v36;
      }

      v28 = v26 + v27;
      v29 = sub_25B716340();
      __swift_project_value_buffer(v29, qword_2810C3228);
      v30 = sub_25B716320();
      v31 = sub_25B7168E0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v28;
        _os_log_impl(&dword_25B6D4000, v30, v31, "Scheduling time to check for clouds textures expiration. Remaining interval %f", v32, 0xCu);
        MEMORY[0x25F86BDB0](v32, -1, -1);
      }

      sub_25B707850(v28);
      return (v24)(v21, v4);
    }
  }
}

void sub_25B709E54()
{
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v0 = sub_25B716340();
  __swift_project_value_buffer(v0, qword_2810C3228);
  v1 = sub_25B716320();
  v2 = sub_25B7168E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25B6D4000, v1, v2, "Clouds textures expired.", v3, 2u);
    MEMORY[0x25F86BDB0](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_2810C3240 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_2810C3250 object:0];
}

uint64_t sub_25B709FB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v56[7] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v56 - v6 + 32;
  v8 = sub_25B716250();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v12 = *a1;
  v13 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v13, v8);
  v14 = 0xE500000000000000;
  v15 = 0x6C61746F74;
  v56[0] = 0x61632D632D333070;
  v56[1] = 0xEF2D65706F696C6CLL;
  v16 = 0xE300000000000000;
  v17 = 6580589;
  v18 = 0xE300000000000000;
  v19 = 7827308;
  if (v12 != 3)
  {
    v19 = 0x6F626D6F63;
    v18 = 0xE500000000000000;
  }

  if (v12 != 2)
  {
    v17 = v19;
    v16 = v18;
  }

  if (v12)
  {
    v15 = 1751607656;
    v14 = 0xE400000000000000;
  }

  if (v12 <= 1)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v12 <= 1)
  {
    v21 = v14;
  }

  else
  {
    v21 = v16;
  }

  MEMORY[0x25F86AEB0](v20, v21);

  sub_25B716200();

  sub_25B716210();
  v22 = sub_25B716230();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  v27 = sub_25B7167A0();
  v28 = [v26 fileExistsAtPath_];

  if (v28)
  {
    v29 = [v25 defaultManager];
    v30 = sub_25B7167A0();
    v56[0] = 0;
    v31 = [v29 attributesOfItemAtPath:v30 error:v56];

    v32 = v56[0];
    if (v31)
    {

      type metadata accessor for FileAttributeKey();
      sub_25B715538(&qword_27FA4A0F0, type metadata accessor for FileAttributeKey, &unk_25B737D48);
      v33 = sub_25B716770();

      if (*(v33 + 16) && (v34 = sub_25B6FC454(*MEMORY[0x277CCA150]), (v35 & 1) != 0))
      {
        sub_25B6F7068(*(v33 + 56) + 32 * v34, v56);

        v36 = sub_25B716290();
        v37 = swift_dynamicCast();
        v38 = *(v36 - 8);
        v39 = *(v38 + 56);
        v39(v7, v37 ^ 1u, 1, v36);
        if ((*(v38 + 48))(v7, 1, v36) != 1)
        {
          (*(v38 + 32))(a2, v7, v36);
          return (v39)(a2, 0, 1, v36);
        }
      }

      else
      {

        v41 = sub_25B716290();
        (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
      }

      sub_25B7019EC(v7, &unk_27FA4A518, &qword_25B738658);
    }

    else
    {
      v42 = v32;
      v43 = sub_25B7161C0();

      swift_willThrow();
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v44 = sub_25B716340();
      __swift_project_value_buffer(v44, qword_2810C3228);

      v45 = v43;
      v46 = sub_25B716320();
      v47 = sub_25B7168C0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v56[0] = v49;
        *v48 = 136315394;
        v50 = sub_25B6F69F0(v22, v24, v56);

        *(v48 + 4) = v50;
        *(v48 + 12) = 2080;
        swift_getErrorValue();
        v51 = sub_25B716B20();
        v53 = sub_25B6F69F0(v51, v52, v56);

        *(v48 + 14) = v53;
        _os_log_impl(&dword_25B6D4000, v46, v47, "No last modified data attribute for file %s. Error: %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v49, -1, -1);
        MEMORY[0x25F86BDB0](v48, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v54 = sub_25B716290();
  return (*(*(v54 - 8) + 56))(a2, 1, 1, v54);
}

uint64_t sub_25B70A6C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v34 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v34 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_25B716290();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 56);
  v44 = a1;
  v48 = v17;
  v39 = v16;
  v40 = v13 + 56;
  (v16)(a1, 1, 1);
  if (qword_2810C3310 != -1)
  {
LABEL_18:
    swift_once();
  }

  result = qword_2810C3638;
  v47 = *(qword_2810C3638 + 16);
  if (v47)
  {
    v43 = v9;
    v46 = v15;
    v19 = (v13 + 48);
    v20 = (v13 + 32);
    v35 = (v13 + 8);
    v21 = 0;

    v41 = v11;
    v42 = v13;
    v50 = v19;
    v45 = v20;
    while (1)
    {
      if (v21 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v51 = *(v13 + v21 + 32);
      v15 = v49;
      sub_25B709FB8(&v51, v11);
      v22 = *v50;
      v23 = v48;
      if ((*v50)(v11, 1, v48) == 1)
      {
        sub_25B7019EC(v11, &unk_27FA4A518, &qword_25B738658);
      }

      else
      {
        v15 = *v45;
        (*v45)(v46, v11, v23);
        v25 = v43;
        v24 = v44;
        v9 = &qword_25B738658;
        sub_25B701984(v44, v43, &unk_27FA4A518, &qword_25B738658);
        if (v22(v25, 1, v23) == 1)
        {
          sub_25B7019EC(v24, &unk_27FA4A518, &qword_25B738658);
          sub_25B7019EC(v25, &unk_27FA4A518, &qword_25B738658);
          (v15)(v24, v46, v23);
          v39(v24, 0, 1, v23);
          v11 = v41;
          v13 = v42;
        }

        else
        {
          v38 = v15;
          v26 = v24;
          v27 = v23;
          sub_25B7019EC(v25, &unk_27FA4A518, &qword_25B738658);
          v28 = v26;
          v29 = v37;
          sub_25B701984(v26, v37, &unk_27FA4A518, &qword_25B738658);
          result = (v22)(v29, 1, v27);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v15 = v46;
          v30 = sub_25B716270();
          v31 = v29;
          v32 = *v35;
          (*v35)(v31, v27);
          v11 = v41;
          if (v30)
          {
            v9 = &unk_27FA4A518;
            sub_25B7019EC(v28, &unk_27FA4A518, &qword_25B738658);
            v33 = v36;
            v38(v36, v15, v27);
            v39(v33, 0, 1, v27);
          }

          else
          {
            v32(v15, v27);
            v33 = v36;
            v9 = &unk_27FA4A518;
            sub_25B715474(v28, v36, &unk_27FA4A518, &qword_25B738658);
          }

          v13 = v42;
          sub_25B715474(v33, v28, &unk_27FA4A518, &qword_25B738658);
        }
      }

      if (v47 == ++v21)
      {
      }
    }
  }

  return result;
}

uint64_t sub_25B70AB80(uint64_t a1, void (*a2)(char *), void (*a3)(void, void), uint64_t a4, int a5, void *a6, uint64_t a7, double a8)
{
  v72[1] = a7;
  v73 = a6;
  v81 = a5;
  v84 = a2;
  v85 = a3;
  v11 = sub_25B7166D0();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25B7166F0();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25B716710();
  v74 = *(v83 - 8);
  v14 = MEMORY[0x28223BE20](v83);
  v72[0] = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v72 - v18;
  v20 = sub_25B716250();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  MEMORY[0x28223BE20](v24);
  v26 = v72 - v25;
  sub_25B701984(a1, v72 - v25, &qword_27FA4A510, &qword_25B738650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v26 != 1 || a4 == 0)
    {
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v28 = sub_25B716340();
      __swift_project_value_buffer(v28, qword_2810C3228);
      v29 = sub_25B716320();
      v30 = sub_25B7168C0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        v33 = v81;
        v34 = 0xE500000000000000;
        *v31 = 136315138;
        v35 = 0xE300000000000000;
        v36 = 6580589;
        v37 = 0xE300000000000000;
        v38 = 7827308;
        if (v33 != 3)
        {
          v38 = 0x6F626D6F63;
          v37 = 0xE500000000000000;
        }

        if (v33 != 2)
        {
          v36 = v38;
          v35 = v37;
        }

        v39 = 1751607656;
        if (v33)
        {
          v34 = 0xE400000000000000;
        }

        else
        {
          v39 = 0x6C61746F74;
        }

        if (v33 <= 1)
        {
          v40 = v39;
        }

        else
        {
          v40 = v36;
        }

        if (v33 <= 1)
        {
          v41 = v34;
        }

        else
        {
          v41 = v35;
        }

        v42 = sub_25B6F69F0(v40, v41, aBlock);

        *(v31 + 4) = v42;
        _os_log_impl(&dword_25B6D4000, v29, v30, "Exhausted retry attempts for %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x25F86BDB0](v32, -1, -1);
        MEMORY[0x25F86BDB0](v31, -1, -1);
      }

      (*(v21 + 56))(v19, 1, 1, v20);
      v84(v19);
      return sub_25B7019EC(v19, &unk_27FA4A4C8, &qword_25B7383E0);
    }

    else
    {
      v44 = a4;
      v45 = v81;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v46 = sub_25B716340();
      __swift_project_value_buffer(v46, qword_2810C3228);
      v47 = sub_25B716320();
      v48 = sub_25B7168E0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        v51 = 0xE500000000000000;
        *v49 = 136315650;
        v52 = 0xE300000000000000;
        v53 = 6580589;
        v54 = 0xE300000000000000;
        v55 = 7827308;
        if (v45 != 3)
        {
          v55 = 0x6F626D6F63;
          v54 = 0xE500000000000000;
        }

        if (v45 != 2)
        {
          v53 = v55;
          v52 = v54;
        }

        v56 = 1751607656;
        if (v45)
        {
          v51 = 0xE400000000000000;
        }

        else
        {
          v56 = 0x6C61746F74;
        }

        if (v45 <= 1u)
        {
          v57 = v56;
        }

        else
        {
          v57 = v53;
        }

        if (v45 <= 1u)
        {
          v58 = v51;
        }

        else
        {
          v58 = v52;
        }

        v59 = sub_25B6F69F0(v57, v58, aBlock);

        *(v49 + 4) = v59;
        *(v49 + 12) = 2048;
        v44 = a4;
        *(v49 + 14) = a4;
        *(v49 + 22) = 2048;
        *(v49 + 24) = a8;
        _os_log_impl(&dword_25B6D4000, v47, v48, "Attempting to retry download for %s. Remaining retries: %ld. Backoff period: %f", v49, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x25F86BDB0](v50, -1, -1);
        MEMORY[0x25F86BDB0](v49, -1, -1);
      }

      v60 = v84;
      v61 = v85;
      v62 = v72[0];
      sub_25B716700();
      sub_25B716740();
      v85 = *(v74 + 8);
      v85(v62, v83);
      v63 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v65 = swift_allocObject();
      *(v65 + 16) = v63;
      *(v65 + 24) = v45;
      v66 = v73;
      *(v65 + 32) = v73;
      *(v65 + 40) = v44;
      *(v65 + 48) = a8;
      *(v65 + 56) = v60;
      *(v65 + 64) = v61;
      aBlock[4] = sub_25B7157AC;
      aBlock[5] = v65;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25B7157A8;
      aBlock[3] = &block_descriptor_180;
      v67 = _Block_copy(aBlock);

      v66;

      v68 = v75;
      sub_25B7166E0();
      v86 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
      v69 = v77;
      v70 = v80;
      sub_25B7169F0();
      v71 = v82;
      MEMORY[0x25F86AFC0](v82, v68, v69, v67);
      _Block_release(v67);
      (*(v79 + 8))(v69, v70);
      (*(v76 + 8))(v68, v78);
      v85(v71, v83);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    (*(v21 + 16))(v19, v23, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v84(v19);
    sub_25B7019EC(v19, &unk_27FA4A4C8, &qword_25B7383E0);
    return (*(v21 + 8))(v23, v20);
  }
}

char *sub_25B70B58C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), double a7)
{
  v85 = a6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  MEMORY[0x28223BE20](v83);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78 - v15;
  v17 = sub_25B716150();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v82 = v20;
    v23 = a4 - (a4 > 0);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v80 = v23;
    v81 = a5;
    *(v25 + 16) = a5;
    *(v25 + 24) = v85;
    *(v25 + 32) = v23;
    v26 = v25;
    *(v25 + 40) = a7;
    *(v25 + 48) = a2;
    *(v25 + 56) = a3;
    *(v25 + 64) = v24;
    v84 = a2;
    LOBYTE(aBlock[0]) = a2;
    swift_retain_n();
    v27 = a3;
    swift_retain_n();
    v28 = v27;
    sub_25B70E75C(v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_25B7019EC(v16, &qword_27FA4A4F8, &qword_25B738638);
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v29 = sub_25B716340();
      __swift_project_value_buffer(v29, qword_2810C3228);
      v30 = sub_25B716320();
      v31 = sub_25B7168C0();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v81;
      if (v32)
      {
        v78 = v28;
        v79 = v24;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        v36 = v84;
        v37 = 0xE500000000000000;
        *v34 = 136315138;
        v38 = 0xE300000000000000;
        v39 = 6580589;
        v40 = 0xE300000000000000;
        v41 = 7827308;
        if (v36 != 3)
        {
          v41 = 0x6F626D6F63;
          v40 = 0xE500000000000000;
        }

        if (v36 != 2)
        {
          v39 = v41;
          v38 = v40;
        }

        v42 = 1751607656;
        if (v36)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v42 = 0x6C61746F74;
        }

        if (v36 <= 1)
        {
          v43 = v42;
        }

        else
        {
          v43 = v39;
        }

        if (v36 <= 1)
        {
          v44 = v37;
        }

        else
        {
          v44 = v38;
        }

        v45 = sub_25B6F69F0(v43, v44, aBlock);

        *(v34 + 4) = v45;
        _os_log_impl(&dword_25B6D4000, v30, v31, "Failed to build urlRequest for cloudLevel %s.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x25F86BDB0](v35, -1, -1);
        MEMORY[0x25F86BDB0](v34, -1, -1);

        v28 = v78;
        v24 = v79;
      }

      else
      {
      }

      *v13 = 0;
      swift_storeEnumTagMultiPayload();
      sub_25B70AB80(v13, v33, v85, v80, v84, v28, v24, a7);
      sub_25B7019EC(v13, &qword_27FA4A510, &qword_25B738650);
      goto LABEL_44;
    }

    (*(v18 + 32))(v82, v16, v17);
    v46 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session;
    v47 = *&v22[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session];
    v81 = v18;
    v83 = v17;
    if (!v47)
    {
      v48 = [objc_opt_self() defaultSessionConfiguration];
      [v48 setAllowsConstrainedNetworkAccess_];
      v49 = [objc_opt_self() sessionWithConfiguration_];

      v50 = *&v22[v46];
      *&v22[v46] = v49;
    }

    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v51 = sub_25B716340();
    __swift_project_value_buffer(v51, qword_2810C3228);
    v52 = sub_25B716320();
    v53 = sub_25B7168E0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v46;
      v78 = v28;
      v79 = v24;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      v57 = v84;
      v58 = 0xE500000000000000;
      *v55 = 136315138;
      v59 = 0xE300000000000000;
      v60 = 6580589;
      v61 = 0xE300000000000000;
      v62 = 7827308;
      if (v57 != 3)
      {
        v62 = 0x6F626D6F63;
        v61 = 0xE500000000000000;
      }

      if (v57 != 2)
      {
        v60 = v62;
        v59 = v61;
      }

      v63 = 1751607656;
      if (v57)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v63 = 0x6C61746F74;
      }

      if (v57 <= 1)
      {
        v64 = v63;
      }

      else
      {
        v64 = v60;
      }

      if (v57 <= 1)
      {
        v65 = v58;
      }

      else
      {
        v65 = v59;
      }

      v66 = sub_25B6F69F0(v64, v65, aBlock);

      *(v55 + 4) = v66;
      _os_log_impl(&dword_25B6D4000, v52, v53, "Starting download task for cloud data: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x25F86BDB0](v56, -1, -1);
      MEMORY[0x25F86BDB0](v55, -1, -1);

      v28 = v78;
      v67 = *&v22[v54];
      if (v67)
      {
        goto LABEL_39;
      }
    }

    else
    {

      v67 = *&v22[v46];
      if (v67)
      {
LABEL_39:
        v68 = v67;
        v69 = v82;
        v70 = sub_25B716120();
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v72 = swift_allocObject();
        *(v72 + 16) = v71;
        *(v72 + 24) = v28;
        *(v72 + 32) = sub_25B715808;
        *(v72 + 40) = v26;
        *(v72 + 48) = v84;
        aBlock[4] = sub_25B7157A4;
        aBlock[5] = v72;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25B70CF38;
        aBlock[3] = &block_descriptor_172;
        v73 = _Block_copy(aBlock);
        v74 = v28;
        v75 = v73;
        v76 = v74;

        v77 = [v68 downloadTaskWithRequest:v70 completionHandler:v75];
        _Block_release(v75);

        [v77 resume];
        (*(v81 + 8))(v69, v83);
      }
    }

    (*(v81 + 8))(v82, v83);
LABEL_44:
  }

  return result;
}

uint64_t sub_25B70BE04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v114 = a8;
  v118 = a6;
  v119 = a7;
  v120 = a5;
  v11 = sub_25B7166D0();
  v117 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_25B7166F0();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v15 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v110 - v17;
  v19 = sub_25B716250();
  v112 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v66 = sub_25B716340();
    __swift_project_value_buffer(v66, qword_2810C3228);
    v67 = sub_25B716320();
    v68 = sub_25B7168C0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_25B6D4000, v67, v68, "AegirCloudCoverService instance went away. Server response ignored.", v69, 2u);
      MEMORY[0x25F86BDB0](v69, -1, -1);
    }

    v70 = swift_allocObject();
    v71 = v119;
    *(v70 + 16) = v118;
    *(v70 + 24) = v71;
    v126 = sub_25B7157B4;
    v127 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_25B7157A8;
    v125 = &block_descriptor_147;
    v72 = _Block_copy(&aBlock);

    sub_25B7166E0();
    v121 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v15, v13, v72);
    goto LABEL_52;
  }

  v113 = Strong;
  if (!a2 || (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v47 = sub_25B716340();
    __swift_project_value_buffer(v47, qword_2810C3228);
    v48 = a3;
    v49 = sub_25B716320();
    v50 = sub_25B7168C0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      v53 = v114;
      v54 = 0xE500000000000000;
      *v51 = 136315394;
      v55 = 0xE300000000000000;
      v56 = 6580589;
      v57 = 0xE300000000000000;
      v58 = 7827308;
      if (v53 != 3)
      {
        v58 = 0x6F626D6F63;
        v57 = 0xE500000000000000;
      }

      if (v53 != 2)
      {
        v56 = v58;
        v55 = v57;
      }

      v59 = 1751607656;
      if (v53)
      {
        v54 = 0xE400000000000000;
      }

      else
      {
        v59 = 0x6C61746F74;
      }

      if (v53 <= 1)
      {
        v60 = v59;
      }

      else
      {
        v60 = v56;
      }

      if (v53 <= 1)
      {
        v61 = v54;
      }

      else
      {
        v61 = v55;
      }

      v62 = sub_25B6F69F0(v60, v61, &aBlock);

      *(v51 + 4) = v62;
      *(v51 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v63 = sub_25B716B20();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0xE000000000000000;
      }

      v73 = sub_25B6F69F0(v63, v65, &aBlock);

      *(v51 + 14) = v73;
      _os_log_impl(&dword_25B6D4000, v49, v50, "Failed to download cloud data: %s. It did not received a http response. Error: %s.", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v52, -1, -1);
      MEMORY[0x25F86BDB0](v51, -1, -1);
    }

    v74 = swift_allocObject();
    v75 = v119;
    *(v74 + 16) = v118;
    *(v74 + 24) = v75;
    v126 = sub_25B7152E4;
    v127 = v74;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_25B7157A8;
    v125 = &block_descriptor_153;
    v72 = _Block_copy(&aBlock);

    sub_25B7166E0();
    v121 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v15, v13, v72);

LABEL_52:
    _Block_release(v72);
LABEL_56:
    (v117)[1](v13, v11);
    (*(v115 + 8))(v15, v116);
  }

  v24 = v23;
  v25 = a2;
  if (a3 || [v24 statusCode] - 200 > 0x63)
  {
    goto LABEL_8;
  }

  sub_25B701984(a1, v18, &unk_27FA4A4C8, &qword_25B7383E0);
  v26 = v112;
  if ((v112[6])(v18, 1, v19) == 1)
  {
    sub_25B7019EC(v18, &unk_27FA4A4C8, &qword_25B7383E0);
LABEL_8:
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v27 = sub_25B716340();
    __swift_project_value_buffer(v27, qword_2810C3228);
    v28 = v25;
    v29 = a3;
    v30 = sub_25B716320();
    v31 = sub_25B7168C0();

    if (os_log_type_enabled(v30, v31))
    {
      v112 = v28;
      v111 = v24;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      v34 = v114;
      v35 = 0xE500000000000000;
      *v32 = 136315650;
      v36 = 0xE300000000000000;
      v37 = 6580589;
      v38 = 0xE300000000000000;
      v39 = 7827308;
      if (v34 != 3)
      {
        v39 = 0x6F626D6F63;
        v38 = 0xE500000000000000;
      }

      if (v34 != 2)
      {
        v37 = v39;
        v36 = v38;
      }

      v40 = 1751607656;
      if (v34)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v40 = 0x6C61746F74;
      }

      if (v34 <= 1)
      {
        v41 = v40;
      }

      else
      {
        v41 = v37;
      }

      if (v34 <= 1)
      {
        v42 = v35;
      }

      else
      {
        v42 = v36;
      }

      v43 = sub_25B6F69F0(v41, v42, &aBlock);

      *(v32 + 4) = v43;
      *(v32 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v44 = sub_25B716B20();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v76 = sub_25B6F69F0(v44, v46, &aBlock);

      *(v32 + 14) = v76;
      *(v32 + 22) = 2112;
      v24 = v111;
      *(v32 + 24) = v111;
      *v33 = v24;
      v77 = v112;
      v78 = v112;
      _os_log_impl(&dword_25B6D4000, v30, v31, "Failed to download cloud data: %s. Error: %s, Response: %@", v32, 0x20u);
      sub_25B7019EC(v33, &qword_27FA4A548, &qword_25B738678);
      v79 = v33;
      v28 = v77;
      MEMORY[0x25F86BDB0](v79, -1, -1);
      v80 = v110;
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v80, -1, -1);
      MEMORY[0x25F86BDB0](v32, -1, -1);
    }

    v81 = swift_allocObject();
    v82 = v119;
    v81[2] = v118;
    v81[3] = v82;
    v81[4] = v24;
    v126 = sub_25B715300;
    v127 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_25B7157A8;
    v125 = &block_descriptor_159;
    v83 = _Block_copy(&aBlock);
    v84 = v28;

    sub_25B7166E0();
    v121 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v15, v13, v83);

    _Block_release(v83);
    goto LABEL_56;
  }

  v117 = v25;
  v111 = v24;
  v26[4](v21, v18, v19);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v86 = sub_25B716340();
  __swift_project_value_buffer(v86, qword_2810C3228);
  v87 = sub_25B716320();
  v88 = sub_25B7168E0();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v114;
  if (v89)
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock = v92;
    v93 = 0xE500000000000000;
    *v91 = 136315138;
    v94 = 0xE300000000000000;
    v95 = 6580589;
    v96 = 0xE300000000000000;
    v97 = 7827308;
    if (v90 != 3)
    {
      v97 = 0x6F626D6F63;
      v96 = 0xE500000000000000;
    }

    if (v90 != 2)
    {
      v95 = v97;
      v94 = v96;
    }

    v98 = 1751607656;
    if (v90)
    {
      v93 = 0xE400000000000000;
    }

    else
    {
      v98 = 0x6C61746F74;
    }

    if (v90 <= 1u)
    {
      v99 = v98;
    }

    else
    {
      v99 = v95;
    }

    if (v90 <= 1u)
    {
      v100 = v93;
    }

    else
    {
      v100 = v94;
    }

    v101 = sub_25B6F69F0(v99, v100, &aBlock);

    *(v91 + 4) = v101;
    _os_log_impl(&dword_25B6D4000, v87, v88, "Successfully downloaded task for cloud data: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x25F86BDB0](v92, -1, -1);
    MEMORY[0x25F86BDB0](v91, -1, -1);
  }

  v102 = v117;
  v103 = sub_25B716320();
  v104 = sub_25B7168B0();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 138412290;
    v107 = v111;
    *(v105 + 4) = v111;
    *v106 = v107;
    v108 = v102;
    _os_log_impl(&dword_25B6D4000, v103, v104, "Response: %@", v105, 0xCu);
    sub_25B7019EC(v106, &qword_27FA4A548, &qword_25B738678);
    MEMORY[0x25F86BDB0](v106, -1, -1);
    MEMORY[0x25F86BDB0](v105, -1, -1);
  }

  LOBYTE(aBlock) = v90;
  v109 = v113;
  sub_25B70D0AC(v21, &aBlock, v120, v118, v119);

  return (v112[1])(v21, v19);
}

uint64_t sub_25B70CD8C(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  *(&v6 - v3) = 0;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_25B7019EC(v4, &qword_27FA4A510, &qword_25B738650);
}

uint64_t sub_25B70CE4C(void (*a1)(BOOL *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  *v7 = [a3 statusCode] - 500 < 0xFFFFFFFFFFFFFF9CLL;
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_25B7019EC(v7, &qword_27FA4A510, &qword_25B738650);
}

uint64_t sub_25B70CF38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_25B716220();
    v12 = sub_25B716250();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_25B716250();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_25B7019EC(v10, &unk_27FA4A4C8, &qword_25B7383E0);
}

uint64_t sub_25B70D0AC(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v132 = a4;
  v136 = a3;
  v131 = a1;
  v151 = *MEMORY[0x277D85DE8];
  v142 = sub_25B7166D0();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_25B7166F0();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B716250();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v129 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v128 = &v127 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v127 - v19;
  v21 = *a2;
  v22 = [objc_opt_self() defaultManager];
  v23 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v133 = v11;
  v24 = *(v11 + 16);
  v143 = v10;
  v130 = v24;
  v24(v20, (v6 + v23), v10);
  v25 = 0xE500000000000000;
  aBlock = 0x61632D632D333070;
  v146 = 0xEF2D65706F696C6CLL;
  v26 = 0xE300000000000000;
  v27 = 6580589;
  v28 = 0xE300000000000000;
  v29 = 7827308;
  if (v21 != 3)
  {
    v29 = 0x6F626D6F63;
    v28 = 0xE500000000000000;
  }

  if (v21 != 2)
  {
    v27 = v29;
    v26 = v28;
  }

  v30 = 1751607656;
  if (v21)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v30 = 0x6C61746F74;
  }

  if (v21 <= 1)
  {
    v31 = v30;
  }

  else
  {
    v31 = v27;
  }

  if (v21 <= 1)
  {
    v32 = v25;
  }

  else
  {
    v32 = v26;
  }

  MEMORY[0x25F86AEB0](v31, v32);

  sub_25B716200();

  sub_25B716210();
  sub_25B70E2D4();
  sub_25B716230();
  v33 = sub_25B7167A0();

  v34 = [v22 fileExistsAtPath_];

  v35 = v22;
  v135 = v22;
  if (!v34)
  {
    goto LABEL_17;
  }

  v36 = sub_25B7161F0();
  aBlock = 0;
  v37 = [v22 removeItemAtURL:v36 error:&aBlock];

  if (v37)
  {
    v38 = aBlock;
LABEL_17:
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v39 = sub_25B716340();
    __swift_project_value_buffer(v39, qword_2810C3228);
    v40 = sub_25B716320();
    v41 = sub_25B7168E0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v35;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25B6D4000, v40, v41, "Fech Completed. Moving textures to cache directory.", v43, 2u);
      v44 = v43;
      v35 = v42;
      MEMORY[0x25F86BDB0](v44, -1, -1);
    }

    v45 = sub_25B7161F0();
    v46 = sub_25B7161F0();
    aBlock = 0;
    v47 = [v35 moveItemAtURL:v45 toURL:v46 error:&aBlock];

    v48 = aBlock;
    if (v47)
    {
      v49 = v143;
      v130(v18, v20, v143);
      v50 = v133;
      v51 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v52 = swift_allocObject();
      v53 = v134;
      *(v52 + 16) = v132;
      *(v52 + 24) = v53;
      (*(v50 + 32))(v52 + v51, v18, v49);
      v149 = sub_25B715150;
      v150 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v146 = 1107296256;
      v147 = sub_25B7157A8;
      v148 = &block_descriptor_62;
      v54 = _Block_copy(&aBlock);
      v55 = v48;

      v56 = v137;
      sub_25B7166E0();
      v144 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
      v57 = v138;
      v58 = v142;
      sub_25B7169F0();
      MEMORY[0x25F86B000](0, v56, v57, v54);
      _Block_release(v54);

      (*(v141 + 8))(v57, v58);
      (*(v139 + 8))(v56, v140);
      (*(v50 + 8))(v20, v49);
    }

    else
    {
      v59 = v135;
      v60 = aBlock;
      v61 = sub_25B7161C0();

      swift_willThrow();
      v62 = v61;
      v63 = sub_25B716320();
      v64 = sub_25B7168C0();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock = v66;
        *v65 = 136315394;
        v67 = 0xE300000000000000;
        v68 = 0xE300000000000000;
        v69 = 7827308;
        if (v21 != 3)
        {
          v69 = 0x6F626D6F63;
          v68 = 0xE500000000000000;
        }

        if (v21 == 2)
        {
          v69 = 6580589;
        }

        else
        {
          v67 = v68;
        }

        v70 = 0xE500000000000000;
        v71 = 1751607656;
        if (v21)
        {
          v70 = 0xE400000000000000;
        }

        else
        {
          v71 = 0x6C61746F74;
        }

        if (v21 <= 1)
        {
          v72 = v71;
        }

        else
        {
          v72 = v69;
        }

        if (v21 <= 1)
        {
          v73 = v70;
        }

        else
        {
          v73 = v67;
        }

        v74 = sub_25B6F69F0(v72, v73, &aBlock);

        *(v65 + 4) = v74;
        *(v65 + 12) = 2080;
        swift_getErrorValue();
        v75 = sub_25B716B20();
        v77 = sub_25B6F69F0(v75, v76, &aBlock);

        *(v65 + 14) = v77;
        _os_log_impl(&dword_25B6D4000, v63, v64, "Failed to move file to cache directory: %s. Error: %s.", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v66, -1, -1);
        MEMORY[0x25F86BDB0](v65, -1, -1);
      }

      v78 = swift_allocObject();
      v79 = v134;
      *(v78 + 16) = v132;
      *(v78 + 24) = v79;
      v149 = sub_25B7157B4;
      v150 = v78;
      aBlock = MEMORY[0x277D85DD0];
      v146 = 1107296256;
      v147 = sub_25B7157A8;
      v148 = &block_descriptor_56;
      v80 = _Block_copy(&aBlock);

      v81 = v137;
      sub_25B7166E0();
      v144 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
      v82 = v138;
      v83 = v142;
      sub_25B7169F0();
      MEMORY[0x25F86B000](0, v81, v82, v80);

      _Block_release(v80);
      (*(v141 + 8))(v82, v83);
      (*(v139 + 8))(v81, v140);
      (*(v133 + 8))(v20, v143);
    }
  }

  v127 = v20;
  v84 = aBlock;
  v85 = sub_25B7161C0();

  swift_willThrow();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v86 = sub_25B716340();
  __swift_project_value_buffer(v86, qword_2810C3228);
  v87 = v128;
  v88 = v143;
  v89 = v130;
  v130(v128, v131, v143);
  v90 = v129;
  v89(v129, v127, v88);
  v91 = v85;
  v92 = sub_25B716320();
  v93 = sub_25B7168C0();

  if (os_log_type_enabled(v92, v93))
  {
    LODWORD(v131) = v93;
    v94 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    aBlock = v130;
    *v94 = 136315906;
    v95 = 0xE300000000000000;
    v96 = 0xE300000000000000;
    v97 = 7827308;
    if (v21 != 3)
    {
      v97 = 0x6F626D6F63;
      v96 = 0xE500000000000000;
    }

    if (v21 == 2)
    {
      v97 = 6580589;
    }

    else
    {
      v95 = v96;
    }

    v98 = 0xE500000000000000;
    v99 = 1751607656;
    if (v21)
    {
      v98 = 0xE400000000000000;
    }

    else
    {
      v99 = 0x6C61746F74;
    }

    if (v21 <= 1)
    {
      v100 = v99;
    }

    else
    {
      v100 = v97;
    }

    if (v21 <= 1)
    {
      v101 = v98;
    }

    else
    {
      v101 = v95;
    }

    v102 = sub_25B6F69F0(v100, v101, &aBlock);

    *(v94 + 4) = v102;
    *(v94 + 12) = 2080;
    sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v103 = v143;
    v104 = sub_25B716AD0();
    v105 = v87;
    v107 = v106;
    v108 = *(v133 + 8);
    v108(v105, v103);
    v109 = sub_25B6F69F0(v104, v107, &aBlock);

    *(v94 + 14) = v109;
    *(v94 + 22) = 2080;
    v110 = v129;
    v111 = sub_25B716AD0();
    v113 = v112;
    v108(v110, v103);
    v114 = sub_25B6F69F0(v111, v113, &aBlock);

    *(v94 + 24) = v114;
    *(v94 + 32) = 2080;
    swift_getErrorValue();
    v115 = sub_25B716B20();
    v117 = sub_25B6F69F0(v115, v116, &aBlock);

    *(v94 + 34) = v117;
    _os_log_impl(&dword_25B6D4000, v92, v131, "Failed to move tmp file for cloud data: %s from: %s, to: %s. Error: %s", v94, 0x2Au);
    v118 = v130;
    swift_arrayDestroy();
    MEMORY[0x25F86BDB0](v118, -1, -1);
    MEMORY[0x25F86BDB0](v94, -1, -1);
  }

  else
  {

    v108 = *(v133 + 8);
    v108(v90, v88);
    v108(v87, v88);
  }

  v119 = v85;
  v120 = swift_allocObject();
  v121 = v134;
  *(v120 + 16) = v132;
  *(v120 + 24) = v121;
  v149 = sub_25B7157B4;
  v150 = v120;
  aBlock = MEMORY[0x277D85DD0];
  v146 = 1107296256;
  v147 = sub_25B7157A8;
  v148 = &block_descriptor_68;
  v122 = _Block_copy(&aBlock);

  v123 = v137;
  sub_25B7166E0();
  v144 = MEMORY[0x277D84F90];
  sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
  sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
  v124 = v138;
  v125 = v142;
  sub_25B7169F0();
  MEMORY[0x25F86B000](0, v123, v124, v122);

  _Block_release(v122);
  (*(v141 + 8))(v124, v125);
  (*(v139 + 8))(v123, v140);
  v108(v127, v143);
}

uint64_t sub_25B70E1CC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_25B716250();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_25B7019EC(v7, &qword_27FA4A510, &qword_25B738650);
}

void sub_25B70E2D4()
{
  v1 = v0;
  v41 = *MEMORY[0x277D85DE8];
  v2 = sub_25B716250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, &v0[v7], v2);
  sub_25B716230();
  v38 = *(v3 + 8);
  v38(v5, v2);
  v9 = sub_25B7167A0();

  v39 = v6;
  v10 = [v6 fileExistsAtPath_];

  if (v10)
  {
  }

  else
  {
    v36 = v8;
    v37 = v1;
    v8(v5, &v1[v7], v2);
    v11 = sub_25B7161F0();
    v38(v5, v2);
    v40 = 0;
    v12 = v39;
    v13 = [v39 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v40];

    if (v13)
    {
      v14 = v40;
    }

    else
    {
      v15 = v40;
      v16 = sub_25B7161C0();

      swift_willThrow();
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v17 = sub_25B716340();
      __swift_project_value_buffer(v17, qword_2810C3228);
      v18 = v37;
      v19 = v37;
      v20 = v16;
      v21 = sub_25B716320();
      v22 = sub_25B7168E0();

      v23 = v22;
      v24 = os_log_type_enabled(v21, v22);
      v25 = v16;
      if (v24)
      {
        v26 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v39;
        *v26 = 136315394;
        v36(v5, &v18[v7], v2);
        sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v27 = v25;
        v28 = sub_25B716AD0();
        v30 = v29;
        v38(v5, v2);
        v31 = sub_25B6F69F0(v28, v30, &v40);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v32 = sub_25B716B20();
        v34 = sub_25B6F69F0(v32, v33, &v40);

        *(v26 + 14) = v34;
        _os_log_impl(&dword_25B6D4000, v21, v23, "Failed to create destination folder:%s. Error: %s", v26, 0x16u);
        v35 = v39;
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v35, -1, -1);
        MEMORY[0x25F86BDB0](v26, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_25B70E75C@<X0>(uint64_t a2@<X8>)
{
  v81 = a2;
  v62 = sub_25B7162B0();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25B716300();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B716290();
  v70 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v59 - v8;
  v83 = sub_25B7161B0();
  v86 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A500, &qword_25B738640);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v82 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_25B716250();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v74 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v59 - v28;
  v78 = v2;
  v30 = v2 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_configuration;
  sub_25B716240();
  v31 = *(v23 + 48);
  result = v31(v21, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v76 = v31;
    v84 = v23;
    v85 = v22;
    v64 = *(v23 + 32);
    v64(v29, v21, v22);
    v63 = v30;
    sub_25B716200();
    v75 = v5;
    sub_25B716200();

    v79 = v29;
    sub_25B7161D0();
    sub_25B7161A0();

    v33 = *(v86 + 48);
    v34 = v83;
    if (!v33(v16, 1, v83))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A508, &qword_25B738648);
      sub_25B716170();
      *(swift_allocObject() + 16) = xmmword_25B737F80;
      sub_25B716890();
      sub_25B716160();

      sub_25B716180();
    }

    v35 = sub_25B716150();
    v36 = v16;
    v37 = *(v35 - 8);
    v38 = *(v37 + 56);
    v38(v87, 1, 1, v35);
    v39 = v33(v36, 1, v34);
    v80 = v36;
    if (v39)
    {
      v41 = v84;
      v40 = v85;
      (*(v84 + 8))(v79, v85);
      v42 = v82;
      (*(v41 + 56))(v82, 1, 1, v40);
LABEL_8:
      sub_25B7019EC(v42, &unk_27FA4A4C8, &qword_25B7383E0);
      v47 = v80;
      v46 = v81;
LABEL_9:
      sub_25B715474(v87, v46, &qword_27FA4A4F8, &qword_25B738638);
      return sub_25B7019EC(v47, &qword_27FA4A500, &qword_25B738640);
    }

    v60 = v37;
    v43 = v86;
    v44 = v77;
    (*(v86 + 16))(v77, v36, v34);
    v42 = v82;
    sub_25B716190();
    (*(v43 + 8))(v44, v34);
    v45 = v85;
    if (v76(v42, 1, v85) == 1)
    {
      (*(v84 + 8))(v79, v45);
      goto LABEL_8;
    }

    v48 = v74;
    v64(v74, v42, v45);
    v49 = v71;
    v86 = *(v84 + 16);
    (v86)(v71, v48, v45);
    v50 = v72;
    sub_25B716130();
    v38(v50, 0, 1, v35);
    v51 = v50;
    v52 = v87;
    sub_25B7150E0(v51, v87);
    v53 = v73;
    sub_25B716280();
    result = (*(v60 + 48))(v52, 1, v35);
    if (result != 1)
    {
      v54 = v70;
      (*(v70 + 16))(v65, v53, v75);
      (v86)(v49, v48, v85);

      v55 = v67;
      sub_25B7162F0();
      v56 = v66;
      sub_25B7162C0();
      v47 = v80;
      sub_25B7162A0();
      (*(v61 + 8))(v56, v62);
      sub_25B716140();

      (*(v68 + 8))(v55, v69);
      (*(v54 + 8))(v53, v75);
      v57 = v85;
      v58 = *(v84 + 8);
      v58(v48, v85);
      v58(v79, v57);
      v46 = v81;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id AegirCloudCoverService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AegirCloudCoverService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirCloudCoverService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AegirCloudCoverService.urlForCloudLevel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25B7038C4(a1, a2, v20);
  v5 = v20[0];
  if (v20[0] == 5)
  {
    v6 = sub_25B716250();
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }

  else
  {
    v9 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
    swift_beginAccess();
    v10 = sub_25B716250();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a3, v3 + v9, v10);
    v12 = 0xE500000000000000;
    v13 = 0x6C61746F74;
    v14 = 0xE300000000000000;
    v15 = 6580589;
    v16 = 0xE300000000000000;
    v17 = 7827308;
    if (v5 != 3)
    {
      v17 = 0x6F626D6F63;
      v16 = 0xE500000000000000;
    }

    if (v5 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v5)
    {
      v13 = 1751607656;
      v12 = 0xE400000000000000;
    }

    if (v5 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v5 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    MEMORY[0x25F86AEB0](v18, v19);

    sub_25B716200();

    sub_25B716210();
    return (*(v11 + 56))(a3, 0, 1, v10);
  }
}

uint64_t AegirCloudCoverService.currentURLForCloudLevel(with:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_25B716250();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v36 - v16;
  v36[1] = a2;
  v18 = sub_25B7167A0();
  v19 = [v3 urlForCloudLevelWith_];

  if (v19)
  {
    sub_25B716220();

    v20 = *(v6 + 56);
    v21 = v15;
    v22 = 0;
  }

  else
  {
    v20 = *(v6 + 56);
    v21 = v15;
    v22 = 1;
  }

  v37 = v20;
  v20(v21, v22, 1, v5);
  sub_25B715474(v15, v17, &unk_27FA4A4C8, &qword_25B7383E0);
  sub_25B701984(v17, v12, &unk_27FA4A4C8, &qword_25B7383E0);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_25B7019EC(v12, &unk_27FA4A4C8, &qword_25B7383E0);
    return sub_25B715474(v17, v38, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  v23 = v8;
  (*(v6 + 32))(v8, v12, v5);
  v24 = [objc_opt_self() defaultManager];
  sub_25B716230();
  v25 = sub_25B7167A0();

  v26 = [v24 fileExistsAtPath_];

  if (v26)
  {
    (*(v6 + 8))(v8, v5);
    return sub_25B715474(v17, v38, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  type metadata accessor for AegirCloudCoverService(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_25B7167A0();
  v31 = sub_25B7167A0();
  v32 = [v29 pathForResource:v30 ofType:v31];

  if (v32)
  {
    sub_25B7167D0();

    sub_25B70E2D4();
    v33 = v38;
    sub_25B7161E0();

    (*(v6 + 8))(v23, v5);
    sub_25B7019EC(v17, &unk_27FA4A4C8, &qword_25B7383E0);
    v34 = v33;
    v35 = 0;
  }

  else
  {
    (*(v6 + 8))(v23, v5);
    sub_25B7019EC(v17, &unk_27FA4A4C8, &qword_25B7383E0);
    v34 = v38;
    v35 = 1;
  }

  return v37(v34, v35, 1, v5);
}

id sub_25B70FE34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_25B7167D0();
  v11 = v10;
  v12 = a1;
  a4(v9, v11);

  v13 = sub_25B716250();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_25B7161F0();
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  return v16;
}

uint64_t sub_25B70FFE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  sub_25B7137C4(v2, v1, v4, v3);
}

char *sub_25B710044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A328, &qword_25B7381B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25B710150(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A538, &qword_25B738668);
  v10 = *(sub_25B716250() - 8);
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
  v15 = *(sub_25B716250() - 8);
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

void *sub_25B710328(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A538, &qword_25B738668);
  v4 = *(sub_25B716250() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_25B710424@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25B7061B0();
  *a1 = result;
  return result;
}

char *sub_25B7104A4(char *a1, int64_t a2, char a3)
{
  result = sub_25B70148C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B7104C4(char *a1, int64_t a2, char a3)
{
  result = sub_25B701380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25B7104E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_25B716250();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A568, &unk_25B738690);
  v36 = v4;
  result = sub_25B716A80();
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
    v37 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v5 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v36)
      {
        (*v37)(v38, v27, v39);
      }

      else
      {
        (*v34)(v38, v27, v39);
      }

      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = (*v37)(*(v9 + 56) + v26 * v20, v38, v39);
      ++*(v9 + 16);
      v5 = v35;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v9;
  return result;
}

unint64_t sub_25B7108C8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25B716A00() + 1) & ~v5;
    while (1)
    {
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_25B716250() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
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

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25B710B18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25B6FC4E8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25B710D2C();
      goto LABEL_7;
    }

    sub_25B7104E4(v13, a3 & 1);
    v24 = sub_25B6FC4E8(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25B716B10();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25B716250();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25B710C80(v10, a2, a1, v16);
}

uint64_t sub_25B710C80(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_25B716250();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_25B710D2C()
{
  v1 = v0;
  v29 = sub_25B716250();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A568, &unk_25B738690);
  v3 = *v0;
  v4 = sub_25B716A70();
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
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

uint64_t sub_25B710F94(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_25B716B70();
  sub_25B7167F0();

  v5 = sub_25B716B90();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v23 = ~v7;
    v24 = v4;
    v9 = 1751607656;
    v10 = 7827308;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 <= 1)
      {
        v12 = *(*(v4 + 48) + v8) ? 1751607656 : 0x6C61746F74;
        v13 = *(*(v4 + 48) + v8) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v11 == 2)
      {
        v13 = 0xE300000000000000;
        v12 = 6580589;
      }

      else
      {
        v12 = v11 == 3 ? 7827308 : 0x6F626D6F63;
        v13 = v11 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      if (a2 == 3)
      {
        v14 = 0xE300000000000000;
      }

      else
      {
        v10 = 0x6F626D6F63;
        v14 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v10 = 6580589;
        v14 = 0xE300000000000000;
      }

      if (a2)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v9 = 0x6C61746F74;
        v15 = 0xE500000000000000;
      }

      v16 = a2 <= 1u ? v9 : v10;
      v17 = a2 <= 1u ? v15 : v14;
      if (v12 == v16 && v13 == v17)
      {
        break;
      }

      v18 = sub_25B716AF0();

      if (v18)
      {
        goto LABEL_38;
      }

      v4 = v24;
      v8 = (v8 + 1) & v23;
      v9 = 1751607656;
      v10 = 7827308;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v24 + 48) + v8);
  }

  else
  {
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v21;
    sub_25B7114F0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v21 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25B711228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  result = sub_25B716A20();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_25B7114F0(uint64_t result, unint64_t a2, char a3)
{
  v30 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    sub_25B711228(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_25B7117F4();
      goto LABEL_44;
    }

    sub_25B711934(v5 + 1);
  }

  v7 = 0x6C61746F74;
  v8 = *v3;
  sub_25B716B70();
  sub_25B7167F0();

  result = sub_25B716B90();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v29 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x6F626D6F63;
    v12 = v8;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v14 = 1751607656;
        }

        else
        {
          v14 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v15 = 0xE400000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      else if (v13 == 2)
      {
        v15 = 0xE300000000000000;
        v14 = 6580589;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 7827308;
        }

        else
        {
          v14 = v11;
        }

        if (v13 == 3)
        {
          v15 = 0xE300000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      v16 = v11;
      if (v30 == 3)
      {
        v11 = 7827308;
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      if (v30 == 2)
      {
        v11 = 6580589;
        v17 = 0xE300000000000000;
      }

      v18 = v7;
      v19 = 1751607656;
      if (!v30)
      {
        v19 = v7;
      }

      v20 = 0xE400000000000000;
      if (!v30)
      {
        v20 = 0xE500000000000000;
      }

      v21 = v30 <= 1u ? v19 : v11;
      v22 = v30 <= 1u ? v20 : v17;
      if (v14 == v21 && v15 == v22)
      {
        goto LABEL_47;
      }

      v23 = sub_25B716AF0();

      if (v23)
      {
        goto LABEL_48;
      }

      a2 = (a2 + 1) & v10;
      v7 = v18;
      v11 = v16;
      v8 = v12;
    }

    while (((*(v29 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_44:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v30;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  result = sub_25B716B00();
  __break(1u);
  return result;
}

void *sub_25B7117F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  v2 = *v0;
  v3 = sub_25B716A10();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_25B711934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  result = sub_25B716A20();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25B711BCC@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_25B716B70();
  sub_25B7167F0();

  result = sub_25B716B90();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    v8 = 0x6F626D6F63;
    v9 = 1751607656;
    v10 = a1;
    while (1)
    {
      v11 = *(*(v4 + 48) + v7);
      if (v11 <= 1)
      {
        v12 = *(*(v4 + 48) + v7) ? 1751607656 : 0x6C61746F74;
        v13 = *(*(v4 + 48) + v7) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v11 == 2)
      {
        v13 = 0xE300000000000000;
        v12 = 6580589;
      }

      else
      {
        v12 = v11 == 3 ? 7827308 : v8;
        v13 = v11 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      if (v10 == 3)
      {
        v14 = 7827308;
      }

      else
      {
        v14 = v8;
      }

      if (v10 == 3)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      if (v10 == 2)
      {
        v14 = 6580589;
        v15 = 0xE300000000000000;
      }

      if (v10)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v9 = 0x6C61746F74;
        v16 = 0xE500000000000000;
      }

      v17 = v10 <= 1 ? v9 : v14;
      v18 = v10 <= 1 ? v16 : v15;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = v8;
      v20 = sub_25B716AF0();

      if (v20)
      {
        goto LABEL_41;
      }

      v7 = (v7 + 1) & v25;
      v8 = v19;
      v9 = 1751607656;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v23;
    v26 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B7117F4();
      v22 = v26;
    }

    *a2 = *(*(v22 + 48) + v7);
    result = sub_25B711E78(v7);
    *v23 = v26;
  }

  else
  {
LABEL_39:
    *a2 = 5;
  }

  return result;
}

unint64_t sub_25B711E78(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25B716A00();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25B716B70();
        sub_25B7167F0();

        v10 = sub_25B716B90() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25B7120A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_25B716250();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25B71234C(unsigned __int8 *a1, void *a2, char *a3, char *a4, int a5, void *a6, uint64_t a7, unsigned __int8 *a8, double a9, unsigned __int8 a10, void (*a11)(uint64_t), uint64_t a12)
{
  v165 = a6;
  v166 = a3;
  LODWORD(v169) = a5;
  v170 = a4;
  v154 = a2;
  v168 = a1;
  v150 = sub_25B7166D0();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_25B7166F0();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_25B716710();
  v144 = *(v152 - 8);
  v17 = MEMORY[0x28223BE20](v152);
  v142 = v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v151 = v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v143 = v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v159 = v141 - v23;
  v155 = sub_25B716250();
  v160 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v158 = v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v25 = MEMORY[0x28223BE20](v156);
  v157 = v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v167 = v141 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v141 - v29;
  v31 = sub_25B716150();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  *(v35 + 16) = a8;
  v162 = a10;
  *(v35 + 24) = a10;
  v164 = a11;
  *(v35 + 32) = a11;
  *(v35 + 40) = a12;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25B715268;
  *(v36 + 24) = v35;
  *(v36 + 32) = v170;
  *(v36 + 40) = a9;
  *(v36 + 48) = v169;
  v37 = v165;
  *(v36 + 56) = v165;
  *(v36 + 64) = a7;
  v163 = *v168;
  LOBYTE(aBlock) = v163;
  v168 = a8;
  v38 = v166;

  v161 = a12;

  v39 = v37;
  v141[1] = a7;

  sub_25B70E75C(v30);
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    v165 = v35;
    (*(v32 + 32))(v34, v30, v31);
    v56 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session;
    if (!*&v38[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session])
    {
      v57 = [objc_opt_self() defaultSessionConfiguration];
      [v57 setAllowsConstrainedNetworkAccess_];
      v58 = [objc_opt_self() sessionWithConfiguration_];

      v59 = *&v38[v56];
      *&v38[v56] = v58;
    }

    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v60 = sub_25B716340();
    __swift_project_value_buffer(v60, qword_2810C3228);
    v61 = sub_25B716320();
    v62 = sub_25B7168E0();
    if (os_log_type_enabled(v61, v62))
    {
      v153 = v36;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v63 = 136315138;
      v141[0] = v32;
      v65 = v34;
      v66 = v31;
      if (v163 <= 1)
      {
        if (v163)
        {
          v67 = 0xE400000000000000;
          v68 = 1751607656;
        }

        else
        {
          v68 = 0x6C61746F74;
          v67 = 0xE500000000000000;
        }
      }

      else if (v163 == 2)
      {
        v67 = 0xE300000000000000;
        v68 = 6580589;
      }

      else if (v163 == 3)
      {
        v67 = 0xE300000000000000;
        v68 = 7827308;
      }

      else
      {
        v67 = 0xE500000000000000;
        v68 = 0x6F626D6F63;
      }

      v131 = sub_25B6F69F0(v68, v67, &aBlock);

      *(v63 + 4) = v131;
      _os_log_impl(&dword_25B6D4000, v61, v62, "Starting download task for cloud data: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x25F86BDB0](v64, -1, -1);
      MEMORY[0x25F86BDB0](v63, -1, -1);

      v36 = v153;
      v31 = v66;
      v32 = v141[0];
      v34 = v65;
      v91 = *&v38[v56];
      if (!v91)
      {
        goto LABEL_83;
      }
    }

    else
    {

      v91 = *&v38[v56];
      if (!v91)
      {
        goto LABEL_83;
      }
    }

    v132 = v91;
    v133 = sub_25B716120();
    v134 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v135 = swift_allocObject();
    v136 = v154;
    *(v135 + 16) = v134;
    *(v135 + 24) = v136;
    *(v135 + 32) = sub_25B715278;
    *(v135 + 40) = v36;
    *(v135 + 48) = v163;
    v176 = sub_25B7152E0;
    v177 = v135;
    aBlock = MEMORY[0x277D85DD0];
    v173 = 1107296256;
    v174 = sub_25B70CF38;
    v175 = &block_descriptor_141;
    v137 = _Block_copy(&aBlock);
    v138 = v136;

    v139 = [v132 downloadTaskWithRequest:v133 completionHandler:v137];
    _Block_release(v137);

    [v139 resume];
LABEL_83:
    (*(v32 + 8))(v34, v31);
    goto LABEL_84;
  }

  sub_25B7019EC(v30, &qword_27FA4A4F8, &qword_25B738638);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v166 = v39;
  v40 = sub_25B716340();
  __swift_project_value_buffer(v40, qword_2810C3228);
  v41 = sub_25B716320();
  v42 = sub_25B7168C0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v157;
  if (v43)
  {
    v153 = v36;
    v165 = v35;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    v47 = 0xE500000000000000;
    *v45 = 136315138;
    v48 = 0xE300000000000000;
    v49 = 6580589;
    v50 = 0xE300000000000000;
    v51 = 7827308;
    if (v163 != 3)
    {
      v51 = 0x6F626D6F63;
      v50 = 0xE500000000000000;
    }

    if (v163 != 2)
    {
      v49 = v51;
      v48 = v50;
    }

    v52 = 1751607656;
    if (v163)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v52 = 0x6C61746F74;
    }

    if (v163 <= 1)
    {
      v53 = v52;
    }

    else
    {
      v53 = v49;
    }

    if (v163 <= 1)
    {
      v54 = v47;
    }

    else
    {
      v54 = v48;
    }

    v55 = sub_25B6F69F0(v53, v54, &aBlock);

    *(v45 + 4) = v55;
    _os_log_impl(&dword_25B6D4000, v41, v42, "Failed to build urlRequest for cloudLevel %s.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F86BDB0](v46, -1, -1);
    MEMORY[0x25F86BDB0](v45, -1, -1);

    v35 = v165;
    v36 = v153;
  }

  else
  {
  }

  v69 = v167;
  v70 = v168;
  *v167 = 0;
  swift_storeEnumTagMultiPayload();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v162;
  v72 = v161;
  *(v71 + 32) = v164;
  *(v71 + 40) = v72;
  sub_25B701984(v69, v44, &qword_27FA4A510, &qword_25B738650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = *v44;
    swift_retain_n();
    swift_retain_n();
    v74 = sub_25B716320();
    v75 = v170;
    if (v73 == 1 && v170)
    {
      v165 = v35;
      v76 = sub_25B7168E0();
      v77 = os_log_type_enabled(v74, v76);
      v153 = v36;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock = v79;
        v80 = v169;
        v81 = v169;
        v82 = 0xE500000000000000;
        *v78 = 136315650;
        v83 = 0xE300000000000000;
        v84 = 6580589;
        v85 = 0xE300000000000000;
        v86 = 7827308;
        if (v81 != 3)
        {
          v86 = 0x6F626D6F63;
          v85 = 0xE500000000000000;
        }

        if (v81 != 2)
        {
          v84 = v86;
          v83 = v85;
        }

        v87 = 1751607656;
        if (v81)
        {
          v82 = 0xE400000000000000;
        }

        else
        {
          v87 = 0x6C61746F74;
        }

        if (v81 <= 1)
        {
          v88 = v87;
        }

        else
        {
          v88 = v84;
        }

        if (v81 <= 1)
        {
          v89 = v82;
        }

        else
        {
          v89 = v83;
        }

        v90 = sub_25B6F69F0(v88, v89, &aBlock);

        *(v78 + 4) = v90;
        *(v78 + 12) = 2048;
        *(v78 + 14) = v75;
        *(v78 + 22) = 2048;
        *(v78 + 24) = a9;
        _os_log_impl(&dword_25B6D4000, v74, v76, "Attempting to retry download for %s. Remaining retries: %ld. Backoff period: %f", v78, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x25F86BDB0](v79, -1, -1);
        MEMORY[0x25F86BDB0](v78, -1, -1);
      }

      else
      {

        v80 = v169;
      }

      v121 = v142;
      sub_25B716700();
      sub_25B716740();
      v169 = *(v144 + 8);
      v169(v121, v152);
      v122 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v124 = swift_allocObject();
      *(v124 + 16) = v122;
      *(v124 + 24) = v80;
      v125 = v166;
      *(v124 + 32) = v166;
      *(v124 + 40) = v75;
      *(v124 + 48) = a9;
      *(v124 + 56) = sub_25B715788;
      *(v124 + 64) = v71;
      v176 = sub_25B7152DC;
      v177 = v124;
      aBlock = MEMORY[0x277D85DD0];
      v173 = 1107296256;
      v174 = sub_25B7157A8;
      v175 = &block_descriptor_133;
      v126 = _Block_copy(&aBlock);
      v170 = v125;

      v127 = v145;
      sub_25B7166E0();
      v171 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
      v128 = v147;
      v129 = v150;
      sub_25B7169F0();
      v130 = v151;
      MEMORY[0x25F86AFC0](v151, v127, v128, v126);
      _Block_release(v126);
      (*(v149 + 8))(v128, v129);
      (*(v146 + 8))(v127, v148);
      v169(v130, v152);

      goto LABEL_77;
    }

    v102 = sub_25B7168C0();
    if (os_log_type_enabled(v74, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      v105 = v169;
      v106 = 0xE500000000000000;
      *v103 = 136315138;
      v107 = 0xE300000000000000;
      v108 = 6580589;
      v109 = 0xE300000000000000;
      v110 = 7827308;
      if (v105 != 3)
      {
        v110 = 0x6F626D6F63;
        v109 = 0xE500000000000000;
      }

      if (v105 != 2)
      {
        v108 = v110;
        v107 = v109;
      }

      v111 = 1751607656;
      if (v105)
      {
        v106 = 0xE400000000000000;
      }

      else
      {
        v111 = 0x6C61746F74;
      }

      if (v105 <= 1)
      {
        v112 = v111;
      }

      else
      {
        v112 = v108;
      }

      if (v105 <= 1)
      {
        v113 = v106;
      }

      else
      {
        v113 = v107;
      }

      v114 = sub_25B6F69F0(v112, v113, &aBlock);

      *(v103 + 4) = v114;
      _os_log_impl(&dword_25B6D4000, v74, v102, "Exhausted retry attempts for %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x25F86BDB0](v104, -1, -1);
      MEMORY[0x25F86BDB0](v103, -1, -1);
    }

    else
    {
    }

    v116 = v143;
    (*(v160 + 56))(v143, 1, 1, v155);
    swift_beginAccess();
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      v118 = v117;
      v119 = *(v117 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);

      MEMORY[0x28223BE20](v120);
      v141[-2] = v168;
      LOBYTE(v141[-1]) = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
      sub_25B716940();
    }

    v164(v116);
    sub_25B7019EC(v116, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  else
  {
    v92 = v160;
    v93 = v158;
    v94 = v44;
    v95 = v155;
    (*(v160 + 32))(v158, v94, v155);
    v96 = v159;
    (*(v92 + 16))(v159, v93, v95);
    (*(v92 + 56))(v96, 0, 1, v95);
    swift_beginAccess();
    v97 = swift_unknownObjectWeakLoadStrong();
    if (v97)
    {
      v98 = *(v97 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);
      v99 = v97;
      swift_retain_n();
      swift_retain_n();
      v100 = v98;

      MEMORY[0x28223BE20](v101);
      v141[-2] = v168;
      LOBYTE(v141[-1]) = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
      sub_25B716940();
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
    }

    v115 = v159;
    v164(v159);
    sub_25B7019EC(v115, &unk_27FA4A4C8, &qword_25B7383E0);
    (*(v160 + 8))(v158, v95);
  }

LABEL_77:
  sub_25B7019EC(v167, &qword_27FA4A510, &qword_25B738650);
LABEL_84:
}

void sub_25B7137C4(void *a1, char *a2, void (*a3)(void), uint64_t a4)
{
  v128 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v105 - v8;
  v126 = sub_25B716250();
  v135 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B7166D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v114 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B7166F0();
  v113 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v120 = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  v137 = [v17 init];
  v18 = dispatch_group_create();
  v138 = swift_allocObject();
  *(v138 + 16) = MEMORY[0x277D84F98];
  v131 = a2;
  v19 = sub_25B7061B0();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v20 = sub_25B716340();
  v132 = __swift_project_value_buffer(v20, qword_2810C3228);
  v21 = sub_25B716320();
  v22 = sub_25B7168E0();
  v23 = os_log_type_enabled(v21, v22);
  v133 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v19;
    _os_log_impl(&dword_25B6D4000, v21, v22, "Retrieving all cloud textures. Will Fetch Data: %{BOOL}d", v24, 8u);
    v25 = v24;
    v18 = v133;
    MEMORY[0x25F86BDB0](v25, -1, -1);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  if (v19)
  {
    v136 = v26;
    v27 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer;
    v28 = v131;
    if (*&v131[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25B7169B0();
      swift_unknownObjectRelease();
    }

    v108 = v14;
    *&v28[v27] = 0;
    swift_unknownObjectRelease();
    if (qword_2810C3310 != -1)
    {
      swift_once();
    }

    v30 = qword_2810C3638;
    v31 = *(qword_2810C3638 + 16);
    if (v31)
    {
      v125 = v9;
      v106 = v12;
      v107 = v11;
      v32 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
      v33 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
      v124 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;

      v34 = v131;
      v127 = v32;
      swift_beginAccess();
      v111 = v33;
      swift_beginAccess();
      v123 = v135 + 16;
      v110 = (v135 + 8);
      v122 = v135 + 56;
      v35 = 32;
      *&v36 = 136315138;
      v121 = v36;
      *&v36 = 136315394;
      v109 = v36;
      v129 = v30;
      do
      {
        v65 = *(v30 + v35);
        dispatch_group_enter(v18);
        if (v65 >= 4)
        {
        }

        else
        {
          v66 = sub_25B716AF0();

          if ((v66 & 1) == 0)
          {
            v67 = sub_25B716320();
            v68 = sub_25B7168E0();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              aBlock = v70;
              *v69 = v121;
              v71 = 7827308;
              if (v65 == 2)
              {
                v71 = 6580589;
              }

              v72 = 0x6C61746F74;
              if (v65)
              {
                v72 = 1751607656;
              }

              v73 = 0xE500000000000000;
              if (v65)
              {
                v73 = 0xE400000000000000;
              }

              if (v65 <= 1)
              {
                v74 = v72;
              }

              else
              {
                v74 = v71;
              }

              if (v65 <= 1)
              {
                v75 = v73;
              }

              else
              {
                v75 = 0xE300000000000000;
              }

              v76 = sub_25B6F69F0(v74, v75, &aBlock);

              *(v69 + 4) = v76;
              _os_log_impl(&dword_25B6D4000, v67, v68, "Fetching cloud textures for level: %s", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v70);
              MEMORY[0x25F86BDB0](v70, -1, -1);
              MEMORY[0x25F86BDB0](v69, -1, -1);

              v18 = v133;
            }

            else
            {
            }

            v77 = swift_allocObject();
            v78 = v138;
            *(v77 + 16) = v137;
            *(v77 + 24) = v78;
            *(v77 + 32) = v65;
            *(v77 + 40) = v136;
            *(v77 + 48) = v34;
            *(v77 + 56) = v18;
            LOBYTE(aBlock) = v65;
            swift_retain_n();
            swift_retain_n();
            v79 = v34;
            v80 = v137;
            v81 = v18;
            v82 = v79;
            v83 = v80;
            v84 = v81;
            v85 = sub_25B7089B4(&aBlock);
            v134 = v84;
            v135 = v83;
            if (v85)
            {
              swift_beginAccess();
              sub_25B710F94(&v139, v65);
              swift_endAccess();
              v86 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v87 = qword_27FA4A008;

              if (v87 != -1)
              {
                swift_once();
              }

              v88 = qword_27FA4AD90;
              v89 = *&qword_27FA4AD98;
              LOBYTE(aBlock) = v65;
              v90 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v91 = v128;
              sub_25B71234C(&aBlock, v91, v82, v88, v65, v91, v90, v86, v89, v65, sub_25B715244, v77);

              v34 = v131;
            }

            else
            {
              v92 = v82;
              v93 = sub_25B716320();
              v94 = sub_25B7168A0();
              v95 = os_log_type_enabled(v93, v94);
              v130 = v92;
              if (v95)
              {
                v116 = v93;
                v117 = v94;
                v37 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v139 = v115;
                *v37 = v109;
                v38 = v119;
                v39 = v126;
                v118 = *v123;
                v118(v119, &v34[v127]);
                aBlock = 0x61632D632D333070;
                v141 = 0xEF2D65706F696C6CLL;
                v40 = 0x6F626D6F63;
                if (v65 == 3)
                {
                  v40 = 7827308;
                  v41 = 0xE300000000000000;
                }

                else
                {
                  v41 = 0xE500000000000000;
                }

                if (v65 == 2)
                {
                  v40 = 6580589;
                  v41 = 0xE300000000000000;
                }

                v42 = 0x6C61746F74;
                if (v65)
                {
                  v42 = 1751607656;
                }

                v43 = 0xE400000000000000;
                if (!v65)
                {
                  v43 = 0xE500000000000000;
                }

                if (v65 <= 1)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = v40;
                }

                if (v65 <= 1)
                {
                  v45 = v43;
                }

                else
                {
                  v45 = v41;
                }

                MEMORY[0x25F86AEB0](v44, v45);

                sub_25B716200();

                sub_25B716210();
                sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v46 = sub_25B716AD0();
                v48 = v47;
                (*v110)(v38, v39);
                v49 = sub_25B6F69F0(v46, v48, &v139);

                *(v37 + 4) = v49;
                *(v37 + 12) = 1024;
                v34 = v131;
                LODWORD(v49) = v131[v111];
                v50 = v130;

                *(v37 + 14) = v49;
                v51 = v116;
                _os_log_impl(&dword_25B6D4000, v116, v117, "Retrieving cloud texture from local cache: %s - Is Fetch Disabled: %{BOOL}d", v37, 0x12u);
                v52 = v115;
                __swift_destroy_boxed_opaque_existential_0(v115);
                MEMORY[0x25F86BDB0](v52, -1, -1);
                MEMORY[0x25F86BDB0](v37, -1, -1);

                v53 = v39;
                v54 = v118;
              }

              else
              {

                v54 = *v123;
                v53 = v126;
              }

              v55 = v125;
              v54(v125, &v34[v127], v53);
              aBlock = 0x61632D632D333070;
              v141 = 0xEF2D65706F696C6CLL;
              v56 = 0x6F626D6F63;
              if (v65 == 3)
              {
                v56 = 7827308;
                v57 = 0xE300000000000000;
              }

              else
              {
                v57 = 0xE500000000000000;
              }

              if (v65 == 2)
              {
                v56 = 6580589;
                v57 = 0xE300000000000000;
              }

              v58 = 0x6C61746F74;
              if (v65)
              {
                v58 = 1751607656;
              }

              v59 = 0xE400000000000000;
              if (!v65)
              {
                v59 = 0xE500000000000000;
              }

              if (v65 <= 1)
              {
                v60 = v58;
              }

              else
              {
                v60 = v56;
              }

              if (v65 <= 1)
              {
                v61 = v59;
              }

              else
              {
                v61 = v57;
              }

              MEMORY[0x25F86AEB0](v60, v61);

              sub_25B716200();

              sub_25B716210();
              (*v122)(v55, 0, 1, v53);
              v63 = v134;
              v62 = v135;
              v64 = v130;
              sub_25B706484(v55, v135, v138, v65, v136, v130, v134);
              sub_25B7019EC(v55, &unk_27FA4A4C8, &qword_25B7383E0);
            }

            v18 = v133;
            v30 = v129;
          }
        }

        ++v35;
        --v31;
      }

      while (v31);

      v11 = v107;
      v12 = v106;
    }

    v96 = swift_allocObject();
    v97 = v12;
    v98 = v131;
    v99 = v136;
    v96[2] = v131;
    v96[3] = v99;
    v96[4] = v138;
    v96[5] = sub_25B71521C;
    v96[6] = v120;
    v144 = sub_25B715258;
    v145 = v96;
    aBlock = MEMORY[0x277D85DD0];
    v141 = 1107296256;
    v142 = sub_25B7157A8;
    v143 = &block_descriptor_112;
    v100 = _Block_copy(&aBlock);

    v101 = v98;

    v102 = v18;
    v103 = v112;
    sub_25B7166E0();
    v139 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    v104 = v114;
    sub_25B7169F0();
    sub_25B7168F0();
    _Block_release(v100);

    (*(v97 + 8))(v104, v11);
    (*(v113 + 8))(v103, v108);
  }

  else
  {
    sub_25B704FCC();
    a3();

    v29 = v137;
  }
}

uint64_t _s12NanoUniverse22AegirCloudCoverServiceC03allD14LevelFileNamesSaySSGvg_0()
{
  if (qword_2810C3310 != -1)
  {
    swift_once();
  }

  v0 = qword_2810C3638;
  v1 = *(qword_2810C3638 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];

    sub_25B7104C4(0, v1, 0);
    v3 = 32;
    v2 = v16;
    do
    {
      v4 = *(v0 + v3);
      v5 = 7827308;
      if (v4 != 3)
      {
        v5 = 0x6F626D6F63;
      }

      v6 = 0xE500000000000000;
      if (v4 == 3)
      {
        v7 = 0xE300000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      if (v4 == 2)
      {
        v5 = 6580589;
        v7 = 0xE300000000000000;
      }

      v8 = 0x6C61746F74;
      if (*(v0 + v3))
      {
        v8 = 1751607656;
        v6 = 0xE400000000000000;
      }

      if (*(v0 + v3) <= 1u)
      {
        v9 = v8;
      }

      else
      {
        v9 = v5;
      }

      if (*(v0 + v3) <= 1u)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v11 = v0;
      MEMORY[0x25F86AEB0](v9, v10);

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25B7104C4((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = 0x61632D632D333070;
      *(v14 + 40) = 0xEF2D65706F696C6CLL;
      ++v3;
      --v1;
      v0 = v11;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_25B7149C8()
{
  result = qword_2810C32F0;
  if (!qword_2810C32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810C32F0);
  }

  return result;
}

uint64_t sub_25B714A68(uint64_t a1)
{
  result = sub_25B716250();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
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

uint64_t sub_25B714E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25B714EBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.RetryStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.RetryStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.CloudLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.CloudLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B7150E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B715150()
{
  v1 = *(sub_25B716250() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25B70E1CC(v2, v3, v4);
}

uint64_t sub_25B7151BC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_118Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_121Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_137Tm()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_25B715424()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_25B707600((*v1 & 1) == 0);
}

uint64_t sub_25B715474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25B7154DC()
{
  result = qword_2810C3300;
  if (!qword_2810C3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810C3300);
  }

  return result;
}

uint64_t sub_25B715538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.ServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.ServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B7156E8()
{
  result = qword_27FA4A570;
  if (!qword_27FA4A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A570);
  }

  return result;
}

void _NUNICreateImageFromURL_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: unable to open png %@ ", &v4, 0xCu);
}

void NUNILoadMtlTextureFromMemory_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "_loadMtlTextureFromMemory:%@ failed to get backing", &v2, 0xCu);
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}