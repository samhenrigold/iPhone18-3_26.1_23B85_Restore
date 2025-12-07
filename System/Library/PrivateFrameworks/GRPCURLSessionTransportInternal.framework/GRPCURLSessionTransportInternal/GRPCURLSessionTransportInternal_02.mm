uint64_t URLSessionTransport.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[21] = a6;
  v7[22] = v6;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  sub_24DD4AF64();
  v7[23] = swift_task_alloc();
  sub_24DD4AFC4();
  v7[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0);
  v7[25] = swift_task_alloc();
  v8 = sub_24DD4ADF4();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v9 = sub_24DD4ABD4();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06F0, &qword_24DD4D718);
  v7[33] = swift_task_alloc();
  v10 = sub_24DD4AD44();
  v7[34] = v10;
  v7[35] = *(v10 - 8);
  v7[36] = swift_task_alloc();
  v11 = sub_24DD4AFE4();
  v7[37] = v11;
  v7[38] = *(v11 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
  v7[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD31A14, 0, 0);
}

uint64_t sub_24DD31A14()
{
  v96 = v0;
  v1 = *(v0 + 328);
  v2 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD33608(v1);
  os_unfair_lock_unlock(v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = *(v0 + 328);
    v9 = *v8;
    v10 = v8[1];
    *(v0 + 352) = *v8;
    *(v0 + 360) = v10;
    (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 136), *(v0 + 272));
    v11 = sub_24DD4B084();
    v12 = sub_24DD4B414();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    v87 = v10;
    v88 = v9;
    if (v13)
    {
      v17 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91 = v84;
      v92 = 0;
      *v17 = 136315394;
      v93 = 0xE000000000000000;
      v94 = 0x726F70736E617274;
      v95 = 0xEA00000000005F74;
      *(v0 + 112) = v9;
      v82 = v12;
      v18 = sub_24DD4B624();
      MEMORY[0x253037C70](v18);

      MEMORY[0x253037C70](v94, v95);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 120) = v10;
      v19 = sub_24DD4B624();
      MEMORY[0x253037C70](v19);

      v20 = sub_24DD38DE0(v92, v93, &v91);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_24DD3D308(&qword_27F1B0730, MEMORY[0x277D0B888], MEMORY[0x277D0B8A0]);
      v21 = sub_24DD4B624();
      v23 = v22;
      (*(v14 + 8))(v15, v16);
      v24 = sub_24DD38DE0(v21, v23, &v91);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_24DD09000, v11, v82, "Opened stream %s for %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253038870](v84, -1, -1);
      MEMORY[0x253038870](v17, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v15, v16);
    }

    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = *(v0 + 240);
    v30 = *(v0 + 248);
    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    v34 = *(v0 + 144);
    URLSessionTransport.config(forMethod:)(*(v0 + 136), v27);
    (*(v30 + 16))(v28, v34, v29);
    CallOptions.formUnion(with:)(v27);
    sub_24DD4AB74();
    v35 = *(v32 + 48);
    v36 = v35(v33, 1, v31);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 216);
    v40 = *(v0 + 200);
    if (v36 == 1)
    {
      v41 = *(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
      v42 = type metadata accessor for URLSessionTransport.Config(0);
      (*(v39 + 16))(v37, v41 + *(v42 + 32), v38);
      if (v35(v40, 1, v38) != 1)
      {
        sub_24DD1C414(*(v0 + 200), &qword_27F1AF610, &unk_24DD4CBB0);
      }
    }

    else
    {
      (*(v39 + 32))(*(v0 + 232), *(v0 + 200), *(v0 + 208));
    }

    v43 = sub_24DD3EC44();
    if ((v43 & 1) == 0)
    {
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
      v60 = sub_24DD4B084();
      v61 = sub_24DD4B444();
      v62 = os_log_type_enabled(v60, v61);
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v65 = *(v0 + 208);
      if (v62)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v94 = v67;
        *v66 = 136315138;
        v90 = sub_24DD3EAB0();
        v69 = v68;
        v70 = *(v64 + 8);
        v70(v63, v65);
        v71 = v70;
        v72 = sub_24DD38DE0(v90, v69, &v94);

        *(v66 + 4) = v72;
        _os_log_impl(&dword_24DD09000, v60, v61, "Failing request because %s compression isn't supported", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x253038870](v67, -1, -1);
        MEMORY[0x253038870](v66, -1, -1);
      }

      else
      {

        v73 = *(v64 + 8);
        v73(v63, v65);
        v71 = v73;
      }

      v74 = *(v0 + 248);
      v83 = *(v0 + 240);
      v85 = *(v0 + 256);
      v75 = *(v0 + 232);
      v79 = *(v0 + 264);
      v80 = *(v0 + 208);
      v81 = *(v0 + 176);
      sub_24DD4AFA4();
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_24DD4B534();
      MEMORY[0x253037C70](0xD000000000000025, 0x800000024DD524E0);
      v76 = sub_24DD3EAB0();
      MEMORY[0x253037C70](v76);

      MEMORY[0x253037C70](0x736572706D6F6320, 0xED00002E6E6F6973);
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
      swift_allocError();
      sub_24DD4AFD4();
      swift_willThrow();
      sub_24DD1C414(v79, &qword_27F1B06F0, &qword_24DD4D718);
      v71(v75, v80);
      (*(v74 + 8))(v85, v83);
      sub_24DD33A10(v81, v88, v87);
      goto LABEL_24;
    }

    v45 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config);
    v46 = v45[1];
    if (v46 < *v45)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = *v45;
      *(v0 + 24) = v46;
      *(v0 + 32) = 0;
      *(v0 + 40) = sub_24DD33DF0;
      *(v0 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0700, &qword_24DD4D720);
      swift_allocObject();
      v47 = sub_24DD2D6DC(v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0708, &qword_24DD4D728);
      v48 = swift_allocObject();
      *(v0 + 368) = v48;
      *(v48 + 16) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0710, &qword_24DD4D730);
      v43 = swift_allocObject();
      *(v0 + 376) = v43;
      *(v43 + 16) = v47;
      v49 = v45[2];
      v50 = v45[3];
      if (v50 >= v49)
      {
        v51 = v43;
        v52 = *(v0 + 256);
        v53 = *(v0 + 232);
        v54 = *(v0 + 136);
        *(v0 + 56) = v49;
        *(v0 + 64) = v50;
        *(v0 + 72) = 0;
        *(v0 + 80) = sub_24DD33F68;
        *(v0 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0718, &qword_24DD4D738);
        swift_allocObject();

        v86 = *(v0 + 168);
        v89 = *(v0 + 152);
        v55 = sub_24DD2D480(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0720, &qword_24DD4D740);
        v56 = swift_allocObject();
        *(v0 + 384) = v56;
        *(v56 + 16) = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0728, &qword_24DD4D748);
        v57 = swift_allocObject();
        *(v0 + 392) = v57;
        *(v57 + 16) = v55;
        v58 = swift_task_alloc();
        *(v0 + 400) = v58;
        *(v58 + 16) = v86;
        *(v58 + 32) = v88;
        *(v58 + 40) = v87;
        *(v58 + 48) = v54;
        *(v58 + 56) = v52;
        *(v58 + 64) = v53;
        *(v58 + 72) = v57;
        *(v58 + 80) = v48;
        *(v58 + 88) = v51;
        *(v58 + 96) = v56;
        *(v58 + 104) = v89;

        v59 = swift_task_alloc();
        *(v0 + 408) = v59;
        *v59 = v0;
        v59[1] = sub_24DD331CC;
        v43 = *(v0 + 128);
        v98 = *(v0 + 168);
        v44 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200740](v43, v44);
      }
    }

    __break(1u);
    return MEMORY[0x282200740](v43, v44);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = *(v0 + 296);
    (*(v5 + 32))(v4, *(v0 + 328), v6);
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
    swift_allocError();
    (*(v5 + 16))(v7, v4, v6);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
LABEL_24:

    v77 = *(v0 + 8);

    return v77();
  }

  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  *v25 = v0;
  v25[1] = sub_24DD325E4;
  v26 = *(v0 + 176);

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0x5365756575716E65, 0xEF29286D61657274, sub_24DD3BCC4, v26, &type metadata for StreamID);
}

uint64_t sub_24DD325E4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24DD330E0;
  }

  else
  {
    v2 = sub_24DD326F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD326F8()
{
  v87 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 352) = v1;
  *(v0 + 360) = v2;
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 136), *(v0 + 272));
  v3 = sub_24DD4B084();
  v4 = sub_24DD4B414();
  v80 = v2;
  v81 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v72 = *(v0 + 272);
    v74 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v82 = v7;
    v83 = 0;
    *v6 = 136315394;
    v84 = 0xE000000000000000;
    v85 = 0x726F70736E617274;
    v86 = 0xEA00000000005F74;
    *(v0 + 112) = v1;
    v8 = sub_24DD4B624();
    MEMORY[0x253037C70](v8);

    MEMORY[0x253037C70](v85, v86);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    *(v0 + 120) = v2;
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    v10 = sub_24DD38DE0(v83, v84, &v82);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    sub_24DD3D308(&qword_27F1B0730, MEMORY[0x277D0B888], MEMORY[0x277D0B8A0]);
    v11 = sub_24DD4B624();
    v13 = v12;
    (*(v5 + 8))(v74, v72);
    v14 = sub_24DD38DE0(v11, v13, &v82);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_24DD09000, v3, v4, "Opened stream %s for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253038870](v7, -1, -1);
    MEMORY[0x253038870](v6, -1, -1);
  }

  else
  {
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 272);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 256);
  v18 = *(v0 + 264);
  v20 = *(v0 + 240);
  v21 = *(v0 + 248);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  v24 = *(v0 + 200);
  v25 = *(v0 + 144);
  URLSessionTransport.config(forMethod:)(*(v0 + 136), v18);
  (*(v21 + 16))(v19, v25, v20);
  CallOptions.formUnion(with:)(v18);
  sub_24DD4AB74();
  v26 = *(v23 + 48);
  v27 = v26(v24, 1, v22);
  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);
  v31 = *(v0 + 200);
  if (v27 == 1)
  {
    v32 = *(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
    v33 = type metadata accessor for URLSessionTransport.Config(0);
    (*(v30 + 16))(v28, v32 + *(v33 + 32), v29);
    if (v26(v31, 1, v29) != 1)
    {
      sub_24DD1C414(*(v0 + 200), &qword_27F1AF610, &unk_24DD4CBB0);
    }
  }

  else
  {
    (*(v30 + 32))(*(v0 + 232), *(v0 + 200), *(v0 + 208));
  }

  v34 = sub_24DD3EC44();
  if (v34)
  {
    v36 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config);
    v37 = v36[1];
    if (v37 < *v36)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = *v36;
      *(v0 + 24) = v37;
      *(v0 + 32) = 0;
      *(v0 + 40) = sub_24DD33DF0;
      *(v0 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0700, &qword_24DD4D720);
      swift_allocObject();
      v38 = sub_24DD2D6DC(v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0708, &qword_24DD4D728);
      v39 = swift_allocObject();
      *(v0 + 368) = v39;
      *(v39 + 16) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0710, &qword_24DD4D730);
      v34 = swift_allocObject();
      *(v0 + 376) = v34;
      *(v34 + 16) = v38;
      v40 = v36[2];
      v41 = v36[3];
      if (v41 >= v40)
      {
        v42 = v34;
        v43 = *(v0 + 256);
        v44 = *(v0 + 232);
        v45 = *(v0 + 136);
        *(v0 + 56) = v40;
        *(v0 + 64) = v41;
        *(v0 + 72) = 0;
        *(v0 + 80) = sub_24DD33F68;
        *(v0 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0718, &qword_24DD4D738);
        swift_allocObject();

        v76 = *(v0 + 168);
        v79 = *(v0 + 152);
        v46 = sub_24DD2D480(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0720, &qword_24DD4D740);
        v47 = swift_allocObject();
        *(v0 + 384) = v47;
        *(v47 + 16) = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0728, &qword_24DD4D748);
        v48 = swift_allocObject();
        *(v0 + 392) = v48;
        *(v48 + 16) = v46;
        v49 = swift_task_alloc();
        *(v0 + 400) = v49;
        *(v49 + 16) = v76;
        *(v49 + 32) = v81;
        *(v49 + 40) = v80;
        *(v49 + 48) = v45;
        *(v49 + 56) = v43;
        *(v49 + 64) = v44;
        *(v49 + 72) = v48;
        *(v49 + 80) = v39;
        *(v49 + 88) = v42;
        *(v49 + 96) = v47;
        *(v49 + 104) = v79;

        v50 = swift_task_alloc();
        *(v0 + 408) = v50;
        *v50 = v0;
        v50[1] = sub_24DD331CC;
        v34 = *(v0 + 128);
        v89 = *(v0 + 168);
        v35 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200740](v34, v35);
      }
    }

    __break(1u);
    return MEMORY[0x282200740](v34, v35);
  }

  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  v51 = sub_24DD4B084();
  v52 = sub_24DD4B444();
  v53 = os_log_type_enabled(v51, v52);
  v55 = *(v0 + 216);
  v54 = *(v0 + 224);
  v56 = *(v0 + 208);
  if (v53)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v85 = v58;
    *v57 = 136315138;
    v77 = sub_24DD3EAB0();
    v60 = v59;
    v61 = *(v55 + 8);
    v61(v54, v56);
    v62 = v61;
    v63 = sub_24DD38DE0(v77, v60, &v85);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_24DD09000, v51, v52, "Failing request because %s compression isn't supported", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x253038870](v58, -1, -1);
    MEMORY[0x253038870](v57, -1, -1);
  }

  else
  {

    v64 = *(v55 + 8);
    v64(v54, v56);
    v62 = v64;
  }

  v65 = *(v0 + 248);
  v75 = *(v0 + 240);
  v78 = *(v0 + 256);
  v66 = *(v0 + 232);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v73 = *(v0 + 176);
  sub_24DD4AFA4();
  v85 = 0;
  v86 = 0xE000000000000000;
  sub_24DD4B534();
  MEMORY[0x253037C70](0xD000000000000025, 0x800000024DD524E0);
  v67 = sub_24DD3EAB0();
  MEMORY[0x253037C70](v67);

  MEMORY[0x253037C70](0x736572706D6F6320, 0xED00002E6E6F6973);
  MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
  sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
  swift_allocError();
  sub_24DD4AFD4();
  swift_willThrow();
  sub_24DD1C414(v70, &qword_27F1B06F0, &qword_24DD4D718);
  v62(v66, v71);
  (*(v65 + 8))(v78, v75);
  sub_24DD33A10(v73, v81, v80);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_24DD330E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD331CC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24DD33484;
  }

  else
  {
    v2 = sub_24DD33300;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD33300()
{
  v11 = v0[44];
  v12 = v0[45];
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v9 = v0[22];
  v10 = v0[30];

  sub_24DD1C414(v2, &qword_27F1B06F0, &qword_24DD4D718);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v10);
  sub_24DD33A10(v9, v11, v12);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24DD33484()
{
  v11 = v0[44];
  v12 = v0[45];
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v10 = v0[32];

  sub_24DD1C414(v1, &qword_27F1B06F0, &qword_24DD4D718);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v10, v3);
  sub_24DD33A10(v9, v11, v12);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24DD33608@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24DD4AF64();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24DD4AFC4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v11, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v11, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();
      type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    sub_24DD4AF84();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v17 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
      }

      v17 = *(v6 + 20);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v18 - 8) + 8))(&v11[v17], v18);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_24DD3CBF8(v11, v8, sub_24DD3C18C);
      v15 = v8[1];
      v14 = v8[2];
      v8[2] = v14 + 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v8;
      sub_24DD3A018(0, v15, v14, isUniquelyReferenced_nonNull_native);
      *v8 = v20;
      sub_24DD3CBF8(v8, v2, sub_24DD3C18C);
      swift_storeEnumTagMultiPayload();
      *a1 = v15;
      a1[1] = v14;
    }

    else
    {
      *v2 = *v11;
      swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24DD33A10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for URLSessionTransport.State.CloseStreamAction(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24DD4B084();
  v14 = sub_24DD4B414();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a1;
    v18 = v17;
    v34 = v17;
    v35 = 0;
    *v16 = 136315138;
    v36 = 0xE000000000000000;
    v32 = 0x726F70736E617274;
    v33 = 0xEA00000000005F74;
    v31 = v30;
    v19 = sub_24DD4B624();
    v29 = v9;
    v20 = a3;
    MEMORY[0x253037C70](v19);

    MEMORY[0x253037C70](v32, v33);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v32 = a3;
    v21 = sub_24DD4B624();
    MEMORY[0x253037C70](v21);

    v22 = sub_24DD38DE0(v35, v36, &v34);

    *(v16 + 4) = v22;
    a3 = v20;
    v9 = v29;
    _os_log_impl(&dword_24DD09000, v13, v14, "Closing stream %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    a1 = v28;
    MEMORY[0x253038870](v23, -1, -1);
    v24 = v16;
    a2 = v30;
    MEMORY[0x253038870](v24, -1, -1);
  }

  v25 = (a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v35 = a2;
  v36 = a3;
  sub_24DD37C24(&v35, v12);
  os_unfair_lock_unlock(v25);
  result = (*(v7 + 48))(v12, 1, v6);
  if (result != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24DD4B314();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t CallOptions.union(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24DD4ABD4();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  return CallOptions.formUnion(with:)(a1);
}

uint64_t sub_24DD33DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  sub_24DD1C3AC(a1, &v11 - v3, &unk_27F1B0B60, &qword_24DD4CB20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(*v4 + 16);

      return v6;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
    v9 = sub_24DD4AF64();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
    v10 = sub_24DD4AF24();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  else
  {
    sub_24DD1C414(v4, &unk_27F1B0B60, &qword_24DD4CB20);
  }

  return 0;
}

uint64_t sub_24DD33F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  sub_24DD1C3AC(a1, &v7 - v3, &qword_27F1B0810, &qword_24DD4D9B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(*v4 + 16);
  }

  else
  {
    sub_24DD1C414(v4, &qword_27F1B0810, &qword_24DD4D9B0);
    return 0;
  }

  return v5;
}

uint64_t sub_24DD34050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v21;
  *(v8 + 136) = v22;
  *(v8 + 96) = v19;
  *(v8 + 112) = v20;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_24DD4AC94();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E8, &qword_24DD4D970);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07F0, &qword_24DD4D978);
  *(v8 + 192) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07F8, &unk_24DD4D980);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_24DD4ADF4();
  *(v8 + 224) = v11;
  v12 = *(v11 - 8);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 + 64);
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_24DD4ABD4();
  *(v8 + 256) = v13;
  v14 = *(v13 - 8);
  *(v8 + 264) = v14;
  *(v8 + 272) = *(v14 + 64);
  *(v8 + 280) = swift_task_alloc();
  v15 = sub_24DD4AD44();
  *(v8 + 288) = v15;
  v16 = *(v15 - 8);
  *(v8 + 296) = v16;
  *(v8 + 304) = *(v16 + 64);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD34374, 0, 0);
}

uint64_t sub_24DD34374()
{
  v1 = v0[39];
  v2 = v0[40];
  v41 = v1;
  v3 = v0[37];
  v30 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v44 = v5;
  v6 = v0[33];
  v32 = v0[34];
  v7 = v0[32];
  v27 = v7;
  v28 = v4;
  v43 = v0[31];
  v8 = v0[29];
  v33 = v0[30];
  v42 = v0[28];
  v40 = v0[16];
  v39 = v0[15];
  v38 = v0[14];
  v35 = v0[12];
  v36 = v0[13];
  v26 = v0[11];
  v9 = v0[9];
  v25 = v0[10];
  v45 = v9;
  v34 = v0[8];
  v31 = v0[7];
  v29 = v0[6];
  v10 = sub_24DD4B384();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v37 = *(v3 + 16);
  v37(v1, v9, v5);
  (*(v6 + 16))(v4, v25, v7);
  (*(v8 + 16))(v43, v26, v42);
  v11 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12 = (v30 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = (v32 + *(v8 + 80) + v12) & ~*(v8 + 80);
  v14 = (v33 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v29;
  *(v15 + 5) = v31;
  *(v15 + 6) = v34;
  (*(v3 + 32))(&v15[v11], v41, v44);
  (*(v6 + 32))(&v15[v12], v28, v27);
  (*(v8 + 32))(&v15[v13], v43, v42);
  *&v15[v14] = v35;
  *&v15[(v14 + 15) & 0xFFFFFFFFFFFFFFF8] = v36;

  sub_24DD368E4(v2, &unk_24DD4D998, v15);
  sub_24DD1C414(v2, &qword_27F1AF530, &qword_24DD4CA90);
  v37(v41, v45, v44);
  v0[2] = v38;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0800, &qword_24DD4D9A8);
  v19 = sub_24DD3D0A8(&qword_27F1B0808, &qword_27F1B0800, &qword_24DD4D9A8, &protocol conformance descriptor for BufferedStream<A>);
  MEMORY[0x2530377F0](v0 + 2, v16, v17, v18, v19);
  v0[3] = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0818, &qword_24DD4D9B8);
  sub_24DD3D0A8(&qword_27F1B0820, &qword_27F1B0818, &qword_24DD4D9B8, &protocol conformance descriptor for BufferedStream<A>.Source);
  sub_24DD4B014();
  sub_24DD3D0A8(&qword_27F1B0828, &qword_27F1B07F0, &qword_24DD4D978, MEMORY[0x277D0B8A8]);
  sub_24DD3D0A8(&qword_27F1B0830, &qword_27F1B07E8, &qword_24DD4D970, MEMORY[0x277D0B958]);
  sub_24DD4B004();
  v37(v41, v45, v44);
  sub_24DD4AC84();
  v46 = (v40 + *v40);
  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_24DD34924;
  v21 = v0[27];
  v22 = v0[20];
  v23 = v0[4];

  return v46(v23, v21, v22);
}

uint64_t sub_24DD34924()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24DD34B44;
  }

  else
  {
    v2 = sub_24DD34A38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD34A38()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD34B44()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD34C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a5;
  *(v8 + 32) = v15;
  *(v8 + 24) = a6;
  *(v8 + 40) = v16;
  v11 = swift_task_alloc();
  *(v8 + 48) = v11;
  *v11 = v8;
  v11[1] = sub_24DD34D44;

  return sub_24DD34E3C((v8 + 16), a7, a8, v14, (v8 + 32), (v8 + 40));
}

uint64_t sub_24DD34D44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DD34E3C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 56) = a2;
  v11 = sub_24DD4AF44();
  *(v7 + 80) = v11;
  *(v7 + 88) = *(v11 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0838, &qword_24DD4D9C8);
  *(v7 + 112) = swift_task_alloc();
  v12 = sub_24DD4ADF4();
  *(v7 + 120) = v12;
  *(v7 + 128) = *(v12 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0);
  *(v7 + 160) = swift_task_alloc();
  v13 = sub_24DD4AE44();
  *(v7 + 168) = v13;
  *(v7 + 176) = *(v13 - 8);
  *(v7 + 184) = swift_task_alloc();
  v14 = sub_24DD4AE34();
  *(v7 + 192) = v14;
  *(v7 + 200) = *(v14 - 8);
  *(v7 + 208) = swift_task_alloc();
  v15 = sub_24DD4AAC4();
  *(v7 + 216) = v15;
  *(v7 + 224) = *(v15 - 8);
  *(v7 + 232) = swift_task_alloc();
  v16 = sub_24DD4AF64();
  *(v7 + 240) = v16;
  *(v7 + 248) = *(v16 - 8);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  sub_24DD4AFC4();
  *(v7 + 272) = swift_task_alloc();
  v17 = sub_24DD4AFE4();
  *(v7 + 280) = v17;
  *(v7 + 288) = *(v17 - 8);
  *(v7 + 296) = swift_task_alloc();
  v18 = sub_24DD4AA94();
  *(v7 + 304) = v18;
  *(v7 + 312) = *(v18 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = *a1;
  v19 = *a6;
  *(v7 + 368) = *a5;
  *(v7 + 376) = v19;

  return MEMORY[0x2822009F8](sub_24DD352C0, 0, 0);
}

uint64_t sub_24DD352C0(uint64_t a1)
{
  result = sub_24DD3EC44();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v1[46] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0840, &qword_24DD4D9D8);
  v4 = swift_allocObject();
  v1[48] = v4;
  *(v4 + 16) = v3;
  v5 = *(v3 + 16);
  v6 = (*(*v5 + 48) + 7) & 0x1FFFFFFF8;
  swift_retain_n();

  result = pthread_mutex_lock((v5 + v6));
  if (result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24DD2D938();
  v7 = pthread_mutex_unlock((v5 + v6));

  if (v7)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1[6] = v4;
  v1[49] = *(v4 + 16);

  v8 = swift_task_alloc();
  v1[50] = v8;
  *v8 = v1;
  v8[1] = sub_24DD35480;
  v9 = v1[42];

  return sub_24DD3F3D8(v9);
}

uint64_t sub_24DD35480()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_24DD36490;
  }

  else
  {

    v2 = sub_24DD3559C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD3559C()
{
  v115 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];

  sub_24DD1C474(v1, v2, &qword_27F1B0A90, &qword_24DD4D9D0);
  sub_24DD1C3AC(v2, v3, &qword_27F1B0A90, &qword_24DD4D9D0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    v5 = v0[43];
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[35];
    sub_24DD4AF94();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
    v9 = swift_allocError();
    (*(v7 + 16))(v10, v6, v8);
LABEL_5:

    sub_24DD2CFEC(v9);

    (*(v7 + 8))(v6, v8);
    sub_24DD1C414(v5, &qword_27F1B0A90, &qword_24DD4D9D0);

    v13 = v0[1];

    return v13();
  }

  v11 = v0[41];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v0[43];
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[35];
    sub_24DD1C414(v11, &qword_27F1B0810, &qword_24DD4D9B0);
    sub_24DD4AF94();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
    v9 = swift_allocError();
    (*(v7 + 16))(v12, v6, v8);
    goto LABEL_5;
  }

  v15 = v0[9];
  (*(v0[31] + 32))(v0[32], v11, v0[30]);
  v16 = v15 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
  v17 = *(v16 + *(type metadata accessor for URLSessionTransport.Config(0) + 40));
  MEMORY[0x2530377A0]();
  sub_24DD4AAB4();

  v18 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v19 = sub_24DD4AAA4();
  v20 = [v18 initWithURL:v19 cachePolicy:1 timeoutInterval:1.79769313e308];

  v21 = sub_24DD4B164();
  [v20 setHTTPMethod_];

  v22 = sub_24DD4B164();
  v23 = sub_24DD4B164();
  [v20 addValue:v22 forHTTPHeaderField:v23];

  v24 = sub_24DD4B164();
  v25 = sub_24DD4B164();
  [v20 addValue:v24 forHTTPHeaderField:v25];

  v109 = v20;
  [v20 setAssumesHTTP3Capable_];
  if (sub_24DD3EC44())
  {
    sub_24DD3EAB0();
    v26 = sub_24DD4B164();

    v27 = sub_24DD4B164();
    [v20 addValue:v26 forHTTPHeaderField:v27];
  }

  v108 = v0 + 2;
  v107 = v0 + 6;
  v28 = v0[22];
  v29 = v0[23];
  v31 = v0[20];
  v30 = v0[21];
  v32 = v0[16];
  v113 = v0;
  v33 = v0[15];
  sub_24DD4AE54();
  sub_24DD4AE14();
  (*(v28 + 8))(v29, v30);
  sub_24DD4AE24();
  v34 = *(v32 + 48);
  v35 = v33;
  v36 = v0;
  if (v34(v31, 1, v35) != 1)
  {
    v74 = v0[16];
    v77 = *(v74 + 32);
    v75 = v74 + 32;
    v76 = v77;
    v78 = (v75 - 24);
    do
    {
      v84 = v36[19];
      v83 = v36[20];
      v85 = v36[18];
      v86 = v113[15];
      v76(v84, v83, v86);
      sub_24DD4ADD4();
      sub_24DD3D308(&qword_27F1AF618, MEMORY[0x277D0B8B0], MEMORY[0x277D0B8B8]);
      LOBYTE(v84) = sub_24DD4B154();
      v87 = *v78;
      v88 = v86;
      v36 = v113;
      (*v78)(v85, v88);
      if ((v84 & 1) == 0)
      {
        v89 = v113[18];
        v90 = v113[15];
        (*(v75 - 16))(v113[17], v113[19], v90);
        sub_24DD4ADE4();
        v91 = sub_24DD4B154();
        v87(v89, v90);
        if (v91 & 1) != 0 || (v92 = v113[18], v93 = v113[15], sub_24DD4ADC4(), v94 = sub_24DD4B154(), v87(v92, v93), (v94))
        {
          v87(v113[17], v113[15]);
          v36 = v113;
LABEL_26:
          v95 = v36[18];
          v96 = v36[15];
          sub_24DD4ADC4();
          v97 = sub_24DD4ADB4();
          v87(v95, v96);
          if ((v97 & 1) == 0)
          {
            v98 = v36[18];
            v99 = v36[15];
            sub_24DD4ADE4();
            v100 = sub_24DD4ADB4();
            v87(v98, v99);
            if ((v100 & 1) == 0)
            {
              v105 = v36[18];
              v106 = v36[15];
              sub_24DD4ADD4();
              sub_24DD4ADB4();
              v87(v105, v106);
            }
          }

          v79 = sub_24DD4B164();

          v80 = sub_24DD4B164();
          [v20 addValue:v79 forHTTPHeaderField:v80];

          goto LABEL_21;
        }

        v102 = v113[17];
        v101 = v113[18];
        v103 = v113[15];
        sub_24DD4ADD4();
        v104 = sub_24DD4B154();
        v87(v101, v103);
        v87(v102, v103);
        v36 = v113;
        if (v104)
        {
          goto LABEL_26;
        }
      }

LABEL_21:
      v81 = v36[20];
      v82 = v36[15];
      v87(v36[19], v82);
      sub_24DD4AE24();
    }

    while (v34(v81, 1, v82) != 1);
  }

  v38 = v36[31];
  v37 = v36[32];
  v39 = v36[30];
  v40 = v36[14];
  v41 = v36[11];
  (*(v36[25] + 8))(v36[26], v36[24]);
  (*(v38 + 16))(v40, v37, v39);
  sub_24DD3D308(&qword_27F1B0848, MEMORY[0x277D0B918], MEMORY[0x277D0B920]);
  sub_24DD4B3B4();
  while (1)
  {
    v42 = v36[12];
    v43 = v36;
    v44 = v36[10];
    sub_24DD4B3C4();
    sub_24DD3D308(&qword_27F1B0850, MEMORY[0x277D0B908], MEMORY[0x277D0B910]);
    v45 = sub_24DD4B154();
    (*(v41 + 8))(v42, v44);
    if (v45)
    {
      break;
    }

    v46 = sub_24DD4B404();
    v49 = *(v47 + 16);
    v48 = *(v47 + 24);
    v50 = *(v47 + 32);

    sub_24DD3D0F0(v49, v48, v50);
    v46(v108, 0);
    sub_24DD4B3D4();
    sub_24DD4AF54();
    sub_24DD3D0FC(v49, v48, v50);
    v51 = sub_24DD4B164();

    v52 = sub_24DD4B164();

    [v109 addValue:v51 forHTTPHeaderField:v52];

    v36 = v113;
  }

  v111 = v43[44];
  v112 = v43[45];
  v53 = v43[31];
  v110 = v43[32];
  v54 = v43[29];
  v55 = v43[30];
  v56 = v43[27];
  v57 = v43[28];
  v58 = v43[9];
  sub_24DD1C414(v43[14], &qword_27F1B0838, &qword_24DD4D9C8);
  v59 = v109;
  v60 = [v59 _CFURLRequest];
  _CFURLRequestSetAllowedProtocolTypes();
  sub_24DD4AA84();

  (*(v57 + 8))(v54, v56);
  (*(v53 + 8))(v110, v55);
  v61 = *(v58 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_session);
  v62 = sub_24DD4AA74();
  v63 = [v61 uploadTaskWithStreamedRequest_];
  v43[52] = v63;

  v64 = (v58 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((v58 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v114[0] = v111;
  v114[1] = v112;
  v65 = sub_24DD36B68(v63, v114);
  os_unfair_lock_unlock(v64);
  if (v65)
  {
    [v65 cancel];
  }

  v66 = v43[47];
  v68 = v43[44];
  v67 = v43[45];
  v69 = v43[7];
  v70 = swift_task_alloc();
  v43[53] = v70;
  v71 = *(v43 + 4);
  *(v70 + 16) = v66;
  *(v70 + 24) = v71;
  *(v70 + 40) = v107;
  *(v70 + 48) = v69;
  *(v70 + 56) = v68;
  *(v70 + 64) = v67;
  *(v70 + 72) = v63;
  v72 = swift_task_alloc();
  v43[54] = v72;
  *(v72 + 16) = v63;
  v73 = swift_task_alloc();
  v43[55] = v73;
  *v73 = v43;
  v73[1] = sub_24DD36614;

  return MEMORY[0x282200830](v73, &unk_24DD4D9E8);
}

uint64_t sub_24DD36490()
{
  v1 = *(v0 + 408);

  sub_24DD2CFEC(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24DD36614()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24DD36758, 0, 0);
  }
}

uint64_t sub_24DD36758()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);

  (*(v3 + 8))(v2, v4);
  sub_24DD1C414(v1, &qword_27F1B0A90, &qword_24DD4D9D0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24DD368E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_24DD1C3AC(a1, v18 - v8, &qword_27F1AF530, &qword_24DD4CA90);
  v10 = sub_24DD4B384();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24DD1C414(v9, &qword_27F1AF530, &qword_24DD4CA90);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_24DD4B2F4();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DD4B374();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t BufferedStream.Source.finish(throwing:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_24DD36AFC, 0, 0);
}

uint64_t sub_24DD36AFC()
{
  BufferedStream.Source.finish(throwing:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_24DD36B68(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a2[1];
  sub_24DD3CBF8(v3, v11, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      swift_storeEnumTagMultiPayload();
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_7;
        }

        v20 = a1;

        v21 = *(sub_24DD3C1AC(0) + 20);
      }

      else
      {
        if (!v18)
        {
          v19 = a1;

          return a1;
        }

        v23 = a1;

        v21 = *(v6 + 20);
      }

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v24 - 8) + 8))(&v11[v21], v24);
      return a1;
    }

    sub_24DD3CBF8(v11, v3, sub_24DD3C1AC);
LABEL_6:
    swift_storeEnumTagMultiPayload();
LABEL_7:
    v15 = a1;
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *v3 = *v11;
    goto LABEL_6;
  }

  sub_24DD3CBF8(v11, v8, sub_24DD3C18C);
  v17 = sub_24DD382AC(v26, v12, v13);
  if (!*v16)
  {
    *v16 = a1;
    v22 = a1;
  }

  (v17)(v26, 0);
  sub_24DD3CBF8(v8, v3, sub_24DD3C18C);
  swift_storeEnumTagMultiPayload();
  return 0;
}

uint64_t sub_24DD36E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v14;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v9 = sub_24DD4B0A4();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_24DD4AC74();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_24DD4ADF4();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD36FD4, 0, 0);
}

uint64_t sub_24DD36FD4()
{
  if (sub_24DD4B394())
  {
    sub_24DD4B334();
    sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v1 = swift_allocError();
    sub_24DD4B104();

    sub_24DD2CFEC(v1);
  }

  else
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    (*(v4 + 16))(*(v0 + 168), *(v0 + 40), v3);
    sub_24DD4ADE4();
    sub_24DD3D308(&qword_27F1AF618, MEMORY[0x277D0B8B0], MEMORY[0x277D0B8B8]);
    v5 = sub_24DD4B154();
    v6 = *(v4 + 8);
    v6(v2, v3);
    v7 = *(v0 + 168);
    if (v5)
    {
      v6(*(v0 + 168), *(v0 + 144));
      v8 = 1;
    }

    else
    {
      v9 = *(v0 + 160);
      v10 = *(v0 + 144);
      sub_24DD4ADC4();
      v11 = sub_24DD4B154();
      v6(v9, v10);
      v6(v7, v10);
      v8 = 2;
      if (v11)
      {
        v8 = 0;
      }
    }

    v41 = v8;
    v12 = *(v0 + 48);
    v40 = *(v12 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config + 24);
    v13 = **(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0858, &qword_24DD4D9F0);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 16) = v13;
    v15 = *(v12 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);
    v16 = *(v15 + 16);

    if (v16 && (v17 = sub_24DD39324(*(v0 + 64)), (v18 & 1) != 0))
    {
      v19 = *(v0 + 128);
      v20 = *(v0 + 136);
      v21 = *(v0 + 120);
      (*(v19 + 16))(v20, *(v15 + 56) + *(v19 + 72) * v17, v21);
      v39 = sub_24DD4AC04();
      v37 = v22;
      (*(v19 + 8))(v20, v21);
    }

    else
    {
      v39 = 0;
      v37 = 1;
    }

    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v38 = *(v0 + 88);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v36 = *(v0 + 96);
    v27 = *(v0 + 32);
    v28 = type metadata accessor for StreamingURLSessionDelegate(0);
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = v27;
    v30 = &v29[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
    *v30 = 0;
    v30[4] = 0;
    v31 = &v29[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
    *v31 = v26;
    *(v31 + 1) = v25;

    sub_24DD4B094();
    (*(v23 + 32))(&v29[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v24, v36);
    v32 = &v29[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
    *v32 = 0;
    *(v32 + 1) = v14 & 0xFFFFFFFFFFFFFF8;
    *(v32 + 2) = v40;
    *(v32 + 3) = v41;
    *(v32 + 4) = v39;
    v32[40] = v37 & 1;
    v32[47] = 0;
    *(v32 + 45) = 0;
    *(v32 + 41) = 0;
    *(v32 + 6) = v26;
    *(v32 + 7) = v25;
    *(v32 + 9) = 0;
    *(v32 + 44) = 0;
    *(v0 + 16) = v29;
    *(v0 + 24) = v28;

    v33 = objc_msgSendSuper2((v0 + 16), sel_init);

    [v38 setDelegate_];
    [v38 resume];
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t URLSessionTransport.deinit()
{
  v1 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v2 = sub_24DD4ACF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v4 = sub_24DD4AAC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD3BCCC(v5 + *(v6 + 28), type metadata accessor for URLSessionTransport.State);
  sub_24DD3BCCC(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v7 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger;
  v8 = sub_24DD4B0A4();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t URLSessionTransport.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v2 = sub_24DD4ACF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v4 = sub_24DD4AAC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD3BCCC(v5 + *(v6 + 28), type metadata accessor for URLSessionTransport.State);
  sub_24DD3BCCC(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v7 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger;
  v8 = sub_24DD4B0A4();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_24DD377AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DD0D4B0;

  return URLSessionTransport.connect()();
}

uint64_t sub_24DD37860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24DD0C914;

  return URLSessionTransport.withStream<A>(descriptor:options:_:)(a1, a2, a3, a4, a5, a6);
}

void sub_24DD37960()
{
  v21 = MEMORY[0x277D84F90];
  v1 = *v0;
  sub_24DD2CF50(*(*v0 + 16));
  swift_bridgeObjectRetain_n();
  v2 = sub_24DD4B504();
  v3 = *(v1 + 36);
  v4 = *(v1 + 32);

  v18 = v2;
  v20 = 1 << v4;
  if (v2 == 1 << v4)
  {
LABEL_2:

    sub_24DD1BFDC(v18, v3, 0);
    sub_24DD1BFDC(v20, v3, 0);
    sub_24DD1BFDC(v20, v3, 0);
  }

  else
  {
    v5 = v2;
    while ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 1 << *(v1 + 32);
      if (v5 >= v6)
      {
        break;
      }

      v7 = v5 >> 6;
      v8 = *(v1 + 64 + 8 * (v5 >> 6));
      if ((v8 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_27;
      }

      v9 = v8 & (-2 << (v5 & 0x3F));
      if (v9)
      {
        v6 = __clz(__rbit64(v9)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = v7 << 6;
        v11 = v7 + 1;
        v12 = (v1 + 72 + 8 * v7);
        while (v11 < (v6 + 63) >> 6)
        {
          v14 = *v12++;
          v13 = v14;
          v10 += 64;
          ++v11;
          if (v14)
          {
            v6 = __clz(__rbit64(v13)) + v10;
            break;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD3A4D4();
      }

      if (v5 >= 1 << *(v1 + 32))
      {
        goto LABEL_28;
      }

      if ((*(v1 + 8 * v7 + 64) & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_30;
      }

      v15 = *(v1 + 56);
      v16 = *(v15 + 8 * v5);
      if (v16 < 2)
      {
        *(v15 + 8 * v5) = 1;
        sub_24DD1BFDC(v5, v3, 0);
        *v19 = v1;
      }

      else
      {
        *(v15 + 8 * v5) = 1;
        *v19 = v1;
        v17 = v16;
        MEMORY[0x253037D10]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24DD4B294();
        }

        sub_24DD4B2C4();
        sub_24DD1BFDC(v5, v3, 0);
        sub_24DD3CC60(v16);
      }

      v5 = v6;
      if (v6 == v20)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_24DD37C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24DD3C1AC(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  sub_24DD3CBF8(v3, v14, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_24DD3CBF8(v14, v11, sub_24DD3C18C);
      v26 = v16;
      v27 = v15;
      sub_24DD38050(&v26);
      sub_24DD3CBF8(v11, v3, sub_24DD3C18C);
    }

    else
    {
      *v3 = *v14;
    }

LABEL_8:
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD3CBF8(v14, v8, sub_24DD3C1AC);
    v26 = v16;
    v27 = v15;
    sub_24DD38050(&v26);
    if (!*(*v8 + 16))
    {
      swift_storeEnumTagMultiPayload();
      v23 = *(v6 + 20);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v25 = *(v24 - 8);
      (*(v25 + 16))(a2, &v8[v23], v24);
      (*(v25 + 56))(a2, 0, 1, v24);

      return (*(v25 + 8))(&v8[v23], v24);
    }

    sub_24DD3CBF8(v8, v3, sub_24DD3C1AC);
    goto LABEL_8;
  }

  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v21 = *(v20 - 8);
  (*(v21 + 56))(a2, 1, 1, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
    }

    v22 = *(v9 + 20);
    return (*(v21 + 8))(&v14[v22], v20);
  }

  if (result == 2)
  {

    v22 = *(v6 + 20);
    return (*(v21 + 8))(&v14[v22], v20);
  }

  return result;
}

uint64_t sub_24DD38050(uint64_t *a1)
{
  v2 = v1;
  result = sub_24DD393BC(*a1, a1[1]);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DD3A4D4();
      v7 = v8;
    }

    sub_24DD3CC60(*(*(v7 + 56) + 8 * v5));
    result = sub_24DD39E74(v5, v7);
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24DD380D8()
{
  v1 = *v0;
  sub_24DD4B6E4();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x253038190](1);
      sub_24DD4B4A4();
      return sub_24DD4B724();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x253038190](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD3814C(uint64_t a1)
{
  if (!*v1)
  {
    v2 = 0;
    return MEMORY[0x253038190](v2);
  }

  if (*v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x253038190](v2);
  }

  MEMORY[0x253038190](1);
  return sub_24DD4B4A4();
}

uint64_t sub_24DD381B4(uint64_t a1)
{
  v2 = *v1;
  sub_24DD4B6E4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x253038190](1);
      sub_24DD4B4A4();
      return sub_24DD4B724();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x253038190](v3);
  return sub_24DD4B724();
}

BOOL sub_24DD38224(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_24DD3DA04(0, &qword_27F1B0970, 0x277D82BB8);
  return sub_24DD4B494() & 1;
}

uint64_t (*sub_24DD382AC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24DD3A634(v6, a2, a3);
  return sub_24DD38334;
}

void sub_24DD38334(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t BufferedStream.Source.finish()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_24DD383A4, 0, 0);
}

uint64_t sub_24DD383A4()
{
  BufferedStream.Source.finish(throwing:)(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD38410(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DD0D4B0;

  return BufferedStream.Source.finish()(a1);
}

uint64_t sub_24DD384A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0C914;

  return BufferedStream.Source.finish(throwing:)(a1, a2);
}

uint64_t sub_24DD38548(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0D4B0;

  return BufferedStream.Source.write(_:)(a1, a2);
}

uint64_t sub_24DD385F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DD0D4B0;

  return BufferedStream.Source.write<A>(contentsOf:)(a1, a4, a2, a3);
}

uint64_t CallOptions.formUnion(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0750, qword_24DD4D770);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06F0, &qword_24DD4D718);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40[-v9];
  v11 = sub_24DD4AC74();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24DD1C3AC(a1, v10, &qword_27F1B06F0, &qword_24DD4D718);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_24DD1C414(v10, &qword_27F1B06F0, &qword_24DD4D718);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = sub_24DD4AC64();
  v18 = v17;
  v20 = v19;
  v22 = sub_24DD4ABC4();
  if (*(v21 + 16) == 1)
  {
    *v21 = v16;
    *(v21 + 8) = v18;
    *(v21 + 16) = v20 & 1;
  }

  v22(v40, 0);
  v23 = sub_24DD4ABE4();
  v25 = sub_24DD4AB84();
  if (*v24 == 2)
  {
    *v24 = v23;
  }

  v25(v40, 0);
  v26 = sub_24DD4AC04();
  v28 = v27;
  v30 = sub_24DD4ABA4();
  if (*(v29 + 8) == 1)
  {
    *v29 = v26;
    *(v29 + 8) = v28 & 1;
  }

  v30(v40, 0);
  v31 = sub_24DD4AC14();
  v33 = v32;
  v35 = sub_24DD4ABB4();
  if (*(v34 + 8) == 1)
  {
    *v34 = v31;
    *(v34 + 8) = v33 & 1;
  }

  v35(v40, 0);
  sub_24DD4ABF4();
  v36 = sub_24DD4AB94();
  v38 = v37;
  sub_24DD1C3AC(v37, v5, &qword_27F1B0750, qword_24DD4D770);
  v39 = sub_24DD4AD84();
  if ((*(*(v39 - 8) + 48))(v5, 1, v39) == 1)
  {
    sub_24DD1C414(v38, &qword_27F1B0750, qword_24DD4D770);
    sub_24DD1C474(v7, v38, &qword_27F1B0750, qword_24DD4D770);
  }

  else
  {
    sub_24DD1C414(v7, &qword_27F1B0750, qword_24DD4D770);
    sub_24DD1C414(v5, &qword_27F1B0750, qword_24DD4D770);
  }

  v36(v40, 0);
  return (*(v12 + 8))(v14, v11);
}

uint64_t static ClientTransport<>.urlSession(baseURL:serviceConfig:session:config:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for URLSessionTransport.Config(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24DD4ACF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24DD4AAC4();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1);
  (*(v12 + 16))(v14, a2, v11);
  sub_24DD3BD4C(a4, v10, type metadata accessor for URLSessionTransport.Config);
  swift_allocObject();
  v19 = a3;
  v20 = sub_24DD3AE34(v17, v19, v14, v10);

  return v20;
}

uint64_t sub_24DD38D10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24DD38D84(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24DD38DE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24DD38DE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24DD38EAC(v11, 0, 0, 1, a1, a2);
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
    sub_24DD1BEFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24DD38EAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24DD38FB8(a5, a6);
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
    result = sub_24DD4B584();
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

void *sub_24DD38FB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_24DD39004(a1, a2);
  sub_24DD0D780(&unk_2860F4540);
  return v3;
}

void *sub_24DD39004(uint64_t a1, unint64_t a2)
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

  v6 = sub_24DD39134(v5, 0);
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

  result = sub_24DD4B584();
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
        v10 = sub_24DD4B1E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24DD39134(v10, 0);
        result = sub_24DD4B524();
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

void *sub_24DD39134(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24DD391A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
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

_BYTE **sub_24DD3929C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_24DD392AC(uint64_t a1, uint64_t a2)
{
  sub_24DD4B6E4();
  sub_24DD4B1C4();
  v4 = sub_24DD4B724();

  return sub_24DD3943C(a1, a2, v4);
}

unint64_t sub_24DD39324(uint64_t a1)
{
  sub_24DD4AD44();
  sub_24DD3D308(&qword_27F1B08B8, MEMORY[0x277D0B888], MEMORY[0x277D0B890]);
  v2 = sub_24DD4B124();

  return sub_24DD394F4(a1, v2);
}

unint64_t sub_24DD393BC(uint64_t a1, uint64_t a2)
{
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](a1);
  MEMORY[0x2530381B0](a2);
  v4 = sub_24DD4B724();

  return sub_24DD396B4(a1, a2, v4);
}

unint64_t sub_24DD3943C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24DD4B654())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24DD394F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24DD4AD44();
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
      sub_24DD3D308(&qword_27F1B08C0, MEMORY[0x277D0B888], MEMORY[0x277D0B898]);
      v15 = sub_24DD4B154();
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

unint64_t sub_24DD396B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24DD3972C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_24DD4AC74();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24DD4AD44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
  v47 = v4;
  result = sub_24DD4B5E4();
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

      sub_24DD3D308(&qword_27F1B08B8, MEMORY[0x277D0B888], MEMORY[0x277D0B890]);
      result = sub_24DD4B124();
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

uint64_t sub_24DD39BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  result = sub_24DD4B5E4();
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
      v20 = *(v5 + 56);
      v30 = *(*(v5 + 48) + 16 * v19);
      v21 = *(v20 + 8 * v19);
      if ((v4 & 1) == 0)
      {
        sub_24DD3CC70(*(v20 + 8 * v19));
      }

      sub_24DD4B6E4();
      MEMORY[0x2530381B0](v30);
      MEMORY[0x2530381B0](*(&v30 + 1));
      result = sub_24DD4B724();
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
      *(*(v7 + 48) + 16 * v15) = v30;
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

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_24DD39E74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DD4B514() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_24DD4B6E4();
      MEMORY[0x2530381B0](v10);
      MEMORY[0x2530381B0](v11);
      result = sub_24DD4B724();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

void sub_24DD3A018(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24DD393BC(a2, a3);
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
      sub_24DD39BD4(v16, a4 & 1);
      v11 = sub_24DD393BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_24DD4B684();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_24DD3A4D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;

  sub_24DD3CC60(v23);
}

char *sub_24DD3A180()
{
  v1 = v0;
  v41 = sub_24DD4AC74();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24DD4AD44();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
  v4 = *v0;
  v5 = sub_24DD4B5D4();
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

void *sub_24DD3A4D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  v2 = *v0;
  v3 = sub_24DD4B5D4();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_24DD3CC70(v18);
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

void (*sub_24DD3A634(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 64) = sub_24DD3A9BC(v7);
  *(v7 + 72) = sub_24DD3A740((v7 + 32), a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24DD3A6E0;
}

void sub_24DD3A6E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24DD3A740(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))(void ***a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24DD393BC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24DD3A4D4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24DD39BD4(v18, a4 & 1);
    v13 = sub_24DD393BC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24DD4B684();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 2;
  }

  *v11 = v23;
  return sub_24DD3A898;
}

void sub_24DD3A898(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 40);
  v5 = v3 == 2;
  if (a2)
  {
    if (v3 == 2)
    {
      goto LABEL_9;
    }

    v6 = v2[4];
    v7 = *v2[3];
    if (v2[5])
    {
      goto LABEL_12;
    }

    v8 = v7[6];
    v9 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v8 + 16 * v6) = v9;
    *(v7[7] + 8 * v6) = v3;
    v10 = v7[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    v5 = v4 == 0;
    if (!v11)
    {
LABEL_14:
      v7[2] = v4;
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v4)
    {
      v12 = v3;
      sub_24DD39E74(v2[4], *v2[3]);
      v3 = v12;
    }

    goto LABEL_15;
  }

  v6 = v2[4];
  v7 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v13 = v7[6];
    v14 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v13 + 16 * v6) = v14;
    *(v7[7] + 8 * v6) = v3;
    v15 = v7[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  *(v7[7] + 8 * v6) = v3;
LABEL_15:
  v16 = *v2;
  sub_24DD3D204(v3);
  sub_24DD3D214(v16);

  free(v2);
}

uint64_t (*sub_24DD3A9BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24DD3A9E4;
}

unint64_t sub_24DD3A9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF538, &qword_24DD4CB00);
    v3 = sub_24DD4B5F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24DD392AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24DD3AB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08E0, &unk_24DD4DA90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
    v7 = sub_24DD4B5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24DD1C3AC(v9, v5, &qword_27F1B08E0, &unk_24DD4DA90);
      result = sub_24DD39324(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24DD4AD44();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_24DD4AC74();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_24DD3AD24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  v3 = sub_24DD4B5F4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_24DD393BC(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_24DD3CC70(v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_24DD393BC(v4, v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD3AE34(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v80 = a4;
  v79 = a3;
  v104 = a2;
  v81 = a1;
  v107 = sub_24DD4AD44();
  v90 = *(v107 - 8);
  v6 = MEMORY[0x28223BE20](v107);
  v108 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v69 - v8;
  v75 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v75);
  v76 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v78 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v69 - v10;
  v95 = sub_24DD4AC44();
  v98 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24DD4AC74();
  v86 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v105 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v103 = &v69 - v15;
  v16 = sub_24DD4ACD4();
  isUniquelyReferenced_nonNull_native = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08C8, &qword_24DD4DA78);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = sub_24DD4B0A4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_transportID;
  if (qword_27F1AF280 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  *(v5 + v31) = atomic_fetch_add_explicit(&qword_27F1AF288, 1uLL, memory_order_relaxed);
  sub_24DD4B094();
  (*(v28 + 32))(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger, v30, v27);
  v32 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v33 = sub_24DD4ACF4();
  v72 = *(v33 - 8);
  v34 = *(v72 + 16);
  v28 = v79;
  v73 = v33;
  v34(v5 + v32, v79);
  sub_24DD4ACE4();
  sub_24DD1C3AC(v26, v24, &qword_27F1B08C8, &qword_24DD4DA78);
  if ((*(isUniquelyReferenced_nonNull_native + 48))(v24, 1, v16) == 1)
  {
    sub_24DD1C414(v26, &qword_27F1B08C8, &qword_24DD4DA78);
    v35 = 0;
  }

  else
  {
    v31 = v102;
    (*(isUniquelyReferenced_nonNull_native + 32))(v102, v24, v16);
    sub_24DD4ACB4();
    (*(isUniquelyReferenced_nonNull_native + 16))(v101, v31, v16);
    v35 = sub_24DD4ACA4();
    v36 = *(isUniquelyReferenced_nonNull_native + 8);
    isUniquelyReferenced_nonNull_native += 8;
    v36(v31, v16);
    sub_24DD1C414(v26, &qword_27F1B08C8, &qword_24DD4DA78);
  }

  v37 = v104;
  *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_retryThrottle) = v35;
  *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_session) = v37;
  v38 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v39 = sub_24DD4AAC4();
  v70 = *(v39 - 8);
  v40 = *(v70 + 16);
  v71 = v39;
  v40(v5 + v38, v81);
  sub_24DD3BD4C(v80, v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v41 = v37;
  v24 = sub_24DD3AB04(MEMORY[0x277D84F90]);
  v27 = v28;
  v42 = sub_24DD4ACC4();
  v85 = *(v42 + 16);
  if (!v85)
  {

LABEL_27:
    *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig) = v24;
    v64 = v76;
    *v76 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    v65 = v77;
    *v77 = 0;
    v66 = *(v74 + 28);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D0, &qword_24DD4DA80);
    bzero(&v65[v66], *(*(v67 - 8) + 64));
    sub_24DD3CBF8(v64, &v65[v66], type metadata accessor for URLSessionTransport.State);
    sub_24DD3BCCC(v80, type metadata accessor for URLSessionTransport.Config);
    (*(v72 + 8))(v28, v73);
    (*(v70 + 8))(v81, v71);
    memcpy((v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state), v65, v78);
    return v5;
  }

  v69 = v5;
  v30 = 0;
  v84 = v42 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v102 = (v86 + 16);
  v92 = v98 + 8;
  v93 = v98 + 16;
  v104 = (v90 + 16);
  v89 = (v86 + 32);
  v91 = (v90 + 8);
  v88 = (v86 + 40);
  v82 = (v86 + 8);
  v83 = v42;
  while (1)
  {
    if (v30 >= *(v42 + 16))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_2;
    }

    v43 = *(v86 + 72);
    v87 = v30;
    v44 = *(v86 + 16);
    v27 = v103;
    v100 = v43;
    v101 = v44;
    (v44)(v103, v84 + v43 * v30, v12);
    v45 = sub_24DD4AC54();
    v99 = *(v45 + 16);
    if (v99)
    {
      break;
    }

LABEL_7:
    v30 = v87 + 1;

    (*v82)(v103, v12);
    v42 = v83;
    if (v30 == v85)
    {

      v5 = v69;
      v28 = v79;
      goto LABEL_27;
    }
  }

  v26 = 0;
  v46 = *(v98 + 80);
  v96 = v45;
  v97 = v45 + ((v46 + 32) & ~v46);
  while (1)
  {
    if (v26 >= *(v45 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v47 = v98;
    v48 = v94;
    v5 = v12;
    v49 = v95;
    (*(v98 + 16))(v94, v97 + *(v98 + 72) * v26, v95);
    sub_24DD4AC34();
    v31 = sub_24DD4AC24();
    v28 = v50;
    (*(v47 + 8))(v48, v49);
    v51 = v106;
    sub_24DD4AD14();
    v16 = *v104;
    v52 = v108;
    v53 = v51;
    v12 = v5;
    (*v104)(v108, v53, v107);
    (v101)(v105, v103, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v24;
    v27 = v24;
    v30 = sub_24DD39324(v52);
    v55 = v24[2];
    v56 = (v54 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_29;
    }

    v28 = v54;
    if (v24[3] < v57)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = v109;
      if (v54)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_24DD3A180();
      v24 = v109;
      if (v28)
      {
LABEL_11:
        (*v88)(v24[7] + v30 * v100, v105, v5);
        isUniquelyReferenced_nonNull_native = v91;
        v30 = *v91;
        v27 = v107;
        (*v91)(v108, v107);
        (v30)(v106, v27);
        goto LABEL_12;
      }
    }

LABEL_21:
    v24[(v30 >> 6) + 8] |= 1 << v30;
    v60 = v90;
    v27 = v107;
    v28 = v108;
    v16(v24[6] + *(v90 + 72) * v30, v108, v107);
    (*v89)(v24[7] + v30 * v100, v105, v5);
    v30 = *(v60 + 8);
    isUniquelyReferenced_nonNull_native = v91;
    (v30)(v28, v27);
    (v30)(v106, v27);
    v61 = v24[2];
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      goto LABEL_30;
    }

    v24[2] = v63;
LABEL_12:
    ++v26;
    v45 = v96;
    if (v99 == v26)
    {
      goto LABEL_7;
    }
  }

  sub_24DD3972C(v57, isUniquelyReferenced_nonNull_native);
  v58 = sub_24DD39324(v108);
  if ((v28 & 1) == (v59 & 1))
  {
    v30 = v58;
    v24 = v109;
    if (v28)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  result = sub_24DD4B684();
  __break(1u);
  return result;
}

uint64_t sub_24DD3BAC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0D4B0;

  return sub_24DD2ECCC(a1, v1);
}

uint64_t sub_24DD3BBA8(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DD0C914;

  return sub_24DD34050(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24DD3BCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DD3BD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24DD3BDB8()
{
  result = qword_27F1B0758;
  if (!qword_27F1B0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0758);
  }

  return result;
}

void sub_24DD3BE50(uint64_t a1)
{
  sub_24DD4ACF4();
  if (v1 <= 0x3F)
  {
    sub_24DD4AAC4();
    if (v2 <= 0x3F)
    {
      sub_24DD3C028(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for URLSessionTransport.Config(319);
        if (v4 <= 0x3F)
        {
          sub_24DD4B0A4();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24DD3C028(uint64_t a1)
{
  if (!qword_27F1B0778)
  {
    type metadata accessor for URLSessionTransport.State(255);
    v1 = sub_24DD4AB64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1B0778);
    }
  }
}

uint64_t sub_24DD3C080()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3C0B0(char *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:

      v4 = sub_24DD3C1AC(0);
      break;
    case 1:

      v4 = sub_24DD3C18C(0);
      break;
    case 0:

    default:
      return result;
  }

  v5 = *(v4 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

char *sub_24DD3C1CC(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v9 = *(sub_24DD3C1AC(0) + 20);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v7 = *(sub_24DD3C18C(0) + 20);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *sub_24DD3C340(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_24DD3BCCC(a1, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v9 = *(sub_24DD3C1AC(0) + 20);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v7 = *(sub_24DD3C18C(0) + 20);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_24DD3C4EC(uint64_t a1)
{
  result = sub_24DD3C18C(319);
  if (v2 <= 0x3F)
  {
    result = sub_24DD3C1AC(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void sub_24DD3C5FC(uint64_t a1)
{
  if (!qword_27F1B0BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    v1 = sub_24DD4B324();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1B0BA0);
    }
  }
}

uint64_t sub_24DD3C674(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t sub_24DD3C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t *sub_24DD3C780(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  v6 = *(a3 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DD3C9AC(uint64_t a1)
{
  sub_24DD3C5FC(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_24DD3CA44(uint64_t a1)
{
  sub_24DD3C5FC(319);
  if (v1 <= 0x3F)
  {
    sub_24DD3CAB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD3CAB8(uint64_t a1)
{
  if (!qword_27F1B07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B07D8, &qword_24DD4D960);
    sub_24DD4AFE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B07D0);
    }
  }
}

void *sub_24DD3CB38()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F5E38;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_24DD3CB60()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24DD3C18C(0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3CB9C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24DD3C1AC(0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3CBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24DD3CC60(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_24DD3CC70(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_24DD3CC80()
{
  v17 = sub_24DD4AD44();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_24DD4ABD4();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_24DD4ADF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = v2 | v6 | v11;
  v13 = (((*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v15 | 7);
}

uint64_t sub_24DD3CE88(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_24DD4AD44() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_24DD4ABD4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  sub_24DD4ADF4();
  v9 = v1[3];
  v15 = v1[2];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DD0D4B0;

  return sub_24DD34C50(a1, v15, v9, v10, v11, v12, v1 + v5, v1 + v8);
}

uint64_t sub_24DD3D0A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24DD3D108(uint64_t a1)
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
  v11[1] = sub_24DD0D4B0;

  return sub_24DD36E3C(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_24DD3D204(id result)
{
  if (result != 2)
  {
    return sub_24DD3CC70(result);
  }

  return result;
}

void sub_24DD3D214(id a1)
{
  if (a1 != 2)
  {
    sub_24DD3CC60(a1);
  }
}

uint64_t sub_24DD3D224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_24DD3D2D4(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_24DD3D308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24DD3D350(uint64_t a1)
{
  sub_24DD3D504(319, &qword_27F1B08F8, &qword_27F1B0900, &unk_24DD4DAB0);
  if (v1 <= 0x3F)
  {
    sub_24DD3C5FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD3D3DC(uint64_t a1)
{
  sub_24DD3D47C(319);
  if (v1 <= 0x3F)
  {
    sub_24DD3D504(319, &qword_27F1B0928, &qword_27F1B0930, &unk_24DD4DAE0);
    if (v2 <= 0x3F)
    {
      sub_24DD3D594(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24DD3D47C(uint64_t a1)
{
  if (!qword_27F1B0918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0920, &qword_24DD4DAD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B0918);
    }
  }
}

void sub_24DD3D504(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B07D8, &qword_24DD4D960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_24DD3D594(uint64_t a1)
{
  if (!qword_27F1B0938)
  {
    sub_24DD3DA04(255, &qword_27F1B0940, 0x277CCAD68);
    v1 = sub_24DD4B2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1B0938);
    }
  }
}

uint64_t sub_24DD3D610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD3D69C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD3D728(uint64_t a1)
{
  sub_24DD3C5FC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_31GRPCURLSessionTransportInternal010URLSessionB0C7StreamsV11StreamState021_5F152AE2B9124F2744E3L10EF84A69884LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DD3D798(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD3D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24DD3D85C(uint64_t a1)
{
  result = sub_24DD4AFE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_24DD3D8D0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_24DD3D914(uint64_t *a1, int a2)
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

uint64_t sub_24DD3D95C(uint64_t result, int a2, int a3)
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

unint64_t sub_24DD3D9B0()
{
  result = qword_27F1B0968;
  if (!qword_27F1B0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0968);
  }

  return result;
}

uint64_t sub_24DD3DA04(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_24DD3DA68(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = result & 0xC;
  v6 = 4 << v4;
  v7 = result;
  if (v5 == v6)
  {
    v14 = result;
    v15 = a2;
    v16 = a3;
    v17 = sub_24DD3DBC8(result, a2, a3);
    a2 = v15;
    a3 = v16;
    v7 = v17;
    result = v14;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v18 = result;
    v19 = a2;
    v20 = a3;
    v21 = MEMORY[0x253037CA0](v7, 2, a2, a3);
    a2 = v19;
    a3 = v20;
    v13 = v21;
    result = v18;
    v9 = v20 & 0x2000000000000000;
    v10 = HIBYTE(v20) & 0xF;
    v11 = a2 & 0xFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = (v7 >> 16) + 2;
  v9 = a3 & 0x2000000000000000;
  v10 = HIBYTE(a3) & 0xF;
  v11 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 < v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = (v8 << 16) | 4;
LABEL_10:
  if (v9)
  {
    v3 = v10;
  }

  else
  {
    v3 = v11;
  }

  if (v13 >> 14 >= 4 * v3)
  {
    return 0;
  }

  if (v5 == v6)
  {
LABEL_21:
    v22 = a3;
    result = sub_24DD3DBC8(result, a2, a3);
    if ((v22 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) + 65540;
    }

    goto LABEL_22;
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) + 65540;
  }

LABEL_22:
  if (v3 > result >> 16)
  {
    return sub_24DD4B1F4();
  }

  __break(1u);
  return result;
}

unint64_t sub_24DD3DBC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24DD4B224();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x253037CA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24DD3DC44(unint64_t a1, unint64_t a2)
{
  v4 = 0;
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
LABEL_27:
    result = v5;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = 15;
  while (1)
  {
    v9 = v8 & 0xC;
    v10 = v8;
    if (v9 == v7)
    {
      v14 = v8;
      v10 = sub_24DD3DBC8(v8, a1, a2);
      v8 = v14;
    }

    v11 = v10 >> 16;
    if (v10 >> 16 >= v5)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v20 = v8;
      v13 = sub_24DD4B214();
      v8 = v20;
      if (v9 != v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v21[0] = a1;
        v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v12 = v21;
      }

      else
      {
        v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v19 = v8;
          v12 = sub_24DD4B584();
          v8 = v19;
        }
      }

      v13 = *(v12 + v11);
      if (v9 != v7)
      {
LABEL_21:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    v8 = sub_24DD3DBC8(v8, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_22:
    if (v5 <= v8 >> 16)
    {
      goto LABEL_40;
    }

    v8 = sub_24DD4B1F4();
LABEL_9:
    if (v13 == 37)
    {
      ++v4;
    }

    if (4 * v5 == v8 >> 14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_24DD4B1E4();
LABEL_28:
  v16 = 3 * v4;
  if ((v4 * 3) >> 64 != (3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  v17 = __OFSUB__(result, v16);
  v18 = result - v16;
  if (v17)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v5 = v18 + v4;
    if (!__OFADD__(v18, v4))
    {
      return v5;
    }

    __break(1u);
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    return v5;
  }

  return sub_24DD4B1E4();
}

unint64_t sub_24DD3DE58(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_24DD3DC44(a1, a2);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v6 = v3 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  if (v4 == v6)
  {
LABEL_71:

    return v3;
  }

LABEL_5:
  v7 = v4 & ~(v4 >> 63);

  v8 = sub_24DD391A8(0, v7, 0, MEMORY[0x277D84F90]);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v41 = 4 * v9;
    v40 = v9;
    v5 = 15;
    do
    {
      v12 = v5 & 0xC;
      v4 = v5;
      if (v12 == v11)
      {
        v4 = sub_24DD3DBC8(v5, v3, a2);
      }

      v13 = v4 >> 16;
      if (v4 >> 16 >= v9)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v37 = v4;
        v38 = sub_24DD4B1E4();
        v4 = v37;
        if (v37 == v38)
        {
          goto LABEL_71;
        }

        goto LABEL_5;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = sub_24DD4B214();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v42 = v3;
        v43 = a2 & 0xFFFFFFFFFFFFFFLL;
        v4 = *(&v42 + v13);
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v14 = sub_24DD4B584();
        }

        v4 = *(v14 + v13);
      }

      if (v4 == 37)
      {
        v4 = sub_24DD3DA68(v5, v3, a2);
        if (v16)
        {
          goto LABEL_70;
        }

        v5 = v15;
        if ((v4 & 0xC) == v11)
        {
          v4 = sub_24DD3DBC8(v4, v3, a2);
        }

        v17 = v4 >> 16;
        if (v4 >> 16 >= v9)
        {
          goto LABEL_75;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v19 = sub_24DD4B214();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v42 = v3;
          v43 = a2 & 0xFFFFFFFFFFFFFFLL;
          v19 = *(&v42 + v17);
        }

        else
        {
          v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v18 = sub_24DD4B584();
          }

          v19 = *(v18 + v17);
        }

        if ((v19 - 58) > 0xF5u)
        {
          v24 = 208;
        }

        else if ((v19 - 91) > 0xE5u)
        {
          v24 = 201;
        }

        else
        {
          if ((v19 - 123) < 0xE6u)
          {
            goto LABEL_70;
          }

          v24 = 169;
        }

        v12 = v5 & 0xC;
        v4 = v5;
        if (v12 == v11)
        {
          v31 = v24;
          v4 = sub_24DD3DBC8(v5, v3, a2);
          v24 = v31;
        }

        v25 = v4 >> 16;
        if (v4 >> 16 >= v9)
        {
          goto LABEL_76;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v28 = v24;
          v27 = sub_24DD4B214();
          v24 = v28;
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v42 = v3;
          v43 = a2 & 0xFFFFFFFFFFFFFFLL;
          v27 = *(&v42 + v25);
        }

        else
        {
          v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v35 = v24;
            v26 = sub_24DD4B584();
            v24 = v35;
          }

          v27 = *(v26 + v25);
        }

        if ((v27 - 58) > 0xF5u)
        {
          v29 = 208;
        }

        else if ((v27 - 91) > 0xE5u)
        {
          v29 = 201;
        }

        else
        {
          if ((v27 - 123) < 0xE6u)
          {
LABEL_70:

            goto LABEL_71;
          }

          v29 = 169;
        }

        v21 = *(v8 + 2);
        v30 = *(v8 + 3);
        v22 = v21 + 1;
        if (v21 >= v30 >> 1)
        {
          v39 = v27;
          v32 = v8;
          v33 = v24;
          v34 = sub_24DD391A8((v30 > 1), v21 + 1, 1, v32);
          v24 = v33;
          v8 = v34;
          v27 = v39;
        }

        v4 = (v27 + v29) | (16 * (v19 + v24));
        v9 = v40;
      }

      else
      {
        v21 = *(v8 + 2);
        v20 = *(v8 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v23 = v4;
          v8 = sub_24DD391A8((v20 > 1), v21 + 1, 1, v8);
          v4 = v23;
        }
      }

      *(v8 + 2) = v22;
      v8[v21 + 32] = v4;
      if (v12 == v11)
      {
        v4 = sub_24DD3DBC8(v5, v3, a2);
        v5 = v4;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
          continue;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      if (v9 <= v5 >> 16)
      {
        goto LABEL_74;
      }

      v5 = sub_24DD4B1F4();
    }

    while (v41 > v5 >> 14);
  }

  v3 = sub_24DD4B1A4();

  return v3;
}

double static URLSessionTransport.Config.defaults.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for URLSessionTransport.Config(0);
  sub_24DD4ADD4();
  sub_24DD4AE04();
  *&result = 0x4000;
  *a1 = xmmword_24DD4DC00;
  a1[1] = xmmword_24DD4DC00;
  *(a1 + *(v2 + 40)) = 0;
  return result;
}

uint64_t URLSessionTransport.Config.compressionAlgorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config(0) + 32);
  v4 = sub_24DD4ADF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLSessionTransport.Config.compressionAlgorithm.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config(0) + 32);
  v4 = sub_24DD4ADF4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLSessionTransport.Config.enabledCompressionAlgorithms.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config(0) + 36);
  v4 = sub_24DD4AE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLSessionTransport.Config.enabledCompressionAlgorithms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config(0) + 36);
  v4 = sub_24DD4AE64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLSessionTransport.Config.assumesHTTP3Capable.setter(char a1)
{
  result = type metadata accessor for URLSessionTransport.Config(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t static URLSessionTransport.Config.defaults(configure:)@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for URLSessionTransport.Config(0);
  sub_24DD4ADD4();
  sub_24DD4AE04();
  *a2 = xmmword_24DD4DC00;
  a2[1] = xmmword_24DD4DC00;
  *(a2 + *(v4 + 40)) = 0;
  return a1(a2);
}

uint64_t type metadata accessor for URLSessionTransport.Config(uint64_t a1)
{
  result = qword_27F1B0978;
  if (!qword_27F1B0978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DD3E7E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24DD4ADF4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
  }

  else
  {
    v10 = sub_24DD4AE64();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_24DD3E90C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24DD4ADF4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = sub_24DD4AE64();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_24DD3EA10(uint64_t a1)
{
  result = sub_24DD4ADF4();
  if (v2 <= 0x3F)
  {
    result = sub_24DD4AE64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DD3EAB0()
{
  v0 = sub_24DD4ADF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD4ADC4();
  v4 = sub_24DD4ADB4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 1885960807;
  }

  sub_24DD4ADE4();
  v7 = sub_24DD4ADB4();
  v5(v3, v0);
  if (v7)
  {
    return 0x6574616C666564;
  }

  sub_24DD4ADD4();
  v8 = sub_24DD4ADB4();
  v5(v3, v0);
  if (v8)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24DD3EC44()
{
  v1 = v0;
  v2 = sub_24DD4ADF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v3 + 16))(&v14 - v7, v1, v2);
  sub_24DD4ADE4();
  sub_24DD3EE08();
  v9 = sub_24DD4B154();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9 & 1) != 0 || (sub_24DD4ADC4(), v11 = sub_24DD4B154(), v10(v6, v2), (v11))
  {
    v12 = 1;
  }

  else
  {
    sub_24DD4ADD4();
    v12 = sub_24DD4B154();
    v10(v6, v2);
  }

  v10(v8, v2);
  return v12 & 1;
}

unint64_t sub_24DD3EE08()
{
  result = qword_27F1AF618;
  if (!qword_27F1AF618)
  {
    sub_24DD4ADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF618);
  }

  return result;
}

uint64_t sub_24DD3EE60@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24DD4ADF4();
  v17 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24DD3F070(1885960807, 0xE400000000000000, a1, a2, a3, a4))
  {

    sub_24DD4ADC4();
LABEL_7:
    (*(v17 + 32))(a5, v12, v10);
    return (*(v17 + 56))(a5, 0, 1, v10);
  }

  if (sub_24DD3F070(0x6574616C666564, 0xE700000000000000, a1, a2, a3, a4))
  {

    sub_24DD4ADE4();
    goto LABEL_7;
  }

  v13 = sub_24DD3F070(0x797469746E656469, 0xE800000000000000, a1, a2, a3, a4);

  if (v13)
  {
    sub_24DD4ADD4();
    goto LABEL_7;
  }

  v15 = *(v17 + 56);

  return v15(a5, 1, 1, v10);
}

uint64_t sub_24DD3F070(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_24DD4B614() & 1;
  }
}

unint64_t sub_24DD3F0DC(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *RequestPartOutputStreamBridge.__allocating_init(outputStream:requestParts:compressor:streamID:openOutputStream:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v28 = a5;
  v10 = sub_24DD4B0A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v5);
  LOBYTE(a3) = *a3;
  v15 = *a4;
  v16 = a4[1];
  *&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = a1;
  type metadata accessor for RequestPartOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  *&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = a2;
  v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = a3;
  v17 = &v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
  *v17 = v15;
  v17[1] = v16;
  v18 = a1;

  sub_24DD4B094();
  (*(v11 + 32))(&v14[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v13, v10);
  v29.receiver = v14;
  v29.super_class = v27;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
  v21 = *&v19[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  v22 = v19;
  [v21 setDelegate_];
  v23 = qword_27F1AF290;
  v24 = *&v19[v20];
  if (v23 != -1)
  {
    swift_once();
  }

  MEMORY[0x2530381D0](v24, qword_27F1B0990);

  if (v28)
  {
    v25 = *&v19[v20];
    [v25 open];
  }

  else
  {
  }

  return v22;
}

uint64_t sub_24DD3F3D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD3F4EC, 0, 0);
}

uint64_t sub_24DD3F4EC()
{
  v37 = v0;
  v1 = *(v0[3] + 16);
  v2 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;
  v3 = pthread_mutex_lock((v1 + v2));
  if (v3)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_24DD3FBB0(v0[9]);
  v3 = pthread_mutex_unlock((v1 + v2));
  if (v3)
  {
LABEL_26:
    __break(1u);
    return MEMORY[0x282200830](v3, v4);
  }

  sub_24DD1C3AC(v0[9], v0[8], &qword_27F1B0AC0, &qword_24DD4DD58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = v0[8];
      v21 = v0[6];
      v22 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC8, &qword_24DD4DD70) + 48));
      sub_24DD1C474(v20, v21, &qword_27F1B0810, &qword_24DD4D9B0);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + 40;
        do
        {
          v25 = *(v24 - 8);
          v35 = 0;
          v36 = 0;

          v25(&v35);

          v24 += 16;
          --v23;
        }

        while (v23);
      }

      v27 = v0[5];
      v26 = v0[6];
      v28 = v0[4];
      v29 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);

      sub_24DD1C474(v26, v29, &qword_27F1B0810, &qword_24DD4D9B0);
      (*(v27 + 56))(v29, 0, 1, v28);
    }

    else
    {
      v9 = v0[8];
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);
      sub_24DD1C474(v9, v12, &qword_27F1B0810, &qword_24DD4D9B0);
      (*(v11 + 56))(v12, 0, 1, v10);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v6 = v0[4];
      v7 = v0[5];
      v8 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);
      (*(v7 + 56))(v8, 1, 1, v6);
LABEL_21:

      v18 = v0[1];
      goto LABEL_22;
    }

    v19 = swift_task_alloc();
    v0[10] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
    *v19 = v0;
    v19[1] = sub_24DD3F970;
    v3 = v0[2];
    v4 = &unk_24DD4DD68;

    return MEMORY[0x282200830](v3, v4);
  }

  v13 = v0[8];
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  if (v15)
  {

    v15(v17);
    sub_24DD1C134(v15, v16);
  }

  if (!v14)
  {
    v30 = v0[9];
    v31 = v0[4];
    v32 = v0[5];
    v33 = v0[2];
    sub_24DD1C134(v15, v16);
    sub_24DD1C414(v30, &qword_27F1B0AC0, &qword_24DD4DD58);
    (*(v32 + 56))(v33, 1, 1, v31);
    goto LABEL_21;
  }

  swift_willThrow();
  sub_24DD1C134(v15, v16);
  sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);

  v18 = v0[1];
LABEL_22:

  return v18();
}

uint64_t sub_24DD3F970()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24DD3FB14;
  }

  else
  {
    v2 = sub_24DD3FA84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD3FA84()
{
  sub_24DD1C414(*(v0 + 72), &qword_27F1B0AC0, &qword_24DD4DD58);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD3FB14()
{
  sub_24DD1C414(*(v0 + 72), &qword_27F1B0AC0, &qword_24DD4DD58);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD3FBB0@<X0>(void *a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v83 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v82 - v5;
  *&v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  *&v86 = *(v85 - 8);
  v7 = MEMORY[0x28223BE20](v85);
  *&v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v82 - v9;
  *&v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  MEMORY[0x28223BE20](v90);
  v11 = &v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - v22;
  v87 = v1;
  sub_24DD1C3AC(v1, &v82 - v22, &qword_27F1B0878, &qword_24DD4DA20);
  v88 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v36 = *v23;
      v38 = *(v23 + 2);
      v40 = *(v23 + 3);
      v39 = *(v23 + 4);
      v91 = *(v23 + 1);
      v37 = v91;
      v41 = v87;
      sub_24DD1C414(v87, &qword_27F1B0878, &qword_24DD4DA20);
      swift_storeEnumTagMultiPayload();
      if (v37[3] < 1)
      {
        (*(v86 + 56))(v6, 1, 1, v85);

        sub_24DD1C414(v6, &qword_27F1B0A90, &qword_24DD4D9D0);
        sub_24DD1C414(v41, &qword_27F1B0878, &qword_24DD4DA20);
        *v41 = v36;
        swift_storeEnumTagMultiPayload();
        if (v40)
        {
          v68 = v39;
        }

        else
        {
          v68 = 0;
        }

        v69 = v89;
        *v89 = v38;
        v69[1] = v40;
        v69[2] = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
        v37 = v91;
      }

      v42 = v86;
      sub_24DD1C474(v37 + ((*(v42 + 80) + 40) & ~*(v42 + 80)) + *(v86 + 72) * v37[4], v6, &qword_27F1B0810, &qword_24DD4D9B0);
      v43 = v37[4];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (!v44)
      {
        v46 = v37[3];
        if (v45 >= v37[2])
        {
          v45 = 0;
        }

        v37[4] = v45;
        if (!__OFSUB__(v46, 1))
        {
          v37[3] = v46 - 1;
          (*(v42 + 56))(v6, 0, 1, v85);
          v47 = v82;
          sub_24DD1C474(v6, v82, &qword_27F1B0810, &qword_24DD4D9B0);
          sub_24DD1C414(v41, &qword_27F1B0878, &qword_24DD4DA20);
          *v41 = v36;
          *(v41 + 8) = v37;
          *(v41 + 16) = v38;
          *(v41 + 24) = v40;
          *(v41 + 32) = v39;
          swift_storeEnumTagMultiPayload();
          sub_24DD1C474(v47, v89, &qword_27F1B0810, &qword_24DD4D9B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = *(v23 + 4);
      LODWORD(v86) = v23[40];
      v27 = *(v23 + 6);
      v26 = *(v23 + 7);
      v28 = *v23;
      v84 = *(v23 + 1);
      v85 = v28;
      v29 = *(&v84 + 1);
      v83 = v25;
      sub_24DD1C124(*(&v84 + 1), v25);
      sub_24DD1C124(v27, v26);
      v30 = *sub_24DD4B024();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
      v32 = *(*(v31 - 8) + 56);
      v32(v17, 1, 1, v31);
      swift_retain_n();
      sub_24DD1C134(v29, v25);
      sub_24DD1C134(v27, v26);
      v33 = v90;
      v34 = *(v90 + 40);
      v32(&v21[v34], 1, 1, v31);
      v35 = v84;
      *v21 = v85;
      *(v21 + 1) = v35;
      *(v21 + 4) = v83;
      v21[40] = v86;
      *(v21 + 6) = v27;
      *(v21 + 7) = v26;
      *(v21 + 8) = v30;
      sub_24DD1C144(v17, &v21[v34], &qword_27F1B0AF8, &qword_24DD4DD98);
      *&v21[v33[11]] = v30;
      *&v21[v33[12]] = v30;
      v21[v33[13]] = 0;
      swift_storeEnumTagMultiPayload();
      sub_24DD1C144(v21, v87, &qword_27F1B0878, &qword_24DD4DA20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD1C474(v23, v11, &unk_27F1B0B00, &unk_24DD4DDA0);
    v48 = v90;
    sub_24DD1C3AC(&v11[*(v90 + 40)], v15, &qword_27F1B0AF8, &qword_24DD4DD98);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
    v50 = (*(*(v49 - 8) + 48))(v15, 1, v49);
    sub_24DD1C414(v15, &qword_27F1B0AF8, &qword_24DD4DD98);
    if (v50 == 1)
    {
      v51 = v87;
      sub_24DD1C414(v87, &qword_27F1B0878, &qword_24DD4DA20);
      swift_storeEnumTagMultiPayload();
      v52 = v11 + 64;
      v53 = v89;
      v54 = v84;
      v55 = v86;
      if (*(*(v11 + 8) + 24) < 1)
      {
        v70 = v83;
        (*(v86 + 56))(v83, 1, 1, v85);
        sub_24DD1C414(v70, &qword_27F1B0A90, &qword_24DD4D9D0);
        sub_24DD1C414(v51, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v11, v51, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      }

      v56 = *v52;
      v57 = *v52 + ((*(v55 + 80) + 40) & ~*(v55 + 80)) + *(v55 + 72) * *(*v52 + 32);
      v58 = v83;
      sub_24DD1C474(v57, v83, &qword_27F1B0810, &qword_24DD4D9B0);
      v59 = v56[4];
      v44 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v44)
      {
        goto LABEL_51;
      }

      v61 = v56[3];
      if (v60 >= v56[2])
      {
        v60 = 0;
      }

      v56[4] = v60;
      if (__OFSUB__(v61, 1))
      {
        goto LABEL_53;
      }

      v56[3] = v61 - 1;
      (*(v55 + 56))(v58, 0, 1, v85);
      sub_24DD1C474(v58, v54, &qword_27F1B0810, &qword_24DD4D9B0);
      v62 = *v11;
      v64 = *(v11 + 2);
      v63 = *(v11 + 3);
      v65 = *(v11 + 4);
      if (v63)
      {
        v86 = *v11;
        sub_24DD1C124(v63, v65);
        v66 = v63(v54);
        sub_24DD1C134(v63, v65);
        v67 = v64 - v66;
        if (__OFSUB__(v64, v66))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v62 = v86;
      }

      else
      {
        v67 = v64 - 1;
        if (__OFSUB__(v64, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      if (v67 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      *v11 = v62;
      *(v11 + 2) = v67;
      *(v11 + 3) = v63;
      *(v11 + 4) = v65;
      v11[*(v48 + 52)] = v67 < v62;
      if (v67 >= v62)
      {
        sub_24DD1C414(v51, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v11, v51, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        sub_24DD1C474(v54, v53, &qword_27F1B0810, &qword_24DD4D9B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      *&v86 = *(v48 + 44);
      v71 = *&v11[v86];
      v72 = v71[3];
      if (!v72)
      {

        v74 = MEMORY[0x277D84F90];
LABEL_47:
        *&v11[v86] = *sub_24DD4B024();

        sub_24DD1C414(v51, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v11, v51, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC8, &qword_24DD4DD70) + 48);
        sub_24DD1C474(v84, v53, &qword_27F1B0810, &qword_24DD4D9B0);
        *(v53 + v80) = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      v91 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        goto LABEL_57;
      }

      v73 = 0;
      v74 = v91;
      while (v73 < v71[3])
      {
        v75 = v71[4];
        if (v73 + v75 >= v71[2])
        {
          v76 = v71[2];
        }

        else
        {
          v76 = 0;
        }

        v77 = *&v71[3 * v73 + 6 + 3 * (v75 - v76)];
        v91 = v74;
        v79 = v74[2];
        v78 = v74[3];
        v90 = v77;

        if (v79 >= v78 >> 1)
        {
          sub_24DD286D4((v78 > 1), v79 + 1, 1);
          v74 = v91;
        }

        ++v73;
        v74[2] = v79 + 1;
        *&v74[2 * v79 + 4] = v90;
        if (v72 == v73)
        {

          v53 = v89;
          v51 = v87;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

LABEL_58:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD40834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24DD40854, 0, 0);
}

uint64_t sub_24DD40854()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  *v1 = v0;
  v1[1] = sub_24DD2EDC4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x2822008A0](v3, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_24DD49104, v4, v2);
}

uint64_t sub_24DD40940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B10, &qword_24DD4DDB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = *(a2 + 16);
  v27 = (*(*v26 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v26 + v27));
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_24DD4104C(a1, v25);
    result = pthread_mutex_unlock((v26 + v27));
    if (!result)
    {
      sub_24DD1C3AC(v25, v23, &qword_27F1B0B10, &qword_24DD4DDB0);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      if ((*(*(v29 - 8) + 48))(v23, 1, v29) == 1)
      {
        return sub_24DD1C414(v25, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B28, &qword_24DD4DDC8);
          v45 = *(v44 + 48);
          v46 = *&v23[*(v44 + 64)];
          v48 = v60;
          v47 = v61;
          (*(v60 + 32))(v17, v23, v61);
          v49 = v56;
          sub_24DD1C474(&v23[v45], v56, &qword_27F1B0810, &qword_24DD4D9B0);
          v50 = v59;
          sub_24DD1C3AC(v49, v59, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v57 + 56))(v50, 0, 1, v58);
          sub_24DD4B314();
          v51 = *(v46 + 16);
          if (v51)
          {
            v52 = v46 + 40;
            do
            {
              v53 = *(v52 - 8);
              v62 = 0;
              v63 = 0;

              v53(&v62);

              v52 += 16;
              --v51;
            }

            while (v51);
          }

          sub_24DD1C414(v49, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v48 + 8))(v17, v47);
        }

        else
        {
          v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
          v33 = v60;
          v32 = v61;
          (*(v60 + 32))(v19, v23, v61);
          sub_24DD1C474(&v23[v31], v10, &qword_27F1B0810, &qword_24DD4D9B0);
          v34 = v59;
          sub_24DD1C3AC(v10, v59, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v57 + 56))(v34, 0, 1, v58);
          sub_24DD4B314();
          sub_24DD1C414(v10, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v33 + 8))(v19, v32);
        }

        return sub_24DD1C414(v25, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      if (EnumCaseMultiPayload != 2)
      {
        v55 = v60;
        v54 = v61;
        (*(v60 + 32))(v19, v23, v61);
        (*(v57 + 56))(v59, 1, 1, v58);
        sub_24DD4B314();
        (*(v55 + 8))(v19, v54);
        return sub_24DD1C414(v25, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B20, &qword_24DD4DDC0);
      v36 = *&v23[*(v35 + 48)];
      v37 = &v23[*(v35 + 64)];
      v38 = *v37;
      v39 = *(v37 + 1);
      v41 = v60;
      v40 = v61;
      (*(v60 + 32))(v14, v23, v61);
      if (v36)
      {
        v62 = v36;
        v42 = v36;
        sub_24DD4B304();
        if (v38)
        {
LABEL_11:

          v38(v43);
          sub_24DD1C134(v38, v39);

          sub_24DD1C134(v38, v39);
LABEL_19:
          (*(v41 + 8))(v14, v40);
          return sub_24DD1C414(v25, &qword_27F1B0B10, &qword_24DD4DDB0);
        }
      }

      else
      {
        (*(v57 + 56))(v59, 1, 1, v58);
        sub_24DD4B314();
        if (v38)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD4104C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a1;
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v101 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  *&v111 = *(v107 - 8);
  v10 = MEMORY[0x28223BE20](v107);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  v108 = v3;
  v23 = v3;
  v25 = v24;
  sub_24DD1C3AC(v23, &v101 - v21, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v105 = v25;
    v106 = v19;
    v103 = v12;
    v104 = v17;
    if (EnumCaseMultiPayload != 1)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v45 = v106;
    sub_24DD1C474(v22, v106, &unk_27F1B0B00, &unk_24DD4DDA0);
    v46 = *(v104 + 40);
    sub_24DD1C3AC(v45 + v46, v16, &qword_27F1B0AF8, &qword_24DD4DD98);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
    v48 = *(v47 - 8);
    v49 = v47;
    v50 = (*(v48 + 48))(v16, 1);
    sub_24DD1C414(v16, &qword_27F1B0AF8, &qword_24DD4DD98);
    v51 = v111;
    if (v50 != 1)
    {
LABEL_59:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v52 = v108;
    sub_24DD1C414(v108, &qword_27F1B0878, &qword_24DD4DA20);
    swift_storeEnumTagMultiPayload();
    v53 = v45 + 64;
    if (*(*(v45 + 64) + 24) < 1)
    {
      (*(v51 + 56))(v7, 1, 1, v107);
      sub_24DD1C414(v7, &qword_27F1B0A90, &qword_24DD4D9D0);
      sub_24DD1C414(v45 + v46, &qword_27F1B0AF8, &qword_24DD4DD98);
      (*(v48 + 16))(v45 + v46, v109, v49);
      (*(v48 + 56))(v45 + v46, 0, 1, v49);
      sub_24DD1C414(v52, &qword_27F1B0878, &qword_24DD4DA20);
      sub_24DD1C3AC(v45, v52, &unk_27F1B0B00, &unk_24DD4DDA0);
      swift_storeEnumTagMultiPayload();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      (*(*(v76 - 8) + 56))(v110, 1, 1, v76);
      v77 = v45;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      }

      v54 = *v53;
      sub_24DD1C474(*v53 + ((*(v51 + 80) + 40) & ~*(v51 + 80)) + *(v51 + 72) * *(*v53 + 32), v7, &qword_27F1B0810, &qword_24DD4D9B0);
      v55 = v54[4];
      v36 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v36)
      {
        goto LABEL_51;
      }

      v102 = v48;
      v57 = v54[3];
      if (v56 >= v54[2])
      {
        v56 = 0;
      }

      v54[4] = v56;
      if (__OFSUB__(v57, 1))
      {
        goto LABEL_53;
      }

      v58 = v49;
      v54[3] = v57 - 1;
      (*(v51 + 56))(v7, 0, 1, v107);
      v59 = v103;
      sub_24DD1C474(v7, v103, &qword_27F1B0810, &qword_24DD4D9B0);
      v60 = v106;
      v61 = *v106;
      v63 = *(v106 + 2);
      v62 = *(v106 + 3);
      v64 = *(v106 + 4);
      if (v62)
      {
        v111 = *v106;
        sub_24DD1C124(v62, v64);
        v65 = v62(v59);
        sub_24DD1C134(v62, v64);
        v66 = v63 - v65;
        if (__OFSUB__(v63, v65))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v60 = v106;
        v61 = v111;
      }

      else
      {
        v66 = v63 - 1;
        if (__OFSUB__(v63, 1))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      if (v66 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      *v60 = v61;
      *(v60 + 16) = v66;
      *(v60 + 24) = v62;
      *(v60 + 32) = v64;
      v78 = v104;
      *(v60 + *(v104 + 52)) = v66 < v61;
      if (v66 < v61)
      {
        v79 = *(v78 + 44);
        v80 = *(v60 + v79);
        v81 = v80[3];
        if (v81)
        {
          v107 = v58;
          v112 = MEMORY[0x277D84F90];
          sub_24DD286D4(0, v81 & ~(v81 >> 63), 0);
          if (v81 < 0)
          {
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v82 = 0;
          v83 = v112;
          while (v82 < v80[3])
          {
            v84 = v80[4];
            if (v82 + v84 >= v80[2])
            {
              v85 = v80[2];
            }

            else
            {
              v85 = 0;
            }

            v86 = *&v80[3 * v82 + 6 + 3 * (v84 - v85)];
            v112 = v83;
            v88 = v83[2];
            v87 = v83[3];
            v111 = v86;

            if (v88 >= v87 >> 1)
            {
              sub_24DD286D4((v87 > 1), v88 + 1, 1);
              v83 = v112;
            }

            ++v82;
            v83[2] = v88 + 1;
            *&v83[2 * v88 + 4] = v111;
            if (v81 == v82)
            {
              v92 = v79;

              v59 = v103;
              v58 = v107;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v92 = v79;

        v83 = MEMORY[0x277D84F90];
LABEL_47:
        v93 = sub_24DD4B024();
        v94 = v106;
        *&v106[v92] = *v93;

        v95 = v108;
        sub_24DD1C414(v108, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C3AC(v94, v95, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B28, &qword_24DD4DDC8);
        v97 = *(v96 + 48);
        v98 = *(v96 + 64);
        v99 = v110;
        (*(v102 + 16))(v110, v109, v58);
        sub_24DD1C474(v59, v99 + v97, &qword_27F1B0810, &qword_24DD4D9B0);
        *(v99 + v98) = v83;
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
        swift_storeEnumTagMultiPayload();
        (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
        v77 = v94;
      }

      else
      {
        sub_24DD1C414(v52, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C3AC(v60, v52, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
        v90 = v110;
        (*(v102 + 16))(v110, v109, v58);
        sub_24DD1C474(v59, v90 + v89, &qword_27F1B0810, &qword_24DD4D9B0);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
        swift_storeEnumTagMultiPayload();
        (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
        v77 = v60;
      }
    }

    return sub_24DD1C414(v77, &unk_27F1B0B00, &unk_24DD4DDA0);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
      v43 = v110;
      (*(*(v67 - 8) + 16))(v110, v109, v67);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  v27 = *v22;
  v28 = *(v22 + 1);
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = *(v22 + 4);
  v112 = v28;
  v32 = v108;
  sub_24DD1C414(v108, &qword_27F1B0878, &qword_24DD4DA20);
  swift_storeEnumTagMultiPayload();
  if (v28[3] >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v111;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      v28 = v112;
    }

    sub_24DD1C474(v28 + ((*(v34 + 80) + 40) & ~*(v34 + 80)) + *(v34 + 72) * v28[4], v9, &qword_27F1B0810, &qword_24DD4D9B0);
    v35 = v28[4];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      v38 = v28[3];
      if (v37 >= v28[2])
      {
        v37 = 0;
      }

      v28[4] = v37;
      if (!__OFSUB__(v38, 1))
      {
        v28[3] = v38 - 1;
        (*(v34 + 56))(v9, 0, 1, v107);
        v39 = v106;
        sub_24DD1C474(v9, v106, &qword_27F1B0810, &qword_24DD4D9B0);
        v40 = v108;
        sub_24DD1C414(v108, &qword_27F1B0878, &qword_24DD4DA20);
        *v40 = v27;
        *(v40 + 8) = v28;
        *(v40 + 16) = v29;
        *(v40 + 24) = v30;
        *(v40 + 32) = v31;
        swift_storeEnumTagMultiPayload();
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
        v43 = v110;
        (*(*(v42 - 8) + 16))(v110, v109, v42);
        sub_24DD1C474(v39, v43 + v41, &qword_27F1B0810, &qword_24DD4D9B0);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

  (*(v111 + 56))(v9, 1, 1, v107);

  sub_24DD1C414(v9, &qword_27F1B0A90, &qword_24DD4D9D0);
  sub_24DD1C414(v32, &qword_27F1B0878, &qword_24DD4DA20);
  *v32 = v27;
  swift_storeEnumTagMultiPayload();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B20, &qword_24DD4DDC0);
  v70 = *(v69 + 48);
  v71 = v110;
  v72 = (v110 + *(v69 + 64));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  (*(*(v73 - 8) + 16))(v71, v109, v73);
  *(v71 + v70) = v29;
  if (v30)
  {
    v74 = v31;
  }

  else
  {
    v74 = 0;
  }

  *v72 = v30;
  v72[1] = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
  swift_storeEnumTagMultiPayload();
  return (*(*(v75 - 8) + 56))(v71, 0, 1, v75);
}

uint64_t sub_24DD41E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD8, &qword_24DD4DD80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v30 - v10);
  v12 = *(a1 + 16);
  v13 = (*(*v12 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v12 + v13));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD42280(v11);
  result = pthread_mutex_unlock((v12 + v13));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v11, v9, &qword_27F1B0AD8, &qword_24DD4DD80);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v9;
      v16 = v9[1];
      v30 = v9[2];
      v31 = v16;
      v18 = *(v17 + 16);
      if (v18)
      {
        sub_24DD1C09C();
        v19 = v17 + 40;
        do
        {
          v20 = *(v19 - 8);
          v21 = swift_allocError();
          v32 = v21;
          v33 = 1;

          v20(&v32);

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      v22 = v31;
      if (v31)
      {
        v23 = v30;

        v22(v24);
        sub_24DD1C134(v22, v23);
        sub_24DD1C134(v22, v23);
      }
    }

    else
    {
      v25 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF0, &qword_24DD4DD90) + 48);
      v26 = *v25;
      v27 = *(v25 + 1);
      (*(v3 + 32))(v5, v9, v2);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v28 = swift_allocError();
      sub_24DD4B104();
      v32 = v28;
      sub_24DD4B304();
      if (v26)
      {

        v26(v29);
        sub_24DD1C134(v26, v27);
        sub_24DD1C134(v26, v27);
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  return sub_24DD1C414(v11, &qword_27F1B0AD8, &qword_24DD4DD80);
}

uint64_t sub_24DD42280@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  *&v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  sub_24DD1C3AC(v2, &v41 - v13, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD1C414(v14, &qword_27F1B0878, &qword_24DD4DA20);
LABEL_18:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      return (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v41 = v11;
  v16 = v43;
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v14;
    v18 = v41;
    sub_24DD1C474(v17, v41, &unk_27F1B0B00, &unk_24DD4DDA0);
    sub_24DD1C414(v2, &qword_27F1B0878, &qword_24DD4DA20);
    *v2 = *(v18 + 40);
    swift_storeEnumTagMultiPayload();
    sub_24DD1C3AC(v18 + *(v9 + 40), v5, &qword_27F1B0AF8, &qword_24DD4DD98);
    if ((*(v16 + 48))(v5, 1, v6) == 1)
    {
      sub_24DD1C414(v5, &qword_27F1B0AF8, &qword_24DD4DD98);
      v19 = *(v18 + *(v9 + 44));
      v20 = v19[3];
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v44 = MEMORY[0x277D84F90];
        sub_24DD286D4(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v22 = 0;
        v21 = v44;
        while (v22 < v19[3])
        {
          v23 = v19[4];
          if (v22 + v23 >= v19[2])
          {
            v24 = v19[2];
          }

          else
          {
            v24 = 0;
          }

          v25 = *&v19[3 * v22 + 6 + 3 * (v23 - v24)];
          v44 = v21;
          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          v43 = v25;

          if (v27 >= v26 >> 1)
          {
            sub_24DD286D4((v26 > 1), v27 + 1, 1);
            v21 = v44;
          }

          ++v22;
          *(v21 + 16) = v27 + 1;
          *(v21 + 16 * v27 + 32) = v43;
          if (v20 == v22)
          {
            v18 = v41;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_24:
      v34 = *(v18 + 48);
      v35 = *(v18 + 56);
      if (v34)
      {
        v38 = *(v18 + 56);
      }

      else
      {
        v38 = 0;
      }

      v39 = v42;
      *v42 = v21;
      v39[1] = v34;
      v39[2] = v38;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    }

    else
    {
      v30 = *(v16 + 32);
      v30(v8, v5, v6);
      if (*(*(v18 + *(v9 + 44)) + 24))
      {
        goto LABEL_30;
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF0, &qword_24DD4DD90);
      v32 = v42;
      v33 = (v42 + *(v31 + 48));
      v30(v42, v8, v6);
      v34 = *(v18 + 48);
      v35 = *(v18 + 56);
      if (v34)
      {
        v36 = *(v18 + 56);
      }

      else
      {
        v36 = 0;
      }

      *v33 = v34;
      v33[1] = v36;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      swift_storeEnumTagMultiPayload();
      (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
    }

    sub_24DD1C124(v34, v35);
    return sub_24DD1C414(v18, &unk_27F1B0B00, &unk_24DD4DDA0);
  }

LABEL_32:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD4285C()
{
  v0 = sub_24DD4B454();
  MEMORY[0x28223BE20](v0);
  v1 = sub_24DD4B0D4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24DD4B464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD49764();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_24DD4B0C4();
  v7[1] = MEMORY[0x277D84F90];
  sub_24DD497B0(&qword_27F1B0B78, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B80, &unk_24DD4DE00);
  sub_24DD497F8(&qword_27F1B0B88, &qword_27F1B0B80, &unk_24DD4DE00);
  sub_24DD4B4F4();
  result = sub_24DD4B484();
  qword_27F1B0990 = result;
  return result;
}

id static RequestPartOutputStreamBridge.streamQueue.getter()
{
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v1 = qword_27F1B0990;

  return v1;
}

void sub_24DD42B08(uint64_t a1)
{
  v3 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  sub_24DD48F78(a1, &v29 - v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  v9 = v1;
  v10 = sub_24DD4B084();
  v11 = sub_24DD4B424();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315650;
    v14 = *&v9[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v15 = *&v9[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v30 = 0;
    v31 = 0xE000000000000000;
    v32 = v14;
    v33 = 0x726F70736E617274;
    v34 = 0xEA00000000005F74;
    v35 = v13;
    v16 = sub_24DD4B624();
    MEMORY[0x253037C70](v16);

    MEMORY[0x253037C70](v33, v34);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v33 = v15;
    v17 = sub_24DD4B624();
    MEMORY[0x253037C70](v17);

    v18 = sub_24DD38DE0(v30, v31, &v35);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = sub_24DD484A0();
    v21 = v20;
    sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
    v22 = sub_24DD38DE0(v19, v21, &v35);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2080;
    v23 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(&v9[v23], v6, type metadata accessor for RequestPartOutputStreamBridge.State);
    v24 = sub_24DD484A0();
    v26 = v25;
    sub_24DD48FE0(v6, type metadata accessor for RequestPartOutputStreamBridge.State);
    v27 = sub_24DD38DE0(v24, v26, &v35);

    *(v12 + 24) = v27;
    _os_log_impl(&dword_24DD09000, v10, v11, "Output stream delegate state transition for %s: %s -> %s)", v12, 0x20u);
    v28 = v29;
    swift_arrayDestroy();
    MEMORY[0x253038870](v28, -1, -1);
    MEMORY[0x253038870](v12, -1, -1);
  }

  else
  {

    sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  }
}

char *RequestPartOutputStreamBridge.init(outputStream:requestParts:compressor:streamID:openOutputStream:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v6 = v5;
  v28 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_24DD4B0A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v15 = *a4;
  v16 = a4[1];
  *&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = a1;
  type metadata accessor for RequestPartOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  *&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = a2;
  v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = a3;
  v17 = &v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
  *v17 = v15;
  v17[1] = v16;
  v18 = a1;

  sub_24DD4B094();
  (*(v12 + 32))(&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v14, v11);
  v29.receiver = v6;
  v29.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
  v21 = *&v19[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  v22 = v19;
  [v21 setDelegate_];
  v23 = qword_27F1AF290;
  v24 = *&v19[v20];
  if (v23 != -1)
  {
    swift_once();
  }

  MEMORY[0x2530381D0](v24, qword_27F1B0990);

  if (v28)
  {
    v25 = *&v19[v20];
    [v25 open];
  }

  else
  {
  }

  return v22;
}

id RequestPartOutputStreamBridge.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24DD43298()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_24DD4B0E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v17 = qword_27F1B0990;
  *v16 = qword_27F1B0990;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_24DD4B0F4();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v20 = sub_24DD4B384();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = ObjectType;
    v21[4] = v0;
    v21[5] = v22;
    v23 = v0;
    sub_24DD45DCC(0, 0, v12, &unk_24DD4DD40, v21);
    v24 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v23 + v24, v9, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48F78(v9, v7, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = swift_getEnumCaseMultiPayload();
    if (result == 4)
    {
      sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v9 = 0;
      swift_storeEnumTagMultiPayload();
      sub_24DD48F78(v23 + v24, v4, type metadata accessor for RequestPartOutputStreamBridge.State);
      swift_beginAccess();
      sub_24DD483CC(v9, v23 + v24);
      swift_endAccess();
      sub_24DD42B08(v4);

      sub_24DD48FE0(v4, type metadata accessor for RequestPartOutputStreamBridge.State);
      return sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
    }
  }

  else
  {
    __break(1u);
  }

  if (result > 1)
  {
    if (result != 2)
    {
LABEL_13:
      result = sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
      goto LABEL_14;
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v26 - 8) + 8))(&v7[v25], v26);
    __break(1u);
    goto LABEL_13;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24DD4371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_24DD4B0B4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_24DD4B0D4();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v5[22] = swift_task_alloc();
  v9 = sub_24DD4B0E4();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD43934, 0, 0);
}

uint64_t sub_24DD43934()
{
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = qword_27F1B0990;
  v0[26] = qword_27F1B0990;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v5 = v4;
  LOBYTE(v4) = sub_24DD4B0F4();
  v6 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = 0;
    v10 = *(v0[11] + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts);
    atomic_compare_exchange_strong_explicit((v10 + 24), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v9)
    {
      return sub_24DD4B5B4();
    }

    v11 = *(v10 + 16);
    v12 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor;
    v0[27] = v11;
    v0[28] = v12;

    v6 = sub_24DD43AE4;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD43AE4()
{
  v0[29] = *(v0[27] + 16);

  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_24DD43BAC;
  v2 = v0[22];

  return sub_24DD3F3D8(v2);
}

uint64_t sub_24DD43BAC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24DD441E4;
  }

  else
  {

    v2 = sub_24DD43CC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD43CC8()
{

  return MEMORY[0x2822009F8](sub_24DD43D30, 0, 0);
}

uint64_t sub_24DD43D30()
{
  v1 = v0[22];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[21];
    v26 = v0[20];
    v3 = v0[18];
    v27 = v0[19];
    v25 = v0[17];
    v24 = v0[16];
    v4 = v0[11];

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v0[6] = sub_24DD48DD8;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24DD458F4;
    v0[5] = &block_descriptor;
    v6 = _Block_copy(v0 + 2);
    v7 = v4;
    sub_24DD4B0C4();
    v0[9] = MEMORY[0x277D84F90];
    sub_24DD497B0(&qword_27F1B0A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AA0, &qword_24DD4DD50);
    sub_24DD497F8(&qword_27F1B0AA8, &qword_27F1B0AA0, &qword_24DD4DD50);
    sub_24DD4B4F4();
    MEMORY[0x253037F10](0, v2, v3, v6);
    _Block_release(v6);
    (*(v25 + 8))(v3, v24);
    (*(v26 + 8))(v2, v27);

    v8 = v0[1];
LABEL_6:

    return v8();
  }

  sub_24DD1C474(v1, v0[15], &qword_27F1B0810, &qword_24DD4D9B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_24DD4B5B4();
  }

  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[15];
  v14 = v0[11];
  v15 = *v13;
  v0[32] = *v13;
  v0[10] = v15;
  *(v0 + 296) = *(v14 + v12);
  v16 = _s31GRPCURLSessionTransportInternal17GRPCMessageFramerO5frame_10compressorSays5UInt8VGAA0aB5BytesV_AA10CompressorOSgtAA0J5ErrorOYKFZ(v0 + 10, v0 + 296, v9, v10);
  v0[33] = v16;
  if (v11)
  {
    sub_24DD0C4D0();
    swift_allocError();

    v8 = v0[1];
    goto LABEL_6;
  }

  v18 = v16;
  v20 = v0[11];
  v19 = v0[12];
  v21 = swift_task_alloc();
  v0[34] = v21;
  v21[2] = v20;
  v21[3] = v15;
  v21[4] = v18;
  v21[5] = v19;
  v22 = swift_task_alloc();
  v0[35] = v22;
  *v22 = v0;
  v22[1] = sub_24DD44394;
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000011, 0x800000024DD528D0, sub_24DD48DF8, v21, v23);
}

uint64_t sub_24DD441E4()
{

  return MEMORY[0x2822009F8](sub_24DD44258, 0, 0);
}

uint64_t sub_24DD44258()
{
  *(v0 + 64) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF298, &qword_24DD4C1C0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24DD442EC, 0, 0);
}

uint64_t sub_24DD442EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD44394()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_24DD44524;
  }

  else
  {
    v2 = sub_24DD44508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD44524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD445CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23 = sub_24DD4B0B4();
  v27 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD4B0D4();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v22[1] = qword_27F1B0990;
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = v24;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_24DD48EE4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DD458F4;
  aBlock[3] = &block_descriptor_16;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_24DD4B0C4();
  v28 = MEMORY[0x277D84F90];
  sub_24DD497B0(&qword_27F1B0A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AA0, &qword_24DD4DD50);
  sub_24DD497F8(&qword_27F1B0AA8, &qword_27F1B0AA0, &qword_24DD4DD50);
  v20 = v23;
  sub_24DD4B4F4();
  MEMORY[0x253037F10](0, v11, v8, v18);
  _Block_release(v18);
  (*(v27 + 8))(v8, v20);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_24DD449B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - v7;
  v8 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v42 = type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
  v14 = MEMORY[0x28223BE20](v42);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = (&v38 - v17);

  v18 = a1;
  v19 = sub_24DD4B084();
  v20 = sub_24DD4B424();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 134218242;
    *(v22 + 4) = *(a2 + 16);

    *(v22 + 12) = 2080;
    v24 = *&v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v38 = *&v18[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v50 = 0;
    v51 = 0xE000000000000000;
    v48 = 0x726F70736E617274;
    v49 = 0xEA00000000005F74;
    v46 = v24;
    v25 = sub_24DD4B624();
    MEMORY[0x253037C70](v25);

    MEMORY[0x253037C70](v48, v49);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v48 = v38;
    v26 = sub_24DD4B624();
    MEMORY[0x253037C70](v26);

    v27 = sub_24DD38DE0(v50, v51, &v47);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_24DD09000, v19, v20, "Output stream delegate produced %{iec-bytes}ld chunk and suspended the producer for stream %s.", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x253038870](v23, -1, -1);
    v28 = v22;
    v6 = v39;
    MEMORY[0x253038870](v28, -1, -1);
  }

  else
  {
  }

  v29 = v43;
  v30 = (2 * *(v43 + 16)) | 1;
  v31 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(&v18[v31], v13, type metadata accessor for RequestPartOutputStreamBridge.State);
  v32 = v45;
  sub_24DD44F24(v29, v29 + 32, 0, v30, v44, v45);
  sub_24DD48F78(&v18[v31], v11, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v13, &v18[v31]);
  swift_endAccess();
  sub_24DD42B08(v11);
  sub_24DD48FE0(v11, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v13, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48F78(v32, v16, type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v40;
      v35 = v41;
      (*(v41 + 32))(v40, v16, v6);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v36 = swift_allocError();
      sub_24DD4B104();
      v48 = v36;
      sub_24DD4B304();
      (*(v35 + 8))(v34, v6);
    }
  }

  else
  {
    sub_24DD4520C(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3));
    swift_unknownObjectRelease();
  }

  return sub_24DD48FE0(v32, type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction);
}

uint64_t sub_24DD44F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v7, v16, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      sub_24DD48FE0(v16, type metadata accessor for RequestPartOutputStreamBridge.State);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v18 - 8) + 16))(a6, a5, v18);
      type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 2)
    {
      goto LABEL_13;
    }

    v22 = &qword_27F1B0A80;
    v23 = 48;
    v24 = &qword_24DD4DD20;
LABEL_12:
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v24) + v23);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    result = (*(*(v26 - 8) + 8))(&v16[v25], v26);
LABEL_13:
    __break(1u);
    return result;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v22 = &qword_27F1B0A88;
    v23 = 64;
    v24 = &unk_24DD4DD28;
    goto LABEL_12;
  }

  sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  v19 = *v16;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
  *v7 = v19;
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v21 - 8) + 16))(v7 + v20, a5, v21);
  swift_storeEnumTagMultiPayload();
  if (v19 == 1)
  {
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain_n();
  }

  else
  {
    type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }
}

void sub_24DD4520C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_24DD4B0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v12 = qword_27F1B0990;
  *v11 = qword_27F1B0990;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  v14 = sub_24DD4B0F4();
  (*(v9 + 8))(v11, v8);
  v15 = a4 >> 1;
  if (a4 >> 1 == a3 || (v14 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = *&v4[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  if ([v16 streamStatus] != 2)
  {
    v31 = sub_24DD4B084();
    v32 = sub_24DD4B414();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24DD09000, v31, v32, "Output stream closed unexpectedly.", v33, 2u);
      MEMORY[0x253038870](v33, -1, -1);
    }

    v30 = 0;
    v29 = 0;
    goto LABEL_14;
  }

  if (__OFSUB__(v15, a3))
  {
    goto LABEL_27;
  }

  v17 = [v16 write:a2 + a3 maxLength:v15 - a3];
  v18 = v17;
  if (v17 >= 1)
  {
    v19 = v4;
    v20 = sub_24DD4B084();
    v21 = sub_24DD4B414();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 134218242;
      *(v22 + 4) = v18;
      *(v22 + 12) = 2080;
      v24 = *&v19[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
      v25 = *&v19[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
      v56 = 0xE000000000000000;
      v57 = v23;
      v52 = v24;
      v53 = 0x726F70736E617274;
      v54 = 0xEA00000000005F74;
      v55 = 0;
      v26 = sub_24DD4B624();
      MEMORY[0x253037C70](v26);

      MEMORY[0x253037C70](v53, v54);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v53 = v25;
      v27 = sub_24DD4B624();
      MEMORY[0x253037C70](v27);

      v28 = sub_24DD38DE0(v55, v56, &v57);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24DD09000, v20, v21, "Output stream delegate wrote %{iec-bytes}ld bytes to %s.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253038870](v23, -1, -1);
      MEMORY[0x253038870](v22, -1, -1);
    }

    v29 = [v16 hasSpaceAvailable];
    v30 = v18;
LABEL_14:
    sub_24DD46078(v30, v29);
    return;
  }

  if (v17)
  {
    if (v17 == -1)
    {
      v37 = v4;
      v38 = sub_24DD4B084();
      v39 = sub_24DD4B434();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v40 = 136315394;
        v43 = *&v37[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
        v44 = *&v37[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
        v56 = 0xE000000000000000;
        v57 = v42;
        v52 = v43;
        v53 = 0x726F70736E617274;
        v54 = 0xEA00000000005F74;
        v55 = 0;
        v45 = sub_24DD4B624();
        MEMORY[0x253037C70](v45);

        MEMORY[0x253037C70](v53, v54);

        MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
        v53 = v44;
        v46 = sub_24DD4B624();
        MEMORY[0x253037C70](v46);

        v47 = sub_24DD38DE0(v55, v56, &v57);

        *(v40 + 4) = v47;
        *(v40 + 12) = 2112;
        v48 = [v16 streamError];

        if (!v48)
        {
LABEL_30:
          __break(1u);
          return;
        }

        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v49;
        *v41 = v49;
        _os_log_impl(&dword_24DD09000, v38, v39, "Output stream delegate encountered error writing to %s: %@.", v40, 0x16u);
        sub_24DD1C414(v41, &unk_27F1B0B40, &unk_24DD4DDE0);
        MEMORY[0x253038870](v41, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x253038870](v42, -1, -1);
        MEMORY[0x253038870](v40, -1, -1);
      }

      else
      {
      }

      v50 = [v16 streamError];
      if (v50)
      {
        v51 = v50;
        sub_24DD46AA4(v50);

        return;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = sub_24DD4B084();
  v35 = sub_24DD4B414();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24DD09000, v34, v35, "Output stream delegate reached end of stream when writing.", v36, 2u);
    MEMORY[0x253038870](v36, -1, -1);
  }

  sub_24DD4666C();
}

uint64_t sub_24DD458F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_24DD45938(void *a1)
{
  v2 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = a1;
  v9 = sub_24DD4B084();
  v10 = sub_24DD4B414();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v13 = *&v8[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v14 = *&v8[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v24 = 0;
    v25 = 0xE000000000000000;
    v21 = v12;
    v22 = 0x726F70736E617274;
    v23 = 0xEA00000000005F74;
    v20 = v13;
    v15 = sub_24DD4B624();
    MEMORY[0x253037C70](v15);

    MEMORY[0x253037C70](v22, v23);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v22 = v14;
    v16 = sub_24DD4B624();
    MEMORY[0x253037C70](v16);

    v17 = sub_24DD38DE0(v24, v25, &v21);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24DD09000, v9, v10, "Output stream delegate wrote final chunk for %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253038870](v12, -1, -1);
    MEMORY[0x253038870](v11, -1, -1);
  }

  v18 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(&v8[v18], v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD45C3C();
  sub_24DD48F78(&v8[v18], v5, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v7, &v8[v18]);
  swift_endAccess();
  sub_24DD42B08(v5);
  sub_24DD48FE0(v5, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  return [*&v8[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] close];
}

uint64_t sub_24DD45C3C()
{
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v0, v3, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      return sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    }

    if (result != 2)
    {
      goto LABEL_11;
    }

    v5 = &qword_27F1B0A80;
    v6 = 48;
    v7 = &qword_24DD4DD20;
LABEL_10:
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5, v7) + v6);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    result = (*(*(v9 - 8) + 8))(&v3[v8], v9);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result)
  {
    swift_unknownObjectRelease();
    v5 = &qword_27F1B0A88;
    v6 = 64;
    v7 = &unk_24DD4DD28;
    goto LABEL_10;
  }

  sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
  *v0 = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DD45DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24DD1C3AC(a3, v22 - v9, &qword_27F1AF530, &qword_24DD4CA90);
  v11 = sub_24DD4B384();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24DD1C414(v10, &qword_27F1AF530, &qword_24DD4CA90);
  }

  else
  {
    sub_24DD4B374();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24DD4B2F4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24DD4B194() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24DD46078(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = a2;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - v5;
  v43 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v6 = MEMORY[0x28223BE20](v43);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v43 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - v19);
  v21 = sub_24DD4B0E4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v25 = qword_27F1B0990;
  *v24 = qword_27F1B0990;
  (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
  v26 = v25;
  LOBYTE(v25) = sub_24DD4B0F4();
  result = (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v31 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v3 + v31, v14, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD46EE4(v50, v49 & 1, v20);
    sub_24DD48F78(v3 + v31, v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v14, v3 + v31);
    swift_endAccess();
    sub_24DD42B08(v12);
    sub_24DD48FE0(v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v14, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48F78(v20, v18, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24DD4520C(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3));
        swift_unknownObjectRelease();
      }

      return sub_24DD48FE0(v20, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    }

    (*(v47 + 32))(v46, v18, v48);
    v33 = v44;
    sub_24DD48F78(v3 + v31, v44, type metadata accessor for RequestPartOutputStreamBridge.State);
    v34 = v45;
    sub_24DD48F78(v33, v45, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = swift_getEnumCaseMultiPayload();
    v29 = __OFSUB__(result, 2);
    v27 = result == 2;
    v28 = result - 2 < 0;
    if (result == 2)
    {
      sub_24DD48FE0(v33, type metadata accessor for RequestPartOutputStreamBridge.State);
      v35 = *v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
      *v33 = v35;
      swift_storeEnumTagMultiPayload();
      v37 = *(v47 + 8);
      v38 = &v34[v36];
      v39 = v48;
      v37(v38, v48);
      sub_24DD48F78(v3 + v31, v14, type metadata accessor for RequestPartOutputStreamBridge.State);
      swift_beginAccess();
      sub_24DD483CC(v33, v3 + v31);
      swift_endAccess();
      sub_24DD42B08(v14);
      sub_24DD48FE0(v14, type metadata accessor for RequestPartOutputStreamBridge.State);
      sub_24DD48FE0(v33, type metadata accessor for RequestPartOutputStreamBridge.State);
      v40 = v46;
      sub_24DD4B314();
      v37(v40, v39);
      return sub_24DD48FE0(v20, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    }
  }

  else
  {
    __break(1u);
  }

  if (!(v28 ^ v29 | v27))
  {
    goto LABEL_15;
  }

  if (result)
  {
    v41 = v45;
    swift_unknownObjectRelease();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
    result = (*(v47 + 8))(v41 + *(v42 + 64), v48);
    __break(1u);
LABEL_15:
    if (result == 3)
    {
      result = sub_24DD48FE0(v45, type metadata accessor for RequestPartOutputStreamBridge.State);
      __break(1u);
    }
  }

  __break(1u);
  return result;
}

id sub_24DD4666C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - v4;
  v5 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for RequestPartOutputStreamBridge.State.EndEncounteredAction(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24DD4B0E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v18 = qword_27F1B0990;
  *v17 = qword_27F1B0990;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_24DD4B0F4();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v21 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v1 + v21, v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD47548(v13);
    sub_24DD48F78(v1 + v21, v8, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v10, v1 + v21);
    swift_endAccess();
    sub_24DD42B08(v8);
    sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = (*(v3 + 48))(v13, 2, v2);
    if (result)
    {
      if (result != 1)
      {
        return [*(v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      }
    }

    else
    {
      v22 = v25;
      (*(v3 + 32))(v25, v13, v2);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v23 = swift_allocError();
      sub_24DD4B104();
      v26 = v23;
      sub_24DD4B304();
      [*(v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      return (*(v3 + 8))(v22, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24DD46AA4(void *a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - v5;
  v6 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for RequestPartOutputStreamBridge.State.ErrorOccurredAction(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24DD4B0E4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v19 = qword_27F1B0990;
  *v18 = qword_27F1B0990;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_24DD4B0F4();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v2 + v22, v11, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD4728C(v26, v14);
    sub_24DD48F78(v2 + v22, v9, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v11, v2 + v22);
    swift_endAccess();
    sub_24DD42B08(v9);
    sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v11, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = (*(v4 + 48))(v14, 2, v3);
    if (result)
    {
      if (result != 1)
      {
        return [*(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      }
    }

    else
    {
      v23 = v25;
      (*(v4 + 32))(v25, v14, v3);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v24 = swift_allocError();
      sub_24DD4B104();
      v27 = v24;
      sub_24DD4B304();
      [*(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      return (*(v4 + 8))(v23, v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DD46EE4@<X0>(int64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v43 = a2;
  v44 = a1;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v3, v11, type metadata accessor for RequestPartOutputStreamBridge.State);
  v42 = v9;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
LABEL_14:
    if (result <= 2)
    {
      if (!result)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20);
      result = (*(v6 + 8))(&v11[*(v36 + 48)], v5);
      __break(1u);
    }

    if (result == 3)
    {
      result = sub_24DD48FE0(v11, type metadata accessor for RequestPartOutputStreamBridge.State);
      __break(1u);
    }

    goto LABEL_19;
  }

  sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
  v13 = *v11;
  v14 = *(v11 + 1);
  v39 = *(v11 + 2);
  v15 = *(v11 + 3);
  v16 = *(v11 + 4);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
  v18 = *(v17 + 64);
  v38 = v6;
  v19 = *(v6 + 32);
  v6 += 32;
  v40 = v19;
  result = (v19)(v8, &v11[v18], v5);
  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v44;
  v20 = v13 ^ 1;
  if (((v16 >> 1) - v15) < v44)
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_13;
  }

  v21 = v8;
  v22 = sub_24DD3F0DC(v44, v14, v39, v15, v16);
  if (v24 == v25 >> 1)
  {
    swift_unknownObjectRelease();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    *v4 = v43 & 1;
    (*(v38 + 16))(v4 + v26, v8, v5);
    swift_storeEnumTagMultiPayload();
    v40(v41, v8, v5);
    type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = *(v17 + 64);
    v31 = v21;
    v32 = v43;
    *v4 = v43 & 1;
    v33 = v22;
    *(v4 + 8) = v22;
    *(v4 + 16) = v27;
    *(v4 + 24) = v24;
    *(v4 + 32) = v25;
    v40((v4 + v30), v31, v5);
    swift_storeEnumTagMultiPayload();
    if (v32)
    {
      v34 = v33;
      v35 = v41;
      *v41 = v34;
      v35[1] = v27;
      v35[2] = v28;
      v35[3] = v29;
      type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  }

  return swift_storeEnumTagMultiPayload();
}

id sub_24DD4728C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v3, v12, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v3 = a1;
      swift_storeEnumTagMultiPayload();
      v14 = 2;
      goto LABEL_10;
    }

    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_unknownObjectRelease();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
LABEL_9:
    v16 = *(v7 + 32);
    v16(v9, &v12[v15], v6);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v16(a2, v9, v6);
    v14 = 0;
    goto LABEL_10;
  }

  if (result == 2)
  {
    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    goto LABEL_9;
  }

  if (result == 4)
  {
    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v14 = 1;
LABEL_10:
    (*(v7 + 56))(a2, v14, 2, v6);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD47548@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v2, v10, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      v12 = 2;
      return (*(v5 + 56))(a1, v12, 2, v4);
    }

    sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_unknownObjectRelease();
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
LABEL_9:
    v14 = *(v5 + 32);
    v14(v7, &v10[v13], v4);
    *v2 = 0;
    swift_storeEnumTagMultiPayload();
    v14(a1, v7, v4);
    v12 = 0;
    return (*(v5 + 56))(a1, v12, 2, v4);
  }

  if (result == 2)
  {
    sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    goto LABEL_9;
  }

  if (result == 3)
  {
    sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    v12 = 1;
    return (*(v5 + 56))(a1, v12, 2, v4);
  }

  __break(1u);
  return result;
}

id RequestPartOutputStreamBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall RequestPartOutputStreamBridge.stream(_:handle:)(NSStream _, NSStreamEvent handle)
{
  isa = _.super.isa;
  v4 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_24DD4B0E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v17 = qword_27F1B0990;
  *v16 = qword_27F1B0990;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_24DD4B0F4();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (handle > 7)
  {
    if (handle != 8)
    {
      if (handle == 16)
      {
        sub_24DD47E6C(0x756F636E45646E65, 0xEE0064657265746ELL, v2);
        sub_24DD4666C();
        return;
      }

      goto LABEL_12;
    }

    sub_24DD47E6C(0x63634F726F727265, 0xED00006465727275, v2);
    v30 = [(objc_class *)isa streamError];
    if (v30)
    {
      v31 = v30;
      sub_24DD46AA4(v30);
LABEL_19:

      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (handle == 1)
  {
    sub_24DD47E6C(0x706D6F436E65706FLL, 0xED0000646574656CLL, v2);
    v29 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v2 + v29, v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    LODWORD(v29) = swift_getEnumCaseMultiPayload();
    sub_24DD48FE0(v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    if (v29 == 4)
    {
      sub_24DD43298();
      return;
    }

    v32 = v2;
    v31 = sub_24DD4B084();
    v33 = sub_24DD4B424();

    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315138;
      v36 = *&v32[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
      v37 = *&v32[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
      v46 = v35;
      v47 = 0;
      v48 = 0xE000000000000000;
      v44 = 0x726F70736E617274;
      v45 = 0xEA00000000005F74;
      v43 = v36;
      v38 = sub_24DD4B624();
      MEMORY[0x253037C70](v38);

      MEMORY[0x253037C70](v44, v45);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v44 = v37;
      v39 = sub_24DD4B624();
      MEMORY[0x253037C70](v39);

      v40 = sub_24DD38DE0(v47, v48, &v46);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_24DD09000, v31, v33, "Output stream delegate ignoring duplicate openCompleted event for %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x253038870](v35, -1, -1);
      MEMORY[0x253038870](v34, -1, -1);
    }

    goto LABEL_19;
  }

  if (handle != 4)
  {
LABEL_12:
    v49 = handle;
    type metadata accessor for Event(0);
    v27 = sub_24DD4B184();
    sub_24DD47E6C(v27, v28, v2);

    return;
  }

  sub_24DD47E6C(0xD000000000000011, 0x800000024DD52760, v2);
  v19 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(v2 + v19, v10, type metadata accessor for RequestPartOutputStreamBridge.State);
  v20 = sub_24DD480CC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24DD48F78(v2 + v19, v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v10, v2 + v19);
  swift_endAccess();
  sub_24DD42B08(v7);
  sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
  if (v20)
  {
    sub_24DD4520C(v20, v22, v24, v26);
    swift_unknownObjectRelease();
  }
}

void sub_24DD47E6C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;

  oslog = sub_24DD4B084();
  v6 = sub_24DD4B424();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v13 = v8;
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    v11 = sub_24DD38DE0(0, 0xE000000000000000, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24DD38DE0(a1, a2, &v13);
    _os_log_impl(&dword_24DD09000, oslog, v6, "Output stream delegate received event for %s: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253038870](v8, -1, -1);
    MEMORY[0x253038870](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24DD480CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v0, v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
      v10 = *(v7 + 1);
      v9 = *(v7 + 2);
      v11 = *(v7 + 4);
      v20 = *(v7 + 3);
      v21 = v9;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
      v13 = *(v2 + 32);
      v13(v4, &v7[*(v12 + 64)], v1);
      v14 = *(v12 + 64);
      *v0 = 1;
      v16 = v20;
      v15 = v21;
      *(v0 + 8) = v10;
      *(v0 + 16) = v15;
      *(v0 + 24) = v16;
      *(v0 + 32) = v11;
      v13((v0 + v14), v4, v1);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
    *v0 = 1;
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20);
    v18 = *(v2 + 32);
    v18(v4, &v7[*(v17 + 48)], v1);
    v19 = *(v17 + 48);
    *v0 = 1;
    v18((v0 + v19), v4, v1);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  if (result != 3)
  {
    __break(1u);
    return result;
  }

  sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  return 0;
}

uint64_t sub_24DD483CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DD484A0()
{
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DD48F78(v0, v3, type metadata accessor for RequestPartOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v3;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_24DD4B534();

      v30 = 0xD00000000000001BLL;
      v31 = 0x800000024DD52850;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v13)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
      MEMORY[0x253037C70](v14, v15);

      MEMORY[0x253037C70](694100012, 0xE400000000000000);
      v11 = v30;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v17 - 8) + 8))(v3 + v16, v17);
      return v11;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x6C616974696E69;
    }

    v5 = *v3;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_24DD4B534();

    v30 = 0x28206465736F6C63;
    v31 = 0xEF203A726F727265;
    v29 = v5;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00D8, &unk_24DD4D290);
    v7 = sub_24DD4B184();
    MEMORY[0x253037C70](v7);

    MEMORY[0x253037C70](41, 0xE100000000000000);

    return v30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *v3;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_24DD4B534();

    v30 = 0xD000000000000020;
    v31 = 0x800000024DD52890;
    if (v8)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x253037C70](v9, v10);

    MEMORY[0x253037C70](41, 0xE100000000000000);
    return v30;
  }

  v18 = *v3;
  v19 = v3[3];
  v20 = v3[4];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_24DD4B534();

  v30 = 0xD00000000000001ALL;
  v31 = 0x800000024DD52870;
  v21 = v18 == 0;
  if (v18)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
  MEMORY[0x253037C70](v22, v23);

  result = MEMORY[0x253037C70](5972012, 0xE300000000000000);
  if (!__OFSUB__(v20 >> 1, v19))
  {
    v29 = (v20 >> 1) - v19;
    v26 = sub_24DD4B624();
    MEMORY[0x253037C70](v26);

    MEMORY[0x253037C70](0x295D736574796220, 0xE800000000000000);
    swift_unknownObjectRelease();
    v11 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v27 - 8) + 8))(v3 + v24, v27);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD488EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24DD48944(uint64_t a1)
{
  result = type metadata accessor for RequestPartOutputStreamBridge.State(319);
  if (v2 <= 0x3F)
  {
    result = sub_24DD4B0A4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_24DD48A64(uint64_t a1)
{
  sub_24DD48B00();
  if (v1 <= 0x3F)
  {
    sub_24DD48B30(319);
    if (v2 <= 0x3F)
    {
      sub_24DD48BC4(319);
      if (v3 <= 0x3F)
      {
        sub_24DD48C3C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24DD48B00()
{
  result = qword_27F1B0A48;
  if (!qword_27F1B0A48)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27F1B0A48);
  }

  return result;
}

void sub_24DD48B30(uint64_t a1)
{
  if (!qword_27F1B0A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF2D8, &qword_24DD4C618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F1B0A50);
    }
  }
}

void sub_24DD48BC4(uint64_t a1)
{
  if (!qword_27F1B0A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B0A68);
    }
  }
}

void sub_24DD48C3C(uint64_t a1)
{
  if (!qword_27F1B0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    v1 = sub_24DD4B4B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1B0A70);
    }
  }
}

uint64_t sub_24DD48CA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DD48CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DD0D4B0;

  return sub_24DD4371C(a1, v4, v5, v7, v6);
}

uint64_t sub_24DD48DA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DD48E04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24DD48EE4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_24DD449B4(v2, v3, v4, v5);
}

uint64_t sub_24DD48F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD48FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24DD49040(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24DD49060(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0C914;

  return sub_24DD40834(a1, v1);
}

uint64_t sub_24DD4910C()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_24DD49498(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_24DD491D0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_24DD49380(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_24DD49274(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(v8 + 16);
  v11 = *(*(v9 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = swift_allocObject();
  v13 = *(v8 + 24);
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  if (v13 >= 1)
  {
    sub_24DD495A8(v12 + 16, v12 + ((v11 + 40) & ~v11), (v8 + 16), v8 + ((v11 + 40) & ~v11), a1, a2);
  }

  *v4 = v12;
  return result;
}

void sub_24DD49380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_24DD49498(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_24DD495A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a3[2];
  v7 = *a3 - v6;
  if (__OFSUB__(*a3, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (v7 >= v11)
  {
    v13 = 0;
    v12 = 0;
    if (v11 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11 - v7;
  if (__OFSUB__(v11, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = a4;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v7 < v11 && v12 >= 1)
  {
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

unint64_t sub_24DD49764()
{
  result = qword_27F1B0B70;
  if (!qword_27F1B0B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1B0B70);
  }

  return result;
}

uint64_t sub_24DD497B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DD497F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD499B0(uint64_t a1)
{
  sub_24DD3C5FC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24DD49A34()
{
  if (!qword_27F1B0BC8)
  {
    v0 = sub_24DD4B4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0BC8);
    }
  }
}

uint64_t sub_24DD49AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DD49BB0(uint64_t a1)
{
  v1 = sub_24DD4B564();
  v2 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;

  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  result = pthread_mutex_init((v1 + v2), &v4);
  if (result)
  {
    __break(1u);
  }

  else
  {

    return v1;
  }

  return result;
}

void sub_24DD49C68()
{
  if (pthread_mutex_destroy((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8))))
  {
    __break(1u);
  }

  JUMPOUT(0x253038010);
}

uint64_t sub_24DD49CCC()
{
  sub_24DD49C68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DD49DC8(uint64_t a1, pthread_mutex_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = pthread_mutex_lock(a2);
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  a3(a1);
  if (v7)
  {
    result = pthread_mutex_unlock(a2);
    if (!result)
    {
      *a7 = v7;
      return result;
    }

    goto LABEL_8;
  }

  result = pthread_mutex_unlock(a2);
  if (result)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_24DD49F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *_s31GRPCURLSessionTransportInternal17GRPCMessageFramerO5frame_10compressorSays5UInt8VGAA0aB5BytesV_AA10CompressorOSgtAA0J5ErrorOYKFZ(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *a2;
  if (v8 != 2)
  {
    v18 = v8 & 1;
    v17 = v7;
    result = _s31GRPCURLSessionTransportInternal10CompressorO8compressySays5UInt8VGAA0aB5BytesVAA0D5ErrorOYKF(&v17);
    if (v5)
    {
      return result;
    }

    v7 = result;
    v4 = *(result + 2);
    if (!__OFADD__(v4, 5))
    {
      a4 = sub_24DD391A8(0, v4 + 5, 0, MEMORY[0x277D84F90]);
      v6 = *(a4 + 2);
      v10 = *(a4 + 3);
      v12 = v6 + 1;
      if (v6 < v10 >> 1)
      {
LABEL_9:
        *(a4 + 2) = v12;
        a4[v6 + 32] = 1;
        v19 = a4;
        if (HIDWORD(v4))
        {
          __break(1u);
        }

        LODWORD(v17) = bswap32(v4);
        sub_24DD0D86C(&v17, &v17 + 4);
        goto LABEL_11;
      }

LABEL_16:
      v16 = v4;
      v14 = v12;
      v15 = sub_24DD391A8((v10 > 1), v12, 1, a4);
      v12 = v14;
      v4 = v16;
      a4 = v15;
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v7 + 16);
  if (__OFADD__(v9, 5))
  {
    __break(1u);
  }

  else
  {
    a4 = sub_24DD391A8(0, v9 + 5, 0, MEMORY[0x277D84F90]);
    v6 = *(a4 + 2);
    v9 = *(a4 + 3);
    v4 = v6 + 1;
    if (v6 < v9 >> 1)
    {
      goto LABEL_4;
    }
  }

  a4 = sub_24DD391A8((v9 > 1), v4, 1, a4);
LABEL_4:
  *(a4 + 2) = v4;
  a4[v6 + 32] = 0;
  v19 = a4;
  v11 = *(v7 + 16);
  v12 = HIDWORD(v11);
  if (HIDWORD(v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  LODWORD(v17) = bswap32(v11);
  sub_24DD0D86C(&v17, &v17 + 4);

LABEL_11:
  sub_24DD0D780(v7);
  return v19;
}

char *sub_24DD4A19C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0CF0, &unk_24DD4DFA0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24DD4A2C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *GRPCURLSessionTransportBytes.init(repeating:count:)@<X0>(void *result@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v6 = sub_24DD4B2B4();
      *(v6 + 16) = a2;
      result = memset((v6 + 32), v4, a2);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    *a3 = v6;
  }

  return result;
}

uint64_t sub_24DD4A568(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_24DD4B2B4();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t GRPCURLSessionTransportBytes.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_24DD4B2E4();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t static GRPCURLSessionTransportBytes.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD4A7B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t GRPCURLSessionTransportBytes.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x253038190](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_24DD4B704();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t GRPCURLSessionTransportBytes.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      ++v3;
      sub_24DD4B704();
      --v2;
    }

    while (v2);
  }

  return sub_24DD4B724();
}

uint64_t sub_24DD4A8D4@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24DD4A568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DD4A940()
{
  v1 = *v0;
  result = MEMORY[0x253038190](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_24DD4B704();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DD4A994(uint64_t a1)
{
  v2 = *v1;
  sub_24DD4B6E4();
  MEMORY[0x253038190](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_24DD4B704();
      --v3;
    }

    while (v3);
  }

  return sub_24DD4B724();
}

unint64_t sub_24DD4AA04()
{
  result = qword_27F1B0D00;
  if (!qword_27F1B0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0D00);
  }

  return result;
}