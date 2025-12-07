uint64_t sub_1DEE7EA84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, unsigned __int8 a9)
{
  v44 = a8;
  v40 = a7;
  v39 = a5;
  v38 = a2;
  v50 = a1;
  v42 = a9;
  v47 = sub_1DEF8D698();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_1DEF8D6D8();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v41 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for SessionManager.Session(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v37[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = *(a3 + 232);
  sub_1DEEACA70(a4, v21, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEACA70(a6, v17, type metadata accessor for SessionManager.Session);
  v22 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v23 = (v20 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v15 + 80) + v23 + 8) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v50;
  v27 = v38 & 1;
  *(v26 + 24) = v38 & 1;
  *(v26 + 32) = a3;
  sub_1DEEAB218(v21, v26 + v22, type metadata accessor for ReplicatorMessage.Handshake.Request);
  *(v26 + v23) = v39;
  sub_1DEEAB218(v17, v26 + v24, type metadata accessor for SessionManager.Session);
  v28 = v26 + v25;
  v29 = v40;
  v30 = v40[1];
  *v28 = *v40;
  *(v28 + 16) = v30;
  *(v28 + 32) = *(v29 + 32);
  *(v28 + 48) = *(v29 + 48);
  v31 = v26 + ((v25 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v31 = v44;
  *(v31 + 8) = v42;
  aBlock[4] = sub_1DEEA9C34;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_529;
  v32 = _Block_copy(aBlock);
  sub_1DEE39150(v50, v27);

  sub_1DEEA8BAC(v29, v51);
  v33 = v41;
  sub_1DEF8D6B8();
  v51[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v34 = v45;
  v35 = v47;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v33, v34, v32);
  _Block_release(v32);
  (*(v49 + 8))(v34, v35);
  (*(v46 + 8))(v33, v48);
}

void sub_1DEE7EFD0(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, char a9)
{
  v76 = a8;
  v77 = a6;
  v78 = a7;
  v13 = sub_1DEF8D3F8();
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  if (a2)
  {
    v80 = a1;
    v25 = a1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v85[0] == 2)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v27 = sub_1DEF8D508();
      __swift_project_value_buffer(v27, qword_1ECDF6028);
      sub_1DEEACA70(a4, v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEE39150(a1, 1);

      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v28, v29))
      {
        LODWORD(v73) = v29;
        v76 = v28;
        v74 = v26;
        v30 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v81 = v72;
        *v30 = 136446978;
        *(v30 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v81);
        *(v30 + 12) = 2082;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v31 = sub_1DEF8E2E8();
        v33 = v32;
        sub_1DEE273A0(v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v34 = sub_1DEE12A5C(v31, v33, &v81);

        *(v30 + 14) = v34;
        *(v30 + 22) = 2082;
        v35 = swift_projectBox();
        swift_beginAccess();
        v36 = type metadata accessor for PairingRelationship(0);
        if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
        {
          v37 = v75;
          (*(v75 + 16))(v18, v35, v13);

          v38 = sub_1DEF8E2E8();
          v40 = v39;
          (*(v37 + 8))(v18, v13);
          v41 = sub_1DEE12A5C(v38, v40, &v81);

          *(v30 + 24) = v41;
          *(v30 + 32) = 2082;
          v79 = a1;
          v42 = a1;
          v43 = sub_1DEF8D988();
          v45 = sub_1DEE12A5C(v43, v44, &v81);

          *(v30 + 34) = v45;
          v46 = v76;
          _os_log_impl(&dword_1DEE0F000, v76, v73, "(%{public}s) Handshake request for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v30, 0x2Au);
          v47 = v72;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v47, -1, -1);
          MEMORY[0x1E12CCD70](v30, -1, -1);

LABEL_21:
          sub_1DEE7F920(v77);
          sub_1DEE7D6B8(*v78, *(v78 + 8));

          return;
        }

        goto LABEL_27;
      }

LABEL_20:

      sub_1DEE273A0(v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
      goto LABEL_21;
    }

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v48 = sub_1DEF8D508();
    __swift_project_value_buffer(v48, qword_1ECDF6028);
    sub_1DEEACA70(a4, v21, type metadata accessor for ReplicatorMessage.Handshake.Request);
    sub_1DEE39150(a1, 1);

    v49 = sub_1DEF8D4D8();
    v50 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v72) = v50;
      v73 = v49;
      v74 = v26;
      v24 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v83[0] = v71;
      *v24 = 136446978;
      *(v24 + 4) = sub_1DEE12A5C(a3[66], a3[67], v83);
      *(v24 + 6) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v51 = sub_1DEF8E2E8();
      v53 = v52;
      sub_1DEE273A0(v21, type metadata accessor for ReplicatorMessage.Handshake.Request);
      v54 = sub_1DEE12A5C(v51, v53, v83);

      *(v24 + 14) = v54;
      *(v24 + 11) = 2082;
      v55 = swift_projectBox();
      swift_beginAccess();
      v56 = type metadata accessor for PairingRelationship(0);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        goto LABEL_26;
      }

      v57 = v75;
      (*(v75 + 16))(v15, v55, v13);

      v58 = sub_1DEF8E2E8();
      v60 = v59;
      (*(v57 + 8))(v15, v13);
      v61 = sub_1DEE12A5C(v58, v60, v83);

      *(v24 + 3) = v61;
      *(v24 + 16) = 2082;
      v81 = a1;
      v62 = a1;
      v63 = sub_1DEF8D988();
      v65 = sub_1DEE12A5C(v63, v64, v83);

      *(v24 + 34) = v65;
      v66 = v73;
      _os_log_impl(&dword_1DEE0F000, v73, v72, "(%{public}s) Error sending handshake request for session %{public}s with relationship %{public}s: %{public}s", v24, 0x2Au);
      v67 = v71;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v67, -1, -1);
      MEMORY[0x1E12CCD70](v24, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v21, type metadata accessor for ReplicatorMessage.Handshake.Request);
    }

    sub_1DEE7F920(v77);
    v28 = a3[51];
    v68 = a3[52];
    __swift_project_boxed_opaque_existential_1(a3 + 48, v28);
    v69 = *(v78 + 16);
    v83[0] = *v78;
    v83[1] = v69;
    v83[2] = *(v78 + 32);
    v84 = *(v78 + 48);
    if (a9)
    {
      v70 = v76;
      if (a9 == 1)
      {
        v70 = (&v76->isa + 1);
        if (__OFADD__(v76, 1))
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      goto LABEL_23;
    }

    v70 = (&v76->isa + 1);
    if (!__OFADD__(v76, 1))
    {
LABEL_23:
      v81 = v70;
      v82 = a9;
      (*(v68 + 16))(v83, &v81, v28, v68);
      return;
    }

    __break(1u);
LABEL_26:

    __break(1u);
LABEL_27:

    __break(1u);
  }
}

uint64_t sub_1DEE7F920(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v2[29];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    (*(v5 + 16))(v7, a1, v4);
    swift_beginAccess();

    sub_1DEF32DDC(0, v7);
    swift_endAccess();

    v17 = v2[68];
    MEMORY[0x1EEE9AC00](v16);
    v26[-2] = v17;
    v26[-1] = a1;

    sub_1DEF8DD18();

    if (LOBYTE(v26[0]) == 1)
    {
      v18 = v2[51];
      v19 = v2[52];
      __swift_project_boxed_opaque_existential_1(v2 + 48, v18);
      v20 = a1 + *(type metadata accessor for SessionManager.Session(0) + 20);
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v24 = *(v20 + 32);
      v26[0] = *v20;
      v26[1] = v21;
      v26[2] = v23;
      v26[3] = v22;
      v27 = v24;
      v28 = *(v20 + 40);
      v25 = *(v19 + 24);

      v25(v26, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7FC18(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a1;
  v30 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - v18;
  v20 = *a3;
  v21 = *a5;
  if (*(a4 + 32) >= 7uLL)
  {
    v26 = a6[1];
    v27 = *a6;
    v34 = v20;
    v33 = v21;
    v32[0] = v27;
    v32[1] = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = a7;
    *(v28 + 24) = a8;
    v29 = *(a10 + 48);

    v29(v31, a2, &v34, a4, &v33, v32, sub_1DEEA9BF0, v28, v30, a10);
  }

  else
  {
    v22 = sub_1DEF8D1E8();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    LOBYTE(v32[0]) = v20;
    v34 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = a7;
    *(v23 + 24) = a8;
    v24 = *(a10 + 40);

    v24(v31, v19, v32, a4, &v34, sub_1DEEA9BF8, v23, v30, a10);

    return sub_1DEE171B4(v19, &qword_1ECDE4890, &qword_1DEF90990);
  }
}

void sub_1DEE7FE5C(unint64_t a1, uint64_t *a2, os_log_t a3)
{
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v297 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v298 = v7;
  v299 = &v284 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v300 = &v284 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v309 = &v284 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v307 = &v284 - v13;
  v306 = type metadata accessor for Message(0);
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v15 = &v284 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v304);
  v17 = (&v284 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v303 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v303);
  v308 = &v284 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v302);
  v310 = &v284 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v327 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v333 = &v284 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v317 = (&v284 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  ObjectType = (&v284 - v27);
  v344 = sub_1DEF8D3F8();
  isa = v344[-1].isa;
  MEMORY[0x1EEE9AC00](v344);
  v325 = &v284 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v341 = &v284 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v335 = &v284 - v32;
  v33 = type metadata accessor for ZoneVersion(0);
  v343 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v316 = &v284 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v329 = &v284 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v284 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v337 = &v284 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v318 = &v284 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v330 = &v284 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v340 = &v284 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v339 = (&v284 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v342 = (&v284 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D58, &qword_1DEF91670);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v332 = &v284 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v331 = &v284 - v55;
  v56 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v313 = &v284 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SessionManager.Session(0);
  v294 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v296 = &v284 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v59;
  MEMORY[0x1EEE9AC00](v60);
  v312 = &v284 - v61;
  v311 = type metadata accessor for PairingRelationship(0);
  v291 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v293 = &v284 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v301 = &v284 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v345 = (&v284 - v66);
  v292 = v67;
  MEMORY[0x1EEE9AC00](v68);
  v314 = &v284 - v69;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v70 = sub_1DEF8D508();
    v71 = __swift_project_value_buffer(v70, qword_1ECDF6028);

    v348 = v71;
    v72 = sub_1DEF8D4D8();
    v73 = sub_1DEF8DCB8();

    v74 = os_log_type_enabled(v72, v73);
    v328 = v15;
    v338 = v39;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v355 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v355);
      _os_log_impl(&dword_1DEE0F000, v72, v73, "(%{public}s) [Send Response] Sending handshake response", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1E12CCD70](v76, -1, -1);
      MEMORY[0x1E12CCD70](v75, -1, -1);
    }

    if (a1)
    {

      v77 = a1;
      v78 = sub_1DEF8D4D8();
      v79 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v355 = v82;
        *v80 = 136446466;
        *(v80 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v355);
        *(v80 + 12) = 2114;
        v83 = a1;
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 14) = v84;
        *v81 = v84;
        _os_log_impl(&dword_1DEE0F000, v78, v79, "(%{public}s) [Send Response] Abandoning handshake response because prerequisites are not met: %{public}@", v80, 0x16u);
        sub_1DEE171B4(v81, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v81, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1E12CCD70](v82, -1, -1);
        MEMORY[0x1E12CCD70](v80, -1, -1);
      }

      sub_1DEE7D6B8(*(&a3->isa + *(v6 + 24)), *(&a3[1].isa + *(v6 + 24)));

      return;
    }

    if ((a2[78] & 1) == 0)
    {
      break;
    }

    v289 = v17;
    v85 = *(v6 + 20);
    v86 = a3 + *(v6 + 24);
    v87 = *(&a3[1].isa + v85);
    v355 = *(&a3->isa + v85);
    v356 = v87;
    sub_1DEE4F8C0(v355, v87);
    v290 = a3;
    v88 = v314;
    sub_1DEE5F828(v86, &v355, 0, 1, v314);
    sub_1DEE4F8D4(v355, v356);
    v89 = (v88 + *(v311 + 20));
    sub_1DEE7D6B8(*v89, v89[1]);
    sub_1DEE7DB50(v88);
    v90 = *(v86 + 1);
    v92 = v89[20];
    v91 = v89[21];
    v93 = v86[48];
    v288 = *v86;
    v355 = v288;
    v356 = v90;
    v357 = v92;
    v358 = v91;
    v359 = v93;
    v360 = *(v86 + 2);
    v94 = a2[68];
    MEMORY[0x1EEE9AC00](v91);
    *(&v284 - 4) = v290;
    *(&v284 - 3) = &v355;
    v282 = v94;
    v283 = 0;

    v287 = v90;

    sub_1DEF8DD18();
    v286 = 0;
    sub_1DEEA8CAC(&v355);

    sub_1DEE53BFC();
    sub_1DEE69B50(v313);
    v95 = sub_1DEE7DE50(v88);
    v96 = sub_1DEEA9148(v95, v89);

    v97 = *(&v290->isa + *(v6 + 28));
    v285 = v89;
    v98 = sub_1DEEA9D88(v97, v89);
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), &v351);
    v100 = v353;
    v99 = v354;
    __swift_project_boxed_opaque_existential_1(&v351, v353);
    v101 = MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(v88, v98, v100, *(v99 + 8));

    __swift_destroy_boxed_opaque_existential_1(&v351);
    sub_1DEE29594((a2 + 24), &v351);
    v103 = v353;
    v102 = v354;
    __swift_project_boxed_opaque_existential_1(&v351, v353);

    v320 = v101;
    v105 = sub_1DEE4FCFC(v104);
    v319 = MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(v88, v105, v103, *(v102 + 8));

    __swift_destroy_boxed_opaque_existential_1(&v351);
    v17 = v345;
    sub_1DEEACA70(v88, v345, type metadata accessor for PairingRelationship);

    v106 = sub_1DEF8D4D8();
    v107 = sub_1DEF8DCB8();

    v108 = os_log_type_enabled(v106, v107);
    v321 = v96;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v351 = v110;
      *v109 = 136446466;
      *(v109 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v351);
      *(v109 + 12) = 2082;
      v111 = PairingRelationship.description.getter();
      v113 = v112;
      sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
      v114 = sub_1DEE12A5C(v111, v113, &v351);
      v96 = v321;

      *(v109 + 14) = v114;
      _os_log_impl(&dword_1DEE0F000, v106, v107, "(%{public}s) [Send Response] Found pairing relationship: %{public}s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v110, -1, -1);
      MEMORY[0x1E12CCD70](v109, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
    }

    a3 = v339;
    v39 = v332;

    v119 = sub_1DEF8D4D8();
    v120 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v351 = v122;
      *v121 = 136446466;
      *(v121 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v351);
      *(v121 + 12) = 2050;
      *(v121 + 14) = v96[2];

      _os_log_impl(&dword_1DEE0F000, v119, v120, "(%{public}s) [Send Response] Local zone versions (%{public}ld)", v121, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x1E12CCD70](v122, -1, -1);
      MEMORY[0x1E12CCD70](v121, -1, -1);
    }

    else
    {
    }

    a1 = v340;
    v15 = (v96 + 8);
    v123 = 1 << *(v96 + 32);
    v124 = -1;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    v125 = v124 & v96[8];
    v315 = (v123 + 63) >> 6;
    v323 = (isa + 48);
    v345 = (isa + 32);
    v334 = (isa + 8);

    v6 = 0;
    *&v126 = 136446722;
    v336 = v126;
    v347 = a2;
    for (i = v15; ; v15 = i)
    {
      if (!v125)
      {
        if (v315 <= v6 + 1)
        {
          v128 = v6 + 1;
        }

        else
        {
          v128 = v315;
        }

        v129 = v128 - 1;
        while (1)
        {
          v127 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v127 >= v315)
          {
            a2 = &qword_1ECDE3D60;
            v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
            (*(*(v156 - 8) + 56))(v39, 1, 1, v156);
            v125 = 0;
            v6 = v129;
            goto LABEL_36;
          }

          v125 = *(v15 + 8 * v127);
          ++v6;
          if (v125)
          {
            v6 = v127;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_104;
      }

      v127 = v6;
LABEL_35:
      v130 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v131 = v130 | (v127 << 6);
      v132 = (v321[6] + 16 * v131);
      v134 = *v132;
      v133 = v132[1];
      v135 = v342;
      sub_1DEEACA70(v321[7] + *(v343 + 9) * v131, v342, type metadata accessor for ZoneVersion);
      a2 = &qword_1ECDE3D60;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
      v137 = *(v136 + 48);
      *v39 = v134;
      *(v39 + 1) = v133;
      sub_1DEEAB218(v135, &v39[v137], type metadata accessor for ZoneVersion);
      (*(*(v136 - 8) + 56))(v39, 0, 1, v136);

      a1 = v340;
      a3 = v339;
LABEL_36:
      v138 = v331;
      sub_1DEE1BA88(v39, v331, &qword_1ECDE3D58, &qword_1DEF91670);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
      if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
      {
        break;
      }

      a2 = v347;
      v17 = *v138;
      v140 = *(v138 + 8);
      sub_1DEEAB218(v138 + *(v139 + 48), a3, type metadata accessor for ZoneVersion);
      sub_1DEEACA70(a3, a1, type metadata accessor for ZoneVersion);

      v141 = sub_1DEF8D4D8();
      v142 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = a1;
        v144 = swift_slowAlloc();
        v324 = swift_slowAlloc();
        v351 = v324;
        *v144 = v336;
        *(v144 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v351);
        *(v144 + 12) = 2082;
        v145 = sub_1DEE12A5C(v17, v140, &v351);

        *(v144 + 14) = v145;
        *(v144 + 22) = 2082;
        v146 = v143;
        v147 = v330;
        sub_1DEEACA70(v146, v330, type metadata accessor for ZoneVersion);
        v148 = v318;
        sub_1DEEACA70(v147, v318, type metadata accessor for ZoneVersion);
        v149 = v344;
        if ((*v323)(v148, 1, v344) == 1)
        {
          v150 = 0xE500000000000000;
          v151 = 0x7974706D65;
        }

        else
        {
          v152 = v335;
          (*v345)(v335, v148, v149);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v151 = sub_1DEF8E2E8();
          v150 = v153;
          (*v334)(v152, v149);
        }

        sub_1DEE273A0(v330, type metadata accessor for ZoneVersion);
        v154 = v340;
        sub_1DEE273A0(v340, type metadata accessor for ZoneVersion);
        a2 = sub_1DEE12A5C(v151, v150, &v351);

        *(v144 + 24) = a2;
        _os_log_impl(&dword_1DEE0F000, v141, v142, "(%{public}s) [Send Response] %{public}s: %{public}s", v144, 0x20u);
        v17 = v324;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v17, -1, -1);
        v155 = v144;
        a1 = v154;
        MEMORY[0x1E12CCD70](v155, -1, -1);

        a3 = v339;
      }

      else
      {

        sub_1DEE273A0(a1, type metadata accessor for ZoneVersion);
      }

      sub_1DEE273A0(a3, type metadata accessor for ZoneVersion);
      v39 = v332;
    }

    v15 = v347;

    v157 = v320;

    v158 = sub_1DEF8D4D8();
    v159 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v351 = v161;
      *v160 = 136446466;
      *(v160 + 4) = sub_1DEE12A5C(*(v15 + 528), *(v15 + 536), &v351);
      *(v160 + 12) = 2050;
      *(v160 + 14) = v157[2];

      _os_log_impl(&dword_1DEE0F000, v158, v159, "(%{public}s) [Send Response] Found mismatched zones (%{public}ld)", v160, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v161);
      MEMORY[0x1E12CCD70](v161, -1, -1);
      MEMORY[0x1E12CCD70](v160, -1, -1);
    }

    else
    {
    }

    v17 = v317;
    v6 = 0;
    v162 = (v157 + 8);
    v163 = 1 << *(v157 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v165 = v164 & v157[8];
    a1 = &qword_1ECDE3D18;
    a3 = ((v163 + 63) >> 6);
    v340 = v162;
    if (!v165)
    {
LABEL_50:
      if (a3 <= v6 + 1)
      {
        v167 = (v6 + 1);
      }

      else
      {
        v167 = a3;
      }

      v168 = &v167[-1].isa + 7;
      while (1)
      {
        v166 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v166 >= a3)
        {
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v193 - 8) + 56))(v17, 1, 1, v193);
          v165 = 0;
          v6 = v168;
          goto LABEL_59;
        }

        v165 = *(v162 + 8 * v166);
        ++v6;
        if (v165)
        {
          v6 = v166;
          goto LABEL_58;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    while (1)
    {
      v166 = v6;
LABEL_58:
      v169 = __clz(__rbit64(v165));
      v165 &= v165 - 1;
      v170 = v169 | (v166 << 6);
      v171 = *(v320[6] + 8 * v170);
      v172 = v342;
      sub_1DEEACA70(v320[7] + *(v343 + 9) * v170, v342, type metadata accessor for ZoneVersion);
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
      v174 = *(v173 + 48);
      *v17 = v171;
      sub_1DEEAB218(v172, v17 + v174, type metadata accessor for ZoneVersion);
      (*(*(v173 - 8) + 56))(v17, 0, 1, v173);

LABEL_59:
      v175 = ObjectType;
      sub_1DEE1BA88(v17, ObjectType, &qword_1ECDE3D10, &qword_1DEF91620);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
      if ((*(*(v176 - 8) + 48))(v175, 1, v176) == 1)
      {
        break;
      }

      v177 = *ObjectType;
      a2 = v15;
      v39 = v337;
      sub_1DEEAB218(ObjectType + *(v176 + 48), v337, type metadata accessor for ZoneVersion);
      v178 = v338;
      sub_1DEEACA70(v39, v338, type metadata accessor for ZoneVersion);

      v179 = sub_1DEF8D4D8();
      v180 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v179, v180))
      {
        LODWORD(v332) = v180;
        v339 = v179;
        v39 = swift_slowAlloc();
        v331 = swift_slowAlloc();
        v349 = v331;
        *v39 = v336;
        *(v39 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v349);
        *(v39 + 6) = 2082;
        v181 = v177[5];
        v351 = v177[4];
        v352 = v181;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v177[2], v177[3]);

        v182 = sub_1DEE12A5C(v351, v352, &v349);

        *(v39 + 14) = v182;
        *(v39 + 11) = 2082;
        v183 = v329;
        sub_1DEEACA70(v178, v329, type metadata accessor for ZoneVersion);
        v184 = v183;
        v185 = v316;
        sub_1DEEACA70(v184, v316, type metadata accessor for ZoneVersion);
        v186 = v344;
        if ((*v323)(v185, 1, v344) == 1)
        {
          a2 = 0xE500000000000000;
          v187 = 0x7974706D65;
        }

        else
        {
          v188 = v335;
          (*v345)(v335, v185, v186);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v187 = sub_1DEF8E2E8();
          a2 = v189;
          (*v334)(v188, v186);
        }

        v162 = v340;
        sub_1DEE273A0(v329, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v338, type metadata accessor for ZoneVersion);
        v190 = sub_1DEE12A5C(v187, a2, &v349);

        *(v39 + 3) = v190;
        v191 = v339;
        _os_log_impl(&dword_1DEE0F000, v339, v332, "(%{public}s) [Send Response] %{public}s: %{public}s", v39, 0x20u);
        v192 = v331;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v192, -1, -1);
        MEMORY[0x1E12CCD70](v39, -1, -1);

        sub_1DEE273A0(v337, type metadata accessor for ZoneVersion);
        v15 = v347;
        v17 = v317;
      }

      else
      {

        sub_1DEE273A0(v178, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v39, type metadata accessor for ZoneVersion);
        v15 = a2;
        v162 = v340;
      }

      a1 = &qword_1ECDE3D18;
      if (!v165)
      {
        goto LABEL_50;
      }
    }

    a2 = v15;

    v194 = v319;

    v195 = sub_1DEF8D4D8();
    v196 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v351 = v198;
      *v197 = 136446466;
      *(v197 + 4) = sub_1DEE12A5C(*(v15 + 528), *(v15 + 536), &v351);
      *(v197 + 12) = 2050;
      *(v197 + 14) = *(v194 + 16);

      _os_log_impl(&dword_1DEE0F000, v195, v196, "(%{public}s) [Send Response] Sending record versions (%{public}ld)", v197, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v198);
      MEMORY[0x1E12CCD70](v198, -1, -1);
      MEMORY[0x1E12CCD70](v197, -1, -1);
    }

    else
    {
    }

    v199 = v333;
    v200 = v341;
    v201 = *(v194 + 64);
    v340 = v194 + 64;
    v202 = 1 << *(v194 + 32);
    v203 = -1;
    if (v202 < 64)
    {
      v203 = ~(-1 << v202);
    }

    a1 = v203 & v201;
    v339 = ((v202 + 63) >> 6);
    v343 = isa + 16;

    for (j = 0; ; j = ObjectType)
    {
      v17 = &qword_1DEF91680;
      if (!a1)
      {
        break;
      }

      v15 = j;
      a3 = v344;
LABEL_86:
      v208 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v209 = v208 | (v15 << 6);
      v210 = *(*(v319 + 48) + 8 * v209);
      v211 = isa;
      v212 = v335;
      (*(isa + 2))(v335, *(v319 + 56) + *(isa + 9) * v209, a3);
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v214 = *(v213 + 48);
      v215 = v327;
      *v327 = v210;
      (*(v211 + 4))(&v215[v214], v212, a3);
      (*(*(v213 - 8) + 56))(v215, 0, 1, v213);

      v39 = v15;
      v216 = v215;
      v199 = v333;
      v200 = v341;
      a2 = v347;
LABEL_87:
      sub_1DEE1BA88(v216, v199, &qword_1ECDE3D50, &qword_1DEF91668);
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v218 = (*(*(v217 - 8) + 48))(v199, 1, v217);
      v219 = v328;
      if (v218 == 1)
      {
        v237 = v319;

        v238 = isa;
        v239 = a3;
        v240 = v310;
        (*(isa + 2))(v310, v290, v239);
        v241 = v314;
        v242 = (v314 + *(v311 + 32));
        v243 = *v242;
        v244 = v242[1];
        v245 = v302;
        sub_1DEEACA70(v313, v240 + *(v302 + 24), type metadata accessor for DeviceDescriptor);
        v246 = (v240 + v245[5]);
        *v246 = v243;
        v246[1] = v244;
        *(v240 + v245[7]) = v321;
        *(v240 + v245[8]) = v237;
        v247 = v308;
        sub_1DEEACA70(v240, v308, type metadata accessor for ReplicatorMessage.Handshake.Response);
        swift_storeEnumTagMultiPayload();
        v248 = v289;
        sub_1DEEACA70(v247, v289, type metadata accessor for ReplicatorMessage.Handshake);
        swift_storeEnumTagMultiPayload();
        v249 = v309;
        (*(v238 + 7))(v309, 1, 1, v239);
        sub_1DEE4F8C0(v243, v244);
        v250 = sub_1DEE5D178(v241);
        if (v251)
        {
          v252 = v301;
          sub_1DEEACA70(v241, v301, type metadata accessor for PairingRelationship);

          v253 = sub_1DEF8D4D8();
          v254 = sub_1DEF8DC98();

          if (os_log_type_enabled(v253, v254))
          {
            v255 = swift_slowAlloc();
            v256 = swift_slowAlloc();
            v351 = v256;
            *v255 = 136446466;
            *(v255 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v351);
            *(v255 + 12) = 2082;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v257 = sub_1DEF8E2E8();
            v259 = v258;
            sub_1DEE273A0(v252, type metadata accessor for PairingRelationship);
            v260 = sub_1DEE12A5C(v257, v259, &v351);

            *(v255 + 14) = v260;
            _os_log_impl(&dword_1DEE0F000, v253, v254, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v255, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v256, -1, -1);
            v261 = v255;
            v247 = v308;
            v248 = v289;
            MEMORY[0x1E12CCD70](v261, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v252, type metadata accessor for PairingRelationship);
          }

          v264 = v309;
LABEL_98:
          v265 = v306;
          v266 = v288;
          v267 = v287;
          sub_1DEE171B4(v264, &unk_1ECDE3E80, &unk_1DEF90970);
          v268 = v307;
          (*(v305 + 56))(v307, 1, 1, v265);
          sub_1DEE171B4(v268, &unk_1ECDE4E20, &unk_1DEF95B10);
          sub_1DEE7D6B8(v266, v267);
          sub_1DEE273A0(v248, type metadata accessor for ReplicatorMessage);
          v269 = v247;
        }

        else
        {
          v262 = v307;
          v263 = v286;
          sub_1DEE29904(v248, v250, v249, v307);
          if (v263)
          {

            v264 = v249;
            goto LABEL_98;
          }

          sub_1DEE171B4(v249, &unk_1ECDE3E80, &unk_1DEF90970);
          (*(v305 + 56))(v262, 0, 1, v306);
          sub_1DEEAB218(v262, v219, type metadata accessor for Message);
          if (qword_1ECDE37E8 != -1)
          {
            swift_once();
          }

          v270 = qword_1ECDF60B0;
          v271 = qword_1ECDF60B8;
          v348 = a2[23];
          ObjectType = swift_getObjectType();
          v272 = sub_1DEF8D1E8();
          v273 = v300;
          (*(*(v272 - 8) + 56))(v300, 1, 1, v272);
          LOBYTE(v349) = 0;
          v350 = 0;
          v351 = v270;
          v352 = v271;
          v274 = v299;
          sub_1DEEACA70(v290, v299, type metadata accessor for ReplicatorMessage.Handshake.Request);
          v275 = v293;
          sub_1DEEACA70(v314, v293, type metadata accessor for PairingRelationship);
          v276 = v296;
          sub_1DEEACA70(v312, v296, type metadata accessor for SessionManager.Session);
          v277 = (*(v297 + 80) + 24) & ~*(v297 + 80);
          v278 = (v298 + *(v291 + 80) + v277) & ~*(v291 + 80);
          v279 = (v292 + *(v294 + 80) + v278) & ~*(v294 + 80);
          v280 = swift_allocObject();
          *(v280 + 16) = a2;
          sub_1DEEAB218(v274, v280 + v277, type metadata accessor for ReplicatorMessage.Handshake.Request);
          sub_1DEEAB218(v275, v280 + v278, type metadata accessor for PairingRelationship);
          sub_1DEEAB218(v276, v280 + v279, type metadata accessor for SessionManager.Session);

          v281 = v328;
          sub_1DEE7FC18(v328, v273, &v349, v285, &v350, &v351, sub_1DEEAA98C, v280, ObjectType, v348);

          sub_1DEE171B4(v273, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v281, type metadata accessor for Message);
          sub_1DEE273A0(v289, type metadata accessor for ReplicatorMessage);
          v269 = v308;
        }

        sub_1DEE273A0(v269, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEE273A0(v310, type metadata accessor for ReplicatorMessage.Handshake.Response);
        sub_1DEE273A0(v313, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v312, type metadata accessor for SessionManager.Session);
        sub_1DEE273A0(v314, type metadata accessor for PairingRelationship);
        return;
      }

      ObjectType = v39;
      (*v345)(v200, v199 + *(v217 + 48), a3);
      v220 = v325;
      (*v343)(v325, v200, a3);

      v6 = sub_1DEF8D4D8();
      v221 = sub_1DEF8DC88();

      if (os_log_type_enabled(v6, v221))
      {
        v222 = swift_slowAlloc();
        v342 = swift_slowAlloc();
        v351 = v342;
        *v222 = v336;
        *(v222 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v351);
        *(v222 + 12) = 2082;

        v223 = Record.ID.description.getter();
        v225 = v224;

        v226 = sub_1DEE12A5C(v223, v225, &v351);

        *(v222 + 14) = v226;
        *(v222 + 22) = 2082;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v227 = sub_1DEF8E2E8();
        v229 = v228;
        v230 = v220;
        v231 = *v334;
        (*v334)(v230, a3);
        v232 = sub_1DEE12A5C(v227, v229, &v351);
        a2 = v347;

        *(v222 + 24) = v232;
        _os_log_impl(&dword_1DEE0F000, v6, v221, "(%{public}s) [Send Response] %{public}s: %{public}s", v222, 0x20u);
        v233 = v342;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v233, -1, -1);
        v234 = v222;
        v199 = v333;
        MEMORY[0x1E12CCD70](v234, -1, -1);

        v200 = v341;
        v231(v341, a3);
      }

      else
      {

        v205 = a3;
        v206 = *v334;
        (*v334)(v220, v205);
        v200 = v341;
        v206(v341, v205);
      }
    }

    if (v339 <= (j + 1))
    {
      v207 = (j + 1);
    }

    else
    {
      v207 = v339;
    }

    v39 = &v207[-1].isa + 7;
    a3 = v344;
    while (1)
    {
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v15 >= v339)
      {
        v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
        v236 = v327;
        (*(*(v235 - 8) + 56))(v327, 1, 1, v235);
        v216 = v236;
        a1 = 0;
        goto LABEL_87;
      }

      a1 = *(v340 + 8 * v15);
      j = (j + 1);
      if (a1)
      {
        goto LABEL_86;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v115 = sub_1DEF8D4D8();
  v116 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v355 = v118;
    *v117 = 136446210;
    *(v117 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v355);
    _os_log_impl(&dword_1DEE0F000, v115, v116, "(%{public}s) [Send Response] Abandoning handshake response because replicator is disabled", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x1E12CCD70](v118, -1, -1);
    MEMORY[0x1E12CCD70](v117, -1, -1);
  }

  sub_1DEE7D6B8(*(&a3->isa + *(v6 + 24)), *(&a3[1].isa + *(v6 + 24)));
}

uint64_t sub_1DEE82BEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a1;
  v27 = a5;
  v31 = a2;
  v8 = type metadata accessor for SessionManager.Session(0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEACA70(v27, v14, type metadata accessor for PairingRelationship);
  sub_1DEEACA70(v29, v10, type metadata accessor for SessionManager.Session);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  LOBYTE(a4) = v31 & 1;
  *(v22 + 24) = v31 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  sub_1DEEAB218(v10, v22 + v21, type metadata accessor for SessionManager.Session);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1DEEAA9B8;
  *(v24 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_557;
  v25 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a4);

  dispatch_sync(v32, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE82FCC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v18 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v73 - v23;
  if (a2)
  {
    v78 = v22;
    v81[0] = a1;
    v25 = a1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v84 == 2)
    {
      v77 = v26;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v27 = sub_1DEF8D508();
      __swift_project_value_buffer(v27, qword_1ECDF6028);
      sub_1DEEACA70(a4, v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEEACA70(a5, v17, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v76 = a4;
        v31 = v30;
        v75 = swift_slowAlloc();
        v80 = v75;
        *v31 = 136446978;
        *(v31 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), &v80);
        *(v31 + 12) = 2082;
        sub_1DEF8D3F8();
        LODWORD(v74) = v29;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v73 = v28;
        v32 = sub_1DEF8E2E8();
        v33 = a6;
        v35 = v34;
        sub_1DEE273A0(v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v36 = sub_1DEE12A5C(v32, v35, &v80);
        a6 = v33;

        *(v31 + 14) = v36;
        *(v31 + 22) = 2082;
        v37 = sub_1DEF8E2E8();
        v39 = v38;
        sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
        v40 = sub_1DEE12A5C(v37, v39, &v80);

        *(v31 + 24) = v40;
        *(v31 + 32) = 2082;
        v79 = a1;
        v41 = a1;
        v42 = sub_1DEF8D988();
        v44 = sub_1DEE12A5C(v42, v43, &v80);

        *(v31 + 34) = v44;
        v45 = v73;
        _os_log_impl(&dword_1DEE0F000, v73, v74, "(%{public}s) Handshake response for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v31, 0x2Au);
        v46 = v75;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v46, -1, -1);
        v47 = v31;
        a4 = v76;
        MEMORY[0x1E12CCD70](v47, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
      }

      sub_1DEE7F920(a6);
      sub_1DEE7D6B8(*(a4 + *(v78 + 24)), *(a4 + *(v78 + 24) + 8));
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v48 = sub_1DEF8D508();
      __swift_project_value_buffer(v48, qword_1ECDF6028);
      sub_1DEEACA70(a4, v20, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEEACA70(a5, v14, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v49 = sub_1DEF8D4D8();
      v50 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v76 = a4;
        v52 = v51;
        v74 = swift_slowAlloc();
        v81[0] = v74;
        *v52 = 136446978;
        *(v52 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), v81);
        *(v52 + 12) = 2082;
        sub_1DEF8D3F8();
        v75 = a6;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v77 = v26;
        LODWORD(v73) = v50;
        v53 = sub_1DEF8E2E8();
        v55 = v54;
        sub_1DEE273A0(v20, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v56 = sub_1DEE12A5C(v53, v55, v81);

        *(v52 + 14) = v56;
        *(v52 + 22) = 2082;
        a6 = v75;
        v57 = sub_1DEF8E2E8();
        v59 = v58;
        sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
        v60 = sub_1DEE12A5C(v57, v59, v81);

        *(v52 + 24) = v60;
        *(v52 + 32) = 2082;
        v80 = a1;
        v61 = a1;
        v62 = sub_1DEF8D988();
        v64 = sub_1DEE12A5C(v62, v63, v81);

        *(v52 + 34) = v64;
        _os_log_impl(&dword_1DEE0F000, v49, v73, "(%{public}s) Error sending handshake response for session %{public}s with relationship %{public}s: %{public}s", v52, 0x2Au);
        v65 = v74;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v65, -1, -1);
        v66 = v52;
        a4 = v76;
        MEMORY[0x1E12CCD70](v66, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v20, type metadata accessor for ReplicatorMessage.Handshake.Request);
      }

      sub_1DEE7F920(a6);
      v67 = a4 + *(v78 + 24);
      v68 = *(v67 + 8);
      v69 = *(v67 + 160);
      v70 = *(v67 + 168);
      v71 = *(v67 + 48);
      v81[0] = *v67;
      v81[1] = v68;
      v81[2] = v69;
      v81[3] = v70;
      v82 = v71;
      v83 = *(v67 + 32);
      v72 = *(a6 + *(type metadata accessor for SessionManager.Session(0) + 36));

      sub_1DEE8381C(v81, v72);
    }
  }
}

uint64_t sub_1DEE8381C(uint64_t *a1, unint64_t a2)
{
  v23 = a2;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = *(a1 + 32);
  v14 = a1[6];
  v21 = a1[5];
  v22 = v14;
  v15 = v2[29];
  *v8 = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  result = (*(v5 + 8))(v8, v4);
  if (v15)
  {
    v18 = v2[51];
    v19 = v2[52];
    __swift_project_boxed_opaque_existential_1(v2 + 48, v18);
    v26[0] = v10;
    v26[1] = v9;
    v26[2] = v12;
    v26[3] = v11;
    v27 = v13;
    v28 = v21;
    v29 = v22;
    if (v23 <= 8)
    {
      v24 = v23 + 1;
      v20 = 1;
    }

    else
    {
      v24 = 0;
      v20 = 2;
    }

    v25 = v20;
    return (*(v19 + 16))(v26, &v24, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE839DC(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t *a3)
{
  v345 = a3;
  *&v366 = a1;
  v350 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v313 = *(v350 - 1);
  MEMORY[0x1EEE9AC00](v350);
  v314 = v4;
  v315 = &v302 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v318 = &v302 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v333 = &v302 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v326 = &v302 - v10;
  v325 = type metadata accessor for Message(0);
  v324 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v12 = (&v302 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v323 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v323);
  v14 = &v302 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v322);
  v332 = &v302 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v310 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v312 = &v302 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v335 = &v302 - v18;
  v330 = sub_1DEF8D698();
  v331 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v329 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_1DEF8D6D8();
  v334 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v327 = &v302 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v357 = (&v302 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v355 = &v302 - v24;
  v25 = type metadata accessor for ZoneVersion(0);
  v352 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v341 = &v302 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  ObjectType = (&v302 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v364 = (&v302 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v302 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v351 = &v302 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v360 = &v302 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v359 = (&v302 - v39);
  v336 = type metadata accessor for PairingRelationship(0);
  v307 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v309 = &v302 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v319 = &v302 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v349 = &v302 - v44;
  v317 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v338 = &v302 - v47;
  v367 = sub_1DEF8D3F8();
  v353 = *(v367 - 1);
  v48 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v367);
  v354 = &v302 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v356 = (&v302 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v361 = &v302 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v53);
  isEscapingClosureAtFileLocation = &v302 - v54;
  v56 = type metadata accessor for SessionManager.Session(0);
  v339 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v308 = &v302 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v337 = &v302 - v59;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_95;
  }

LABEL_2:
  v60 = sub_1DEF8D508();
  v61 = __swift_project_value_buffer(v60, qword_1ECDF6028);

  v369 = v61;
  v62 = sub_1DEF8D4D8();
  v63 = sub_1DEF8DCB8();

  v64 = os_log_type_enabled(v62, v63);
  v368 = a2;
  v343 = v33;
  v320 = v12;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_1DEE12A5C(*(a2 + 66), *(a2 + 67), &aBlock);
    _os_log_impl(&dword_1DEE0F000, v62, v63, "(%{public}s) Sending handshake complete", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x1E12CCD70](v66, -1, -1);
    MEMORY[0x1E12CCD70](v65, -1, -1);
  }

  v68 = v366;
  if (v366)
  {
    v69 = v368;

    v70 = v68;
    v71 = sub_1DEF8D4D8();
    v72 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v73 = 136446466;
      *(v73 + 4) = sub_1DEE12A5C(*(v69 + 66), *(v69 + 67), &aBlock);
      *(v73 + 12) = 2114;
      v76 = v68;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v77;
      *v74 = v77;
      _os_log_impl(&dword_1DEE0F000, v71, v72, "(%{public}s) Abandoning handshake complete because prerequisites are not met: %{public}@", v73, 0x16u);
      sub_1DEE171B4(v74, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v73, -1, -1);
    }

    sub_1DEE7D6B8(*(v345 + *(v350 + 6)), *(v345 + *(v350 + 6) + 8));

    return;
  }

  v305 = v14;
  v78 = v368;
  v79 = *(v368 + 68);
  MEMORY[0x1EEE9AC00](v67);
  v300 = v79;
  v301 = v345;

  sub_1DEF8DD18();

  if ((*(v339 + 48))(isEscapingClosureAtFileLocation, 1, v56) == 1)
  {
    sub_1DEE171B4(isEscapingClosureAtFileLocation, &qword_1ECDE3D08, &unk_1DEF95E50);

    v80 = sub_1DEF8D4D8();
    v81 = sub_1DEF8DC98();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_1DEE12A5C(*(v78 + 66), *(v78 + 67), &aBlock);
      _os_log_impl(&dword_1DEE0F000, v80, v81, "(%{public}s) No session established", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x1E12CCD70](v83, -1, -1);
      MEMORY[0x1E12CCD70](v82, -1, -1);
    }

    sub_1DEE7D6B8(*(v345 + *(v350 + 6)), *(v345 + *(v350 + 6) + 8));
    return;
  }

  v84 = v337;
  sub_1DEEAB218(isEscapingClosureAtFileLocation, v337, type metadata accessor for SessionManager.Session);
  v12 = v78;
  if (*(v78 + 624) != 1)
  {

    v107 = sub_1DEF8D4D8();
    v108 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      *v109 = 136446210;
      *(v109 + 4) = sub_1DEE12A5C(*(v78 + 66), *(v78 + 67), &aBlock);
      _os_log_impl(&dword_1DEE0F000, v107, v108, "(%{public}s) Abandoning handshake request because replicator is disabled", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x1E12CCD70](v110, -1, -1);
      MEMORY[0x1E12CCD70](v109, -1, -1);
    }

    sub_1DEE7D6B8(*(v345 + *(v350 + 6)), *(v345 + *(v350 + 6) + 8));
    v111 = type metadata accessor for SessionManager.Session;
    v112 = v84;
    goto LABEL_106;
  }

  v302 = 0;
  v85 = *(v78 + 68);
  isa = v85[4].isa;
  v87 = v353;
  v88 = *(v353 + 16);
  v89 = v361;
  v90 = v367;
  v363 = v353 + 16;
  v362 = v88;
  (v88)(v361, v84, v367);
  v91 = (*(v87 + 80) + 24) & ~*(v87 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = v85;
  v93 = *(v87 + 32);
  *&v366 = v87 + 32;
  v365 = v93;
  v93((v92 + v91), v89, v90);
  *(v48 + v91 + v92) = 1;
  v94 = swift_allocObject();
  v94[2] = sub_1DEEACDAC;
  v94[3] = v92;
  v375 = sub_1DEE46D40;
  v376 = v94;
  aBlock = MEMORY[0x1E69E9820];
  v372 = 1107296256;
  v373 = sub_1DEE134F4;
  v374 = &block_descriptor_595;
  v95 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(isa, v95);
  _Block_release(v95);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_97;
  }

  v96 = v350;
  v97 = *(v350 + 6);
  v98 = v345;
  v99 = (v345 + *(v350 + 5));
  v100 = v99[1];
  aBlock = *v99;
  v372 = v100;
  sub_1DEE4F8C0(aBlock, v100);
  v101 = v338;
  sub_1DEE5F828((v98 + v97), &aBlock, 0, 1, v338);
  sub_1DEE4F8D4(aBlock, v372);
  v102 = *(v98 + *(v96 + 7));
  v303 = (v101 + *(v336 + 20));
  v103 = sub_1DEEA9D88(v102, v303);
  swift_beginAccess();
  sub_1DEE29594((v12 + 24), &aBlock);
  v104 = v374;
  v91 = v375;
  __swift_project_boxed_opaque_existential_1(&aBlock, v374);
  v105 = MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(v101, v103, v104, *(v91 + 8));

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v85 = v105[2];
  v33 = v343;
  v344 = v105;
  if (v85)
  {
    v304 = sub_1DEF30800();
    v106 = sub_1DEF2DF64(&aBlock, (v304 + 32), v85, v105);
    isEscapingClosureAtFileLocation = aBlock;
    v94 = v372;
    v95 = v373;
    v12 = v375;

    sub_1DEE2774C(isEscapingClosureAtFileLocation);
    if (v106 != v85)
    {
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v12 = v368;
  }

  else
  {
    v304 = MEMORY[0x1E69E7CC0];
  }

  sub_1DEE29594((v12 + 24), &aBlock);
  v114 = v374;
  v113 = v375;
  __swift_project_boxed_opaque_existential_1(&aBlock, v374);

  v116 = sub_1DEE4FCFC(v115);
  v342 = MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(v101, v116, v114, *(v113 + 1));

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v117 = *(v345 + *(v350 + 8));
  swift_beginAccess();
  v94 = v12[84];
  isEscapingClosureAtFileLocation = v94[2];
  v118 = MEMORY[0x1E69E7CC0];
  if (isEscapingClosureAtFileLocation)
  {
    v91 = v117;
    v119 = sub_1DEF2B2A4(v94[2], 0);
    v95 = sub_1DEF2DE0C(&aBlock, v119 + 4, isEscapingClosureAtFileLocation, v94);
    v120 = aBlock;
    v12 = v372;
    v85 = v374;
    LOBYTE(v106) = v375;

    sub_1DEE2774C(v120);
    if (v95 != isEscapingClosureAtFileLocation)
    {
      goto LABEL_111;
    }

    v12 = v368;
    v33 = v343;
    v117 = v91;
    v118 = v119;
  }

  isEscapingClosureAtFileLocation = v12[27];
  v121 = v12[28];
  v122 = __swift_project_boxed_opaque_existential_1(v12 + 24, isEscapingClosureAtFileLocation);
  v350 = &v302;
  v123 = *(isEscapingClosureAtFileLocation - 8);
  v124 = MEMORY[0x1EEE9AC00](v122);
  v126 = &v302 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v123 + 16))(v126, v124);
  swift_beginAccess();

  sub_1DEF653EC(v127);
  v129 = v128;

  v130 = v338;
  v306 = sub_1DEED02EC(v338, v117, v304, v118, v126, v129, v131, isEscapingClosureAtFileLocation, *(v121 + 8));

  (*(v123 + 8))(v126, isEscapingClosureAtFileLocation);
  v132 = v349;
  sub_1DEEACA70(v130, v349, type metadata accessor for PairingRelationship);

  v133 = sub_1DEF8D4D8();
  v134 = sub_1DEF8DCB8();

  v135 = os_log_type_enabled(v133, v134);
  a2 = MEMORY[0x1E69E7CA0];
  if (v135)
  {
    isEscapingClosureAtFileLocation = swift_slowAlloc();
    v136 = swift_slowAlloc();
    aBlock = v136;
    *isEscapingClosureAtFileLocation = 136446466;
    *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
    *(isEscapingClosureAtFileLocation + 12) = 2082;
    v137 = PairingRelationship.description.getter();
    v139 = v138;
    sub_1DEE273A0(v132, type metadata accessor for PairingRelationship);
    v140 = sub_1DEE12A5C(v137, v139, &aBlock);

    *(isEscapingClosureAtFileLocation + 14) = v140;
    _os_log_impl(&dword_1DEE0F000, v133, v134, "(%{public}s) [Send Complete] Found pairing relationship: %{public}s", isEscapingClosureAtFileLocation, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v136, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v132, type metadata accessor for PairingRelationship);
  }

  v141 = v344;

  v142 = sub_1DEF8D4D8();
  v143 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v142, v143))
  {
    isEscapingClosureAtFileLocation = swift_slowAlloc();
    v144 = swift_slowAlloc();
    aBlock = v144;
    *isEscapingClosureAtFileLocation = 136446466;
    *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
    *(isEscapingClosureAtFileLocation + 12) = 2050;
    *(isEscapingClosureAtFileLocation + 14) = v141[2];

    _os_log_impl(&dword_1DEE0F000, v142, v143, "(%{public}s) [Send Complete] Found mismatched zones (%{public}ld:", isEscapingClosureAtFileLocation, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v144);
    MEMORY[0x1E12CCD70](v144, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);
  }

  else
  {
  }

  v146 = v360;
  v14 = 0;
  v147 = (v141 + 8);
  v148 = 1 << *(v141 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v56 = v149 & v141[8];
  v48 = ((v148 + 63) >> 6);
  v340 = (v353 + 48);
  v350 = (v353 + 8);
  *&v145 = 136446722;
  v346 = v145;
  v349 = v147;
  while (2)
  {
    if (v56)
    {
      v150 = v33;
      v151 = v14;
      goto LABEL_47;
    }

    if (v48 <= (v14 + 1))
    {
      v152 = (v14 + 1);
    }

    else
    {
      v152 = v48;
    }

    v153 = v152 - 1;
    do
    {
      v151 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
        goto LABEL_2;
      }

      if (v151 >= v48)
      {
        v150 = v33;
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        (*(*(v176 - 8) + 56))(v146, 1, 1, v176);
        v56 = 0;
        v14 = v153;
        goto LABEL_48;
      }

      v56 = *(v147 + 8 * v151);
      ++v14;
    }

    while (!v56);
    v150 = v33;
    v14 = v151;
LABEL_47:
    v154 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v155 = v154 | (v151 << 6);
    v156 = *(v344[6] + 8 * v155);
    v157 = v351;
    sub_1DEEACA70(v344[7] + *(v352 + 72) * v155, v351, type metadata accessor for ZoneVersion);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    v159 = *(v158 + 48);
    *v146 = v156;
    sub_1DEEAB218(v157, v146 + v159, type metadata accessor for ZoneVersion);
    (*(*(v158 - 8) + 56))(v146, 0, 1, v158);

LABEL_48:
    v160 = v359;
    sub_1DEE1BA88(v146, v359, &qword_1ECDE3D10, &qword_1DEF91620);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    if ((*(*(v161 - 8) + 48))(v160, 1, v161) != 1)
    {
      isEscapingClosureAtFileLocation = *v160;
      v33 = v150;
      sub_1DEEAB218(v160 + *(v161 + 48), v150, type metadata accessor for ZoneVersion);
      v162 = v150;
      a2 = v364;
      sub_1DEEACA70(v162, v364, type metadata accessor for ZoneVersion);
      v12 = v368;

      v163 = sub_1DEF8D4D8();
      v164 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v163, v164))
      {
        v348 = v164;
        v165 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        *&v370[1] = v347;
        *v165 = v346;
        *(v165 + 4) = sub_1DEE12A5C(v12[66], v12[67], &v370[1]);
        *(v165 + 12) = 2082;
        v166 = *(isEscapingClosureAtFileLocation + 40);
        aBlock = *(isEscapingClosureAtFileLocation + 32);
        v372 = v166;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](*(isEscapingClosureAtFileLocation + 16), *(isEscapingClosureAtFileLocation + 24));

        v167 = sub_1DEE12A5C(aBlock, v372, &v370[1]);

        *(v165 + 14) = v167;
        *(v165 + 22) = 2082;
        v168 = a2;
        v169 = ObjectType;
        sub_1DEEACA70(v168, ObjectType, type metadata accessor for ZoneVersion);
        v170 = v341;
        sub_1DEEACA70(v169, v341, type metadata accessor for ZoneVersion);
        a2 = v367;
        if ((*v340)(v170, 1, v367) == 1)
        {
          v171 = 0xE500000000000000;
          v172 = 0x7974706D65;
        }

        else
        {
          v173 = v361;
          v365(v361, v170, a2);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v172 = sub_1DEF8E2E8();
          v171 = v174;
          (*v350)(v173, a2);
        }

        sub_1DEE273A0(ObjectType, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v364, type metadata accessor for ZoneVersion);
        v175 = sub_1DEE12A5C(v172, v171, &v370[1]);

        *(v165 + 24) = v175;
        _os_log_impl(&dword_1DEE0F000, v163, v348, "(%{public}s) [Send Complete] %{public}s: %{public}s", v165, 0x20u);
        v12 = v347;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v12, -1, -1);
        MEMORY[0x1E12CCD70](v165, -1, -1);

        v33 = v343;
      }

      else
      {

        sub_1DEE273A0(a2, type metadata accessor for ZoneVersion);
      }

      sub_1DEE273A0(v33, type metadata accessor for ZoneVersion);
      v146 = v360;
      v147 = v349;
      continue;
    }

    break;
  }

  v12 = v368;

  v177 = v342;

  v178 = sub_1DEF8D4D8();
  v179 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    aBlock = v181;
    *v180 = 136446466;
    *(v180 + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
    *(v180 + 12) = 2050;
    *(v180 + 14) = *(v177 + 16);

    _os_log_impl(&dword_1DEE0F000, v178, v179, "(%{public}s) [Send Complete] Sending record versions (%{public}ld:", v180, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v181);
    MEMORY[0x1E12CCD70](v181, -1, -1);
    MEMORY[0x1E12CCD70](v180, -1, -1);
  }

  else
  {
  }

  v14 = v367;
  a2 = v357;
  v48 = v356;
  v182 = *(v177 + 64);
  v359 = (v177 + 64);
  v183 = 1 << *(v177 + 32);
  v184 = -1;
  if (v183 < 64)
  {
    v184 = ~(-1 << v183);
  }

  isEscapingClosureAtFileLocation = v184 & v182;
  ObjectType = ((v183 + 63) >> 6);

  v185 = 0;
  while (1)
  {
    v94 = &qword_1DEF91680;
    if (isEscapingClosureAtFileLocation)
    {
      v56 = v185;
LABEL_72:
      v188 = __clz(__rbit64(isEscapingClosureAtFileLocation));
      isEscapingClosureAtFileLocation &= isEscapingClosureAtFileLocation - 1;
      v189 = v188 | (v56 << 6);
      v190 = *(*(v342 + 48) + 8 * v189);
      v191 = v361;
      (v362)(v361, *(v342 + 56) + *(v353 + 72) * v189, v14);
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v193 = *(v192 + 48);
      *a2 = v190;
      v365(a2 + v193, v191, v14);
      v194 = *(*(v192 - 8) + 56);
      v195 = v192;
      v94 = &qword_1DEF91680;
      v194(a2, 0, 1, v195);

      v33 = v56;
    }

    else
    {
      v187 = ObjectType <= v185 + 1 ? v185 + 1 : ObjectType;
      v33 = (v187 - 1);
      while (1)
      {
        v56 = v185 + 1;
        if (__OFADD__(v185, 1))
        {
          goto LABEL_94;
        }

        if (v56 >= ObjectType)
        {
          break;
        }

        isEscapingClosureAtFileLocation = v359[v56];
        v185 = (v185 + 1);
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_72;
        }
      }

      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v214 - 8) + 56))(a2, 1, 1, v214);
      isEscapingClosureAtFileLocation = 0;
    }

    v196 = a2;
    v197 = v355;
    sub_1DEE1BA88(v196, v355, &qword_1ECDE3D50, &qword_1DEF91668);
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
    v199 = (*(*(v198 - 8) + 48))(v197, 1, v198);
    v200 = v354;
    if (v199 == 1)
    {
      break;
    }

    v364 = v33;
    v365(v48, v197 + *(v198 + 48), v14);
    (v362)(v200, v48, v14);

    v201 = sub_1DEF8D4D8();
    v202 = sub_1DEF8DC88();

    if (os_log_type_enabled(v201, v202))
    {
      v203 = v200;
      v204 = swift_slowAlloc();
      v360 = swift_slowAlloc();
      aBlock = v360;
      *v204 = v346;
      *(v204 + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
      *(v204 + 12) = 2082;

      v205 = Record.ID.description.getter();
      v207 = v206;

      v208 = sub_1DEE12A5C(v205, v207, &aBlock);

      *(v204 + 14) = v208;
      *(v204 + 22) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v209 = sub_1DEF8E2E8();
      v211 = v210;
      v186 = *v350;
      (*v350)(v203, v367);
      v212 = sub_1DEE12A5C(v209, v211, &aBlock);
      v12 = v368;

      *(v204 + 24) = v212;
      _os_log_impl(&dword_1DEE0F000, v201, v202, "(%{public}s) [Send Complete] %{public}s: %{public}s", v204, 0x20u);
      v213 = v360;
      swift_arrayDestroy();
      v14 = v367;
      MEMORY[0x1E12CCD70](v213, -1, -1);
      MEMORY[0x1E12CCD70](v204, -1, -1);
    }

    else
    {

      v186 = *v350;
      (*v350)(v200, v14);
    }

    v48 = v356;
    v186(v356, v14);
    v185 = v364;
    a2 = v357;
  }

  v95 = v306;

  v85 = sub_1DEF8D4D8();
  LOBYTE(v106) = sub_1DEF8DCB8();

  v91 = v95 >> 62;
  if (!os_log_type_enabled(v85, v106))
  {

    goto LABEL_82;
  }

  isEscapingClosureAtFileLocation = swift_slowAlloc();
  v94 = swift_slowAlloc();
  aBlock = v94;
  *isEscapingClosureAtFileLocation = 136446466;
  *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
  *(isEscapingClosureAtFileLocation + 12) = 2050;
  if (v91)
  {
    goto LABEL_113;
  }

  for (i = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DEF8DE68())
  {
    *(isEscapingClosureAtFileLocation + 14) = i;

    _os_log_impl(&dword_1DEE0F000, v85, v106, "(%{public}s) [Send Complete] Found mismatched records (%{public}ld)", isEscapingClosureAtFileLocation, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x1E12CCD70](v94, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);

LABEL_82:
    if (v91)
    {
LABEL_97:
      v106 = sub_1DEF8DE68();
      if (!v106)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v106 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v106)
      {
        goto LABEL_98;
      }
    }

    if (v106 >= 1)
    {
      break;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    ;
  }

  v217 = 0;
  v218 = v95 & 0xC000000000000001;
  *&v216 = 136446466;
  v366 = v216;
  do
  {
    if (v218)
    {
      MEMORY[0x1E12CB6E0](v217, v95);
    }

    else
    {
    }

    v226 = sub_1DEF8D4D8();
    v227 = sub_1DEF8DC88();

    if (os_log_type_enabled(v226, v227))
    {
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      aBlock = v220;
      *v219 = v366;
      *(v219 + 4) = sub_1DEE12A5C(v12[66], v12[67], &aBlock);
      *(v219 + 12) = 2082;

      v221 = Record.ID.description.getter();
      v223 = v222;

      v224 = sub_1DEE12A5C(v221, v223, &aBlock);
      v12 = v368;

      *(v219 + 14) = v224;
      _os_log_impl(&dword_1DEE0F000, v226, v227, "(%{public}s) [Send Complete] %{public}s", v219, 0x16u);
      swift_arrayDestroy();
      v225 = v220;
      v95 = v306;
      MEMORY[0x1E12CCD70](v225, -1, -1);
      MEMORY[0x1E12CCD70](v219, -1, -1);
    }

    else
    {
    }

    ++v217;
  }

  while (v106 != v217);
LABEL_98:
  v228 = v95;
  v229 = v345;
  sub_1DEE79004(v228, v345);

  sub_1DEE7D6B8(*v303, v303[1]);
  sub_1DEE53BFC();
  v230 = v12[29];
  v375 = sub_1DEEACDB0;
  v376 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v372 = 1107296256;
  v373 = sub_1DEE3F0C0;
  v374 = &block_descriptor_598;
  v231 = _Block_copy(&aBlock);

  v232 = v327;
  sub_1DEF8D6B8();
  *&v370[1] = MEMORY[0x1E69E7CC0];
  v233 = sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  v235 = sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v236 = v329;
  v364 = v234;
  v361 = v235;
  v237 = v330;
  v365 = v233;
  sub_1DEF8DE08();
  *&v366 = v230;
  MEMORY[0x1E12CB4D0](0, v232, v236, v231);
  _Block_release(v231);
  v238 = v331 + 8;
  v360 = *(v331 + 8);
  (v360)(v236, v237);
  v239 = *(v334 + 8);
  v334 += 8;
  v359 = v239;
  (v239)(v232, v328);

  MEMORY[0x1EEE9AC00](v240);
  v241 = v338;
  v300 = v338;
  v242 = v302;
  v243 = sub_1DEE78E38(sub_1DEEAACEC, (&v302 - 4), v304);

  v244 = v335;
  v245 = v367;
  (v362)(v335, v229, v367);
  v246 = (v241 + *(v336 + 32));
  v247 = *v246;
  v248 = v246[1];
  v249 = v321;
  v250 = (v244 + *(v321 + 20));
  *v250 = v247;
  v250[1] = v248;
  *(v244 + *(v249 + 24)) = v243;
  *(v244 + *(v249 + 28)) = v342;
  v251 = v332;
  sub_1DEEACA70(v244, v332, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  swift_storeEnumTagMultiPayload();
  v252 = v305;
  sub_1DEEACA70(v251, v305, type metadata accessor for ReplicatorMessage.Handshake);
  swift_storeEnumTagMultiPayload();
  v253 = v333;
  (*(v353 + 56))(v333, 1, 1, v245);
  v254 = v247;
  v255 = v368;
  sub_1DEE4F8C0(v254, v248);
  v256 = sub_1DEE5D178(v241);
  if (v257)
  {
    v258 = v319;
    sub_1DEEACA70(v241, v319, type metadata accessor for PairingRelationship);

    v259 = sub_1DEF8D4D8();
    v260 = sub_1DEF8DC98();

    v261 = os_log_type_enabled(v259, v260);
    v262 = v326;
    if (v261)
    {
      v263 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      aBlock = v264;
      *v263 = 136446466;
      *(v263 + 4) = sub_1DEE12A5C(*(v255 + 66), *(v255 + 67), &aBlock);
      *(v263 + 12) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v265 = sub_1DEF8E2E8();
      v266 = v258;
      v267 = v265;
      v269 = v268;
      sub_1DEE273A0(v266, type metadata accessor for PairingRelationship);
      v270 = sub_1DEE12A5C(v267, v269, &aBlock);

      *(v263 + 14) = v270;
      _os_log_impl(&dword_1DEE0F000, v259, v260, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v263, 0x16u);
      swift_arrayDestroy();
      v271 = v264;
      v251 = v332;
      MEMORY[0x1E12CCD70](v271, -1, -1);
      MEMORY[0x1E12CCD70](v263, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v258, type metadata accessor for PairingRelationship);
    }

    v273 = v305;
    v274 = v325;
    v275 = v324;
    v272 = v333;
LABEL_105:
    sub_1DEE171B4(v272, &unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEE273A0(v273, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v251, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v335, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEE273A0(v337, type metadata accessor for SessionManager.Session);
    (*(v275 + 56))(v262, 1, 1, v274);
    sub_1DEE171B4(v262, &unk_1ECDE4E20, &unk_1DEF95B10);
    v111 = type metadata accessor for PairingRelationship;
    v112 = v241;
  }

  else
  {
    v262 = v326;
    sub_1DEE29904(v252, v256, v253, v326);
    if (v242)
    {

      v272 = v253;
      v273 = v305;
      v241 = v338;
      v274 = v325;
      v275 = v324;
      goto LABEL_105;
    }

    v331 = v238;
    sub_1DEE171B4(v253, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v324 + 56))(v262, 0, 1, v325);
    sub_1DEEAB218(v262, v320, type metadata accessor for Message);
    if (qword_1ECDE37E8 != -1)
    {
      swift_once();
    }

    v276 = qword_1ECDF60B0;
    v277 = qword_1ECDF60B8;
    v278 = *(v255 + 23);
    v369 = *(v255 + 22);
    v363 = v278;
    ObjectType = swift_getObjectType();
    v279 = sub_1DEF8D1E8();
    (*(*(v279 - 8) + 56))(v318, 1, 1, v279);
    *v370 = 0;
    aBlock = v276;
    v372 = v277;
    v280 = v315;
    sub_1DEEACA70(v345, v315, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v367 = type metadata accessor for PairingRelationship;
    v281 = v309;
    sub_1DEEACA70(v338, v309, type metadata accessor for PairingRelationship);
    v356 = type metadata accessor for SessionManager.Session;
    v282 = v308;
    sub_1DEEACA70(v337, v308, type metadata accessor for SessionManager.Session);
    v283 = (*(v313 + 80) + 24) & ~*(v313 + 80);
    v284 = *(v307 + 80);
    v285 = (v314 + v284 + v283) & ~v284;
    v286 = *(v339 + 80);
    v287 = (v317 + v286 + v285) & ~v286;
    v357 = (v284 | v286);
    v288 = swift_allocObject();
    *(v288 + 16) = v255;
    sub_1DEEAB218(v280, v288 + v283, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v362 = type metadata accessor for PairingRelationship;
    sub_1DEEAB218(v281, v288 + v285, type metadata accessor for PairingRelationship);
    sub_1DEEAB218(v282, v288 + v287, type metadata accessor for SessionManager.Session);
    v289 = v255;

    v290 = v318;
    sub_1DEE7FC18(v320, v318, &v370[1], v303, v370, &aBlock, sub_1DEEAAD08, v288, ObjectType, v363);

    sub_1DEE171B4(v290, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEACA70(v337, v282, v356);
    v291 = v312;
    sub_1DEEACA70(v335, v312, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEACA70(v338, v281, v367);
    v292 = (v286 + 24) & ~v286;
    v293 = (v292 + v316 + *(v310 + 80)) & ~*(v310 + 80);
    v294 = (v311 + v284 + v293) & ~v284;
    v295 = swift_allocObject();
    *(v295 + 16) = v289;
    sub_1DEEAB218(v282, v295 + v292, type metadata accessor for SessionManager.Session);
    sub_1DEEAB218(v291, v295 + v293, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEAB218(v281, v295 + v294, v362);
    v375 = sub_1DEEAAE90;
    v376 = v295;
    aBlock = MEMORY[0x1E69E9820];
    v372 = 1107296256;
    v373 = sub_1DEE3F0C0;
    v374 = &block_descriptor_607;
    v296 = _Block_copy(&aBlock);

    v297 = v327;
    sub_1DEF8D6B8();
    *&v370[1] = MEMORY[0x1E69E7CC0];
    v298 = v329;
    v299 = v330;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v297, v298, v296);
    _Block_release(v296);
    (v360)(v298, v299);
    (v359)(v297, v328);
    sub_1DEE273A0(v320, type metadata accessor for Message);
    sub_1DEE273A0(v305, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v332, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v335, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEE273A0(v337, type metadata accessor for SessionManager.Session);

    v111 = type metadata accessor for PairingRelationship;
    v112 = v338;
  }

LABEL_106:
  sub_1DEE273A0(v112, v111);
}

void sub_1DEE86E14(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(a2 + *(type metadata accessor for PairingRelationship(0) + 20) + 32) > 7uLL)
  {
    v7 = v4[2];
    v8 = v4[3];

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v4[4], v4[5]);
    *a3 = v7;
    a3[1] = v8;
  }

  else
  {
    v5 = v4[4] == 0xD000000000000011 && 0x80000001DEF9C1B0 == v4[5];
    if (v5 || (sub_1DEF8E4E8() & 1) != 0)
    {
      v6 = v4[3];
      *a3 = v4[2];
      a3[1] = v6;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

uint64_t sub_1DEE86EF4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a1;
  v27 = a5;
  v31 = a2;
  v8 = type metadata accessor for SessionManager.Session(0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for ReplicatorMessage.Handshake.Response);
  sub_1DEEACA70(v27, v14, type metadata accessor for PairingRelationship);
  sub_1DEEACA70(v29, v10, type metadata accessor for SessionManager.Session);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  LOBYTE(a4) = v31 & 1;
  *(v22 + 24) = v31 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for ReplicatorMessage.Handshake.Response);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  sub_1DEEAB218(v10, v22 + v21, type metadata accessor for SessionManager.Session);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1DEEAAEEC;
  *(v24 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_640;
  v25 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a4);

  dispatch_sync(v32, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE872D4(int *a1, char a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v74 = a4;
  v11 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68[-v15];
  v17 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v68[-v22];
  if (a2)
  {
    v72 = v21;
    v73 = a5;
    v77[0] = a1;
    v24 = a1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v80 == 2)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v26 = sub_1DEF8D508();
      __swift_project_value_buffer(v26, qword_1ECDF6028);
      sub_1DEEACA70(v74, v23, type metadata accessor for ReplicatorMessage.Handshake.Response);
      sub_1DEEACA70(v73, v16, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v27 = sub_1DEF8D4D8();
      v28 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v29 = 136446978;
        *(v29 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), &v76);
        *(v29 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v70 = v27;
        v71 = v25;
        v30 = sub_1DEF8E2E8();
        v69 = v28;
        v32 = v31;
        sub_1DEE273A0(v23, type metadata accessor for ReplicatorMessage.Handshake.Response);
        v33 = sub_1DEE12A5C(v30, v32, &v76);

        *(v29 + 14) = v33;
        *(v29 + 22) = 2082;
        v34 = sub_1DEF8E2E8();
        v36 = v35;
        sub_1DEE273A0(v16, type metadata accessor for PairingRelationship);
        v37 = sub_1DEE12A5C(v34, v36, &v76);

        *(v29 + 24) = v37;
        *(v29 + 32) = 2082;
        v75 = a1;
        v38 = a1;
        v39 = sub_1DEF8D988();
        v41 = sub_1DEE12A5C(v39, v40, &v76);

        *(v29 + 34) = v41;
        v42 = v70;
        _os_log_impl(&dword_1DEE0F000, v70, v69, "(%{public}s) Handshake complete for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v29, 0x2Au);
        v43 = v73;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v43, -1, -1);
        MEMORY[0x1E12CCD70](v29, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v16, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v23, type metadata accessor for ReplicatorMessage.Handshake.Response);
      }

      sub_1DEE7F920(a6);
      sub_1DEE7D6B8(*(v74 + v72[6]), *(v74 + v72[6] + 8));
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v44 = sub_1DEF8D508();
      __swift_project_value_buffer(v44, qword_1ECDF6028);
      sub_1DEEACA70(v74, v19, type metadata accessor for ReplicatorMessage.Handshake.Response);
      sub_1DEEACA70(v73, v13, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v45 = sub_1DEF8D4D8();
      v46 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v77[0] = v72;
        *v47 = 136446978;
        *(v47 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), v77);
        *(v47 + 12) = 2082;
        sub_1DEF8D3F8();
        v71 = v25;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v74 = a6;
        v70 = v45;
        v48 = sub_1DEF8E2E8();
        v69 = v46;
        v50 = v49;
        sub_1DEE273A0(v19, type metadata accessor for ReplicatorMessage.Handshake.Response);
        v51 = sub_1DEE12A5C(v48, v50, v77);

        *(v47 + 14) = v51;
        *(v47 + 22) = 2082;
        a6 = v74;
        v52 = sub_1DEF8E2E8();
        v54 = v53;
        sub_1DEE273A0(v13, type metadata accessor for PairingRelationship);
        v55 = sub_1DEE12A5C(v52, v54, v77);

        *(v47 + 24) = v55;
        *(v47 + 32) = 2082;
        v76 = a1;
        v56 = a1;
        v57 = sub_1DEF8D988();
        v59 = sub_1DEE12A5C(v57, v58, v77);

        *(v47 + 34) = v59;
        v60 = v70;
        _os_log_impl(&dword_1DEE0F000, v70, v69, "(%{public}s) Error sending handshake complete for session %{public}s with relationship %{public}s: %{public}s", v47, 0x2Au);
        v61 = v72;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v61, -1, -1);
        MEMORY[0x1E12CCD70](v47, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v13, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v19, type metadata accessor for ReplicatorMessage.Handshake.Response);
      }

      sub_1DEE7F920(a6);
      v62 = v73 + *(v11 + 20);
      v63 = *(v62 + 1);
      v64 = *(v62 + 20);
      v65 = *(v62 + 21);
      v66 = v62[48];
      v77[0] = *v62;
      v77[1] = v63;
      v77[2] = v64;
      v77[3] = v65;
      v78 = v66;
      v79 = *(v62 + 2);
      v67 = *(a6 + *(type metadata accessor for SessionManager.Session(0) + 36));

      sub_1DEE8381C(v77, v67);
    }
  }
}

uint64_t sub_1DEE87B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) + 20));
  v7 = v6[1];
  v12 = *v6;
  v13 = v7;
  v8 = *(type metadata accessor for PairingRelationship(0) + 20);
  sub_1DEE4F8C0(v12, v7);
  sub_1DEE7A820(a2, &v12, a4 + v8);
  v9 = v12;
  v10 = v13;

  return sub_1DEE4F8D4(v9, v10);
}

void sub_1DEE87BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = a4;
  v85 = a3;
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v74 = v8;
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v70 - v14;
  v15 = type metadata accessor for Message(0);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v79);
  v87 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v78);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v26 = sub_1DEF8D508();
  __swift_project_value_buffer(v26, qword_1ECDF6028);

  v27 = sub_1DEF8D4D8();
  v28 = sub_1DEF8DCB8();

  v29 = os_log_type_enabled(v27, v28);
  v86 = v19;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v71 = v22;
    v31 = a1;
    v32 = v25;
    v33 = v30;
    v34 = swift_slowAlloc();
    v88 = v34;
    *v33 = 136446210;
    v35 = a2;
    *(v33 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v88);
    _os_log_impl(&dword_1DEE0F000, v27, v28, "(%{public}s) Sending disabled handshake response", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12CCD70](v34, -1, -1);
    v36 = v33;
    v25 = v32;
    a1 = v31;
    v22 = v71;
    MEMORY[0x1E12CCD70](v36, -1, -1);

    if (v31)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1DEE69B50(v25);
    v47 = MEMORY[0x1E69E7CC0];
    v48 = v25;
    v49 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
    v50 = sub_1DEF8D3F8();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v22, v85, v50);
    sub_1DEEACA70(v48, &v22[v20[6]], type metadata accessor for DeviceDescriptor);
    v52 = sub_1DEEA29E4(v47);
    v53 = &v22[v20[5]];
    *v53 = 0;
    *(v53 + 1) = 0;
    *&v22[v20[7]] = v52;
    *&v22[v20[8]] = v49;
    v54 = v86;
    sub_1DEEACA70(v22, v86, type metadata accessor for ReplicatorMessage.Handshake.Response);
    swift_storeEnumTagMultiPayload();
    v55 = v87;
    sub_1DEEACA70(v54, v87, type metadata accessor for ReplicatorMessage.Handshake);
    swift_storeEnumTagMultiPayload();
    v56 = v80;
    (*(v51 + 56))(v80, 1, 1, v50);
    v57 = v84;
    sub_1DEE29904(v55, ObjectType, v56, v84);
    sub_1DEE171B4(v56, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v81 + 56))(v57, 0, 1, v82);
    sub_1DEEAB218(v57, v77, type metadata accessor for Message);
    v84 = v48;
    v58 = *(v35 + 184);
    ObjectType = swift_getObjectType();
    v59 = sub_1DEF8D1E8();
    v60 = v76;
    (*(*(v59 - 8) + 56))(v76, 1, 1, v59);
    LOBYTE(v88) = 0;
    v61 = *(v72 + 24);
    v89[0] = 0;
    v62 = v85;
    v63 = v75;
    sub_1DEEACA70(v85, v75, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v64 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v35;
    sub_1DEEAB218(v63, v65 + v64, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v66 = v62;
    v67 = *(v58 + 40);

    v69 = v58;
    v68 = v77;
    v67(v77, v60, &v88, v66 + v61, v89, sub_1DEEAAC54, v65, ObjectType, v69);

    sub_1DEE171B4(v60, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEE273A0(v68, type metadata accessor for Message);
    sub_1DEE273A0(v87, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v86, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v22, type metadata accessor for ReplicatorMessage.Handshake.Response);
    sub_1DEE273A0(v84, type metadata accessor for DeviceDescriptor);
    return;
  }

  v35 = a2;

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v37 = v35;

  v38 = a1;
  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = a1;
    v44 = swift_slowAlloc();
    v88 = v44;
    *v41 = 136446466;
    *(v41 + 4) = sub_1DEE12A5C(*(v37 + 528), *(v37 + 536), &v88);
    *(v41 + 12) = 2114;
    v45 = v43;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v46;
    *v42 = v46;
    _os_log_impl(&dword_1DEE0F000, v39, v40, "(%{public}s) Abandoning disabled handshake response because prerequisites are not met: %{public}@", v41, 0x16u);
    sub_1DEE171B4(v42, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1E12CCD70](v44, -1, -1);
    MEMORY[0x1E12CCD70](v41, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DEE88640(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a3 + 232);
  sub_1DEEACA70(a4, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  sub_1DEEAB218(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEAAC80;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_577;
  v15 = _Block_copy(aBlock);
  sub_1DEE39150(a1, a2 & 1);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE88884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  ObjectType = a1;
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v63 = v8;
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v60 - v14;
  v15 = type metadata accessor for Message(0);
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6028);

  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DCB8();

  v27 = os_log_type_enabled(v25, v26);
  v73 = v18;
  if (v27)
  {
    v28 = a3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v75 = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v75);
    _os_log_impl(&dword_1DEE0F000, v25, v26, "(%{public}s) Sending disabled handshake complete", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12CCD70](v30, -1, -1);
    v31 = v29;
    a3 = v28;
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  v32 = ObjectType;
  if (ObjectType)
  {

    v33 = v32;
    v34 = sub_1DEF8D4D8();
    v35 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v75 = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v75);
      *(v36 + 12) = 2114;
      v39 = v32;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_1DEE0F000, v34, v35, "(%{public}s) Abandoning disabled handshake complete because prerequisites are not met: %{public}@", v36, 0x16u);
      sub_1DEE171B4(v37, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E12CCD70](v38, -1, -1);
      MEMORY[0x1E12CCD70](v36, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
    v43 = sub_1DEF8D3F8();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v23, a3, v43);
    v45 = &v23[v21[5]];
    *v45 = 0;
    *(v45 + 1) = 0;
    *&v23[v21[6]] = v41;
    *&v23[v21[7]] = v42;
    v46 = v72;
    sub_1DEEACA70(v23, v72, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    swift_storeEnumTagMultiPayload();
    v47 = v73;
    sub_1DEEACA70(v46, v73, type metadata accessor for ReplicatorMessage.Handshake);
    swift_storeEnumTagMultiPayload();
    v48 = v67;
    (*(v44 + 56))(v67, 1, 1, v43);
    v49 = v70;
    sub_1DEE29904(v47, v71, v48, v70);
    sub_1DEE171B4(v48, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v68 + 56))(v49, 0, 1, v69);
    v50 = v49;
    v51 = v60;
    sub_1DEEAB218(v50, v60, type metadata accessor for Message);
    v52 = a2[23];
    ObjectType = swift_getObjectType();
    v53 = sub_1DEF8D1E8();
    v54 = v65;
    (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
    LOBYTE(v75) = 0;
    v71 = *(v61 + 24);
    v76[0] = 0;
    v55 = v64;
    sub_1DEEACA70(a3, v64, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v56 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = a2;
    sub_1DEEAB218(v55, v57 + v56, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v58 = a3;
    v59 = *(v52 + 40);

    v59(v51, v54, &v75, v58 + v71, v76, sub_1DEEAB684, v57, ObjectType, v52);

    sub_1DEE171B4(v54, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEE273A0(v51, type metadata accessor for Message);
    sub_1DEE273A0(v73, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v72, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v23, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  }
}

uint64_t sub_1DEE89248(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a3 + 232);
  sub_1DEEACA70(a4, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  sub_1DEEAB218(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ReplicatorMessage.Handshake.Response);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEAB74C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_700;
  v15 = _Block_copy(aBlock);
  sub_1DEE39150(a1, a2 & 1);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE8948C(void *a1, char a2, void *a3, uint64_t a4, const char *a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v46 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast())
    {
      v12 = v53 == 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v32 = sub_1DEF8D508();
      __swift_project_value_buffer(v32, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v33 = sub_1DEF8D4D8();
      v34 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136446466;
        *(v35 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v44);
        *(v35 + 12) = 2082;
        v37 = a1;
        v38 = sub_1DEF8D988();
        v40 = sub_1DEE12A5C(v38, v39, &v44);

        *(v35 + 14) = v40;
        _os_log_impl(&dword_1DEE0F000, v33, v34, "(%{public}s) Handshake request blocked by allow list: %{public}s.", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v36, -1, -1);
        MEMORY[0x1E12CCD70](v35, -1, -1);
      }
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v13 = sub_1DEF8D508();
      __swift_project_value_buffer(v13, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v14 = sub_1DEF8D4D8();
      v15 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v46 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v46);
        *(v16 + 12) = 2082;
        v44 = a1;
        v18 = a1;
        v19 = sub_1DEF8D988();
        v21 = sub_1DEE12A5C(v19, v20, &v46);

        *(v16 + 14) = v21;
        _os_log_impl(&dword_1DEE0F000, v14, v15, a5, v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v17, -1, -1);
        MEMORY[0x1E12CCD70](v16, -1, -1);
      }

      v22 = a3[51];
      v23 = a3[52];
      __swift_project_boxed_opaque_existential_1(a3 + 48, v22);
      v24 = a4 + *(a6(0) + 24);
      v25 = *(v24 + 8);
      v26 = *(v24 + 168);
      v42 = *(v24 + 160);
      v27 = *(v24 + 48);
      v28 = *(v24 + 32);
      v41 = *(v24 + 40);
      v46 = *v24;
      v43 = v46;
      v47 = v25;
      v48 = v42;
      v49 = v26;
      v50 = v27;
      v51 = v28;
      v52 = v41;
      v29 = *(v23 + 24);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29(&v46, v22, v23);

      v30 = a3[51];
      v31 = a3[52];
      __swift_project_boxed_opaque_existential_1(a3 + 48, v30);
      v46 = v43;
      v47 = v25;
      v48 = v42;
      v49 = v26;
      v50 = v27;
      v51 = v28;
      v52 = v41;
      v44 = 0;
      v45 = 2;
      (*(v31 + 16))(&v46, &v44, v30, v31);
    }
  }
}

uint64_t sub_1DEE89934(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SessionManager.Session(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46[-v8];
  if (*(a1 + *(v10 + 24)))
  {
    v11 = a2[51];
    v12 = a2[52];
    __swift_project_boxed_opaque_existential_1(a2 + 48, v11);
    v13 = a1 + *(v4 + 20);
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    v17 = *(v13 + 32);
    v49 = *v13;
    v50 = v14;
    v51 = v16;
    v52 = v15;
    v53 = v17;
    v54 = *(v13 + 40);
    v18 = *(v12 + 24);

    v18(&v49, v11, v12);
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v19 = sub_1DEF8D508();
    __swift_project_value_buffer(v19, qword_1ECDF6028);
    sub_1DEEACA70(a1, v9, type metadata accessor for SessionManager.Session);
    sub_1DEEACA70(a1, v6, type metadata accessor for SessionManager.Session);

    v20 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DC98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v22 = 136446722;
      *(v22 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v49);
      *(v22 + 12) = 2082;
      sub_1DEF8D3F8();
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v47 = v21;
      v23 = sub_1DEF8E2E8();
      v25 = v24;
      sub_1DEE273A0(v9, type metadata accessor for SessionManager.Session);
      v26 = sub_1DEE12A5C(v23, v25, &v49);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2082;
      v27 = &v6[*(v4 + 20)];
      v28 = *v27;
      v29 = v27[1];

      sub_1DEE273A0(v6, type metadata accessor for SessionManager.Session);
      v30 = sub_1DEE12A5C(v28, v29, &v49);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_1DEE0F000, v20, v47, "(%{public}s) Session %{public}s expired while handshaking with %{public}s; will schedule retry", v22, 0x20u);
      v31 = v48;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v22, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v6, type metadata accessor for SessionManager.Session);
      sub_1DEE273A0(v9, type metadata accessor for SessionManager.Session);
    }

    v32 = a1 + *(v4 + 20);
    sub_1DEE7D6B8(*v32, *(v32 + 8));
    v33 = a2[51];
    v34 = a2[52];
    __swift_project_boxed_opaque_existential_1(a2 + 48, v33);
    v35 = *(v32 + 8);
    v37 = *(v32 + 16);
    v36 = *(v32 + 24);
    v38 = *(v32 + 32);
    v49 = *v32;
    v50 = v35;
    v51 = v37;
    v52 = v36;
    v53 = v38;
    v54 = *(v32 + 40);
    v39 = *(v34 + 24);

    v39(&v49, v33, v34);

    v40 = *(v32 + 8);
    v42 = *(v32 + 16);
    v41 = *(v32 + 24);
    v43 = *(v32 + 32);
    v49 = *v32;
    v50 = v40;
    v51 = v42;
    v52 = v41;
    v53 = v43;
    v54 = *(v32 + 40);
    v44 = *(a1 + *(v4 + 36));

    sub_1DEE8381C(&v49, v44);
  }
}

uint64_t sub_1DEE89DB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v336 = &v318 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v343 = &v318 - v5;
  v339 = type metadata accessor for Message(0);
  v338 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v329 = &v318 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v337);
  v345 = &v318 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v322 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v332 = &v318 - v11;
  v333 = type metadata accessor for PrioritizedRecordValue(0);
  v331 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v328 = (&v318 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v344 = &v318 - v14;
  v335 = type metadata accessor for ReplicatorMessage.Sync(0);
  MEMORY[0x1EEE9AC00](v335);
  v348 = &v318 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_1DEF8D3F8();
  v346 = *(v349 - 8);
  MEMORY[0x1EEE9AC00](v349);
  v341 = v16;
  v342 = &v318 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_1DEF8D788();
  v358 = *(v359 - 1);
  MEMORY[0x1EEE9AC00](v359);
  v357 = &v318 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v355 = &v318 - v19;
  v362 = type metadata accessor for PairingRelationship(0);
  v360 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v327 = &v318 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v330 = &v318 - v22;
  v326 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v354 = &v318 - v25;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v364);
  v365 = &v318 - v26;
  v27 = type metadata accessor for SessionManager.Session(0);
  v366 = *(v27 - 8);
  v367 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v325 = &v318 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v361 = &v318 - v30;
  v31 = type metadata accessor for SyncQueue.SyncItem(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v356 = &v318 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v352 = &v318 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v351 = (&v318 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v350 = &v318 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v347 = &v318 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v340 = &v318 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v334 = &v318 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v318 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v318 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v318 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v318 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v318 - v59;
  if (qword_1ECDE37E8 != -1)
  {
    swift_once();
  }

  v61 = qword_1ECDF60B0;
  v323 = qword_1ECDF60B8;
  v62 = a1;

  sub_1DEF04E40(v60);

  sub_1DEE17214(v60, v57, &qword_1ECDE3D88, &qword_1DEF916A0);
  v63 = *(v32 + 48);
  v363 = v31;
  if (v63(v57, 1, v31) != 1)
  {
    v321 = v60;
    sub_1DEEAB218(v57, v54, type metadata accessor for SyncQueue.SyncItem);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v70 = sub_1DEF8D508();
    v71 = __swift_project_value_buffer(v70, qword_1ECDF6028);
    v353 = v54;
    sub_1DEEACA70(v54, v51, type metadata accessor for SyncQueue.SyncItem);
    v72 = a1;

    v73 = sub_1DEF8D4D8();
    v74 = sub_1DEF8DCB8();

    v75 = os_log_type_enabled(v73, v74);
    v319 = v48;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v320 = v71;
      v77 = v76;
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136446466;
      *(v77 + 4) = sub_1DEE12A5C(a1[66], a1[67], &aBlock);
      *(v77 + 12) = 2082;
      v79 = Record.ID.description.getter();
      v81 = v80;
      sub_1DEE273A0(v51, type metadata accessor for SyncQueue.SyncItem);
      v82 = sub_1DEE12A5C(v79, v81, &aBlock);

      *(v77 + 14) = v82;
      _os_log_impl(&dword_1DEE0F000, v73, v74, "(%{public}s) Syncing record %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      v83 = v78;
      v72 = v62;
      MEMORY[0x1E12CCD70](v83, -1, -1);
      v84 = v77;
      v71 = v320;
      MEMORY[0x1E12CCD70](v84, -1, -1);
    }

    else
    {

      v85 = sub_1DEE273A0(v51, type metadata accessor for SyncQueue.SyncItem);
    }

    v86 = v365;
    v87 = v353;
    v88 = &v353[*(v363 + 20)];
    MEMORY[0x1EEE9AC00](v85);

    v89 = v368;
    sub_1DEF8DD18();
    v368 = v89;

    if ((*(v366 + 48))(v86, 1, v367) == 1)
    {
      sub_1DEE171B4(v86, &qword_1ECDE3D08, &unk_1DEF95E50);
      v90 = v356;
      sub_1DEEACA70(v87, v356, type metadata accessor for SyncQueue.SyncItem);

      v91 = sub_1DEF8D4D8();
      v92 = sub_1DEF8DC98();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v93 = 136446466;
        *(v93 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
        *(v93 + 12) = 2082;
        v95 = Record.ID.description.getter();
        v97 = v96;
        sub_1DEE273A0(v90, type metadata accessor for SyncQueue.SyncItem);
        v98 = sub_1DEE12A5C(v95, v97, &aBlock);

        *(v93 + 14) = v98;
        _os_log_impl(&dword_1DEE0F000, v91, v92, "(%{public}s) Cannot sync enqueued record with no session: %{public}s", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v94, -1, -1);
        MEMORY[0x1E12CCD70](v93, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v90, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v72);

      sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
      goto LABEL_54;
    }

    v99 = v361;
    sub_1DEEAB218(v86, v361, type metadata accessor for SessionManager.Session);
    v100 = v72[29];
    v101 = v357;
    *v357 = v100;
    v102 = v358;
    v103 = v359;
    (*(v358 + 104))(v101, *MEMORY[0x1E69E8020], v359);
    v104 = v100;
    LOBYTE(v100) = sub_1DEF8D7B8();
    isa = v102[1].isa;
    v105 = v102 + 1;
    isa(v101, v103);
    if ((v100 & 1) == 0)
    {
      __break(1u);
      goto LABEL_93;
    }

    swift_beginAccess();
    sub_1DEE29594((v72 + 24), &aBlock);
    v107 = v376;
    v108 = v377;
    __swift_project_boxed_opaque_existential_1(&aBlock, v376);
    v109 = *(v108 + 1);
    v110 = v355;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v99 + *(v367 + 20)), *(v99 + *(v367 + 20) + 8), v107, v109, v355);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if ((*(v360 + 48))(v110, 1, v362) == 1)
    {
      sub_1DEE171B4(v110, &qword_1ECDE3C18, &unk_1DEF94D20);

      v111 = sub_1DEF8D4D8();
      v112 = sub_1DEF8DC98();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136446210;
        *(v113 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
        _os_log_impl(&dword_1DEE0F000, v111, v112, "(%{public}s) No pairing relationship established", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x1E12CCD70](v114, -1, -1);
        MEMORY[0x1E12CCD70](v113, -1, -1);
      }

      sub_1DEE8CF78(v72);

      sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
      v115 = type metadata accessor for SessionManager.Session;
      v116 = v99;
      goto LABEL_53;
    }

    v320 = v71;
    v117 = v110;
    v118 = v354;
    sub_1DEEAB218(v117, v354, type metadata accessor for PairingRelationship);
    v119 = *v87;
    v120 = *(*v87 + 32);
    swift_beginAccess();
    v121 = v72[30];

    v122 = sub_1DEF718FC(v120, v121);

    if (!v122)
    {
      v162 = v352;
      sub_1DEEACA70(v87, v352, type metadata accessor for SyncQueue.SyncItem);

      v163 = sub_1DEF8D4D8();
      v164 = sub_1DEF8DC98();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        aBlock = v166;
        *v165 = 136446466;
        *(v165 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
        *(v165 + 12) = 2082;
        v167 = Record.ID.description.getter();
        v169 = v168;
        sub_1DEE273A0(v162, type metadata accessor for SyncQueue.SyncItem);
        v170 = sub_1DEE12A5C(v167, v169, &aBlock);

        *(v165 + 14) = v170;
        _os_log_impl(&dword_1DEE0F000, v163, v164, "(%{public}s) Cannot sync enqueued record with no data source: %{public}s", v165, 0x16u);
        swift_arrayDestroy();
        v171 = v166;
        v99 = v361;
        MEMORY[0x1E12CCD70](v171, -1, -1);
        v172 = v165;
        v118 = v354;
        MEMORY[0x1E12CCD70](v172, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v162, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v72);
      goto LABEL_52;
    }

    v365 = v88;
    v123 = (v118 + *(v362 + 20));
    v124 = v123[12];

    v126 = sub_1DEF71928(v125, v124);

    if (!v126)
    {
      v173 = v351;
      sub_1DEEACA70(v87, v351, type metadata accessor for SyncQueue.SyncItem);

      v174 = sub_1DEF8D4D8();
      v175 = sub_1DEF8DC98();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v372 = v177;
        *v176 = 136446466;
        *(v176 + 4) = sub_1DEE12A5C(v72[66], v72[67], &v372);
        *(v176 + 12) = 2082;
        v178 = *v173;
        v364 = v122;
        v179 = *(v178 + 32);
        v180 = v179[5];
        aBlock = v179[4];
        v374 = v180;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v179[2], v179[3]);

        v181 = aBlock;
        v182 = v374;
        sub_1DEE273A0(v173, type metadata accessor for SyncQueue.SyncItem);
        v183 = sub_1DEE12A5C(v181, v182, &v372);

        *(v176 + 14) = v183;
        _os_log_impl(&dword_1DEE0F000, v174, v175, "(%{public}s) Cannot find remote zone descriptor for zone: %{public}s", v176, 0x16u);
        swift_arrayDestroy();
        v184 = v177;
        v99 = v361;
        MEMORY[0x1E12CCD70](v184, -1, -1);
        v185 = v176;
        v118 = v354;
        MEMORY[0x1E12CCD70](v185, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v173, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v72);
      goto LABEL_51;
    }

    v128 = v123[4];
    v127 = v123[5];
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v367 = v126;
    if (v128 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v127)
    {
      v87 = v353;
      v186 = v350;
      sub_1DEEACA70(v353, v350, type metadata accessor for SyncQueue.SyncItem);

      v187 = sub_1DEF8D4D8();
      v188 = sub_1DEF8DC98();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        aBlock = v190;
        *v189 = 136446466;
        *(v189 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
        *(v189 + 12) = 2082;
        v191 = Record.ID.description.getter();
        v193 = v192;
        sub_1DEE273A0(v186, type metadata accessor for SyncQueue.SyncItem);
        v194 = sub_1DEE12A5C(v191, v193, &aBlock);

        *(v189 + 14) = v194;
        v195 = "(%{public}s) Cannot sync enqueued record with incompatible device: %{public}s";
LABEL_48:
        _os_log_impl(&dword_1DEE0F000, v187, v188, v195, v189, 0x16u);
        swift_arrayDestroy();
        v200 = v190;
        v99 = v361;
        MEMORY[0x1E12CCD70](v200, -1, -1);
        v201 = v189;
        v118 = v354;
        MEMORY[0x1E12CCD70](v201, -1, -1);

LABEL_50:
        sub_1DEE8CF78(v72);

LABEL_51:

LABEL_52:

        sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
        sub_1DEE273A0(v99, type metadata accessor for SessionManager.Session);
        v115 = type metadata accessor for PairingRelationship;
        v116 = v118;
LABEL_53:
        sub_1DEE273A0(v116, v115);
LABEL_54:
        v202 = v87;
        return sub_1DEE273A0(v202, type metadata accessor for SyncQueue.SyncItem);
      }
    }

    else
    {
      v129 = v118 + *(v362 + 32);
      v131 = *v129;
      v130 = *(v129 + 8);
      if (v130 == 2)
      {
        v359 = v123;
        v364 = v122;
        sub_1DEE4F8D4(v131, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        sub_1DEE29594((v72 + 33), &aBlock);
        v132 = v118;
        v133 = v376;
        v134 = v377;
        __swift_project_boxed_opaque_existential_1(&aBlock, v376);
        v372 = v72;
        v135 = *(v134 + 1);
        v136 = type metadata accessor for Replicator();
        v363 = v119;
        LOBYTE(v133) = v135(&v372, v119, v132, v136, &protocol witness table for Replicator, v133, v134);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        if ((v133 & 1) == 0)
        {
          v88 = v353;
          v203 = v340;
          sub_1DEEACA70(v353, v340, type metadata accessor for SyncQueue.SyncItem);

          v204 = sub_1DEF8D4D8();
          v205 = sub_1DEF8DC98();

          if (os_log_type_enabled(v204, v205))
          {
            v206 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            aBlock = v207;
            *v206 = 136446466;
            *(v206 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
            *(v206 + 12) = 2082;
            v208 = Record.ID.description.getter();
            v209 = v203;
            v211 = v210;
            sub_1DEE273A0(v209, type metadata accessor for SyncQueue.SyncItem);
            v212 = sub_1DEE12A5C(v208, v211, &aBlock);

            *(v206 + 14) = v212;
            _os_log_impl(&dword_1DEE0F000, v204, v205, "(%{public}s) Replication policy prevents record from syncing: %{public}s", v206, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v207, -1, -1);
            MEMORY[0x1E12CCD70](v206, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v203, type metadata accessor for SyncQueue.SyncItem);
          }

          v213 = v361;
          v214 = v354;
          sub_1DEE8CF78(v72);

          sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
          sub_1DEE273A0(v213, type metadata accessor for SessionManager.Session);
          v215 = v214;
          goto LABEL_60;
        }

        v356 = v128;
        v137 = v72[68];
        v138 = *(v137 + 32);
        v139 = v346;
        v140 = *(v346 + 16);
        v141 = v342;
        v142 = v349;
        v358 = v346 + 16;
        v357 = v140;
        (v140)(v342, v361, v349);
        v143 = (*(v139 + 80) + 24) & ~*(v139 + 80);
        v144 = v143 + v341;
        v145 = swift_allocObject();
        *(v145 + 16) = v137;
        (*(v139 + 32))(v145 + v143, v141, v142);
        *(v145 + v144) = 1;
        v146 = swift_allocObject();
        *(v146 + 16) = sub_1DEEACDAC;
        *(v146 + 24) = v145;
        v377 = sub_1DEE46D40;
        v378 = v146;
        aBlock = MEMORY[0x1E69E9820];
        v374 = 1107296256;
        v375 = sub_1DEE134F4;
        v376 = &block_descriptor_652;
        v147 = _Block_copy(&aBlock);
        swift_retain_n();

        dispatch_sync(v138, v147);
        _Block_release(v147);
        LOBYTE(v138) = swift_isEscapingClosureAtFileLocation();

        if (v138)
        {
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v362 = v72;
        v148 = v72[84];
        v149 = v363;
        v150 = *(v363 + 32);
        v152 = *(v150 + 32);
        v151 = *(v150 + 40);

        v153 = sub_1DEF01E3C(v152, v151, v148);

        v154 = *(v367 + 24);
        v155 = v348;
        v87 = v319;
        v156 = v365;
        if (v153)
        {
          v157 = v349;
          (v357)(v348, v365, v349);
          v158 = v155 + *(v335 + 20);
          *v158 = v149;
          *(v158 + 8) = 0;
          *(v158 + 16) = 0;
          *(v158 + 24) = 0;
          *(v158 + 32) = v154;
          *(v158 + 40) = 0;
          v159 = sub_1DEF8D1E8();
          (*(*(v159 - 8) + 56))(v344, 1, 1, v159);

          v160 = 0;
          v72 = v362;
LABEL_35:
          v161 = v336;
          goto LABEL_73;
        }

        v216 = *(v367 + 32);
        v217 = v364;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v218 = *(v217 + 24);
          ObjectType = swift_getObjectType();
          aBlock = v154;
          v374 = v216;
          v220 = v332;
          v221 = v363;
          (*(v218 + 32))(v363, v354, &aBlock, ObjectType, v218);
          swift_unknownObjectRelease();
          v222 = (*(v331 + 48))(v220, 1, v333);
          v72 = v362;
          if (v222 != 1)
          {
            sub_1DEEAB218(v220, v328, type metadata accessor for PrioritizedRecordValue);
            sub_1DEE29594((v72 + 24), &aBlock);
            v223 = v376;
            v224 = v377;
            __swift_project_boxed_opaque_existential_1(&aBlock, v376);
            v225 = (*(*(*(v224 + 1) + 8) + 24))(v223);
            v226 = sub_1DEF718D0(v221, v225);

            if (v226)
            {
              __swift_destroy_boxed_opaque_existential_1(&aBlock);
              sub_1DEE29594((v72 + 24), &aBlock);
              v227 = v376;
              v228 = v377;
              __swift_project_boxed_opaque_existential_1(&aBlock, v376);
              v229 = *(v228 + 1);
              v230 = v363;
              v231 = (*(*(v229 + 8) + 56))(v363, v227);
              if (v232)
              {
                v233 = v231;
                v234 = v232;
                __swift_destroy_boxed_opaque_existential_1(&aBlock);
                if (v356 <= 0xD)
                {
                  v235 = v230;
                  v236 = *(v230 + 32);
                  v237 = v322;
                  sub_1DEEACA70(v235 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v322, type metadata accessor for Record.ID.Ownership);

                  v156 = v365;

                  type metadata accessor for Record.ID(0);
                  v238 = swift_allocObject();
                  v238[2] = v233;
                  v238[3] = v234;
                  v238[4] = v236;
                  v230 = v238;
                  sub_1DEEAB218(v237, v238 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
                }

                v365 = RecordMetadata.copy(replacingID:clientDefinedID:)(v230, v233, v234);

                v239 = v328;
                v240 = *v328;
                v356 = v328[1];
                v241 = type metadata accessor for Record.Value(0);
                v242 = *(v239 + *(v241 + 24));
                v155 = v348;
                v157 = v349;
                (v357)(v348, v156, v349);
                v243 = v155 + *(v335 + 20);
                v363 = v230;
                v244 = v365;
                *v243 = v230;
                *(v243 + 8) = v244;
                v245 = v356;
                *(v243 + 16) = v240;
                *(v243 + 24) = v245;
                *(v243 + 32) = v242;
                *(v243 + 40) = 0;
                sub_1DEE17214(v239 + *(v241 + 20), v344, &qword_1ECDE4890, &qword_1DEF90990);
                v160 = *(v239 + *(v333 + 20));
                sub_1DEE1BFF4(v240, v245);
                sub_1DEE273A0(v239, type metadata accessor for PrioritizedRecordValue);
                goto LABEL_35;
              }

              __swift_destroy_boxed_opaque_existential_1(&aBlock);
              v88 = v353;
              sub_1DEEACA70(v353, v87, type metadata accessor for SyncQueue.SyncItem);

              v105 = sub_1DEF8D4D8();
              v311 = sub_1DEF8DC98();

              if (os_log_type_enabled(v105, v311))
              {
                v312 = swift_slowAlloc();
                v313 = swift_slowAlloc();
                aBlock = v313;
                *v312 = 136446466;
                *(v312 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
                *(v312 + 12) = 2082;
                v314 = Record.ID.description.getter();
                v316 = v315;
                sub_1DEE273A0(v87, type metadata accessor for SyncQueue.SyncItem);
                v317 = sub_1DEE12A5C(v314, v316, &aBlock);
                v72 = v362;

                *(v312 + 14) = v317;
                _os_log_impl(&dword_1DEE0F000, v105, v311, "(%{public}s) No client defined ID is available for record: %{public}s", v312, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v313, -1, -1);
                MEMORY[0x1E12CCD70](v312, -1, -1);

LABEL_94:
                sub_1DEE8CF78(v72);

                sub_1DEE273A0(v328, type metadata accessor for PrioritizedRecordValue);
                sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
                sub_1DEE273A0(v361, type metadata accessor for SessionManager.Session);
                v215 = v354;
LABEL_60:
                sub_1DEE273A0(v215, type metadata accessor for PairingRelationship);
                v202 = v88;
                return sub_1DEE273A0(v202, type metadata accessor for SyncQueue.SyncItem);
              }

LABEL_93:

              sub_1DEE273A0(v87, type metadata accessor for SyncQueue.SyncItem);
              goto LABEL_94;
            }

            sub_1DEE273A0(v328, type metadata accessor for PrioritizedRecordValue);
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_70:
            v246 = *(v367 + 24);
            (v357)(v155, v156, v349);
            v247 = v155 + *(v335 + 20);
            *v247 = v221;
            *(v247 + 8) = 0;
            *(v247 + 16) = 0;
            *(v247 + 24) = 0;
            *(v247 + 32) = v246;
            *(v247 + 40) = 0;
            v248 = sub_1DEF8D1E8();
            (*(*(v248 - 8) + 56))(v344, 1, 1, v248);

            swift_retain_n();
            sub_1DEEAB070(0, 0, 0);
            v249 = sub_1DEF8D4D8();
            v250 = sub_1DEF8DC98();

            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              v252 = swift_slowAlloc();
              aBlock = v252;
              *v251 = 136446466;
              *(v251 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
              *(v251 + 12) = 2082;

              v253 = Record.ID.description.getter();
              v255 = v254;

              v256 = sub_1DEE12A5C(v253, v255, &aBlock);

              *(v251 + 14) = v256;
              _os_log_impl(&dword_1DEE0F000, v249, v250, "(%{public}s) Removing metadata for missing record ID: %{public}s", v251, 0x16u);
              swift_arrayDestroy();
              v257 = v252;
              v155 = v348;
              MEMORY[0x1E12CCD70](v257, -1, -1);
              MEMORY[0x1E12CCD70](v251, -1, -1);
            }

            sub_1DEE29594((v72 + 24), &aBlock);
            v258 = v376;
            v259 = v377;
            __swift_project_boxed_opaque_existential_1(&aBlock, v376);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
            v260 = swift_allocObject();
            *(v260 + 16) = xmmword_1DEF91010;
            *(v260 + 32) = v221;
            sub_1DEEAB0B8(0, 0, 0);
            (*(*(v259 + 2) + 136))(v260, v258);

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v160 = 0;
            v157 = v349;
            v161 = v336;
LABEL_73:
            v261 = v345;
            sub_1DEEACA70(v155, v345, type metadata accessor for ReplicatorMessage.Sync);
            swift_storeEnumTagMultiPayload();
            (*(v346 + 56))(v161, 1, 1, v157);
            v262 = v354;
            v263 = sub_1DEE5D178(v354);
            if (v264)
            {
              v265 = v330;
              sub_1DEEACA70(v262, v330, type metadata accessor for PairingRelationship);

              v266 = sub_1DEF8D4D8();
              v267 = sub_1DEF8DC98();

              if (os_log_type_enabled(v266, v267))
              {
                v268 = swift_slowAlloc();
                v269 = swift_slowAlloc();
                aBlock = v269;
                *v268 = 136446466;
                *(v268 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
                *(v268 + 12) = 2082;
                sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v270 = sub_1DEF8E2E8();
                v271 = v265;
                v273 = v272;
                sub_1DEE273A0(v271, type metadata accessor for PairingRelationship);
                v274 = sub_1DEE12A5C(v270, v273, &aBlock);

                *(v268 + 14) = v274;
                _os_log_impl(&dword_1DEE0F000, v266, v267, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v268, 0x16u);
                swift_arrayDestroy();
                v275 = v269;
                v155 = v348;
                MEMORY[0x1E12CCD70](v275, -1, -1);
                v276 = v268;
                v262 = v354;
                MEMORY[0x1E12CCD70](v276, -1, -1);
              }

              else
              {

                sub_1DEE273A0(v265, type metadata accessor for PairingRelationship);
              }

              v280 = v339;
              v281 = v338;
              v279 = v161;
            }

            else
            {
              v277 = v343;
              v278 = v368;
              sub_1DEE29904(v261, v263, v161, v343);
              v368 = v278;
              if (!v278)
              {
                sub_1DEE171B4(v161, &unk_1ECDE3E80, &unk_1DEF90970);
                v296 = 1;
                (*(v338 + 56))(v277, 0, 1, v339);
                sub_1DEEAB218(v277, v329, type metadata accessor for Message);
                v365 = v72[23];
                v297 = v364;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v298 = *(v297 + 24);
                  v299 = swift_getObjectType();
                  (*(v298 + 24))(&v371, v299, v298);
                  swift_unknownObjectRelease();
                  v296 = v371;
                }

                else
                {
                  v371 = 1;
                }

                v300 = swift_getObjectType();
                v370 = v296;
                v369 = v160;
                aBlock = v61;
                v374 = v323;
                v301 = v325;
                sub_1DEEACA70(v361, v325, type metadata accessor for SessionManager.Session);
                v302 = v327;
                sub_1DEEACA70(v354, v327, type metadata accessor for PairingRelationship);
                v303 = (*(v366 + 80) + 24) & ~*(v366 + 80);
                v304 = (v324 + *(v360 + 80) + v303) & ~*(v360 + 80);
                v305 = (v326 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
                v306 = swift_allocObject();
                v307 = v362;
                *(v306 + 16) = v362;
                sub_1DEEAB218(v301, v306 + v303, type metadata accessor for SessionManager.Session);
                sub_1DEEAB218(v302, v306 + v304, type metadata accessor for PairingRelationship);
                v308 = (v306 + v305);
                *v308 = sub_1DEEAB068;
                v308[1] = v307;
                swift_retain_n();
                v309 = v329;
                v310 = v344;
                sub_1DEE7FC18(v329, v344, &v370, v359, &v369, &aBlock, sub_1DEEAB100, v306, v300, v365);

                sub_1DEE273A0(v309, type metadata accessor for Message);
                sub_1DEE273A0(v345, type metadata accessor for ReplicatorMessage);
                sub_1DEE171B4(v310, &qword_1ECDE4890, &qword_1DEF90990);
                sub_1DEE273A0(v348, type metadata accessor for ReplicatorMessage.Sync);
                sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
                sub_1DEE273A0(v361, type metadata accessor for SessionManager.Session);
                v295 = v354;
                goto LABEL_84;
              }

              v368 = 0;
              v279 = v161;
              v280 = v339;
              v281 = v338;
            }

            sub_1DEE171B4(v279, &unk_1ECDE3E80, &unk_1DEF90970);
            v282 = v343;
            (*(v281 + 56))(v343, 1, 1, v280);
            sub_1DEE171B4(v282, &unk_1ECDE4E20, &unk_1DEF95B10);
            v283 = v334;
            sub_1DEEACA70(v353, v334, type metadata accessor for SyncQueue.SyncItem);

            v284 = sub_1DEF8D4D8();
            v285 = sub_1DEF8DC98();

            if (os_log_type_enabled(v284, v285))
            {
              v286 = swift_slowAlloc();
              v287 = swift_slowAlloc();
              aBlock = v287;
              *v286 = 136446466;
              *(v286 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
              *(v286 + 12) = 2082;
              v288 = Record.ID.description.getter();
              v290 = v289;
              sub_1DEE273A0(v283, type metadata accessor for SyncQueue.SyncItem);
              v291 = sub_1DEE12A5C(v288, v290, &aBlock);

              *(v286 + 14) = v291;
              _os_log_impl(&dword_1DEE0F000, v284, v285, "(%{public}s) Could not create message for record ID: %{public}s", v286, 0x16u);
              swift_arrayDestroy();
              v292 = v287;
              v155 = v348;
              MEMORY[0x1E12CCD70](v292, -1, -1);
              v293 = v286;
              v262 = v354;
              MEMORY[0x1E12CCD70](v293, -1, -1);
            }

            else
            {

              sub_1DEE273A0(v283, type metadata accessor for SyncQueue.SyncItem);
            }

            v294 = v361;
            sub_1DEE8CF78(v72);

            sub_1DEE273A0(v345, type metadata accessor for ReplicatorMessage);
            sub_1DEE171B4(v344, &qword_1ECDE4890, &qword_1DEF90990);
            sub_1DEE273A0(v155, type metadata accessor for ReplicatorMessage.Sync);
            sub_1DEE171B4(v321, &qword_1ECDE3D88, &qword_1DEF916A0);
            sub_1DEE273A0(v294, type metadata accessor for SessionManager.Session);
            v295 = v262;
LABEL_84:
            sub_1DEE273A0(v295, type metadata accessor for PairingRelationship);
            v202 = v353;
            return sub_1DEE273A0(v202, type metadata accessor for SyncQueue.SyncItem);
          }
        }

        else
        {
          v220 = v332;
          (*(v331 + 56))(v332, 1, 1, v333);
          v72 = v362;
          v221 = v363;
        }

        sub_1DEE171B4(v220, &qword_1ECDE3D80, &qword_1DEF91698);
        goto LABEL_70;
      }

      sub_1DEE4F8C0(*v129, *(v129 + 8));
      sub_1DEE4F8D4(v131, v130);
      sub_1DEE4F8D4(0, 2uLL);
      v87 = v353;
      v186 = v347;
      sub_1DEEACA70(v353, v347, type metadata accessor for SyncQueue.SyncItem);

      v187 = sub_1DEF8D4D8();
      v188 = sub_1DEF8DC98();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        aBlock = v190;
        *v189 = 136446466;
        *(v189 + 4) = sub_1DEE12A5C(v72[66], v72[67], &aBlock);
        *(v189 + 12) = 2082;
        v196 = Record.ID.description.getter();
        v198 = v197;
        sub_1DEE273A0(v186, type metadata accessor for SyncQueue.SyncItem);
        v199 = sub_1DEE12A5C(v196, v198, &aBlock);

        *(v189 + 14) = v199;
        v195 = "(%{public}s) Cannot sync enqueued record with non-paired relationship: %{public}s";
        goto LABEL_48;
      }
    }

    sub_1DEE273A0(v186, type metadata accessor for SyncQueue.SyncItem);
    goto LABEL_50;
  }

  sub_1DEE171B4(v57, &qword_1ECDE3D88, &qword_1DEF916A0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v64 = sub_1DEF8D508();
  __swift_project_value_buffer(v64, qword_1ECDF6028);

  v65 = sub_1DEF8D4D8();
  v66 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_1DEE12A5C(v62[66], v62[67], &aBlock);
    _os_log_impl(&dword_1DEE0F000, v65, v66, "(%{public}s) Sync queue is empty", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1E12CCD70](v68, -1, -1);
    MEMORY[0x1E12CCD70](v67, -1, -1);
  }

  return sub_1DEE171B4(v60, &qword_1ECDE3D88, &qword_1DEF916A0);
}

uint64_t sub_1DEE8CF78(uint64_t a1)
{
  v2 = sub_1DEF8D698();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v6 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(a1 + 232);
  aBlock[4] = sub_1DEEAB388;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_668;
  v9 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v8, v5, v9);
  _Block_release(v9);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v12);
}

void sub_1DEE8D230(void *a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[29];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  v9 = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = MEMORY[0x1E12CC160](v9);
    sub_1DEE89DB8(a1);
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE8D35C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a2;
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SessionManager.Session(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for SessionManager.Session);
  sub_1DEEACA70(a5, v14, type metadata accessor for PairingRelationship);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = a1;
  *(v22 + 16) = a1;
  LOBYTE(a1) = v30 & 1;
  *(v22 + 24) = v30 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for SessionManager.Session);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  v24 = (v22 + v21);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1DEEAB280;
  *(v26 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_665;
  v27 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a1);

  dispatch_sync(v33, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE8D698(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v84 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast())
    {
      v12 = v83 == 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v54 = sub_1DEF8D508();
      __swift_project_value_buffer(v54, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v55 = sub_1DEF8D4D8();
      v56 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v90[0] = v58;
        *v57 = 136446466;
        *(v57 + 4) = sub_1DEE12A5C(a3[66], a3[67], v90);
        *(v57 + 12) = 2082;
        v59 = a1;
        v60 = sub_1DEF8D988();
        v62 = sub_1DEE12A5C(v60, v61, v90);

        *(v57 + 14) = v62;
        _os_log_impl(&dword_1DEE0F000, v55, v56, "(%{public}s) Allow list prevents sending sync item: %{public}s.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v58, -1, -1);
        MEMORY[0x1E12CCD70](v57, -1, -1);
      }

      sub_1DEE7F920(a4);
      v63 = v84;
    }

    else
    {

      v90[0] = a1;
      v13 = a1;
      if (!swift_dynamicCast() || (v83 & 1) != 0)
      {

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v14 = sub_1DEF8D508();
        __swift_project_value_buffer(v14, qword_1ECDF6028);
        sub_1DEE39150(a1, 1);

        v15 = sub_1DEF8D4D8();
        v16 = sub_1DEF8DC98();

        sub_1DEE39214(a1, 1);
        if (os_log_type_enabled(v15, v16))
        {
          v81 = a6;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v84 = v18;
          *v17 = 136446466;
          *(v17 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v84);
          *(v17 + 12) = 2082;
          v90[0] = a1;
          v19 = a1;
          v20 = sub_1DEF8D988();
          v22 = sub_1DEE12A5C(v20, v21, &v84);

          *(v17 + 14) = v22;
          _os_log_impl(&dword_1DEE0F000, v15, v16, "(%{public}s) Error sending sync item: %{public}s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v18, -1, -1);
          v23 = v17;
          a6 = v81;
          MEMORY[0x1E12CCD70](v23, -1, -1);
        }

        v24 = a3[74];
        swift_beginAccess();
        if (!*(*(v24 + 16) + 16) || (, , sub_1DEEAF350(a4), v26 = v25, , , (v26 & 1) == 0))
        {
          v27 = a3[51];
          v28 = a3[52];
          __swift_project_boxed_opaque_existential_1(a3 + 48, v27);
          v29 = a4 + *(type metadata accessor for SessionManager.Session(0) + 20);
          v30 = *(v29 + 8);
          v32 = *(v29 + 16);
          v31 = *(v29 + 24);
          v33 = *(v29 + 32);
          v84 = *v29;
          v85 = v30;
          v86 = v32;
          v87 = v31;
          v88 = v33;
          v89 = *(v29 + 40);
          v34 = a6;
          v35 = *(v28 + 24);

          v35(&v84, v27, v28);
          a6 = v34;
        }

        v36 = a5 + *(type metadata accessor for PairingRelationship(0) + 20);
        v37 = *(v36 + 8);
        v38 = *(v36 + 160);
        v39 = *(v36 + 168);
        v40 = *(v36 + 48);
        v84 = *v36;
        v85 = v37;
        v86 = v38;
        v87 = v39;
        v88 = v40;
        v89 = *(v36 + 32);
        v41 = *(a4 + *(type metadata accessor for SessionManager.Session(0) + 36));

        sub_1DEE8381C(&v84, v41);

        return a6(v42);
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v65 = sub_1DEF8D508();
      __swift_project_value_buffer(v65, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v66 = sub_1DEF8D4D8();
      v67 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v66, v67))
      {
        v82 = a6;
        v68 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84 = v80;
        *v68 = 136446466;
        *(v68 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v84);
        *(v68 + 12) = 2082;
        v69 = a1;
        v70 = sub_1DEF8D988();
        v72 = sub_1DEE12A5C(v70, v71, &v84);

        *(v68 + 14) = v72;
        _os_log_impl(&dword_1DEE0F000, v66, v67, "(%{public}s) Network failure encountered when sending sync item: %{public}s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v80, -1, -1);
        v73 = v68;
        a6 = v82;
        MEMORY[0x1E12CCD70](v73, -1, -1);
      }

      sub_1DEE7F920(a4);
      v74 = a5 + *(type metadata accessor for PairingRelationship(0) + 20);
      v75 = *(v74 + 8);
      v76 = *(v74 + 160);
      v77 = *(v74 + 168);
      v78 = *(v74 + 48);
      v84 = *v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      v88 = v78;
      v89 = *(v74 + 32);
      v79 = *(a4 + *(type metadata accessor for SessionManager.Session(0) + 36));

      sub_1DEE8381C(&v84, v79);

      v63 = v90[0];
    }

    return a6(v42);
  }

  v43 = a3[74];
  swift_beginAccess();
  if (!*(*(v43 + 16) + 16) || (, , sub_1DEEAF350(a4), v45 = v44, , v42 = , (v45 & 1) == 0))
  {
    v46 = a3[51];
    v47 = a3[52];
    __swift_project_boxed_opaque_existential_1(a3 + 48, v46);
    v48 = a4 + *(type metadata accessor for SessionManager.Session(0) + 20);
    v49 = *(v48 + 8);
    v51 = *(v48 + 16);
    v50 = *(v48 + 24);
    v52 = *(v48 + 32);
    v84 = *v48;
    v85 = v49;
    v86 = v51;
    v87 = v50;
    v88 = v52;
    v89 = *(v48 + 40);
    v53 = *(v47 + 24);

    v53(&v84, v46, v47);
  }

  return a6(v42);
}

uint64_t sub_1DEE8DED0(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1DEF8D1E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DEE17214(a1, v4, &qword_1ECDE4890, &qword_1DEF90990);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1DEE171B4(v4, &qword_1ECDE4890, &qword_1DEF90990);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1DEF8D178();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_1DEF8D148();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1DEE8E124(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v71 = a5;
  v72 = a6;
  v75 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v69 - v12;
  v14 = type metadata accessor for PairingRelationship(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  swift_beginAccess();
  sub_1DEE29594((a1 + 24), v77);
  v20 = v78;
  v21 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v22 = *(v21 + 8);
  v73 = a2;
  v74 = a3;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v20, v22, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DEE171B4(v13, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v23 = sub_1DEF8D508();
    __swift_project_value_buffer(v23, qword_1ECDF6028);
    v24 = v74;

    v25 = sub_1DEF8D4D8();
    v26 = sub_1DEF8DC98();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v75;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77[0] = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_1DEE12A5C(a1[66], a1[67], v77);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1DEE12A5C(v73, v24, v77);
      _os_log_impl(&dword_1DEE0F000, v25, v26, "%{public}s Cannot pair with a device we have not already discovered: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v30, -1, -1);
      MEMORY[0x1E12CCD70](v29, -1, -1);
    }

    v31 = 1;
  }

  else
  {
    sub_1DEEAB218(v13, v19, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v32 = &v19[*(v14 + 20)];
    v33 = *(v32 + 4);
    v34 = *(v32 + 5);
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v35 = v33 >= *(&xmmword_1ED786068 + 1) && xmmword_1ED786068 >= v34;
    v28 = v75;
    if (v35)
    {
      v49 = *v32;
      v50 = *(v32 + 1);
      v52 = *(v32 + 20);
      v51 = *(v32 + 21);
      v53 = v32[48];
      v54 = *(a4 + 8);
      v69 = *a4;
      v70 = v19;
      v56 = *(a4 + 16);
      v55 = *(a4 + 24);
      *a4 = v49;
      *(a4 + 8) = v50;
      *(a4 + 16) = v52;
      *(a4 + 24) = v51;
      *(a4 + 32) = v53;
      *(a4 + 40) = *(v32 + 2);

      sub_1DEE46550(v69, v54, v56, v55);
      v57 = a1 + 75;
      swift_beginAccess();
      v58 = a1[75];
      if (*(v58 + 16))
      {

        v59 = v74;
        v60 = sub_1DEE13224(v73, v74);
        if (v61)
        {
          v62 = *(*(v58 + 56) + 8 * v60);
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v28 = v75;
        v63 = v70;
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
        v59 = v74;
        v28 = v75;
        v63 = v70;
      }

      v64 = swift_allocObject();
      *(v64 + 16) = v71;
      *(v64 + 24) = v72;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1DEF38190(0, v62[2] + 1, 1, v62);
      }

      v66 = v62[2];
      v65 = v62[3];
      if (v66 >= v65 >> 1)
      {
        v62 = sub_1DEF38190((v65 > 1), v66 + 1, 1, v62);
      }

      v62[2] = v66 + 1;
      v67 = &v62[2 * v66];
      v67[4] = sub_1DEEAAEB8;
      v67[5] = v64;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *v57;
      *v57 = 0x8000000000000000;
      sub_1DEF3E394(v62, v73, v59, isUniquelyReferenced_nonNull_native);

      *v57 = v76;
      swift_endAccess();
      sub_1DEE273A0(v63, type metadata accessor for PairingRelationship);
      v31 = 8;
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v36 = sub_1DEF8D508();
      __swift_project_value_buffer(v36, qword_1ECDF6028);
      v37 = v70;
      sub_1DEEACA70(v19, v70, type metadata accessor for PairingRelationship);

      v38 = sub_1DEF8D4D8();
      v39 = v19;
      v40 = sub_1DEF8DC98();

      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v77[0] = v42;
        *v41 = 136446466;
        *(v41 + 4) = sub_1DEE12A5C(a1[66], a1[67], v77);
        *(v41 + 12) = 2082;
        v43 = PairingRelationship.description.getter();
        v44 = v37;
        v45 = v43;
        v47 = v46;
        sub_1DEE273A0(v44, type metadata accessor for PairingRelationship);
        v48 = sub_1DEE12A5C(v45, v47, v77);

        *(v41 + 14) = v48;
        _os_log_impl(&dword_1DEE0F000, v38, v40, "%{public}s Cannot pair with a device that has an incompatible protocol version: %{public}s", v41, 0x16u);
        v31 = 2;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v42, -1, -1);
        MEMORY[0x1E12CCD70](v41, -1, -1);

        sub_1DEE273A0(v39, type metadata accessor for PairingRelationship);
      }

      else
      {

        sub_1DEE273A0(v37, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v39, type metadata accessor for PairingRelationship);
        v31 = 2;
      }
    }
  }

  *v28 = v31;
}

void sub_1DEE8E8CC(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_1DEEAA8E8();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t sub_1DEE8E940(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + *(type metadata accessor for PairingRelationship(0) + 20);
  v6 = *(v5 + 8);
  v8 = *(v5 + 160);
  v7 = *(v5 + 168);
  v9 = *(v5 + 48);
  *&v15 = *v5;
  *(&v15 + 1) = v6;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = *(v5 + 32);
  v14[0] = 0;
  v14[1] = 0;
  v12 = 0;
  v13 = 0;

  sub_1DEE76BD8(&v15, v14, &v12);

  return a1(v10);
}

uint64_t sub_1DEE8E9F8(uint64_t a1)
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 232);
    *v4 = v6;
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
    v7 = v6;
    LOBYTE(v6) = sub_1DEF8D7B8();
    result = (*(v2 + 8))(v4, v1);
    if (v6)
    {
      sub_1DEE54CAC();
      sub_1DEE56F88();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEE8EB3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1DEF8D378();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v30 - v12;
  sub_1DEE29594(a3 + 304, v38);
  v13 = v39;
  v14 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) + 48);
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, v35);
  v16 = v36;
  v17 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v18 = MetadataStoring.hasRecords(from:)(a2 + v15, v16, *(v17 + 8));
  v19 = a2 + v15;
  v20 = v33;
  sub_1DEF8353C(v19, v34, v18 & 1, v13, v14, v8);
  __swift_destroy_boxed_opaque_existential_1(v35);
  if ((*(v20 + 48))(v8, 1, v9) == 1)
  {
    sub_1DEE171B4(v8, &qword_1ECDE4DC0, &qword_1DEF91640);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v22 = *(v20 + 32);
    v23 = v30;
    v22(v30, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v25 = v31;
    v24 = v32;
    v22(v31, v32, v9);
    sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v26 = sub_1DEF8D8E8();
    v27 = *(v20 + 8);
    if (v26)
    {
      v27(v23, v9);
      v28 = v24;
      v29 = v25;
    }

    else
    {
      v27(v25, v9);
      v28 = v24;
      v29 = v23;
    }

    return (v22)(v28, v29, v9);
  }
}

uint64_t sub_1DEE8EE64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v122 - v5;
  v123 = type metadata accessor for PairingRelationship(0);
  v137 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v122 - v14;
  v151 = sub_1DEF8D3F8();
  v139 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v136 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v122 - v20;
  v146 = sub_1DEF8D378();
  v21 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v128 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v122 - v28;
  v29 = sub_1DEF8D788();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v153 = result;
    v34 = *(result + 232);
    *v32 = v34;
    (*(v30 + 104))(v32, *MEMORY[0x1E69E8020], v29);
    v35 = v34;
    LOBYTE(v34) = sub_1DEF8D7B8();
    (*(v30 + 8))(v32, v29);
    if (v34)
    {
      if (qword_1ECDE2E58 == -1)
      {
LABEL_4:
        v36 = sub_1DEF8D508();
        v37 = __swift_project_value_buffer(v36, qword_1ECDF6028);
        v38 = v153;

        v127 = v37;
        v39 = sub_1DEF8D4D8();
        v40 = sub_1DEF8DCB8();

        v41 = os_log_type_enabled(v39, v40);
        v129 = v3;
        v122 = v7;
        v126 = v10;
        v42 = v146;
        v150 = v18;
        if (v41)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v154[0] = v44;
          *v43 = 136446210;
          v45 = *(v38 + 528);
          v46 = *(v38 + 536);

          v10 = sub_1DEE12A5C(v45, v46, v154);
          v18 = v150;

          *(v43 + 4) = v10;
          _os_log_impl(&dword_1DEE0F000, v39, v40, "(%{public}s) Suspension timer fired", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x1E12CCD70](v44, -1, -1);
          MEMORY[0x1E12CCD70](v43, -1, -1);
        }

        v47 = v132;
        sub_1DEF8D348();
        sub_1DEF8D2E8();
        v48 = v21 + 8;
        v3 = *(v21 + 8);
        (v3)(v47, v42);
        swift_beginAccess();
        sub_1DEE29594(v38 + 192, v154);
        v50 = v155;
        v49 = v156;
        __swift_project_boxed_opaque_existential_1(v154, v155);
        v51 = (*(*(*(v49 + 1) + 8) + 32))(v50);
        v52 = *(v51 + 64);
        v145 = v51 + 64;
        v138 = v51;
        v53 = 1 << *(v51 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v21 = v54 & v52;
        __swift_destroy_boxed_opaque_existential_1(v154);
        v55 = 0;
        v56 = (v53 + 63) >> 6;
        v134 = v139 + 16;
        v133 = v139 + 32;
        v149 = (v48 + 40);
        v147 = v48;
        v130 = (v48 + 24);
        v141 = (v139 + 8);
        *&v57 = 136446466;
        v124 = v57;
        v58 = v152;
        v142 = v56;
        v131 = v3;
        while (1)
        {
          if (!v21)
          {
            if (v56 <= v55 + 1)
            {
              v60 = v55 + 1;
            }

            else
            {
              v60 = v56;
            }

            v61 = v60 - 1;
            v62 = v146;
            v7 = v153;
            while (1)
            {
              v59 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                break;
              }

              if (v59 >= v56)
              {
                v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
                (*(*(v105 - 8) + 56))(v18, 1, 1, v105);
                v21 = 0;
                v55 = v61;
                goto LABEL_23;
              }

              v21 = *(v145 + 8 * v59);
              ++v55;
              if (v21)
              {
                v55 = v59;
                goto LABEL_22;
              }
            }

            __break(1u);
            goto LABEL_43;
          }

          v59 = v55;
LABEL_22:
          v63 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v64 = v63 | (v59 << 6);
          v65 = v138;
          v66 = v139;
          v67 = v136;
          v68 = v151;
          (*(v139 + 16))(v136, *(v138 + 48) + *(v139 + 72) * v64, v151);
          v69 = v140;
          sub_1DEEACA70(*(v65 + 56) + *(v137 + 72) * v64, v140, type metadata accessor for PairingRelationship);
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          v71 = *(v70 + 48);
          v72 = *(v66 + 32);
          v18 = v150;
          v72(v150, v67, v68);
          sub_1DEEAB218(v69, &v18[v71], type metadata accessor for PairingRelationship);
          (*(*(v70 - 8) + 56))(v18, 0, 1, v70);
          v62 = v146;
          v58 = v152;
          v7 = v153;
LABEL_23:
          sub_1DEE1BA88(v18, v58, &qword_1ECDE3C98, &unk_1DEF95610);
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          if ((*(*(v73 - 8) + 48))(v58, 1, v73) == 1)
          {

            sub_1DEE53BFC();

            return v131(v135, v62);
          }

          v74 = v148;
          sub_1DEEAB218(v58 + *(v73 + 48), v148, type metadata accessor for PairingRelationship);
          sub_1DEE29594((v7 + 192), v154);
          v75 = v155;
          v76 = v156;
          __swift_project_boxed_opaque_existential_1(v154, v155);
          v77 = MetadataStoring.hasRecords(from:)(v74, v75, *(v76 + 1));
          __swift_destroy_boxed_opaque_existential_1(v154);
          sub_1DEE29594((v7 + 304), v154);
          v78 = v155;
          v10 = v156;
          __swift_project_boxed_opaque_existential_1(v154, v155);
          v3 = v7;
          v79 = v144;
          (*(v10 + 1))(v74, v77 & 1, v78, v10);
          v80 = v79;
          v81 = *v149;
          if ((*v149)(v80, 1, v62) != 1)
          {
            break;
          }

          sub_1DEE171B4(v80, &qword_1ECDE4DC0, &qword_1DEF91640);
          __swift_destroy_boxed_opaque_existential_1(v154);
          sub_1DEE29594((v3 + 304), v154);
          v82 = v155;
          v10 = v156;
          __swift_project_boxed_opaque_existential_1(v154, v155);
          v83 = v77 & 1;
          v84 = v129;
          (*(v10 + 2))(v74, v83, v82, v10);
          if (v81(v84, 1, v62) == 1)
          {
            sub_1DEE273A0(v74, type metadata accessor for PairingRelationship);
            sub_1DEE171B4(v84, &qword_1ECDE4DC0, &qword_1DEF91640);
            __swift_destroy_boxed_opaque_existential_1(v154);
            goto LABEL_10;
          }

          v85 = v128;
          (*v130)(v128, v84, v62);
          __swift_destroy_boxed_opaque_existential_1(v154);
          v86 = v132;
          sub_1DEF8D2E8();
          sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v87 = sub_1DEF8D8E8();
          v3 = v131;
          v131(v86, v62);
          if (v87)
          {
            (v3)(v85, v62);
            v88 = v148;
            goto LABEL_37;
          }

          v106 = v148;
          v107 = v122;
          sub_1DEEACA70(v148, v122, type metadata accessor for PairingRelationship);
          v108 = v153;

          v10 = sub_1DEF8D4D8();
          v109 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v10, v109))
          {
            v110 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v154[0] = v125;
            *v110 = v124;
            v111 = *(v108 + 528);
            v112 = *(v153 + 536);

            v113 = sub_1DEE12A5C(v111, v112, v154);

            *(v110 + 4) = v113;
            *(v110 + 12) = 2080;
            v114 = PairingRelationship.description.getter();
            v116 = v115;
            sub_1DEE273A0(v107, type metadata accessor for PairingRelationship);
            v117 = sub_1DEE12A5C(v114, v116, v154);

            *(v110 + 14) = v117;
            _os_log_impl(&dword_1DEE0F000, v10, v109, "(%{public}s) Unpairing inactive relationship: %s", v110, 0x16u);
            v118 = v125;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v118, -1, -1);
            v119 = v110;
            v106 = v148;
            MEMORY[0x1E12CCD70](v119, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v107, type metadata accessor for PairingRelationship);
          }

          v18 = v150;
          v120 = *(v123 + 20);
          v154[0] = 0;
          v154[1] = 0;
          v121 = v140;
          sub_1DEE5F828((v106 + v120), v154, 2, 1, v140);
          sub_1DEE273A0(v121, type metadata accessor for PairingRelationship);
          (v3)(v128, v62);
          sub_1DEE273A0(v106, type metadata accessor for PairingRelationship);
LABEL_11:
          v58 = v152;
          (*v141)(v152, v151);
          v56 = v142;
        }

        (*v130)(v143, v80, v62);
        __swift_destroy_boxed_opaque_existential_1(v154);
        v89 = v132;
        sub_1DEF8D2E8();
        sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v90 = sub_1DEF8D8E8();
        v3 = v131;
        v131(v89, v62);
        v91 = v74;
        if ((v90 & 1) == 0)
        {
          v92 = v126;
          sub_1DEEACA70(v74, v126, type metadata accessor for PairingRelationship);
          v93 = v153;

          v10 = sub_1DEF8D4D8();
          v94 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v10, v94))
          {
            v95 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v154[0] = v125;
            *v95 = v124;
            v96 = *(v93 + 528);
            v97 = *(v153 + 536);

            v98 = sub_1DEE12A5C(v96, v97, v154);

            *(v95 + 4) = v98;
            *(v95 + 12) = 2080;
            v99 = PairingRelationship.description.getter();
            v101 = v100;
            sub_1DEE273A0(v92, type metadata accessor for PairingRelationship);
            v102 = sub_1DEE12A5C(v99, v101, v154);

            *(v95 + 14) = v102;
            _os_log_impl(&dword_1DEE0F000, v10, v94, "(%{public}s) Discarding data for inactive relationship: %s", v95, 0x16u);
            v103 = v125;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v103, -1, -1);
            v104 = v95;
            v91 = v148;
            MEMORY[0x1E12CCD70](v104, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v92, type metadata accessor for PairingRelationship);
          }

          sub_1DEE67760(v91);
        }

        (v3)(v143, v62);
        v88 = v91;
LABEL_37:
        sub_1DEE273A0(v88, type metadata accessor for PairingRelationship);
LABEL_10:
        v18 = v150;
        goto LABEL_11;
      }
    }

    else
    {
LABEL_43:
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

BOOL sub_1DEE8FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v22);
  v9 = v23;
  v8 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v10 = (*(*(*(v8 + 8) + 8) + 32))(v9);
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v11 = sub_1DEF2BBC8(sub_1DEEAA93C, v21, v10);

  __swift_destroy_boxed_opaque_existential_1(v22);
  if (qword_1ECDE37E0 != -1)
  {
    swift_once();
  }

  v12 = qword_1ECDF60A8;
  if (*(qword_1ECDF60A8 + 16) && (v13 = sub_1DEEAF2E8(*(v4 + 96)), (v14 & 1) != 0) && (v15 = *(*(v12 + 56) + 8 * v13), *(v15 + 16)) && (v16 = sub_1DEEAF2E8(*(a1 + 48)), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = v11[2];

  return v19 < v18;
}

BOOL sub_1DEE90164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v8 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = (&v61 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v61 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v61 - v25;
  v27 = sub_1DEF8D3F8();
  v28 = *(v27 - 8);
  v29 = v27;
  (*(v28 + 16))(v26, a1);
  sub_1DEEACA70(a2, &v26[*(v15 + 48)], type metadata accessor for PairingRelationship);
  sub_1DEE17214(v26, v23, &unk_1ECDE4350, &qword_1DEF93400);
  v69 = v15;
  v30 = &v23[*(v15 + 48)];
  v31 = type metadata accessor for PairingRelationship(0);
  sub_1DEEACA70(v30 + *(v31 + 20), v14, type metadata accessor for DeviceDescriptor);
  sub_1DEE273A0(v30, type metadata accessor for PairingRelationship);
  v33 = *v14;
  v32 = v14[1];

  sub_1DEE273A0(v14, type metadata accessor for DeviceDescriptor);
  v34 = *a3;
  v35 = a3[1];
  v64 = a3;
  if (v33 == v34 && v32 == v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = sub_1DEF8E4E8();
  }

  v38 = *(v28 + 8);
  v39 = v23;
  v40 = v29;
  v38(v39, v29);
  if (v37)
  {
    goto LABEL_13;
  }

  v41 = v31;
  v42 = v70;
  sub_1DEE17214(v26, v70, &unk_1ECDE4350, &qword_1DEF93400);
  v43 = v69;
  v44 = v42 + *(v69 + 48);
  v45 = v44 + *(v31 + 20);
  v46 = v66;
  sub_1DEEACA70(v45, v66, type metadata accessor for DeviceDescriptor);
  sub_1DEE273A0(v44, type metadata accessor for PairingRelationship);
  v48 = *v46;
  v47 = v46[1];

  sub_1DEE273A0(v46, type metadata accessor for DeviceDescriptor);
  if (v48 == v67 && v47 == v68)
  {

    v49 = v70;
  }

  else
  {
    v50 = sub_1DEF8E4E8();

    v38(v70, v40);
    if (v50)
    {
      goto LABEL_13;
    }

    v52 = v65;
    sub_1DEE17214(v26, v65, &unk_1ECDE4350, &qword_1DEF93400);
    v53 = v52 + *(v43 + 48);
    v54 = (v53 + *(v41 + 32));
    v70 = v41;
    v55 = *v54;
    v56 = v54[1];
    sub_1DEE4F8C0(*v54, v56);
    sub_1DEE273A0(v53, type metadata accessor for PairingRelationship);
    if (v56 == 2)
    {
      sub_1DEE4F8D4(v55, 2uLL);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v55, 2uLL);
      v38(v52, v40);
      v57 = v62;
      sub_1DEE1BA88(v26, v62, &unk_1ECDE4350, &qword_1DEF93400);
      v58 = v57 + *(v43 + 48);
      v59 = v63;
      sub_1DEEACA70(v58 + *(v70 + 20), v63, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v58, type metadata accessor for PairingRelationship);
      LODWORD(v58) = *(v59 + 48);
      sub_1DEE273A0(v59, type metadata accessor for DeviceDescriptor);
      v60 = v58 == *(v64 + 48);
      v38(v57, v40);
      return v60;
    }

    sub_1DEE4F8C0(v55, v56);
    sub_1DEE4F8D4(v55, v56);
    sub_1DEE4F8D4(0, 2uLL);
    sub_1DEE4F8D4(v55, v56);
    v49 = v52;
  }

  v38(v49, v40);
LABEL_13:
  sub_1DEE171B4(v26, &unk_1ECDE4350, &qword_1DEF93400);
  return 0;
}

void sub_1DEE9074C()
{
  v1 = type metadata accessor for PairingRelationship(0);
  v80 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v74 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v74 - v7;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 232);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_1DEE927F8(0, 0);
  v15 = v0;
  if (qword_1ECDE37E0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v17 = qword_1ECDF60A8;
    v18 = v88;
    v19 = v85;
    if (!*(qword_1ECDF60A8 + 16))
    {
      break;
    }

    v20 = sub_1DEEAF2E8(*(v15 + 96));
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(*(v17 + 56) + 8 * v20);
    v23 = v22 + 64;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v22 + 64);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    *&v29 = 136446722;
    v74 = v29;
    *&v29 = 136446466;
    v83 = v29;
    v77 = v22;
    v78 = v27;
    v84 = v1;
    v76 = v22 + 64;
    while (v26)
    {
      v30 = v28;
LABEL_15:
      v82 = (v26 - 1) & v26;
      v31 = __clz(__rbit64(v26)) | (v30 << 6);
      v32 = v30;
      v33 = *(*(v22 + 56) + 8 * v31);
      LODWORD(v86) = *(*(v22 + 48) + v31);
      LOBYTE(v89[0]) = v86;
      v34 = sub_1DEE91A74(v89, v33);
      v35 = *(v34 + 16);
      if (v35)
      {
        v79 = v32;
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v36 = sub_1DEF8D508();
        v37 = __swift_project_value_buffer(v36, qword_1ECDF6028);
        swift_bridgeObjectRetain_n();

        v38 = v34;
        v87 = v37;
        v39 = sub_1DEF8D4D8();
        v40 = sub_1DEF8DCB8();

        v41 = os_log_type_enabled(v39, v40);
        v81 = v38;
        if (v41)
        {
          v42 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v89[0] = v75;
          *v42 = v74;
          *(v42 + 4) = sub_1DEE12A5C(*(v15 + 528), *(v15 + 536), v89);
          *(v42 + 12) = 2082;
          v43 = 0x6863746177;
          if (v86 != 4)
          {
            v43 = 30324;
          }

          v44 = 0xE200000000000000;
          if (v86 == 4)
          {
            v44 = 0xE500000000000000;
          }

          if (v86 == 3)
          {
            v43 = 6578544;
          }

          v45 = 0xE300000000000000;
          if (v86 == 3)
          {
            v44 = 0xE300000000000000;
          }

          v46 = 6513005;
          if (v86 != 1)
          {
            v46 = 0x656E6F6870;
            v45 = 0xE500000000000000;
          }

          if (!v86)
          {
            v46 = 0x6E776F6E6B6E75;
            v45 = 0xE700000000000000;
          }

          if (v86 <= 2)
          {
            v47 = v46;
          }

          else
          {
            v47 = v43;
          }

          if (v86 <= 2)
          {
            v48 = v45;
          }

          else
          {
            v48 = v44;
          }

          v49 = sub_1DEE12A5C(v47, v48, v89);

          *(v42 + 14) = v49;
          *(v42 + 22) = 2050;
          v50 = v81;
          v51 = *(v81 + 16);

          *(v42 + 24) = v51;

          _os_log_impl(&dword_1DEE0F000, v39, v40, "(%{public}s) Too many paired %{public}s devices; unpairing %{public}ld", v42, 0x20u);
          v52 = v75;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v52, -1, -1);
          MEMORY[0x1E12CCD70](v42, -1, -1);

          v38 = v50;
          v19 = v85;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v53 = v38 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v86 = *(v80 + 72);
        do
        {
          sub_1DEEACA70(v53, v19, type metadata accessor for PairingRelationship);
          sub_1DEEACA70(v19, v18, type metadata accessor for PairingRelationship);

          v65 = sub_1DEF8D4D8();
          v66 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v65, v66))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v89[0] = v55;
            *v54 = v83;
            *(v54 + 4) = sub_1DEE12A5C(*(v15 + 528), *(v15 + 536), v89);
            *(v54 + 12) = 2082;
            v56 = PairingRelationship.description.getter();
            v57 = v3;
            v58 = v15;
            v60 = v59;
            sub_1DEE273A0(v88, type metadata accessor for PairingRelationship);
            v61 = sub_1DEE12A5C(v56, v60, v89);
            v15 = v58;
            v3 = v57;
            v18 = v88;

            *(v54 + 14) = v61;
            _os_log_impl(&dword_1DEE0F000, v65, v66, "(%{public}s) Unpairing relationship (%{public}s", v54, 0x16u);
            swift_arrayDestroy();
            v62 = v55;
            v1 = v84;
            MEMORY[0x1E12CCD70](v62, -1, -1);
            v63 = v54;
            v19 = v85;
            MEMORY[0x1E12CCD70](v63, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v18, type metadata accessor for PairingRelationship);
          }

          v64 = *(v1 + 20);
          v89[0] = 0;
          v89[1] = 0;
          sub_1DEE5F828((v19 + v64), v89, 2, 0, v3);
          sub_1DEE273A0(v3, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v19, type metadata accessor for PairingRelationship);
          v53 += v86;
          --v35;
        }

        while (v35);

        v28 = v79;
        v23 = v76;
        v22 = v77;
      }

      else
      {

        v28 = v32;
      }

      v27 = v78;
      v26 = v82;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        return;
      }

      v26 = *(v23 + 8 * v30);
      ++v28;
      if (v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v67 = sub_1DEF8D508();
  __swift_project_value_buffer(v67, qword_1ECDF6028);

  v68 = sub_1DEF8D4D8();
  v69 = sub_1DEF8DC98();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = v15;
    v73 = v71;
    v89[0] = v71;
    *v70 = 136446210;
    *(v70 + 4) = sub_1DEE12A5C(*(v72 + 528), *(v72 + 536), v89);
    _os_log_impl(&dword_1DEE0F000, v68, v69, "(%{public}s) Local device has no paired device limits", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x1E12CCD70](v73, -1, -1);
    MEMORY[0x1E12CCD70](v70, -1, -1);
  }
}

uint64_t sub_1DEE90FF8()
{
  v1 = v0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v93 = &v85 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v85 - v6;
  v87 = type metadata accessor for PairingRelationship(0);
  v7 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 232);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v24 = v23;
  v25 = sub_1DEF8D7B8();
  result = (*(v19 + 8))(v22, v18);
  if ((v25 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v105);
  v28 = v106;
  v27 = v107;
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v29 = (*(*(*(v27 + 8) + 8) + 32))(v28);

  v30 = v1;
  v31 = sub_1DEEA4880(v29, v1, sub_1DEEA6428, sub_1DEEA6428);

  v88 = v30;

  __swift_destroy_boxed_opaque_existential_1(v105);
  v32 = *(v31 + 2);
  v103 = v11;
  v97 = v14;
  if (v32)
  {
    v105[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v32, 0);
    v104 = v105[0];
    v33 = v31 + 64;
    result = sub_1DEF8DE18();
    v34 = result;
    v35 = 0;
    v86 = v31 + 72;
    v89 = v32;
    v90 = v31 + 64;
    v91 = v7;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << v31[32])
    {
      if ((*&v33[8 * (v34 >> 6)] & (1 << v34)) == 0)
      {
        goto LABEL_32;
      }

      v100 = 1 << v34;
      *&v101 = v34 >> 6;
      v37 = *(v31 + 9);
      v98 = v35;
      v99 = v37;
      v38 = v31;
      v39 = v95;
      v40 = *(v95 + 48);
      v41 = *(v38 + 6);
      v42 = sub_1DEF8D3F8();
      v43 = *(v42 - 8);
      v44 = v17;
      v45 = v92;
      (*(v43 + 16))(v92, v41 + *(v43 + 72) * v34, v42);
      v46 = *(v38 + 7);
      v102 = *(v7 + 72);
      sub_1DEEACA70(v46 + v102 * v34, &v45[v40], type metadata accessor for PairingRelationship);
      v47 = v93;
      (*(v43 + 32))(v93, v45, v42);
      v48 = &v45[v40];
      v17 = v44;
      sub_1DEEAB218(v48, v47 + *(v39 + 48), type metadata accessor for PairingRelationship);
      v49 = v94;
      sub_1DEE1BA88(v47, v94, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v49 + *(v39 + 48), v44, type metadata accessor for PairingRelationship);
      (*(v43 + 8))(v49, v42);
      v50 = v104;
      v105[0] = v104;
      v52 = *(v104 + 16);
      v51 = *(v104 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1DEEC7DA4((v51 > 1), v52 + 1, 1);
        v50 = v105[0];
      }

      *(v50 + 16) = v52 + 1;
      v7 = v91;
      v53 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v104 = v50;
      result = sub_1DEEAB218(v44, v50 + v53 + v52 * v102, type metadata accessor for PairingRelationship);
      v36 = 1 << v38[32];
      if (v34 >= v36)
      {
        goto LABEL_33;
      }

      v31 = v38;
      v33 = v90;
      v54 = *&v90[8 * v101];
      if ((v54 & v100) == 0)
      {
        goto LABEL_34;
      }

      if (v99 != *(v31 + 9))
      {
        goto LABEL_35;
      }

      v55 = v54 & (-2 << (v34 & 0x3F));
      if (v55)
      {
        v36 = __clz(__rbit64(v55)) | v34 & 0x7FFFFFFFFFFFFFC0;
        v11 = v103;
        v14 = v97;
      }

      else
      {
        v56 = v101 << 6;
        v57 = v101 + 1;
        v58 = &v86[8 * v101];
        v11 = v103;
        v14 = v97;
        while (v57 < (v36 + 63) >> 6)
        {
          v60 = *v58++;
          v59 = v60;
          v56 += 64;
          ++v57;
          if (v60)
          {
            result = sub_1DEE2F804(v34, v99, 0);
            v36 = __clz(__rbit64(v59)) + v56;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v34, v99, 0);
      }

LABEL_5:
      v35 = v98 + 1;
      v34 = v36;
      if (v98 + 1 == v89)
      {

        v62 = v104;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v63 = *(v62 + 16);
  v64 = v88;
  if (v63)
  {
    v65 = *(v7 + 80);
    v104 = v62;
    v66 = v62 + ((v65 + 32) & ~v65);
    v102 = *(v7 + 72);
    *&v61 = 136446466;
    v101 = v61;
    do
    {
      sub_1DEEACA70(v66, v14, type metadata accessor for PairingRelationship);
      v69 = v96;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v70 = sub_1DEF8D508();
      __swift_project_value_buffer(v70, qword_1ECDF6028);
      sub_1DEEACA70(v14, v11, type metadata accessor for PairingRelationship);
      sub_1DEEACA70(v14, v69, type metadata accessor for PairingRelationship);
      v71 = sub_1DEF8D4D8();
      v72 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v105[0] = v74;
        *v73 = v101;
        v75 = &v11[*(v87 + 20)];
        v76 = *v75;
        v77 = v75[1];

        sub_1DEE273A0(v103, type metadata accessor for PairingRelationship);
        v78 = sub_1DEE12A5C(v76, v77, v105);

        *(v73 + 4) = v78;
        *(v73 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v79 = sub_1DEF8E2E8();
        v81 = v80;
        sub_1DEE273A0(v69, type metadata accessor for PairingRelationship);
        v82 = sub_1DEE12A5C(v79, v81, v105);
        v11 = v103;

        *(v73 + 14) = v82;
        _os_log_impl(&dword_1DEE0F000, v71, v72, "Forgetting device: %{public}s (introduced relationship: %{public}s)", v73, 0x16u);
        swift_arrayDestroy();
        v83 = v74;
        v64 = v88;
        MEMORY[0x1E12CCD70](v83, -1, -1);
        v84 = v73;
        v14 = v97;
        MEMORY[0x1E12CCD70](v84, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v69, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v11, type metadata accessor for PairingRelationship);
      }

      sub_1DEE67760(v14);
      sub_1DEE29594(v64 + 192, v105);
      v68 = v106;
      v67 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      (*(*(v67 + 16) + 120))(v14, v68);
      sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v66 += v102;
      --v63;
    }

    while (v63);
  }
}

uint64_t sub_1DEE91A74(unsigned __int8 *a1, uint64_t a2)
{
  v51 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v49 - v8;
  v9 = type metadata accessor for PairingRelationship(0);
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = *(v2 + 232);
  *v16 = v18;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v19 = v18;
  v20 = sub_1DEF8D7B8();
  (*(v13 + 8))(v16, v12);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, v55);
  v22 = v56;
  v21 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v23 = (*(*(*(v21 + 8) + 8) + 32))(v22);
  v12 = 0;
  sub_1DEE9ED38(v23, v17);
  v17 = v24;

  __swift_destroy_boxed_opaque_existential_1(v55);
  v25 = *(v17 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v26 = sub_1DEF2B474(*(v17 + 16), 0);
    v27 = v4;
    sub_1DEF2D874(v55, v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v25, v17);
    v28 = v55[0];
    v16 = v55[1];
    v12 = v55[2];
    v49[1] = v56;
    v50 = v29;
    v49[0] = v57;

    sub_1DEE2774C(v28);
    if (v50 != v25)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v4 = v27;
    v12 = 0;
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v55[0] = v26;
  sub_1DEEA12F0(v55);

  v17 = v55[0];
  v30 = *(v55[0] + 16);
  if (v30)
  {
    v55[0] = v16;
    sub_1DEEC7DA4(0, v30, 0);
    v31 = v55[0];
    v32 = *(v4 + 80);
    v50 = v17;
    v17 += (v32 + 32) & ~v32;
    v33 = *(v4 + 72);
    v12 = &qword_1DEF93400;
    do
    {
      v34 = v53;
      sub_1DEE17214(v17, v53, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE1BA88(v34, v6, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v6 + *(v54 + 48), v11, type metadata accessor for PairingRelationship);
      v35 = sub_1DEF8D3F8();
      (*(*(v35 - 8) + 8))(v6, v35);
      v55[0] = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      v16 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        sub_1DEEC7DA4((v36 > 1), v37 + 1, 1);
        v31 = v55[0];
      }

      *(v31 + 16) = v16;
      sub_1DEEAB218(v11, v31 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, type metadata accessor for PairingRelationship);
      v17 += v33;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v31 + 16);
  v39 = v38 - v51;
  if (__OFSUB__(v38, v51))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v39 <= 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1DEE4FC68(v39, v31);
  if ((v42 & 1) == 0)
  {
LABEL_16:
    sub_1DEF41170(v17, v40, v41, v42);
    v44 = v43;
    swift_unknownObjectRelease();
    return v44;
  }

  v6 = v42;
  v16 = v41;
  v12 = v40;
  sub_1DEF8E538();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(v46 + 16);

  if (__OFSUB__(v6 >> 1, v16))
  {
    goto LABEL_29;
  }

  if (v47 != (v6 >> 1) - v16)
  {
LABEL_30:
    swift_unknownObjectRelease();
    v42 = v6;
    v41 = v16;
    v40 = v12;
    goto LABEL_16;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v48;
  if (v48)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DEE92068(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v69 - v16);
  v72 = a1;
  sub_1DEE17214(a1, &v69 - v16, &unk_1ECDE4350, &qword_1DEF93400);
  v18 = *(v8 + 48);
  v80 = v17;
  v19 = v17 + v18;
  v20 = type metadata accessor for PairingRelationship(0);
  v21 = (v19 + v20[8]);
  v22 = *v21;
  v23 = v21[1];
  sub_1DEE4F8C0(*v21, v23);
  sub_1DEE273A0(v19, type metadata accessor for PairingRelationship);
  v73 = a2;
  v24 = a2;
  v25 = v8;
  sub_1DEE17214(v24, v14, &unk_1ECDE4350, &qword_1DEF93400);
  v26 = &v14[*(v8 + 48)];
  v27 = (v26 + v20[8]);
  v28 = *v27;
  v29 = v27[1];
  sub_1DEE4F8C0(*v27, v29);
  sub_1DEE273A0(v26, type metadata accessor for PairingRelationship);
  if (v23 <= 1)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v29)
    {
      goto LABEL_20;
    }

LABEL_24:
    v34 = v79;
    sub_1DEE17214(v72, v79, &unk_1ECDE4350, &qword_1DEF93400);
    v35 = v34 + *(v25 + 48);
    v36 = v20[9];
    v38 = v75;
    v37 = v76;
    v72 = *(v76 + 16);
    v39 = v77;
    v72(v75, v35 + v36, v77);
    sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
    v40 = v78;
    sub_1DEE17214(v73, v78, &unk_1ECDE4350, &qword_1DEF93400);
    v41 = v40 + *(v25 + 48);
    v42 = v20[9];
LABEL_29:
    v49 = v74;
    v72(v74, v41 + v42, v39);
    sub_1DEE273A0(v41, type metadata accessor for PairingRelationship);
    v33 = sub_1DEF8D308();
    v50 = *(v37 + 8);
    v50(v49, v39);
    v50(v38, v39);
    v51 = sub_1DEF8D3F8();
    v52 = *(*(v51 - 8) + 8);
    v52(v78, v51);
    v52(v79, v51);
    v52(v14, v51);
    v52(v80, v51);
    return v33 & 1;
  }

  if (v23 == 3)
  {
    if ((v29 - 1) < 2 || !v29)
    {
      goto LABEL_25;
    }

    if (v29 != 3)
    {
LABEL_20:
      sub_1DEE4F8D4(v28, v29);
LABEL_25:
      v43 = sub_1DEF8D3F8();
      v44 = *(*(v43 - 8) + 8);
      v44(v14, v43);
      v44(v80, v43);
      v33 = 1;
      return v33 & 1;
    }

    goto LABEL_24;
  }

  if (v23 != 2)
  {
LABEL_11:
    sub_1DEE4F8D4(v22, v23);
LABEL_12:
    if ((v29 - 1) >= 2)
    {
      if (v29)
      {
        v30 = v29 == 3;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_31:
    v53 = sub_1DEF8D3F8();
    v69 = v53;
    v54 = *(v53 - 8);
    v55 = *(v54 + 8);
    v70 = v55;
    v71 = v54 + 8;
    v55(v14, v53);
    v55(v80, v53);
    v56 = v79;
    sub_1DEE17214(v72, v79, &unk_1ECDE4350, &qword_1DEF93400);
    v57 = v56 + *(v25 + 48);
    v58 = v20[9];
    v60 = v75;
    v59 = v76;
    v80 = *(v76 + 16);
    v61 = v77;
    v80(v75, v57 + v58, v77);
    sub_1DEE273A0(v57, type metadata accessor for PairingRelationship);
    v62 = v78;
    sub_1DEE17214(v73, v78, &unk_1ECDE4350, &qword_1DEF93400);
    v63 = v62 + *(v25 + 48);
    v64 = v74;
    v80(v74, v63 + v20[9], v61);
    sub_1DEE273A0(v63, type metadata accessor for PairingRelationship);
    v33 = sub_1DEF8D308();
    v65 = *(v59 + 8);
    v65(v64, v61);
    v65(v60, v61);
    v66 = v69;
    v67 = v70;
    v70(v62, v69);
    v67(v79, v66);
    return v33 & 1;
  }

  if (v29 > 1)
  {
    if (v29 != 3)
    {
      if (v29 == 2)
      {
        v45 = v79;
        sub_1DEE17214(v72, v79, &unk_1ECDE4350, &qword_1DEF93400);
        v46 = v45 + *(v25 + 48);
        v47 = v20[6];
        v38 = v75;
        v37 = v76;
        v72 = *(v76 + 16);
        v39 = v77;
        v72(v75, v46 + v47, v77);
        sub_1DEE273A0(v46, type metadata accessor for PairingRelationship);
        v48 = v78;
        sub_1DEE17214(v73, v78, &unk_1ECDE4350, &qword_1DEF93400);
        v41 = v48 + *(v25 + 48);
        v42 = v20[6];
        goto LABEL_29;
      }

LABEL_30:
      sub_1DEE4F8D4(v28, v29);
      goto LABEL_31;
    }
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_18:
  v31 = sub_1DEF8D3F8();
  v32 = *(*(v31 - 8) + 8);
  v32(v14, v31);
  v32(v80, v31);
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1DEE927F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v58 - v10;
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 232);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1DEF8D7B8();
  result = (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v79);
  v23 = v80;
  v24 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v25 = (*(*(*(v24 + 8) + 8) + 32))(v23);
  v26 = sub_1DEE9EBC8(v25, sub_1DEE9F55C, sub_1DEE9F55C);

  __swift_destroy_boxed_opaque_existential_1(v79);
  v27 = *(v26 + 2);
  if (v27)
  {
    v59 = v3;
    v60 = a1;
    v61 = a2;
    v79[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v27, 0);
    v28 = v79[0];
    v29 = v26 + 64;
    result = sub_1DEF8DE18();
    v30 = result;
    v31 = 0;
    v62 = v26 + 72;
    v32 = v12;
    v63 = v27;
    v64 = v26 + 64;
    v65 = v12;
    while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << v26[32])
    {
      if ((*&v29[8 * (v30 >> 6)] & (1 << v30)) == 0)
      {
        goto LABEL_26;
      }

      v72 = 1 << v30;
      v73 = v30 >> 6;
      v70 = v31;
      v71 = *(v26 + 9);
      v34 = v26;
      v35 = v69;
      v75 = v28;
      v36 = *(v69 + 48);
      v37 = *(v34 + 6);
      v38 = sub_1DEF8D3F8();
      v39 = *(v38 - 8);
      v40 = v14;
      v41 = v66;
      (*(v39 + 16))(v66, v37 + *(v39 + 72) * v30, v38);
      v42 = *(v34 + 7);
      v74 = *(v32 + 72);
      sub_1DEEACA70(v42 + v74 * v30, &v41[v36], type metadata accessor for PairingRelationship);
      v43 = v67;
      (*(v39 + 32))(v67, v41, v38);
      v44 = &v41[v36];
      v14 = v40;
      sub_1DEEAB218(v44, v43 + *(v35 + 48), type metadata accessor for PairingRelationship);
      v45 = v68;
      sub_1DEE1BA88(v43, v68, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v45 + *(v35 + 48), v40, type metadata accessor for PairingRelationship);
      v46 = v45;
      v28 = v75;
      (*(v39 + 8))(v46, v38);
      v79[0] = v28;
      v48 = *(v28 + 16);
      v47 = *(v28 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1DEEC7DA4((v47 > 1), v48 + 1, 1);
        v28 = v79[0];
      }

      *(v28 + 16) = v48 + 1;
      v32 = v65;
      result = sub_1DEEAB218(v40, v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v48 * v74, type metadata accessor for PairingRelationship);
      v33 = 1 << v34[32];
      if (v30 >= v33)
      {
        goto LABEL_27;
      }

      v29 = v64;
      v49 = *&v64[8 * v73];
      if ((v49 & v72) == 0)
      {
        goto LABEL_28;
      }

      v26 = v34;
      if (v71 != *(v34 + 9))
      {
        goto LABEL_29;
      }

      v50 = v49 & (-2 << (v30 & 0x3F));
      if (v50)
      {
        v33 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v51 = v73 << 6;
        v52 = v73 + 1;
        v53 = &v62[8 * v73];
        while (v52 < (v33 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            result = sub_1DEE2F804(v30, v71, 0);
            v33 = __clz(__rbit64(v54)) + v51;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v30, v71, 0);
      }

LABEL_5:
      v31 = v70 + 1;
      v30 = v33;
      if (v70 + 1 == v63)
      {

        a2 = v61;
        a1 = v60;
        v3 = v59;
        goto LABEL_22;
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
    goto LABEL_30;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_beginAccess();
  sub_1DEE17214(v3 + 56, v79, &qword_1ECDE3C00, &qword_1DEF910C0);
  if (v80)
  {
    sub_1DEE29594(v79, v76);
    sub_1DEE171B4(v79, &qword_1ECDE3C00, &qword_1DEF910C0);
    v56 = v77;
    v57 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v57 + 32))(v28, a1, a2, v56, v57);

    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {

    return sub_1DEE171B4(v79, &qword_1ECDE3C00, &qword_1DEF910C0);
  }
}

uint64_t sub_1DEE92FA8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v137 = a1;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v134 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE8, &unk_1DEF9A500);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v134 - v11;
  v145 = type metadata accessor for RecordStub(0);
  v135 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v139 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = (&v134 - v14);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v134 - v19;
  v160 = sub_1DEF8D3F8();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v140 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v134 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v134 - v24;
  v26 = sub_1DEF8D788();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = *a2;
  v31 = *(v3 + 232);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26, v28);
  v32 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  result = (*(v27 + 8))(v30, v26);
  if (v31)
  {
    swift_beginAccess();
    sub_1DEE29594(v3 + 192, v173);
    v34 = v174;
    v35 = v175;
    __swift_project_boxed_opaque_existential_1(v173, v174);
    v36 = (*(*(*(v35 + 8) + 8) + 32))(v34);
    v37 = sub_1DEE9EBC8(v36, sub_1DEE9FFA8, sub_1DEE9FFA8);

    __swift_destroy_boxed_opaque_existential_1(v173);
    v38 = v37[2];
    v144 = v3;
    v158 = v5;
    v138 = v10;
    if (v38)
    {
      v134 = v6;
      v173[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v38, 0);
      v39 = v173[0];
      v168 = (v37 + 8);
      result = sub_1DEF8DE18();
      v40 = result;
      v41 = 0;
      v152 = (v159 + 16);
      v151 = (v159 + 8);
      v146 = (v37 + 9);
      v42 = v37;
      v153 = v25;
      v148 = v38;
      *&v150 = v159 + 32;
      v149 = v37;
      while ((v40 & 0x8000000000000000) == 0 && v40 < 1 << *(v42 + 32))
      {
        if ((*&v168[8 * (v40 >> 6)] & (1 << v40)) == 0)
        {
          goto LABEL_95;
        }

        v163 = 1 << v40;
        v164 = v40 >> 6;
        v161 = v41;
        v162 = *(v42 + 9);
        v167 = v39;
        v44 = v157;
        v45 = *(v157 + 48);
        v46 = v159;
        v47 = *(v159 + 72);
        v48 = v42[6] + v47 * v40;
        v165 = *(v159 + 16);
        v166 = v47;
        v49 = v154;
        v50 = v160;
        v165(v154, v48, v160);
        v51 = v42[7];
        v52 = type metadata accessor for PairingRelationship(0);
        sub_1DEEACA70(v51 + *(*(v52 - 8) + 72) * v40, &v49[v45], type metadata accessor for PairingRelationship);
        v53 = *(v46 + 32);
        v54 = v155;
        v53(v155, v49, v50);
        v55 = &v49[v45];
        v56 = v153;
        sub_1DEEAB218(v55, &v54[*(v44 + 48)], type metadata accessor for PairingRelationship);
        v57 = v54;
        v58 = v156;
        sub_1DEE1BA88(v57, v156, &unk_1ECDE4350, &qword_1DEF93400);
        v59 = *(v44 + 48);
        v39 = v167;
        v165(v56, v58 + v59, v50);
        sub_1DEE273A0(v58 + v59, type metadata accessor for PairingRelationship);
        (*(v46 + 8))(v58, v50);
        v173[0] = v39;
        v61 = *(v39 + 16);
        v60 = *(v39 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1DEEC7D60((v60 > 1), v61 + 1, 1);
          v39 = v173[0];
        }

        *(v39 + 16) = v61 + 1;
        result = (v53)(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v61 * v166, v56, v50);
        v42 = v149;
        v43 = 1 << *(v149 + 32);
        if (v40 >= v43)
        {
          goto LABEL_96;
        }

        v62 = *&v168[8 * v164];
        if ((v62 & v163) == 0)
        {
          goto LABEL_97;
        }

        if (v162 != *(v149 + 9))
        {
          goto LABEL_98;
        }

        v63 = v62 & (-2 << (v40 & 0x3F));
        if (v63)
        {
          v43 = __clz(__rbit64(v63)) | v40 & 0x7FFFFFFFFFFFFFC0;
          v5 = v158;
        }

        else
        {
          v64 = v164 << 6;
          v65 = (v164 + 1);
          v66 = &v146[8 * v164];
          v5 = v158;
          while (v65 < (v43 + 63) >> 6)
          {
            v68 = *v66++;
            v67 = v68;
            v64 += 64;
            ++v65;
            if (v68)
            {
              result = sub_1DEE2F804(v40, v162, 0);
              v43 = __clz(__rbit64(v67)) + v64;
              goto LABEL_5;
            }
          }

          result = sub_1DEE2F804(v40, v162, 0);
        }

LABEL_5:
        v41 = v161 + 1;
        v40 = v43;
        if (v161 + 1 == v148)
        {

          v3 = v144;
          v6 = v134;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      __break(1u);
      goto LABEL_99;
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v69 = sub_1DEEA3B70(v39);

    v172 = MEMORY[0x1E69E7CD0];
    v70 = *(v137 + 16);
    if (!v70)
    {

      return MEMORY[0x1E69E7CD0];
    }

    v154 = v69;
    v71 = v135;
    v72 = (v137 + ((*(v135 + 80) + 32) & ~*(v135 + 80)));
    swift_beginAccess();
    v73 = 0;
    v156 = v159 + 16;
    v168 = *(v71 + 72);
    v155 = (v159 + 8);
    v157 = v6 + 48;
    v151 = (v6 + 32);
    v152 = (v6 + 8);
    *&v74 = 136446210;
    v150 = v74;
    v165 = v72;
    v166 = v70;
    while (1)
    {
      v75 = v169;
      sub_1DEEACA70(v72 + v168 * v73, v169, type metadata accessor for RecordStub);
      v76 = *v75;
      v77 = *(v76 + 32);
      v78 = *(v3 + 240);
      if ((v78 & 0xC000000000000001) != 0)
      {

        v79 = sub_1DEF8E0B8();

        if (!v79)
        {
          goto LABEL_36;
        }

        v171 = v79;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v80 = v173[0];

        if (!v80)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v78 + 16))
        {
          goto LABEL_25;
        }

        v81 = sub_1DEEAF20C(v77);
        if ((v82 & 1) == 0)
        {

          goto LABEL_25;
        }

        v80 = *(*(v78 + 56) + 8 * v81);

        if (!v80)
        {
          goto LABEL_25;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v83 = *(v80 + 24);
        ObjectType = swift_getObjectType();
        (*(v83 + 8))(v173, ObjectType, v83);
        swift_unknownObjectRelease();
        if (v173[0])
        {
LABEL_36:

          goto LABEL_25;
        }
      }

      v167 = v80;
      v170 = MEMORY[0x1E69E7CD0];
      v171 = MEMORY[0x1E69E7CD0];
      sub_1DEE29594(v3 + 192, v173);
      v85 = v174;
      v86 = v175;
      __swift_project_boxed_opaque_existential_1(v173, v174);
      v87 = (*(*(*(v86 + 8) + 8) + 64))(v76, v85);
      if (!v87)
      {
        __swift_destroy_boxed_opaque_existential_1(v173);
        v92 = 1;
        goto LABEL_72;
      }

      v88 = v87;
      __swift_destroy_boxed_opaque_existential_1(v173);
      v163 = sub_1DEE2BAF8(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v89 = sub_1DEF8D908();
      v90 = *(v88 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      LODWORD(v164) = v89;
      v161 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination;
      if (v90)
      {
        break;
      }

      if (v147)
      {
        goto LABEL_48;
      }

      LODWORD(v163) = 1;
LABEL_50:
      v93 = *(v145 + 28);
      v94 = *(v143 + 48);
      v95 = v88;
      v96 = v142;
      sub_1DEE17214(v88 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v142, &qword_1ECDE4DC0, &qword_1DEF91640);
      sub_1DEE17214(v169 + v93, v96 + v94, &qword_1ECDE4DC0, &qword_1DEF91640);
      v97 = *v157;
      if ((*v157)(v96, 1, v5) == 1)
      {
        v98 = v97(v96 + v94, 1, v5);
        v99 = v139;
        if (v98 != 1)
        {
          goto LABEL_57;
        }

        sub_1DEE171B4(v96, &qword_1ECDE4DC0, &qword_1DEF91640);
        v72 = v165;
        v3 = v144;
        if (!v163)
        {
          goto LABEL_67;
        }

        if ((v164 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v100 = v138;
        sub_1DEE17214(v96, v138, &qword_1ECDE4DC0, &qword_1DEF91640);
        if (v97(v96 + v94, 1, v5) == 1)
        {
          (*v152)(v100, v5);
LABEL_57:
          sub_1DEE171B4(v96, &qword_1ECDE3DE8, &unk_1DEF9A500);
          v3 = v144;
          if (v163)
          {

            if (v164)
            {
LABEL_59:
              v92 = 0;
            }

            else
            {
LABEL_69:
              v92 = 1;
            }
          }

          else
          {
LABEL_67:
            if (*(v95 + v161))
            {

              v118 = sub_1DEEA3B70(v117);

              sub_1DEE944FC(v118);
            }

            else
            {

              v171 = v154;
            }

            v92 = v164 ^ 1;
          }

LABEL_72:
          if (v147)
          {

            v120 = sub_1DEEA3B70(v119);

            sub_1DEE944FC(v120);
            v121 = v170;
          }

          else
          {
            v121 = v154;
            v170 = v154;
          }

          v122 = v171;
          if (*(v121 + 16) <= *(v171 + 16) >> 3)
          {
            v173[0] = v171;

            sub_1DEEC8B48(v121);
            v123 = v173[0];
          }

          else
          {

            v123 = sub_1DEEC8FB4(v121, v122);
          }

          v124 = v5;
          if (*(v122 + 16) <= *(v121 + 16) >> 3)
          {
            v173[0] = v121;
            sub_1DEEC8B48(v122);

            v125 = v173[0];
          }

          else
          {
            v125 = sub_1DEEC8FB4(v122, v121);
          }

          sub_1DEE944FC(v123);

          if (v92)
          {
            v126 = v121;
          }

          else
          {
            v126 = v125;
          }

          sub_1DEE944FC(v126);

          sub_1DEE273A0(v169, type metadata accessor for RecordStub);
          v5 = v124;
          v72 = v165;
          v70 = v166;
          goto LABEL_26;
        }

        v101 = v5;
        v102 = v136;
        (*v151)(v136, v96 + v94, v101);
        sub_1DEE2BAF8(&qword_1ECDE3DF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        LODWORD(v162) = sub_1DEF8D908();
        v103 = *v152;
        v104 = v102;
        v5 = v101;
        (*v152)(v104, v101);
        v103(v100, v101);
        sub_1DEE171B4(v96, &qword_1ECDE4DC0, &qword_1DEF91640);
        v99 = v139;
        v72 = v165;
        v70 = v166;
        v3 = v144;
        if ((v163 & 1) == 0)
        {
          goto LABEL_67;
        }

        if ((v164 & 1) == 0)
        {
          goto LABEL_69;
        }

        if ((v162 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v105 = sub_1DEF8D508();
      __swift_project_value_buffer(v105, qword_1ECDF6028);
      sub_1DEEACA70(v169, v99, type metadata accessor for RecordStub);
      v106 = sub_1DEF8D4D8();
      v107 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = v99;
        v109 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v173[0] = v164;
        *v109 = v150;
        v110 = Record.ID.description.getter();
        v111 = v5;
        v113 = v112;
        v114 = v108;
        v72 = v165;
        sub_1DEE273A0(v114, type metadata accessor for RecordStub);
        v115 = sub_1DEE12A5C(v110, v113, v173);
        v5 = v111;
        v70 = v166;

        *(v109 + 4) = v115;
        _os_log_impl(&dword_1DEE0F000, v106, v107, "Ignoring request to replicate %{public}s; version, destination and expiration are unchanged.", v109, 0xCu);
        v116 = v164;
        __swift_destroy_boxed_opaque_existential_1(v164);
        MEMORY[0x1E12CCD70](v116, -1, -1);
        MEMORY[0x1E12CCD70](v109, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v99, type metadata accessor for RecordStub);
      }

LABEL_25:
      sub_1DEE273A0(v169, type metadata accessor for RecordStub);
LABEL_26:
      if (++v73 == v70)
      {

        return v172;
      }
    }

    if (v147)
    {
      v91 = *(v90 + 16);
      if (v91 == *(v147 + 16))
      {
        if (v91 && v90 != v147)
        {
          v148 = v73;
          v149 = v88;
          v127 = (*(v159 + 80) + 32) & ~*(v159 + 80);
          v153 = *(v159 + 72);
          v128 = *(v159 + 16);
          swift_bridgeObjectRetain_n();

          while (1)
          {
            v129 = v141;
            v130 = v160;
            v128(v141, v90 + v127, v160);
            v131 = v140;
            v128(v140, v147 + v127, v130);
            LODWORD(v162) = sub_1DEF8D908();
            v132 = v129;
            v133 = *v155;
            (*v155)(v131, v130);
            v133(v132, v130);
            if ((v162 & 1) == 0)
            {
              break;
            }

            v127 += v153;
            if (!--v91)
            {

              swift_bridgeObjectRelease_n();
              LODWORD(v163) = 1;
              goto LABEL_91;
            }
          }

          swift_bridgeObjectRelease_n();
          LODWORD(v163) = 0;
LABEL_91:
          v5 = v158;
          v70 = v166;
          v88 = v149;
          v73 = v148;
        }

        else
        {
          LODWORD(v163) = 1;
          v70 = v166;
        }
      }

      else
      {
        LODWORD(v163) = 0;
        v70 = v166;
      }

      goto LABEL_50;
    }

LABEL_48:
    LODWORD(v163) = 0;
    goto LABEL_50;
  }

LABEL_99:
  __break(1u);
  return result;
}

void sub_1DEE944FC(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_1DEF386D8(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1DEE9470C(void *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 232);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (qword_1ECDE2E58 != -1)
  {
LABEL_95:
    swift_once();
  }

  v11 = sub_1DEF8D508();
  v12 = __swift_project_value_buffer(v11, qword_1ECDF6028);

  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v132 = v16;
    *v15 = 136446210;
    v17 = a1[5];
    v133 = a1[4];
    v134 = v17;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a1[2], a1[3]);
    v18 = sub_1DEE12A5C(v133, v134, &v132);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "%{public}s: Validating records in zone", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12CCD70](v16, -1, -1);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  swift_beginAccess();
  v19 = *(v2 + 240);

  v20 = sub_1DEF718FC(a1, v19);

  v126 = v20;
  if (!v20)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v133);
  v21 = v136;
  v22 = v137;
  __swift_project_boxed_opaque_existential_1(&v133, v136);
  v23 = (*(*(*(v22 + 8) + 8) + 32))(v21);
  v24 = v23;
  v25 = *(v23 + 16);
  if (!v25)
  {

    v125 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v122 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v133);
    v131 = MEMORY[0x1E69E7CC0];
    v132 = MEMORY[0x1E69E7CC0];
    v129 = MEMORY[0x1E69E7CD0];
    v130 = MEMORY[0x1E69E7CD0];
    v123 = v2;
    sub_1DEE29594(v2 + 192, &v133);
    v37 = v136;
    v38 = v137;
    __swift_project_boxed_opaque_existential_1(&v133, v136);
    v39 = (*(*(*(v38 + 8) + 8) + 24))(v37);

    v40 = sub_1DEEA4A50(v39, a1);

    __swift_destroy_boxed_opaque_existential_1(&v133);
    v124 = a1;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = sub_1DEF8E038();
      v2 = 0;
      v42 = 0;
      v43 = 0;
      v40 = v41 | 0x8000000000000000;
    }

    else
    {
      v44 = -1 << *(v40 + 32);
      v2 = v40 + 64;
      v42 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v43 = v46 & *(v40 + 64);
    }

    v47 = 0;
    v121 = v42;
    a1 = ((v42 + 64) >> 6);
    if (v40 < 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v48 = v47;
      v49 = v43;
      v50 = v47;
      if (!v43)
      {
        break;
      }

LABEL_24:
      v51 = (v49 - 1) & v49;
      v52 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
      v53 = *(*(v40 + 48) + v52);
      v54 = *(*(v40 + 56) + v52);

      if (!v53)
      {
        goto LABEL_30;
      }

      while (1)
      {
        v59 = MEMORY[0x1E12CC160](v55);
        sub_1DEE95A50(v126, v54, v125, v124, v53, &v130, &v132, &v131);
        objc_autoreleasePoolPop(v59);

        v47 = v50;
        v43 = v51;
        if ((v40 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_26:
        v56 = sub_1DEF8E0D8();
        if (v56)
        {
          v58 = v57;
          v128 = v56;
          type metadata accessor for Record.ID(0);
          swift_dynamicCast();
          v53 = v133;
          v128 = v58;
          type metadata accessor for RecordMetadata(0);
          v55 = swift_dynamicCast();
          v54 = v133;
          v50 = v47;
          v51 = v43;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_93;
      }

      if (v50 >= a1)
      {
        break;
      }

      v49 = *(v2 + 8 * v50);
      ++v48;
      if (v49)
      {
        goto LABEL_24;
      }
    }

LABEL_30:

    sub_1DEE2774C(v40);
    v60 = v132;
    v125 = v132 >> 62;
    if (v132 >> 62)
    {
      v61 = sub_1DEF8DE68();
    }

    else
    {
      v61 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v123;
    if (v61)
    {
      v63 = sub_1DEF8D4D8();
      v64 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134217984;
        if (v125)
        {
          v66 = sub_1DEF8DE68();
        }

        else
        {
          v66 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v65 + 4) = v66;
        _os_log_impl(&dword_1DEE0F000, v63, v64, "Corrupted %ld invalid remote records", v65, 0xCu);
        MEMORY[0x1E12CCD70](v65, -1, -1);
      }

      sub_1DEE29594(v62 + 192, &v133);
      v67 = v136;
      v68 = v137;
      __swift_project_boxed_opaque_existential_1(&v133, v136);
      v69 = *(v68 + 16);
      v70 = *(v69 + 128);

      v70(v71, v67, v69);

      __swift_destroy_boxed_opaque_existential_1(&v133);
    }

    v72 = v131;
    v124 = (v131 >> 62);
    if (v131 >> 62)
    {
      if (sub_1DEF8DE68())
      {
        goto LABEL_41;
      }
    }

    else if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      v73 = sub_1DEF8D4D8();
      v74 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        if (v124)
        {
          v76 = sub_1DEF8DE68();
        }

        else
        {
          v76 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v75 + 4) = v76;
        _os_log_impl(&dword_1DEE0F000, v73, v74, "Repaired %ld invalid remote records", v75, 0xCu);
        MEMORY[0x1E12CCD70](v75, -1, -1);
      }

      sub_1DEE29594(v62 + 192, &v133);
      v77 = v136;
      v78 = v137;
      __swift_project_boxed_opaque_existential_1(&v133, v136);
      v79 = *(v78 + 16);
      v80 = *(v79 + 128);

      v80(v81, v77, v79);

      __swift_destroy_boxed_opaque_existential_1(&v133);
    }

    v82 = v130;
    v83 = v130 & 0xC000000000000001;
    if ((v130 & 0xC000000000000001) != 0)
    {

      v84 = sub_1DEF8DE68();

      if (!v84)
      {
LABEL_86:
        if (v125)
        {
          if (sub_1DEF8DE68())
          {
            goto LABEL_90;
          }
        }

        else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_90:

LABEL_91:

          return;
        }

        if (v124)
        {
          if (sub_1DEF8DE68())
          {
            goto LABEL_90;
          }
        }

        else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        if (v83)
        {

          v113 = sub_1DEF8DE68();

          if (v113)
          {
            goto LABEL_90;
          }
        }

        else if (*(v82 + 16))
        {
          goto LABEL_90;
        }

        v114 = sub_1DEF8D4D8();
        v115 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_1DEE0F000, v114, v115, "All records are valid", v116, 2u);
          MEMORY[0x1E12CCD70](v116, -1, -1);
        }

        goto LABEL_91;
      }
    }

    else if (!*(v130 + 16))
    {
      goto LABEL_86;
    }

    v119 = v72;
    v85 = sub_1DEF8D4D8();
    v86 = sub_1DEF8DCB8();
    v87 = os_log_type_enabled(v85, v86);
    v121 = v82;
    if (v87)
    {
      v88 = swift_slowAlloc();
      *v88 = 134217984;
      if (v83)
      {

        v89 = sub_1DEF8DE68();
      }

      else
      {
        v89 = *(v82 + 16);
      }

      *(v88 + 4) = v89;
      _os_log_impl(&dword_1DEE0F000, v85, v86, "Removed %ld invalid local records", v88, 0xCu);
      MEMORY[0x1E12CCD70](v88, -1, -1);
      v82 = v121;
    }

    v120 = v60;

    sub_1DEE29594(v62 + 192, &v133);
    v91 = v136;
    v90 = v137;
    __swift_project_boxed_opaque_existential_1(&v133, v136);

    v93 = sub_1DEF4133C(v92);

    (*(*(v90 + 16) + 136))(v93, v91);

    __swift_destroy_boxed_opaque_existential_1(&v133);
    v118 = v83;
    if (v83)
    {

      sub_1DEF8DE58();
      type metadata accessor for Record.ID(0);
      sub_1DEE2BAF8(&unk_1ECDE4EB0, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
      sub_1DEF8DC18();
      v2 = v133;
      a1 = v134;
      v94 = v135;
      v95 = v136;
      v96 = v137;
    }

    else
    {
      v97 = -1 << *(v82 + 32);
      a1 = (v82 + 56);
      v94 = ~v97;
      v98 = -v97;
      if (v98 < 64)
      {
        v99 = ~(-1 << v98);
      }

      else
      {
        v99 = -1;
      }

      v96 = v99 & *(v82 + 56);

      v95 = 0;
      v2 = v82;
    }

    v117[1] = v94;
    v100 = (v94 + 64) >> 6;
    while (1)
    {
      if (v2 < 0)
      {
        v104 = sub_1DEF8DE88();
        if (!v104 || (v127 = v104, type metadata accessor for Record.ID(0), swift_dynamicCast(), (v103 = v128) == 0))
        {
LABEL_85:
          sub_1DEE2774C(v2);
          v60 = v120;
          v72 = v119;
          v82 = v121;
          v83 = v118;
          goto LABEL_86;
        }
      }

      else
      {
        v101 = v95;
        v102 = v96;
        if (!v96)
        {
          while (1)
          {
            v95 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v95 >= v100)
            {
              goto LABEL_85;
            }

            v102 = a1[v95];
            ++v101;
            if (v102)
            {
              goto LABEL_70;
            }
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_70:
        v96 = (v102 - 1) & v102;
        v103 = *(*(v2 + 48) + ((v95 << 9) | (8 * __clz(__rbit64(v102)))));

        if (!v103)
        {
          goto LABEL_85;
        }
      }

      v105 = *(v103 + 32);
      v106 = *(v123 + 240);
      if ((v106 & 0xC000000000000001) != 0)
      {

        v107 = sub_1DEF8E0B8();

        if (!v107)
        {
          goto LABEL_63;
        }

        v127 = v107;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v108 = v128;

        if (v108)
        {
LABEL_81:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v111 = *(v108 + 24);
            ObjectType = swift_getObjectType();
            (*(v111 + 48))(v103, ObjectType, v111);
            swift_unknownObjectRelease();
          }

LABEL_63:
        }
      }

      else if (*(v106 + 16))
      {

        v109 = sub_1DEEAF20C(v105);
        if (v110)
        {
          v108 = *(*(v106 + 56) + 8 * v109);

          if (v108)
          {
            goto LABEL_81;
          }
        }

        else
        {
        }
      }
    }
  }

  v26 = sub_1DEF2B350(*(v23 + 16), 0);
  v27 = *(type metadata accessor for PairingRelationship(0) - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v125 = v26;
  sub_1DEF2D3FC(&v132, v26 + v28, v25, v24);
  v30 = v29;
  sub_1DEE2774C(v132);
  if (v30 == v25)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_9:

  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DC98();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v132 = v34;
    *v33 = 136446210;
    v35 = a1[5];
    v133 = a1[4];
    v134 = v35;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a1[2], a1[3]);
    v36 = sub_1DEE12A5C(v133, v134, &v132);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "%{public}s: Data source does not exist", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12CCD70](v34, -1, -1);
    MEMORY[0x1E12CCD70](v33, -1, -1);
  }
}

uint64_t sub_1DEE956D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = a1;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v39 = v36 - v13;
  v14 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, v40);
  v19 = v41;
  v18 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v20 = (*(*(*(v18 + 8) + 8) + 24))(v19);
  v21 = sub_1DEF718D0(v17, v20);

  if (!v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1DEEACA70(v17 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v16, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    v22 = *(v21 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v22)
    {
      v23 = *(v22 + 16);
      if (v23)
      {
        v36[1] = v21;
        v36[2] = v3;
        v25 = *(v7 + 16);
        v24 = v7 + 16;
        v43 = v25;
        v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v27 = *(v24 + 56);
        v28 = v37;
        v29 = (v24 - 8);
        v30 = v39;
        do
        {
          v43(v28, v26, v6);
          sub_1DEF386D8(v30, v28);
          (*v29)(v30, v6);
          v26 += v27;
          --v23;
        }

        while (v23);
      }
    }
  }

  else
  {
    v32 = v39;
    (*(v7 + 32))(v39, v16, v6);
    v33 = v9;
    (*(v7 + 16))(v9, v32, v6);
    v34 = v37;
    sub_1DEF386D8(v37, v33);

    v35 = *(v7 + 8);
    v35(v34, v6);
    return (v35)(v32, v6);
  }
}

void sub_1DEE95A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v155 = a8;
  v156 = a7;
  v159 = a6;
  v13 = sub_1DEF8D3F8();
  v161 = *(v13 - 8);
  v162 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v149[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v149[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v149[-v19];
  v20 = type metadata accessor for PairingRelationship(0);
  v157 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v149[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v149[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  v152 = v22;
  v153 = v15;
  v26 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v28 = *(v26 + 56);
  v154 = a3;
  v28(&v164, a2, a3, ObjectType, v26);
  swift_unknownObjectRelease();
  v29 = v164;
  v160 = a2;
  if (v164 > 1)
  {
    if (v164 == 2)
    {
      v30 = a5;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v75 = sub_1DEF8D508();
      __swift_project_value_buffer(v75, qword_1ECDF6028);

      v43 = sub_1DEF8D4D8();
      v44 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_32;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v168 = v46;
      *v45 = 136446466;
      v76 = a4[5];
      v164 = a4[4];
      v165 = v76;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v77 = sub_1DEE12A5C(v164, v165, &v168);

      *(v45 + 4) = v77;
      *(v45 + 12) = 2082;
      v78 = Record.ID.description.getter();
      v80 = sub_1DEE12A5C(v78, v79, &v168);

      *(v45 + 14) = v80;
      v30 = a5;
      v52 = "%{public}s: Found invalid record ID: %{public}s";
    }

    else
    {
      v30 = a5;
      if (v164 != 3)
      {
        goto LABEL_19;
      }

      sub_1DEEACA70(a5 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v25, type metadata accessor for Record.ID.Ownership);
      if ((*(v161 + 48))(v25, 1, v162) != 1)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v108 = sub_1DEF8D508();
        __swift_project_value_buffer(v108, qword_1ECDF6028);

        v109 = sub_1DEF8D4D8();
        v110 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v168 = v112;
          *v111 = 136446466;
          v113 = a4[5];
          v164 = a4[4];
          v165 = v113;

          MEMORY[0x1E12CB180](14906, 0xE200000000000000);
          MEMORY[0x1E12CB180](a4[2], a4[3]);
          v114 = sub_1DEE12A5C(v164, v165, &v168);

          *(v111 + 4) = v114;
          *(v111 + 12) = 2082;
          v115 = Record.ID.description.getter();
          v117 = sub_1DEE12A5C(v115, v116, &v168);

          *(v111 + 14) = v117;
          _os_log_impl(&dword_1DEE0F000, v109, v110, "%{public}s: Found invalid remote record data: %{public}s", v111, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v112, -1, -1);
          MEMORY[0x1E12CCD70](v111, -1, -1);
        }

        v82 = v163;
        v118 = v156;
        v119 = v162;
        if (qword_1ECDE37D8 != -1)
        {
          swift_once();
          v119 = v162;
        }

        v120 = __swift_project_value_buffer(v119, qword_1ECDF6090);
        RecordMetadata.copy(replacingVersion:)(v120);

        MEMORY[0x1E12CB260](v121);
        if (*((*v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DEF8DAF8();
        }

        sub_1DEF8DB18();

        sub_1DEE273A0(v25, type metadata accessor for Record.ID.Ownership);
        v81 = v154;
        goto LABEL_59;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v42 = sub_1DEF8D508();
      __swift_project_value_buffer(v42, qword_1ECDF6028);

      v43 = sub_1DEF8D4D8();
      v44 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v43, v44))
      {
LABEL_32:

        v81 = v154;
        v82 = v163;

        sub_1DEF38D20(&v164, v30);
LABEL_33:

        goto LABEL_59;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v168 = v46;
      *v45 = 136446466;
      v47 = a4[5];
      v164 = a4[4];
      v165 = v47;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v48 = sub_1DEE12A5C(v164, v165, &v168);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      v49 = Record.ID.description.getter();
      v51 = sub_1DEE12A5C(v49, v50, &v168);

      *(v45 + 14) = v51;
      v30 = a5;
      v52 = "%{public}s: Found invalid local record data: %{public}s";
    }

    _os_log_impl(&dword_1DEE0F000, v43, v44, v52, v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v46, -1, -1);
    MEMORY[0x1E12CCD70](v45, -1, -1);
    goto LABEL_32;
  }

  if (!v164)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v69 = sub_1DEF8D508();
    __swift_project_value_buffer(v69, qword_1ECDF6028);

    v32 = sub_1DEF8D4D8();
    v33 = sub_1DEF8DC88();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_10;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v168 = v35;
    *v34 = 136446466;
    v70 = a4[5];
    v164 = a4[4];
    v165 = v70;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v71 = sub_1DEE12A5C(v164, v165, &v168);

    *(v34 + 4) = v71;
    *(v34 + 12) = 2082;
    v72 = Record.ID.description.getter();
    v74 = sub_1DEE12A5C(v72, v73, &v168);

    *(v34 + 14) = v74;
    v41 = "%{public}s: Record is valid: %{public}s";
    goto LABEL_9;
  }

  v30 = a5;
  if (v164 == 1)
  {
LABEL_5:
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v31 = sub_1DEF8D508();
    __swift_project_value_buffer(v31, qword_1ECDF6028);

    v32 = sub_1DEF8D4D8();
    v33 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_10;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v168 = v35;
    *v34 = 136446466;
    v36 = a4[5];
    v164 = a4[4];
    v165 = v36;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v37 = sub_1DEE12A5C(v164, v165, &v168);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    v38 = Record.ID.description.getter();
    v40 = sub_1DEE12A5C(v38, v39, &v168);

    *(v34 + 14) = v40;
    v41 = "%{public}s: Data source failed to provide result: %{public}s";
LABEL_9:
    _os_log_impl(&dword_1DEE0F000, v32, v33, v41, v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v34, -1, -1);
LABEL_10:

    return;
  }

LABEL_19:
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v53 = sub_1DEF8D508();
  v54 = __swift_project_value_buffer(v53, qword_1ECDF6028);

  sub_1DEEAC894(v29);
  v156 = v54;
  v55 = sub_1DEF8D4D8();
  v56 = sub_1DEF8DCB8();

  sub_1DEEAC8A4(v29);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v151 = v55;
    v58 = v57;
    v59 = swift_slowAlloc();
    v168 = v59;
    *v58 = 136446722;
    v60 = a4[5];
    v164 = a4[4];
    v165 = v60;

    v150 = v56;
    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v61 = sub_1DEE12A5C(v164, v165, &v168);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2082;
    v62 = Record.ID.description.getter();
    v64 = sub_1DEE12A5C(v62, v63, &v168);

    *(v58 + 14) = v64;
    *(v58 + 22) = 2082;
    v65 = MEMORY[0x1E12CB290](v29, v162);
    v67 = sub_1DEE12A5C(v65, v66, &v168);

    *(v58 + 24) = v67;
    v68 = v151;
    _os_log_impl(&dword_1DEE0F000, v151, v150, "%{public}s: Found illegal destinations for %{public}s: %{public}s", v58, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v59, -1, -1);
    MEMORY[0x1E12CCD70](v58, -1, -1);
  }

  else
  {
  }

  if (!*(v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
  {
    sub_1DEEAC8A4(v29);
LABEL_57:
    v81 = v154;
    goto LABEL_58;
  }

  sub_1DEEAC894(v29);
  v83 = sub_1DEEA3B70(v29);
  sub_1DEEAC8A4(v29);

  v85 = sub_1DEEA3B70(v84);

  if (*(v83 + 16) > *(v85 + 16) >> 3)
  {

    v86 = sub_1DEEC8FB4(v83, v85);

    v87 = *(v86 + 16);
    if (v87)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

  v164 = v85;

  sub_1DEEC8B48(v83);

  v86 = v164;
  v87 = *(v164 + 16);
  if (!v87)
  {
LABEL_53:
    v122 = v29;

    v123 = sub_1DEF8D4D8();
    v124 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v168 = v126;
      *v125 = 136446466;
      v127 = a4[5];
      v164 = a4[4];
      v165 = v127;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v128 = sub_1DEE12A5C(v164, v165, &v168);

      *(v125 + 4) = v128;
      *(v125 + 12) = 2082;
      v129 = Record.ID.description.getter();
      v131 = sub_1DEE12A5C(v129, v130, &v168);

      *(v125 + 14) = v131;
      v30 = a5;
      _os_log_impl(&dword_1DEE0F000, v123, v124, "%{public}s: All destinations removed for record ID: %{public}s", v125, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v126, -1, -1);
      MEMORY[0x1E12CCD70](v125, -1, -1);
    }

    v81 = v154;
    v82 = v163;

    sub_1DEF38D20(&v164, v30);
    sub_1DEEAC8A4(v122);
    goto LABEL_33;
  }

LABEL_38:
  v88 = sub_1DEF2B328(v87, 0);
  sub_1DEF2D158(&v164, &v88[(*(v161 + 80) + 32) & ~*(v161 + 80)], v87, v86);
  v90 = v89;
  v91 = v164;
  v159 = v166;
  v151 = v167;

  sub_1DEE2774C(v91);
  if (v90 == v87)
  {
    v164 = v88;
    RecordMetadata.copy(replacingDestination:)(&v164);

    v93 = v155;
    MEMORY[0x1E12CB260](v92);
    if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1DEF8DAF8();
LABEL_40:
  sub_1DEF8DB18();

  v94 = sub_1DEF8D4D8();
  v95 = sub_1DEF8DCB8();

  if (!os_log_type_enabled(v94, v95))
  {

    sub_1DEEAC8A4(v29);

    goto LABEL_57;
  }

  v96 = swift_slowAlloc();
  v159 = swift_slowAlloc();
  v168 = v159;
  *v96 = 136446722;
  v97 = a4[5];
  v164 = a4[4];
  v165 = v97;

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](a4[2], a4[3]);
  LODWORD(v155) = v95;
  v98 = sub_1DEE12A5C(v164, v165, &v168);

  *(v96 + 4) = v98;
  v156 = v29;
  *(v96 + 12) = 2082;
  sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v99 = sub_1DEF8DBF8();
  v101 = v100;

  v102 = sub_1DEE12A5C(v99, v101, &v168);

  *(v96 + 14) = v102;
  *(v96 + 22) = 2082;
  v81 = v154;
  v103 = sub_1DEF8DBF8();
  v105 = v104;

  v106 = sub_1DEE12A5C(v103, v105, &v168);

  *(v96 + 24) = v106;
  _os_log_impl(&dword_1DEE0F000, v94, v155, "%{public}s: Changed destinations from %{public}s to %{public}s", v96, 0x20u);
  v107 = v159;
  swift_arrayDestroy();
  MEMORY[0x1E12CCD70](v107, -1, -1);
  MEMORY[0x1E12CCD70](v96, -1, -1);

  sub_1DEEAC8A4(v156);
LABEL_58:
  v82 = v163;
LABEL_59:
  v132 = *(v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (v132)
  {
    v133 = *(v132 + 16);
    v134 = v153;
    v135 = v162;
    if (v133)
    {
      v136 = v161 + 16;
      v163 = *(v161 + 16);
      v137 = v132 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
      v138 = *(v161 + 72);
      v139 = (v161 + 8);
      do
      {
        v140 = v136;
        (v163)(v134, v137, v135);
        sub_1DEF386D8(v82, v134);
        (*v139)(v82, v135);
        v136 = v140;
        v137 += v138;
        --v133;
      }

      while (v133);
    }
  }

  else
  {
    v141 = v158;
    v142 = *(v81 + 16);
    v143 = v82;
    v144 = v162;
    v145 = v152;
    if (v142)
    {
      v146 = v81 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
      v163 = *(v157 + 72);
      v147 = (v161 + 16);
      v148 = (v161 + 8);
      do
      {
        sub_1DEEACA70(v146, v145, type metadata accessor for PairingRelationship);
        (*v147)(v141, v145, v144);
        sub_1DEE273A0(v145, type metadata accessor for PairingRelationship);
        sub_1DEF386D8(v143, v141);
        (*v148)(v143, v144);
        v146 += v163;
        --v142;
      }

      while (v142);
    }
  }
}

uint64_t sub_1DEE96E04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 184);
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 80);

  sub_1DEEA8818(a1, a2);
  v9(sub_1DEEABE84, v8, ObjectType, v6);
}

void sub_1DEE96EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v7 = *(a3 + 232);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DEEABEE0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DEE46D40;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    aBlock[3] = &block_descriptor_748;
    v11 = _Block_copy(aBlock);

    sub_1DEEA8818(a4, a5);

    dispatch_sync(v7, v11);
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1ECDE2E58 != -1)
  {
LABEL_11:
    swift_once();
  }

  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6028);
  oslog = sub_1DEF8D4D8();
  v13 = sub_1DEF8DC98();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, oslog, v13, "Could not fetch IDS ID; not sending advertisement", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }
}

uint64_t sub_1DEE97134(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for ZoneVersionAdvertisement(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 648);
  v10 = *(a1 + 656);
  *(a1 + 648) = a2;
  *(a1 + 656) = a3;
  sub_1DEEA8818(a2, a3);
  sub_1DEE2416C(v9, v10);
  swift_beginAccess();
  sub_1DEE29594(a1 + 344, v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1DEE97264(v8);
  (*(v12 + 40))(v8, v11, v12);
  sub_1DEE273A0(v8, type metadata accessor for ZoneVersionAdvertisement);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DEE97264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  MEMORY[0x1EEE9AC00](v71);
  v4 = &v58 - v3;
  v5 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v58 - v8;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 232);
  *v13 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = *(v10 + 104);
  v16(v13, v15, v9, v11);
  v68 = v14;
  v17 = sub_1DEF8D7B8();
  v18 = *(v10 + 8);
  v18(v13, v9);
  if ((v17 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = type metadata accessor for PairingRelationship(0);
  (*(*(v19 - 8) + 56))(v70, 1, 1, v19);
  *v13 = v68;
  (v16)(v13, v15, v9);
  v20 = sub_1DEF8D7B8();
  v18(v13, v9);
  if (v20)
  {
    swift_beginAccess();
    MEMORY[0x1EEE9AC00](*(v2 + 240));
    *(&v58 - 16) = 1;
    *(&v58 - 1) = v2;

    v9 = 0;
    v22 = sub_1DEEA572C(v21, sub_1DEEABEEC, (&v58 - 2));
    v23 = sub_1DEE5844C(v22, sub_1DEF415FC, sub_1DEF41EBC, &qword_1ECDE3DA0, &qword_1DEF916B8);

    v24 = v70;
    v25 = sub_1DEE98D98(v23);

    sub_1DEE171B4(v24, &qword_1ECDE3C18, &unk_1DEF94D20);
    sub_1DEE69B50(v69);
    v72 = MEMORY[0x1E69E7CC8];
    v26 = 1 << *(v25 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25[8];
    v29 = (v26 + 63) >> 6;

    for (i = 0; v28; i = v32)
    {
      v31 = v4;
      v32 = i;
LABEL_11:
      v33 = __clz(__rbit64(v28)) | (v32 << 6);
      v34 = v25[7];
      v35 = *(v25[6] + 8 * v33);
      v36 = v34 + *(*(type metadata accessor for ZoneVersion(0) - 8) + 72) * v33;
      v4 = v31;
      sub_1DEEACA70(v36, &v31[*(v71 + 48)], type metadata accessor for ZoneVersion);
      *v31 = v35;

      sub_1DEE978CC(&v72, v31);
      v28 &= v28 - 1;
      sub_1DEE171B4(v31, &qword_1ECDE3D18, &qword_1DEF91628);
    }

    while (1)
    {
      v32 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

        v71 = v72;
        v37 = v69;
        v38 = *v69;
        v39 = v69[1];
        v40 = v69[3];
        v63 = v69[2];
        v64 = v38;
        v41 = v69[4];
        v61 = v69[5];
        v62 = v41;
        v60 = *(v69 + 48);
        LODWORD(v70) = *(v69 + 88);
        LODWORD(v68) = *(v69 + 89);
        v42 = v69[12];
        v43 = v69[13];
        v44 = v69[14];
        v45 = v69[15];
        v46 = v69[16];
        v47 = v69[17];
        v48 = v69[19];
        v65 = v69[18];
        v66 = v46;

        v49 = *(v37 + 56);
        v58 = *(v37 + 72);
        v59 = v49;
        sub_1DEEA8818(v44, v45);

        sub_1DEE273A0(v37, type metadata accessor for DeviceDescriptor);
        v50 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
        v51 = sub_1DEF8D3F8();
        v52 = v67;
        (*(*(v51 - 8) + 56))(v67 + v50, 1, 1, v51);
        v53 = v63;
        *v52 = v64;
        *(v52 + 8) = v39;
        *(v52 + 16) = v53;
        *(v52 + 24) = v40;
        v54 = v61;
        *(v52 + 32) = v62;
        *(v52 + 40) = v54;
        *(v52 + 48) = v60;
        v55 = v59;
        *(v52 + 72) = v58;
        *(v52 + 56) = v55;
        *(v52 + 88) = v70;
        *(v52 + 89) = v68;
        *(v52 + 96) = v42;
        *(v52 + 104) = v43;
        *(v52 + 112) = v44;
        *(v52 + 120) = v45;
        v56 = v65;
        *(v52 + 128) = v66;
        *(v52 + 136) = v47;
        *(v52 + 144) = v56;
        *(v52 + 152) = v48;
        result = type metadata accessor for ZoneVersionAdvertisement(0);
        *(v52 + 160) = 0;
        *(v52 + 168) = 0;
        *(v52 + *(result + 20)) = v71;
        return result;
      }

      v28 = v25[v32 + 8];
      ++i;
      if (v28)
      {
        v31 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);

  sub_1DEE171B4(v4, &qword_1ECDE3D18, &qword_1DEF91628);

  __break(1u);
  return result;
}

uint64_t sub_1DEE978CC(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  sub_1DEE17214(a2, v28 - v10, &qword_1ECDE3D18, &qword_1DEF91628);
  v12 = *(v6 + 48);
  v14 = *(*v11 + 32);
  v13 = *(*v11 + 40);

  if (v14 == 0xD000000000000011 && 0x80000001DEF9C1B0 == v13)
  {

    sub_1DEE273A0(&v11[v12], type metadata accessor for ZoneVersion);
    goto LABEL_8;
  }

  v16 = sub_1DEF8E4E8();

  sub_1DEE273A0(&v11[v12], type metadata accessor for ZoneVersion);
  if (v16)
  {
LABEL_8:
    sub_1DEE17214(a2, v8, &qword_1ECDE3D18, &qword_1DEF91628);
    v25 = *(v6 + 48);
    v23 = *(*v8 + 16);
    v24 = *(*v8 + 24);

    sub_1DEE273A0(&v8[v25], type metadata accessor for ZoneVersion);
    goto LABEL_9;
  }

  sub_1DEE17214(a2, v8, &qword_1ECDE3D18, &qword_1DEF91628);
  v17 = *(v6 + 48);
  v19 = *(*v8 + 16);
  v18 = *(*v8 + 24);

  v29 = v19;
  v30 = v18;
  sub_1DEE273A0(&v8[v17], type metadata accessor for ZoneVersion);
  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  sub_1DEE17214(a2, v8, &qword_1ECDE3D18, &qword_1DEF91628);
  v20 = *(v6 + 48);
  v22 = *(*v8 + 32);
  v21 = *(*v8 + 40);

  MEMORY[0x1E12CB180](v22, v21);

  sub_1DEE273A0(&v8[v20], type metadata accessor for ZoneVersion);
  v23 = v29;
  v24 = v30;
LABEL_9:
  sub_1DEE17214(a2, v8, &qword_1ECDE3D18, &qword_1DEF91628);

  sub_1DEEAB218(&v8[*(v6 + 48)], v5, type metadata accessor for ZoneVersion);
  v26 = type metadata accessor for ZoneVersion(0);
  (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
  return sub_1DEF3300C(v5, v23, v24);
}

void sub_1DEE97C64(unint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ZoneVersionAdvertisement(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v126 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v147 = &v126 - v10;
  v11 = type metadata accessor for PairingRelationship(0);
  v145 = *(v11 - 8);
  v146 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v144 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = &v126 - v17;
  v18 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v126 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v142 = v13;
  v143 = v22;
  isUniquelyReferenced_nonNull_native = *(a1 + 32);
  v26 = *(a1 + 40);
  if (qword_1ED786060 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if (isUniquelyReferenced_nonNull_native < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v26)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v57 = sub_1DEF8D508();
      __swift_project_value_buffer(v57, qword_1ECDF6028);
      sub_1DEEACA70(a1, v5, type metadata accessor for ZoneVersionAdvertisement);

      v58 = sub_1DEF8D4D8();
      v59 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v153[0] = v61;
        *v60 = 136446466;
        v62 = *(v24 + 66);
        v63 = *(v24 + 67);

        v64 = sub_1DEE12A5C(v62, v63, v153);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2082;
        v154[0] = 0;
        v154[1] = 0xE000000000000000;
        sub_1DEF8DF28();

        strcpy(v154, "remoteDevice: ");
        HIBYTE(v154[1]) = -18;
        v65 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
        MEMORY[0x1E12CB180](v65);

        MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
        type metadata accessor for ZoneVersion(0);
        v66 = sub_1DEF8D858();
        MEMORY[0x1E12CB180](v66);

        v67 = v154[0];
        v68 = v154[1];
        sub_1DEE273A0(v5, type metadata accessor for ZoneVersionAdvertisement);
        v69 = sub_1DEE12A5C(v67, v68, v153);

        *(v60 + 14) = v69;
        _os_log_impl(&dword_1DEE0F000, v58, v59, "(%{public}s) Received zone version advertisement from incompatible device: %{public}s", v60, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v61, -1, -1);
        MEMORY[0x1E12CCD70](v60, -1, -1);

        return;
      }

      v70 = type metadata accessor for ZoneVersionAdvertisement;
      v71 = v5;
      goto LABEL_72;
    }

    if (!sub_1DEF024D4(*(a1 + 48), *(v24 + 65)))
    {
      if (qword_1ECDE2E58 != -1)
      {
        goto LABEL_77;
      }

      goto LABEL_41;
    }

    v129 = v24;
    v27 = *a1;
    v28 = *(a1 + 8);
    v29 = *(a1 + 24);
    v136 = *(a1 + 16);
    v137 = *(a1 + 48);
    LODWORD(v139) = *(a1 + 88);
    LODWORD(v138) = *(a1 + 89);
    v30 = *(a1 + 96);

    v134 = *(a1 + 56);
    v132 = *(a1 + 72);
    v140 = sub_1DEE589C4(v30);
    v151 = sub_1DEE581C8(*(a1 + 104));
    v31 = *(a1 + 120);
    v131 = *(a1 + 112);
    v130 = v31;
    v32 = *(a1 + 136);
    v152 = *(a1 + 128);
    v133 = v32;
    v33 = *(a1 + 152);
    v150 = *(a1 + 144);
    v135 = v33;
    v34 = *(a1 + 168);
    v141 = *(a1 + 160);
    v35 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
    v128 = a1;
    v36 = a1 + v35;
    a1 = v148;
    sub_1DEE17214(v36, v148, &unk_1ECDE3E80, &unk_1DEF90970);
    v24 = v149;
    *(v149 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 44) = 256;
    *(v24 + 7) = xmmword_1DEF90FE0;
    v5 = *(v18 + 60);
    v37 = sub_1DEF8D3F8();
    (*(*(v37 - 8) + 56))(&v24[v5], 1, 1, v37);
    v127 = v27;
    *v24 = v27;
    *(v24 + 1) = v28;
    *(v24 + 2) = v136;
    *(v24 + 3) = v29;
    *(v24 + 4) = isUniquelyReferenced_nonNull_native;
    *(v24 + 5) = v26;
    v24[48] = v137;
    *(v24 + 72) = v132;
    *(v24 + 56) = v134;
    v24[88] = v139;
    v24[89] = v138;
    v38 = *(v24 + 14);
    v39 = *(v24 + 15);
    v139 = v28;

    isUniquelyReferenced_nonNull_native = v131;
    v26 = v130;
    sub_1DEEA8818(v131, v130);

    v40 = v133;

    v41 = v135;

    sub_1DEE2416C(v38, v39);
    *(v24 + 14) = isUniquelyReferenced_nonNull_native;
    *(v24 + 15) = v26;
    *(v24 + 16) = v152;
    *(v24 + 17) = v40;
    *(v24 + 18) = v150;
    *(v24 + 19) = v41;
    *(v24 + 20) = v141;
    *(v24 + 21) = v34;
    v138 = v34;

    v42 = v140;
    sub_1DEEA882C(a1, &v24[v5]);
    if (!(v42 >> 62))
    {
      v8 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        break;
      }

      goto LABEL_8;
    }

    v8 = sub_1DEF8DE68();
    if (!v8)
    {
      break;
    }

LABEL_8:
    a1 = 0;
    v152 = v42 & 0xC000000000000001;
    v150 = v42 & 0xFFFFFFFFFFFFFF8;
    v18 = MEMORY[0x1E69E7CC8];
    v43 = v42;
    while (v152)
    {
      v44 = MEMORY[0x1E12CB6E0](a1, v42);
      v26 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

LABEL_14:
      v24 = *(v44 + 16);
      if ((v18 & 0xC000000000000001) != 0)
      {
        if (v18 < 0)
        {
          v45 = v18;
        }

        else
        {
          v45 = v18 & 0xFFFFFFFFFFFFFF8;
        }

        v46 = sub_1DEF8DE68();
        if (__OFADD__(v46, 1))
        {
          goto LABEL_47;
        }

        v18 = sub_1DEEB0790(v45, v46 + 1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v18;
      v5 = sub_1DEEAF20C(v24);
      v48 = *(v18 + 16);
      v49 = (v47 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_46;
      }

      v51 = v47;
      if (*(v18 + 24) >= v50)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v154[0];
          if (v47)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_1DEEB753C();
          v18 = v154[0];
          if (v51)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        sub_1DEEB0D00(v50, isUniquelyReferenced_nonNull_native);
        v52 = sub_1DEEAF20C(v24);
        if ((v51 & 1) != (v53 & 1))
        {
          type metadata accessor for Zone.ID();
          sub_1DEF8E6E8();
          __break(1u);
LABEL_79:
          sub_1DEF8E6E8();
          __break(1u);
          return;
        }

        v5 = v52;
        v18 = v154[0];
        if (v51)
        {
LABEL_9:
          *(*(v18 + 56) + 8 * v5) = v44;

          goto LABEL_10;
        }
      }

      *(v18 + 8 * (v5 >> 6) + 64) |= 1 << v5;
      *(*(v18 + 48) + 8 * v5) = v24;
      *(*(v18 + 56) + 8 * v5) = v44;

      v54 = *(v18 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_48;
      }

      *(v18 + 16) = v56;
LABEL_10:
      ++a1;
      v42 = v43;
      if (v26 == v8)
      {
        goto LABEL_52;
      }
    }

    if (a1 >= *(v150 + 16))
    {
      goto LABEL_45;
    }

    v44 = *(v42 + 8 * a1 + 32);

    v26 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_14;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC8];
LABEL_52:

  *(v149 + 12) = v18;
  v84 = v151;
  v150 = *(v151 + 16);
  if (!v150)
  {
    v86 = MEMORY[0x1E69E7CC8];
LABEL_68:
    sub_1DEE171B4(v148, &unk_1ECDE3E80, &unk_1DEF90970);

    v106 = v149;
    *(v149 + 13) = v86;
    v107 = v143;
    sub_1DEEAB218(v106, v143, type metadata accessor for DeviceDescriptor);
    v108 = v129;
    swift_beginAccess();
    sub_1DEE29594((v108 + 192), v154);
    v109 = v155;
    v110 = v156;
    __swift_project_boxed_opaque_existential_1(v154, v155);
    v111 = *(v110 + 8);
    v112 = v147;
    v113 = v127;
    v114 = v139;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v127, v139, v109, v111, v147);
    v115 = v146;
    if ((*(v145 + 48))(v112, 1, v146) == 1)
    {
      sub_1DEE171B4(v112, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(v154);
      v154[0] = 0;
      v154[1] = 0;
      v116 = v142;
      sub_1DEE5F828(v107, v154, 0, 1, v142);
      v117 = v116;
    }

    else
    {
      v118 = v144;
      sub_1DEEAB218(v112, v144, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(v154);
      v119 = (v118 + *(v115 + 32));
      v120 = v119[1];
      v154[0] = *v119;
      v154[1] = v120;
      sub_1DEE4F8C0(v154[0], v120);
      v121 = v142;
      sub_1DEE5F828(v107, v154, 2, 1, v142);
      sub_1DEE4F8D4(v154[0], v154[1]);
      sub_1DEE273A0(v121, type metadata accessor for PairingRelationship);
      v117 = v118;
    }

    sub_1DEE273A0(v117, type metadata accessor for PairingRelationship);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4360, &qword_1DEF91760);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1DEF907F0;
    v123 = v128;
    v124 = *(v128 + 48);
    *(v122 + 32) = v113;
    *(v122 + 40) = v114;
    v125 = v138;
    *(v122 + 48) = v141;
    *(v122 + 56) = v125;
    *(v122 + 64) = v124;
    *(v122 + 72) = *(v123 + 32);
    sub_1DEE701E0(v122);

    v70 = type metadata accessor for DeviceDescriptor;
    v71 = v107;
    goto LABEL_72;
  }

  v85 = 0;
  v24 = (v151 + 72);
  v86 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v85 < *(v84 + 16))
    {
      v8 = *(v24 - 5);
      a1 = *(v24 - 4);
      v90 = *(v24 - 3);
      v89 = *(v24 - 2);
      v91 = *(v24 - 1);
      v152 = *v24;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v86;
      v93 = sub_1DEEAF16C(v8, a1, v90, v89);
      v95 = v86[2];
      v96 = (v94 & 1) == 0;
      v55 = __OFADD__(v95, v96);
      v97 = v95 + v96;
      if (v55)
      {
        goto LABEL_75;
      }

      v98 = v94;
      if (v86[3] >= v97)
      {
        if (v92)
        {
          goto LABEL_62;
        }

        v105 = v93;
        sub_1DEEB7550();
        v93 = v105;
        v86 = v154[0];
        if (v98)
        {
          goto LABEL_54;
        }

LABEL_63:
        v86[(v93 >> 6) + 8] |= 1 << v93;
        v100 = (v86[6] + 32 * v93);
        *v100 = v8;
        v100[1] = a1;
        v100[2] = v90;
        v100[3] = v89;
        v101 = (v86[7] + 48 * v93);
        *v101 = v8;
        v101[1] = a1;
        v101[2] = v90;
        v101[3] = v89;
        v102 = v152;
        v101[4] = v91;
        v101[5] = v102;
        v103 = v86[2];
        v55 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v55)
        {
          goto LABEL_76;
        }

        v86[2] = v104;
      }

      else
      {
        sub_1DEEB0D14(v97, v92);
        v93 = sub_1DEEAF16C(v8, a1, v90, v89);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_79;
        }

LABEL_62:
        v86 = v154[0];
        if ((v98 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_54:
        v87 = (v86[7] + 48 * v93);
        *v87 = v8;
        v87[1] = a1;
        v87[2] = v90;
        v87[3] = v89;
        v88 = v152;
        v87[4] = v91;
        v87[5] = v88;
      }

      ++v85;
      v24 += 48;
      v84 = v151;
      if (v150 == v85)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  swift_once();
LABEL_41:
  v72 = sub_1DEF8D508();
  __swift_project_value_buffer(v72, qword_1ECDF6028);
  sub_1DEEACA70(a1, v8, type metadata accessor for ZoneVersionAdvertisement);

  v73 = sub_1DEF8D4D8();
  v74 = sub_1DEF8DC98();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v154[0] = v76;
    *v75 = 136446466;
    v77 = *(v24 + 66);
    v78 = *(v24 + 67);

    v79 = sub_1DEE12A5C(v77, v78, v154);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2082;
    v80 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
    v82 = v81;
    sub_1DEE273A0(v8, type metadata accessor for ZoneVersionAdvertisement);
    v83 = sub_1DEE12A5C(v80, v82, v154);

    *(v75 + 14) = v83;
    _os_log_impl(&dword_1DEE0F000, v73, v74, "%{public}s Cannot pair with a device that has an incompatible device type: %{public}s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v76, -1, -1);
    MEMORY[0x1E12CCD70](v75, -1, -1);

    return;
  }

  v70 = type metadata accessor for ZoneVersionAdvertisement;
  v71 = v8;
LABEL_72:
  sub_1DEE273A0(v71, v70);
}